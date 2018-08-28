#pragma once

#include <vector>
#include "atom.h"

class Atoms{
private:
    std::vector<Atom*> atoms;

public:
    Atom* operator[](int i){
        return atoms[i];
    }

    Eigen::MatrixXd distances;   /*!< Triangular distance matrix containing all distances*/
    Eigen::MatrixXd forceMatrix; /*!< Force matrix containing all forces */

    void update_distances();
    int get_overlaps();
    void initialize(int numOfAtoms);
    void remove_overlaps();
    bool overlap(Atom* a);
};