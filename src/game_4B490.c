#include <ultra64.h>
#include <PR/gbi.h> //for macros
#include "functions.h"
#include "variables.h"
#include "macros.h"
#include "structs.h"

//in
extern UNK_TYPE D_8008F168;
extern UNK_TYPE D_80352FC0;

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004A890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004AB6C.s")

void func_8004ACF0(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;

    gDisplayListHead = *gDisplayList;

    func_800557F4(&gDisplayListHead, &D_8008F168);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 80,  &D_80352FC0);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 10, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x013C, 0x003C);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 10, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x013C, 0x003C);
    gSPTextureRectangle(gDisplayListHead++, 0x00A0, 0x0188, 0x01A8, 0x01C8, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    gDPPipeSync(gDisplayListHead++);

    *gDisplayList = gDisplayListHead;
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004AE74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004B0D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004B5E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004B744.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004C20C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004CE98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004D284.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004D4B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004D6D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004D8C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004DC3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004E7C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_4B490/func_8004ECEC.s")
