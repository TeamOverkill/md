#ifndef INTEGRATOR_H
#define INTEGRATOR_H

#include "base.h"

namespace integrators{
    double tStep = 0.001;
    inline void velocity_verlet_first(Atom **atoms){
        tStep = 0.001;
        double energyCons;
        Eigen::Vector3d force;

        for(int i = 0; i < base::numOfAtoms; i++){

            //Verlet half step
            atoms[i]->vel += 0.5 * tStep * atoms[i]->oldForce;    //half step

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
            //energy::LJ::forces(atoms);  //update forces
            //force_function(atoms);
            //atoms[i]->vel += 0.5 * tStep * atoms[i]->force;
            //atoms[i]->oldForce = atoms[i]->force;

            // atoms[i]->pos += t_step * atoms[i]->vel + t_step * t_step * atoms[i]->old_force;
            // atoms[i]->vel += atoms[i]->vel + t_step * (atoms[i]->old_force + atoms[i]->force);

            //energy_cons = energy + atoms[i]->mass * atoms[i]->vel.dot(atoms[i]->vel) * 0.5;
        }
    }

    inline void velocity_verlet_second(Atom **atoms){
        for(int i = 0; i < base::numOfAtoms; i++){
            atoms[i]->vel += 0.5 * tStep * atoms[i]->force;
            atoms[i]->oldForce = atoms[i]->force;
        }
    }
}

#endif