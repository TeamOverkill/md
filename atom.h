#ifndef ATOM_H
#define ATOM_H

#include <vector>
#include "system.h"

class Atom{
    public:
        Atom();

        static int num_of_atoms;
        
        Eigen::Vector2d pos;
        Eigen::Vector2d vel;
        Eigen::Vector2d old_force;
        int charge;
        double radius;
        double mass;
};

#endif