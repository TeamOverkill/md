#include "mdEngine.h"

namespace thermostats{
        /*!
    * Calculate the temperature Based on the equipartition theorem
    * where the temperature is given by
    \f[
      T = \sum^{N-1}_{i=0}m_i * v_i^2
    \f]
    */
    double get_temperature(Atom **atoms){


        double temp = 0;
        for(int i = 0; i < Base::numOfAtoms; i++){
            temp += atoms[i]->mass * atoms[i]->vel.dot(atoms[i]->vel);
        }
        return temp/Base::numOfAtoms * 1 / (3 * constants::K_CORRECT);
    }

    namespace andersen{
        void set_velocity(Atom **atoms){
            double ran_u;
            double freq = 0.001;
            for(int i = 0; i < Base::numOfAtoms; i++){
                ran_u = ran2::get_random();
                if(ran_u < freq){

                    double ran_u1 = ran2::get_random();
                    double ran_u2 = ran2::get_random();
                    double random_gauss =
                            sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
                    atoms[i]->vel[0] = random_gauss * sqrt(constants::K_DALTON * 300 / atoms[i]->mass) * 0.001;

                    ran_u2 = ran2::get_random();
                    ran_u1 = ran2::get_random();
                    random_gauss =
                            sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
                    atoms[i]->vel[1] = random_gauss * sqrt(constants::K_DALTON * 300 / atoms[i]->mass) * 0.001;

                    ran_u2 = ran2::get_random();
                    ran_u1 = ran2::get_random();
                    random_gauss = sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
                    atoms[i]->vel[2] = random_gauss * sqrt(constants::K_DALTON * 300 / atoms[i]->mass) * 0.001;

                    atoms[i]->vel = atoms[i]->vel.cwiseProduct(Base::dimensionality);
                }
            }
        }
    }
    namespace berendsen{
        void set_velocity(Atom **atoms){
            double vel_scale;
            double coupling_para = 0.2;
            double temp_i = 0;

            temp_i = mdEngine::get_temperature(atoms);

            for(int i = 0; i < Base::numOfAtoms; i++){
                vel_scale = sqrt(1 - Base::tStep / coupling_para * (Base::temperature / temp_i - 1));
                atoms[i]->vel = vel_scale * atoms[i]->vel;
            }
        }
    }
}