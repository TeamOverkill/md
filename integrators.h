#pragma once
#include "geometries.h"

namespace integrators{
    struct VelocityVerlet{

        //template <void (*boundary_func)(Atom &a)>

        static inline void first_step(Particles &particles, Geometry *geometry) {
            /*!
            * Velocity Verlet integrator
            * First half step
            */
            #pragma omp parallel for if(particles.atoms.numOfAtoms > 2000)
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {

                //particles[i]->atoms[j]->hard_walls();           //Move somewhere else
                geometry->boundary(particles.atoms[i]);

                particles.atoms[i]->vel +=
                        0.5 * Base::tStep * particles.atoms[i]->oldForce / particles.atoms[i]->mass; //[nm/ps]
                particles.atoms[i]->pos += Base::tStep * particles.atoms[i]->vel;
                particles.atoms[i]->pos = particles.atoms[i]->pos.cwiseProduct(
                        Base::dimensionality);   //Multiply with dimensionality

                if (particles.atoms[i]->pos.norm() > sqrt(3) * Base::boxDim + 1) {
                    printf("\nAtom outside box\n");
                    std::cout << particles.atoms[i]->pos << std::endl;
                    exit(1);
                }
            }
        }

        static inline void second_step(Particles &particles) {
            /*!
            * Velocity Verlet integrator
            * Second half step
            */
            #pragma omp parallel for if(particles.atoms.numOfAtoms > 2000)
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                    particles.atoms[i]->vel +=
                            0.5 * Base::tStep * particles.atoms[i]->force / particles.atoms[i]->mass;
                    particles.atoms[i]->oldForce = particles.atoms[i]->force;
            }
        }
    };
}
