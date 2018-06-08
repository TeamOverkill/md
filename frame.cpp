#include "frame.h"

Frame::Frame(){
    coordinates.resize(10, 3);
}

// void Frame::saveCoordinates(Atom **atoms){
//     for(int i = 0; i < 10; i++){
//         coordinates(i, 0) = atoms[i]->pos[0];
//         coordinates(i, 1) = atoms[i]->pos[1];
//         coordinates(i, 2) = atoms[i]->pos[2];
//     }

// }