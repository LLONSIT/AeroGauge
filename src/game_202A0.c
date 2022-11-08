#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"


void func_8001F6A0(s32 arg0, s32 arg1) {
    D_8008C8F4 = arg0;
    D_8008C8F8 = arg1;
}


void osSetTime(s32 arg0, s32 arg1) {
    D_8008C8DC = arg0;
    __osCurrentTime = arg1;
}


void func_8001F6C8(s32 arg0, s32 arg1) {
    D_8008C8DC += arg0;
    __osCurrentTime += arg1;
}


void func_8001F6F4(s32 arg0) {
    D_8008C910 = arg0;
}


void func_8001F700(f64 arg0, f64 arg1) {
    if (arg0 > 0.0) {
        D_8008C900 = 1.0 / arg0;
    }
    if (arg1 > 0.0) {
        D_8008C908 = 1.0 / arg1;
    }
}



void func_8001F75C(u8 arg0, u8 arg1, u8 arg2, u8 arg3) {
    D_8008C8E4 = arg0;
    D_8008C8E8 = arg1;
    D_8008C8EC = arg2;
    D_8008C8F0 = arg3;
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_202A0/func_8001F790.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_202A0/func_8001F998.s")
