#pragma once

#include "base.h"
#include "atoms.h"
#include "frames.h"
#include "analysis.h"

/*!
 *  \addtogroup Main_modules
 *  @{
 */

/*! Molecular Dynamics Engine*/
namespace mdEngine {
   /*
   * This namespace should hold all MD specific algorithms, hence the 'engine' of the program
   */


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
    template<typename F, typename I, typename E, typename P>
    void run(I&& integrator_1, I&& integrator_2, F&& force_function, E&& energy_function, Atoms& atoms, Frames& frames,
    P&& pm){
        pm->get_energy(atoms);
        double temperature;
        double pressure = 0;
        int samples = 0;
        double cummulativeTemp = 0;
        double cummulativePress = 0;
        //Analysis* histo = new Density(100, "histo_1.txt");
        Analysis* histo = new rdf(100, "rdf.txt");

        FILE *f = fopen("output.gro", "w");
        fclose(f);

        /* Main MD loop */
        for(int i = 0; i < Base::iterations; i++){
            integrator_1(atoms);    /* First half step of integrator */
            force_function(atoms);  /* Calculate new forces */
            integrator_2(atoms);    /* Second half step of integrator */
            thermostats::berendsen::set_velocity(atoms); /* Apply thermostat */
            temperature = thermostats::get_temperature(atoms);
            //pressure = barostats::get_pressure();
            cummulativeTemp += temperature;
            cummulativePress += pressure;
            Base::temperatures[i] = temperature;

            if(i % frames.fStep == 0){
                
                histo->sample(atoms, 1);
                Base::kineticEnergies[samples] = 0;
                for(int i = 0; i < atoms.numOfAtoms; i++){
                    Base::kineticEnergies[samples] += atoms[i]->kinetic_energy();
                }
                //histo->sample(atoms, 0);
                Base::potentialEnergies[samples] = energy_function(atoms);
                Base::totalEnergies[samples] = Base::potentialEnergies[samples] + Base::kineticEnergies[samples];

                printf("Progress: %.1lf%% Temperature: %.1lf Average temperature: %.1lf Average pressure: %.2lf Potential Energy: %.5lf Kinetic Energy: %.3lf\r",
                      (double)i/Base::iterations * 100.0, temperature, cummulativeTemp/i, cummulativePress/i, Base::potentialEnergies[samples],
                       Base::kineticEnergies[samples]);
                fflush(stdout);


                frames[frames.frameCounter]->save_state(atoms);
                frames.frameCounter++;
                if(frames.frameCounter == frames.saveFreq){
                    frames.save_to_file(atoms.numOfAtoms);
                }
                samples++;
            }
        }
        histo->save();
        //histo->save();
        printf("\n");    
    }
}
