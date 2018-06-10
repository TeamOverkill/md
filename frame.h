#ifndef FRAME_H
#define FRAME_H

#include "base.h"
#include <vector>

class Frame{
    std::vector<std::vector < double > > coordinates;
    public:
        Frame();
        static int numOfFrames;
        void save_coordinates(Atom **atoms);
        static void save_to_file(Frame **frames);
};

#endif