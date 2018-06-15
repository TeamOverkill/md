#include <random>
#include "integrators.h"
#include "energy.h"
#include "base.h"
#include "mdEngine.h"
#include <ctime>

//int Atom::num_of_atoms = 0;
double base::boxDim = 50;
int base::numOfAtoms = 15;
int base::iterations = 10000000;
double base::kineticEnergies[10000];
double base::potentialEnergies[10000];
double base::totalEnergies[10000];

int Frame::numOfFrames = 0;
Eigen::MatrixXd Atom::forceMatrix;

int main(int argc, char *argv[]){

    double energy;
    int numberOfFrames = 10000;                       //Number of frames to be printed in the resulting trajectory file
    int fStep = base::iterations/numberOfFrames;    //Save frame to trajectory every fStep iteration

    //Allocate memory to hold atom array:
    Atom **atoms;
    atoms = (Atom**) malloc(base::numOfAtoms * sizeof(Atom*));

    //Allocate memory to hold array of frames:
    Frame **frames;
    frames = (Frame**) malloc(numberOfFrames * sizeof(Frame*));

    //Initialize atom variables
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

    Atom::forceMatrix.resize(base::numOfAtoms, base::numOfAtoms);

    //Call run() with the specified integrator and energy function
    time_t start = time(NULL);

    mdEngine::run(&integrators::velocity_verlet_first, &integrators::velocity_verlet_second, &energy::LJ::forces, atoms, frames, fStep);
    printf("Time: %lu\n", time(NULL) - start);
    Frame::save_to_file(frames);                //Save frames to trajectory file

    FILE *f = fopen("energies.txt", "w");
    if(f == NULL){
        printf("Can't open file!\n");
        exit(1);
    }
    for(int j = 0; j < 10000; j++){
        fprintf(f, "%i    %lf    %lf    %lf\n", j * 10000, base::potentialEnergies[j], base::kineticEnergies[j], base::totalEnergies[j]);

    }
    fclose(f);

    printf("Done\n");
    return 0;
}