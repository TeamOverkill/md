#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <Eigen/Dense>
#include "constants.h"
#include "ran2_lib.cpp"


class Base{
    /*!
    * This namespace should hold all 'global' variables
    */
public:
    static void initialize();
    static double boxDim;   /*!< Box dimension, currently only cubic boxes */
    static double volume;
    static int numOfAtoms;  /*!< number of atoms */
    static int iterations;  /*!< number of iterations */
    static int outFreq;
    static double tStep;
    static double temperature;
    static double *potentialEnergies;
    static double *kineticEnergies;
    static double *totalEnergies;
    static double *temperatures;
};