#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"
#include "macros.h"

//temp
extern u8 D_8008EBB0;
extern u8 D_8008EBB4;
extern s8 D_8008F640;
extern s8 D_8008F644;
extern s8 D_8019EE00;
extern s8 D_8019EE01;
extern u8 D_8008EBB0;
extern u8 D_8008EBB4;
extern s32 D_8019E22C;
extern s32 D_8019E240;
extern s32 D_8019E254;
extern s32 D_8019E27C;
extern s32 D_8019E290;
extern s32 D_8019E2A4;
extern s32 D_8019E2B8;
extern s32 D_8019E2CC;
extern Gfx* D_8019EDE4;
extern Gfx *D_8019EDF8;
extern UNK_TYPE D_8019E218;

void func_80032B48(Gfx** gDisplayList);
void func_8002E5E0(Gfx** gdl1, Gfx** gdl2, Gfx** gdl3) {
    Gfx* gdlHead = *gdl1;
    Gfx* gdlHead1 = *gdl2; 
    Gfx* gdlHead2 = *gdl3;
    int temp_v0 = func_80009488();

    if (temp_v0 == 1) {
        D_8019E210 = 1;
        func_8002EB44(&gdlHead, &gdlHead1, &gdlHead2);
    } else if (temp_v0 == 2) {
        D_8019E210 = 2;
        func_8002EDF8(&gdlHead);
    }
    D_8008EBCC++;
    if (D_8008EBCC == 0x1E) {
        D_8008EBCC = 0;
    }
    *gdl1 = gdlHead;
    *gdl2 = gdlHead1;
    *gdl3 = gdlHead2;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002E6A8.s")

//Matched, but it uses bss (not available for now)
#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002EB44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002EDF8.s")

void func_8002F290(u8 arg0) {
    if (arg0 == 1) {
        if ((D_8008F640 != D_8019EE00) && (D_8008F640 != 0)) {
            if (D_8008F640 == -2) {
                if (D_8008EBB0 == 0) {
                    D_8008EBB0 = 6;
                } else {
                    D_8008EBB0 -= 1;
                }
                func_800013C0(0x28, 4);
                return;
            }
            if (D_8008F640 == 2) {
                if (D_8008EBB0 == 6) {
                    D_8008EBB0 = 0;
                } else {
                    D_8008EBB0 += 1;
                }
                func_800013C0(0x28, 4);
            }
        }
    } else if ((arg0 == 2) && (D_8008F644 != D_8019EE01) && (D_8008F644 != 0)) {
        if (D_8008F644 == -2) {
            if (D_8008EBB4 == 0) {
                D_8008EBB4 = 6;
            } else {
                D_8008EBB4 -= 1;
            }
            func_800013C0(0x28, 5);
            return;
        }
        if (D_8008F644 == 2) {
            if (D_8008EBB4 == 6) {
                D_8008EBB4 = 0;
            } else {
                D_8008EBB4 += 1;
            }
            func_800013C0(0x28, 5);
        }
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_8002F3EC.s")

void func_8002F7D8(Gfx** gDisplayList) {
    Gfx* gDisplayListHead = *gDisplayList;
    func_80053E7C(&gDisplayListHead, &D_8019E218);
    func_80053394(&gDisplayListHead, &D_8019E22C);
    func_80053E7C(&gDisplayListHead, &D_8019E254);
    func_80053E7C(&gDisplayListHead, &D_8019E2CC);
    if (D_8019E210 == 1) {
        func_80053E7C(&gDisplayListHead, &D_8019E27C);
        func_80053E7C(&gDisplayListHead, &D_8019E290);
        func_80053E7C(&gDisplayListHead, &D_8019E2A4);
        func_80054AB8(&gDisplayListHead, &D_8019E2B8);
        func_80031B40(&gDisplayListHead);
        if (D_8008EBB0 != 6) {
            DrawRectangleInDisplayList(&gDisplayListHead, &D_8019EDE4, &D_8019EDF8);
        } else {
            func_80032B48(&gDisplayListHead);
        }
    } else if (D_8019E210 == 2) {
        func_80053394(&gDisplayListHead, &D_8019E240);
        func_80053394(&gDisplayListHead, &D_8019E27C);
        func_80053394(&gDisplayListHead, &D_8019E290);
        func_80053E7C(&gDisplayListHead, &D_8019E2A4);
        func_80053E7C(&gDisplayListHead, &D_8019E2B8);
        func_8003D300(&gDisplayListHead);
        if ((D_8008EBB0 != 6) && (D_8008EBB4 != 6)) {
            DrawRectangleInDisplayList(&gDisplayListHead, &D_8019EDE4, &D_8019EDF8);
        } else {
            func_80032B48(&gDisplayListHead);
        }
    }
    *gDisplayList = gDisplayListHead;
}


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


//scope!!
extern UNK_TYPE *D_80351538;
extern UNK_TYPE *D_803515C0;

void func_80032418(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;

    gDisplayListHead = *gDisplayList;
    func_80055674(&gDisplayListHead);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE | 0x8000);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1,  &D_803515C0);
    gDPTileSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTLUTCmd(gDisplayListHead++, G_TX_LOADTILE, 15);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, &D_80351538);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x001E, 0x003C);
    gDPPipeSync(gDisplayListHead++);
    /*to check*/
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x003C);
    gSPTextureRectangle(gDisplayListHead++, 0x00B4, 0x0120, 0x00F4, 0x0160, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    gSPTextureRectangle(gDisplayListHead++, 0x00B4, 0x0200, 0x00F4, 0x0240, G_TX_RENDERTILE, 0, 0x01E0, 0x0400, -0x0400);
    gSPTextureRectangle(gDisplayListHead++, 0x01B4, 0x0120, 0x01F4, 0x0160, G_TX_RENDERTILE, 0x01E0, 0, -0x0400, 0x0400);
    gSPTextureRectangleFlip(gDisplayListHead++, 0x01B4, 0x0200, 0x01F4, 0x0240, G_TX_RENDERTILE, 0x01E0, 0x01E0, -0x0400, -0x0400);

    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80032754.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80032A90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1F1E0/func_80032AEC.s")

extern u8 D_8008EBCC;
extern Gfx *D_8019EDE4;


void func_80032B48(Gfx** gDisplayList) {
    Gfx *gDisplayListHead;
    gDisplayListHead = *gDisplayList;

    if (( D_8008EBCC >= 0xF) && ( D_8008EBCC < 0x1E)) {
       DrawRectangleInDisplayList(&gDisplayListHead, &D_8019EDE4, &D_8019EDF8);
    }
    *gDisplayList = gDisplayListHead;
}

