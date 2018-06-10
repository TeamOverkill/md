#ifndef ATOM_H
#define ATOM_H

#include <eigen3/Eigen/Dense>

class Atom{
    public:
        Atom();
        
        Eigen::Vector3d pos;
        Eigen::Vector3d vel;
        Eigen::Vector3d oldForce;
        Eigen::Vector3d force;
        int charge;
        double radius;
        double mass;
};

#endif