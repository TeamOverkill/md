namespace barostats{
    /*!
    * Calculate the pressure Based on the virial expansion
    \f[
        P=\rho k_B T + \frac{1}{dV}\left<\sum_{i=0}^{N-1}\sum_{j = i + 1}^{N-1} f(r_{ij})r_{ij}\right>
    \f]
    */
    double get_pressure(Atoms& atoms, double volume){

        double pressure = 0;

        double b2 = 0;
        for(int i = 0; i < atoms.numOfAtoms; i++){
            for(int j = i + 1; j < atoms.numOfAtoms; j++){
                b2 += atoms.forceMatrix(i, j) * atoms.distances(i, j);
            }
        }
        b2 *= 1/(3 * volume);
        pressure = atoms.numOfAtoms / volume * constants::K_CORRECT * 300 + b2;  //[dalton / (ps^2 * nm)]
        pressure *= 1.66053904 * 1e-27; //dalton to kg
        pressure *= 1e24; //ps^2 to s^2
        pressure *= 1e9; //nm to m
        pressure *= 1e-5; //Pa to bar
        return pressure; //[bar]
    }

    double virtual_volume_move(Particles& particles, Geometry *geometry, PotentialManager *pm){
        double dv = 0.00001;
        geometry->volume_move(dv);
        double oldEnergy = pm->get_energy(particles, geometry);
        double newEnergy;
        geometry->volume -= geometry->volumeOld;
        double pressure = 1.0 / * std::log(std::exp(-
                                                  constants::K_CORRECT * Base::temperature * (newEnergy - oldEnergy)));
        return pressure;
    }

    struct mcBarostat{

        double vMax = 0.0005;

        void volume_move(){
            //double oldEnergy = get_energy();
            double lnNewVolume = std::log(Base::volume) + (ran2::get_random() - 0.5) * vMax;
            double newVolume = std::exp(lnNewVolume);
            double newLength = std::cbrt(newVolume);
            double scaling = newLength / Base::boxDim;
            scale_coordinates(scaling);
            Base::boxDim = newLength;
            //newEnergy = get_energy();
            double prob = exp(-(newEnergy - oldEnergy) - 0.00243 * (newVolume - Base::volume) +
                (Particle::numOfParticles + 1) * std::log(newVolume / Base::volume));
        }

        void scale_coordinates(double scaling){

        }


    };
}