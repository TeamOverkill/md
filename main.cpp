#include "atom.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
    int num = 2;
    int boxDim = 10;

    Atom **atoms;
    atoms = (Atom**) malloc(num * sizeof(Atom*));

    for(int i = 0; i < num; i++){
        atoms[i] = new Atom;
    }



}