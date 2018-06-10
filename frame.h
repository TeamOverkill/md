#ifndef FRAME_H
#define FRAME_H

#include "base.h"
#include <vector>

class Frame{
    /*
    Frame object which contains positions and velocities
    */

    std::vector<std::vector < double > > state;
    public:
        Frame();                                    //Constructor
        static int numOfFrames;                     //holds the total number of objects (frames) created
        void save_state(Atom **atoms);              //Saves the current state
        static void save_to_file(Frame **frames);   //Writes all frames to a file
};

#endif