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
    Eigen::MatrixXd distances;   /*!< Triangular distance matrix containing all distances*/
    std::vector< std::vector< Eigen::Vector3d > > displacements;   //Should really add this
    Eigen::MatrixXd forceMatrix; /*!< Force matrix containing all forces */

    void set_forces_zero();
    double kinetic_energy();
    void update_distances();
    int get_overlaps();
    void initialize(int numOfAtoms);
    void remove_overlaps();
    bool overlap(Atom* a);

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