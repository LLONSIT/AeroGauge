#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include "macros.h"
#include "functions.h"

//TODO: figure out this
extern void* func_80065454;

void func_800653F0(s32 arg0) {
    osInitialize();
    func_800654C0(0);
    osCreateThread(&D_801A2090, 1, &func_80065454, arg0, &D_801A4240, 0xA);
    osStartThread(&D_801A2090);
}
//TODO: Why is this used for entry address in the entrypoint?
/*
void func_80065454(s32 arg0) {
    func_80065740(0xA);
    if (D_80092DF4 == 0) {
        func_8006578C();
    }
    osSetThreadPri(0, 0);
   while(1);
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/game_65FF0/func_80065454.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_65FF0/func_800654C0.s")
