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
        double springConstant = 1.0;        // [kJ * nm^(-2) * mol^(-1)]

        inline double energy(Atom **atoms){
            double energy = 0;
            energy = 0.5 * springConstant * atoms[0]->pos.norm();   // [kJ/mol]

            return energy;
        }

        inline void forces(Atom **atoms){
            /*!
            * One dimensional harmonic potential
            */
            double force = 0;
            Eigen::Vector3d forceDir;
            forceDir << 1, 0, 0;
            force = springConstant * (25 - atoms[0]->pos[0]);   // [(kJ/(nm*mol)] = [dalton * nm/ps^2]
            atoms[0]->force = force * forceDir.normalized();    // [(kJ/(nm*mol)] = [dalton * nm/ps^2]
        }
    }
    /*!
     *  \addtogroup Lennard-Jones
     *  @{
    */
    namespace LJ {
        namespace {
            double epsilon = 1.5;  //![kJ/mol] LJ parameter epsilon
            double sigma = 1;      //![nm] LJ parameter sigma
        }


        inline void forces(Atom **atoms) {
            /*!
            * Calculate the forces using a Lennard-Jones potential
            */


            Eigen::Vector3d dr;


            for (int i = 0; i < Base::numOfAtoms; i++) {
                atoms[i]->force.setZero();
            }


            for (int i = 0; i < Base::numOfAtoms; i++) {
                for (int j = i + 1; j < Base::numOfAtoms; j++) {
                    dr = atoms[i]->pos - atoms[j]->pos;                 // [nm]
                    double r2 = dr.dot(dr);                             // [nm^2]
                    double fr2 = sigma * sigma / r2;                    // unitless
                    double fr6 = fr2 * fr2 * fr2;                       // unitless
                    double fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;  // [kJ/(nm^2*mol)]

                    atoms[i]->force += fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    atoms[j]->force -= fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    Atom::forceMatrix(i, j) = (fr * dr).norm();
                }
            }
        }

        /*! Calculate the energy using a Lennard-Jones potential which is given by
        \f[
            U_{ij}^{LJ} = 4 \pi \epsilon \left( \left( \frac{\sigma}{r_{ij}} \right)^{12} - \left( \frac{\sigma}{r_{ij}} \right)^6\right)
        \f]
        */
        inline double energy(Atom **atoms) {
            /*!
            * Calculate the energy using a Lennard-Jones potential
            */

            double distance;
            double energy = 0;
            Eigen::Vector3d dr;


            for (int i = 0; i < Base::numOfAtoms; i++) {
                for (int j = i + 1; j < Base::numOfAtoms; j++) {
                    dr = atoms[i]->pos - atoms[j]->pos;     // [nm]
                    distance = dr.norm();                   // [nm]
                    double fr = sigma / distance;           // unitless
                    double fr2 = fr * fr;                   // unitless
                    double fr6 = fr2 * fr2 * fr2;           // unitless
                    energy += fr6 * (fr6 - 1);              // unitless

                }
                return 4 * epsilon * energy * constants::NA;
            }

            return 4 * epsilon * energy;    // [kJ/mol]
        }
    }

    namespace magnetic {
        double dipoleC = 8.3145; // [kJ*nm^3*mol^(-1)] (example of what is used in Faunus at 300 Kelvin)        //!Dipole dipole product over the vacuum permittivity

        inline void forces(Atom **atoms) {
            Eigen::Vector3d dr;

            for (int i = 0; i < Base::numOfAtoms; i++) {
                atoms[i]->force.setZero();
            }

            for (int i = 0; i < Base::numOfAtoms; i++) {
                for (int j = i + 1; j < Base::numOfAtoms; j++) {
                    dr = atoms[i]->pos - atoms[j]->pos;                 // [nm]
                    double r = dr.norm();                               // [nm]
                    double fr = -3 * dipoleC / (r * r * r * r * r);     // [(kJ/(nm^2*mol)]
                    atoms[i]->force += fr * dr;                         // [(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    atoms[j]->force -= fr * dr;                         // [(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    Atom::forceMatrix(i, j) = (fr * dr).norm();
                }
            }
        }
        inline double energy(Atom **atoms) {
            double distance;
            double energy = 0;
            Eigen::Vector3d dr;

            for(int i = 0; i < Base::numOfAtoms; i++) {
                for (int j = i + 1; j < Base::numOfAtoms; j++) {
                    dr = atoms[i]->pos - atoms[j]->pos;                     // [nm]
                    distance = dr.norm();                                   // [nm]
                    energy += dipoleC / (distance * distance * distance);   // [kJ/mol]
                }
            }
            return energy;
        }

        inline double wall_potential(Atom *atom){

            /*
            double b = Base::boxdim/2;
            double x = atom->pos[0] - Base::boxDim;
            double y = atom->pos[1] - Base::boxDim;
            double diffX = b + x;
            double diffY = b + y;
            //Bottom wall
            2 * b / (diffX * diffX + std::sqrt(b * b + 2 * b * y + b * b + y * y));
             */
            return 0.0;
        }
    }
}


#endif