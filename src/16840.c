#include <ultra64.h>
#include <PR/sched.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"
#include "macro.h"


#ifdef NEEDS_DATA
s32 D_8008B1F0 = 0;
s32 D_8008B1F8[2] = {0, 0};
long long D_8008B220[14];
#else
s32 D_8008B1F0;
long long D_8008B220[4];
s32 D_8008B1F8;
#endif

//.bss
u32 D_8013FF80;
u32 D_8013FF84;
s32 D_8013FF88;
s32 D_8013FF8C;

//Unclassified
u8 D_C88D0[DEF_UNK_SIZE];
u8 D_183B90[DEF_UNK_SIZE];
s32 D_80270800[DEF_UNK_SIZE];

//File declarations
void func_80015C40(void);
void func_80015C8C(void);
s32 func_80015D70(void);
s32 func_80015E04(s32 arg0);
void func_80015EC0(void);

void func_80015C40(void) {
    D_8013FF80 = 0;
    D_8013FF84 = 0;
    func_80015EC0();
    D_8013FF88 = 6;
    D_8013FF8C = 1;
    D_8008B84C = 1;
}

#ifdef NEEDS_RODATA
void func_80015C8C(void) {
    if (D_8013FF80 != D_8013FF84) {
        D_8013FF80 = D_8013FF84;
    }
    func_80015F2C();
    switch (D_8013FF80) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        func_8000CCF0();
        return;
    case 3:
        func_80015D70();
        return;
    case 4:
        func_80015D70();
        return;
    case 5:
        func_80015FD0();
        return;
    case 6:
        func_80015D70();
        return;
    case 7:
        func_80015D70();
        return;
    case 8:
        if (func_80015D70() != 0) {
            func_8001E4A4();
        }
        break;
    case 9:
        break;
    default:
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/16840/func_80015C8C.s")
#endif

s32 func_80015D70(void) {
    if (D_8008B1F0 == 0) {
        func_80000610(0);
        osScRemoveClient(&D_801A8868, &D_801AAAF8);
        func_8001E6FC(&D_801A8750);
        func_80065704(&D_80330800, &D_8008B258);
        osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
        D_8008B1F0 = 1;
        return TRUE;
    } else {
        return FALSE;
    }
}

#ifdef NEEDS_DATA
s32 func_80015E04(s32 arg0) {
    static s32 D_8008B1F4 = 0xFFFFFFFF;
    if ((D_8008B1F0 != 0) || (D_8008B1F4 != arg0)) {
        func_80000610(0);
        osScRemoveClient(&D_801A8868, &D_801AAAF8);
        func_8001E6FC(&D_801A8750);
        func_80065704(&D_80330800, &D_8008B220[arg0]);
        osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
        D_8008B1F4 = arg0;
        D_8008B1F0 = 0;
        return TRUE;
    } else {
    return FALSE;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/16840/func_80015E04.s")
#endif

void func_80015EC0(void) {
    D_8013FF90.unk0 = 0;
    D_8013FF90.unk2 = 0x78;
    D_8013FF90.unk4 = 0;
    D_8013FF90.unk5 = 1;
    D_8013FF90.unk6 = 1;
    D_8013FF90.unk7 = 0;
    D_8013FF90.unk8 = 1;
    D_8013FF90.unk9 = 8;
    D_8013FF90.unkA = 8;
    D_8013FF90.unkB = 3;
    D_8013FF90.unk10 = &D_8008F620;
    D_8013FF90.unk14 = &D_8008F62C;
    D_8013FF90.unk18 = 0;
    D_8013FF90.unk19 = 0;
    D_8013FF90.unk1A = 1;
}

s32 func_80015F2C(void) {
    if (D_8008B1F8 == 0) {
        func_80000610(0);
        osScRemoveClient(&D_801A8868, &D_801AAAF8);
        func_8001E6FC(&D_801A8750);
        func_80065690(D_C88D0, D_80270800, D_183B90 - D_C88D0);
        osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
        D_8008B1F8 = 1;
        return TRUE;
    }
    return FALSE;
}

