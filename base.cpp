#include "base.h"

double Base::boxDim;   /*!< Box dimension, currently only cubic boxes */
double Base::volume;
int Base::numOfAtoms;  /*!< number of atoms */
int Base::iterations;  /*!< number of iterations */
int Base::outFreq;
int Base::dimensions;        /*! Degrees of freedom*/
double Base::tStep;
double Base::temperature;
double *Base::potentialEnergies;
double *Base::kineticEnergies;
double *Base::totalEnergies;
double *Base::temperatures;
Eigen::Vector3d Base::dimensionality;

/*!< Initialize arrays */
void Base::initialize(){
    Base::kineticEnergies = (double*) malloc(Base::outFreq * sizeof(double));
    Base::potentialEnergies = (double*) malloc(Base::outFreq * sizeof(double));
    Base::totalEnergies = (double*) malloc(Base::outFreq * sizeof(double));
    Base::temperatures = (double*) malloc(Base::iterations * sizeof(double));
    Base::volume = boxDim * boxDim * boxDim;

    if(dimensions == 1){
        Base::dimensionality << 1, 0, 0;
    }
    if(dimensions == 2){
        Base::dimensionality << 1, 1, 0;
    }
    if(dimensions == 3){
        Base::dimensionality << 1, 1, 1;
    }
}