#include <ultra64.h>
#include <PR/gbi.h> //for macros
#include "functions.h"
#include "variables.h"
#include "macros.h"
#include "structs.h"


#pragma GLOBAL_ASM("asm/nonmatchings/game_F140/func_8000E540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_F140/func_8000E6B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_F140/func_8000E8D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_F140/func_8000F688.s")

void func_8000F9D4(Gfx** gDisplayList) {

    Gfx *gDisplayListHead;

    gDisplayListHead = *gDisplayList;

    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetEnvColor(gDisplayListHead++, 0x0B, 0x0A, 0x64, 0xF0);
    gDPSetCombineLERP(gDisplayListHead++, TEXEL0, 0, ENVIRONMENT, 0, TEXEL0, 0, ENVIRONMENT, 0, TEXEL0, 0, ENVIRONMENT, 0, TEXEL0, 0, ENVIRONMENT, 0);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetTextureLOD(gDisplayListHead++, G_TL_TILE);
    gDPSetTextureFilter(gDisplayListHead++, G_TF_POINT | 0x2000);
    gDPSetTextureConvert(gDisplayListHead++, G_TC_CONV | 0xC00);
    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_F140/func_8000FAAC.s")

void func_8000FDE0(void) {
}

void func_8000FDE8(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_F140/func_8000FDF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_F140/func_8000FE60.s")
