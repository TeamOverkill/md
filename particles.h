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
    //std::map<std::string, std::map<std::string, std::vector<double> > > params;

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

        //              Super ugly plz change               //
        for(auto &particle : particles){




            //Set angular constants
            for(auto &angle : particle->angles){
                printf("Getting angular constants\n");



                std::string name = atoms[angle[0]]->name + "-" + atoms[angle[1]]->name + "-" + atoms[angle[2]]->name;

                double k = params[name]["angular harmonic"][0];
                double ang = params[name]["angular harmonic"][1];
                printf("%s, %lf, %lf\n", name.c_str(), k, ang);
                angle.angle = ang / 360.0 * 2.0 *  constants::PI;
                angle.k = k;
            }




            //Set bonded constants
            for(auto &bond : particle->bonds){
                std::string name = atoms[bond[0]]->name + "-" + atoms[bond[1]]->name;
                printf("Getting bonded constants\n");
                printf("%s\n", (atoms[bond[0]]->name + "-" + atoms[bond[1]]->name).c_str());

                if ( params.find(name) == params.end() ) {
                    name = atoms[bond[1]]->name + "-" + atoms[bond[0]]->name;
                    if ( params.find(name) == params.end() ) {
                        printf("Oops, you specified a bond between %s and %s but did not give any parameters for it...\n",
                               atoms[bond[0]]->name.c_str(), atoms[bond[1]]->name.c_str());
                        exit(1);
                    }
                }

                double k = params[name]["harmonic"][0];
                double length = params[name]["harmonic"][1];

                printf("%s, %lf, %lf\n", name.c_str(), k, length);
                bond.k = k;
                bond.length = length;
            }
        }

        for(auto const& [key, val] : params){
            for(int i = 0; i < atoms.numOfAtoms; i++) {
                if (atoms[i]->name == key) {
                    atoms[i]->lj.first = params[key]["lj"][0];         //A
                    atoms[i]->lj.second = params[key]["lj"][1];        //B
                    printf("LJ: %s %lf %lf\n", atoms[i]->name.c_str(), atoms[i]->lj.first, atoms[i]->lj.second);
                }
            }
        }




        //Find atoms separated by 3 or more bonds
        for(int i = 0; i < this->numOfParticles; i++){
            this->particles[i]->find_far_neighbours();
            printf("particle %d contains %d atoms\n", i, this->particles[i]->numOfAtoms);
        }
    }
};