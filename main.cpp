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
#include "particle.h"
#include "particles.h"
#include "parser.h"
#include "potentialmanager.h"

int main(int argc, char *argv[]){
    Parser parser;
    parser.parse();
    Base::initialize(parser.numberOfFrames);


    Particles particles;
    //particles->particles.push_back(p1);
    /*!< Initialize atom variables */
    Atoms atoms;
    atoms.initialize(parser.numOfAtoms);


    for(int i = 0; i < atoms.numOfAtoms; i++){
        Particle *p1 = new Particle();
        if(i < 2) {
            if (i > 0 && i < 2) {
                p1->push_back(atoms[i]);
                p1->push_back(atoms[i - 1]);
                p1->bonds.push_back(std::vector<int>());

                //p1->bonds[0].resize(2);
                p1->bonds[i - 1].push_back(i - 1);
                p1->bonds[i - 1].push_back(i);
                printf("%i, %i\n", i - 1, i);
                printf("%i, %i\n", p1->bonds[0][0], p1->bonds[0][1]);
            }
        }
        else {
            p1->push_back(atoms[i]);
        }
        particles.push_back(p1);
    }

    //atoms.remove_overlaps();
    //atoms.read_frame("Untitled_1.gro", atoms);

    /*!< Initialize Frames */
    Frames frames(parser.numberOfFrames, parser.numOfAtoms, parser.saveFreq);

    time_t start = time(NULL);

    /*!< Create potential manager object */
    PotentialManager<potentials::LJ> pm;

    /*!< Call run() with the specified integrator and energy function */
    printf("Running simulation\n");
    mdEngine::run(&integrators::velocity_verlet_first, &integrators::velocity_verlet_second, atoms, particles, frames, &pm);

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
