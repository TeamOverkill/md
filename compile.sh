gcc -c main.cpp integrators.cpp energy.cpp atom.cpp
gcc -o main main.o integrators.o energy.o atom.o -lstdc++