#include <ultra64.h>

#define SQ(x) (x*x)

void func_80025320(f32* arg0, f32* arg1, f32* arg2) {
    f32 temp_f0_2;
    f32 temp_f2_2;


    temp_f0_2 = sqrtf(SQ((f32)*arg0) + SQ((f32)*arg1) + SQ((f32)*arg2));
    if (temp_f0_2 != 0.0f) {
        temp_f2_2 = 1.0f / temp_f0_2;
        *arg0 *= temp_f2_2;
        *arg1 *= temp_f2_2;
        *arg2 *= temp_f2_2;
    }
}
