#pragma once

template <class... Policies>
class PotentialManager{

public:

    template <class T, class... Args>
    class Extractor{
    public:
        static void integrators(Particles& particles){
            T::integrate(particles, geometry);
            Extractor<Args...>::integrators(particles);
        }
    };

    template <class T>
    class Extractor<T>{
    public:
        void static integrators(Particles& particles){
            T::integrate(particles, geometry);
        }
    };


    void integrate(Particles& particles){
        Extractor<Policies...>().integrators(particles);
    }
};