#include "atoms.h"

/*! Sets up initial conditions.
*/
void Atoms::initialize(int numOfAtoms){
    int i;
    this->numOfAtoms = 0;

    for(i = 0; i < numOfAtoms; i++) {
        this->atoms.push_back(new Atom());
        this->atoms[i]->index = i;
        this->atoms[i]->mass = 28.0134; //[dalton]
        this->atoms[i]->radius = 1.0;
        if(i % 2 == 0){
            this->atoms[i]->q = 1.0;
        }
        else{
            this->atoms[i]->q = -1.0;
        }

        this->atoms[i]->pos[0] = ran2::get_random() * (Base::boxDim - 1) + 1;
        this->atoms[i]->pos[1] = ran2::get_random() * (Base::boxDim - 1) + 1;
        this->atoms[i]->pos[2] = ran2::get_random() * (Base::boxDim - 1) + 1;

        this->atoms[i]->pos = this->atoms[i]->pos.cwiseProduct(Base::dimensionality);

        /*! Maxwell-Boltzmann velocity distribution*/
        this->atoms[i]->set_mb_velocity();

        /* Set initial forces*/
        this->atoms[i]->oldForce[0] = 0;
        this->atoms[i]->oldForce[1] = 0;
        this->atoms[i]->oldForce[2] = 0;

        this->atoms[i]->force[0] = 0;
        this->atoms[i]->force[1] = 0;
        this->atoms[i]->force[2] = 0;

        this->numOfAtoms++;
    }
    printf("Created %d atoms\n", i);
    /*!< Initialize the distance matrix */
    distances.resize(numOfAtoms, numOfAtoms);
    /*!< Initialize the force matrix */
    forceMatrix.resize(numOfAtoms, numOfAtoms);
}

void Atoms::set_forces_zero(){
    for(int i = 0; i < this->numOfAtoms; i++){
        this->atoms[i]->force.setZero();
    }
}

double Atoms::kinetic_energy(){
    double energy = 0;
    for(int i = 0; i < this->numOfAtoms; i++){
        energy += this->atoms[i]->mass * this->atoms[i]->vel.dot(this->atoms[i]->vel) * 0.5;
    }
    return energy;
}


/*! Updates the triangluar matrix which holds all the distances calculated by distance()
*/
void Atoms::update_distances(){
    int k = 0;
    for(int i = 0; i < numOfAtoms; i++){
        k = i + 1;
        for(int j = i + 1; j < numOfAtoms; j++){
            distances(i, k) = this->atoms[i]->distance(this->atoms[k]);
            k++;
        }
    }
}

int Atoms::get_overlaps(){
    int overlaps = 0;
    for(int i = 0; i < numOfAtoms; i++){
        for(int j = i + 1; j < numOfAtoms; j++){
            if(this->atoms[i]->distance(atoms[j]) < this->atoms[i]->radius + this->atoms[j]->radius){
                overlaps++;
            }
        }
    }
    return overlaps;
}

bool Atoms::overlap(Atom* a){
    for(int i = 0; i < numOfAtoms; i++){
        if(i != a->index) {
            if((a->pos - this->atoms[i]->pos).norm() < a->radius + this->atoms[i]->radius) {
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
        p =  random * this->numOfAtoms;
        oldPos = this->atoms[p]->pos;

        this->atoms[p]->random_move(5);
        //Atom::update_distances(atoms, atoms[p]);
        if(overlap(this->atoms[p])){
            this->atoms[p]->pos = oldPos;
            //Atom::update_distances(atoms, atoms[p]);
        }

        if(this->atoms[p]->pos[2] < 0 || this->atoms[p]->pos[1] < 0 || this->atoms[p]->pos[0] < 0){
            printf("Failed to equilibrate system, a particle was found outside the box...\n");
            std::cout << this->atoms[p]->pos << std::endl;
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


void Atoms::read_frame(std::string fileName, Atoms atoms){
    int c, i = 0, ind, j= 0;
    double xPos, yPos, zPos, xVel, yVel, zVel;
    std::string molecule, atom, line;
    std::ifstream infile(fileName);

    while (std::getline(infile, line)) {
        if(i == 1){
            std::istringstream iss(line);
            if (!(iss >> c)) {
                printf("The second line in the input file should be the total number of atoms!\n");
                exit(1);
            } // error
        }
        if(i > 1){
            std::istringstream iss(line);
            if (!(iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos >> xVel >> yVel >> zVel)) {
                printf("Done reading input file\n");
                break;
                //exit(1);
            }
            this->atoms.push_back(new Atom());
            this->atoms[j]->pos[0] = xPos;
            this->atoms[j]->pos[1] = yPos;
            this->atoms[j]->pos[2] = zPos;

            this->atoms[j]->pos[0] = xVel;
            this->atoms[j]->pos[1] = yVel;
            this->atoms[j]->pos[2] = zVel;

            this->atoms[j]->mass = 28.0134;
            this->atoms[j]->radius = 1.0;

            this->numOfAtoms++;
            j++;
        }
        i++;
    }
    if(c != this->numOfAtoms){
        printf("Did not read all atoms from file....\n");
        exit(1);
    }
}