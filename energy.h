#ifndef ENERGY_H
#define ENERGY_H

#include "system.h"
#include "atom.h"

namespace energy{
    Eigen::Vector2d forces(Atom **atoms);
}

#endif