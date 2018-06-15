#ifndef ENERGY_H
#define ENERGY_H

#include "base.h"

namespace energy{ namespace LJ {

    namespace {
        double epsilon = 1.5;    //LJ parameter epsilon
        double sigma = 1;      //LJ parameter sigma
    }

    inline void forces(Atom **atoms){
        /*
        Calculate the forces using a Lennard-Jones potential
        */

        double fjx = 0;
        double fjy = 0;
        double fjz = 0;
        Eigen::Vector3d dr;

        for(int i = 0; i < base::numOfAtoms; i++){
            atoms[i]->force.setZero();
        }

        for(int i = 0; i < base::numOfAtoms; i++) {
            for (int j =  i + 1; j < base::numOfAtoms; j++) {
                //if(i != j) {
                dr = atoms[i]->pos - atoms[j]->pos;
                double r2 = dr.dot(dr);
                double fr2 = sigma * sigma / r2;                              // LJ quadratic
                double fr6 = fr2 * fr2 * fr2;                          // LJ sextic
                double fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;     // LJ magnitude

                // Apply direction
                atoms[i]->force += fr * dr;
                atoms[j]->force -= fr * dr;
                Atom::forceMatrix(i, j) = (fr * dr).norm();
                //}
            }
        }
        //printf("Determinant: %lf\n", Atom::forceMatrix.determinant());
    }
    inline double energy(Atom **atoms){
        /*
        Calculate the energy using a Lennard-Jones potential
        */

        double distance;
        double energy = 0;
        Eigen::Vector3d dr;

        for(int i = 0; i < base::numOfAtoms; i++) {
            for (int j = i + 1; j < base::numOfAtoms; j++) {
                //Potential energy:
                dr = atoms[i]->pos - atoms[j]->pos;
                distance = dr.norm();
                //distance = atoms[i]->distance(atoms[j]);
                double fr = sigma / distance;                // LJ quadratic
                double fr2 = fr * fr;
                double fr6 = fr2 * fr2 * fr2;                  // LJ sextic
                energy += 4 * epsilon * fr6 * (fr6 - 1);     // LJ
            }
            energy += atoms[i]->kinetic_energy();
        }
        return energy;
    }
} }

#endif