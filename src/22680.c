#include "ultra64.h"

extern u8 D_8008CD10;
extern u8 D_8008CD14;
extern u8 D_8008CD18;
extern u8 D_8008CD1C;
extern u8 D_8008CD20;
extern u8 D_8008CD24;
extern u8 D_8008CD28;
extern u8 D_8008CD2C;
extern u8 D_8008CD30;
extern u8 D_8008CD34;
extern u8 D_8008CD38;
extern u8 D_8008CD3C;
extern u8 D_8008CD40;
extern u8 D_8008CD44;
extern u8 D_8008CD48;

void func_80021A80(u8 arg0, u8 arg1, u8 arg2, u8 arg3, u8 arg4, u8 arg5, u8 arg6, u8 arg7, u8 arg8, u8 arg9, u8 argA, u8 argB, u8 argC, u8 argD, u8 argE) {
    D_8008CD10 = arg0;
    D_8008CD14 = arg1;
    D_8008CD18 = arg2;
    D_8008CD1C = arg3;
    D_8008CD20 = arg4;
    D_8008CD24 = arg5;
    D_8008CD28 = arg6;
    D_8008CD2C = arg7;
    D_8008CD30 = arg8;
    D_8008CD34 = arg9;
    D_8008CD38 = argA;
    D_8008CD3C = argB;
    D_8008CD40 = argC;
    D_8008CD44 = argD;
    D_8008CD48 = argE;
}

#pragma GLOBAL_ASM("asm/nonmatchings/22680/func_80021B38.s")
