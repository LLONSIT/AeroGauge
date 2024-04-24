#include <ultra64.h>
#include "macro.h"
#include "variables.h"
#include "structs.h"
#include "functions.h"

//File declaration
void func_80018CF0(Gfx** gDisplayList);
void func_80018D6C(Gfx** gDisplayList, struct struct_1A230_800* arg1, struct R_G_B_A* colour);

void func_80018CF0(Gfx** gDisplayList) {
    GFX_ASSIGN(Gfx *gDisplayListHead, gDisplayList);
    if (D_8013FC8C & 2) {
        //sizeof?
        func_80018D6C(&gDisplayListHead, D_8013FC80 + 9, D_8013FC80);
        if ((s8)D_8013FF90.unk0 == 5) {
            func_80018D6C(&gDisplayListHead, D_8013FC84 + 9, D_8013FC84);
        }
    }
    GFX_UPDATE(gDisplayList, gDisplayListHead);
}


void func_80018D6C(Gfx** gDisplayList, struct struct_1A230_800* arg1, struct R_G_B_A* colour) {
    Gfx* gDisplayListHead;
    s32 filler[3];
    u16 sp3E;
    u16 sp3C;

    GFX_ASSIGN(gDisplayListHead, gDisplayList);
    gDPPipeSync(gDisplayListHead++);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, colour->red, colour->green, colour->blue, colour->alpha)
    /* Pad two zeros from the right not left*/
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    switch (arg1->unk0) {                              /* irregular */
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
    GFX_UPDATE(gDisplayList, gDisplayListHead);
}
