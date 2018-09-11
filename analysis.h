class Analysis{
    public:

    std::vector<double> histo;
    int numOfSamples;
    int bins;
    double binWidth;
    std::string name;

    virtual void sample(Atoms& atoms, int d) = 0;
    virtual void save() = 0;
};

class Density : public Analysis{

    public:
    Density(int bins, std::string name){
        this->name = name;
        this->bins = bins;
        this->binWidth = Base::boxDim / bins;
        this->histo.resize(bins);
    }

    void sample(Atoms& atoms, int d){

        for(int i = 0; i < atoms.numOfAtoms; i++){
            this->histo[(int)(atoms[i]->pos[d]/binWidth)]++;
            if(atoms[i]->q < 0){
                this->histo[(int)(atoms[i]->pos[d]/binWidth)]++;
            }
            else if(atoms[i]->q > 0){
                this->histo[(int)(atoms[i]->pos[d]/binWidth)]++;
            }
        }
        this->numOfSamples++;
    }

    void save(){
        int i = 0;
        double dv = 0;
        double idealDen = 0;


        FILE *f = fopen(this->name.c_str(), "w");
        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }
        for(i = 0; i < bins; i++){
            fprintf(f, "%lf     %lf\n", (double)i * this->binWidth, (double)this->histo[i] / (Base::boxDim * Base::boxDim * this->binWidth * this->numOfSamples));
        }
        fclose(f);

    }
};