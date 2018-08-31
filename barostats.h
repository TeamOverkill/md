namespace barostats{
    /*!
    * Calculate the pressure Based on the virial expansion
    \f[
        P=\rho k_B T + \frac{1}{dV}\left<\sum_{i=0}^{N-1}\sum_{j = i + 1}^{N-1} f(r_{ij})r_{ij}\right>
    \f]
    */
    double get_pressure(Atoms& atoms){

        double pressure = 0;

        double b2 = 0;
        for(int i = 0; i < atoms.numOfAtoms; i++){
            for(int j = i + 1; j < atoms.numOfAtoms; j++){
                b2 += atoms.forceMatrix(i, j) * atoms.distances(i, j);
            }
        }
        b2 *= 1/(3 * Base::volume);
        pressure = atoms.numOfAtoms / Base::volume * constants::K_CORRECT * 300 + b2;  //[dalton / (ps^2 * nm)]
        pressure *= 1.66053904 * 1e-27; //dalton to kg
        pressure *= 1e24; //ps^2 to s^2
        pressure *= 1e9; //nm to m
        pressure *= 1e-5; //Pa to bar
        return pressure; //[bar]
    }
}