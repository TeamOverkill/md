#ifndef ENERGY_H
#define ENERGY_H

#include "base.h"

namespace energy{ namespace LJ {
    inline void forces(Atom **atoms){
        /*
        Calculate the forces using a Lennard-Jones potential
        */

        double epsilon = 10;    //LJ parameter epsilon
        double sigma2 = 5;      //LJ parameter sigma

        double fjx = 0;
        double fjy = 0;
        double fjz = 0;
        Eigen::Vector3d dr;
        Eigen::Vector3d force;
        for(int i = 0; i < base::numOfAtoms; i++){
            force[0] = 0;
            force[1] = 0;
            force[2] = 0;
            for(int j = 0; j < base::numOfAtoms; j++){
                if(i != j){

                    dr = atoms[i]->pos - atoms[j]->pos;
                    double r2 = dr.dot(dr);
                    double fr2 = sigma2 / r2;                              // LJ quadratic
                    double fr6 = fr2 * fr2 * fr2;                          // LJ sextic
                    double fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;     // LJ magnitude

                    // Apply direction
                    force += fr * dr;
                }
            }
            atoms[i]->force = force;
        }
    }
} }

#endif