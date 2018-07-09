#pragma once

#include "base.h"
#include "atom.h"

namespace integrators{
    inline void velocity_verlet_first(Atom **atoms){
        /*!
        * Velocity Verlet integrator
        * First half step
        */


        for(int i = 0; i < base::numOfAtoms; i++){
            if(atoms[i]->pos[0] >= base::boxDim - atoms[i]->radius){
                atoms[i]->vel[0] *= -1;
            }
            if(atoms[i]->pos[0] <= atoms[i]->radius){ ;
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

            atoms[i]->vel += 0.5 * base::tStep * atoms[i]->oldForce / atoms[i]->mass * constants::NA; //[nm/ps]
            atoms[i]->pos += base::tStep * atoms[i]->vel;

            if(atoms[i]->pos.norm() > sqrt(3) * base::boxDim + 1){
                printf("\nAtom outside box\n");
                std::cout << atoms[i]->pos << std::endl;
                exit(1);
            }
        }
    }

    inline void velocity_verlet_second(Atom **atoms){
        /*!
        * Velocity Verlet integrator
        * Second half step
        */

        for(int i = 0; i < base::numOfAtoms; i++){
            atoms[i]->vel += 0.5 * base::tStep * atoms[i]->force / atoms[i]->mass * constants::NA;
            atoms[i]->oldForce = atoms[i]->force;
        }
    }
}