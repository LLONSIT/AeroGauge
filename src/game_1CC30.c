#include <ultra64.h>
#include "structs.h"
#include "variables.h"
extern s8 D_8013FF94;
extern s32 D_8016C420;
extern s32 D_8016C424;


#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001C030.s")

void func_8001C268(void) {
    if (D_8013FF94 == 0) {
        D_8016C420 = 4;
    } else {
        D_8016C420 = 5;
    }
    D_8016C424 = 0;
}




#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001C29C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001C758.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001C910.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001CE30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001CF48.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001D218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001D418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001D598.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001D660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001D7F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001D8D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001DD30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001DD80.s")

/*
extern s32 D_80096510;

void func_8001DF40(struct unk_8001DF40 *arg0) {
    s32 temp_t2;
    s32 temp_t5;

    arg0->unk2 + 2;
    temp_t2 = arg0->unk0 | 0x80;
    temp_t5 = temp_t2 | 0x10;
    arg0->unk0 = temp_t2;
    arg0->unk0 = temp_t5;
    arg0->unk20 = &D_80096510;
    arg0->unk0 = (u8) (temp_t5 | 8);
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001DF40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001DF74.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001E004.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CC30/func_8001E06C.s")
