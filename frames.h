#pragma once

#include "frame.h"

class Frames{

private:
    std::vector<Frame*> frames;

public:
    int totalFrames;
    int frameCounter;                    /*!< Counts the number of frames */
    int fStep;                    /*!< Save a frame each fStep iteration */
    int saveFreq;                 /*!< Number of frames hold in memory before written to file */

    Frames(int numOfFrames, int numOfAtoms, int saveFreq){
        this->totalFrames = 0;
        this->frameCounter = 0; //Counter which holds the number of frames created
        this->fStep = Base::iterations/numOfFrames;    //Save frame to trajectory every fStep iteration
        this->saveFreq = saveFreq;

        for(int i = 0; i < saveFreq; i++){
            this->frames.push_back(new Frame(numOfAtoms));
        }
    }


    Frame* operator[](int i){
        return frames[i];
    }


    void save_to_file(Particles& particles){
        int i = 0;
        FILE *f = fopen("output.gro", "a");

        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }

        for(int j = 0; j < this->saveFreq; j++){
            fprintf(f, "Generated by Slaymulator, t=%i\n", totalFrames - Base::outFreq + j);
            fprintf(f, "%d\n", particles.atoms.numOfAtoms);
            for(i = 0; i < particles.atoms.numOfAtoms; i++){
                //printf("Saving state %d\n", i);
                fprintf(f, "%5d%-5s%5s%5d%8.3f%8.3f%8.3f%8.4f%8.4f%8.4f\n", particles.atoms[i]->particle, "ion", particles.atoms[i]->name.c_str(), i + 1, frames[j]->state[i][0], frames[j]->state[i][1], frames[j]->state[i][2], \
                frames[j]->state[i][3], frames[j]->state[i][4], frames[j]->state[i][5]);
            }
            fprintf(f, "%lf    %lf     %lf\n", Base::boxDim, Base::boxDim, Base::boxDim);
        }
        fclose(f);
        this->totalFrames += this->frameCounter;
        this->frameCounter = 0;
    }
};