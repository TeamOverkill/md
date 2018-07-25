#pragma once

#include "base.h"

/**
 * \file atom.h
 */

/*!
 *  \addtogroup Atom
 *  @{
 */
class Atom{

    public:
        Atom();
        //static Atom** create_atoms();
        Eigen::Vector3d pos;        /*!< Coordinates */
        Eigen::Vector3d vel;        /*!< Velocities */
        Eigen::Vector3d oldForce;   /*!< Force from previous iteration */
        Eigen::Vector3d force;      /*!< Current force */
        int charge;
        double radius, mass;

        static Eigen::MatrixXd distances;   /*!< Triangular distance matrix containing all distances*/
        static Eigen::MatrixXd forceMatrix; /*!< Force matrix containing all forces */

        double distance(Atom* otherAtom);
        double distance_pbc(Atom *otherAtom);
        static void update_distances(Atom **atoms);
        void hard_walls();
        void pbc();
        double kinetic_energy();
        void set_velocity();
        static void initialize(Atom **atoms);
};
/** @}*/