#include "energy.h"

Eigen::Vector2d energy::forces(Atom **atoms){
    Eigen::Vector2d force;
    for(int i = 0; i < 2; i++){
        atoms[i]->vel *= -1;
    }
    return force;
}