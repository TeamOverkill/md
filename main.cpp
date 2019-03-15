#define EIGEN_NO_DEBUG

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
#include "parser.h"
#include "potentialmanager.h"
#include "geometries.h"

typedef Geometry<Rectangular<true, true, true>> Rect;

int main(int argc, char *argv[]){

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
    Parser parser;
    Preprocessor prep;
    std::vector<double> box;
    std::string structureFile;
    std::string paramsFile;


    /// Run preprocessor or simulation?
    if(argc > 1){
        std::cout << argv[0] << " " <<  argv[1] << " " << argc << std::endl;
        if(std::strcmp(argv[1], "prep") == 0){
            printf("Running preprocessor...\n");
            prep.prep_water(std::string(argv[2]));
            exit(1);
        }
        else if(argc > 2){
            structureFile = argv[1];
            paramsFile = argv[2];
        }
        else{
            printf("Too few arguments, need 2...\n");
            exit(1);
        }
    }

    else{
        printf("Too few arguments, need 2...\n");
        exit(1);
    }

    /// Parse config file
    parser.parse();
    Base::initialize(parser.numberOfFrames);

    /// Read initial structure
    std::tie(particles, box) = io.read_frame(structureFile);
    printf("Done reading frame\n");

    /// Get parameters from parameter file
    std::map<std::string, std::map<std::string, std::vector<double> > > params = io.read_par(paramsFile, particles);

    ///Initialize particles and set all parameters
    particles.initialize(params);


    /*!< Initialize Frames */
    Frames frames(parser.numberOfFrames, particles.atoms.numOfAtoms, parser.saveFreq);

    /*!< Create Geometry object*/
    Rect* geometry = new Rectangular<true, true, true>(box[0], box[1], box[2]);

    //potentials::ewald::initialize(particles, geometry);

    /*! Create simulation object */
    MDEngine<integrators::VelocityVerlet, PotentialManager<potentials::Harmonic, potentials::AngularHarmonic,
            potentials::LJ, potentials::Coulomb>, Rect> engine(geometry);

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
