#include <ultra64.h>
#include <PR/gbi.h> //for macros
#include "structs.h"
#include "functions.h"
#include "variables.h"
#include "macros.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_800464E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80047148.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80047518.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80047A78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80047C54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80047F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80048014.s")

void func_800484DC(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;

    gDisplayListHead = *gDisplayList;

    func_80057844(&gDisplayListHead);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 16, &D_803BBDF8);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 2, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x003C, 0x00BC);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 2, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x00BC);
    gSPTextureRectangle(gDisplayListHead++, 0x02C8, 0x00B4, 0x049C, 0x0174, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    gSPTextureRectangle(gDisplayListHead++, 0x02C8, 0x01AC, 0x049C, 0x026C, G_TX_RENDERTILE, 0, 0x05E0, 0x0400, -0x0400);
    gDPPipeSync(gDisplayListHead++);

    *gDisplayList = gDisplayListHead;
}

void func_800486B0(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;


    gDisplayListHead = *gDisplayList;

    func_80057844(&gDisplayListHead);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 96, &D_803B8920);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 12, NULL, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x017C, 0x00A4);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 12, NULL, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x017C, 0x00A4);
    gSPTextureRectangle(gDisplayListHead++, 0x005C, 0x0240, 0x01DC, 0x02E8, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    gDPPipeSync(gDisplayListHead++);

    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_8004882C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80048D84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80048EFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80048F78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_8004998C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80049BA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_80049E34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_8004A0E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_8004A364.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_8004A3B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_470E0/func_8004A584.s")
