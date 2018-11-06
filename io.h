struct IO{

    Particles read_frame(std::string fileName){
        int c, i = 0, ind, j= 0;
        double xPos, yPos, zPos, xVel, yVel, zVel;
        std::string molecule, atom, line;
        std::ifstream infile(fileName);
        Particles particles;
        Atoms atoms;

        while (std::getline(infile, line)) {
            if(i == 1){
                std::istringstream iss(line);
                if (!(iss >> c)) {
                    printf("The second line in the input file should be the total number of atoms!\n");
                    exit(1);
                } // error
            }
            if(i > 1){
                Particle *p1 = new Particle();
                std::istringstream iss(line);
                if (!(iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos >> xVel >> yVel >> zVel)) {
                    printf("Done reading input file\n");
                    break;
                    //exit(1);
                }
                atoms.push_back(new Atom());
                atoms[j]->pos[0] = xPos;
                atoms[j]->pos[1] = yPos;
                atoms[j]->pos[2] = zPos;

                atoms[j]->vel[0] = xVel;
                atoms[j]->vel[1] = yVel;
                atoms[j]->vel[2] = zVel;

                atoms[j]->mass = 28.0134;
                atoms[j]->radius = 1.0;
                atoms[j]->index = j;
                p1->push_back(atoms[j]);
                particles.push_back(p1);
                atoms.numOfAtoms++;
                j++;
            }
            i++;
        }
        if(c != atoms.numOfAtoms){
            printf("Did not read all atoms from file....\n");
            exit(1);
        }

        /*!< Initialize the distance matrix */
        atoms.distances.resize(atoms.numOfAtoms, atoms.numOfAtoms);
        /*!< Initialize the force matrix */
        atoms.forceMatrix.resize(atoms.numOfAtoms, atoms.numOfAtoms);
        printf("Read %i atoms from file.\n", c);
        return particles;
    }
};