#ifndef FRAME_H
#define FRAME_H

#include "base.h"
#include <vector>

class Frame{
    /*
    Frame object which contains positions and velocities
    */
    private:
        std::vector<std::vector < double > > state;
        static int frameCounter;

    public:
        Frame();                                    //Constructor
        static int fStep;                           //Save frame every fStep
        void save_state(Atom **atoms);              //Saves the current state
        static void save_to_file(Frame **frames);   //Writes all frames to a file
        static void initialize(int numberOfFrames);
};

#endif