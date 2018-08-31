#include "atoms.h"

/*! Sets up initial conditions.
*/
void Atoms::initialize(int numOfAtoms){
    this->numOfAtoms = numOfAtoms;

    for(int i = 0; i < numOfAtoms; i++) {
        atoms.push_back(new Atom());
        atoms[i]->index = i;
        atoms[i]->mass = 28.0134; //[dalton]
        atoms[i]->radius = 1.0;

        atoms[i]->pos[0] = ran2::get_random() * Base::boxDim;
        atoms[i]->pos[1] = ran2::get_random() * Base::boxDim;
        atoms[i]->pos[2] = ran2::get_random() * Base::boxDim;

        atoms[i]->pos = atoms[i]->pos.cwiseProduct(Base::dimensionality);

        /*! Maxwell-Boltzmann velocity distribution*/
        atoms[i]->set_mb_velocity();

        /* Set initial forces*/
        atoms[i]->oldForce[0] = 0;
        atoms[i]->oldForce[1] = 0;
        atoms[i]->oldForce[2] = 0;

        atoms[i]->force[0] = 0;
        atoms[i]->force[1] = 0;
        atoms[i]->force[2] = 0;
    }

    /*!< Initialize the distance matrix */
    distances.resize(numOfAtoms, numOfAtoms);
    /*!< Initialize the force matrix */
    forceMatrix.resize(numOfAtoms, numOfAtoms);
}


/*! Updates the triangluar matrix which holds all the distances calculated by distance()
*/
void Atoms::update_distances(){
    int k = 0;
    for(int i = 0; i < numOfAtoms; i++){
        k = i + 1;
        for(int j = i + 1; j < numOfAtoms; j++){
            distances(i, k) = atoms[i]->distance(atoms[k]);
            k++;
        }
    }
}

int Atoms::get_overlaps(){
    int overlaps = 0;
    for(int i = 0; i < numOfAtoms; i++){
        for(int j = i + 1; j < numOfAtoms; j++){
            if(atoms[i]->distance(atoms[j]) < atoms[i]->radius + atoms[j]->radius){
                overlaps++;
            }
        }
    }
    return overlaps;
}

bool Atoms::overlap(Atom* a){
    for(int i = 0; i < numOfAtoms; i++){
        if(i != a->index) {
            if((a->pos - atoms[i]->pos).norm()< a->radius + atoms[i]->radius) {
                return true;
            }
        }
    }

    return false;
}

void Atoms::remove_overlaps(){
    int overlaps = get_overlaps();
    int i = 0;

    Eigen::Vector3d oldPos;
    double random;
    int p;

    //Move particles to prevent overlap
    printf("Removing overlaps\n");
    while(overlaps > 0){
        random = ran2::get_random();
        p =  random * numOfAtoms;
        oldPos = atoms[p]->pos;

        atoms[p]->random_move(5);
        //Atom::update_distances(atoms, atoms[p]);
        if(overlap(atoms[p])){
            atoms[p]->pos = oldPos;
            //Atom::update_distances(atoms, atoms[p]);
        }

        if(atoms[p]->pos[2] < 0 || atoms[p]->pos[1] < 0 || atoms[p]->pos[0] < 0){
            printf("Failed to equilibrate system, a particle was found outside the box...\n");
            exit(1);
        }

        if(i % 50000 == 0){
            overlaps = get_overlaps();
            printf("Remaining overlaps: %d, iteration: %d\r", overlaps, i);
            fflush(stdout);
        }
        i++;
    }
    printf("\n\033[32mEquilibration done\033[30m\n\n");
}