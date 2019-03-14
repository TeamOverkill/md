#pragma once
#include <map>
#include "types.h"

struct IO{

    std::map<std::string, std::map<std::string, std::vector<double> > > read_par(std::string fileName, Particles& particles){
        int i = 0, atom1, atom2, atom3, a1, a2, a3;
        double d1, d2;
        std::string line, keyWord, name;
        std::ifstream infile(fileName);
        if(infile.fail()){
            printf("Cannot read parameter file...\n");
        }
        std::map<std::string, std::map<std::string, std::vector<double> > > parameters;
        printf("Reading parameter file\n");
        while (std::getline(infile, line)) {
            if(line[0] == '#') continue;
            if(line.empty()) continue;

            std::istringstream iss(line);

            if(iss >> keyWord) {


                if(keyWord == "ANGLES"){
                    printf("Reading angles\n");
                    while(true){
                        std::getline(infile, line);
                        std::istringstream iss(line);
                        //iss.clear();
                        //iss.seekg(std::ios::beg);
                        if(iss >> atom1 >> atom2 >> atom3) {
                            atom1--;
                            atom2--;
                            atom3--;

                            if (particles.atoms[atom1]->particle != particles.atoms[atom2]->particle ||
                                particles.atoms[atom2]->particle != particles.atoms[atom3]->particle) {
                                printf("Atoms %i, %i and %i does not belong to the same molecule so there can't be any fixed angle "
                                       "between them!\n", atom1, atom2, atom3);
                                exit(1);
                            }

                            particles[particles.atoms[atom1]->particle]->angles.push_back(Angle());
                            particles[particles.atoms[atom1]->particle]->angles.back().push_back(atom1);
                            particles[particles.atoms[atom1]->particle]->angles.back().push_back(atom2);
                            particles[particles.atoms[atom1]->particle]->angles.back().push_back(atom3);
                            //printf("Angle: %i, %i, %i\n", particles[particles.atoms[atom1]->particle]->angles.back()[0],
                            //       particles[particles.atoms[atom1]->particle]->angles.back()[1],
                            //       particles[particles.atoms[atom1]->particle]->angles.back()[2]);
                            continue;
                        }
                        else{
                            break;
                        }
                    }
                }




                else if(keyWord == "BONDS"){
                    printf("Reading bonds\n");
                    while(true){
                        std::getline(infile, line);
                        std::istringstream iss(line);

                        if(iss >> atom1 >> atom2){

                            atom1--;   //Since format index starts from 1 and program from 0
                            atom2--;

                            if(particles.atoms[atom1]->particle != particles.atoms[atom2]->particle){
                                printf("Atoms %i and %i does not belong to the same molecule so there can't be any bond between them!\n",
                                       atom1, atom2);
                                exit(1);
                            }

                            particles[particles.atoms[atom1]->particle]->bonds.push_back(Bond());
                            particles[particles.atoms[atom1]->particle]->bonds.back().push_back(atom1);
                            particles[particles.atoms[atom1]->particle]->bonds.back().push_back(atom2);
                            //printf("Bond: %i, %i\n", particles[particles.atoms[atom1]->particle]->bonds.back()[0],
                            //       particles[particles.atoms[atom1]->particle]->bonds.back()[1]);
                        }
                        else{
                            break;
                        }
                    }
                }




                else if(keyWord == "MASS"){
                    while(true){
                        std::getline(infile, line);
                        std::istringstream iss(line);

                        if(iss >> name >> d1){
                            parameters[name]["mass"].push_back(d1);
                        }

                        else{
                            break;
                        }
                    }
                }




                else if(keyWord == "HARMONIC"){
                    while(true){
                        std::getline(infile, line);
                        std::istringstream iss(line);

                        if(iss >> name >> d1 >> d2){
                            parameters[name]["harmonic"].push_back(d1);
                            parameters[name]["harmonic"].push_back(d2);
                        }
                        else{
                            break;
                        }
                    }
                }





                else if(keyWord == "ANGULAR_HARMONIC"){
                    while(true){
                        std::getline(infile, line);
                        std::istringstream iss(line);

                        if(iss >> name >> d1 >> d2){
                            parameters[name]["angular harmonic"].push_back(d1);
                            parameters[name]["angular harmonic"].push_back(d2);
                        }
                        else{
                            break;
                        }
                    }
                }




                else if(keyWord == "LJ"){
                    while(true){
                        std::getline(infile, line);
                        std::istringstream iss(line);

                        if(iss >> name >> d1 >> d2){
                            parameters[name]["lj"].push_back(d1);
                            parameters[name]["lj"].push_back(d2);
                            parameters["lj"][name].push_back(d1);
                            parameters["lj"][name].push_back(d2);
                        }
                        else{
                            break;
                        }
                    }
                }

                else if(keyWord == "CHARGE"){
                    while(true){
                        std::getline(infile, line);
                        std::istringstream iss(line);

                        if(iss >> name >> d1){
                            parameters[name]["charge"].push_back(d1);
                        }
                        else{
                            break;
                        }
                    }
                }

                else if(keyWord == "RADIUS"){
                    while(true){
                        std::getline(infile, line);
                        std::istringstream iss(line);

                        if(iss >> name >> d1){
                            parameters[name]["radius"].push_back(d1);
                        }
                        else{
                            break;
                        }
                    }
                }


                else{
                    printf("Unknown keyword \"%s\" in parameter file\n", keyWord.c_str());
                    exit(1);
                }

            }

            else{
                printf("Malformed parameter file...\n");
                exit(1);
            }
        }


        ///     Set correct indexes in angles and bonds
        for(int i = 0; i < particles.numOfParticles; i++){
            for(int j = 0; j < particles[i]->numOfAtoms; j++){
                particles[i]->atoms[j]->localIndex = j;
            }
            for(auto& bond : particles[i]->bonds){
                bond[0] = particles.atoms[bond[0]]->localIndex;
                bond[1] = particles.atoms[bond[1]]->localIndex;
            }
            for(auto& angle : particles[i]->angles){
                angle[0] = particles.atoms[angle[0]]->localIndex;
                angle[1] = particles.atoms[angle[1]]->localIndex;
                angle[2] = particles.atoms[angle[2]]->localIndex;
            }
        }
        return parameters;
    }











