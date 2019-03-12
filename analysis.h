template <typename G>
class Analysis{
    public:

    std::vector<double> histo;
    int numOfSamples;
    int numOfAtoms;
    int numOfParticles;
    int bins;
    int sampleFreq;
    double binWidth;
    int cnt1, cnt2;
    std::string name;
    //Geometry<Rectangular<true, true, true>>* geometry;
    G *geometry;

    virtual void sample(Particles& particles, int d) = 0;
    virtual void save() = 0;

    //template<typename T>
    //Analysis(Geometry<Rectangular<true, true, true>>* geometry){
    Analysis(G *geometry){
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





template <typename G>
class MSD : public Analysis<G> {
    std::vector<double> msd;
    std::vector<Eigen::Vector3d> oldPos;
    double msd_avg=0;
    double msd_avg_acc=0;
    int cnt;
    public:


    MSD(int numOfParticles, int sampleFreq, std::string name, G *geometry) : Analysis<G>(geometry){
        this->name = name;
        this->numOfParticles = numOfParticles;
        this->numOfSamples = 0;
        this->sampleFreq = sampleFreq;
    }
    /* 
    void sample(Particles& particles, int d) {
        for(int i = 0; i < particles.numOfParticles; i++) {
            msd_avg += geometry->dist(particles[i]->cm, particles[i]->find_cm())*geometry->dist(particles[i]->cm, particles[i]->find_cm());
            //std::cout << "current cm: " << particles[i]->cm << "\nNew cm: " <<  particles[i]->find_cm() << "\n";
        }
        if (numOfSamples == 0) 
            msd.push_back(0);
        msd_avg /= numOfParticles;
        msd_avg_acc += msd_avg;
        msd.push_back(msd_avg_acc);
        this->numOfSamples++;
    }
    */
    void sample(Particles& particles, int d) { 
        this->msd_avg = 0.000;
        cnt = 0;
        for(int i = 0; i < particles.atoms.numOfAtoms; i++) {
            if(particles.atoms[i]->name == "O") {
                
                if (this->numOfSamples==0){
                    this->oldPos.push_back(particles.atoms[i]->pos);
                    //std::cout << "Position of particle: " << particles.atoms[i]->pos << "\n";
                }
                else {
                    //printf("index, %i\n", i);
                    //printf("Number of atoms: %i\n", particles.atoms.numOfAtoms);
                    this->msd_avg += this->geometry->dist(particles.atoms[i]->pos, this->oldPos.at(cnt)) *
                            this->geometry->dist(particles.atoms[i]->pos, this->oldPos.at(cnt));
                    //if (cnt == particles.numOfParticles-1){
                    //    std::cout << "Old pos: " << oldPos.at(cnt) << "\n";
                    //}
                    //if (numOfSamples%100==0) 

                        //std::cout << "Displacement of particle: " << geometry->dist(particles.atoms[i]->pos, oldPos[i]) << "\n\n";                 
                    
                    this->oldPos.at(cnt) = particles.atoms[i]->pos;
                }
                cnt++;
            } //std::cout << "current cm: " << particles[i]->cm << "\nNew cm: " <<  particles[i]->find_cm() << "\n";
        }


        if (this->numOfSamples == 0) 
            this->msd.push_back(0);
        else {
            this->msd_avg /= this->numOfParticles;
            this->msd_avg_acc += this->msd_avg;
            this->msd.push_back(this->msd_avg_acc);
        }
        this->numOfSamples++;
    }


    void save(){
            //for(int i = 0; i < numOfParticles; i++) {
            //    msd[i] /= numOfSamples;    
            //}
        FILE *f = fopen(this->name.c_str(), "w");
        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }
        
            //std::string row = ""; 
        for(int i = 0; i < this->numOfSamples; i++){
            
            fprintf(f, "%f  %.15lf\n", i*Base::tStep*this->sampleFreq, this->msd[i]);
                //row += std::to_string(msd[i][j])+" ";
        }
        //fprintf(f, "%s\n", row.c_str());
        fclose(f);
        
    }
};






template <typename G>
class RDF : public Analysis<G>{

    public:
    int numOfPairs;

    RDF(int bins, int numOfParticles, std::string name, G* geometry) : Analysis<G>(geometry){
        this->name = name;
        this->bins = bins;
        this->numOfParticles = numOfParticles; 
        this->binWidth = sqrt(3) * this->geometry->box[0] / 2.0 / bins;
        this->binWidth = sqrt(3.0 * geometry->box[0] * geometry->box[1]) / bins;
        this->cnt1 = 0;
        this->histo.resize(bins);
        std::fill(this->histo.begin(), this->histo.end(), 0);   //Set all bins to zero
    }
    
    void sample(Particles& particles, int d){
        //printf("test\n");
        /*
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
        */
        numOfPairs = 0;
        for(int i = 0; i < particles.atoms.numOfAtoms; i++) {
            if (particles.atoms[i]->name == "O") { 
                for(int j = i+1; j < particles.atoms.numOfAtoms; j++) {
                    if(particles.atoms[j]->name == "O") {
                        double distance = this->geometry->dist(particles.atoms[i]->pos, particles.atoms[j]->pos);
                        this->histo[(int) (distance / this->binWidth)]++;
                        
                        numOfPairs++;

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
        for(int i = 0; i < this->bins; i++){
            double avgConc;
            if (i==0){ 
                avgConc = this->numOfParticles/(Base::boxDim*Base::boxDim*Base::boxDim);
                printf("Average conc of water molecules is: %f\n", avgConc);
            }
            //printf("Surface area: %f\n", 4 * constants::PI * (i+1) * this->binWidth * (i+1) * this->binWidth * this->binWidth);

            this->histo[i] = this->histo[i] / (4.0 * constants::PI * (i + 1) * this->binWidth * (i + 1) *
                        this->binWidth * this->binWidth * pow(this->numOfAtoms, 2) / 4.0 * this->numOfSamples) *
                             (Base::boxDim * Base::boxDim * Base::boxDim);

            //this->histo[i] = this->histo[i] / (4 * constants::PI * (i+1) * this->binWidth * (i+1) * this->binWidth * this->binWidth * avgConc * numOfPairs * this->numOfSamples) * (this->numOfParticles-1);
            //printf("Surface area: %f\n", 4 * constants::PI * (i+1) * this->binWidth * (i+1) * this->binWidth * this->binWidth);
           //histo[i] / this->numOfAtoms / (4 * constants::PI * (i + 1) * this->binWidth * (i + 1) * this->binWidth * this->binWidth);
        }  
        int i = 0;
           
        FILE *f = fopen(this->name.c_str(), "w");
        if(f == NULL){
            printf("Can't open file!\n");
            exit(1);
        }

        for(i = 0; i < this->bins; i++){
            fprintf(f, "%lf     %lf\n", (double)i * this->binWidth, this->histo[i]);
        }
        fclose(f);
    }
};






template <typename G>
class Track : public Analysis<G>{
    std::vector<int> indices;
    std::vector<Eigen::Vector3d> positions;

public:
    Track(std::vector<int> indices, std::string name, G* geometry) : Analysis<G>(geometry){
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
