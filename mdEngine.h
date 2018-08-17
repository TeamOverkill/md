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
    * Calculate the temperature Based on the equipartition theorem
    * where the temperature is given by
    \f[
      T = \sum^{N-1}_{i=0}m_i * v_i^2
    \f]
    */
    double get_temperature(Atom **atoms){


        double temp = 0;
        for(int i = 0; i < Base::numOfAtoms; i++){
            temp += atoms[i]->mass * atoms[i]->vel.dot(atoms[i]->vel);
        }
        return temp/Base::numOfAtoms * 1 / (3 * constants::K_CORRECT);
    }

    /*!
    * Calculate the pressure Based on the virial expansion
    \f[
        P=\rho k_B T + \frac{1}{dV}\left<\sum_{i=0}^{N-1}\sum_{j = i + 1}^{N-1} f(r_{ij})r_{ij}\right>
    \f]
    */
    double get_pressure(){

        double pressure = 0;

        double b2 = 0;
        for(int i = 0; i < Base::numOfAtoms; i++){
            for(int j = i + 1; j < Base::numOfAtoms; j++){
                b2 += Atom::forceMatrix(i, j) * Atom::distances(i, j);
            }
        }
        b2 *= 1/(3 * Base::volume);
        pressure = Base::numOfAtoms / Base::volume * constants::K_CORRECT * 300 + b2;  //[dalton / (ps^2 * nm)]
        pressure *= 1.66053904 * 1e-27; //dalton to kg
        pressure *= 1e24; //ps^2 to s^2
        pressure *= 1e9; //nm to m
        pressure *= 1e-5; //Pa to bar
        return pressure; //[bar]
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
    template<typename F, typename I>
    void run(I&& integrator_1, I&& integrator_2, F&& force_function, Atom **atoms, Frame **frames){

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
            //thermostats::andersen::set_velocity(atoms); /* Apply thermostat */
            temperature = get_temperature(atoms);
            pressure = get_pressure();
            cummulativeTemp += temperature;
            cummulativePress += pressure;
            Base::temperatures[i] = temperature;

            if(i % Frame::fStep == 0){
                Base::kineticEnergies[frameCounter] = 0;
                for(int i = 0; i < Base::numOfAtoms; i++){
                    Base::kineticEnergies[frameCounter] += atoms[i]->kinetic_energy();
                }

                Base::potentialEnergies[frameCounter] = energy::LJ::energy(atoms);
                Base::totalEnergies[frameCounter] = Base::potentialEnergies[frameCounter] + Base::kineticEnergies[frameCounter];
                printf("Progress: %.1lf%% Temperature: %.1lf Average temperature: %.1lf Average pressure: %.2lf Potential Energy: %.5lf Kinetic Energy: %.3lf\r",
                       (double)i/Base::iterations * 100.0, temperature, cummulativeTemp/i, cummulativePress/i, Base::potentialEnergies[frameCounter],
                       Base::kineticEnergies[frameCounter]);
                
                //Frame::init_file();

                if(frameCounter>10){
                    //printf("writing\n");
                    fflush(stdout);
                    Frame::save_to_file(frames);
                    delete[] frames;
                    frames[frameCounter]->save_state(atoms);
                    frameCounter = 0;
                    }
                frames[frameCounter] = new Frame();
                frameCounter++;
                }
        //}
        }
        printf("\n");    
    }
}
