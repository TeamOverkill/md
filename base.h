#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <Eigen/Dense>
#include "constants.h"
#include "ran2_lib.cpp"


namespace base{
    /*!
    * This namespace should hold all 'global' variables
    */

    extern double boxDim;   /*!< Box dimension, currently only cubic boxes */
    extern double volume;
    extern int numOfAtoms;  /*!< number of atoms */
    extern int iterations;  /*!< number of iterations */
    extern int outFreq;
    extern double tStep;
    extern double temperature;
    extern double *potentialEnergies;
    extern double *kineticEnergies;
    extern double *totalEnergies;
    extern double *temperatures;
};