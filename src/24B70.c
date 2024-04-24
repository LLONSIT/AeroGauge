#include <ultra64.h>
#include "functions.h"
#include "structs.h"

#pragma GLOBAL_ASM("asm/nonmatchings/24B70/func_80023F70.s")

void func_80024094(s32 arg0[], s32 arg1, s32 arg2) {
    s32 temp_v0;
    s32* temp_a3;
    s32* temp_v1;

    temp_v0 = arg0[arg1];
    arg0[arg1] = arg0[arg2];
    arg0[arg2] = temp_v0;
}
