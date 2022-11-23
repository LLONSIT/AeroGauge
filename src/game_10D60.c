#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"
#include "macros.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_8001024C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010548.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_8001071C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010A68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010B14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010C4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010C88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010D08.s")

UNUSED func_80010D80(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010E40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80010F78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80011214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_800112B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_8001136C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_800113A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_800113DC.s")

                     

s32 func_80011428(void) {
    s32 var_v1;

    if (func_800113A0() >= 0x4000) {
        var_v1 = -1;
    } else {
        var_v1 = 1;
    }
    return var_v1;
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_8001145C.s")

f32 func_80011468(s32 arg0) {
    return (f32) (arg0 & 0x3FF) / D_800962D0;
}

f32 func_80011484(s32 arg0) {
    return  (arg0 & 0x7FF) / D_800962D4;
}


void func_800114A0(struct unk_struct_800114A0* arg0) {
    arg0->unk0 = 0;
    arg0->unk2 = 0;
    arg0->unk4 = 0;
    arg0->unk8 = 0.0f;
    arg0->unk10 = 0.0f;
    arg0->unkC = 0.0f;
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_800114C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_8001159C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80011624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_800116AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_800117B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_80011820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10D60/func_800118B4.s")
