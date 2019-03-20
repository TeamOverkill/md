#include <vector>

class Preprocessor{

public:

    void prep_water(std::string fileName) {
        int c, i = 0, ind;
        std::pair<int, std::string> atom_1, atom_2, atom_3;
        double xPos, yPos, zPos;
        std::string atom, line, molecule;
        std::ifstream infile(fileName);
        std::vector< std::vector<int> > angles;
        std::vector< std::vector<int> > bonds;
        std::vector<int> temp_angle;
        std::vector<int> temp_bond;
        temp_angle.resize(3);
        temp_bond.resize(2);

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

            if(i > 1 && i <= c + 1) {

                std::istringstream iss(line);
                if (!(iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos)) {
                    printf("Malformed input: check the coordinate section...\n");
                    exit(1);
                }

                if (atom == "O" || atom == "H1" || atom == "H2") {
                    atom_1.first = ind;
                    atom_1.second = atom;

                    iss.clear();
                    std::getline(infile, line);
                    iss.str(line);
                    iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos;
                    atom_2.first = ind;
                    atom_2.second = atom;

                    std::getline(infile, line);
                    iss.clear();
                    iss.str(line);
                    iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos;
                    atom_3.first = ind;
                    atom_3.second = atom;


                    if(atom_1.second == "O"){
                        temp_angle[0] = atom_2.first;
                        temp_angle[1] = atom_1.first;
                        temp_angle[2] = atom_3.first;

                        temp_bond[0] = atom_1.first;
                        temp_bond[1] = atom_2.first;
                        bonds.push_back(temp_bond);

                        temp_bond[0] = atom_1.first;
                        temp_bond[1] = atom_3.first;
                        bonds.push_back(temp_bond);
                    }
                    else if(atom_2.second == "O"){
                        temp_angle[0] = atom_1.first;
                        temp_angle[1] = atom_2.first;
                        temp_angle[2] = atom_3.first;

                        temp_bond[0] = atom_2.first;
                        temp_bond[1] = atom_1.first;
                        bonds.push_back(temp_bond);

                        temp_bond[0] = atom_2.first;
                        temp_bond[1] = atom_3.first;
                        bonds.push_back(temp_bond);
                    }
                    else{
                        temp_angle[0] = atom_1.first;
                        temp_angle[1] = atom_3.first;
                        temp_angle[2] = atom_2.first;

                        temp_bond[0] = atom_3.first;
                        temp_bond[1] = atom_1.first;
                        bonds.push_back(temp_bond);

                        temp_bond[0] = atom_3.first;
                        temp_bond[1] = atom_2.first;
                        bonds.push_back(temp_bond);
                    }

                    angles.push_back(temp_angle);
                    i += 2;
                }
            }
            i++;
        }




                                                         /// Print params file ///
        FILE *f = fopen("params_prep.par", "w");

        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }


        fprintf(f, "BONDS\n");
        for(auto bond: bonds){
            fprintf(f, "%i %i\n", bond[0], bond[1]);
        }
        fprintf(f, "\n\nANGLES\n");
        for(auto angle: angles){
            fprintf(f, "%i %i %i\n", angle[0], angle[1], angle[2]);
        }
        fclose(f);
        printf("Preprocessor done, wrote file params_prep.mo\n");
    }
};