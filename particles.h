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
};