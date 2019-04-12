#ifndef DEBUG1
#define EIGEN_NO_DEBUG
#endif

#include "atom.h"
#include "atoms.h"
#include "particle.h"
#include "particles.h"
#include "io.h"
#include "integrators.h"
#include "thermostats.h"
#include "preprocessor.h"
//#include "barostats.h"
#include "potentials.h"
#include "frames.h"
#include "base.h"
#include "mdEngine.h"
#include <time.h>
#include <omp.h>
//#include "parser.h"
#include "potentialmanager.h"
#include "geometries.h"

using Rect         = Geometry<Rectangular<true, true, true>>;
using HamB         = PotentialManager<potentials::Harmonic>;
using HamLJ        = PotentialManager<potentials::LJ>;
using HamLJR       = PotentialManager<potentials::LJRep>;
using HamBA        = PotentialManager<potentials::Harmonic, potentials::AngularHarmonic>;
using HamLJC       = PotentialManager<potentials::LJ,       potentials::Coulomb>;
using HamLJRC      = PotentialManager<potentials::LJRep,    potentials::Coulomb>;
using HamBALJ      = PotentialManager<potentials::Harmonic, potentials::AngularHarmonic, potentials::LJ>;
using HamBALJCu    = PotentialManager<potentials::Harmonic, potentials::AngularHarmonic, potentials::LJCutoff>;
using HamBALJC     = PotentialManager<potentials::Harmonic, potentials::AngularHarmonic, potentials::LJ,       potentials::Coulomb>;
using HamBALJCuCCu = PotentialManager<potentials::Harmonic, potentials::AngularHarmonic, potentials::LJCutoff, potentials::CoulombCutoff>;

int main(int argc, char *argv[]){

    #ifdef DEBUG3
        printf("Running in level 3 debug mode.\n");
    #endif

    #ifdef EIGEN_VECTORIZE
        printf("Vectorization is enabled\n");
    #else
        printf("Vectorization is NOT enabled");
    #endif

    #ifdef _OPENMP
        printf("OpenMP is enabled\n");
    #else
        printf("OpenMP is NOT enabled");
    #endif

    ran2::initialize();

    /// Declare variables
    Particles particles;
    IO io;
    //Parser parser;
    Preprocessor prep;
    std::vector<double> box;
    std::string structureFile;
    std::string paramsFile;
    std::string configFile;

    /// Run preprocessor or simulation?
    if(argc > 1){
        std::cout << argv[0] << " " <<  argv[1] << " " << argc << std::endl;
        if(std::strcmp(argv[1], "prep") == 0){
            printf("Running preprocessor...\n");
            prep.prep_water(std::string(argv[2]));
            exit(1);
        }
        else if(argc > 3){
            structureFile = argv[1];
            paramsFile = argv[2];
            configFile = argv[3];
        }
        else{
            printf("Too few arguments, need 3...\n");
            exit(1);
        }
    }

    else{
        printf("Too few arguments, need 3...\n");
        exit(1);
    }

    /// Read config file
    io.read_conf(configFile);

    Base::initialize(io.numberOfFrames);

    /// Read initial structure
    std::tie(particles, box) = io.read_frame(structureFile);
    printf("Done reading frame\n");

    /// Get parameters from parameter file
    std::map<std::string, std::map<std::string, std::vector<double> > > params = io.read_par(paramsFile, particles);

    /*!< Create Geometry object*/
    Rect* geometry = new Rectangular<true, true, true>(box[0], box[1], box[2]);

    ///Initialize particles and set all parameters
    particles.initialize(params);

    /*!< Initialize Frames */
    Frames frames(io.numberOfFrames, particles.atoms.numOfAtoms, io.saveFreq);

    //potentials::ewald::initialize(particles, geometry);

    /*! Create simulation object */
    MDEngine<integrators::VelocityVerlet, HamLJR, Rect> engine(geometry);

    printf("\n\nRunning simulation\n");
    double start_time = omp_get_wtime();
    /*!< Call run() with the specified integrator and energy function */
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
    for(int j = 0; j < Base::temperatures.size(); j++){
        fprintf(fi, "%i    %lf\n", j, Base::temperatures[j]);

    }

    fclose(fi);
    printf("Done\n");
    return 0;
}

