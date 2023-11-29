#include <ultra64.h>
#include "functions.h"
#include "structs.h"
#include "variables.h"

extern int func_800254F0(f32 *arg0, f32 arg1, s32 arg2);
extern int func_80025578(f32 *arg0, f32 arg1, f32 arg2);

int func_800253C0(f32* arg0, struct unk_struct_80024240* arg1, int arg2) {
    int sp1C = 0;
    if (func_800254F0(arg0, arg1->unk0, arg2) != 0) {
        sp1C = 1;
    }
    if (func_800254F0(arg0 + 1, arg1->unk4, arg2) != 0) {
        sp1C |= 2;
    }
    if (func_800254F0(arg0 + 2, arg1->unk8, arg2) != 0) {
        sp1C |= 4;
    }
    return sp1C;
}

int func_80025458(f32 *arg0, struct unk_struct_80024240* arg1, f32 arg2) {
    int sp1C = 0;
    if (func_80025578(arg0, arg1->unk0, arg2) != 0) {
        sp1C = 1;
    }
    if (func_80025578(arg0 + 1, arg1->unk4, arg2) != 0) {
        sp1C |= 2;
    }
    if (func_80025578(arg0 + 2, arg1->unk8, arg2) != 0) {
        sp1C |= 4;
    }
    return sp1C;
}

int func_800254F0(f32* arg0, f32 arg1, s32 arg2) {
    f32 temp_f0;
    f32 var_f12;

    if (arg2 < 2) {
        *arg0 = arg1;
        return 1;
    }
    temp_f0 = (arg1 - *arg0) / (f32) arg2;
    if (temp_f0 >= 0.0f) {
        var_f12 = temp_f0;
    } else {
        var_f12 = -temp_f0;
    }
    if (var_f12 < 1.52587890625e-05) { //double??
        return 1;
    }
    *arg0 = *arg0 + temp_f0;
    return 0;
}

int func_80025578(f32* arg0, f32 arg1, f32 arg2) {
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f12;

    if ((f64) arg2 <= 1.0) {
        *arg0 = arg1;
        return 1;
    }
    temp_f0 = (arg1 - *arg0) / arg2;
    if (temp_f0 >= 0.0f) {
        var_f12 = temp_f0;
    } else {
        var_f12 = -temp_f0;
    }
    if ((f64) var_f12 < 1.52587890625e-05) {
        return 1;
    }
    *arg0 = *arg0 + temp_f0;
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_25FC0/func_80025610.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_25FC0/func_800256C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_25FC0/func_80025778.s")
