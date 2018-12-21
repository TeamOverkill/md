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

    /*!< Initialize atom variables */
    Atoms atoms;
    atoms.initialize(parser.numOfAtoms);
    atoms.remove_overlaps();

    std::vector< std::vector<int> > bonds;
    //particles.initialize(atoms, bonds);

    for(int i = 0; i < atoms.numOfAtoms; i++){
        Particle *p1 = new Particle();
        /*p1->bonds.push_back(std::vector<int>());
        //p1->bonds[i].resize(2);

        p1->push_back(atoms[i]);
        p1->push_back(atoms[i + 1]);

        p1->bonds[0].push_back(0);
        p1->bonds[0].push_back(1);

        printf("bonds %d %d\n", p1->bonds[0][0], p1->bonds[0][1]);
        i++;*/

        particles.push_back(p1);
    }

    particles.atoms = atoms;
    /*Particle *p1 = new Particle();
    p1->push_back(atoms[0]);
    p1->push_back(atoms[1]);
    p1->bonds.push_back(std::vector<int>());
    p1->bonds[0].push_back(0);
    p1->bonds[0].push_back(1);

    Particle *p2 = new Particle();
    p2->push_back(atoms[2]);
    p2->push_back(atoms[3]);
    p2->bonds.push_back(std::vector<int>());
    p2->bonds[0].push_back(0);
    p2->bonds[0].push_back(1);


    particles.push_back(p1);
    particles.push_back(p2);*/

    //IO io;
    //particles = io.read_frames("output_1.gro");
    //particles = atoms.read_frame("output_1.gro");

    /*!< Initialize Frames */
    Frames frames(parser.numberOfFrames, atoms.numOfAtoms, parser.saveFreq);

    /*!< Create Geometry object*/
    Geometry* geometry = new Rectangular<false, false, false>(parser.boxDim, parser.boxDim, parser.boxDim);

    //potentials::ewald::initialize(atoms, geometry);

    /*!< Call run() with the specified integrator and energy function */
    printf("Running simulation\n");
    MDEngine<integrators::VelocityVerlet, PotentialManager<potentials::harmonic> > engine(geometry);
    double start_time = omp_get_wtime();
    engine.run(particles, frames);
    printf("Simulation took: %lf seconds.\n", omp_get_wtime() - start_time);
    //printf("Simulation took: %lu seconds.\n", time(NULL) - start);

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
