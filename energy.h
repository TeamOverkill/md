#ifndef ENERGY_H
#define ENERGY_H

#include "base.h"
#include "atom.h"

namespace energy{
    Eigen::Vector3d forces(Atom **atoms);
}

#endif