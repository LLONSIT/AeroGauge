#include "ag_math.h"

/**
 * Copy the specified matrix, or vectors?.
 *
 * @param dest_matrix Destination matrix
 * @param source_matrix Source matrix to copy to destination.
 */
void copymtx(Matrix dest_matrix, Matrix source_matrix) {
    int i,j;
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            source_matrix[i][j] = dest_matrix[i][j];
        }
     }
}

