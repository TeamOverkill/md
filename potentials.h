#pragma once

#include "base.h"
#include "geometries.h"
/*!
 *  \addtogroup Potentials
 *  @{
 */

/*! The potentials namespace contains the various potentials. Each potential has a corresponding
 * force function which calculates the force by differentiating the potential function
 */
namespace potentials{
    /*!
     *  \addtogroup Harmonic
     *  @{
    */
    /*! One dimensional harmonic potential
    */
    struct harmonic_1D{
    private:
            static constexpr double springConstant = 1.0;        // [kJ * nm^(-2) * mol^(-1)]

    public:
        inline static double energy(Particles& particles){
            double energy = 0;
            energy = 0.5 * springConstant * particles.atoms[0]->pos.norm();   // [kJ/mol]

            return energy;
        }

        inline static void forces(Particles& particles){
            /*!
            * One dimensional harmonic potential
            */
            double force = 0;
            Eigen::Vector3d forceDir;
            forceDir << 1, 0, 0;
            force = springConstant * (25 - particles.atoms[0]->pos[0]);   // [(kJ / (nm * mol)] = [dalton * nm/ps^2]
            particles.atoms[0]->force += force * forceDir.normalized();    // [(kJ / (nm * mol)] = [dalton * nm/ps^2]
        }
    };

    struct harmonic{
    private:
        static constexpr double springConstant = 1.0;        // [kJ * nm^(-2) * mol^(-1)]

    public:
        inline static double energy(Particles& particles){
            double energy = 0;
            energy = 0.5 * springConstant * particles.atoms[0]->pos.norm();   // [kJ/mol]

            return energy;
        }

        inline static void forces(Particles& particles) {
            /*!
            * Harmonic potential
            */
            for(int i = 0; i < particles.numOfParticles; i++){
                for(auto bond : particles[i]->bonds){

                    Eigen::Vector3d disp = particles[i]->atoms[bond[0]]->get_disp(particles[i]->atoms[bond[1]]);
                    particles[i]->atoms[bond[0]]->force += disp.normalized() * (disp.norm() - 0.1) * springConstant;
                    particles[i]->atoms[bond[1]]->force -= disp.normalized() * (disp.norm() - 0.1) * springConstant;

                }
            }
        }

    };

    /*!
     *  \addtogroup Coulomb
     *  @{
    */
    /*! Coulomb potential
    */
    struct coulomb{
    private:
        static constexpr double cFactor = 138935.4299040527746429;  //[kJ * nm * mol^-1]

    public:
        inline static double energy(Particles& particles){
            double energy = 0;
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                for(int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    energy += particles.atoms[i]->q * particles.atoms[j]->q / (particles.atoms[i]->pos - particles.atoms[j]->pos).norm();
                }
            }

            return energy * cFactor;
        }

