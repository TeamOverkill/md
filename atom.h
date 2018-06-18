#pragma once

#include "base.h"

/*!
 *  \addtogroup Atom
 *  @{
 */
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
        static void initialize(Atom **atoms);
};