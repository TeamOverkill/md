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
    struct Harmonic_1D{
    private:
            static constexpr double springConstant = 1.0;        // [kJ * nm^(-2) * mol^(-1)]

    public:
        static double energy(Particles& particles){
            double energy = 0;
            energy = 0.5 * springConstant * particles.atoms[0]->pos.norm();   // [kJ/mol]

            return energy;
        }

        static void forces(Particles& particles){
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











    struct Harmonic{
    private:
        //static constexpr double springConstant = 12657.0;        // [kJ * nm^(-2) * mol^(-1)]

    public:
        template<typename T>
        static double energy(Particles& particles, T* geometry){
            double energy = 0;


            for(int i = 0; i < particles.numOfParticles; i++){
                for(auto bond : particles[i]->bonds){
                    double dist = geometry->dist(particles[i]->atoms[bond[0]]->pos, particles[i]->atoms[bond[1]]->pos);
                    energy += bond.k * (dist - bond.length) * (dist - bond.length);   // [kJ/mol]
                }
            }
            return energy;
        }

        template<typename T>
        static void forces(Particles& particles, T* geometry) {
            /*!
            * Harmonic potential
            */

            /*#pragma omp parallel default(none) shared(particles) if(particles.atoms.numOfAtoms >= 400)
            {
                std::vector<Eigen::Vector3d> private_forces(particles.atoms.numOfAtoms);
                for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                    private_forces[i].setZero();
                }
                #pragma omp for schedule(dynamic, 50)*/
            for (int i = 0; i < particles.numOfParticles; i++) {
                for (auto bond : particles[i]->bonds) {
                    Eigen::Vector3d disp = geometry->disp(particles[i]->atoms[bond[0]]->pos,
                                                          particles[i]->atoms[bond[1]]->pos);

                    Eigen::Vector3d a_force = -2.0 * bond.k * disp.normalized() * (disp.norm() - bond.length);

                        particles[i]->atoms[bond[0]]->force += a_force;
                        particles[i]->atoms[bond[1]]->force += -a_force;

                    //private_forces[particles[i]->atoms[bond[0]]->index] += a_force;
                    //private_forces[particles[i]->atoms[bond[1]]->index] += -a_force;
                }
            }
            /*#pragma omp critical
            {
                for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                    particles.atoms[i]->force += private_forces[i];
                }
            }
        }*/

        }
    };











    struct AngularHarmonic{

    public:
        template<typename T>
        static double energy(Particles& particles, T* geometry){
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

                    energy += angle.k * (theta - angle.angle) * (theta - angle.angle);
                }
            }
            return energy;
        }

        template<typename T>
        static void forces(Particles& particles, T* geometry) {

            double ab_dist, bc_dist, ba_dist, cb_dist, theta;
            Eigen::Vector3d a_force, c_force, ab_disp, bc_disp, ba_disp, cb_disp;

            for (int i = 0; i < particles.numOfParticles; i++) {
                for (auto angle : particles[i]->angles) {

                    ab_disp = geometry->disp(particles[i]->atoms[angle[1]]->pos,
                                             particles[i]->atoms[angle[0]]->pos);
                    bc_disp = geometry->disp(particles[i]->atoms[angle[2]]->pos,
                                             particles[i]->atoms[angle[1]]->pos);
                    ba_disp = -1.0 * ab_disp;
                    cb_disp = -1.0 * bc_disp;

                    ab_dist = ab_disp.norm();
                    bc_dist = bc_disp.norm();

                    theta = std::acos(ba_disp.dot(bc_disp) / (ab_dist * bc_dist));

                    a_force = -2 * angle.k * (theta - angle.angle) / ab_dist *
                              (ba_disp.cross(ba_disp.cross(bc_disp))).normalized();
                    c_force = -2 * angle.k * (theta - angle.angle) / bc_dist *
                              (cb_disp.cross(ba_disp.cross(bc_disp))).normalized();

                        particles[i]->atoms[angle[0]]->force += a_force;
                        particles[i]->atoms[angle[2]]->force += c_force;
                        particles[i]->atoms[angle[1]]->force += -a_force - c_force;
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
    struct Coulomb{
    private:
        static constexpr double cFactor = 138.935457544094654;

    public:
        template<typename T>
        static double energy(Particles& particles, T* geometry){
            double energy = 0;
            //#pragma omp for schedule(dynamic, 50)
            for(int i = 0; i < particles.numOfParticles; i++){
                for(int j = i + 1; j < particles.numOfParticles; j++){
                    for(int ia = 0; ia < particles[i]->numOfAtoms; ia++) {
                        for (int ja = 0; ja < particles[j]->numOfAtoms; ja++) {
                            energy += particles[i]->atoms[ia]->q * particles[j]->atoms[ja]->q /
                                      geometry->dist(particles[i]->atoms[ia]->pos, particles[j]->atoms[ja]->pos);
                        }
                    }
                }
            }
            //printf("Coulomb %lf\n", energy * cFactor);
            return energy * cFactor;
        }

        template<typename T>
        static void forces(Particles& particles, T* geometry){
            #pragma omp parallel default(none) shared(particles) if(particles.atoms.numOfAtoms >= 400)
            {
                double magnitude = 0;
                Eigen::Vector3d disp;
                std::vector<Eigen::Vector3d> private_forces(particles.atoms.numOfAtoms);

                for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                    private_forces[i].setZero();
                }
                /*#pragma omp for schedule(dynamic, 50)
                for(int i = 0; i < particles.numOfParticles; i++){
                    for(int j = i + 1; j < particles.numOfParticles; j++){
                        for(int ia = 0; ia < particles[i]->numOfAtoms; ia++) {
                            for (int ja = 0; ja < particles[j]->numOfAtoms; ja++) {

                                disp = geometry->disp(particles[i]->atoms[ia]->pos, particles[j]->atoms[ja]->pos);


                                magnitude = cFactor * particles[i]->atoms[ia]->q * particles[j]->atoms[ja]->q / disp.squaredNorm();
                                disp.normalize();

                                //particles[i]->atoms[ia]->force += magnitude * disp;
                                //particles[j]->atoms[ja]->force -= magnitude * disp;
                                private_forces[particles[i]->atoms[ia]->index] += magnitude * disp;
                                private_forces[particles[j]->atoms[ja]->index] -= magnitude * disp;

                                //particles.atoms.forceMatrix(particles[i]->atoms[ia]->index, particles[j]->atoms[ja]->index) += magnitude;
                                //particles.atoms.forceMatrix(particles[j]->atoms[ja]->index, particles[i]->atoms[ia]->index) -= magnitude;
                            }
                        }
                    }
                }*/
                #pragma omp for schedule(dynamic, 32)
                for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                    for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                        if (particles.atoms[i]->particle == particles.atoms[j]->particle) continue;
                        disp = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);

                        magnitude = cFactor * particles.atoms[i]->q * particles.atoms[j]->q / disp.squaredNorm();
                        disp.normalize();

                        //particles.atoms[i]->force += magnitude * disp;
                        //particles.atoms[j]->force -= magnitude * disp;
                        private_forces[particles.atoms[i]->index] += magnitude * disp;
                        private_forces[particles.atoms[j]->index] -= magnitude * disp;
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
    };










    /*!
 *  \addtogroup Coulomb
 *  @{
*/
    /*! Coulomb potential with cutoff
    */
    struct CoulombCutoff{
    private:
        static constexpr double cFactor = 138.935457544094654;//1.6021766208E-19 * 1.6021766208E-19 /
        //(4.0 * 3.141592653589793238 * 8.854187817E-12) * 1E6 * 6.02214085774E23;//constants::E * constants::E / (4 * constants::PI * 78.0 * constants::VP);  //[kJ * nm * mol^-1]

    public:
        template<typename T>
        static double energy(Particles& particles, T* geometry){
            double energy = 0;
            double distance;
            //#pragma omp for schedule(dynamic, 50)
            for(int i = 0; i < particles.numOfParticles; i++){
                for(int j = i + 1; j < particles.numOfParticles; j++){
                    for(int ia = 0; ia < particles[i]->numOfAtoms; ia++) {
                        for (int ja = 0; ja < particles[j]->numOfAtoms; ja++) {
                            if (geometry->dist(particles[i]->atoms[ia]->pos, particles[j]->atoms[ja]->pos) < 1.0) {
                                distance = geometry->dist(particles[i]->atoms[ia]->pos, particles[j]->atoms[ja]->pos);
                                energy += particles[i]->atoms[ia]->q * particles[j]->atoms[ja]->q /
                                          distance * (1.0 - distance) * (1.0 - distance);
                            }
                        }
                    }
                }
            }
            return energy * cFactor;
        }

        template<typename T>
        static void forces(Particles& particles, T* geometry){
            double magnitude = 0;
            Eigen::Vector3d disp;
            //#pragma omp for schedule(dynamic, 50)
            for(int i = 0; i < particles.numOfParticles; i++){
                for(int j = i + 1; j < particles.numOfParticles; j++){
                    for(int ia = 0; ia < particles[i]->numOfAtoms; ia++) {
                        for (int ja = 0; ja < particles[j]->numOfAtoms; ja++) {

                            disp = geometry->disp(particles[i]->atoms[ia]->pos, particles[j]->atoms[ja]->pos);
                            if (disp.norm() < 1.0) {

                                magnitude = (cFactor * particles[i]->atoms[ia]->q * particles[j]->atoms[ja]->q) /
                                        disp.squaredNorm();

                                disp.normalize();

                                particles[i]->atoms[ia]->force += (magnitude -
                                        cFactor * particles[i]->atoms[ia]->q * particles[j]->atoms[ja]->q) * disp;
                                particles[j]->atoms[ja]->force -= (magnitude -
                                        cFactor * particles[i]->atoms[ia]->q * particles[j]->atoms[ja]->q) * disp;

                            }
                            //particles.atoms.forceMatrix(particles[i]->atoms[ia]->index, particles[j]->atoms[ja]->index) += magnitude;
                            //particles.atoms.forceMatrix(particles[j]->atoms[ja]->index, particles[i]->atoms[ia]->index) -= magnitude;
                        }
                    }
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

    public:
        template<typename T>
        static void forces(Particles& particles, T* geometry) {
            /*!
            * Calculate the forces using a Lennard-Jones potential
            */


            Eigen::Vector3d dr;
            double sigma, epsilon, rr2, fr2, fr6, fr;
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    sigma =  (particles.atoms[i]->lj.first + particles.atoms[j]->lj.first) / 2.0;
                    epsilon = std::sqrt(particles.atoms[i]->lj.second * particles.atoms[j]->lj.second);
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);                 // [nm]
                    rr2 = 1.0 / dr.dot(dr);                             // [nm^2]
                    fr2 = sigma * sigma * rr2;                    // unitless
                    fr6 = fr2 * fr2 * fr2;                       // unitless
                    fr = 48.0 * epsilon * fr6 * fr6 * rr2;  // [kJ/(nm^2*mol)]

                    particles.atoms[i]->force += fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    particles.atoms[j]->force -= fr * dr;                         //[(kJ/(nm*mol)] = [dalton * nm/ps^2]
                    //particles.atoms.forceMatrix(i, j) = (fr * dr).norm();
                }
            }
        }

        template<typename T>
        static double energy(Particles& particles, T* geometry) {
            /*!
            * Calculate the energy using a Lennard-Jones potential
            */

            double sigma, epsilon, rr2, fr2, fr6, fr, energy = 0, distance;
            Eigen::Vector3d dr;

            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    sigma =  (particles.atoms[i]->lj.first + particles.atoms[j]->lj.first) / 2.0;
                    epsilon = std::sqrt(particles.atoms[i]->lj.second * particles.atoms[j]->lj.second);
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);     // [nm]
                    distance = dr.norm();                   // [nm]
                    fr = sigma / distance;           // unitless
                    fr2 = fr * fr;                   // unitless
                    fr6 = fr2 * fr2 * fr2;           // unitless
                    energy += fr6 * fr6;              // unitless
                    energy *= epsilon;

                }
            }
            return 4.0 * energy;    // [kJ/mol]
        }
    };











    /*!
     *  \addtogroup Lennard-Jones
     *  @{
    */
    /*! The Lennard-Jones (LJ) potential
    */
    struct LJ {

    public:

        /*!
        * Get the forces as given by the LJ potential
        */
        template<typename T>
        inline static void forces(Particles &particles, T* geometry) {

            #pragma omp parallel default(none) shared(particles) if(particles.atoms.numOfAtoms >= 400)
            {
                /// Variables should stay inside the parallel region
                double rr2, fr2, fr6, fr, sigma, epsilon;
                Eigen::Vector3d dr;
                std::vector<Eigen::Vector3d> private_forces(particles.atoms.numOfAtoms);

                for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                    private_forces[i].setZero();
                }

                #pragma omp for schedule(dynamic, 32)
                for(int i = 0; i < particles.numOfParticles; i++){
                    for(int j = i + 1; j < particles.numOfParticles; j++){
                        for(int ia = 0; ia < particles[i]->numOfAtoms; ia++){
                            for(int ja = 0; ja < particles[j]->numOfAtoms; ja++){
                                //asm("#Lennard Jones begin!");

                                /*printf("%s eps: %lf, %s eps: %lf\n", particles[i]->atoms[ia]->name.c_str(), particles.atoms.ljEps[particles[i]->atoms[ia]->type][particles[i]->atoms[ia]->type],
                                       particles[j]->atoms[ja]->name.c_str(), particles.atoms.ljEps[particles[j]->atoms[ja]->type][particles[j]->atoms[ja]->type]);
                                printf("%s sig: %lf, %s sig: %lf\n", particles[i]->atoms[ia]->name.c_str(), particles.atoms.ljSig[particles[i]->atoms[ia]->type][particles[i]->atoms[ia]->type],
                                       particles[j]->atoms[ja]->name.c_str(), particles.atoms.ljSig[particles[j]->atoms[ja]->type][particles[j]->atoms[ja]->type]);*/
                                sigma = particles.atoms.ljSig[particles[i]->atoms[ia]->type][particles[j]->atoms[ja]->type];//(particles[i]->atoms[ia]->lj.first + particles[j]->atoms[ja]->lj.first) / 2.0;
                                epsilon = particles.atoms.ljEps[particles[i]->atoms[ia]->type][particles[j]->atoms[ja]->type];//std::sqrt(particles[i]->atoms[ia]->lj.second * particles[j]->atoms[ja]->lj.second);
                                dr = geometry->disp(particles[i]->atoms[ia]->pos,
                                                    particles[j]->atoms[ja]->pos);                 // [nm]
                                //std::cout << dr << std::endl;
                                //std::cout << dr.cwiseInverse() << std::endl;
                                //exit(1);
                                rr2 = 1.0 / dr.squaredNorm(); //(dr[0] * dr[0] + dr[1] * dr[1] + dr[2] * dr[2]);                           // [nm^2]
                                fr2 = sigma * sigma * rr2;                    // unitless
                                fr6 = fr2 * fr2 * fr2;                       // unitless
                                fr = 48.0 * epsilon * fr6 * (fr6 - 0.5) * rr2;  // [kJ/(nm^2*mol)]
                                //#pragma omp critical
                                //{
                                    particles[i]->atoms[ia]->force += fr * dr;
                                    particles[j]->atoms[ja]->force -= fr * dr;
                                //}
                                private_forces[particles[i]->atoms[ia]->index] += fr * dr;
                                private_forces[particles[j]->atoms[ja]->index] -= fr * dr;

                                //asm("#Lennard Jones end!");
                            }
                        }
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
        template<typename T>
        static double energy(Particles& particles, T* geometry) {

            double distance, fr, fr2, fr6, sigma, epsilon;
            double energy = 0;

            for(int i = 0; i < particles.numOfParticles; i++) {
                for (int j = i + 1; j < particles.numOfParticles; j++) {
                    for (int ia = 0; ia < particles[i]->numOfAtoms; ia++) {
                        for (int ja = 0; ja < particles[j]->numOfAtoms; ja++) {

                            sigma =  (particles[i]->atoms[ia]->lj.first + particles[j]->atoms[ja]->lj.first) / 2.0;
                            epsilon = std::sqrt(particles[i]->atoms[ia]->lj.second * particles[j]->atoms[ja]->lj.second);
                            distance = geometry->dist(particles[i]->atoms[ia]->pos, particles[j]->atoms[ja]->pos);     // [nm]

                            fr = sigma / distance;           // unitless
                            fr2 = fr * fr;                   // unitless
                            fr6 = fr2 * fr2 * fr2;           // unitless

                            energy += epsilon * fr6 * (fr6 - 1.0);  // unitless
                        }
                    }
                }
            }
            /*#pragma omp parallel for reduction(+:energy) schedule(dynamic, 50) private(distance, dr) shared(particles) if(particles.atoms.numOfAtoms >= 400)
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);     // [nm]
                    distance = dr.norm();                   // [nm]
                    double fr = sigma / distance;           // unitless
                    double fr2 = fr * fr;                   // unitless
                    double fr6 = fr2 * fr2 * fr2;           // unitless

                    energy += fr6 * (fr6 - 1);  // unitless

                }
            }*/
            return 4.0 * energy;    // [kJ/mol]
        }
    };









    /*!
    *  \addtogroup Lennard-Jones
    *  @{
   */
    /*! The Lennard-Jones (LJ) potential
    */
    struct LJCutoff {

    public:

        /*!
        * Get the forces as given by the LJ potential
        */
        template<typename T>
        static void forces(Particles &particles, T* geometry) {

            //#pragma omp parallel default(none) shared(particles) if(particles.atoms.numOfAtoms >= 400)
            //{
            /// Variables should stay inside the paralell region
            double rr2, fr2, fr6, fr, sigma, epsilon;
            Eigen::Vector3d dr;
            std::vector<Eigen::Vector3d> private_forces(particles.atoms.numOfAtoms);

            //for(int i = 0; i < particles.atoms.numOfAtoms; i++){
            //    private_forces[i].setZero();
            //}

            //#pragma omp for schedule(dynamic, 50)
            for(int i = 0; i < particles.numOfParticles; i++){
                for(int j = i + 1; j < particles.numOfParticles; j++){
                    for(int ia = 0; ia < particles[i]->numOfAtoms; ia++){
                        for(int ja = 0; ja < particles[j]->numOfAtoms; ja++){
                            asm("#Lennard Jones cutoff begin!");
                            sigma =  (particles[i]->atoms[ia]->lj.first + particles[j]->atoms[ja]->lj.first) * 0.5;
                            epsilon = std::sqrt(particles[i]->atoms[ia]->lj.second * particles[j]->atoms[ja]->lj.second);
                            dr = geometry->disp(particles[i]->atoms[ia]->pos,
                                                particles[j]->atoms[ja]->pos);                 // [nm]
                            if (dr.norm() < 1.0) {
                                rr2 = 1.0 / dr.dot(dr);                             // [nm^2]
                                fr2 = sigma * sigma * rr2;                    // unitless
                                fr6 = fr2 * fr2 * fr2;                       // unitless
                                fr = 48.0 * epsilon * fr6 * (fr6 - 0.5) * rr2 * (1.0 - dr.norm()) * (1.0 - dr.norm());  // [kJ/(nm^2*mol)]
                                particles[i]->atoms[ia]->force += fr * dr;
                                particles[j]->atoms[ja]->force -= fr * dr;

                                //private_forces[particles[i]->atoms[ia]->index] += fr * dr;
                                //private_forces[particles[j]->atoms[ja]->index] -= fr * dr;
                            }

                            asm("#Lennard Jones cutoff end!");
                        }
                    }
                }
            }

            /*#pragma omp critical
            {
                for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                    particles.atoms[i]->force += private_forces[i];
                }
            }
         }*/
        }

        /*! Calculate the energy using a Lennard-Jones potential which is given by
        \f[
            U_{ij}^{LJ} = 4 \pi \epsilon \left( \left( \frac{\sigma}{r_{ij}} \right)^{12} - \left( \frac{\sigma}{r_{ij}} \right)^6\right)
        \f]
        */
        template<typename T>
        static double energy(Particles& particles, T* geometry) {

            double distance;
            double energy = 0;
            Eigen::Vector3d dr;
            for(int i = 0; i < particles.numOfParticles; i++) {
                for (int j = i + 1; j < particles.numOfParticles; j++) {
                    for (int ia = 0; ia < particles[i]->numOfAtoms; ia++) {
                        for (int ja = 0; ja < particles[j]->numOfAtoms; ja++) {
                            double sigma =  (particles[i]->atoms[ia]->lj.first + particles[j]->atoms[ja]->lj.first) / 2.0;
                            double epsilon = std::sqrt(particles[i]->atoms[ia]->lj.second * particles[j]->atoms[ja]->lj.second);

                            dr = geometry->disp(particles[i]->atoms[ia]->pos, particles[j]->atoms[ja]->pos);     // [nm]
                            distance = dr.norm();                   // [nm]
                            if (distance < 1.0) {
                                double fr = sigma / distance;           // unitless
                                double fr2 = fr * fr;                   // unitless
                                double fr6 = fr2 * fr2 * fr2;           // unitless

                                energy += epsilon * fr6 * (fr6 - 1.0) * (1.0 - distance) * (1.0 - distance);  // unitless
                            }
                        }
                    }
                }
            }
            /*#pragma omp parallel for reduction(+:energy) schedule(dynamic, 50) private(distance, dr) shared(particles) if(particles.atoms.numOfAtoms >= 400)
            for (int i = 0; i < particles.atoms.numOfAtoms; i++) {
                for (int j = i + 1; j < particles.atoms.numOfAtoms; j++) {
                    dr = geometry->disp(particles.atoms[i]->pos, particles.atoms[j]->pos);     // [nm]
                    distance = dr.norm();                   // [nm]
                    double fr = sigma / distance;           // unitless
                    double fr2 = fr * fr;                   // unitless
                    double fr6 = fr2 * fr2 * fr2;           // unitless

                    energy += fr6 * (fr6 - 1);  // unitless

                }
            }*/
            return 4.0 * energy;    // [kJ/mol]
        }
    };









    /*!
     *  \addtogroup magnetic
     *  @{
    */
    /*! Magnetic potential
    */
/*    struct magnetic {
    private:
        static constexpr double dipoleC = 50.0;//8.3145; // [kJ*nm^3*mol^(-1)] (example of what is used in Faunus at 300 Kelvin)        //!Dipole dipole product over the vacuum permittivity
    public:
        static void forces(Particles& particles) {
            Eigen::Vector3d dr;


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

        static double energy(Particles& particles) {
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

        /// Magnetic repulsion from walls, only works for two dimensions
        static double wall_potential(Atom *atom){

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

        static Eigen::Vector3d wall_force(Atom *atom){
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
    };*/

    
     

    struct Ewald{
        static constexpr double cFactor = 138.935457544094654;
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
        static T erfc_x( T x )
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
        static T erf_x( T x ) {
            return (1 - erfc_x(x));
        }





        static void reset(){
            kVec.clear();
            free(resFac);
            free(kNorm);
            free(rkVec);
        }




        template<typename T>
        static void initialize(Particles& particles, T* geometry){
            int i = 0;
            double r = 0;
            double qq = 0;
            double k2 = 0;
            kNumMax = 1000000;
            kNum = 0;
            resFac = (double*) malloc(kNumMax * sizeof(double));
            int kMax = 6;  //half of the third root of number of reciprocal vectors

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




        static void update_factors(Particles& particles){
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

        }





        static double get_reciprocal(){
            double energy = 0;

            for(int k = 0; k < kNum; k++){
                //std::cout << "resfac: " << resFac[k] <<std::endl;
                //std::cout << "rkVec: " << rkVec[k] <<std::endl;
                energy += std::norm(rkVec[k]) * resFac[k];
            }
            return energy;
        }





        static double get_self_correction(Atom *p){
            double self = p->q * p->q;
            return self;
        }




        template<typename T>
        static double energy(Particles& particles, T* geometry){
            double real = 0;
            double reciprocal = 0;
            double distance = 0;
            double energy = 0;

            reciprocal = get_reciprocal();

            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                for(int j = i + 1; j < particles.atoms.numOfAtoms; j++){
                    distance = geometry->dist(particles.atoms[i]->pos, particles.atoms[j]->pos);
                    //if(distance <= 25){
                        energy = erfc_x(distance * alpha) / distance;
                        real += particles.atoms[i]->q * particles.atoms[j]->q * energy;
                    //}
                }
            }

            reciprocal *= 2.0 * constants::PI / geometry->volume;

            // DEBUGGING
            /*printf("real: %lf\n", real);
            printf("reciprocal: %lf\n", reciprocal);
            printf("self: %lf\n", selfTerm);*/
            //printf("Tinfoil Energy: %.10lf\n", (real + reciprocal) - selfTerm);

            return cFactor * ((real + reciprocal) - selfTerm);
        }





        template<typename T>
        static void forces(Particles& particles, T* geometry){
            //reset();
            //initialize(particles, geometry);
            update_factors(particles);
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                particles.atoms[i]->force += cFactor * (real_force(particles.atoms[i], particles, geometry) +
                                                        reciprocal_force(particles.atoms[i], particles, geometry));
                //particles.atoms[i]->force += reciprocal_force(particles.atoms[i], particles, geometry);
            }
            //printf("Ewald force x: %lf, y: %lf\n", particles.atoms[0]->force[0], particles.atoms[0]->force[1]);
        }





        ////// Use resFac instead of exp() terms since it is multiplied by a factor which is probably missing here  ///////////////
        template<typename T>
        static Eigen::Vector3d reciprocal_force(Atom* a, Particles& particles, T* geometry){
            Eigen::Vector3d force;
            force.setZero();
            Eigen::Vector3d factor1;
            factor1.setZero();
            double factor2;
            double factor3;


            for(int k = 0; k < kNum; k++){
                factor1 = a->q * kVec[k] * resFac[k];// / (kNorm[k] * kNorm[k]) * std::exp(-1.0 * kVec[k].dot(kVec[k]) / (4 * alpha * alpha));
                factor2 = 0;
                factor3 = 0;
                for(int j = 0; j < particles.atoms.numOfAtoms; j++){
                    factor2 += particles.atoms[j]->q * std::cos(kVec[k].dot(particles.atoms[j]->pos));
                }
                factor2 = std::sin(kVec[k].dot(a->pos)) * factor2;
                for(int j = 0; j < particles.atoms.numOfAtoms; j++){
                    factor3 += particles.atoms[j]->q * std::sin(kVec[k].dot(particles.atoms[j]->pos));
                }
                factor3 = std::cos(kVec[k].dot(a->pos)) * factor3;
                force += factor1 * (factor2 - factor3);
            }
            return force * 4.0 * constants::PI / geometry->volume;
        }





        template<typename T>
        static Eigen::Vector3d real_force(Atom* a, Particles& particles, T* geometry){
            Eigen::Vector3d force;
            force.setZero();
            for(int i = 0; i < particles.atoms.numOfAtoms; i++){
                if(a->index != i) {
                    Eigen::Vector3d disp = geometry->disp(a->pos, particles.atoms[i]->pos);
                    force += particles.atoms[i]->q * (2 * alpha / std::sqrt(constants::PI) *
                                                      std::exp(-alpha * alpha * disp.dot(disp))
                                                      + erfc_x(alpha * disp.norm()) / disp.norm()) *
                                                      disp / disp.dot(disp);
                }
            }
            force *= a->q;
            return force;
        }
    };

    int Ewald::kNumMax;
    double Ewald::selfTerm;
    std::vector< Eigen::Vector3d > Ewald::kVec;
    std::complex<double> *Ewald::rkVec;
    double *Ewald::kNorm;
    double *Ewald::resFac;
    double Ewald::alpha;
    int Ewald::kNum;
}
