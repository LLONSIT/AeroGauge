#include <ultra64.h>
#include "functions.h"
#include "structs.h"
#include "macro.h"


f32 func_80024240(struct unk_struct_80024240 *arg0) {
    f32 temp_f0;
    f32 temp_f2_2;

    temp_f0 = func_8006ADF0(SQUARE(arg0->unk0) +
        SQUARE(arg0->unk4) +
        SQUARE(arg0->unk8));

    if (temp_f0 != 0.0f) {
        temp_f2_2 = 1.0f / temp_f0;
        arg0->unk0 = (f32) (arg0->unk0 * temp_f2_2);
        arg0->unk4 = (f32) (arg0->unk4 * temp_f2_2);
        arg0->unk8 = (f32) (arg0->unk8 * temp_f2_2);
    }
    return temp_f0;
}
