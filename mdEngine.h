#pragma once

#include "base.h"
#include "atoms.h"

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
    void run(I&& integrator_1, I&& integrator_2, F&& force_function, E&& energy_function, Atoms& atoms, Frame **frames,
    P&& pm){
        pm->get_energy(atoms);
        double temperature;
        double pressure = 0;
        int frameCounter = 0;
        double cummulativeTemp = 0;
        double cummulativePress = 0;
        
        FILE *f = fopen("output.gro", "w");

        /* Main MD loop */
        for(int i = 0; i < Base::iterations; i++){
        //#pragma omp parallel
        //#pragma omp master
        //    {

            integrator_1(atoms);    /* First half step of integrator */
            force_function(atoms);  /* Calculate new forces */
            integrator_2(atoms);    /* Second half step of integrator */
            thermostats::berendsen::set_velocity(atoms); /* Apply thermostat */
            temperature = thermostats::get_temperature(atoms);
            //pressure = barostats::get_pressure();
            cummulativeTemp += temperature;
            cummulativePress += pressure;
            Base::temperatures[i] = temperature;

            if(i % Frame::fStep == 0){
                Base::kineticEnergies[frameCounter] = 0;
                for(int i = 0; i < Base::numOfAtoms; i++){
                    Base::kineticEnergies[frameCounter] += atoms[i]->kinetic_energy();
                }

                Base::potentialEnergies[frameCounter] = energy_function(atoms);
                Base::totalEnergies[frameCounter] = Base::potentialEnergies[frameCounter] + Base::kineticEnergies[frameCounter];
                printf("Progress: %.1lf%% Temperature: %.1lf Average temperature: %.1lf Average pressure: %.2lf Potential Energy: %.5lf Kinetic Energy: %.3lf\r",
                       (double)i/Base::iterations * 100.0, temperature, cummulativeTemp/i, cummulativePress/i, Base::potentialEnergies[frameCounter],
                       Base::kineticEnergies[frameCounter]);
                
                //Frame::init_file();

                /*if(frameCounter>10){
                    //printf("writing\n");
                    fflush(stdout);
                    Frame::save_to_file(frames);
                    delete[] frames;
                    frames[frameCounter]->save_state(atoms);
                    frameCounter = 0;
                    }
                frames[frameCounter] = new Frame();
                frameCounter++;
                }*/
            }
        }
        printf("\n");    
    }
}
