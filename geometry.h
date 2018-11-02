#pragma once

#include "base.h"

typedef std::function<double(const Eigen::Vector3d&, const Eigen::Vector3d&)> DistanceFunction;
typedef std::function<Eigen::Vector3d(const Eigen::Vector3d&, const Eigen::Vector3d&)> DisplacementFunction;
typedef std::function<void(const Eigen::Vector3d&, const Eigen::Vector3d&)> CollisionFunction;

class Geometry{
public:
    //
    DistanceFunction dist;
    DisplacementFunction disp;
    CollisionFunction coll;
            //distanceFunc = std::bind( &PBC<X,Y,Z>::vdist, this, _1, _2);
    virtual double get_dist(Eigen::Vector3d &a, Eigen::Vector3d &b) = 0;
    virtual Eigen::Vector3d get_disp(Eigen::Vector3d &a, Eigen::Vector3d &b) = 0;
    virtual void collision(Eigen::Vector3d a);
};

template<bool x, bool y, bool z>
class Box : public Geometry{
    Box() {
        this.dist = std::bind(&PBC<x, y, z>::dist, this, std::placeholders::_1, std::placeholders::_2);
        this.disp = std::bind(&PBC<x, y, z>::disp, this, std::placeholders::_1, std::placeholders::_2);
        this.coll = std::bind(&PBC<x, y, z>::collision, this, std::placeholders::_1, std::placeholders::_2);
    }
};

template<bool x = true, bool y = true, bool z = true>
class PBC : public Box{
    double dist(const Eigen::Vector3d &a, const Eigen::Vector3d &b){
        return disp(a, b).norm();
    }

    Eigen::Vector3d disp(const Eigen::Vector3d &a, const Eigen::Vector3d &b){
        Eigen::Vector3d disp = a - b;
        if(x){

        }
        if(y){

        }
        if(z){

        }

        return disp;
    }

    void collision(Eigen::Vector3d a){

    }
};