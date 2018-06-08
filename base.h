#ifndef BASE_H
#define BASE_H
#include <eigen3/Eigen/Dense>
#include "atom.h"
#include "frame.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>

class Base{
    public:
        static double box_dim;
        static int num_of_atoms;
        static int iterations;
};
#endif