#include "integrators.h"

void integrators::velocityVerlet(Atom **atoms){
    double t_step = 0.5;
    double energy_cons;
    Eigen::Vector3d force;

    for(int i = 0; i < Base::num_of_atoms; i++){
        atoms[i]->vel += 0.5 * t_step * atoms[i]->old_force;
        atoms[i]->pos += t_step * atoms[i]->vel;
        force = energy::forces(atoms);
        atoms[i]->old_force = force;
        atoms[i]->vel += 0.5 * t_step * atoms[i]->old_force;
        std::cout << force << std::endl;
        //energy_cons = energy + atoms[i]->mass * atoms[i]->vel.dot(atoms[i]->vel) * 0.5;
    }
}