        inline static void forces(Particles& particles){
            double magnitude = 0;
            double distance = 0;
            Eigen::Vector3d disp;
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                for(int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    disp = (particles.atoms[i]->pos - particles.atoms[j]->pos);
                    distance = disp.norm();
                    magnitude = cFactor * particles.atoms[i]->q * particles.atoms[j]->q / (distance * distance);
                    disp.normalize();
                    particles.atoms[i]->force += magnitude * disp;
                    particles.atoms[j]->force -= magnitude * disp;
                }
            }
        }
    };

    /*!
     *  \addtogroup LJRep
     *  @{
    */

    /*! Repulsive part of the Lennard Jones potential
    */
    struct LJRep{

    private:
        static constexpr double epsilon = 1.5;  //![kJ/mol] LJ parameter epsilon
        static constexpr double sigma = 1.0;      //![nm] LJ parameter sigma
    public:


        inline static void forces(Particles& particles, Geometry* geometry) {
            /*!
            * Calculate the forces using a Lennard-Jones potential
            */


            Eigen::Vector3d dr;

            /*for (int i = 0; i < atoms.numOfAtoms; i++) {
                atoms[i]->force.setZero();
            }*/

            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);                 // [nm]
                    double r2 = dr.dot(dr);                             // [nm^2]
                    double fr2 = sigma * sigma / r2;                    // unitless
                    double fr6 = fr2 * fr2 * fr2;                       // unitless
                    double fr = 48 * epsilon * fr6 * fr6 / r2;  // [kJ/(nm^2*mol)]

                    particles.atoms[i]->force += fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    particles.atoms[j]->force -= fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    particles.atoms.forceMatrix(i, j) = (fr * dr).norm();
                }
            }
        }

        inline static double energy(Particles& particles, Geometry* geometry) {
            /*!
            * Calculate the energy using a Lennard-Jones potential
            */

            double distance;
            double energy = 0;
            Eigen::Vector3d dr;

            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);     // [nm]
                    distance = dr.norm();                   // [nm]
                    double fr = sigma / distance;           // unitless
                    double fr2 = fr * fr;                   // unitless
                    double fr6 = fr2 * fr2 * fr2;           // unitless
                    energy += fr6 * fr6;              // unitless

                }
            }
            return 4 * epsilon * energy;    // [kJ/mol]
        }
    };

    /*!
     *  \addtogroup Lennard-Jones
     *  @{
    */
    /*! The Lennard-Jones (LJ) potential
    */
    struct LJ {
    private:
            static constexpr double epsilon = 1.5;  //[kJ/mol] LJ parameter epsilon
            static constexpr double sigma = 1.0;      //[nm] LJ parameter sigma
    public:

        /*!
        * Get the forces as given by the LJ potential
        */
        inline static void forces(Particles& particles, Geometry* geometry) {

            Eigen::Vector3d dr;


            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr =geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);                 // [nm]
                    double r2 = dr.dot(dr);                             // [nm^2]
                    double fr2 = sigma * sigma / r2;                    // unitless
                    double fr6 = fr2 * fr2 * fr2;                       // unitless
                    double fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;  // [kJ/(nm^2*mol)]

                    particles.atoms[i]->force += fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    particles.atoms[j]->force -= fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    particles.atoms.forceMatrix(i, j) = (fr * dr).norm();
                }
            }
        }

        /*! Calculate the energy using a Lennard-Jones potential which is given by
        \f[
            U_{ij}^{LJ} = 4 \pi \epsilon \left( \left( \frac{\sigma}{r_{ij}} \right)^{12} - \left( \frac{\sigma}{r_{ij}} \right)^6\right)
        \f]
        */
        inline static double energy(Particles& particles, Geometry* geometry) {

            double distance;
            double energy = 0;
            Eigen::Vector3d dr;

            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);     // [nm]
                    distance = dr.norm();                   // [nm]
                    double fr = sigma / distance;           // unitless
                    double fr2 = fr * fr;                   // unitless
                    double fr6 = fr2 * fr2 * fr2;           // unitless
                    energy += fr6 * (fr6 - 1);              // unitless

                }
            }
            return 4 * epsilon * energy;    // [kJ/mol]
        }
    };




    /*!
     *  \addtogroup magnetic
     *  @{
    */
    /*! Magnetic potential
    */
    struct magnetic {
    private:
        static constexpr double dipoleC = 50.0;//8.3145; // [kJ*nm^3*mol^(-1)] (example of what is used in Faunus at 300 Kelvin)        //!Dipole dipole product over the vacuum permittivity
    public:
        inline static void forces(Particles& particles) {
            Eigen::Vector3d dr;

            /*for (int i = 0; i < atoms.numOfAtoms; i++) {
                atoms[i]->force.setZero();
            }*/

            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = particles.atoms[i]->pos - particles.atoms[j]->pos;                 // [nm]
                    double r = dr.norm();                               // [nm]
                    double fr = 3.0 * dipoleC / (r * r * r * r * r);     // [(kJ/(nm^2*mol)]
                    particles.atoms[i]->force += fr * dr;                         // [(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    particles.atoms[j]->force -= fr * dr;                         // [(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    particles.atoms.forceMatrix(i, j) = (fr * dr).norm();

                }
                particles.atoms[i]->force += wall_force(particles.atoms[i]);
            }
        }

        inline static double energy(Particles& particles) {
            double distance;
            double energy = 0;
            Eigen::Vector3d dr;

            for(int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = particles.atoms[i]->pos - particles.atoms[j]->pos;                     // [nm]
                    distance = dr.norm();                                   // [nm]
                    energy += dipoleC / (distance * distance * distance);   // [kJ/mol]
                }
            }
            return energy;
        }

        /*! Magnetic repulsion from walls, only works for two dimensions
         *
         */
        inline static double wall_potential(Atom *atom){

            double energy = 0;
            double b = Base::boxDim/2;
            double x = atom->pos[0] - Base::boxDim;
            double y = atom->pos[1] - Base::boxDim;
            double diffX = b + x;
            double diffY = b + y;

            //Bottom wall
            energy += 2.0 * b / (diffY * diffY * std::sqrt(b * b + 2 * b * y + b * b + y * y));
            //Left wall
            energy += 2.0 * b / (diffX * diffX * std::sqrt(b * b + 2 * b * x + b * b + x * x));

            diffX = b - x;
            diffY = b - y;
            //Top wall
            energy += 2.0 * b / (diffY * diffY * std::sqrt(b * b + 2 * b * y + b * b + y * y));
            //Right wall
            energy += 2.0 * b / (diffX * diffX * std::sqrt(b * b + 2 * b * x + b * b + x * x));

            return dipoleC * energy;
        }

        inline static Eigen::Vector3d wall_force(Atom *atom){
            double magneticConstant = 100.0; //magnetic potential per nm^2
            Eigen::Vector3d force;
            force.setZero();

            // Left and right walls
            force[0] += 1.0 / (atom->pos[0] * atom->pos[0] * atom->pos[0] * atom->pos[0]) -
                    1.0 / ((Base::boxDim - atom->pos[0]) * (Base::boxDim - atom->pos[0]) * (Base::boxDim - atom->pos[0]) * (Base::boxDim - atom->pos[0]));
            // Top and Bottom walls
            force[1] += 1.0 / (atom->pos[1] * atom->pos[1] * atom->pos[1] * atom->pos[1]) -
                    1.0 / ((Base::boxDim - atom->pos[1]) * (Base::boxDim - atom->pos[1]) * (Base::boxDim - atom->pos[1]) * (Base::boxDim - atom->pos[1]));
            return force * magneticConstant;
        }
    };


    struct ewald{

    public:
        static int kNumMax;
        static double selfTerm;
        static std::vector< Eigen::Vector3d > kVec;
        static std::complex<double> *rkVec;
        static double *kNorm;
        static double *resFac;
        static double alpha;
        static int kNum;

        template<typename T, typename G>
        static double dot(T vec1, G vec2){
            return vec1[0]*vec2[0] + vec1[1]*vec2[1] + vec1[2]*vec2[2];
        }

        template<typename T>
        static double norm(T x){
            double norm = 0;

            norm = x[0]*x[0] + x[1]*x[1] + x[2]*x[2];
            return sqrt(norm);
        }

        template<typename T>
        static inline T erfc_x( T x )
        {
            //static_assert(std::is_floating_point<T>::value, "type must be floating point");
            if(x < 0){
                return ( 2.0 - erfc_x(-x) );
            }
            T t = 1.0 / (1.0 + 0.3275911 * x);
            const T a1 = 0.254829592;
            const T a2 = -0.284496736;
            const T a3 = 1.421413741;
            const T a4 = -1.453152027;
            const T a5 = 1.061405429;
            return t * (a1 + t * (a2 + t * (a3 + t * (a4 + t * a5)))) *  exp(-x * x);
            //return 1;
        }


        template<typename T>
        static inline T erf_x( T x ) {
            return (1 - erfc_x(x));
        }

        static inline void reset(){
            kVec.clear();
            free(resFac);
            free(kNorm);
            free(rkVec);
        }

        static inline void initialize(Particles& particles, Geometry* geometry){
            int i = 0;
            double r = 0;
            double qq = 0;
            double k2 = 0;
            kNumMax = 1000000;
            kNum = 0;
            resFac = (double*) malloc(kNumMax * sizeof(double));
            int kMax = 4;

            double factor = 1;
            Eigen::Vector3d vec;

            alpha = 5.0 / geometry->box[0];

            for(int kx = 0; kx <= kMax; kx++){
                for(int ky = -kMax; ky <= kMax; ky++){
                    for(int kz = -kMax; kz <= kMax; kz++){
                        factor = 1.0;
                        if(kx > 0){
                            factor *= 2;
                        }

                        vec[0] = (2.0 * constants::PI * kx / geometry->box[0]);
                        vec[1] = (2.0 * constants::PI * ky / geometry->box[1]);
                        vec[2] = (2.0 * constants::PI * kz / geometry->box[2]);
                        k2 = dot(vec, vec);

                        if(fabs(k2) > 1e-5){
                            kVec.push_back(vec);
                            resFac[kNum] = factor * exp(-k2/(4.0 * alpha * alpha))/k2;
                            kNum++;
                        }
                    }
                }
            }

            kNorm = (double*) malloc(kNum * sizeof(double));
            for(i = 0; i < kNum; i++){
                kNorm[i] = norm(kVec[i]);
            }

            rkVec = (std::complex<double>*) malloc(kNum * sizeof(std::complex<double>));
            std::complex<double> rho;
            std::complex<double> rk;
            std::complex<double> charge;
            for(int k = 0; k < kNum; k++){
                rho = 0;
                for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                    rk.imag(std::sin(particles.atoms[i]->pos.dot(kVec[k])));
                    rk.real(std::cos(particles.atoms[i]->pos.dot(kVec[k])));
                    charge = particles.atoms[i]->q;
                    rk = rk * charge;
                    rho += rk;
                }

                rkVec[k] = rho;
            }
            selfTerm = 0;
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                selfTerm += get_self_correction(particles.atoms[i]);
            }
            selfTerm = alpha/sqrt(constants::PI) * selfTerm;

        }

        static inline double get_reciprocal(){
            double energy = 0;

            for(int k = 0; k < kNum; k++){
                //std::cout << "resfac: " << resFac[k] <<std::endl;
                //std::cout << "rkVec: " << rkVec[k] <<std::endl;
                energy += std::norm(rkVec[k]) * resFac[k];
            }
            return energy;
        }

        static inline double get_self_correction(Atom *p){
            double self = p->q * p->q;
            return self;
        }

        static inline double energy(Particles& particles, Geometry* geometry){
            double real = 0;

            double reciprocal = 0;

            Eigen::Vector3d dipoleMoment;
            dipoleMoment.setZero();
            double corr = 0;
            double distance = 0;
            double energy = 0;

            reciprocal = get_reciprocal();

            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                for(int j = i + 1; j < particles.atoms.numOfAtoms; j++){
                    distance = geometry->dist(particles.atoms[i]->pos, particles.atoms[j]->pos);
                    if(distance <= 25){
                        energy = erfc_x(distance * alpha) / distance;
                        real += particles.atoms[i]->q * particles.atoms[j]->q * energy;
                    }
                }
            }
            //printf("%lf\n", real);
            //printf("%lf\n", reciprocal);
            //printf("%lf\n", selfTerm);
            reciprocal = 2 * constants::PI/(geometry->box[0] * geometry->box[1] * geometry->box[2]) * reciprocal;

            return (real + reciprocal) - selfTerm;   //Tinfoil boundary conditions
        }

        static inline void forces(Particles& particles, Geometry* geometry){
            reset();
            initialize(particles, geometry);
            for(int i = 0; i < particles.numOfParticles; i++){
                //std::cout << "Real: " << real_force(particles.atoms[i], particles, geometry) << std::endl;
                //std::cout << "Rec: " << reciprocal_force(particles.atoms[i], particles, geometry) << std::endl;
                particles.atoms[i]->force += real_force(particles.atoms[i], particles, geometry) + reciprocal_force(particles.atoms[i], particles, geometry);
            }
        }

        static inline Eigen::Vector3d reciprocal_force(Atom* a, Particles& particles, Geometry* geometry){
            Eigen::Vector3d force;
            force.setZero();
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                Eigen::Vector3d disp = geometry->disp(a->pos, particles.atoms[i]->pos);
                for(int k = 0; k < kNum; k++){
                    force += 4 * constants::PI * kVec[k] / (kNorm[k] * kNorm[k]) * std::exp(-1.0 * kNorm[k] * kNorm[k] / (4 * alpha)) * std::sin(kVec[k].dot(disp));
                }
                force *= particles.atoms[i]->q * 1.0 / geometry->volume;
            }
            force *= a->q;
            return force;
        }

        static inline Eigen::Vector3d real_force(Atom* a, Particles& particles, Geometry* geometry){
            Eigen::Vector3d force;
            force.setZero();
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                if(a->index != i) {
                    Eigen::Vector3d disp = geometry->disp(a->pos, particles.atoms[i]->pos);
                    force += particles.atoms[i]->q * (2.0 * std::sqrt(alpha / constants::PI) *
                                                      std::exp(-1.0 * alpha * disp.norm() * disp.norm()) +
                                                      1.0 / disp.norm() * erfc_x(std::sqrt(alpha) * disp.norm())) *
                                                        disp / (disp.norm() * disp.norm());
                }
            }
            force *= a->q;
            return force;
        }
    };

    int ewald::kNumMax;
    double ewald::selfTerm;
    std::vector< Eigen::Vector3d > ewald::kVec;
    std::complex<double> *ewald::rkVec;
    double *ewald::kNorm;
    double *ewald::resFac;
    double ewald::alpha;
    int ewald::kNum;
}