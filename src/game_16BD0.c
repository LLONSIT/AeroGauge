#include <ultra64.h>
#include "variables.h"
#include "structs.h"
#include "functions.h"

#define UNUSED

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80015FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80016238.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_800162C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80016464.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80016890.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_800169E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80016B58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80016B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80016D44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_8001728C.s")

UNUSED func_80017454(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_8001745C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_800176B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_800177A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_8001787C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_800178F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80017CA8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80017DBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80017EE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80018008.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80018274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80018380.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_800187A8.s")

extern s8 D_8013FF90; //only valid in this scope

void func_80018944(struct unk_struct_80018944* arg0, s32 arg1) {
    if (D_8013FF90 != 5) {
        arg0->unk1B8 = (s32) (arg1 + 0x44);
    }
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80018968.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80018A58.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80018BA0.s")

extern s32 D_8013FC80;
extern s32 D_8013FC84; //only valid in this scope

void func_80018C40(void) {
    func_80010548(D_8013FC80);
    if (D_8013FF90 == 5) {
        func_80010548(D_8013FC84);
    }
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_16BD0/func_80018C84.s")
