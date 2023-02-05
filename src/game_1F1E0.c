#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002E5E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002E6A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002EB44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002EDF8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002F290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002F3EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002F7D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002F994.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_800302E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_800306E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80030D44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80030F70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_800313A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8003150C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80031AE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80031B40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80031E34.s")
/*extern void func_80055674(Gfx **);                           /* extern */
extern Gfx *D_80351538;
extern Gfx *D_803515C0;
/*
void func_80032418(Gfx **arg0) {
    Gfx *sp84;


    sp84 = *arg0;
    func_80055674(&sp84);

    gDPSetTextureLUT(sp84, G_TT_NONE | G_TP_PERSP);
    gDPSetTextureImage(sp84, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, &D_803515C0);
    gDPTileSync(sp84);
    gDPSetTile(sp84, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(sp84);
    gDPLoadTLUTCmd(sp84, G_TX_LOADTILE, 15);
    gDPPipeSync(sp84);
    gDPSetTextureImage(sp84, G_IM_FMT_CI, G_IM_SIZ_8b, 8, &D_80351538);
    gDPSetTile(sp84, G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(sp84);
    gDPLoadTile(sp84, G_TX_LOADTILE, 0, 0, qu102(7.5), qu102(15));
    gDPPipeSync(sp84);
    gDPSetTile(sp84, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(sp84, G_TX_RENDERTILE, 0, 0, qu102(240), qu102(195));
    gTexRect(sp84, qu102(720.25), qu102(128), qu102(61), qu102(88), G_TX_RENDERTILE);
    gDPHalf1(sp84, 0x00000000);
    gDPHalf2(sp84, 0x04000400);
    gTexRect(sp84, qu102(720.5), 0, qu102(61), qu102(144), G_TX_RENDERTILE);
    gDPHalf1(sp84, 0x00001E00);
    gDPHalf2(sp84, 0x0400FC00);
    gTexRect(sp84, qu102(109), qu102(72), qu102(125), qu102(88), G_TX_RENDERTILE);;
    gDPHalf1(sp84, 0x01E00000);
    gDPHalf2(sp84, 0xFC000400);
    gTexRectFlip(sp84, qu102(109), qu102(128), qu102(125), qu102(144), G_TX_RENDERTILE);
    gDPHalf1(sp84, 0x01E001E0);
    gDPHalf2(sp84, 0xFC00FC00);
    
    *arg0 = sp84;
}*/
#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80032418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80032754.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80032A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80032AEC.s")

extern u8 D_8008EBCC;
extern Gfx *D_8019EDE4;
extern Gfx *D_8019EDF8;

void func_80032B48(Gfx** gDisplayList) {
    Gfx *gDisplayListHead;
    gDisplayListHead = *gDisplayList;

    if (( D_8008EBCC >= 0xF) && ( D_8008EBCC < 0x1E)) {
       DrawRectangleInDisplayList(&gDisplayListHead, &D_8019EDE4, &D_8019EDF8);
    }
    *gDisplayList = gDisplayListHead;
}

