#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"

//.data
s32 D_8008BC38;
u8 D_8008EA84;
s8 D_8008EAA8;
struct struct_8008FAE0 D_8008FAE0;
u8 D_8008FAEA;
u8 D_8008FAEE;


//.rodata
//These actually don't exist.
#ifdef NEEDS_RODATA
char D_80097250 = "J";
char D_80097254 = "E";
char D_80097258 = "T";
char D_8009725C = "M";
char D_80097264 = "O";
char D_8009726C = "R";
char D_80097274 = "N";
char D_8009727C = "I";
char D_80097288 = "N";
char D_80097294 = "G";
#else
char D_80097250;
char D_80097254;
char D_80097258;
char D_8009725C;
char D_80097264;
char D_8009726C;
char D_80097274;
char D_8009727C;
char D_80097288;
char D_80097294;
#endif

//.bss?
UNK_TYPE D_80385670;
UNK_TYPE D_803856B8;
UNK_TYPE D_803856D0;
UNK_TYPE D_80385718;
UNK_TYPE D_80385730;
UNK_TYPE D_80385778;

//File declarations
void func_80026120(Gfx** gDisplayList);
void func_8002648C(OSPfs* arg0);
s32 func_800264D4(OSPfs* arg0);
s32 func_80026524(OSPfs* arg0);
void func_800265A0(void);
s8 func_80027104(Gfx** gDisplayList);
void func_800277E0(void);

#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80025A10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80026000.s")

void func_80026120(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;

    GFX_ASSIGN(gDisplayListHead, gDisplayList);

    update_rgba(0x64, 0xFF, 0x64, 0xFF);
    func_8001F700(1.0, 1.0);

    if (D_8008EA84 == 9) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_80097250, &D_8008BC38);
    }
    if (D_8008EA84 == 0xA) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_80097254, &D_8008BC38);
    }
    if (D_8008EA84 == 0xB) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_80097258, &D_8008BC38);
    }
    if (D_8008EA84 == 0x29) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_8009725C, &D_8008BC38);
    }
    if (D_8008EA84 == 0x2A) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_80097264, &D_8008BC38);
    }
    if (D_8008EA84 == 0x2B) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_8009726C, &D_8008BC38);
    }
    if (D_8008EA84 == 0x33) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_80097274, &D_8008BC38);
    }
    if (D_8008EA84 == 0x34) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_8009727C, &D_8008BC38);
    }
    if (D_8008EA84 == 0x35) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_80097288, &D_8008BC38);
    }
    if (D_8008EA84 == 0x36) {
        osSetTime(0xC9 << 0 | 0xAC0000000 << 4);
        print_text(&gDisplayListHead, &D_80097294, &D_8008BC38);
    }

    GFX_UPDATE(gDisplayList, gDisplayListHead);
}

#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80026384.s")

void func_8002648C(OSPfs* arg0) {
    s32 filler;
    s32 sp20;

    osPfsFindFile(arg0, D_8008FAE0.unk8, D_8008FAE0.unk4, &D_8008FAEE, &D_8008FAEA, &sp20);
}


s32 func_800264D4(OSPfs* arg0) {
    s32 temp_v1;
    s32 sp20;
    s32 sp1C;

    temp_v1 = osPfsNumFiles(arg0, &sp20, &sp1C) != 0;
    if (temp_v1 != 0) {
        return temp_v1;
    }

    if ((sp20 - sp1C) <= 0) {
        return 0x1B;
    }

    return 0;
}

s32 func_80026524(OSPfs* arg0) {
    s32 temp_v0;
    s32 sp18;

    temp_v0 = osPfsFreeBlocks(arg0, &sp18);
    if (temp_v0) {
        return temp_v0;
    }

    if ((sp18 / 256) < 0x5D) {
        return 0x15;
    }
    return 0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80026578.s")

void func_800265A0(void) {
    osViExtendVStart(1);
    D_8013FF84 = 0;
    D_8008EAB0 = 1;
}


#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_800265D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80026B34.s")

#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80026DE8.s")

s8 func_80027104(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;
    UNK_TYPE sp68;
    UNK_TYPE sp64;

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

    GFX_ASSIGN(gDisplayListHead, gDisplayList);

    func_800555B4(&gDisplayListHead);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, sp64);
    gDPTileSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTLUTCmd(gDisplayListHead++, G_TX_LOADTILE, 15);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, sp68);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x001E, 0x001C);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C);
    gSPTextureRectangle(gDisplayListHead++, 0x018C, 0x0354, 0x01CC, 0x0374, G_TX_RENDERTILE, 0, 0x00E0, 0x0400, -0x0400);
    gDPPipeSync(gDisplayListHead++);

    GFX_UPDATE(gDisplayList, gDisplayListHead);

    D_8008EAA8 += 1;
    if (D_8008EAA8 == 5) {
        D_8008EAA8 = 0;
    }
    return D_8008EAA8;
}

#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80027424.s")

#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_800275EC.s")

void func_800277E0(void) {
    if ((func_80009438(1) & 0x2000) && (func_80009438(1) & 0x20) && (func_80009438(1) & 0x10) && (func_80009460(1) & 0x800) && (func_80009460(1) & 4)) {
        D_8008F29C[0] = 1;
    }
}
