class Analysis{
    public:

    std::vector<double> histo;
    int numOfSamples;
    int bins;
    double binWidth;
    std::string name;
    Geometry* geometry;
    virtual void sample(Atoms& atoms, int d) = 0;
    virtual void save() = 0;

    Analysis(Geometry* geometry){
        this->geometry = geometry;
    }
};

class Density : public Analysis{

    public:
    Density(int bins, std::string name, Geometry* geometry) : Analysis(geometry){
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
            printf("test error\n");
            printf("Can't open file!\n");
            exit(1);
        }
        for(i = 0; i < bins; i++){
            fprintf(f, "%lf     %lf\n", (double)i * this->binWidth, (double)this->histo[i] / (Base::boxDim * Base::boxDim * this->binWidth * this->numOfSamples));
        }     
        fclose(f);

    }
};

class rdf : public Analysis{

    public:
    rdf(int bins, std::string name, Geometry* geometry) : Analysis(geometry){
        this->name = name;
        this->bins = bins;
        this->binWidth = Base::boxDim*2 / bins;
        this->histo.resize(bins+10);
        std::fill(this->histo.begin(), this->histo.end(), 0);   //Set all bins to zero
    }

    void sample(Atoms& atoms, int d){
        for(int i = 0; i < atoms.numOfAtoms; i=i+2){ 
            for(int j = 1; j < atoms.numOfAtoms; j=j+2){
                if(i != j) {
                    double distance = (atoms[i]->pos - atoms[j]->pos).norm();
                    this->histo[(int) (distance / binWidth)]++;
                }
             }
        }
  
        this->numOfSamples++;
    }
    void save(){
        
        
        for(int i = 0; i < bins; i++){
            histo[i] = histo[i] / 50 / (4 * constants::PI * (i + 1) * this->binWidth * (i + 1) * this->binWidth * this->binWidth);
        }  
        int i = 0;
           
              
        FILE *f = fopen(this->name.c_str(), "w");
        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }

        for(i = 0; i < bins; i++){
            fprintf(f, "%lf     %lf\n", (double)i * this->binWidth, (double)this->histo[i] * Base::boxDim * Base::boxDim * this->binWidth /  this->numOfSamples);
        }
        fclose(f);
    }
};

class Track : public Analysis{
    std::vector<int> indices;
    std::vector<Eigen::Vector3d> positions;

public:
    Track(std::vector<int> indices, std::string name, Geometry* geometry) : Analysis(geometry){
        this->indices = indices;
        this->name = name;
    }

    void sample(Atoms& atoms, int d){

        for(auto index : indices){
            positions.push_back(atoms[index]->pos);
        }
        this->numOfSamples++;

    }

    void save(){
        int i = 0;
        FILE *f = fopen(this->name.c_str(), "w");
        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }

        for(auto coord : positions){
            fprintf(f, "%d    %lf     %lf    %lf\n", i, coord[0], coord[1], coord[2]);
            i++;
        }
        fclose(f);

    }
};
