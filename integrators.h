#pragma once

#include "base.h"
#include "atoms.h"

namespace integrators{
    inline void velocity_verlet_first(Atoms& atoms){
        /*!
        * Velocity Verlet integrator
        * First half step
        */


        for(int i = 0; i < Base::numOfAtoms; i++){

            //////////////     Hard walls - PLZ REMOVE   //////////////////
            if(atoms[i]->pos[0] >= Base::boxDim - atoms[i]->radius){
                atoms[i]->vel[0] *= -1;
            }
            if(atoms[i]->pos[0] <= atoms[i]->radius){ ;
                atoms[i]->vel[0] *= -1;
            }
            if(atoms[i]->pos[1] >= Base::boxDim){
                atoms[i]->vel[1] *= -1;
            }
            if(atoms[i]->pos[1] <= atoms[i]->radius){
                atoms[i]->vel[1] *= -1;
            }
            if(atoms[i]->pos[2] >= Base::boxDim - atoms[i]->radius){
                atoms[i]->vel[2] *= -1;
            }
            if(atoms[i]->pos[2] <= atoms[i]->radius){
                atoms[i]->vel[2] *= -1;
            }
            ///////////////////////////////////////////////////////////////

            atoms[i]->vel += 0.5 * Base::tStep * atoms[i]->oldForce / atoms[i]->mass; //[nm/ps]
            atoms[i]->pos += Base::tStep * atoms[i]->vel;
            atoms[i]->pos = atoms[i]->pos.cwiseProduct(Base::dimensionality);   //Multiply with dimensionality

            if(atoms[i]->pos.norm() > sqrt(3) * Base::boxDim + 1){
                printf("\nAtom outside box\n");
                std::cout << atoms[i]->pos << std::endl;
                exit(1);
            }
        }
    }

    inline void velocity_verlet_second(Atoms& atoms){
        /*!
        * Velocity Verlet integrator
        * Second half step
        */

        for(int i = 0; i < Base::numOfAtoms; i++){
            atoms[i]->vel += 0.5 * Base::tStep * atoms[i]->force / atoms[i]->mass;
            atoms[i]->oldForce = atoms[i]->force;
        }
    }
}