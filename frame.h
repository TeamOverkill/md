#pragma once

#include "base.h"
#include <vector>
#include "atoms.h"

/*!
 *  \addtogroup Frame
 *  @{
 */

 /*!
  * An instance of the Frame class is created at each interval specified by the variable fStep.
  * In each instance the phase space coordinate at the current time step is saved. All frames
  * are then saved to a file which can be displayed as a trajectory in some visualization software.
 */
class Frame{
    /*
    * Frame class
    */

    public:
        Frame(int numOfAtoms);
        static int fStep;                           /*!< Save a frame each fStep iteration */
        void save_state(Atoms& atoms);              /*!< Save current state in a frame */
        static void save_to_file(Frame **frames, int numOfAtoms);   /*!< Write all frames to a file */
        static void initialize(int numberOfFrames); /*!< Initialize the frames */
        static int totalFrames;
        static int frameCounter;                    /*!< Counts the number of frames */

    private:
        std::vector<std::vector < double > > state; /*!< Matrix which holds the position and velocities of all atoms (state of the system) */
};
/** @}*/
