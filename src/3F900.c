#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "macro.h"


TEX_RGBA_16 D_80399100;
TEX_RGBA_16 D_803992F8;

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_8003ED00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_8003EDFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_8003EF88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_8003F4A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_8003F98C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_8003FC40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80040010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80040138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80040698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80040860.s")

void func_80040BBC(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;

    GFX_ASSIGN(gDisplayListHead, gDisplayList);

    func_800555B4(&gDisplayListHead);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, &D_803992F8);
    gDPTileSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0,
        G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP,
        G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTLUTCmd(gDisplayListHead++, G_TX_LOADTILE, 15);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, &D_80399100);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x001E, 0x00F4);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x00F4);
    gSPTextureRectangle(gDisplayListHead++, 0x01CC, 0x00CC, 0x04A4, 0x01C4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);

    GFX_UPDATE(gDisplayList, gDisplayListHead);
}

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80040DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80041278.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_8004149C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80041618.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_8004184C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80041964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_800419D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80041AF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/3F900/func_80041D2C.s")
