#include "common.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80025A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80026000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80026120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80026384.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_8002648C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_800264D4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80026524.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80026578.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_800265A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_800265D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80026B34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80026DE8.s")
/*
s8 func_80027104(Gfx **arg0) {
    Gfx *sp6C;
    u8 *sp68;
    u8 *sp64;


    if ((D_8008EAA8 >= 0) && (D_8008EAA8 <= 0)) {
        sp68 = &D_803856D0;
        sp64 = &D_80385718;
    } else if ((D_8008EAA8 > 0) && (D_8008EAA8 < 3)) {
        sp68 = &D_80385730;
        sp64 = &D_80385778;
    } else if ((D_8008EAA8 >= 3) && (D_8008EAA8 < 4)) {
        sp68 = &D_803856D0;
        sp64 = &D_80385718;
    } else if ((D_8008EAA8 >= 4) && (D_8008EAA8 < 5)) {
        sp68 = &D_80385670;
        sp64 = &D_803856B8;
    }
    sp6C = *arg0;
    func_800555B4(&sp6C);
   gDPSetTextureImage(sp6C, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, sp64);
   gDPTileSync(sp6C);
   gDPSetTile(sp6C, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
   gDPLoadSync(sp6C);
   gDPLoadTLUTCmd(sp6C, G_TX_LOADTILE, 15);
   gDPPipeSync(sp6C);
   gDPSetTextureLUT(sp6C, G_TT_NONE | G_TP_PERSP);
   gDPSetTextureImage(sp6C, G_IM_FMT_CI, G_IM_SIZ_8b, 8, sp68);
   gDPSetTile(sp6C, G_IM_FMT_CI, G_IM_SIZ_8b, 1, sp68, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
   gDPLoadSync(sp6C);
   gDPLoadTile(sp6C, G_TX_LOADTILE, 0, 0, 7.5, 7);
   gDPPipeSync(sp6C);
   gDPSetTile(sp6C, G_IM_FMT_CI, G_IM_SIZ_4b, 1, sp68, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
   gDPSetTileSize(sp6C, G_TX_RENDERTILE, 0, 0, 240, 67);
   gTexRect(sp6C, 99, 213, 115, 221, G_TX_RENDERTILE);
   gDPHalf1(sp6C, 0xE0000000);
   gDPHalf2(sp6C, 0x0400FC00);
   gDPPipeSync(sp6C);
    *arg0 = sp6C;
    D_8008EAA8 += 1;
    if (D_8008EAA8 == 5) {
        D_8008EAA8 = 0;
    }
    return D_8008EAA8;
}*/



#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80027104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_80027424.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_800275EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_26610/func_800277E0.s")

