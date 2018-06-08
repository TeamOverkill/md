gcc -c main.cpp integrators.cpp energy.cpp atom.cpp frame.cpp -std=c++11
gcc -o main main.o integrators.o energy.o atom.o frame.o -lstdc++