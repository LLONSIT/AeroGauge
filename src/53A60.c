#include "ultra64.h"
#include "variables.h"
#include "functions.h"
#include "macro.h"

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80052E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80052F84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80053238.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80053318.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80053394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80053788.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80053B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80053E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80054290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_800546A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80054AB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80054DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_800550D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80055338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_800555B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80055674.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80055734.s")

void func_800557F4(Gfx** gDisplayList, struct R_G_B_A* colour) {
    GFX_ASSIGN(Gfx* gDisplayListHead, gDisplayList);
    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    gDPSetRenderMode(gDisplayListHead++, G_RM_OPA_SURF, G_RM_OPA_SURF2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEI_PRIM, G_CC_MODULATEI_PRIM);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, colour->red, colour->green, colour->blue, colour->alpha);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetTextureLOD(gDisplayListHead++, G_TL_TILE);
    gDPSetTextureFilter(gDisplayListHead++, G_TF_BILERP);
    gDPSetTextureConvert(gDisplayListHead++, G_TC_FILT);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    GFX_UPDATE(gDisplayList, gDisplayListHead);
}

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_800558FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80055A04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80055B14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80055B80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_80055DE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_800564B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/53A60/func_800569BC.s")
