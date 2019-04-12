#pragma once
#include "geometries.h"

namespace integrators{
    struct VelocityVerlet{

        //template <void (*boundary_func)(Atom &a)>
        template<typename T>
        static inline void first_step(Particles &particles, T *geometry) {
            /*!
            * Velocity Verlet integrator
            * First half step
            */
            #pragma omp parallel for if(particles.atoms.numOfAtoms > 6000)
            for(int j = 0; j < particles.numOfParticles; j++) {
                particles[j]->cm.setZero();
                for (int i = 0; i < particles[j]->numOfAtoms; i++) {
                    #ifdef DEBUG3
                    if (particles.atoms[i]->pos[0] > geometry->boxHalf[0] || particles.atoms[i]->pos[0] < -geometry->boxHalf[0] ||
                        particles.atoms[i]->pos[1] > geometry->boxHalf[1] || particles.atoms[i]->pos[1] < -geometry->boxHalf[1] ||
                        particles.atoms[i]->pos[2] > geometry->boxHalf[2] || particles.atoms[i]->pos[2] < -geometry->boxHalf[2]) {
                        printf("\nAtom outside box\n");
                        std::cout << particles.atoms[i]->pos << std::endl;
                        exit(1);
                    }
                    #endif

                    particles[j]->atoms[i]->pos += Base::tStep * particles[j]->atoms[i]->vel +
                                               0.5 * Base::tStep * Base::tStep * particles[j]->atoms[i]->oldForce /
                                               particles[j]->atoms[i]->mass;
                    particles[j]->atoms[i]->pos = particles[j]->atoms[i]->pos.cwiseProduct(
                            Base::dimensionality);   //Multiply with dimensionality

                    geometry->boundary(particles[j]->atoms[i]->pos, particles[j]->atoms[i]->vel);
                    /// Get particle center of mass
                    particles[j]->cm += particles[j]->atoms[i]->pos * particles[j]->atoms[i]->mass;
                }
                particles[j]->cm /= particles[j]->mass;
            }
        }




        static inline void second_step(Particles &particles) {
            /*!
            * Velocity Verlet integrator
            * Second half step
            */
            #pragma omp parallel for if(particles.atoms.numOfAtoms > 6000)
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                    particles.atoms[i]->vel +=
                            0.5 * Base::tStep * (particles.atoms[i]->force + particles.atoms[i]->oldForce) / particles.atoms[i]->mass;
            }
        }
    };

    
    struct LeapFrog{

        //template <void (*boundary_func)(Atom &a)>
        template <typename T>
        static inline void first_step(Particles &particles, T *geometry) {
            /*!
            * Leap-frog integrator, kick-drift-kick form
            * First half step
            */
            #pragma omp parallel for if(particles.atoms.numOfAtoms > 6000)
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {

                geometry->boundary(particles.atoms[i]->pos, particles.atoms[i]->vel);
                particles.atoms[i]->vel +=
                        0.5 * Base::tStep * particles.atoms[i]->oldForce / particles.atoms[i]->mass;
                
                particles.atoms[i]->pos += Base::tStep * particles.atoms[i]->vel; 
                //particles.atoms[i]->pos = particles.atoms[i]->pos.cwiseProduct(
                //        Base::dimensionality);   //Multiply with dimensionality
                #ifdef DEBUG3
                if (particles.atoms[i]->pos.norm() > sqrt(3) * Base::boxDim + 1) {
                    printf("\nAtom outside box\n");
                    std::cout << particles.atoms[i]->pos << std::endl;
                    exit(1);
                }
                #endif
            }
        }

        static inline void second_step(Particles &particles) {
            /*!
            * Leap-frog integrator, kick-drift-kick form
            * Second half step
            */
            #pragma omp parallel for if(particles.atoms.numOfAtoms > 6000)
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                particles.atoms[i]->vel +=
                        0.5 * Base::tStep * particles.atoms[i]->force / particles.atoms[i]->mass;
                particles.atoms[i]->oldForce = particles.atoms[i]->force;
            }
        }
    };
/*
    struct NoseHoover{
    private:
        static constexpr double couplingStrength = 1.0;
        double epsilon;

    public:
        static inline void integrate(Particles &particles){

            epsilon += thermostats::get_temperature - Base::T;

            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                particles[i].vel += -epsilon / couplingStrength * particles.atoms[i].vel;
            }
        }
    };
    */
}


