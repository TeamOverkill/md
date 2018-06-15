#ifndef ATOM_H
#define ATOM_H

#include <eigen3/Eigen/Dense>

class Atom{
    /*!
    *   Atom class
    */
    public:
        Atom();
        //static Atom** create_atoms();
        Eigen::Vector3d pos;        /*!< Positions */
        Eigen::Vector3d vel;        /*!< Velocities */
        Eigen::Vector3d oldForce;   /*!< Force from previous iteration */
        Eigen::Vector3d force;      /*!< Current force */
        static Eigen::MatrixXd forceMatrix;
        int charge;
        double radius, mass;
        double distance(Atom* otherAtom);
        double kinetic_energy();
};

#endif