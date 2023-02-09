#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include "macros.h"
#include "functions.h"



typedef struct {
    s32 unk0;
    u8 pad[0x14];
} var; // size 0x18

#pragma GLOBAL_ASM("asm/nonmatchings/game_1FC0/func_800013C0.s")


extern var D_80109C30[];

void func_80001418(u8 arg0) {

    if (arg0 < 7) {
        D_80109C30[arg0].unk0 = 1;
    }
}



#pragma GLOBAL_ASM("asm/nonmatchings/game_1FC0/func_8000144C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1FC0/func_800015C4.s")
