#pragma once

#include "particle.h"
#include "atoms.h"
#include <map>
#include "geometries.h"

class Particles{
private:


public:
    int numOfParticles;
    std::vector<Particle*> particles;
    Atoms atoms;
    std::vector< std::vector<double> > distances;
    std::vector< std::vector< Eigen::Vector3d > > displacements;
    //std::map<std::string, std::map<std::string, std::vector<double> > > params;

    Particle* operator[](std::size_t i){
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


        /// Move to collect all general parameters!!
        // Set masses from params file
        for(int i = 0; i < atoms.numOfAtoms; i++){
            try {
                atoms[i]->mass = params[atoms[i]->name]["mass"][0];
                //printf("atom %i, %s has mass %lf\n", i, atoms[i]->name.c_str(), atoms[i]->mass);
            }
            catch(const std::overflow_error& e){
                printf("Something went wrong when assigning masses....\n");
                exit(0);
            }
        }

        //////////////////////////              Super ugly plz change               /////////////////////////////
        for(auto &particle : particles){




            //Set angular constants
            for(auto &angle : particle->angles){
                //printf("Getting angular constants\n");

                std::string name = atoms[angle[0]]->name + "-" + atoms[angle[1]]->name + "-" + atoms[angle[2]]->name;
                if ( params.find(name) == params.end() ) {
                    printf("Oops, you specified an angle between %s, %s and %s but did not give any parameters for it...\n",
                           atoms[angle[0]]->name.c_str(), atoms[angle[1]]->name.c_str(), atoms[angle[2]]->name.c_str());
                }
                double k = params.at(name).at("angular harmonic")[0];
                double ang = params.at(name).at("angular harmonic")[1];
                //printf("%s, %lf, %lf\n", name.c_str(), k, ang);
                angle.angle = ang;// / 360.0 * 2.0 *  constants::PI;
                angle.k = k;
            }




            //Set bonded constants
            for(auto &bond : particle->bonds){
                std::string name = atoms[bond[0]]->name + "-" + atoms[bond[1]]->name;
                //printf("Getting bonded constants\n");
                //printf("%s\n", (atoms[bond[0]]->name + "-" + atoms[bond[1]]->name).c_str());

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

                //printf("%s, %lf, %lf\n", name.c_str(), k, length);
                bond.k = k;
                bond.length = length;
            }
        }

        // Set LJ parameters. charge and radius
        for(auto const& [key, val] : params){
            for(int i = 0; i < atoms.numOfAtoms; i++) {
                if (atoms[i]->name == key) {
                    atoms[i]->lj.first = params[key]["lj"][0];         //sigma
                    atoms[i]->lj.second = params[key]["lj"][1];        //epsilon
                    atoms[i]->q = params[key]["charge"][0];
                    atoms[i]->radius = params[key]["radius"][0];

                    //printf("%s: q = %lf, radius = %lf LJ: %lf %lf\n", atoms[i]->name.c_str(), atoms[i]->q, atoms[i]->radius,atoms[i]->lj.first, atoms[i]->lj.second);
                }
            }
        }




        //Find atoms separated by 3 or more bonds
        for(int i = 0; i < this->numOfParticles; i++){
            this->particles[i]->find_far_neighbours();
            //printf("particle %d contains %d atoms\n", i, this->particles[i]->numOfAtoms);
        }

        distances.resize(atoms.numOfAtoms);
        for(int i = 0; i < atoms.numOfAtoms; i++){
            distances[i].resize(atoms.numOfAtoms);
        }

        displacements.resize(atoms.numOfAtoms);
        for(int i = 0; i < atoms.numOfAtoms; i++){
            displacements[i].resize(atoms.numOfAtoms);
            for(int j = 0; j < atoms.numOfAtoms; j++){
                displacements[i][j] = Eigen::Vector3d(0, 0, 0);
            }
        }
    }

    void update_distances(Geometry *geometry){
        for(int i = 0; i < atoms.numOfAtoms; i++){
            for(int j = i + 1; j < atoms.numOfAtoms; j++){
                distances[i][j] = geometry->dist(atoms[i]->pos, atoms[j]->pos);
                distances[j][i] = distances[i][j];
            }
        }
    }

    void update_displacements(Geometry *geometry){
        for(int i = 0; i < atoms.numOfAtoms; i++){
            for(int j = i + 1; j < atoms.numOfAtoms; j++){
                displacements[i][j] = geometry->disp(atoms[i]->pos, atoms[j]->pos);
                displacements[j][i] = -1.0 * displacements[i][j];
            }
        }
    }
};