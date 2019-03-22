#!/bin/sh

BASEDIR=$(dirname "$0")
cd "$BASEDIR/.."


gcc -c src/main.cpp src/base.cpp src/atom.cpp src/atoms.cpp src/frame.cpp src/ran2_lib.cpp -O3 -march=native -ffast-math -Xpreprocessor -fopenmp -std=c++17 -pthread -D DEBUG1 -D DEBUG2 -D DEBUG3 -Wall
gcc -o build/main main.o base.o atom.o atoms.o frame.o ran2_lib.o -O3 -march=native -ffast-math -lstdc++ -lomp
rm main.o
rm base.o
rm atom.o
rm atoms.o
rm frame.o
rm ran2_lib.o

cd -