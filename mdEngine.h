#pragma once

#include "base.h"
#include "atoms.h"
#include "particles.h"
#include "frames.h"
#include "analysis.h"
#include "potentials.h"
#include "geometries.h"
#include "potentialmanager.h"
/*!
 *  \addtogroup Main_modules
 *  @{
 */

/*! Molecular Dynamics Engine*/
template<typename I, typename P>
class MDEngine {
   /*
   * This namespace should hold all MD specific algorithms, hence the 'engine' of the program
   */

    I integrator;
    P pm;
    Geometry* geometry;

public:
    MDEngine(Geometry* geometry){
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

    void run(Particles& particles, Frames& frames){
        int k = 0;
        double temperature;
        double pressure = 0;
        int samples = 0;
        double cummulativeTemp = 0;
        double cummulativePress = 0;
        //Analysis* histo = new Density(100, "histo_1.txt");

        Analysis* histo = new rdf(1000, "rdf.txt");

        std::vector<int> v = {0};
        Analysis *track = new Track(v, "track.txt");

        FILE *f = fopen("output.gro", "w");
        fclose(f);

        potentials::harmonic harmonic;
        double start_t = omp_get_wtime();
        double end_t;
        /* Main MD loop */
        for(int i = 0; i < Base::iterations; i++){
            particles.atoms.set_forces_zero();                                    /* Set all forces to zero in the beginning of each iteration.*/

            integrator.first_step(particles, geometry);                                        /* First half step of integrator */

            pm.get_forces(particles, geometry);                                      /* Calculate new forces */
            //harmonic.forces(particles);
            integrator.second_step(particles);                                        /* Second half step of integrator */
            //thermostats::berendsen::set_velocity(particles);                /* Apply thermostat */
            temperature = thermostats::get_temperature(particles);
            //pressure = barostats::get_pressure();
            cummulativeTemp += temperature;
            cummulativePress += pressure;
            Base::temperatures[i] = temperature;

            if(i % frames.fStep == 0){
                if(i > 100000) {
                    histo->sample(particles.atoms, 1);
                }

                Base::kineticEnergies[samples] = particles.atoms.kinetic_energy();

                //histo->sample(atoms, 0);
                track->sample(particles.atoms, 0);
                Base::potentialEnergies[samples] = pm.get_energy(particles, geometry);
                Base::totalEnergies[samples] = Base::potentialEnergies[samples] + Base::kineticEnergies[samples];
                end_t = omp_get_wtime();
                printf("Progress: %.1lf%% Temperature: %.1lf Average temperature: %.1lf Average pressure: %.2lf Potential Energy: %.5lf Kinetic Energy: %.3lf, Simulation speed: %.1lf ns / h\r",
                      (double)i/Base::iterations * 100.0, temperature, cummulativeTemp/i, cummulativePress/i, Base::potentialEnergies[samples],
                       Base::kineticEnergies[samples], k * Base::tStep / ((end_t - start_t) / 3600.0));
                fflush(stdout);
                start_t = omp_get_wtime();

                frames[frames.frameCounter]->save_state(particles.atoms);
                frames.frameCounter++;

                if(frames.frameCounter == frames.saveFreq){
                    frames.save_to_file(particles);
                }
                samples++;
                k = 0;
            }
            k++;
        }

        histo->save();

        track->save();

        //histo->save();
        printf("\n");    
    }
};
