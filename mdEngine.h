#pragma once

#include "base.h"
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
    * Calculate the temperature based on the equipartition theorem
    * where the temperature is given by
    \f[
      T = \sum^{N-1}_{i=0}m_i * v_i^2
    \f]
    */
    double get_temperature(Atom **atoms){


        double temp = 0;
        for(int i = 0; i < base::numOfAtoms; i++){
            temp += atoms[i]->mass * atoms[i]->vel.dot(atoms[i]->vel) ;
        }
        return temp/base::numOfAtoms * 1 / (3 * constants::K);
    }

    /*!
    * Calculate the pressure based on the virial expansion
    \f[
        P=\rho k_B T + \frac{1}{dV}\left<\sum_{i=0}^{N-1}\sum_{j = i + 1}^{N-1} f(r_{ij})r_{ij}\right>
    \f]
    */
    double get_pressure(){

        double pressure = 0;

    }

    /*!
    * This function contains the main loop of the program
    */
    template<typename F, typename I>
    void run(I&& integrator_1, I&& integrator_2, F&& force_function, Atom **atoms, Frame **frames){


        double temperature;
        int frameCounter = 0;
        double cummulativeTemp = 0;

        /* Main MD loop */
        for(int i = 0; i < base::iterations; i++){
        //#pragma omp parallel
        //#pragma omp master
        //    {

            integrator_1(atoms);    /* First half step of integrator */
            force_function(atoms);  /* Calculate new forces */
            integrator_2(atoms);    /* Second half step of integrator */
            thermostats::andersen::set_velocity(atoms); /* Apply thermostat */
            temperature = get_temperature(atoms);
            cummulativeTemp += temperature;
            base::temperatures[i] = temperature;

            if(i % Frame::fStep == 0){
                for(int i = 0; i < base::numOfAtoms; i++){
                    base::kineticEnergies[frameCounter] += atoms[i]->kinetic_energy();
                }

                base::potentialEnergies[frameCounter] = energy::LJ::energy(atoms);
                base::totalEnergies[frameCounter] = base::potentialEnergies[frameCounter] + base::kineticEnergies[frameCounter];
                printf("Progress: %.1lf%% Temperature: %.1lf Average temperature: %.1lf Potential Energy: %lf Kinetic Energy: %lf\r",
                       (double)i/base::iterations * 100.0, temperature, cummulativeTemp/i, base::potentialEnergies[frameCounter],
                       base::kineticEnergies[frameCounter]);

                fflush(stdout);
                frames[frameCounter] = new Frame();
                frames[frameCounter]->save_state(atoms);
                frameCounter++;
            }
        //}
        }
        printf("\n");    
    }
}