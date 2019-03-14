#pragma once

#include "base.h"
//#include "atoms.h"
/**
 * \file atom.h
 */

/*!
 *  \addtogroup Atom
 *  @{
 */

/*! This class contains all variables which defines an atom (position, velocity, mass etc). This class also
 * contains member and static functions related to these variables.
*/
class Atom{

    public:
        Atom();
        //static Atom** create_atoms();
        //Eigen::Vector3d* pos;        /*!< Coordinates */
        Eigen::Vector3d com;
        Eigen::Vector3d vel;        /*!< Velocities */
        Eigen::Vector3d oldForce;   /*!< Force from previous iteration */
        Eigen::Vector3d force;      /*!< Current force */
        double q;
        int index;                  /*!< Refers to index in atoms object */
        int localIndex;             /*!< Refers to index inside a particle */
        int particle;
        double radius, mass;
        std::pair<double, double> lj;
        std::string name;


        void set_mb_velocity();
        double distance(Atom* otherAtom);
        double distance_pbc(Atom *otherAtom);
        void pbc();
        void hard_walls();
        double kinetic_energy();
        void random_move(double stepSize);
        Eigen::Vector3d get_disp(Atom* otherAtom);
        /*
        Eigen::Vector3d find_pos() {
            Eigen::Vector3d posNew;
            posNew.setZero();
            posNew = this->atoms->pos;
            return posNew;
        }
        */
};
/** @}*/
