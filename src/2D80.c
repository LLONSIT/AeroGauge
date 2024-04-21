#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80002180.s")

#ifdef NON_MATCHING
void func_80002E3C(u8 arg0, s8 arg1, s32 arg2) {
    u8* sp1C;


    sp1C = &D_80081F00[arg2 & 0xFF];
    if (arg1 != *sp1C) {
        switch (arg1) {
        case 0:
            func_800013C0(3, arg0);
            break;
        case 1:
            func_800013C0(4, arg0);
            break;
        case 2:
            func_800013C0(5, arg0);
            break;
        case 3:
            func_800013C0(6, arg0);
            break;
        case 4:
            func_800013C0(7, arg0);
            break;
        case 5:
            func_800013C0(8, arg0);
            break;
        case 6:
            func_800013C0(9, arg0);
            break;
        case 7:
            func_800013C0(10, arg0);
            break;
        case 8:
            func_800013C0(11, arg0);
            break;
        case 9:
            func_800013C0(12, arg0);
            break;
        }
        *sp1C = arg1;
    }
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80002E3C.s")
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80002F74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80003030.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_800031D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80003288.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80003344.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80003A4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80003FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_800048B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80004A34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80004A5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/2D80/func_80004BF8.s")
