#ifndef INTEGRATOR_H
#define INTEGRATOR_H

#include "energy.h"
#include "base.h"

namespace integrators{
    void velocityVerlet(Atom **atoms);
}

#endif