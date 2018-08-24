#pragma once

template <class... Policies>
class PotentialManager{

public:

    template <class T, class... Args>
    class Extractor{
    public:
        static double energies(){
            double energy = T::energy();
            energy += Extractor<Args...>::energy();
            return energy;
        }
        static double forces(){
            double energy = T::forces();
            energy += Extractor<Args...>::forces();
            return energy;
        }
    };

    template <class T>
    class Extractor<T>{
    public:
        double static energies(){
            return T::energy();
        }
        double static forces(){
            return T::forces();
        }
    };

    double get_energy(){
        return Extractor<Policies...>().energies();
    }
    double get_forces(){
        return Extractor<Policies...>().forces();
    }
};