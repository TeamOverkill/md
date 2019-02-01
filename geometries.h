#pragma once

#include <Eigen/Dense>
#include "atom.h"

class Geometry{
public:
    Eigen::Vector3d box;
    double volume;
    virtual double dist(const Eigen::Vector3d &a, const Eigen::Vector3d &b) = 0;
    virtual Eigen::Vector3d disp(const Eigen::Vector3d &a, const Eigen::Vector3d &b) = 0;
    virtual void boundary(Atom* a) = 0;
};

template<bool X, bool Y, bool Z>
class Rectangular : public Geometry{
public:
    Rectangular(double x, double y, double z){
        box << x, y, z;
        volume = box[0] * box[1] * box[2];
    }

    double dist(const Eigen::Vector3d &a, const Eigen::Vector3d &b){
        return disp(a, b).norm();
    }

    Eigen::Vector3d disp(const Eigen::Vector3d &a, const Eigen::Vector3d &b){
        Eigen::Vector3d disp = a - b;
        if(X){
            if(disp[0] > box[0] / 2.0){
                disp[0] -= box[0];
            }
            
            if(disp[0] < -box[0] / 2.0){
                disp[0] += box[0];
            }
        }

        if(Y){
            if(disp[1] > box[1] / 2.0){
                disp[1] -= box[1];
            }
            
            if(disp[1] < -box[1] / 2.0){
                disp[1] += box[1];
            }
        }

        if(Z){
            if(disp[2] > box[2] / 2.0){
                disp[2] -= box[2];
            }
            
            if(disp[2] < -box[2] / 2.0){
                disp[2] += box[2];
            }
        }

        return disp;
    }

    void boundary(Atom* a){
        if(X){
            if(a->pos[0] > box[0] - a->radius){
                a->pos[0] -= box[0];
            }
            else if(a->pos[0] < a->radius){
                a->pos[0] += box[0];
            }

        }
        else{
            if(a->pos[0] > box[0] - a->radius){
                a->vel[0] *= -1;
            }
            else if(a->pos[0] < a->radius){
                a->vel[0] *= -1;
            }
        }


        if(Y){
            if(a->pos[1] > box[1] - a->radius){
                a->pos[1] -= box[1];
            }
            else if(a->pos[1] < a->radius){
                a->pos[1] += box[1];
            }

        }
        else{
            if(a->pos[1] > box[1] - a->radius){
                a->vel[1] *= -1;
            }
            else if(a->pos[1] < a->radius){
                a->vel[1] *= -1;
            }
        }


        if(Z){
            if(a->pos[2] > box[2] - a->radius){
                a->pos[2] -= box[2];
            }
            else if(a->pos[2] < a->radius){
                a->pos[2] += box[2];
            }


        }
        else{
            if(a->pos[2] > box[2] - a->radius){
                a->vel[2] *= -1;
            }

            else if(a->pos[2] < a->radius){
                a->vel[2] *= -1;
            }
        }
    }
};
