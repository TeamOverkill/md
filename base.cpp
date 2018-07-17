#include "base.h"
double Base::boxDim;   /*!< Box dimension, currently only cubic boxes */
double Base::volume;
int Base::numOfAtoms;  /*!< number of atoms */
int Base::iterations;  /*!< number of iterations */
int Base::outFreq;
double Base::tStep;
double Base::temperature;
double *Base::potentialEnergies;
double *Base::kineticEnergies;
double *Base::totalEnergies;
double *Base::temperatures;

/*!< Initialize arrays */
void Base::initialize(){
    Base::kineticEnergies = (double*) malloc(Base::outFreq * sizeof(double));
    Base::potentialEnergies = (double*) malloc(Base::outFreq * sizeof(double));
    Base::totalEnergies = (double*) malloc(Base::outFreq * sizeof(double));
    Base::temperatures = (double*) malloc(Base::iterations * sizeof(double));
    Base::volume = boxDim * boxDim * boxDim;
}