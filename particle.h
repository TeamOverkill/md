#pragma once

class Particle{
public:
    int numOfAtoms;
    std::vector<Atom*> atoms;
    std::vector< std::vector<int> > bonds;

    Particle(){
        numOfAtoms = 0;
    }

    void push_back(Atom* atom){
        atoms.push_back(atom);
        numOfAtoms++;
    }
};