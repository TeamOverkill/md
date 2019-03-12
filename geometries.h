#pragma once

#include <Eigen/Dense>
#include "particle.h"

/// Base class for Geometry
template <class T>
class Geometry{
public:
    Eigen::Vector3d box;
    double volume;

    double dist(const Eigen::Vector3d &a, const Eigen::Vector3d &b){
       return static_cast<T*>(this)->dist(a, b);
    }

    Eigen::Vector3d disp(const Eigen::Vector3d &a, const Eigen::Vector3d &b){
        return static_cast<T*>(this)->disp(a, b);
    }

    void boundary(Eigen::Vector3d &a, Eigen::Vector3d &b){
        static_cast<T*>(this)->boundary(a, b);
    }

    //virtual double dist(const Eigen::Vector3d &a, const Eigen::Vector3d &b) = 0;
    //virtual Eigen::Vector3d disp(const Eigen::Vector3d &a, const Eigen::Vector3d &b) = 0;
    //virtual void boundary(Eigen::Vector3d &pos, Eigen::Vector3d &vel) = 0;
    //virtual void update_distances(Particles& particles) = 0;
    //virtual void volume_move(double dv) = 0;
};



template<bool X, bool Y, bool Z>
class Rectangular : public Geometry< Rectangular<X, Y, Z> >{
public:
    Rectangular(double x, double y, double z){
        this->box << x, y, z;
        this->volume = this->box[0] * this->box[1] * this->box[2];
    }

    double dist(const Eigen::Vector3d &a, const Eigen::Vector3d &b){
        return disp(a, b).norm();
    }

//    void update_distances(Particles& particles){
//        for(int i = 0; i < particles.atoms.numOfAtoms; i++){
//            for(int j = i + 1; j < particles.atoms.numOfAtoms; j++){
//                particles.atoms.distances(i, j) = dist(particles.atoms[i]->pos, particles.atoms[i]->pos);
//            }
//        }
//    }



    Eigen::Vector3d disp(const Eigen::Vector3d &a, const Eigen::Vector3d &b){
        Eigen::Vector3d disp = a - b;
        if(X){
            if(disp[0] > this->box[0] * 0.5){
                disp[0] -= this->box[0];
            }

            if(disp[0] < -this->box[0] * 0.5){
                disp[0] += this->box[0];
            }
        }

        if(Y){
            if(disp[1] > this->box[1] * 0.5){
                disp[1] -= this->box[1];
            }
            
            if(disp[1] < -this->box[1] * 0.5){
                disp[1] += this->box[1];
            }
        }

        if(Z){
            if(disp[2] > this->box[2] * 0.5){
                disp[2] -= this->box[2];
            }
            
            if(disp[2] < -this->box[2] * 0.5){
                disp[2] += this->box[2];
            }
        }

        return disp;
    }



    void boundary(Eigen::Vector3d &pos, Eigen::Vector3d &vel){
        if(X){
            if(pos[0] > this->box[0]){
                pos[0] -= this->box[0];
            }
            else if(pos[0] < 0.0){
                pos[0] += this->box[0];
            }
        }


        else{
            if(pos[0] > this->box[0]){
                vel[0] *= -1.0;
            }
            else if(pos[0] < 0.0){
                vel[0] *= -1.0;
            }
        }


        if(Y){
            if(pos[1] > this->box[1]){
                pos[1] -= this->box[1];
            }
            else if(pos[1] < 0.0){
                pos[1] += this->box[1];
            }
        }


        else{
            if(pos[1] > this->box[1]){
                vel[1] *= -1.0;
            }
            else if(pos[1] < 0.0){
                vel[1] *= -1.0;
            }
        }


        if(Z){
            if(pos[2] > this->box[2]){
                pos[2] -= this->box[2];
            }
            else if(pos[2] < 0.0){
                pos[2] += this->box[2];
            }
        }


        else{
            if(pos[2] > this->box[2]){
                vel[2] *= -1.0;
            }

            else if(pos[2] < 0.0){
                vel[2] *= -1.0;
            }
        }
    }




    void boundary(Particle &particle){

        if(particle.pos[0] > this->box[0]){
            particle.pos[0] -= this->box[0];
        }
        else if(particle.pos[0] < 0.0){
            particle.pos[0] += this->box[0];
        }



        if(particle.pos[1] > this->box[1]){
            particle.pos[1] -= this->box[1];
        }
        else if(particle.pos[1] < 0.0){
            particle.pos[1] += this->box[1];
        }


        if(particle.pos[2] > this->box[2]){
            particle.pos[2] -= this->box[2];
        }
        else if(particle.pos[2] < 0.0){
            particle.pos[2] += this->box[2];
        }

    }
};
