#pragma once

#include "base.h"
#include "atoms.h"
#include "particles.h"
#include "frames.h"
#include "analysis.h"
#include "geometries.h"
#include "potentialmanager.h"
/*!
 *  \addtogroup Main_modules
 *  @{
 */

/*! Molecular Dynamics Engine*/
template<typename I, typename P, typename G>
class MDEngine {
   /*
   * This namespace should hold all MD specific algorithms, hence the 'engine' of the program
   */

    I integrator;
    P pm;
    G* geometry;

public:
    template<typename T>
    MDEngine(T* geometry){
        this->geometry = geometry;
    }

    /*!
    * This function contains the main loop of the program which in essence is structured as follows:
    \code{.cpp}
     for(int i = 0; i < numberOfIterations; i++){
        integrator_1(atoms);                            // First half step of integrator
        force_function(atoms);                          // Calculate forces
        integrator_2(atoms);                            // Second half step of integrator
        thermostat(atoms);                              // Apply thermostat
        barostat(atoms);                                // Apply barostat
      }
    \endcode
    */

    void run(Particles& particles, Frames& frames) {
        int k = 0;
        double temperature;
        double pressure = 0;
        int samples = 0;
        double cummulativeTemp = 0;
        double cummulativePress = 0;

        Analysis<G> *msd = new MSD<G>(particles.numOfParticles, frames.fStep, Base::iterations, "msd.txt", geometry);
        Analysis<G> *track = new Track<G>({0}, "track.txt", geometry);

        //std::vector<int> v = {0};
        //Analysis *track = new Track(v, "track.txt", geometry);

        FILE *f = fopen(Base::outputFileName.c_str(), "w");
        fclose(f);

        double start_t = omp_get_wtime();
        double end_t;
        temperature = thermostats::get_temperature(particles);
        pm.get_forces(particles, geometry);
        //geometry->update_distances(particles);
        printf("Initial temp: %lf \n", temperature);

        /*! Main MD loop */
        for (int i = 0; i < Base::iterations; i++) {

            /// Set all forces to zero and set oldforce = force.
            particles.atoms.set_forces_zero();

            /// First half step of integrator
            integrator.first_step(particles, geometry);

            /*! First integrator step is the only place where atoms are moved.
             * So only need to calculate distances after this, same thing with displacements*/

            /*! Calculate new forces */
            pm.get_forces(particles, geometry);

            /*! Second half step of integrator */
            integrator.second_step(particles);

            ///Get temperature before applying thermostat
            temperature = thermostats::get_temperature(particles);
            Base::temperatures.push_back(temperature);
            
            //if(i < 50000) 
            /// Thermostating
            thermostats::berendsen::set_velocity(particles);


            //pressure = barostats::get_pressure();
            cummulativeTemp += temperature;
            cummulativePress += pressure;


            if (i % frames.fStep == 0) {
                #pragma omp parallel
                {
                    #pragma omp single
                    {
                        frames[frames.frameCounter]->save_state(particles.atoms);
                        frames.frameCounter++;
                        track->sample(particles, 1);
                        if (frames.frameCounter == frames.saveFreq) {
                            #pragma omp task
                            frames.save_to_file(particles, geometry->box);
                        }
                        if (i > 1000) {
                            //histo->sample(particles, 1);
                            #pragma omp task
                            msd->sample(particles, 1);
                        }

                        //histo->sample(particles, 0);
                        //track->sample(particles, 0);

                        /// Get energies
                        Base::kineticEnergies[samples] = particles.atoms.kinetic_energy();
                        Base::potentialEnergies[samples] = pm.get_energy(particles, geometry);
                        Base::totalEnergies[samples] =
                                Base::potentialEnergies[samples] + Base::kineticEnergies[samples];

                        end_t = omp_get_wtime();
                        printf("Progress: %.1lf%% Temp: %.1lf Avg. temp: %.1lf  Pot Energy: %.5lf Kin Energy: %.3lf, Speed: %.1lf ps / h\r",
                               (double) i / Base::iterations * 100.0, temperature, cummulativeTemp / i,
                               Base::potentialEnergies[samples],
                               Base::kineticEnergies[samples], k * Base::tStep / ((end_t - start_t) / 3600.0));
                        fflush(stdout);
                        start_t = omp_get_wtime();


                        samples++;
                        k = 0;
                    }
                }
            }
            k++;
        }
        //histo->save();
        track->save();
        msd->save();
        printf("\n");
    }
};
