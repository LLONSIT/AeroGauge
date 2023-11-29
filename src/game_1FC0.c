#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include "macros.h"
#include "functions.h"

struct g {
    char a[4]; /* 0x0 : pad three bytes*/
    u8  unk4; /* 0x4 */
    char b[3];
    int unk8; 
    char c[2];
    s16 unkE;
    char fill[0x6];
};

typedef struct {
    s32 unk0;
    u8 pad[0x14];
} var; // size 0x18

extern struct g* D_80109C20;
extern struct g D_80109C28[];


void func_800013C0(u8 arg0, u8 arg1) {    
    if ((arg0 < D_80109C20->unkE) && (arg1 < 7)) { 
         D_80109C28[arg1].unk4 = arg0;
         D_80109C28[arg1].unk8 = 2;
    }
}

extern var D_80109C30[];

void func_80001418(u8 arg0) {

    if (arg0 < 7) {
        D_80109C30[arg0].unk0 = 1;
    }
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_1FC0/func_8000144C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1FC0/func_800015C4.s")
