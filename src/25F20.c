#include <ultra64.h>
#include "functions.h"
//This is actually sqrt!

void func_80025320(float* arg0, float* arg1, float* arg2) {
    float temp_f0_2;
    float temp_f2_2;


    temp_f0_2 = func_8006ADF0(SQUARE((float)*arg0) + SQUARE((float)*arg1) + SQUARE((float)*arg2));
    if (temp_f0_2 != 0.0f) {
        temp_f2_2 = 1.0f / temp_f0_2;
        *arg0 *= temp_f2_2;
        *arg1 *= temp_f2_2;
        *arg2 *= temp_f2_2;
    }
}
