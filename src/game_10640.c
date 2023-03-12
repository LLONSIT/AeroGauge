#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"
#include "macros.h"

extern gSelector_struct gSelector;
/*
void func_8000FA40(void) {
    static s32 D_800821D0;
    func_80009460(0);

    if (D_800821D0 == 0) {
        D_800821D0 = 1;
        gSelector.unk0 = 9;
        gSelector.unk9 =  1;
        if (gSelector.unk4 == 0) {
            gSelector.unkB = 3;
        } else if (gSelector.unk4 == 1) {
            gSelector.unkB = 4;
        } else {
            gSelector.unkB = 4;
        }
        gSelector.unk2 = 0x50;
        D_8013FF84 = 5;
        return;
    }
    if (func_800048B0(1.0f, 0, 0, 0x6E14) != 0) {
        D_800821D0 = 0;
        func_8000CDF8(6);
    }
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/game_10640/func_8000FA40.s")

void func_8000FAFC(s32 arg0, s32 arg1, s32 arg2, s32 arg3) {

}

#pragma GLOBAL_ASM("asm/nonmatchings/game_10640/func_8000FB10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10640/func_8000FB90.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10640/func_8000FC10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_10640/func_8000FCD0.s")
