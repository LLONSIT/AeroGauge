#include <os_internal.h>
#include <R4300.h>
#include <types.h>
extern void func_80071240();                                  /* extern */
extern s32 alGlobals;

#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/func_80067990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/func_80067AF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/func_80067B20.s")




void alClose(void) {
    if (alGlobals != 0) {
        alSynDelete();
        alGlobals = 0;
    }
}


//#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/func_80067B44.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/func_80067B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/osCreateThread.s")
