#include "frame.h"

Frame::Frame(){
    std::vector<std::vector < double > > temp(Base::num_of_atoms);
    for(int i = 0; i < Base::num_of_atoms; i++){
        temp[i].resize(6);
    }
    coordinates = temp;
    num_of_frames++;
}

void Frame::saveCoordinates(Atom **atoms){
    for(int i = 0; i < Base::num_of_atoms; i++){
        //std::cout << atoms[i]->pos << std::endl;
        coordinates[i][0] = atoms[i]->pos[0];
        coordinates[i][1] = atoms[i]->pos[1];
        coordinates[i][2] = atoms[i]->pos[2];

        coordinates[i][3] = atoms[i]->vel[0];
        coordinates[i][4] = atoms[i]->vel[1];
        coordinates[i][5] = atoms[i]->vel[2];
    }

}

void Frame::save_to_file(Frame **frames){
    int i = 0;
    FILE *f = fopen("output.gro", "w");
    if(f == NULL){
        printf("Can't open file!\n");
        exit(1);
    }
    for(int j = 0; j < Frame::num_of_frames; j++){
        fprintf(f, "Generated by Slaymulator, t=%i\n", j);
        fprintf(f, "%d\n", Base::num_of_atoms);
        for(i = 0; i < Base::num_of_atoms; i++){
            fprintf(f, "%5d%-5s%5s%5d%8.3f%8.3f%8.3f%8.4f%8.4f%8.4f\n", 1, "ion", "asd", i + 1, frames[j]->coordinates[i][0], frames[j]->coordinates[i][1], frames[j]->coordinates[i][2], \
            frames[j]->coordinates[i][3], frames[j]->coordinates[i][4], frames[j]->coordinates[i][5]);
        }
        fprintf(f, "%lf    %lf     %lf\n", Base::box_dim, Base::box_dim, Base::box_dim);
    }
    fclose(f);
}