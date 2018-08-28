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
            energy += Extractor<Args...>::energy(atoms);
            return energy;
        }
        static double forces(Atoms& atoms){
            double energy = T::forces(atoms);
            energy += Extractor<Args...>::forces(atoms);
            return energy;
        }
    };

    template <class T>
    class Extractor<T>{
    public:
        double static energies(Atoms& atoms){
            return T::energy(atoms);
        }
        double static forces(Atoms& atoms){
            return T::forces(atoms);
        }
    };

    double get_energy(Atoms& atoms){
        return Extractor<Policies...>().energies(atoms);
    }
    double get_forces(Atoms& atoms){
        return Extractor<Policies...>().forces(atoms);
    }
};