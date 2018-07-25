#include "integrators.h"
#include "thermostats.h"
#include "energy.h"
#include "frame.h"
#include "base.h"
#include "mdEngine.h"
#include <time.h>
#include "atom.h"
#include "parser.h"

int main(int argc, char *argv[]){
    Parser parser;
    parser.parse();
    Base::initialize();

    //Actually Base::outFreq is the number of frames that should be saved
    Frame::initialize(Base::outFreq);                /*!< Initialize variables in Frame */

    /*!< Allocate memory to hold atom array: */
    Atom **atoms;
    atoms = (Atom**) malloc(Base::numOfAtoms * sizeof(Atom*));

    /*!< Allocate memory to hold array of frames: */
    Frame **frames;
    frames = (Frame**) malloc(Base::outFreq * sizeof(Frame*));

    /*!< Initialize atom variables */
    Atom::initialize(atoms);

    /*!< Initialize the force matrix */
    Atom::forceMatrix.resize(Base::numOfAtoms, Base::numOfAtoms);

    time_t start = time(NULL);

    /*!< Call run() with the specified integrator and energy function */
    printf("Running simulation\n");
    mdEngine::run(&integrators::velocity_verlet_first, &integrators::velocity_verlet_second, &energy::harmonic::forces,
                 atoms, frames);

    printf("Time: %lu\n", time(NULL) - start);
    Frame::save_to_file(frames);                /*!< Save frames to trajectory file */

    //Save stuff, will be moved later
    FILE *f = fopen("energies.txt", "w");
    if(f == NULL){
        printf("Can't open file!\n");
        exit(1);
    }
    for(int j = 0; j < 1000; j++){
        fprintf(f, "%i    %lf    %lf    %lf\n", j, Base::potentialEnergies[j], Base::kineticEnergies[j], Base::totalEnergies[j]);

    }
    fclose(f);

    FILE *fi = fopen("temperatures.txt", "w");
    if(fi == NULL){
        printf("Can't open file!\n");
        exit(1);
    }
    for(int j = 0; j < Base::iterations; j++){
        fprintf(fi, "%i    %lf\n", j, Base::temperatures[j]);

    }
    fclose(fi);
    printf("Done\n");
    return 0;
}