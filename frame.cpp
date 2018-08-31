#include "frame.h"
int Frame::fStep;
int Frame::frameCounter;
int Frame::totalFrames;

Frame::Frame(int numOfAtoms){
    /*
    Constructor
    */

    std::vector<std::vector < double > > temp(numOfAtoms);
    for(int i = 0; i < numOfAtoms; i++){
        temp[i].resize(6);
    }
    state = temp;
    frameCounter++;      //Increase frame count
    totalFrames++;
}


void Frame::initialize(int numberOfFrames){
    totalFrames = 0;
    frameCounter = 0; //Counter which holds the number of frames created
    fStep = Base::iterations/numberOfFrames;    //Save frame to trajectory every fStep iteration
}


void Frame::save_state(Atoms& atoms){
    for(int i = 0; i < atoms.numOfAtoms; i++){
        state[i][0] = atoms[i]->pos[0];
        state[i][1] = atoms[i]->pos[1];
        state[i][2] = atoms[i]->pos[2];

        state[i][3] = atoms[i]->vel[0];
        state[i][4] = atoms[i]->vel[1];
        state[i][5] = atoms[i]->vel[2];
    }

}


void Frame::save_to_file(Frame **frames, int numOfAtoms){
    int i = 0;
    FILE *f = fopen("output.gro", "a");

    if(f == NULL){
        printf("Can't open file!\n");
        exit(1);
    }

    for(int j = 0; j < Frame::frameCounter; j++){
        fprintf(f, "Generated by Slaymulator, t=%i\n", totalFrames - (10 - j));
        fprintf(f, "%d\n", numOfAtoms);
        for(i = 0; i < numOfAtoms; i++){
            fprintf(f, "%5d%-5s%5s%5d%8.3f%8.3f%8.3f%8.4f%8.4f%8.4f\n", 1, "ion", "asd", i + 1, frames[j]->state[i][0], frames[j]->state[i][1], frames[j]->state[i][2], \
            frames[j]->state[i][3], frames[j]->state[i][4], frames[j]->state[i][5]);
        }
        fprintf(f, "%lf    %lf     %lf\n", Base::boxDim, Base::boxDim, Base::boxDim);
    }
    fclose(f);
}
