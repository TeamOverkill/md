#include "base.h"

double Base::boxDim;
double Base::volume;
int Base::iterations;
int Base::outFreq;
int Base::dimensions;
double Base::tStep;
double Base::temperature;
double *Base::potentialEnergies;
double *Base::kineticEnergies;
double *Base::totalEnergies;
double *Base::temperatures;
double Base::lB;
Eigen::Vector3d Base::dimensionality;

/*! Allocates memory for the Base instance.
*/
void Base::initialize(int numberOfSamples){
    Base::kineticEnergies = (double*) malloc(numberOfSamples * sizeof(double));
    Base::potentialEnergies = (double*) malloc(numberOfSamples * sizeof(double));
    Base::totalEnergies = (double*) malloc(numberOfSamples * sizeof(double));
    Base::temperatures = (double*) malloc(Base::iterations * sizeof(double));
    Base::volume = boxDim * boxDim * boxDim;
    Base::lB = constants::E * constants::E / (4.0 * constants::PI * constants::VP * 78.5 * 1e-9);
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