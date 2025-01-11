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
s8 D_8008EAA4;
s32  D_100A288;
s32  D_100C090;
s32  D_100C0B8;
s32  D_1010680;
s32 D_8008EA78;
u8 D_8008EAA0;
s8 D_8008EAA4;
s32 D_8008EAAC;
u8 D_8008EAB4;
u8 D_8008EAB8;
u8 D_8008EABC;
u8 D_8008EAC0;
s8 D_8008EAC4;
u32 D_8008F290;
s8 D_8008F640;
f32 D_80097310;
f32 D_80097314;


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
UNK_TYPE D_8019E088;
UNK_TYPE D_8019E0A0;
UNK_TYPE D_8019E0B8;
UNK_TYPE D_8019E0D0;
UNK_TYPE D_8019EDDC;
UNK_TYPE D_8019EDE0;
UNK_TYPE D_8019EDE8;
UNK_TYPE D_8019EDF0;
s8 D_8019EE00;
u16 D_8019EE02;
UNK_TYPE D_80385670;
UNK_TYPE D_803856B8;
UNK_TYPE D_803856D0;
UNK_TYPE D_80385718;
UNK_TYPE D_80385730;
UNK_TYPE D_80385778;

//File declarations
void func_80026000(void);
void func_80026120(Gfx** gDisplayList);
s32 func_80026384(s32 arg0);
s32 func_8002648C(OSPfs* arg0);
s32 func_800264D4(OSPfs* arg0);
s32 func_80026524(OSPfs* arg0);
void func_80026578(u32 arg0);
void func_800265A0(void);
s8 func_80027104(Gfx** gDisplayList);
void func_800277E0(void);

// info: Some regallocs
// Scratch: https://decomp.me/scratch/em8KD
// Score: 365 (99.4%)
#ifdef NON_MATCHINGS


extern s32 D_80082150;
extern s32 D_80082154[];
extern s32 D_8008EA60[];
extern s32 D_8008EA6C[];
extern u8 D_8008EA7C;
extern u8 D_8008EA80;
extern u8 D_8008EA88;
extern u8 D_8008EA8C;
extern u8 D_8008EA90;
extern s32 D_8008EA94;
extern s32 D_8008EA98;
extern u8 D_8008EA9B;
extern s32 D_8008EA9C;
extern f32 D_8008F298;
extern  D_8019E050;
extern  D_8019E068;

struct UnkStruct_8008EA80 {
    u8 unk0;
    u8 unk1;
    s32 unk5;
    s32 unk9;
};