    auto read_frame(std::string fileName){
        int c, i = 0, ind, j = 0, atom_1, atom_2, molIndex;
        double xPos, yPos, zPos, xVel, yVel, zVel, xDim, yDim, zDim,
                    aAng, bAng, cAng;
        std::string atom, line, molecule;
        std::vector<std::string> molecules;
        std::ifstream infile(fileName);
        std::vector<double> box(3);
        if(infile.fail()){
            printf("Error, could not find file: %s\n", fileName.c_str());
            exit(1);
        }
        Particles particles;
        Atoms atoms;

        while (std::getline(infile, line)) {
            if(line[0] == '#') continue;
            if(line.empty()) continue;

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
                    //iss.clear();
                    //iss.str(line);
                    iss.clear();
                    iss.seekg(std::ios::beg);
                    //std::cout << line << std::endl;
                    if (!(iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos)) {
                        printf("Malformed input: check the coordinate section. Failed reading row %i.\n", i);
                        exit(1);
                    }
                    else{
                        xVel = 0.0;
                        yVel = 0.0;
                        zVel = 0.0;
                    }
                }

                atoms.push_back(new Atom());

                atoms[j]->pos[0] = xPos;
                atoms[j]->pos[1] = yPos;
                atoms[j]->pos[2] = zPos;

                atoms[j]->vel[0] = xVel;
                atoms[j]->vel[1] = yVel;
                atoms[j]->vel[2] = zVel;

                atoms[j]->name = atom;
                atoms[j]->index = j;
                //atoms[j]->particle = molecule - 1;

                //Check if molecule is already created
                std::vector<std::string>::iterator molIt = std::find(molecules.begin(), molecules.end(), molecule);
                molIndex = std::distance(molecules.begin(), molIt);
                atoms[j]->particle = molIndex;


                //Molecule is not created so create it
                if (molIt == molecules.end()) {
                    molecules.push_back(molecule);
                    Particle *p1 = new Particle();
                    p1->push_back(atoms[j]);
                    particles.push_back(p1);
                }
                //Molecule is already created so add atom
                else{
                    particles[molIndex]->push_back(atoms[j]);
                }

                j++;
            }

            /// BOX DIMENSIONS ///
            if(i == c + 2) {
                std::istringstream iss(line);
                if ((iss >> xDim >> yDim >> zDim)) {
                    printf("Read cuboid box dimensions, %lf, %lf, %lf from file.\n", xDim, yDim, zDim);
                    box[0] = xDim;
                    box[1] = xDim;
                    box[2] = xDim;
                    break;
                }

                else if ((iss >> xDim >> yDim >> zDim >> aAng >> bAng >> cAng)) {
                    printf("Read parallelepiped box dimensions, %lf, %lf, %lf from file.\n", xDim, yDim, zDim);
                }
                else{
                    printf("Could not read box dimentions...\n");
                    exit(1);
                }
            }

            i++;
        }
        if(c != atoms.numOfAtoms){
            printf("Did not read all atoms from file....\n");
            printf("Created %i out of %i atoms.\n", atoms.numOfAtoms, c);
            exit(1);
        }

        particles.atoms = atoms;
        printf("Read %i atoms, %i molecules.\n", particles.atoms.numOfAtoms, particles.numOfParticles);

        /*                  Only for testing
        for(int i = 0; i < particles.numOfParticles; i++){
            for(int j = 0; j < particles[i]->numOfAtoms; j++){
                printf("particle: %i, atom: %i\n", i, particles[i]->atoms[j]->index);
            }
        }
        */


        /*!< Initialize the distance matrix */
        //atoms.distances.resize(atoms.numOfAtoms, atoms.numOfAtoms);
        /*!< Initialize the force matrix */
        //atoms.forceMatrix.resize(atoms.numOfAtoms, atoms.numOfAtoms);
        //atoms.displacements.resize(atoms.numOfAtoms);
        //std::for_each(atoms.displacements.begin(), atoms.displacements.end(), [=](std::vector<Eigen::Vector3d> &row){ row.resize(atoms.numOfAtoms); });
        return std::make_pair(particles, box);
    }

    void write_frame(){

    }
};