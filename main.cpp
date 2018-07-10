#include "integrators.h"
#include "thermostats.h"
#include "energy.h"
#include "frame.h"
#include "base.h"
#include "mdEngine.h"
#include <time.h>
#include "atom.h"


/*!< Simulation variables */
double base::boxDim = 30;   //nm
int base::numOfAtoms = 100;
int base::iterations = 10000000;
int base::outFreq = 1000;
double base::temperature = 300;
double base::tStep = 0.002;

Eigen::MatrixXd Atom::forceMatrix;

int main(int argc, char *argv[]){
    bool d1 = false;
    base::volume = base::boxDim * base::boxDim * base::boxDim;
    Frame::initialize(base::outFreq);                /*!< Initialize variables in Frame */

    /*!< Allocate memory to hold atom array: */
    Atom **atoms;
    atoms = (Atom**) malloc(base::numOfAtoms * sizeof(Atom*));

    /*!< Allocate memory to hold array of frames: */
    Frame **frames;
    frames = (Frame**) malloc(base::outFreq * sizeof(Frame*));

    /*!< Initialize atom variables */
    Atom::initialize(atoms, d1);

    /*!< Initialize the force matrix */
    Atom::forceMatrix.resize(base::numOfAtoms, base::numOfAtoms);

    time_t start = time(NULL);

    /*!< Call run() with the specified integrator and energy function */
    mdEngine::run(&integrators::velocity_verlet_first, &integrators::velocity_verlet_second, &energy::harmonic::forces,
                 atoms, frames);

    printf("Time: %lu\n", time(NULL) - start);
    Frame::save_to_file(frames);                /*!< Save frames to trajectory file */

    FILE *f = fopen("energies.txt", "w");
    if(f == NULL){
        printf("Can't open file!\n");
        exit(1);
    }
    for(int j = 0; j < 1000; j++){
        fprintf(f, "%i    %lf    %lf    %lf\n", j, base::potentialEnergies[j], base::kineticEnergies[j], base::totalEnergies[j]);

    }
    fclose(f);

    FILE *fi = fopen("temperatures.txt", "w");
    if(fi == NULL){
        printf("Can't open file!\n");
        exit(1);
    }
    for(int j = 0; j < base::iterations; j++){
        fprintf(fi, "%i    %lf\n", j, base::temperatures[j]);

    }
    fclose(fi);
    printf("Done\n");
    return 0;
}