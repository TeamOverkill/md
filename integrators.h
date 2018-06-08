#ifndef INTEGRATOR_H
#define INTEGRATOR_H

#include "atom.h"
#include "energy.h"
#include "system.h"

namespace integrators{
    void velocityVerlet(Atom **atoms);
}

#endif