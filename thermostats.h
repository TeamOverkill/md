namespace thermostats{
        /*!
    * Calculate the temperature Based on the equipartition theorem
    * where the temperature is given by
    \f[
      T = \sum^{N-1}_{i=0}m_i * v_i^2
    \f]
    */
    double get_temperature(Particles& particles){

        double temp = 0;
        for(int i = 0; i < particles.numOfParticles; i++){
            for(int j = 0; j < particles[i]->numOfAtoms; j++) {
                temp += particles[i]->atoms[j]->mass * particles[i]->atoms[j]->vel.squaredNorm();
            }
        }

        temp = temp / particles.atoms.numOfAtoms;
        return temp / (3.0 * constants::K_CORRECT);
    }

    struct andersen{
        static void set_velocity(Particles& particles){
            double ran_u;
            double freq = 10 * Base::tStep; // 0.1


            for(int i = 0; i < particles.numOfParticles; i++){
                for(int j = 0; j < particles[i]->numOfAtoms; j++){
                    ran_u = ran2::get_random();
                    if(ran_u < freq){
                        particles[i]->atoms[j]->set_mb_velocity();
                    }
                }
            }

        }
    };

    struct berendsen{
        static void set_velocity(Particles& particles){
            double velScale;
            double couplingPara = 10 * Base::tStep;
            double inT = Base::temperature;

            for(int i = 0; i < particles.numOfParticles; i++) {
                for (int j = 0; j < particles[i]->numOfAtoms; j++) {
                    velScale = sqrt(1.0 + Base::tStep / couplingPara * (Base::temperature / inT - 1.0));
                    particles[i]->atoms[j]->vel *= velScale;
                }
            }
        }
    };
}
