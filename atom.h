#ifndef ATOM_H
#define ATOM_H

#include "base.h"

class Atom{
    public:
        Atom();
        
        Eigen::Vector3d pos;
        Eigen::Vector3d vel;
        Eigen::Vector3d old_force;
        int charge;
        double radius;
        double mass;
};

#endif