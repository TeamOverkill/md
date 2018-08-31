#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <Eigen/Dense>
#include "constants.h"
#include "ran2_lib.cpp"

/*! This class contains all parameters set by the user.
*/
class Base{
public:
    static void initialize();
    static double boxDim;   /*!< Box dimension, currently only cubic boxes */
    static double volume;   /*!< Volume of the box */
    static int iterations;  /*!< number of iterations */
    static int outFreq;
    static double tStep;    /*!< Time step in picoseconds */
    static double temperature;
    static double *potentialEnergies;
    static double *kineticEnergies;
    static double *totalEnergies;
    static double *temperatures;
    static Eigen::Vector3d dimensionality;  /*!< A vector which determines the translational degrees of freedom.
                                             * In each time step the position of all atoms is multiplied with this
                                             * vector. If the user specified parameter `dimensions` is set to 2, this
                                             * vector will be [1, 1, 0] and hence will force all atoms to the xy-plane.
                                             */
    static int dimensions;   /*!< Translational degrees of freedom*/
};