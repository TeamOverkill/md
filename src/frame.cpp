#include "frame.h"

Frame::Frame(int numOfAtoms){
    /*
    Frame constructor
    */

    this->state.resize(numOfAtoms);
    for(int i = 0; i < numOfAtoms; i++){
        this->state[i].resize(6);
    }
}


void Frame::save_state(Atoms& atoms){
    for(int i = 0; i < atoms.numOfAtoms; i++){
        this->state[i][0] = atoms[i]->pos[0];
        this->state[i][1] = atoms[i]->pos[1];
        this->state[i][2] = atoms[i]->pos[2];

        this->state[i][3] = atoms[i]->vel[0];
        this->state[i][4] = atoms[i]->vel[1];
        this->state[i][5] = atoms[i]->vel[2];
    }
}
