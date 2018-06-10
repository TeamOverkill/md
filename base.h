#ifndef BASE_H
#define BASE_H
#include <eigen3/Eigen/Dense>
#include "atom.h"
#include "frame.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>

namespace base{
    extern double boxDim;
    extern int numOfAtoms;
    extern int iterations;
};
#endif