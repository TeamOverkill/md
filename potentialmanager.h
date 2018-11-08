#pragma once

template <class... Policies>
class PotentialManager{

public:

    template <class T, class... Args>
    class Extractor{
    public:
        static double energies(Particles& particles, Geometry* geometry){
            double energy = T::energy(particles, geometry);
            energy += Extractor<Args...>::energies(particles, geometry);
            return energy;
        }
        static void forces(Particles& particles, Geometry* geometry){
            T::forces(particles, geometry);
            Extractor<Args...>::forces(particles, geometry);
        }
    };

    template <class T>
    class Extractor<T>{
    public:
        double static energies(Particles& particles, Geometry* geometry){
            return T::energy(particles, geometry);
        }
        void static forces(Particles& particles, Geometry* geometry){
            T::forces(particles, geometry);
        }
    };

    double get_energy(Particles& particles, Geometry* geometry){
        return Extractor<Policies...>().energies(particles, geometry);
    }
    void get_forces(Particles& particles, Geometry* geometry){
        Extractor<Policies...>().forces(particles, geometry);
    }
};