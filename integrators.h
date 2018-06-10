#ifndef INTEGRATOR_H
#define INTEGRATOR_H

#include "base.h"

namespace integrators{  //add nested namespaces if more integrators are added
    double tStep = 0.001;
    inline void velocity_verlet_first(Atom **atoms){
        /* 
        Velocity Verlet integrator
        First half step
        */

        tStep = 0.001;
        double energyCons;
        Eigen::Vector3d force;

        for(int i = 0; i < base::numOfAtoms; i++){
            atoms[i]->vel += 0.5 * tStep * atoms[i]->oldForce;

            if(atoms[i]->pos[0] >= base::boxDim - atoms[i]->radius){
                atoms[i]->vel[0] *= -1;
            }
            if(atoms[i]->pos[0] <= atoms[i]->radius){
                atoms[i]->vel[0] *= -1;
            }
            if(atoms[i]->pos[1] >= base::boxDim){
                atoms[i]->vel[1] *= -1;
            }      
            if(atoms[i]->pos[1] <= atoms[i]->radius){
                atoms[i]->vel[1] *= -1;
            }   
            if(atoms[i]->pos[2] >= base::boxDim - atoms[i]->radius){
                atoms[i]->vel[2] *= -1;
            }      
            if(atoms[i]->pos[2] <= atoms[i]->radius){
                atoms[i]->vel[2] *= -1;
            }
            atoms[i]->pos += tStep * atoms[i]->vel;
        }
    }

    inline void velocity_verlet_second(Atom **atoms){
        /* 
        Velocity Verlet integrator
        Second half step
        */

        for(int i = 0; i < base::numOfAtoms; i++){
            atoms[i]->vel += 0.5 * tStep * atoms[i]->force;
            atoms[i]->oldForce = atoms[i]->force;
        }
    }
}

#endif