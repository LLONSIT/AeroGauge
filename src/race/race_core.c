#include <ultra64.h>
#include "structs.h"
#include <PR/gbi.h> //for macros
#include "functions.h"
#include "variables.h"
#include "macros.h" //for another macros

/*

  AeroGauge Printf scheme:

  sprintf->dest->Print_text


*/

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_80019630.s")


struct in_local_unkStruct {

u8 unk0;
u16 unk2;
u16 unk4;
s32 unk8;

};

extern struct in_local_unkStruct D_8013FBD8;
extern s32 D_8013FC94;

//Match assist: tcmg2
void func_800199A0(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;
    s32 sp50;
    s32 sp4C;
    s32 sp48;
    s32 pad0;
    s32 pad1;
    s8 *dest;
    s32 pad2;
    s8 *sp34;

    func_80016238(&sp50, &sp4C, &sp48, D_8013FC94);
    if (D_8013FC8C & 1) {
        Update_speedometer_colors(0xB5U, 0x60U, 0x14U, 0xFFU);
    } else {
        Update_speedometer_colors(0xFFU, 0xFFU, 0xFFU, 0xFFU);
    }

    gDisplayListHead = *gDisplayList;
    gDPPipeSync(gDisplayListHead++);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    osSetTime(D_8013FBD8.unk2, D_8013FBD8.unk4);
    switch (D_8013FBD8.unk0) {                      /* irregular */
    case 0:
        sprintf(&dest,  &D_80096BE4, sp50, sp4C, sp48);
        Print_text(&gDisplayListHead, &dest, &D_8008C8CC);
        pad0 = D_8013FBD8.unk8;
        if (pad0 != NULL) {
            func_80019D0C(&gDisplayListHead, (D_8013FBD8.unk2 - 0x3F) & 0xFFFF, (D_8013FBD8.unk4 + 7) & 0xFFFF, pad0, 0);
        } 
        break;
    case 1:
        sprintf(&dest, &D_80096BF4, sp50, sp4C);
        Print_text(&gDisplayListHead, &dest, &D_8008C8CC);
        func_8001F6C8(0, 8); //switch?
        sprintf(&sp34, &D_80096C00, sp48);
        Print_text(&gDisplayListHead, &sp34, &D_8008C8D4);
        break;
    }
    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_80019B90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_80019D0C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001A020.s")

//D_80096C94 = WRONG WAY
void Render_WRONG_WAY(Gfx** gDisplayList, struct race_a *in_race, s32 unused_arg2) {
    Gfx *gDisplayListHead;
    s8 *dest;
    short filler;

    gDisplayListHead = *gDisplayList;
    Update_speedometer_colors(0xB5, 0x60, 0x14, 0xFF);
    osSetTime(in_race->unk2 - 0x3C, in_race->unk4 + 0x13); //TODO
    sprintf(&dest - 2, &D_80096C94, (s32) ((f64) in_race->PlayerPos * D_80096CD0));
    Print_text(&gDisplayListHead, &dest - 2, &D_8008C8CC);
    *gDisplayList = gDisplayListHead;
}


#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001A7FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001A9D4.s")

/**************************************************


 Initialize the color and set the render mode




**************************************************/
void set_col_render(Gfx** gDisplayList, struct struct_8001AB94* arg1) {
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
    D_8008B7E4 = 0x141 - D_8013FC80 -> unkFC;
    D_8008B7E8 = 0;
    D_8008B7EC = 0x140;
    }


#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001BB20.s")
