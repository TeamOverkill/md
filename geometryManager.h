#pragma once

#include "base.h"

template <class shape, class boundary>
class GeometryManager{

public:

    double distance(Eigen::Vector3d &a, Eigen::Vector3d &b){
        return shape::dist(a, b);
    }
};