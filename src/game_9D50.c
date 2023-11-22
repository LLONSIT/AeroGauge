#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"

typedef struct temp_var {
  s32 unk8;
  s8 a[0x1];

}temp_var;


#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_80009150.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_80009298.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_800092C4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_800093DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_800093E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_80009410.s")

/*
extern temp_var D_8010CAB2[]; //maybe

u16 func_80009438(s32 arg0) {
    if (arg0 >= 3) {
        return 0U;
    }
    return D_8010CAB2[arg0].unk8;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_80009438.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_80009460.s")

s32 func_80009488(void) {
    return D_80081FD4;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_9D50/func_80009494.s")

