#include "atom.h"
#include "atoms.h"
#include "particle.h"
#include "particles.h"
#include "io.h"
#include "integrators.h"
#include "thermostats.h"
//#include "barostats.h"
#include "potentials.h"
#include "frames.h"
#include "base.h"
#include "mdEngine.h"
#include <time.h>
#include <omp.h>
#include "parser.h"
#include "potentialmanager.h"
#include "geometries.h"

typedef PotentialManager<potentials::magnetic> PotMan;

int main(int argc, char *argv[]){
    Parser parser;
    parser.parse();
    Base::initialize(parser.numberOfFrames);

    Particles particles;

    /*!< Read starting configuration from file */
    //IO io;
    //particles = io.read_frame("output_1.gro");

    /*!< Initialize atom variables */
    Atoms atoms;
    atoms.initialize(parser.numOfAtoms);
    atoms.remove_overlaps();

    particles.atoms = atoms;

    /*!< Initialize Frames */
    Frames frames(parser.numberOfFrames, particles.atoms.numOfAtoms, parser.saveFreq);

    /*!< Create Geometry object*/
    Geometry* geometry = new Rectangular<false, false, false>(parser.boxDim, parser.boxDim, parser.boxDim);

    //potentials::ewald::initialize(particles.atoms, geometry);

    printf("Running simulation\n");
    MDEngine<integrators::VelocityVerlet, PotentialManager<potentials::coulomb, potentials::LJRep> > engine(geometry);

    double start_time = omp_get_wtime();
    /*!< Call run() with the specified integrator and energy function */
    engine.run(particles, frames);
    printf("Simulation took: %lf seconds.\n", omp_get_wtime() - start_time);

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
