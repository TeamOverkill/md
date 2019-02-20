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
    IO io;
    particles = io.read_frame("output_1.gro");

    /// Get parameters from parameter file
    std::map<std::string, std::map<std::string, std::vector<double> > > params = io.read_par("params.par", particles);

    ///Initialize particles and set all parameters
    particles.initialize(params);

    /*!< Initialize atom variables, remove soon. Is not used */
    /*Atoms atoms;
    atoms.initialize(parser.numOfAtoms);
    atoms.remove_overlaps();

    std::vector< std::vector<int> > bonds;

    for(int i = 0; i < atoms.numOfAtoms; i++){
        Particle *p1 = new Particle();
        p1->push_back(atoms[i]);
        atoms[i]->particle = i;
        particles.push_back(p1);
    }

    particles.atoms = atoms;*/

    /*!< Initialize Frames */
    Frames frames(parser.numberOfFrames, particles.atoms.numOfAtoms, parser.saveFreq);

    /*!< Create Geometry object*/
    Geometry* geometry = new Rectangular<true, true, true>(parser.boxDim, parser.boxDim, parser.boxDim);

    potentials::ewald::initialize(particles, geometry);

    MDEngine<integrators::VelocityVerlet, PotentialManager<potentials::harmonic, potentials::angular_harmonic, potentials::LJ> > engine(geometry);
    //MDEngine<integrators::VelocityVerlet, PotentialManager<potentials::ewald, potentials::LJRep> > engine(geometry);

    /*!< Call run() with the specified integrator and energy function */
    printf("Running simulation\n");

    double start_time = omp_get_wtime();
    engine.run(particles, frames);
    printf("Simulation took: %lf seconds.\n", omp_get_wtime() - start_time);







    ///////////////////            Save stuff, will be moved later plz move!       /////////////////////////
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
