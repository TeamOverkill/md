#include <random>
#include "integrators.h"
#include "base.h"
//int Atom::num_of_atoms = 0;
double Base::box_dim = 50;
int Base::num_of_atoms = 15;
int Base::iterations = 100000;
int Frame::num_of_frames = 0;


int main(int argc, char *argv[]){

    double energy;
    int number_of_frames = 500;
    int f_step = Base::iterations/number_of_frames;
    int frame_counter = 0;
    Eigen::Vector2d force;

    Atom **atoms;
    atoms = (Atom**) malloc(Base::num_of_atoms * sizeof(Atom*));
    Frame **frames;
    frames = (Frame**) malloc(number_of_frames * sizeof(Frame*));

    //Initializer
    for(int i = 0; i < Base::num_of_atoms; i++){
        atoms[i] = new Atom();
        atoms[i]->pos[0] = (double)rand() / (RAND_MAX) * Base::box_dim;
        atoms[i]->pos[1] = (double)rand() / (RAND_MAX) * Base::box_dim;
        atoms[i]->pos[2] = (double)rand() / (RAND_MAX) * Base::box_dim;

        atoms[i]->vel[0] = (double)rand() / (RAND_MAX);
        atoms[i]->vel[1] = (double)rand() / (RAND_MAX);
        atoms[i]->vel[2] = (double)rand() / (RAND_MAX);

        atoms[i]->old_force[0] = 0;
        atoms[i]->old_force[1] = 0;
        atoms[i]->old_force[2] = 0;

        atoms[i]->force[0] = 0;
        atoms[i]->force[1] = 0;
        atoms[i]->force[2] = 0;

        atoms[i]->mass = 1;
        atoms[i]->radius = 1;
    }

    for(int i = 0; i < Base::iterations; i++){
        //printf("Iteration %i\n", i);


        integrators::velocityVerlet(atoms);
        if(i % f_step == 0){
            //ss << "#";
            //bar = ss.str();
            //printf("iteration: %i\n", i);
            printf("Done: %lf, iteration %i\r", (double) i/Base::iterations, i);
            fflush(stdout);
            frames[frame_counter] = new Frame();
            frames[frame_counter]->saveCoordinates(atoms);
            frame_counter++;
        }
    }
    Frame::save_to_file(frames);

    for(int i = 0; i < Base::num_of_atoms; i++){
        delete atoms[i];
    }
    free(atoms);
    
    for(int i = 0; i < Frame::num_of_frames; i++){
        delete frames[i];
    }
    free(frames);

    return 0;
}
