#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <Eigen/Dense>
#include "constants.h"
#include "ran2_lib.cpp"


class Base{
    /*!
    * This class holds all variables set by the user
    */
public:
    static void initialize();
    static double boxDim;   /*!< Box dimension, currently only cubic boxes */
    static double volume;   /*!< Volume of the box */
    static int numOfAtoms;  /*!< number of atoms */
    static int iterations;  /*!< number of iterations */
    static int outFreq;
    static double tStep;    /*!< Time step in picoseconds */
    static double temperature;
    static double *potentialEnergies;
    static double *kineticEnergies;
    static double *totalEnergies;
    static double *temperatures;
    static Eigen::Vector3d dimensionality;
    static int dimensions;
};