void func_80025A10(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;
    s32 temp_v0;

    static u8 D_8008EA8C;
    static u8 D_8008EA90;    
    static s32 D_8008EA94;
    static s32 D_8008EA9C;
    
    

    if (D_8008EA7C == 1) {
        D_8008EA7C = 0;
        if (func_80009488() != 0) {
            D_8008EA84 = 1;
            func_800013C0(0x24, 4);
            goto block_29;
        }
        D_8008EA80 = 1;
        func_800013C0(0x25, 4);
        osViExtendVStart(3);
        D_8013FF84 = 2;
        return;
    }
    if (D_8008EA7C == 2) {
        gDisplayListHead = *gDisplayList;

        gDPSetPrimColor(gDisplayListHead++, 0, 0, 255, 255, 255, 255);
        func_80019D0C(&gDisplayListHead, 0x38U, 0x64U, (s32) &D_8008EA60, 0);
        func_80019D0C(&gDisplayListHead, 0x38U, 0x84U, (s32) &D_8008EA6C, 0);
        
        if ((++D_8008EA90) >= 0x1F) {
            D_8008EA7C = 1;
            D_8008EA90 = 0;
        }
        *gDisplayList = gDisplayListHead;
        return;
    }
    if (D_8008EA7C == 3) {
        func_80015D70();
        switch (D_8008EA94) {                       /* irregular */
        default:
        case 0:
            temp_v0 = func_80026384(0);
            D_8008EA98 = temp_v0;
            if (temp_v0 != 0) {
                if (temp_v0 == 0x15) {
                    D_8008EA94 = 1;
                    return;
                }
                if (temp_v0 == 0x1B) {
                    D_8008EA94 = 1;
                    return;
                }
                if (temp_v0 == 2) {
                    return;
                }
            } else {
                D_8008EA7C = 2;
                return;
            }
            break;
        case 1:
            gDisplayListHead = *gDisplayList;
            
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 255, 255, 255, 255);
            func_800564B0(&gDisplayListHead, D_8008EA9B);
            
            *gDisplayList = gDisplayListHead;
            
            if ((++D_8008EA9C) >= 0x3C) {
                D_8008EA9C = 0;
                D_8008EA94 = 2;
            }
            break;
        case 2:
            gDisplayListHead = *gDisplayList;
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 255, 255, 255, 255);
            func_80055DE8(&gDisplayListHead, 9);
            *gDisplayList = gDisplayListHead;
            temp_v0 = func_80009460(0);
            if (temp_v0 & 0x8000) {
                D_8013FF84 = 7;
                D_8008EA94 = 0;
                func_800013C0(0x2A, 4);
                return;
            }
            if (temp_v0 & 0x4000) {
                D_8008EA94 = 3;
                func_800013C0(0x26, 4);
                return;
            }
            break;
        case 3:
            if ((++D_8008EA9C) >= 0x1E) {
                D_8008EA7C = 2;
                D_8008EA9C = 0;
                D_8008EA94 = 0;
                return;
            }
        }
    } else {
block_29:
        if (D_8008EA88) {
            func_80026000();
            D_8008EA88 = 0;
            D_8008EA8C = 0;
        }
        gDisplayListHead = *gDisplayList;
        func_80057930();
        
        if (!D_8008EA80) {
            if ((D_8008EA84 > 0) && (D_8008EA84 < 0x53)) {
                display_jetmorning(&gDisplayListHead); // display_jetmorning
                *gDisplayList = gDisplayListHead;
                D_8008EA84 += 1;
                return;
            }
            if (D_8008EA84 == 0x53) {
                D_8013FF84 = 9;
                D_8008EA84++;
                return;
            }
        }
        if ((D_8019EE02 & 0x1000) || (D_8019EE02 & 0x8000) || (D_8019EE02 & 0x2000)) {
            D_8008EA8C = 1;
        }
        if (D_8008EA8C == 0) {
            if (D_8008EA78 == 0) {
                func_80053E7C(&gDisplayListHead, &D_8019E050);
                if (func_80052F84(&D_8019EDDC, 1.0f, 2.0f, 0.5f, 1.0f, 1.0f) != 0) {
                    D_8008EA88 = 1;
                    D_8008EA78 = 1;
                    D_8008EA90 = 0;
                }
                func_80055A04(&gDisplayListHead, &D_8019EDDC, &D_8019EDE8);
            } else if (D_8008EA78 == 1) {
                func_80053394(&gDisplayListHead, &D_8019E068);
                if (func_80052F84(&D_8019EDDC, 0.5f, 2.0f, 1.0f, 1.0f, 1.0f) != 0) {
                    D_8008EA88 = 1;
                    D_8008EA78 = 0;
                    D_8008EA90 = 0;
                    osViExtendVStart(1);
                    D_8013FF84 = 2;
                }
                func_80055A04(&gDisplayListHead, &D_8019EDDC, &D_8019EDE8);
            }
        } else {
            func_80000610(0);
            D_8008EA88 = 1;
            D_8008F298 = 0.0f;
            D_8008EA78 = 0;
            D_8008EA90 = 0;
            osViExtendVStart(0);
            D_8013FF84 = 3;
        }
        D_8008EA90++;
        func_80057AA0();
        *gDisplayList = gDisplayListHead;
        if ((D_8008EA78 == 0) && (D_8008EA90 == 0x2C)) {
            func_80000610(0);
            func_80015E04(D_80082154[D_80082150]);
            D_80109BDC = 0x6E14;
            func_800005C0(0x14U, 0U);
        }
    }
}

