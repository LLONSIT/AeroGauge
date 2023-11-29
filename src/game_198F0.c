#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"
#include "macros.h"

extern s32* D_8013FC80;

struct struct_80018D6C {
  u8 unk0;
  u16 unk2;
  u16 unk4;
  s32 unk18;
};

extern s8 gSelector;

void func_80018D6C(Gfx **gDisplayList, struct struct_80018D6C *arg1, struct R_G_B_A *color);

void func_80018CF0(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;

    gDisplayListHead = *gDisplayList;
    if (D_8013FC8C & 2) {
        func_80018D6C(&gDisplayListHead, D_8013FC80 + 9, D_8013FC80);
        if (gSelector == 5) {
            func_80018D6C(&gDisplayListHead, D_8013FC84 + 9, D_8013FC84);
        }
    }
    *gDisplayList = gDisplayListHead;
}

/*
void func_80018D6C(Gfx **gDisplayList, struct struct_80018D6C *arg1, struct R_G_B_A *color) {
    s32 k[3];
    Gfx *gDisplayListHead  =  *gDisplayList;
    u16 sp3E;
    u16 sp3C;

    gDPPipeSync(gDisplayListHead++);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, color->red, color->green, color->blue, color->alpha);
    gDPSetRenderMode(gDisplayListHead++, CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | GBL_c1(G_BL_CLR_MEM, G_BL_A_IN, G_BL_CLR_MEM, G_BL_1MA), CVG_DST_CLAMP | ZMODE_OPA | FORCE_BL | GBL_c2(G_BL_CLR_MEM, G_BL_A_IN, G_BL_CLR_IN, G_BL_1));
    switch (arg1->unk0) {                             
    case 0:
        sp3E = arg1->unk2;
        sp3C = arg1->unk4;
        break;
    case 1:
        sp3E = arg1->unk2 + 0x14;
        sp3C = arg1->unk4 + 0x13;
        break;
    }
    func_80019D0C(&gDisplayListHead, sp3E, sp3C, arg1->unk18, 0);
    *gDisplayList = gDisplayListHead;
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/game_198F0/func_80018D6C.s")
