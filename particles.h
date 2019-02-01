#pragma once

#include "particle.h"
#include "atoms.h"

class Particles{
private:


public:
    int numOfParticles;
    std::vector<Particle*> particles;
    Atoms atoms;

    Particle* operator[](int i){
        return particles[i];
    }

    Particles(){
        numOfParticles = 0;
    }

    void push_back(Particle *particle){
        this->particles.push_back(particle);
        this->numOfParticles++;
    }

    void initialize(){

        //Find atoms separated by 3 or more bonds
        for(int i = 0; i < this->numOfParticles; i++){
            this->particles[i]->find_far_neighbours();
            printf("particle %d contains %d atoms\n", i, this->particles[i]->numOfAtoms);
        }
    }
};