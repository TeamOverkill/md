#include "energy.h"
#include <math.h>

void energy::forces(Atom **atoms){
    // for(int i = 0; i < 5; i++){
    //     atoms[i]->vel *= -1;
    // }
    // force = atoms[i]->vel;
}


void energy::forces_LJ(Atom **atoms){
    double epsilon = 10;
    double sigma2 = 5;

    double fjx = 0;
    double fjy = 0;
    double fjz = 0;
    Eigen::Vector3d dr;
    Eigen::Vector3d force;
    for(int i = 0; i < Base::num_of_atoms; i++){
        force[0] = 0;
        force[1] = 0;
        force[2] = 0;
        for(int j = 0; j < Base::num_of_atoms; j++){
            if(i != j){

                dr = atoms[i]->pos - atoms[j]->pos;
                double r2 = dr.dot(dr);
                double fr2 = sigma2 / r2;                              // LJ quadratic
                double fr6 = fr2 * fr2 * fr2;                          // LJ sextic
                double fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;     // LJ magnitude


                // Apply direction
                force += fr * dr;

                // fjx -= fr * dx;
                // fjy -= fr * dy;
                // fjz -= fr * dz;
            }
        }
        atoms[i]->force = force;
    }
}