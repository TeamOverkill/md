namespace thermostats{
        /*!
    * Calculate the temperature Based on the equipartition theorem
    * where the temperature is given by
    \f[
      T = \sum^{N-1}_{i=0}m_i * v_i^2
    \f]
    */
    double get_temperature(Atoms& atoms){

        double temp = 0;
        for(int i = 0; i < atoms.numOfAtoms; i++){
            temp += atoms[i]->mass * atoms[i]->vel.dot(atoms[i]->vel);
        }
        return temp/atoms.numOfAtoms * 1.0 / (3.0 * constants::K_CORRECT);
    }

    struct andersen{
        static void set_velocity(Atoms& atoms){
            double ran_u;
            double freq = 0.1 * Base::tStep;
            for(int i = 0; i < atoms.numOfAtoms; i++){
                ran_u = ran2::get_random();
                if(ran_u < freq){
                    atoms[i]->set_mb_velocity();
                }
            }
        }
    };

    struct berendsen{
        static void set_velocity(Atoms& atoms){
            double velScale;
            double couplingPara = 1.0;
            double inT = get_temperature(atoms);

            for(int i = 0; i < atoms.numOfAtoms; i++){
                velScale = sqrt(1.0 + Base::tStep / couplingPara * (Base::temperature / inT - 1.0));
                atoms[i]->vel = velScale * atoms[i]->vel;
            }
        }
    };
}