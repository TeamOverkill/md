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
    int numberOfFrames = 100;
    int fStep = base::iterations/numberOfFrames;
    int frameCounter = 0;
    Eigen::Vector2d force;

    Atom **atoms;
    atoms = (Atom**) malloc(base::numOfAtoms * sizeof(Atom*));
    Frame **frames;
    frames = (Frame**) malloc(numberOfFrames * sizeof(Frame*));

    //Initializer
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

    mdEngine::run(&integrators::velocity_verlet_first, &integrators::velocity_verlet_second, &energy::LJ::forces, atoms, frames, fStep);

    // for(int i = 0; i < base::iterations; i++){
    //     //printf("Iteration %i\n", i);


    //     integrators::velocity_verlet(atoms, &energy::LJ::forces);
    //     if(i % fStep == 0){
    //         //ss << "#";
    //         //bar = ss.str();
    //         //printf("iteration: %i\n", i);
    //         printf("Done: %lf, iteration %i\r", (double) i/base::iterations, i);
    //         fflush(stdout);
    //         frames[frameCounter] = new Frame();
    //         frames[frameCounter]->save_coordinates(atoms);
    //         frameCounter++;
    //     }
    // }
    Frame::save_to_file(frames);

    // for(int i = 0; i < Base::numOfAtoms; i++){
    //     delete atoms[i];
    // }
    // free(atoms);

    // for(int i = 0; i < Frame::numOfFrames; i++){
    //     delete frames[i];
    // }
    // free(frames);
    printf("Done\n");
    return 0;
}