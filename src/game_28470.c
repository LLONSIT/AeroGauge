#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80027870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80028298.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_800283D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_800285B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80028710.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80028950.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_800289D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80028B04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80028C9C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80028DB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80029250.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80029474.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80029514.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_800297DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80029A94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80029B6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80029E98.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_80029F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002A0D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002A8F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002AD2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002B128.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002B2D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002B6D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002B8F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002BC28.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002BE5C.s")

extern u8 D_803BB5F0; //idk the format

void func_8002C080(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;


    gDisplayListHead = *gDisplayList;
    func_80057844(&gDisplayListHead);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 128, &D_803BB5F0);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 16, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x01FC, 0x003C);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_I, G_IM_SIZ_8b, 16, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x01FC, 0x003C);
    gSPTextureRectangle(gDisplayListHead++, 0x02A4, 0x006C, 0x0494, 0x010C, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002C1E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002C300.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002C480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002CB40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002CBD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002CD88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002D0C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002D2A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_28470/func_8002D350.s")
