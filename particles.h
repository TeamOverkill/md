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
        particles.push_back(particle);
        numOfParticles++;
    }
/*
    static Particles initialize(Atoms atoms, std::vector< std::vector<int> > bonds){
        Particles particles;
        for(int i = 0; i < atoms.numOfAtoms; i++){
            Particle *p1 = new Particle();

       if(i < 2) {
            if (i > 0 && i < 2) {
                p1->push_back(atoms[i]);
                p1->push_back(atoms[i - 1]);
                p1->bonds.push_back(std::vector<int>());

                //p1->bonds[0].resize(2);
                p1->bonds[i - 1].push_back(i - 1);
                p1->bonds[i - 1].push_back(i);
            }
        }
        else {
            p1->push_back(atoms[i]);
            }
            particles.push_back(p1);
        }
    }*/
};