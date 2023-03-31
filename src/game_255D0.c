#include <ultra64.h>
#include "types.h"
#include "functions.h"
#include "variables.h"
#include "macros.h"
#include "structs.h"
#include "types.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_255D0/func_800249D0.s")

void func_80024B18(Mtx* mtx, f32 arg1, f32 arg2, f32 arg3) {
    Matrix sMtx;

    func_800249D0(sMtx, arg1, arg2, arg3);
    guMtxF2L(sMtx, mtx);
}
