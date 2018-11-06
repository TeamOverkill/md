#pragma once

namespace integrators{
    inline void velocity_verlet_first(Particles& particles){
        /*!
        * Velocity Verlet integrator
        * First half step
        */

        for(int i = 0; i < particles.numOfParticles; i++){
            for(int j = 0; j < particles[i]->numOfAtoms; j++) {
                particles[i]->atoms[j]->hard_walls();           //Move somewhere else
                particles[i]->atoms[j]->vel +=
                        0.5 * Base::tStep * particles[i]->atoms[j]->oldForce / particles[i]->atoms[j]->mass; //[nm/ps]
                particles[i]->atoms[j]->pos += Base::tStep * particles[i]->atoms[j]->vel;
                particles[i]->atoms[j]->pos = particles[i]->atoms[j]->pos.cwiseProduct(
                        Base::dimensionality);   //Multiply with dimensionality

                if (particles[i]->atoms[j]->pos.norm() > sqrt(3) * Base::boxDim + 1) {
                    printf("\nAtom outside box\n");
                    std::cout << particles[i]->atoms[j]->pos << std::endl;
                    exit(1);
                }
            }
        }
    }

    inline void velocity_verlet_second(Particles& particles){
        /*!
        * Velocity Verlet integrator
        * Second half step
        */

        for(int i = 0; i < particles.numOfParticles; i++){
            for(int j = 0; j < particles[i]->numOfAtoms; j++) {
                particles[i]->atoms[j]->vel +=
                        0.5 * Base::tStep * particles[i]->atoms[j]->force / particles[i]->atoms[j]->mass;
                particles[i]->atoms[j]->oldForce = particles[i]->atoms[j]->force;
            }
        }
    }
}
