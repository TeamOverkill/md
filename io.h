struct IO{

    Particles read_frame(std::string fileName){
        int c, i = 0, ind, j = 0, atom_1, atom_2, molecule, molIndex;
        double xPos, yPos, zPos, xVel, yVel, zVel;
        std::string atom, line;
        std::vector<int> molecules;
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
            if(i > 1 && i <= c + 1){

                std::istringstream iss(line);
                if (!(iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos >> xVel >> yVel >> zVel)) {
                    printf("Malformed input: check the coordinate section...\n");
                    exit(1);
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
                atoms[j]->particle = molecule - 1;

                std::vector<int>::iterator molIt = std::find(molecules.begin(), molecules.end(), molecule);
                molIndex = std::distance(molecules.begin(), molIt);

                if (molIt == molecules.end()) {
                    molecules.push_back(molecule);
                    Particle *p1 = new Particle();
                    p1->push_back(atoms[j]);
                    particles.push_back(p1);
                }
                else{
                    particles[molIndex]->push_back(atoms[j]);
                }

                j++;
            }

            if(i > c + 3){

                std::istringstream iss(line);
                if(!(iss >> atom_1 >> atom_2)){
                    break;
                }

                atom_1--;   //Since format index starts from 1 and program from 0
                atom_2--;

                if(atoms[atom_1]->particle != atoms[atom_2]->particle){
                    printf("Atoms %i and %i does not belong to the same molecule so there can't be any bond between them!\n",
                    atom_1, atom_2);
                    exit(1);
                }

                printf("Bond: %i, %i\n", atom_1, atom_2);
                particles[atoms[atom_1]->particle]->bonds.push_back(std::vector<int>());
                particles[atoms[atom_1]->particle]->bonds.back().push_back(atom_1);
                particles[atoms[atom_1]->particle]->bonds.back().push_back(atom_2);
                printf("Bond: %i, %i\n", particles[atoms[atom_1]->particle]->bonds.back()[0], particles[atoms[atom_1]->particle]->bonds.back()[1]);
            }
            i++;
        }
        if(c != atoms.numOfAtoms){
            printf("Did not read all atoms from file....\n");
            printf("Created %i out of %i atoms.\n", atoms.numOfAtoms, c);
            exit(1);
        }

        /*!< Initialize the distance matrix */
        atoms.distances.resize(atoms.numOfAtoms, atoms.numOfAtoms);
        /*!< Initialize the force matrix */
        atoms.forceMatrix.resize(atoms.numOfAtoms, atoms.numOfAtoms);
        printf("Read %i atoms, %i molecules and %i bonds from file.\n", c, particles.numOfParticles, i - c - 4);
        return particles;
    }
};