#include <ultra64.h>
#include "variables.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_24890/func_80023C90.s")

f32 func_80023E7C(f32 arg0, f32 arg1) {
    if (arg1 == 0.0f) {
        if (arg0 > 0.0f) {
            return D_80097230;
        }
        if (arg0 < 0.0f) {
            return D_80097234;
        }
        goto block_5;
    }
block_5:
    if (arg1 < 0.0f) {
        return (f32) ((f64) func_80023C90(arg0 / arg1) + D_80097238);
    }
    if (arg1 > 0.0f) {
        if (arg0 >= 0.0f) {
            return func_80023C90(arg0 / arg1);
        }
        return (f32) ((f64) func_80023C90(arg0 / arg1) + D_80097240);
    }
    return 0.0f;
}

