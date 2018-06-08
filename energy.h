#ifndef ENERGY_H
#define ENERGY_H

#include "base.h"
#include "atom.h"

namespace energy{
    Eigen::Vector3d forces(Atom **atoms);
    Eigen::Vector3d forces_LJ(Atom **atoms);
}

#endif