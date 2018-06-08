#include <vector>

class Atom{
    std::vector< std::vector<double> > pos[3];
    std::vector< std::vector<double> > vel[3];
    int charge;
    double mass;
};