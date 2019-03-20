#pragma once

#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <random>

/*extern "C"
{
    float ran2_(int*);
}
*/


class ran2{

private:
    static std::default_random_engine generator;
    static std::uniform_real_distribution<double> *distribution;

public:
    static void initialize(){
        distribution = new std::uniform_real_distribution<double>(0.0, 1.0);
    }

    static double get_random(){
        return (*distribution)(generator);
    }
    /*
        static double get_random(){
            int ran_input = -1*(int) time(NULL) * 100 * rand();
            float ran2_var = ran2_(&ran_input);
            return (double)ran2_var;
        }
        */
};
