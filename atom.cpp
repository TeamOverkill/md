#include "atom.h"
/**
 * \file atom.cpp
 */
Eigen::MatrixXd Atom::distances;
Eigen::MatrixXd Atom::forceMatrix;

/*! Constructor
*/
Atom::Atom() {}

/*! Sets up initial conditions.
*/
void Atom::initialize(Atom** atoms){
    FILE *fi = fopen("velocities.txt", "w");
    Eigen::Vector3d linearMom;
    linearMom.setZero();

    for(int i = 0; i < Base::numOfAtoms; i++) {
        atoms[i] = new Atom();

        atoms[i]->mass = 28.0134; //[dalton]
        atoms[i]->radius = 0.1;

       /* if(d1) {
            atoms[i]->pos[0] = 25;
            atoms[i]->pos[1] = 0;
            atoms[i]->pos[2] = 0;

            atoms[i]->vel[0] = 0.3;
            atoms[i]->vel[1] = 0;
            atoms[i]->vel[2] = 0;
        }

        else {*/
            atoms[i]->pos[0] = ran2::get_random() * Base::boxDim;
            atoms[i]->pos[1] = ran2::get_random() * Base::boxDim;
            atoms[i]->pos[2] = ran2::get_random() * Base::boxDim;

            atoms[i]->pos = atoms[i]->pos.cwiseProduct(Base::dimensionality);

            /*! Maxwell-Boltzmann velocity distribution*/
            double ran_u1 = ran2::get_random();
            double ran_u2 = ran2::get_random();
            double random_gauss = sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
            atoms[i]->vel[0] = random_gauss * sqrt(constants::K_DALTON * Base::temperature / atoms[i]->mass) * 0.001; //[nm/ps]

            ran_u2 = ran2::get_random();
            ran_u1 = ran2::get_random();
            random_gauss = sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
            atoms[i]->vel[1] = random_gauss * sqrt(constants::K_DALTON * Base::temperature / atoms[i]->mass) * 0.001;

            ran_u2 = ran2::get_random();
            ran_u1 = ran2::get_random();
            random_gauss = sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
            atoms[i]->vel[2] = random_gauss * sqrt(constants::K_DALTON * Base::temperature / atoms[i]->mass) * 0.001;

            atoms[i]->vel = atoms[i]->vel.cwiseProduct(Base::dimensionality);

            linearMom += atoms[i]->vel;
        //}
        linearMom /= Base::numOfAtoms;
        //printf("Linear momentum is: %lf\n", linearMom.norm());
        fprintf(fi, "%d    %lf\n", i, atoms[i]->vel.norm());

        /* Set initial forces*/
        atoms[i]->oldForce[0] = 0;
        atoms[i]->oldForce[1] = 0;
        atoms[i]->oldForce[2] = 0;

        atoms[i]->force[0] = 0;
        atoms[i]->force[1] = 0;
        atoms[i]->force[2] = 0;
    }

    distances.resize(Base::numOfAtoms, Base::numOfAtoms);
    fclose(fi);
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

/*! Updates the triangluar matrix which holds all the distances calculated by distance()
*/
void Atom::update_distances(Atom **atoms){
    int k = 0;
    for(int i = 0; i < Base::numOfAtoms; i++){
        k = i + 1;
        for(int j = i + 1; j < Base::numOfAtoms; j++){
            Atom::distances(i, k) = atoms[i]->distance(atoms[k]);
            k++;
        }
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
    if(this->pos[1] >= Base::boxDim){
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
        this->vel[0] -= Base::boxDim;
    }
    if(this->pos[0] < 0){ ;
        this->vel[0] += Base::boxDim;
    }
    if(this->pos[1] > Base::boxDim){
        this->vel[1] -= Base::boxDim;
    }
    if(this->pos[1] < 0){
        this->vel[1] += Base::boxDim;
    }
    if(this->pos[2] > Base::boxDim){
        this->vel[2] -= Base::boxDim;
    }
    if(this->pos[2] < 0){
        this->vel[2] -= Base::boxDim;
    }
}
