#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "macro.h"


extern int D_8008EDC8;

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80036F40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80037280.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_800375E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80037870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80037D30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80037DA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80037FC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80038BF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80038FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_800390B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_800394C8.s")

void func_80039670(Gfx** gDisplayList) {
    GFX_ASSIGN(Gfx* gDisplayListHead, gDisplayList);
    func_800557F4(&gDisplayListHead, &D_8008EDC8);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 56, &D_80356118);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 7, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x00DE, 0x0048);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_4b, 7, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x01BC, 0x0048);
    if (D_8019E350 != 0) {
    gSPTextureRectangle(gDisplayListHead++, 0x024C, 0x0174, 0x03F8, 0x01C0, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    } else {
    gSPTextureRectangle(gDisplayListHead++, 0x0248, 0x011C, 0x03F4, 0x0168, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    }
    gDPPipeSync(gDisplayListHead++);
    GFX_UPDATE(gDisplayList, gDisplayListHead);
}

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80039868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/37B40/func_80039D9C.s")
