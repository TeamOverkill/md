#pragma once
#include "atoms.h"

template <class... Policies>
class PotentialManager{

public:

    template <class T, class... Args>
    class Extractor{
    public:
        static double energies(Atoms& atoms){
            double energy = T::energy(atoms);
            energy += Extractor<Args...>::energies(atoms);
            return energy;
        }
        static void forces(Atoms& atoms){
            T::forces(atoms);
            Extractor<Args...>::forces(atoms);
        }
    };

    template <class T>
    class Extractor<T>{
    public:
        double static energies(Atoms& atoms){
            return T::energy(atoms);
        }
        void static forces(Atoms& atoms){
            T::forces(atoms);
        }
    };

    double get_energy(Atoms& atoms){
        return Extractor<Policies...>().energies(atoms);
    }
    void get_forces(Atoms& atoms){
        Extractor<Policies...>().forces(atoms);
    }
};