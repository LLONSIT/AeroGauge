#include <ultra64.h>
#include "functions.h"

extern OSThread D_801A2090;
extern void* D_801A4240;
extern s32 D_80092DF4;

void func_800653F0(void *arg);
void* func_80065454(void* entry);

//Main function
void func_800653F0(void *arg) {
    osInitialize();
    func_800654C0(0);
    osCreateThread(&D_801A2090, 1, func_80065454, arg, &D_801A4240, 0xA);
    osStartThread(&D_801A2090);
}

void* func_80065454(void* entry) {
    func_80065740(0xA);
    if (D_80092DF4 == 0) {
        func_8006578C();
    }
    osSetThreadPri(NULL, 0);
    while (TRUE);
}

#pragma GLOBAL_ASM("asm/nonmatchings/main/func_800654C0.s")
