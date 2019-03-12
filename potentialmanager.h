#pragma once

template <class... Policies>
class PotentialManager{

public:

    template <class T, class... Args>
    class Extractor{
    public:
        template<typename G>
        static double energies(Particles& particles, G* geometry){
            double energy = T::energy(particles, geometry);
            energy += Extractor<Args...>::energies(particles, geometry);
            return energy;
        }
        template<typename G>
        static void forces(Particles& particles, G* geometry){
            T::forces(particles, geometry);
            Extractor<Args...>::forces(particles, geometry);
        }
    };


    template <class T>
    class Extractor<T>{
    public:
        template<typename G>
        double static energies(Particles& particles, G* geometry){
            return T::energy(particles, geometry);
        }
        template<typename G>
        void static forces(Particles& particles, G* geometry){
            T::forces(particles, geometry);
        }
    };

    template<typename G>
    double get_energy(Particles& particles, G* geometry){
        return Extractor<Policies...>().energies(particles, geometry);
    }

    template<typename G>
    void get_forces(Particles& particles, G* geometry){
        Extractor<Policies...>().forces(particles, geometry);
    }
};