#pragma once

#include <Eigen/Dense>
#include "atom.h"

class Geometry{
public:
    Eigen::Vector3d box;
    virtual double dist(const Eigen::Vector3d &a, const Eigen::Vector3d &b) = 0;
};

template<bool x, bool y, bool z>
class Rectangular : public Geometry{
public:
    Rectangular(){
        box << 10, 10, 10;
    }

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

    void collision(Atom &a){
        if(x){
            if(a.pos[0] > box[0] - a.radius){
                a.vel[0] *= -1;
            }
            else if(a.pos[0] < a.radius){
                a.vel[0] *= -1;
            }
        }
        else{
            if(a.pos[0] > box[0] - a.radius){
                a.pos[0] -= -box[0];
            }
            else if(a.pos[0] < a.radius){
                a.pos[0] += box[0];
            }
        }


        if(y){
            if(a.pos[1] > box[1] - a.radius){
                a.vel[1] *= -1;
            }
            else if(a.pos[1] < a.radius){
                a.vel[1] *= -1;
            }
        }
        else{
            if(a.pos[1] > box[1] - a.radius){
                a.pos[1] -= -box[1];
            }
            else if(a.pos[1] < a.radius){
                a.pos[1] += box[1];
            }
        }


        if(z){
            if(a.pos[2] > box[2] - a.radius){
                a.vel[2] *= -1;
            }
            else if(a.pos[2] < a.radius){
                a.vel[2] *= -1;
            }
        }
        else{
            if(a.pos[2] > box[2] - a.radius){
                a.pos[2] -= -box[2];
            }
            else if(a.pos[2] < a.radius){
                a.pos[2] += box[2];
            }
        }
    }
};