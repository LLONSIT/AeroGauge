#include <ultra64.h>
#include "variables.h"
#include "structs.h"



#pragma GLOBAL_ASM("asm/nonmatchings/core/game_11C0/func_800005C0.s")

//Only in this Scope
extern struct_80109BCC D_80109BCC[];

void func_80000610(u8 arg0) {
    if (arg0 <= 0) {
     D_80109BCC[arg0].unk0   = 1;
    }
}


#pragma GLOBAL_ASM("asm/nonmatchings/core/game_11C0/func_80000638.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/game_11C0/func_800008D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/game_11C0/func_80000978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/game_11C0/func_80000AFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/game_11C0/func_80000B4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/game_11C0/func_80000E24.s")

extern s32 D_80109CD0;

void func_800013A0(s32 * arg0) {
    *arg0 = D_80109CD0;
    D_80109CD0 = arg0;
}
