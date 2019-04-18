#include "base.h"

double Base::boxDim;
int Base::iterations;
int Base::outFreq;
int Base::dimensions;
int Base::simple;
double Base::tStep;
double Base::temperature;
double *Base::potentialEnergies;
double *Base::kineticEnergies;
double *Base::totalEnergies;
std::vector<double> Base::temperatures;
Eigen::Vector3d Base::dimensionality;
std::string Base::outputFileName;

/*! Allocates memory for the Base instance.
*/
void Base::initialize(int numberOfSamples){
    Base::kineticEnergies = (double*) malloc(numberOfSamples * sizeof(double));
    Base::potentialEnergies = (double*) malloc(numberOfSamples * sizeof(double));
    Base::totalEnergies = (double*) malloc(numberOfSamples * sizeof(double));
    Base::temperatures.reserve(Base::iterations);

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