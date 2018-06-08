#include "energy.h"
#include <math.h>

Eigen::Vector3d energy::forces(Atom **atoms){
    Eigen::Vector3d force;
    // for(int i = 0; i < 5; i++){
    //     atoms[i]->vel *= -1;
    // }
    // force = atoms[i]->vel;
    force[0] = 1;
    force[1] = 2;
    force[2] = 3;
    return force;
}


Eigen::Vector3d energy::forces_LJ(Atom **atoms){
    double epsilon = 1;
    double sigma2 = 1;

    double fix = 0;
    double fiy = 0;
    double fiz = 0;

    double fjx = 0;
    double fjy = 0;
    double fjz = 0;

    Eigen::Vector3d force;
    force[0] = 0;
    force[1] = 0;
    force[2] = 0;
    for(int i = 0; i < Base::num_of_atoms; i++){
        for(int j = i+1; j < Base::num_of_atoms; j++){
            double dx = (atoms[i]->pos[0]) - (atoms[j]->pos[0]);   // Particle distances
            double dy = (atoms[i]->pos[1]) - (atoms[j]->pos[1]);
            double dz = (atoms[i]->pos[2]) - (atoms[j]->pos[2]);
            double r2 = dx*dx + dy*dy + dz*dz;                     // Squared seperation

            double fr2 = sigma2 / r2;                              // LJ quadratic
            double fr6 = fr2 * fr2 * fr2;                          // LJ sextic
            double fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;     // LJ magnitude


            // Apply direction
            fix += fr * dx;
            fiy += fr * dy;
            fiz += fr * dz;

            fjx -= fr * dx;
            fjy -= fr * dy;
            fjz -= fr * dz;
        }
    }

    return force;
}