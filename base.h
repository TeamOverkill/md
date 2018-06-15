#ifndef BASE_H
#define BASE_H
#include <eigen3/Eigen/Dense>
#include "atom.h"
#include "frame.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>

namespace base{
    /*
    This namespace should hold all 'global' variables
    */

    extern double boxDim;   //Box dimension, currently only cubic boxes
    extern int numOfAtoms;  //number of atoms
    extern int iterations;  //number of iterations
    extern double potentialEnergies[1000];
    extern double kineticEnergies[1000];
    extern double totalEnergies[1000];
};
#endif