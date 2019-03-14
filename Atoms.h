#pragma once

#include <vector>
#include "atom.h"
#include <fstream>
#include <sstream>

class Atoms{
private:
    std::vector<Atom*> atoms;

public:
    int numOfAtoms;
    Eigen::Vector3d pos;
    Eigen::MatrixXd distances;   /*!< Triangular distance matrix containing all distances*/
    std::vector< std::vector< Eigen::Vector3d > > displacements;   //Should really add this
    Eigen::MatrixXd forceMatrix; /*!< Force matrix containing all forces */

    /*!< Atomic variables */
    Eigen::MatrixXd positions;
    Eigen::MatrixXd velocities;
    Eigen::MatrixXd forces;
    Eigen::MatrixXd oldForces;
    Eigen::VectorXd masses;

    
    void set_forces_zero();
    double kinetic_energy();
    void update_distances();
    int get_overlaps();
    void initialize(int numOfAtoms);
    void remove_overlaps();
    bool overlap(Atom* a);
     
    Eigen::Vector3d find_pos(int i) {
        Eigen::Vector3d posNew;
        posNew.setZero();
        posNew = this[i].pos;
        return posNew;
    }


    Atom* operator[](std::size_t i){
        return atoms[i];
    }

    Atoms(){
        numOfAtoms = 0;
    }

    void push_back(Atom *atom){
        atoms.push_back(atom);
        this->numOfAtoms++;
    }
    
};
