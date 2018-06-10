#ifndef ATOM_H
#define ATOM_H

#include <eigen3/Eigen/Dense>

class Atom{
    /*
    Atom class
    */
    public:
        Atom();
        
        Eigen::Vector3d pos;        //Positions
        Eigen::Vector3d vel;        //Velocities
        Eigen::Vector3d oldForce;   //Force from previous iteration
        Eigen::Vector3d force;      //Current force
        int charge;
        double radius, mass;
};

#endif