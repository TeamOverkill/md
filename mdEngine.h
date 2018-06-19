#pragma once

#include "base.h"

namespace mdEngine {
    /*!
    * This namespace should hold all MD specific algorithms, hence the 'engine' of the program
    */
    double get_temperature(Atom **atoms){
        double temp = 0;
        for(int i = 0; i < base::numOfAtoms; i++){
            temp += atoms[i]->mass * atoms[i]->vel.dot(atoms[i]->vel) / (3 * constants::K);
        }
        return temp/base::numOfAtoms;
    }

    template<typename F, typename I>
    void run(I&& integrator_1, I&& integrator_2, F&& force_function, Atom **atoms, Frame **frames){
        /*!
        * This function contains the main loop of the program
        */

        double temperature;
        int frameCounter = 0;
        double cummulativeTemp = 0;
        /*!< Main MD loop */
        for(int i = 0; i < base::iterations; i++){
            integrator_1(atoms);    /*!< First half step of integrator */
            force_function(atoms);  /*!< Calculate new forces */
            integrator_2(atoms);    /*!< Second half step of integrator */
            //set_velocity(atoms);
            thermostats::andersen::set_velocity(atoms); /*!< Apply thermostat */
            temperature = get_temperature(atoms);
            cummulativeTemp += temperature;
            base::temperatures[i] = temperature;
            if(i % Frame::fStep == 0){
                for(int i = 0; i < base::numOfAtoms; i++){
                    base::kineticEnergies[frameCounter] += atoms[i]->kinetic_energy();
                }

                base::potentialEnergies[frameCounter] = energy::LJ::energy(atoms);
                base::totalEnergies[frameCounter] = base::potentialEnergies[frameCounter] + base::kineticEnergies[frameCounter];
                printf("Progress: %lf%% Temperature: %lf Average temperature: %lf\r",
                       (double)i/base::iterations * 100.0, temperature, cummulativeTemp/i);

                fflush(stdout);
                frames[frameCounter] = new Frame();
                frames[frameCounter]->save_state(atoms);
                frameCounter++;
            }
        }
        printf("\n");    
    }
}