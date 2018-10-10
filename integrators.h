#pragma once

#include "base.h"
#include "atoms.h"
#include "particles.h"

namespace integrators{
    inline void velocity_verlet_first(Particles& particles){
        /*!
        * Velocity Verlet integrator
        * First half step
        */

        for(int i = 0; i < particles.numOfParticles; i++){

            //////////////     Hard walls - PLZ REMOVE   //////////////////
            /*if(atoms[i]->pos[0] >= Base::boxDim - atoms[i]->radius){
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
            }*/
            ///////////////////////////////////////////////////////////////
            for(int j = 0; j < particles[i]->numOfAtoms; j++) {
                particles[i]->atoms[j]->pbc();
                particles[i]->atoms[j]->vel +=
                        0.5 * Base::tStep * particles[i]->atoms[j]->oldForce / particles[i]->atoms[j]->mass; //[nm/ps]
                particles[i]->atoms[j]->pos += Base::tStep * particles[i]->atoms[j]->vel;
                particles[i]->atoms[j]->pos = particles[i]->atoms[j]->pos.cwiseProduct(
                        Base::dimensionality);   //Multiply with dimensionality

                if (particles[i]->atoms[j]->pos.norm() > sqrt(3) * Base::boxDim + 1) {
                    printf("\nAtom outside box\n");
                    std::cout << particles[i]->atoms[j]->pos << std::endl;
                    exit(1);
                }
            }
        }
    }

    inline void velocity_verlet_second(Particles& particles){
        /*!
        * Velocity Verlet integrator
        * Second half step
        */

        for(int i = 0; i < particles.numOfParticles; i++){
            for(int j = 0; j < particles[i]->numOfAtoms; j++) {
                particles[i]->atoms[j]->vel +=
                        0.5 * Base::tStep * particles[i]->atoms[j]->force / particles[i]->atoms[j]->mass;
                particles[i]->atoms[j]->oldForce = particles[i]->atoms[j]->force;
            }
        }
    }
}