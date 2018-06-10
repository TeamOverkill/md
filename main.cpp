#include <random>
#include "integrators.h"
#include "energy.h"
#include "base.h"
#include "mdEngine.h"
//int Atom::num_of_atoms = 0;
double base::boxDim = 50;
int base::numOfAtoms = 15;
int base::iterations = 100000;
int Frame::numOfFrames = 0;


int main(int argc, char *argv[]){

    double energy;
    int numberOfFrames = 100;                       //Number of frames to be printed in the resulting trajectory file
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

        atoms[i]->vel[0] = (double)rand() / (RAND_MAX);
        atoms[i]->vel[1] = (double)rand() / (RAND_MAX);
        atoms[i]->vel[2] = (double)rand() / (RAND_MAX);

        atoms[i]->oldForce[0] = 0;
        atoms[i]->oldForce[1] = 0;
        atoms[i]->oldForce[2] = 0;

        atoms[i]->force[0] = 0;
        atoms[i]->force[1] = 0;
        atoms[i]->force[2] = 0;

        atoms[i]->mass = 1;
        atoms[i]->radius = 1;
    }
    //Call run() with the specified integrator and energy function
    mdEngine::run(&integrators::velocity_verlet_first, &integrators::velocity_verlet_second, &energy::LJ::forces, atoms, frames, fStep);

    Frame::save_to_file(frames);                //Save frames to trajectory file

    printf("Done\n");
    return 0;
}