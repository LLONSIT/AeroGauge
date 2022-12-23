#include <ultra64.h>
#include "structs.h"
#include <PR/gbi.h> //for macros
#include "functions.h"
#include "variables.h"
#include "macros.h" //for another macros

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_80019630.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_800199A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_80019B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_80019D0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001A020.s")

void func_8001A750(s32* arg0, struct race_unk *r, s32 arg2) {
    s32 sp24;
    s8 *dest;
    short pad;

    sp24 = *arg0;
    func_8001F75C(0xB5, 0x60, 0x14, 0xFF);
    osSetTime(r->unk2 - 0x3C, r->unk4 + 0x13); //TODO, maybe this structure is OSTime and maybe, is divided in two parts?
    sprintf(&dest - 2, &D_80096C94, (s32) ((f64) r->unk10 * D_80096CD0));
    func_8001F790(&sp24, &dest - 2, &D_8008C8CC);
    *arg0 = sp24;
}


#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001A7FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001A9D4.s")

void col_init(Gfx** gDisplayList, struct struct_8001AB94* arg1) {
    Gfx* gDisplayListHead;
    s32 pad[2];

    gDisplayListHead = *gDisplayList;
    if (arg1->unk10 != 0) {
        gDPPipeSync(gDisplayListHead++);
        gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
        gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 255, 255, 255, 200);
        func_80019D0C(&gDisplayListHead, arg1->unk0, arg1->unk2, arg1->unk10, 0);
    }
    *gDisplayList = gDisplayListHead;
}

//#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001AB94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001AC64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001ADC4.s")

UNUSED func_8001AFFC(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001B004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001B35C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001B58C.s")




struct unk_struct_8013FC *D_8013FC80;

void func_8001BAD4(void) {
    D_8008B7DC = 0x7F;
    D_8008B7E0 = 0xFF;
    D_8008B7E4 = 0x141 - D_8013FC80->unkFC;
    D_8008B7E8 = 0;
    D_8008B7EC = 0x140;
    }


//#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001BAD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001BB20.s")