#else
#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80025A10.s")
#endif

#ifdef NON_MATCHING
struct m {
    char unk0;
    char unk1;
    char unk2;
    char unk3;


};

struct l {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s32 unkC;
    s32 unk10;

};

struct f {
    char unk0;
    char unk1;
    char unk2;
    char unk3;
    char unk4;
    s16 unk6;
    s32 unk8;
    s32 unkA;
    s32 unkC;
    s32 unk10;
    f32 unk74;
    f32 unk8C;

};

 struct f D_80109C28;
struct l D_8019E050;
struct l D_8019E068;
struct m D_8019EDDC;
struct l D_8019EDE8;

void func_80026000(void) {
    struct l* var_v0;
    s16 var_v1;

    var_v1 = 0xC0;
    if (D_8008EA78 == 0) {
        var_v0 = &D_8019E050;
        D_8019E050.unkA = 0x50;
        D_8019E050.unk8 = 0x40;
        D_8019E050.unk6 = 0x14;
        D_8019E050.unk2 = 0x50;
        D_8019E050.unkC = &D_100A288;
        D_8019E050.unk10 = &D_100C090;
        D_8019E050.unk0 = 0xC0;
        goto block_4;
    }
    if (D_8008EA78 == 1) {
        var_v0 = &D_8019E068;
        var_v1 = 0xF8;
        D_8019E068.unkA = 0x52;
        D_8019E068.unk8 = 0x24;
        D_8019E068.unk6 = 8;
        D_8019E068.unk2 = 0x48;
        D_8019E068.unkC = &D_100C0B8;
        D_8019E068.unk10 = &D_1010680;
        D_8019E068.unk0 = 0xF8;
block_4:
        var_v0->unk4 = var_v1;
    }
    D_8019EDDC.unk3 = 0xFF;
    D_8019EDDC.unk0 = 0;
    D_8019EDDC.unk1 = 0;
    D_8019EDDC.unk2 = 0;

    D_8019EDE8.unk6 = 0xEF;
    D_8019EDE8.unk4 = 0x13F;
    D_8019EDE8.unk0 = 0;
    D_8019EDE8.unk2 = 0;

    D_80109C28.unk74 = 1.0f;
    D_80109C28.unk8C = 1.0f;
    func_8000CDB0(&D_80109C28);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80026000.s")
#endif

//display_jetmorning 
void display_jetmorning(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;

    GFX_ASSIGN(gDisplayListHead, gDisplayList);

    update_rgba(100, 255, 100, 255);
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

s32 func_80026384(s32 arg0) {
    s32 sp84;
    s32 sp80;
    OSPfs sp18;

    sp84 = 0;
    osScRemoveClient(&D_801A8868, &D_801AAAF8);
    func_80060970();
    sp80 = osPfsInitPak(&D_8019FB78, &sp18, arg0);
    if (sp80 != 0) {
        func_80026578(sp80);
        if (sp80 == 2) {
            sp84 = 2;
        }
    } else {
        sp80 = func_8002648C(&sp18);
        if (sp80 != 0) {
            func_80026578(sp80);
            sp80 = func_80026524(&sp18);
            if (sp80 != 0) {
                if (sp80 == 0x15) {
                    sp84 = 0x15;
                }
            } else {
                sp80 = func_800264D4(&sp18);
                if (sp80 != 0) {
                    if (sp80 == 0x1B) {
                        sp84 = 0x1B;
                    }
                } else {
                    func_80026578(sp80);
                }
            }
        }
    }
    func_800609B4();
    osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
    return sp84;
}

s32 func_8002648C(OSPfs* arg0) {
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

#ifdef NEEDS_RODATA
void func_80026578(u32 arg0) {
    switch (arg0) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
        break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_80026578.s")
#endif

void func_800265A0(void) {
    osViExtendVStart(1);
    D_8013FF84 = 0;
    D_8008EAB0 = 1;
}

#ifdef NON_MATCHING
void func_800265D0(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;
    u8 temp_a1;
    u8 temp_v0_2;



    if (D_8008EAB4 != 0) {
        func_80027424();
        D_8008EAB4 = 0;
        D_8008EAAC = 0;
    }
    GFX_ASSIGN(gDisplayListHead, gDisplayList);

    if (D_8008EAAC < 0xC9) {
        func_80057930();
    }
    func_80053394(&gDisplayListHead, &D_8019E088);
    if (D_8008EAA0 != 0) {
        func_80053E7C(&gDisplayListHead, &D_8019E0D0);
        func_80053E7C(&gDisplayListHead, &D_8019E0A0);
        if ((D_8008EABC != 0) && (D_8019EE00 != D_8008F640)) {
            if (D_8008F640 != -2) {
                if (D_8008F640 == 2) {
                    goto block_11;
                }
            } else {
block_11:
                D_8019E080 +=  D_8008F640 / 2;
                if (D_8019E080 < 0) {
                    D_8008F290 = 5;
                    D_8019E080 = 5;
                } else if (D_8019E080 >= 6) {
                    D_8008F290 = 0;
                    D_8019E080 = 0;
                } else {
                    D_8008F290 = (s32) D_8019E080;
                }
                if (D_8019E080 == -1) {
                    D_8008EAC4 =  D_8019E080;
                    D_8008EAA8 = 0;
                } else {
                    D_8008EAC4 = D_8019E080;
                    if (D_8019E080 == 1) {
                        D_8008EAA4 = 0;
                    }
                }
                func_800013C0(0x28, 4);
            }
        }
        if (D_8008EAC4 > 0) {
            func_80026B34(&gDisplayListHead, 0);
            D_8008EAC4 = func_80027104(&gDisplayListHead);
        } else if (D_8008EAC4 < 0) {
            /* To check */
            D_8008EAC4 = func_80026DE8(&gDisplayListHead);
            func_80026B34(&gDisplayListHead, 1);
        } else {
            /* To check */
            if (D_8008EAC4 == 0) {
                func_80026B34(&gDisplayListHead, 0);
                func_80026B34(&gDisplayListHead, 1);
            }
        }
        func_800275EC();
        if ((D_8008F290 == 3) && ((func_80009488() != 2))) {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0x7F, 0x7F, 0x7F, 0xFF);
        } else {
            gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, 0xFF);

            if ((D_8019EE02 & 0x1000) || (D_8019EE02 & 0x8000) || (D_8019EE02 & 0x2000)) {
                if (D_8008EABC != 0) {
                    func_800013C0(0x2A, 4);
                }
                D_8008EABC = 0;
            }
        }
        func_800546A4(&gDisplayListHead, &D_8019E0B8);
    } else {
        func_80053318(&gDisplayListHead, &D_8019EDE0, &D_8019EDF0);
        if ((D_8019EE02 & 0x1000) || (D_8019EE02 & 0x8000) || (D_8019EE02 & 0x2000)) {
            if (D_8008EAA0 == 0) {
                func_800013C0(0x2A, 4);
            }
            D_8008EAA0 = 1;
        }
        if ((func_80009488() == 2) && ((u8) *D_8008F29C == 0)) {
            func_800277E0();
        }
    }
    if ((D_8019EE02 & 0x1000) || (D_8019EE02 & 0x8000) || (D_8019EE02 & 0x2000) || (D_8008F640 != 0)) {
        D_8008EAAC = 0;
    };
    if (D_8008EAAC >= 0xC8) {
        if (D_8008EAAC >= 0xE6) {
            D_8008EAB4 = 1;
            if ((u8) D_8008EAB0 != 0) {
                osViExtendVStart(2);
                D_8013FF84 = 2;
                D_8008EAB0 = 0;
            } else {
                func_800265A0();
            }
        } else if (D_8008EAC0 == 0) {
            D_8008EAC0 = func_800048B0(D_80097310, 0, 0, 0x6E14);
        }
        if (func_80052E60(&D_8019EDDC, 1.0f, 0) != 0) {
            D_8008EAC0 = 0;
        }
        func_80055A04(&gDisplayListHead, &D_8019EDDC, &D_8019EDE8);
    }
    D_8008EAAC = D_8008EAAC + 1;
    if (D_8008EAB8 == 0) {
        D_8008EAB8 = func_80052E60(&D_8019EDDC, 0.2f, 1);
        func_80055A04(&gDisplayListHead, &D_8019EDDC, &D_8019EDE8);
    }
    if (D_8008EABC == 0) {
        if (D_8008EAC0 == 0) {
            D_8008EAC0 = func_800048B0(D_80097314, 0, 0, 0x6E14);
        }
        temp_v0_2 = func_80052E60(&D_8019EDDC, 0.2f, 0);
        D_8008EABC = temp_v0_2;
        if (temp_v0_2 & 0xFF) {
            D_8008EAB4 = 1;
            D_8008EAC0 = 0;
            D_8008EAB8 = 0;
            D_8013FF84 = 4;
        }
        func_80055A04(&gDisplayListHead, &D_8019EDDC, &D_8019EDE8);
    }
    func_80057AA0();
    GFX_UPDATE(gDisplayList, gDisplayListHead);
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/26610/func_800265D0.s")
#endif

void func_80026B34(Gfx** gDisplayList, u8 arg1) {
    Gfx* gDisplayListHead;
    char filler[0x8];

    gDisplayListHead = *gDisplayList;
    func_800555B4(&gDisplayListHead);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, &D_803856B8);
    gDPTileSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTLUTCmd(gDisplayListHead++, G_TX_LOADTILE, 15);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 8, &D_80385670);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);

    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x001E, 0x001C);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x001C);

    if (arg1 == 0) {
        gSPTextureRectangle(gDisplayListHead++, 0x018C, 0x02D4, 0x01CC, 0x02F4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    } else {
        gSPTextureRectangle(gDisplayListHead++, 0x018C, 0x0354, 0x01CC, 0x0374, G_TX_RENDERTILE, 0, 0x00E0, 0x0400, -0x0400);
    }
    gDPPipeSync(gDisplayListHead++);

    GFX_UPDATE(gDisplayList, gDisplayListHead);
}

s8 func_80026DE8(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;
    UNK_TYPE sp68;
    UNK_TYPE sp64;

    if ((D_8008EAA4 <= 0) && (D_8008EAA4 >= 0)) {
        sp68 = &D_803856D0;
        sp64 = &D_80385718;
    } else if ((D_8008EAA4 < 0) && (D_8008EAA4 >= -2)) {
        sp68 = &D_80385730;
        sp64 = &D_80385778;
    } else if ((D_8008EAA4 < -2) && (D_8008EAA4 >= -3)) {
        sp68 = &D_803856D0;
        sp64 = &D_80385718;
    } else if ((D_8008EAA4 < -3) && (D_8008EAA4 >= -4)) {
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
    gSPTextureRectangle(gDisplayListHead++, 0x018C, 0x02D4, 0x01CC, 0x02F4, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);
    gDPPipeSync(gDisplayListHead++);

    GFX_UPDATE(gDisplayList, gDisplayListHead);

    D_8008EAA4 -= 1;
    if (D_8008EAA4 == -5) {
        D_8008EAA4 = 0;
    }
    return D_8008EAA4;
}

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

