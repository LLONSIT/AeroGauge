#include <ultra64.h>
#include "variables.h"
#include "structs.h"
#include "functions.h"

struct local_1FC0_1 {
    char filler[4];
    u8  unk4;
    char filler1[3];
    int unk8;
    char filler2[2];
    s16 unkE;
    char filler3[0x6];
};

typedef struct {
    s32 unk0;
    u8 pad[0x14];
} var; // size 0x18

struct local_1FC0_1* D_80109C20;
struct local_1FC0_1 D_80109C28[4];


void func_800013C0(u8 arg0, u8 arg1) {    
    if ((arg0 < D_80109C20->unkE) && (arg1 < 7)) { 
         D_80109C28[arg1].unk4 = arg0;
         D_80109C28[arg1].unk8 = 2;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/1FC0/func_80001418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1FC0/func_8000144C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1FC0/func_800015C4.s")
