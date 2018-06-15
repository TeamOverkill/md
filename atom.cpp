#include "atom.h"

Atom::Atom() {}
/*
Atom** Atom::create_atoms() {
    Atom **atoms;
    atoms = (Atom**) malloc(base::numOfAtoms * sizeof(Atom*));
    for (int i = 0; i < base::numOfAtoms; i++) {
        atoms[i] = new Atom();
        atoms[i]->pos[0] = (double) rand() / (RAND_MAX) * base::boxDim;
        atoms[i]->pos[1] = (double) rand() / (RAND_MAX) * base::boxDim;
        atoms[i]->pos[2] = (double) rand() / (RAND_MAX) * base::boxDim;

        atoms[i]->vel[0] = (double) rand() / (RAND_MAX);
        atoms[i]->vel[1] = (double) rand() / (RAND_MAX);
        atoms[i]->vel[2] = (double) rand() / (RAND_MAX);

        atoms[i]->oldForce[0] = 0;
        atoms[i]->oldForce[1] = 0;
        atoms[i]->oldForce[2] = 0;

        atoms[i]->force[0] = 0;
        atoms[i]->force[1] = 0;
        atoms[i]->force[2] = 0;

        atoms[i]->mass = 1;
        atoms[i]->radius = 1;
    }
    return atoms;
}
 */

double Atom::distance(Atom* otherAtom){
    Eigen::Vector3d disp = this->pos - otherAtom->pos;
    return disp.norm();
}

double Atom::kinetic_energy(){
    return this->mass * this->vel.dot(this->vel) * 0.5;
}
