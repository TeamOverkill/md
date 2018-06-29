gcc -c main.cpp base.cpp  atom.cpp frame.cpp ran2_lib.cpp -std=c++11
gcc -o main main.o base.o atom.o frame.o ran2_lib.o ran2.o -lstdc++