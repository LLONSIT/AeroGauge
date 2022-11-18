#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include <PR/libaudio.h>

#pragma GLOBAL_ASM("asm/nonmatchings/game_2360/func_80001760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2360/func_80001A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2360/func_80001CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2360/func_80001E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_2360/func_80001E90.s")

extern struct_8010C428 D_8010C428; //only this scope
extern s32 func_80001E90; //only in this scope

s32 func_80002028(s32 **arg0) {
    if (D_8010C428.unk0 == 0) {
        D_8010C428.unk4 = 0;
        D_8010C428.unk8 = &D_8010C438;
        D_8010C428.unk0 = 1U;
    }
    *arg0 = &D_8010C428;
    return &func_80001E90;
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_2360/func_80002060.s")
