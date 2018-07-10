#include "base.h"

/*!< Initialize arrays */
double *base::kineticEnergies = (double*) malloc(base::outFreq * sizeof(double));
double *base::potentialEnergies = (double*) malloc(base::outFreq * sizeof(double));
double *base::totalEnergies = (double*) malloc(base::outFreq * sizeof(double));
double *base::temperatures = (double*) malloc(base::iterations * sizeof(double));
double base::volume;