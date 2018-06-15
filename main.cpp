#include <random>
#include "integrators.h"
#include "energy.h"
#include "base.h"
#include "mdEngine.h"
#include <time.h>
#include "ran_uniform.h"


/*!< Simulation variables */
double base::boxDim = 10;
int base::numOfAtoms = 10;
int base::iterations = 1000000;
int base::outFreq = 1000;

/*!< Initialize arrays */
double *base::kineticEnergies = (double*) malloc(base::outFreq * sizeof(double));
double *base::potentialEnergies = (double*) malloc(base::outFreq * sizeof(double));
double *base::totalEnergies = (double*) malloc(base::outFreq * sizeof(double));

Eigen::MatrixXd Atom::forceMatrix;

int main(int argc, char *argv[]){
    InitializeRandomNumberGenerator(time(0l));
    double random = RandomNumber();
    srand( (unsigned)time( NULL ) );
    Frame::initialize(base::outFreq);                /*!< Initialize variables in Frame */

    /*!< Allocate memory to hold atom array: */
    Atom **atoms;
    atoms = (Atom**) malloc(base::numOfAtoms * sizeof(Atom*));

    /*!< Allocate memory to hold array of frames: */
    Frame **frames;
    frames = (Frame**) malloc(base::outFreq * sizeof(Frame*));

    /*!< Initialize atom variables */
    for(int i = 0; i < base::numOfAtoms; i++){
        atoms[i] = new Atom();
        atoms[i]->pos[0] = (double)rand() / (RAND_MAX) * base::boxDim;
        atoms[i]->pos[1] = (double)rand() / (RAND_MAX) * base::boxDim;
        atoms[i]->pos[2] = (double)rand() / (RAND_MAX) * base::boxDim;

        atoms[i]->vel[0] = ((double)rand() / (RAND_MAX) - 0.5) * 2;
        atoms[i]->vel[1] = ((double)rand() / (RAND_MAX) - 0.5) * 2;
        atoms[i]->vel[2] = ((double)rand() / (RAND_MAX) - 0.5) * 2;

        atoms[i]->oldForce[0] = 0;
        atoms[i]->oldForce[1] = 0;
        atoms[i]->oldForce[2] = 0;

        atoms[i]->force[0] = 0;
        atoms[i]->force[1] = 0;
        atoms[i]->force[2] = 0;

        atoms[i]->mass = 1;
        atoms[i]->radius = 1;
    }

    /*!< Initialize the force matrix */
    Atom::forceMatrix.resize(base::numOfAtoms, base::numOfAtoms);

    time_t start = time(NULL);

    /*!< Call run() with the specified integrator and energy function */
    mdEngine::run(&integrators::velocity_verlet_first, &integrators::velocity_verlet_second, &energy::LJ::forces, atoms, frames);
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

    printf("Done\n");
    return 0;
}