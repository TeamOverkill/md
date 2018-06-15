gcc -c main.cpp  atom.cpp frame.cpp ran_uniform.cpp -std=c++11
gcc -o main main.o atom.o frame.o ran_uniform.o -lstdc++