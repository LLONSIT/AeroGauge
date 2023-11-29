#include <ultra64.h>
#include "structs.h"
#include <PR/gbi.h> //For macros.
#include "functions.h"
#include "variables.h"
#include "macros.h" //For another macros.
#include "race_core.h" //Temp?

/*******************************************
*
*  	AeroGauge Printf scheme:
* 	if format.
*    sprintf->dest->Print_text->message.
*	else.
*	Print_text->message.
*
*
*
*************************************/



/********************************************************
*
* INFO: Implement osSetTime!!!!!
*
*********************************************************/

extern struct gSelector_2 gSelector;


#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_80019630.s")

extern struct in_local_unkStruct D_8013FBD8;
extern s32 D_8013FC94;

//Match assist: tcmg2.
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
        Update_RGBA_Colors(0xB5U, 0x60U, 0x14U, 0xFFU);
    } else {
        Update_RGBA_Colors(0xFFU, 0xFFU, 0xFFU, 0xFFU);
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
    Update_RGBA_Colors(0xB5, 0x60, 0x14, 0xFF);
    osSetTime(in_race->unk2 - 0x3C, in_race->unk4 + 0x13); //TODO
    sprintf(&dest - 2, &D_80096C94, (s32) ((f64) in_race->PlayerPos * D_80096CD0));
    Print_text(&gDisplayListHead, &dest - 2, &D_8008C8CC);
    *gDisplayList = gDisplayListHead;
}


#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001A7FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001A9D4.s")


/**************************************************


 Initialize the color and set the render mode.




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

void func_8001AC64(Gfx** gDisplayList, struct in_local_struct_8001AB94* arg1) {
    Gfx* gDisplayListHead;

    gDisplayListHead = *gDisplayList;

    if (arg1->unk8 % 64) {
        Update_RGBA_Colors(0xFF, 0xFF, 0, 0xFF);
    } else {
        Update_RGBA_Colors(0xFF, 0xFF, 0, 0x7F);
    }

    osSetTime(0x6A, arg1->unk2);
    Print_text(&gDisplayListHead, &D_80096C98, &D_8008C540);

    gDPPipeSync(gDisplayListHead++);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0x00, 0x96);
    gDPSetRenderMode(gDisplayListHead++, G_RM_CLD_SURF, G_RM_NOOP2);

    if (arg1->unkC == 1) {
        func_80019D0C(&gDisplayListHead, arg1->unk0, arg1->unk2, arg1->unk10, 0);
    } else if (arg1->unkC == 2) {
        func_80019D0C(&gDisplayListHead, arg1->unk0, arg1->unk2, arg1->unk10, 1);
    }
    *gDisplayList = gDisplayListHead;
}

void func_8001ADC4(Gfx** gDisplayList,  struct struct_8001AB94* arg1, struct unk_8001ADC4* arg2) {
    Gfx* gDisplayListHead;
    s8 sp40[1];
    void* temp_a3;

    if (((gSelector.unk0 != 0) || (gSelector.unk19 != 0)) && (gSelector.unk0 != 4) && (gSelector.unk0 != 2)) {
        gDisplayListHead = *gDisplayList;
        if ((ABS(arg2->unk50) % 2)) { //IDO tricks: int promotion
            if (arg2->unk50  > 0) {
                Update_RGBA_Colors(0, 0x15, 0xAE, 0xFF);
            } else if (arg2->unk50 < 0) {
                Update_RGBA_Colors(0xB5, 0x60, 0x14, 0xFF);
            }
        } else {
            Update_RGBA_Colors(0xFF, 0xFF, 0xFF, 0xFF);
        }
        osSetTime(arg1->unk0, arg1->unk2);
        sprintf(&sp40, &D_80096CA4, arg2->unk48);
        Print_text(&gDisplayListHead, &sp40, arg1->unkC);
        Update_RGBA_Colors(0xFF, 0xFF, 0xFF, 0xFF);
        osSetTime(arg1->unk0 + 0x2A, arg1->unk2 + 0x10);
        sprintf(&sp40, &D_80096CA8, (u8) gPlayerRacePos); //Print player position in race (second number)
        Print_text(&gDisplayListHead, &sp40, arg1->unk10);
        gDPPipeSync(gDisplayListHead++);
        gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
        //to check.
        gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
        func_80019D0C(&gDisplayListHead, (arg1->unk0 + 0x1E) & 0xFFFF, (arg1->unk2 + 0x10) & 0xFFFF, arg1->unk14, 0);
        temp_a3 = arg1->unk18;
        if (arg1->unk18 != NULL) {
            func_80019D0C(&gDisplayListHead, (arg1->unk0 + 0x1F) & 0xFFFF, (arg1->unk2 + 4) & 0xFFFF, temp_a3, 0);
        }
        *gDisplayList = gDisplayListHead;
    }
}

UNUSED func_8001AFFC(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001B004.s")

void func_8001B35C(Gfx** gDisplayList, struct unk_8001B35C* arg1, struct R_G_B_A* color) {
    Gfx* gDisplayListHead = *gDisplayList;
    s32 temp_f4;

    gDPPipeSync(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | G_RM_PASS, CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | G_RM_NOOP2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    func_80019D0C(&gDisplayListHead, (s32) arg1->unkC, (s32) arg1->unkE, arg1->unk1C, 0);
    /* to check */
    temp_f4 = (s32) (((f64) arg1->unk10 * D_80096CD8) / 100.0);
    func_8001A9D4(&gDisplayListHead, arg1->unkC, ((arg1->unkE - temp_f4) + 0x2B) & 0xFFFF, 6, temp_f4);
    gDPPipeSync(gDisplayListHead++);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);
    gDPSetRenderMode(gDisplayListHead++, G_RM_CLD_SURF, G_RM_NOOP2);
    func_80019D0C(&gDisplayListHead, (s32) arg1->unk4, (s32) arg1->unk6, arg1->unk14, 0);
    gDPPipeSync(gDisplayListHead++);
    gDPSetRenderMode(gDisplayListHead++, G_RM_CLD_SURF, G_RM_NOOP2);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, color->red, color->green, color->blue, color->alpha);
    func_80019D0C(&gDisplayListHead, (s32) arg1->unk8, (s32) arg1->unkA, arg1->unk18, 0);
    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001B58C.s")




extern struct unk_struct_8013FC *D_8013FC80;

void func_8001BAD4(void) {
    D_8008B7DC = 0x7F;
    D_8008B7E0 = 0xFF;
    D_8008B7E4 = 0x141 - D_8013FC80 -> unkFC;
    D_8008B7E8 = 0;
    D_8008B7EC = 0x140;
    }


#pragma GLOBAL_ASM("asm/nonmatchings/race/race_core/func_8001BB20.s")
