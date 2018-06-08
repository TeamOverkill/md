#include "integrators.h"

void integrators::velocityVerlet(Atom **atoms){
    double t_step = 0.001;
    double energy_cons;
    Eigen::Vector3d force;

    for(int i = 0; i < Base::num_of_atoms; i++){

        //Verlet half step
        atoms[i]->vel += 0.5 * t_step * atoms[i]->force;    //half step

        if(atoms[i]->pos[0] >= Base::box_dim - atoms[i]->radius){
            atoms[i]->vel[0] *= -1;
        }
        if(atoms[i]->pos[0] <= atoms[i]->radius){
            atoms[i]->vel[0] *= -1;
        }
        if(atoms[i]->pos[1] >= Base::box_dim){
            atoms[i]->vel[1] *= -1;
        }      
        if(atoms[i]->pos[1] <= atoms[i]->radius){
            atoms[i]->vel[1] *= -1;
        }   
        if(atoms[i]->pos[2] >= Base::box_dim - atoms[i]->radius){
            atoms[i]->vel[2] *= -1;
        }      
        if(atoms[i]->pos[2] <= atoms[i]->radius){
            atoms[i]->vel[2] *= -1;
        }
        atoms[i]->pos += t_step * atoms[i]->vel;
        energy::forces_LJ(atoms);  //update forces
        atoms[i]->vel += 0.5 * t_step * atoms[i]->force;

        // atoms[i]->pos += t_step * atoms[i]->vel + t_step * t_step * atoms[i]->old_force;
        // atoms[i]->vel += atoms[i]->vel + t_step * (atoms[i]->old_force + atoms[i]->force);

        //energy_cons = energy + atoms[i]->mass * atoms[i]->vel.dot(atoms[i]->vel) * 0.5;
    }
}