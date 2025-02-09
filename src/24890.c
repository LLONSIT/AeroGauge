#include <ultra64.h>
#include "functions.h"

//.data, rodata
extern f32 D_80097230;
extern f32 D_80097234;
extern f64 D_80097238;
extern f64 D_80097240;

//File declarations
f32 func_80023E7C(f32 arg0, f32 arg1);

#pragma GLOBAL_ASM("asm/nonmatchings/24890/func_80023C90.s")

f32 func_80023E7C(f32 arg0, f32 arg1) {
    if (arg1 == 0.0f) {
        if (arg0 > 0.0f) {
            return D_80097230;
        }
        if (arg0 < 0.0f) {
            return D_80097234;
        }
    }

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
