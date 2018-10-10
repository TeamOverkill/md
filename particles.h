#pragma once

#include "particle.h"

class Particles{
private:


public:
    int numOfParticles;
    std::vector<Particle*> particles;

    Particle* operator[](int i){
        return particles[i];
    }

    Particles(){
        numOfParticles = 0;
    }

    void push_back(Particle *particle){
        particles.push_back(particle);
        numOfParticles++;
    }
};