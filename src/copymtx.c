#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include "functions.h"
#include "types.h" //Special types for this function

void CopyMatrix(Matrix dest_matrix, Matrix source_matrix) {
    int i,j;
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 4; j++) {
            source_matrix[i][j] = dest_matrix[i][j];
        }
     }
}
