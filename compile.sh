gcc -c main.cpp  atom.cpp frame.cpp ran2_lib.cpp -std=c++11
gcc -o main main.o atom.o frame.o ran2_lib.o ran2.o -lstdc++