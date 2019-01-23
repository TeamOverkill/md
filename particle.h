#pragma once

class Particle{
public:
    int numOfAtoms;
    std::vector<Atom*> atoms;
    std::vector< std::vector<int> > bonds;
    std::vector< std::vector<int> > angles;
    std::vector< std::vector<int> > torsions;
    std::vector< std::vector<int> > farNeighbours;

    Particle(){
        numOfAtoms = 0;
    }

    void push_back(Atom* atom){
        atoms.push_back(atom);
        numOfAtoms++;
    }

    int minDistance(std::vector<int>& dist, bool sptSet[])
    {
        // Initialize min value
        int min = INT_MAX, min_index;

        for (int v = 0; v < numOfAtoms; v++)
            if (sptSet[v] == false && dist[v] <= min)
                min = dist[v], min_index = v;

        return min_index;
    }

    void find_far_neighbours() {
        std::vector<std::vector<int> > adjacency(numOfAtoms, std::vector<int>(numOfAtoms, 1));
        //Set up distance (adjecency matrix)
        for(auto& i : adjacency){
            for(auto&& j : i){
                j = 0;
            }
        }

        /// SET UP MATRIX
        for (auto bond : bonds) {
            printf("li: %i, %i\n", bond[0], bond[1]);
            adjacency[atoms[bond[0]]->localIndex][atoms[bond[1]]->localIndex] = 1;
            adjacency[atoms[bond[1]]->localIndex][atoms[bond[0]]->localIndex] = 1;
        }

        /// DJIKSTRAS ALGORITHM
        for (int src = 0; src < numOfAtoms; src++) {
            //farNeighbours.push_back(std::vector<int>);
            //For all atoms do Djikstras to find distances, only save those >= 3 and add to farNeighbours
            std::vector<int> dist(numOfAtoms);
            // distance from src to i

            bool sptSet[numOfAtoms]; // sptSet[i] will be true if vertex i is included in shortest
            // path tree or shortest distance from src to i is finalized

            // Initialize all distances as INFINITE and stpSet[] as false
            for (int i = 0; i < numOfAtoms; i++) {
                dist[i] = INT_MAX;
                sptSet[i] = false;
            }

            // Distance of source vertex from itself is always 0
            dist[src] = 0;

            // Find shortest path for all vertices
            for (int count = 0; count < numOfAtoms - 1; count++) {
                // Pick the minimum distance vertex from the set of vertices not
                // yet processed. u is always equal to src in the first iteration.
                int u = minDistance(dist, sptSet);

                // Mark the picked vertex as processed
                sptSet[u] = true;

                // Update dist value of the adjacent vertices of the picked vertex.
                for (int v = 0; v < numOfAtoms; v++)

                    // Update dist[v] only if is not in sptSet, there is an edge from
                    // u to v, and total weight of path from src to  v through u is
                    // smaller than current value of dist[v]
                    if (!sptSet[v] && adjacency[u][v] && dist[u] != INT_MAX
                        && dist[u] + adjacency[u][v] < dist[v])
                        dist[v] = dist[u] + adjacency[u][v];
            }
            farNeighbours.push_back(dist);
        }
        for(auto neigh : farNeighbours){
            printf("\nnext:\n");
            for(auto at : neigh) {
                printf("%i\n", at);
            }
        }
    }
};