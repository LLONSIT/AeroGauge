//This is actually sqrt!
extern float func_8006ADF0(float fa);
#define SQ(x) (x*x)

void func_80025320(float* arg0, float* arg1, float* arg2) {
    float temp_f0_2;
    float temp_f2_2;


    temp_f0_2 = func_8006ADF0(SQ((float)*arg0) + SQ((float)*arg1) + SQ((float)*arg2));
    if (temp_f0_2 != 0.0f) {
        temp_f2_2 = 1.0f / temp_f0_2;
        *arg0 *= temp_f2_2;
        *arg1 *= temp_f2_2;
        *arg2 *= temp_f2_2;
    }
}
