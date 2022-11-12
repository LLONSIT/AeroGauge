#include <ultra64.h>
#include "structs.h"
#include <PR/gbi.h> //for macros
#include "functions.h"
#include "variables.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_80019630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_800199A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_80019B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_80019D0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001A020.s")

void func_8001A750(s32* arg0, struct unk_struct_8001A750 *arg1, s32 arg2) {
    s32 sp24;
    s8 *sp18;
    short pad;
    
    sp24 = *arg0;
    func_8001F75C(0xB5, 0x60, 0x14, 0xFF);
    osSetTime(arg1->unk2 - 0x3C, arg1->unk4 + 0x13);
    sprintf(&sp18 - 2, &D_80096C94, (s32) ((f64) arg1->unk10 * D_80096CD0));
    func_8001F790(&sp24, &sp18 - 2, &D_8008C8CC);
    *arg0 = sp24;
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001A7FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001A9D4.s")


/*
void func_8001AB94(Gfx** arg0, struct struct_8001AB94   *arg1) {

    if (arg1->unk10 != 0) {

    gDPPipeSync(arg0);
    gDPSetRenderMode(arg0, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetCombineMode(arg0, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(arg0, 'x', 0xff, 0xFF, 0xFF, 0xFF, 0xFF);

    func_80019D0C(&arg0, arg1->unk0, arg1->unk2, arg1->unk10, 0);
    }
    //*arg0 = sp3C;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001AB94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001AC64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001ADC4.s")

void func_8001AFFC(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001B004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001B35C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001B58C.s")




struct unk_struct_8013FC *D_8013FC80;

void func_8001BAD4(void) {
    D_8008B7DC = 0x7F;
    D_8008B7E0 = 0xFF;
    D_8008B7E4 = 0x141 - D_8013FC80->unkFC; 
    D_8008B7E8 = 0;
    D_8008B7EC = 0x140;
    }


//#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001BAD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A230/func_8001BB20.s")
