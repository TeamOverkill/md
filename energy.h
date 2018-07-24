#ifndef ENERGY_H
#define ENERGY_H

#include "base.h"
/*!
 *  \addtogroup Energy
 *  @{
 */

/*! The energy namespace contains the various potentials. Each potential has a corresponding
 * force function which calculates the force by differentiating the potential function
 */
namespace energy{
    /*!
     *  \addtogroup Harmonic
     *  @{
    */
    namespace harmonic{
        double springConstant = 1.0 / constants::NA;

        inline double energy(Atom **atoms){
            double energy = 0;
            energy = 0.5 * springConstant * atoms[0]->pos.norm() * constants::NA;

            return energy;
        }

        inline void forces(Atom **atoms){
            /*!
            * One dimensional harmonic potential
            */
            double force = 0;
            Eigen::Vector3d forceDir;
            forceDir << 1, 0, 0;
            force = springConstant * 2 * (25 - atoms[0]->pos[0]);
            atoms[0]->force = force * forceDir.normalized();
        }
    }
    /*!
     *  \addtogroup Lennard-Jones
     *  @{
    */
    namespace LJ {
    namespace {
        double epsilon = 1.5 / constants::NA;    //![kJ/mol] LJ parameter epsilon
        double sigma = 1;      //! LJ parameter sigma
    }


    inline void forces(Atom **atoms){
        /*!
        * Calculate the forces using a Lennard-Jones potential
        */

        double fjx = 0;
        double fjy = 0;
        double fjz = 0;
        Eigen::Vector3d dr;

        for(int i = 0; i < Base::numOfAtoms; i++){
            atoms[i]->force.setZero();
        }

        for(int i = 0; i < Base::numOfAtoms; i++) {
            for (int j =  i + 1; j < Base::numOfAtoms; j++) {
                dr = atoms[i]->pos - atoms[j]->pos;
                double r2 = dr.dot(dr);
                double fr2 = sigma * sigma / r2;
                double fr6 = fr2 * fr2 * fr2;
                double fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;

                atoms[i]->force += fr * dr;// * 6.022141e11;         //[dalton * nm/ps^2]
                atoms[j]->force -= fr * dr;// * 6.022141e11;
                Atom::forceMatrix(i, j) = (fr * dr).norm();
            }
        }
    }

    /*! Calculate the energy using a Lennard-Jones potential which is given by
    \f[
        U_{ij}^{LJ} = 4 \pi \epsilon \left( \left( \frac{\sigma}{r_{ij}} \right)^{12} - \left( \frac{\sigma}{r_{ij}} \right)^6\right)
    \f]
    */
    inline double energy(Atom **atoms){
        /*!
        * Calculate the energy using a Lennard-Jones potential
        */

        double distance;
        double energy = 0;
        Eigen::Vector3d dr;

        for(int i = 0; i < Base::numOfAtoms; i++) {
            for (int j = i + 1; j < Base::numOfAtoms; j++) {
                dr = atoms[i]->pos - atoms[j]->pos;
                distance = dr.norm();
                double fr = sigma / distance;
                double fr2 = fr * fr;
                double fr6 = fr2 * fr2 * fr2;
                energy += fr6 * (fr6 - 1);
            }
        }
        return 4 * epsilon * energy * constants::NA;
    }
} }

#endif