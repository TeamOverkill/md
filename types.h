#pragma once

class Bond{

private:
    std::vector<int> atoms;
public:
    double length;
    double k;

    // Dangerous?
    int& operator[](int i){
        return atoms[i];
    }

    int operator[](int i) const{
        return atoms[i];
    }
/*
    void operator=(int i){
        return atoms[i]&;
    }*/

    void push_back(int ind){
        atoms.push_back(ind);
    }
};

template<typename T>
class Vector{
    std::vector<T> vec;
};

class Angle{
    std::vector<int> atoms;
    double angle;
    double k;
};