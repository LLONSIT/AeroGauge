#include "ultra64.h"
#include "macro.h"


#pragma GLOBAL_ASM("asm/nonmatchings/57E00/func_80057200.s")

#pragma GLOBAL_ASM("asm/nonmatchings/57E00/func_80057308.s")

void func_80057844(Gfx **gDisplayList) {
    GFX_ASSIGN(Gfx *gDisplayListHead, gDisplayList);
    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetCombineLERP(gDisplayListHead++, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0, 0, 0, 0, PRIMITIVE, 0, 0, 0, TEXEL0);
    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0, 0, 0, 255)
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetTextureLOD(gDisplayListHead++, G_TL_TILE);
    gDPSetTextureFilter(gDisplayListHead++, G_TF_POINT | 0x2000);
    gDPSetTextureConvert(gDisplayListHead++, G_TC_CONV | 0xC00);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    GFX_UPDATE(gDisplayList, gDisplayListHead);
}
