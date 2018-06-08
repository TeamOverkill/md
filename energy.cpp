#include "energy.h"
#include <math.h>

Eigen::Vector3d energy::forces(Atom **atoms){
    Eigen::Vector3d force;
    for(int i = 0; i < 2; i++){
        atoms[i]->vel *= -1;
    }
    return force;
}


Eigen::Vector3d energy::forces_LJ(Atom **atoms){
    for(int i = 0; i < Num_atoms; i++){
        for(int j = i+1; j < Num_atoms; j++){
            dx = (atoms[i]->pos[0]) - (atoms[j]->pos[0]);   // Particle distances
            dy = (atoms[i]->pos[1]) - (atoms[j]->pos[1]);
            dz = (atoms[i]->pos[2]) - (atoms[j]->pos[2]);
            r2 = dx*dx + dy*dy + dz*dz;                     // Squared seperation

            fr2 = sigma2 / r2;                              // LJ quadratic
            fr6 = fr2 * fr2 * fr2;                          // LJ sextic
            fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;     // LJ magnitude


            // Apply direction
            fix += fr * dx;
            fiy += fr * dy;
            fiz += fr * dz;

            fjx -= fr * dx;
            djy -= fr * dy;
            djz -= fr * dz;
        }
    }
}