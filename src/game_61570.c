#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "macros.h"
#include "structs.h"

void func_80060970(void) {
    osCreateMesgQueue(&D_8019FB78, &D_8019FB90, 0x14);
    osSetEventMesg(5U, &D_8019FB78, (void *)1);
}

//#pragma GLOBAL_ASM("asm/nonmatchings/game_61570/func_80060970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_61570/func_800609B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_61570/func_80060A3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_61570/func_80060B64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_61570/func_80060C20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_61570/func_80060F20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_61570/func_80060FAC.s")
