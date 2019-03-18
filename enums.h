#pragma once

class PotEnum{
public:
    bool COULOMB;
    bool LJ;
    bool BONDH;
    bool ANGLEH;

    PotEnum(){
        COULOMB = false;
        LJ = false;
        BONDH = false;
        ANGLEH = false;
    }
};