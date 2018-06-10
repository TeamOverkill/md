#pragma once
#include "base.h"
#include "atom.h"

namespace mdEngine {
    template<typename F, typename I>
    void run(I&& integrator_1, I&& integrator_2, F&& force_function, Atom **atoms, Frame **frames, int fStep){
        int frameCounter = 0;
        for(int i = 0; i < base::iterations; i++){
            //printf("Iteration %i\n", i);
            integrator_1(atoms);
            force_function(atoms);
            integrator_2(atoms);
            if(i % fStep == 0){
                //ss << "#";
                //bar = ss.str();
                //printf("iteration: %i\n", i);
                printf("Done: %lf%%, iteration %i\r", (double) i/base::iterations * 100, i);
                fflush(stdout);
                frames[frameCounter] = new Frame();
                frames[frameCounter]->save_coordinates(atoms);
                frameCounter++;
            }
        }
        printf("\n");    
    }
}