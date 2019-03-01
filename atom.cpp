#include "atom.h"
/**
 * \file atom.cpp
 */

/*! Constructor
*/
Atom::Atom() {
    this-> q = 0;
    this->radius = 1.0;
    this->mass = 1.0;
}

void Atom::set_mb_velocity(){
    double ran_u1 = ran2::get_random();
    double ran_u2 = ran2::get_random();
    double random_gauss = sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
    this->vel[0] = random_gauss * sqrt(constants::K_CORRECT * Base::temperature / this->mass); //[nm/ps]

    ran_u2 = ran2::get_random();
    ran_u1 = ran2::get_random();
    random_gauss = sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
    this->vel[1] = random_gauss * sqrt(constants::K_CORRECT * Base::temperature / this->mass);
    ran_u2 = ran2::get_random();
    ran_u1 = ran2::get_random();
    random_gauss = sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
    this->vel[2] = random_gauss * sqrt(constants::K_CORRECT * Base::temperature / this->mass);

    this->vel = this->vel.cwiseProduct(Base::dimensionality);

    //this->vel.setZero();
}

/*! Calculates the direct distance between two atoms:
\f[ r_{ij}=\sqrt{(x_i-x_j)^2 + (y_i-y_j)^2 + (z_i-z_j)^2}
\f]
*/
double Atom::distance(Atom* otherAtom){
    Eigen::Vector3d disp = this->pos - otherAtom->pos;
    return disp.norm();
}

/*! Calculates the distance between two atoms using the minimum image convention:
*/
double Atom::distance_pbc(Atom *otherAtom){
    Eigen::Vector3d disp;
    disp = otherAtom->pos - this->pos;

    if(disp[0] < -1 * Base::boxDim/2){
        disp[0] += Base::boxDim;
    }
    if(disp[0] > Base::boxDim/2){
        disp[0] -= Base::boxDim;
    }
    if(disp[1] < -1 * Base::boxDim/2){
        disp[1] += Base::boxDim;
    }
    if(disp[1] > Base::boxDim/2){
        disp[1] -= Base::boxDim;
    }
    if(disp[2] < -1 * Base::boxDim/2){
        disp[2] += Base::boxDim;
    }
    if(disp[2] > Base::boxDim/2){
        disp[2] -= Base::boxDim;
    }
    return disp.norm();
}

/*! Calculates the kinetic energy of an atom:
\f[ K = \frac{m * |v|}{2} = \frac{m * \sqrt{v_x^2 + v_y^2 + v_z^2}}{2}^2
\f]
*/
double Atom::kinetic_energy(){
    return this->mass * this->vel.dot(this->vel) * 0.5;
}


/*!
* Moves a particle according to periodic boundary conditions:
\code{.cpp}
    if(xCoordinate > boxDimension){
        xCoordinate -= boxDimension;
    }
    if(xCoordinate < 0){ ;
        xCoordinate += boxDimension;
    }
    if(yCoordinate > boxDimension){
        yCoordinate -= boxDimension;
    }
    if(yCoordinate < 0){
        yCoordinate += boxDimension;
    }
    if(zCoordinate > boxDimension){
        zCoordinate -= boxDimension;
    }
    if(zCoordinate < 0){
        zCoordinate -= boxDimension;
    }
\endcode
*/
void Atom::pbc(){
    if(this->pos[0] > Base::boxDim){
        this->pos[0] -= Base::boxDim;
    }
    if(this->pos[0] < 0){ ;
        this->pos[0] += Base::boxDim;
    }
    if(this->pos[1] > Base::boxDim){
        this->pos[1] -= Base::boxDim;
    }
    if(this->pos[1] < 0){
        this->pos[1] += Base::boxDim;
    }
    if(this->pos[2] > Base::boxDim){
        this->pos[2] -= Base::boxDim;
    }
    if(this->pos[2] < 0){
        this->pos[2] += Base::boxDim;
    }
}

/*!
* Checks for wall collisions and uses perfect elastic collision.
*/
void Atom::hard_walls(){
    if(this->pos[0] >= Base::boxDim - this->radius){    /*! If atom is touching or outside the wall in the x-dimension*/
        this->vel[0] *= -1;                             /*! Reverse velocity in the x-dimension*/
    }
    if(this->pos[0] <= this->radius){ ;
        this->vel[0] *= -1;
    }
    if(this->pos[1] >= Base::boxDim - this->radius){
        this->vel[1] *= -1;
    }
    if(this->pos[1] <= this->radius){
        this->vel[1] *= -1;
    }
    if(this->pos[2] >= Base::boxDim - this->radius){
        this->vel[2] *= -1;
    }
    if(this->pos[2] <= this->radius){
        this->vel[2] *= -1;
    }
}

Eigen::Vector3d Atom::get_disp(Atom *otherAtom){
    Eigen::Vector3d disp;
    disp = otherAtom->pos - this->pos;

    if(disp[0] < -1 * Base::boxDim/2){
        disp[0] += Base::boxDim;
    }
    if(disp[0] > Base::boxDim/2){
        disp[0] -= Base::boxDim;
    }
    if(disp[1] < -1 * Base::boxDim/2){
        disp[1] += Base::boxDim;
    }
    if(disp[1] > Base::boxDim/2){
        disp[1] -= Base::boxDim;
    }
    if(disp[2] < -1 * Base::boxDim/2){
        disp[2] += Base::boxDim;
    }
    if(disp[2] > Base::boxDim/2){
        disp[2] -= Base::boxDim;
    }
    return disp;
}

void Atom::random_move(double stepSize){
    this->pos[0] += (ran2::get_random() * 2.0 - 1.0) * stepSize;
    this->pos[1] += (ran2::get_random() * 2.0 - 1.0) * stepSize;
    this->pos[2] += (ran2::get_random() * 2.0 - 1.0) * stepSize;
    this->pos = this->pos.cwiseProduct(Base::dimensionality);
    //this->pbc();
}

