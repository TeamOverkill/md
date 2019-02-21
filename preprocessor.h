#include <vector>

class Preprocessor{

public:

    void prep_water() {
        int c, i = 0, ind;
        std::pair<int, std::string> atom_1, atom_2, atom_3;
        double xPos, yPos, zPos;
        std::string atom, line, molecule;
        std::ifstream infile("WAT_216.equil.gro");
        std::vector< std::vector<int> > angles;
        std::vector<int> temp_angle;
        temp_angle.resize(3);

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
                std::cout << line << std::endl;
                if (!(iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos)) {
                    printf("Malformed input: check the coordinate section...\n");
                    exit(1);
                }

                if (atom == "O" || atom == "H1" || atom == "H2") {
                    atom_1.first = ind;
                    atom_1.second = atom;

                    std::getline(infile, line);
                    iss.clear();
                    iss.seekg(std::ios::beg);
                    iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos;
                    atom_2.first = ind;
                    atom_2.second = atom;

                    std::getline(infile, line);
                    iss.clear();
                    iss.seekg(std::ios::beg);
                    iss >> molecule >> atom >> ind >> xPos >> yPos >> zPos;
                    atom_3.first = ind;
                    atom_3.second = atom;


                    if(atom_1.second == "O"){
                        temp_angle[0] = atom_2.first;
                        temp_angle[1] = atom_1.first;
                        temp_angle[2] = atom_3.first;
                    }
                    else if(atom_2.second == "O"){
                        temp_angle[0] = atom_1.first;
                        temp_angle[1] = atom_2.first;
                        temp_angle[2] = atom_3.first;
                    }
                    else{
                        temp_angle[0] = atom_1.first;
                        temp_angle[1] = atom_3.first;
                        temp_angle[2] = atom_2.first;
                    }
                    angles.push_back(temp_angle);
                    i += 2;
                }
            }
            i++;
        }
        for(auto angle : angles){
            printf("Angle %i %i %i\n", angle[0], angle[1], angle[2]);
        }
    }
};