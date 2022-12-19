#include <ultra64.h>
#include "variables.h"
#include "structs.h"
#include "functions.h"

//Only in this scope
extern c_struct D_8010C428;

#pragma GLOBAL_ASM("asm/nonmatchings/core/core_2360/func_80001760.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/core_2360/func_80001A54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/core_2360/func_80001CA0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/core_2360/func_80001E50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/core_2360/func_80001E90.s")


extern void* func_80001E90; //Only in this scope
void* func_80002028(void** arg0) {
    if (D_8010C428.unk0 == 0) {
        D_8010C428.unk4 = 0;
        D_8010C428.unk8 = &D_8010C438;
        D_8010C428.unk0 = 1U;
    }
    *arg0 = &D_8010C428;
    return &func_80001E90;
}


#pragma GLOBAL_ASM("asm/nonmatchings/core/core_2360/func_80002060.s")
