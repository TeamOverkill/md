#pragma once

#include <vector>
#include "atom.h"
#include <fstream>
#include <sstream>
#include "particles.h"
#include "particle.h"

class Atoms{
private:
    std::vector<Atom*> atoms;

public:
    int numOfAtoms;
    Eigen::MatrixXd distances;   /*!< Triangular distance matrix containing all distances*/
    Eigen::MatrixXd forceMatrix; /*!< Force matrix containing all forces */

    void set_forces_zero();
    double kinetic_energy();
    void update_distances();
    int get_overlaps();
    void initialize(int numOfAtoms);
    void remove_overlaps();
    bool overlap(Atom* a);
    Particles read_frame(std::string fileName);

    Atom* operator[](int i){
        return atoms[i];
    }
    Atoms(){
        numOfAtoms = 0;
    }

};