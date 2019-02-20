class Analysis{
    public:

    std::vector<double> histo;
    int numOfSamples;
    int numOfAtoms;
    int numOfParticles;
    int bins;
    double binWidth;
    int cnt1, cnt2;
    std::string name;
    Geometry* geometry;

    virtual void sample(Particles& particles, int d) = 0;
    virtual void save() = 0;

    Analysis(Geometry* geometry){
        this->geometry = geometry;
    }
};

/*
class Density : public Analysis{

    public:
    Density(int bins, std::string name, Geometry* geometry) : Analysis(geometry){
        this->name = name;
        this->bins = bins;
        this->binWidth = Base::boxDim / bins;
        this->histo.resize(bins+5);
    }
    
    void sample(Particles& particles, int d){

        for(int i = 0; i < particles.atoms.numOfAtoms; i++){
            this->histo[(int)(particles.atoms[i]->pos[d]/binWidth)]++;
            if(particles.atoms[i]->q < 0){
                this->histo[(int)(particles.atoms[i]->pos[d]/binWidth)]++;
            }
            else if(particles.atoms[i]->q > 0){
                this->histo[(int)(particles.atoms[i]->pos[d]/binWidth)]++;
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
*/

class diffusion : public Analysis {
    std::vector<double> dp;
    public:
    diffusion(int numOfParticles, std::string name, Geometry* geometry) : Analysis(geometry){
        this->name = name;
        this->numOfParticles = numOfParticles;
        dp.resize(numOfParticles);
    }

    void sample(Particles& particles, int d) {
        for(int i = 0; i < particles.numOfParticles; i++) {
            dp[i] += (particles[i]->cm - particles[i]->find_cm()).norm();
        }
        this->numOfSamples++;
    }

    void save(){
        for(int i = 0; i < numOfParticles; i++) {
            dp[i] /= numOfSamples;    
        }
        FILE *f = fopen(this->name.c_str(), "w");
        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }

        for(int i = 0; i < numOfParticles; i++){
            fprintf(f, "%d     %lf\n", i, dp[i]);
        }
        fclose(f);
    }
};




class rdf : public Analysis{

    public:
    rdf(int bins, int numOfAtoms, std::string name, Geometry* geometry) : Analysis(geometry){ 
        this->name = name;
        this->bins = bins;
        this->numOfAtoms = numOfAtoms; 
        this->binWidth = sqrt(3*Base::boxDim*Base::boxDim) / bins;
        this->cnt1 = 0;
        this->histo.resize(bins);
        std::fill(this->histo.begin(), this->histo.end(), 0);   //Set all bins to zero
    }
    /*    
    void sample(Particles& particles, int d){
        for(int i = 0; i < particles.atoms.numOfAtoms; i=i+2){ 
            for(int j = 1; j < particles.atoms.numOfAtoms; j=j+2){
                if(i != j) {
                    double distance = (particles.atoms[i]->pos - particles.atoms[j]->pos).norm();
                    this->histo[(int) (distance / binWidth)]++;
                }
            }
        }
        this->numOfSamples++;
    }
    */
    
    void sample(Particles& particles, int d){
        //printf("test\n");
        for(int i = 0; i < particles.atoms.numOfAtoms; i++){ 
            if(particles.atoms[i]->name == "Na") {
                for(int j = 0; j < particles.atoms.numOfAtoms; j++){
                    if(particles.atoms[j]->name == "Cl") {  
                        double distance = geometry->dist(particles.atoms[i]->pos, particles.atoms[j]->pos);
                        //double distance = (particles.atoms[i]->pos - particles.atoms[j]->pos).norm();
                        //printf("%f\n", distance);
                        this->histo[(int) (distance / binWidth)]++;
                    
                        //printf("%f\n", this->histo[(int) (distance / binWidth)]);
                    }
                } 
            } 
        }
        this->numOfSamples++;
        //if(i == particles.atoms.numOfAtoms){
          //this->cnt1 = particles.atoms.numOfAtoms/2;
          //printf("Number of Na is: %d\n", cnt1);
        //}
    }
    
    
    void save(){
        for(int i = 0; i < bins; i++){
            double avgConc;
            if (i==bins-1){ 
                avgConc = this->numOfAtoms/(Base::boxDim*Base::boxDim*Base::boxDim);
                //printf("Average number of Cl atoms is: %f\n", avgConc/2);
            }
            //printf("Surface area: %f\n", 4 * constants::PI * (i+1) * this->binWidth * (i+1) * this->binWidth * this->binWidth);
            this->histo[i] = this->histo[i] / (4 * constants::PI * (i+1) * this->binWidth * (i+1) * this->binWidth * this->binWidth * pow(this->numOfAtoms,2)/4 * this->numOfSamples) * (Base::boxDim*Base::boxDim*Base::boxDim);
                       //histo[i] / this->numOfAtoms / (4 * constants::PI * (i + 1) * this->binWidth * (i + 1) * this->binWidth * this->binWidth);
        }  
        int i = 0;
           
        FILE *f = fopen(this->name.c_str(), "w");
        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }

        for(i = 0; i < bins; i++){
            fprintf(f, "%lf     %lf\n", (double)i * this->binWidth, this->histo[i]);
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

    void sample(Particles& particles, int d){

        for(auto index : indices){
            positions.push_back(particles.atoms[index]->pos);
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
