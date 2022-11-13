#include <ultra64.h>
#include "functions.h"
#include "structs.h"

//Func related with math
f32 func_80024240(struct  unk_struct_80024240 *arg0) {
    f32 temp_f0;
    f32 temp_f0_2;
    f32 temp_f14;
    f32 temp_f2;
    f32 temp_f2_2;

    temp_f0_2 = arg0->unk0;
    temp_f2 = arg0->unk4;
    temp_f14 = arg0->unk8; 
    temp_f0 = sqrtf((temp_f0_2 * temp_f0_2) + (temp_f2 * temp_f2) + (temp_f14 * temp_f14));
    if (temp_f0 != 0.0f) {
        temp_f2_2 = 1.0f / temp_f0;
        arg0->unk0 = arg0->unk0 * temp_f2_2;
        arg0->unk4 = arg0->unk4 * temp_f2_2;
        arg0->unk8 = arg0->unk8 * temp_f2_2;
    }
    return temp_f0;
}


