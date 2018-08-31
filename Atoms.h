#pragma once

#include <vector>
#include "atom.h"
#include <fstream>
#include <sstream>

class Atoms{
private:
    std::vector<Atom*> atoms;

public:
    Atom* operator[](int i){
        return atoms[i];
    }
    int numOfAtoms;
    Eigen::MatrixXd distances;   /*!< Triangular distance matrix containing all distances*/
    Eigen::MatrixXd forceMatrix; /*!< Force matrix containing all forces */

    void update_distances();
    int get_overlaps();
    void initialize(int numOfAtoms);
    void remove_overlaps();
    bool overlap(Atom* a);
    void read_frame(std::string fileName);
};