#pragma once

#include "particle.h"
#include "atoms.h"
#include <map>

class Particles{
private:


public:
    int numOfParticles;
    std::vector<Particle*> particles;
    Atoms atoms;
    std::map<std::string, std::map<std::string, std::vector<double> > > params;

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

    void initialize(std::map<std::string, std::map<std::string, std::vector<double> > > params){


        // Set masses from params file
        for(int i = 0; i < atoms.numOfAtoms; i++){
            try {
                atoms[i]->mass = params[atoms[i]->name]["mass"][0];
                printf("atom %i, %s has mass %lf\n", i, atoms[i]->name.c_str(), atoms[i]->mass);
            }
            catch(const std::overflow_error& e){
                printf("Something went wrong when assigning masses....\n");
                exit(0);
            }
        }
/*
        for(auto &particle : particles){

            //Set angular constants
            for(auto &angle : particle->angles){
                printf("Getting angular constants\n");

                double k = params[atoms[angle[0]]->name + "-" + atoms[angle[1]]->name + "-" + atoms[angle[2]]->name]["angular harmonic"][0];
                double ang = params[atoms[angle[0]]->name + "-" + atoms[angle[1]]->name + "-" + atoms[angle[2]]->name]["angular harmonic"][1];
                printf("%s, %lf, %lf\n", (atoms[angle[0]]->name + "-" + atoms[angle[1]]->name + "-" + atoms[angle[2]]->name).c_str(), k, ang);

                if(this->params["angles"][atoms[angle[0]]->name + atoms[angle[1]]->name + atoms[angle[2]]->name].size() == 0) {

                    this->params["angles"][atoms[angle[0]]->name + atoms[angle[1]]->name +
                                          atoms[angle[2]]->name].push_back(k);

                    this->params["angles"][atoms[angle[0]]->name + atoms[angle[1]]->name +
                                          atoms[angle[2]]->name].push_back(ang);
                }
            }

            //Set bonded constants
            for(auto const &bond : particle->bonds){
                printf("Getting bonded constants\n");

                printf("%s\n", (atoms[bond[0]]->name + "-" + atoms[bond[1]]->name).c_str());
                double k = params[atoms[bond[0]]->name + "-" + atoms[bond[1]]->name]["harmonic"][0];
                double length = params[atoms[bond[0]]->name + "-" + atoms[bond[1]]->name]["harmonic"][1];
                printf("%s, %lf, %lf\n", (atoms[bond[0]]->name + "-" + atoms[bond[1]]->name).c_str(), k, length);

                if(this->params["bonds"][atoms[bond[0]]->name + atoms[bond[1]]->name].size() == 0) {
                    this->params["bonds"][atoms[bond[0]]->name + atoms[bond[1]]->name].push_back(k);
                    this->params["bonds"][atoms[bond[0]]->name + atoms[bond[1]]->name].push_back(length);
                }
            }
        }
*/
        //Find atoms separated by 3 or more bonds
        for(int i = 0; i < this->numOfParticles; i++){
            this->particles[i]->find_far_neighbours();
            printf("particle %d contains %d atoms\n", i, this->particles[i]->numOfAtoms);
        }
    }
};