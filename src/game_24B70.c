#include <ultra64.h>
#include "variables.h"
#include "structs.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_24B70/func_80023F70.s")

void func_80024094(s32 arg0[], s32 arg1, s32 arg2) {
    int temp = arg0[arg1]; //Fix something??
    arg0[arg1] = arg0[arg2];
    arg0[arg2] = temp;
}
