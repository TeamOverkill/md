#ifndef FRAME_H
#define FRAME_H

#include "atom.h"
#include "base.h"

class Frame{
    Eigen::MatrixXf coordinates;
    public:
        Frame();
        //void saveCoordinates(Atom **atoms);
};

#endif