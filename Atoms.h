#include <array>
#include "atom.h"

class Atoms{
private:
    std::array<Atom> atoms;

public:
    Atom* operator[](int i){
        return atoms[i];
    }
};