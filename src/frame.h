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
        void save_state(Atoms& atoms);              /*!< Save current state in a frame */
        std::vector<std::vector < double > > state; /*!< Matrix which holds the position and velocities of all atoms (state of the system) */
};
/** @}*/
