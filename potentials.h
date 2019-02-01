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
        static constexpr double springConstant = 100.0;        // [kJ * nm^(-2) * mol^(-1)]

    public:
        inline static double energy(Particles& particles, Geometry* geometry){
            double energy = 0;

            for(int i = 0; i < particles.numOfParticles; i++){
                for(auto bond : particles[i]->bonds){
                    double dist = geometry->dist(particles[i]->atoms[bond[0]]->pos, particles[i]->atoms[bond[1]]->pos);
                    energy += springConstant * std::pow((dist - 0.5), 2);   // [kJ/mol]
                }
            }
            return energy;
        }

        inline static void forces(Particles& particles, Geometry* geometry) {
            /*!
            * Harmonic potential
            */
            for(int i = 0; i < particles.numOfParticles; i++){
                for(auto bond : particles[i]->bonds){
                    Eigen::Vector3d disp = geometry->disp(particles[i]->atoms[bond[0]]->pos, particles[i]->atoms[bond[1]]->pos);

                    Eigen::Vector3d a_force = -2.0 * springConstant * disp.normalized() * (disp.norm() - 0.5);
                    particles[i]->atoms[bond[0]]->force +=  a_force;
                    particles[i]->atoms[bond[1]]->force += -a_force;
                }
            }
        }
    };

    struct angular_harmonic{

    private:
        static constexpr double k = 1000.0;

    public:
        inline static double energy(Particles& particles, Geometry* geometry){
            double energy = 0;
            for(int i = 0; i < particles.numOfParticles; i++) {
                for (auto angle : particles[i]->angles) {
                    Eigen::Vector3d ba_disp = geometry->disp(particles[i]->atoms[angle[0]]->pos,
                                                             particles[i]->atoms[angle[1]]->pos);
                    Eigen::Vector3d bc_disp = geometry->disp(particles[i]->atoms[angle[2]]->pos,
                                                             particles[i]->atoms[angle[1]]->pos);

                    double ba_dist = ba_disp.norm();
                    double bc_dist = bc_disp.norm();

                    double theta = std::acos(ba_disp.dot(bc_disp) / (ba_dist * bc_dist));

                    energy += k * std::pow((theta - 3.14), 2);
                }
            }
            return energy;
        }

        inline static void forces(Particles& particles, Geometry* geometry) {
            for(int i = 0; i < particles.numOfParticles; i++){
                for(auto angle : particles[i]->angles){
                    Eigen::Vector3d ab_disp = geometry->disp(particles[i]->atoms[angle[1]]->pos,
                                                             particles[i]->atoms[angle[0]]->pos);
                    Eigen::Vector3d bc_disp = geometry->disp(particles[i]->atoms[angle[2]]->pos,
                                                             particles[i]->atoms[angle[1]]->pos);
                    Eigen::Vector3d ba_disp = -1.0 * ab_disp;
                    Eigen::Vector3d cb_disp = -1.0 * bc_disp;

                    double ab_dist = ab_disp.norm();
                    double bc_dist = bc_disp.norm();
                    double ba_dist = ab_dist;
                    double cb_dist = bc_dist;

                    double theta = std::acos(ba_disp.dot(bc_disp) / (ba_dist * bc_dist));

                    Eigen::Vector3d a_force = -2 * k * (theta - 3.14) / ab_dist *
                            (ba_disp.cross(ba_disp.cross(bc_disp))).normalized();
                    Eigen::Vector3d c_force = -2 * k * (theta - 3.14) / bc_dist *
                            (cb_disp.cross(ba_disp.cross(bc_disp))).normalized();

                    particles[i]->atoms[angle[0]]->force += a_force;
                    particles[i]->atoms[angle[2]]->force += c_force;
                    particles[i]->atoms[angle[1]]->force += - a_force - c_force;
                    //particles[i]->atoms[angle[1]]->force += -1.0 * (particles[i]->atoms[angle[0]]->force +
                    //                                        particles[i]->atoms[angle[2]]->force);
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
        static constexpr double cFactor = 1000.0;  //[kJ * nm * mol^-1]

    public:
        inline static double energy(Particles& particles, Geometry* geometry){
            double energy = 0;
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                for(int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    energy += particles.atoms[i]->q * particles.atoms[j]->q /
                                                geometry->dist(particles.atoms[i]->pos, particles.atoms[j]->pos);
                }
            }

            return energy * cFactor;
        }

        inline static void forces(Particles& particles, Geometry* geometry){
            double magnitude = 0;
            double distance = 0;
            Eigen::Vector3d disp;
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                for(int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    disp = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);
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

            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);                 // [nm]
                    double r2 = dr.dot(dr);                             // [nm^2]
                    double fr2 = sigma * sigma / r2;                    // unitless
                    double fr6 = fr2 * fr2 * fr2;                       // unitless
                    double fr = 48 * epsilon * fr6 * fr6 / r2;  // [kJ/(nm^2*mol)]

                    particles.atoms[i]->force += fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    particles.atoms[j]->force -= fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    //particles.atoms.forceMatrix(i, j) = (fr * dr).norm();
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
        inline static void forces(Particles &particles, Geometry *geometry) {

            #pragma omp parallel default(none) shared(particles) if(particles.atoms.numOfAtoms >= 400)
            {
                double r2;
                double fr2;
                double fr6;
                double fr;
                Eigen::Vector3d dr;
                std::vector<Eigen::Vector3d> private_forces(particles.atoms.numOfAtoms);

                for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                    private_forces[i].setZero();
                }

                #pragma omp for schedule(dynamic, 50)
                for (int i = 0; i < particles.atoms.numOfAtoms; i++) {

                    for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                        dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);                 // [nm]
                        r2 = dr.dot(dr);                             // [nm^2]
                        fr2 = sigma * sigma / r2;                    // unitless
                        fr6 = fr2 * fr2 * fr2;                       // unitless
                        fr = 48 * epsilon * fr6 * (fr6 - 0.5) / r2;  // [kJ/(nm^2*mol)]

                        /*particles.atoms[i]->force +=
                                fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                        particles.atoms[j]->force -=
                                fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                        particles.atoms.forceMatrix(i, j) = (fr * dr).norm();*/
                        private_forces[i] += fr * dr;
                        private_forces[j] -= fr * dr;
                    }
                }

                #pragma omp critical
                {
                    for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                        particles.atoms[i]->force += private_forces[i];
                    }
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

            #pragma omp parallel for reduction(+:energy) schedule(dynamic, 50) private(distance, dr) shared(particles) if(particles.atoms.numOfAtoms >= 400)
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);     // [nm]
                    distance = dr.norm();                   // [nm]
                    double fr = sigma / distance;           // unitless
                    double fr2 = fr * fr;                   // unitless
                    double fr6 = fr2 * fr2 * fr2;           // unitless

                    energy += fr6 * (fr6 - 1);  // unitless

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
            int kMax = 4;  //half of the third root of number of reciprocal vectors

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

            reciprocal = 2.0 * constants::PI/(geometry->box[0] * geometry->box[1] * geometry->box[2]) * reciprocal;

            // DEBUGGING
            /*printf("real: %lf\n", real);
            printf("reciprocal: %lf\n", reciprocal);
            printf("self: %lf\n", selfTerm);
            printf("ewald energy: %lf\n", 0.1 * ((real + reciprocal) - selfTerm));*/

            return ((real + reciprocal) - selfTerm) * 0.1;   //Tinfoil boundary conditions
        }

        static inline void forces(Particles& particles, Geometry* geometry){
            //reset();
            //initialize(particles, geometry);
            for(int i = 0; i < particles.numOfParticles; i++){
                particles.atoms[i]->force += ((real_force(particles.atoms[i], particles, geometry) + reciprocal_force(particles.atoms[i], particles, geometry))) * 0.1;
            }
            //printf("Ewald force x: %lf, y: %lf\n", particles.atoms[0]->force[0], particles.atoms[0]->force[1]);
        }

        static inline Eigen::Vector3d reciprocal_force(Atom* a, Particles& particles, Geometry* geometry){
            Eigen::Vector3d force;
            force.setZero();
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                Eigen::Vector3d disp = geometry->disp(a->pos, particles.atoms[i]->pos);
                for(int k = 0; k < kNum; k++){
                    force += 4 * constants::PI * kVec[k] / (kNorm[k] * kNorm[k]) * std::exp(-1.0 * kNorm[k] * kNorm[k] / (4 * alpha)) * std::sin(kVec[k].dot(disp));
                }
                force *= particles.atoms[i]->q / geometry->volume;
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
