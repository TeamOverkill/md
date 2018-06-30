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
        Eigen::Vector3d pos;        /*!< Coordinates */
        Eigen::Vector3d vel;        /*!< Velocities */
        Eigen::Vector3d oldForce;   /*!< Force from previous iteration */
        Eigen::Vector3d force;      /*!< Current force */

        static Eigen::MatrixXd distances;   /*!< Triangular distance matrix containing all distances*/
        static Eigen::MatrixXd forceMatrix; /*!< Force matrix containing all forces */

        int charge;
        double radius, mass;

        double distance(Atom* otherAtom);
        double kinetic_energy();
        void set_velocity();
        static void initialize(Atom **atoms);
};
/** @}*/