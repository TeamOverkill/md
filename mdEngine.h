#pragma once
#include "base.h"
#include "atom.h"

namespace mdEngine {
    /*!
    * This namespace should hold all MD specific algorithms, hence the 'engine' of the program
    */

    template<typename F, typename I>
    void run(I&& integrator_1, I&& integrator_2, F&& force_function, Atom **atoms, Frame **frames){
        /*!
        * Template run function to allow user specific integrators and energy functions
        */
       
        int frameCounter = 0;
        for(int i = 0; i < base::iterations; i++){
            integrator_1(atoms);    /*!< First half step of integrator */
            force_function(atoms);  /*!< Calculate new forces */
            integrator_2(atoms);    /*!< Second half step of integrator */
            if(i % Frame::fStep == 0){
                for(int i = 0; i < base::numOfAtoms; i++){
                    base::kineticEnergies[frameCounter] += atoms[i]->kinetic_energy();
                }
                base::potentialEnergies[frameCounter] = energy::LJ::energy(atoms);
                base::totalEnergies[frameCounter] = base::potentialEnergies[frameCounter] + base::kineticEnergies[frameCounter];
                printf("Progress: %lf%%\r", (double)i/base::iterations * 100.0);
                //printf("Energy is: %lf\n", energy::LJ::energy(atoms));
                fflush(stdout);
                frames[frameCounter] = new Frame();
                frames[frameCounter]->save_state(atoms);
                frameCounter++;
            }
        }
        printf("\n");    
    }
}