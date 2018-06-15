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
/*
void Atom::equilibrate(Atom **atoms){
    int overlaps = 0;
    double diameter2 = pow(atoms[0]->radius, 2);
    Eigen::Vector3d oldPos;
    double random;
    double stepSize = 5;
    int p;

    for(int i = 0; i < base::numOfAtoms; i++){
        for(int j = i + 1; j < base::numOfAtoms; j++){
            if(atoms[i]->distance(atoms[j]) < atoms[i]->radius + atoms[j]->radius){
                overlaps++;
            }
        }
    }

    //Move particles to prevent overlap
    while(overlaps > 0){
        random = (double)rand() / (RAND_MAX) * Atom::numOfAtoms;
        p =  random * base::numOfAtoms;
        oldPos = atoms[p]->pos;
        //atoms[p]->random_move(5);
        for(int i = 0; i < base::numOfAtoms; i++){
            if(!atoms[p]->distance(atoms[i])) || atoms[p]->pos[0] < atoms[p]->radius ||
                                                 atoms[p]->pos[0] > base::boxDim - atoms[p]->radius ||
                                                 atoms[p]->pos[1] < atoms[p]->radius ||
                                                 atoms[p]->pos[1] > base::boxDim - atoms[p]->radius ||
                                                 atoms[p]->pos[2] < atoms[p]->radius ||
                                                 atoms[p]->pos[2] > base::boxDim - atoms[p]->radius){
                atoms[p]->pos = oldPos;
            }
            else{
                overlaps--;
            }
        }
    }
}
 */
