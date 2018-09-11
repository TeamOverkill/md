#include "integrators.h"
#include "thermostats.h"
#include "barostats.h"
#include "potentials.h"
#include "frames.h"
#include "base.h"
#include "mdEngine.h"
#include <time.h>
#include "atom.h"
#include "atoms.h"
#include "parser.h"
#include "potentialmanager.h"

int main(int argc, char *argv[]){
    Parser parser;
    parser.parse();
    Base::initialize(parser.numberOfFrames);

    /*!< Initialize atom variables */
    Atoms atoms;
    atoms.initialize(parser.numOfAtoms);
    atoms.remove_overlaps();

    /*!< Initialize Frames */
    Frames frames(parser.numberOfFrames, parser.numOfAtoms, parser.saveFreq);

    time_t start = time(NULL);

    /*!< Create potential manager object */
    PotentialManager<potentials::LJRep, potentials::coulomb> pm;

    /*!< Call run() with the specified integrator and energy function */
    printf("Running simulation\n");
    mdEngine::run(&integrators::velocity_verlet_first, &integrators::velocity_verlet_second, atoms, frames, &pm);

    printf("Simulation took: %lu seconds.\n", time(NULL) - start);

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
