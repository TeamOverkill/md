#pragma once

#include "base.h"
#include <vector>
#include "atom.h"

/*!
 *  \addtogroup Frame
 *  @{
 */
class Frame{
    /*
    * Frame class
    */

    public:
        Frame();
        static int fStep;                           /*!< Save a frame each fStep iteration */
        void save_state(Atom **atoms);              /*!< Save current state in a frame */
        static void save_to_file(Frame **frames);   /*!< Write all frames to a file */
        static void initialize(int numberOfFrames); /*!< Initialize the frames */

    private:
        std::vector<std::vector < double > > state;
        static int frameCounter;
};
/** @}*/