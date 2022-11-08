#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CA50/func_8001BE50.s")

void func_8001BFE4(s32 arg0) {
    struct unk_struct_8001BFE *temp_v0;

    temp_v0 = arg0 * 1 + &D_8008B7F0;
    func_8001F75C(temp_v0->unk0, temp_v0->unk1, temp_v0->unk2, temp_v0->unk3);
}


//#pragma GLOBAL_ASM("asm/nonmatchings/game_1CA50/func_8001BFE4.s")
    