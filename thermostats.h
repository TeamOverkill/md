namespace thermostats{
    namespace andersen{
        void set_velocity(Atom **atoms){
            double ran_u;
            double randomMaxwell;
            double freq = 0.1;
            for(int i = 0; i < base::numOfAtoms; i++){
                ran_u = ran2::get_random();
                if(ran_u < freq){

                    double ran_u1 = ran2::get_random();
                    double ran_u2 = ran2::get_random();
                    double random_gauss =
                            sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
                    atoms[i]->vel[0] = random_gauss * sqrt(constants::K * 300 / atoms[i]->mass);

                    ran_u2 = ran2::get_random();
                    ran_u1 = ran2::get_random();
                    random_gauss =
                            sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
                    atoms[i]->vel[1] = random_gauss * sqrt(constants::K * 300 / atoms[i]->mass);

                    ran_u2 = ran2::get_random();
                    ran_u1 = ran2::get_random();
                    random_gauss = sqrt(-2 * log(ran_u1)) * sin(2 * constants::PI * ran_u2);
                    atoms[i]->vel[2] = random_gauss * sqrt(constants::K * 300 / atoms[i]->mass);
                }
            }
        }
} }