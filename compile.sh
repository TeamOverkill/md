gcc -c main.cpp base.cpp atom.cpp atoms.cpp frame.cpp ran2_lib.cpp -O3 -march=native -Xpreprocessor -fopenmp -std=c++17
gcc -o main main.o base.o atom.o atoms.o frame.o ran2_lib.o ran2.o -O3 -march=native -lstdc++ -lomp