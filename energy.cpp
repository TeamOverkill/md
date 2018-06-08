#include "energy.h"

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