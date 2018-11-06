#pragma once
#include "atoms.h"

template <class... Policies>
class PotentialManager{

public:

    template <class T, class... Args>
    class Extractor{
    public:
        static double energies(Particles& particles){
            double energy = T::energy(particles);
            energy += Extractor<Args...>::energies(particles);
            return energy;
        }
        static void forces(Particles& particles){
            T::forces(particles);
            Extractor<Args...>::forces(particles);
        }
    };

    template <class T>
    class Extractor<T>{
    public:
        double static energies(Particles& particles){
            return T::energy(particles);
        }
        void static forces(Particles& particles){
            T::forces(particles);
        }
    };

    double get_energy(Particles& particles){
        return Extractor<Policies...>().energies(particles);
    }
    void get_forces(Particles& particles){
        Extractor<Policies...>().forces(particles);
    }
};