#include "base.h"
#include <fstream>

class Parser{

public:
    int numOfAtoms;
    int numberOfFrames;
    int saveFreq;

    void parse() {
        std::string fileName = "config.mo";
        //Base base;
        std::string keyword;
        std::string line;
        double value;

        std::ifstream infile(fileName);
        while (std::getline(infile, line)) {
            std::istringstream iss(line);
            if (!(iss >> keyword >> value)) {
                break;
            }
            if(keyword == "nop") numOfAtoms = (int)value;
            else if(keyword == "iter") Base::iterations = (int)value;
            else if(keyword == "boxdim") Base::boxDim = value;
            else if(keyword == "outfreq") saveFreq = (int)value;
            else if(keyword == "nof") numberOfFrames = (int)value;
            else if(keyword == "temperature") Base::temperature = value;
            else if(keyword == "timestep") Base::tStep = value;
            else if(keyword == "dof") Base::dimensions = (int)value;

            else{
                printf("Unknown keyword \"%s\" in config file.", keyword.c_str());
                exit(1);
            }


            printf("Keyword: %s, value: %lf\n", keyword.c_str(), value);
        }

        if(saveFreq > numberOfFrames){
            printf("The frame save frequency can be higher than the number of frames!\n");
            exit(0);
        }
    }
};