#include <ultra64.h>
#include <ultratypes.h>
#include <structs.h>
#pragma GLOBAL_ASM("asm/nonmatchings/game_14060/func_80013460.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_14060/func_800135A0.s")


void func_8001369C(D_801369C arg0[], u8 arg1) {
    unk_struct_8001369C *temp_v0;


    temp_v0 = arg0[arg1].unk0;
    temp_v0->unk380 = 1;
    temp_v0->unk382 = arg1 / 2 * 4;

}


#pragma GLOBAL_ASM("asm/nonmatchings/game_14060/func_800136DC.s")


/*
void func_80013A98(void *arg0) {
    s32 var_s1;
    s32 var_s2;
    u16 temp_t8;
    void *var_s0;

    var_s0 = arg0;
    var_s1 = 0;
    var_s2 = arg0 + 0x380;
    do {
        var_s0->unk17E4 = 0;
        temp_t8 = var_s0->unk174C | 0x100;
        var_s0->unk174C = temp_t8;
        var_s0->unk174C = (u16) (temp_t8 & ~2);
        func_800114A0(var_s2);
        var_s1 += 0x14;
        var_s0 += 0xB8;
        var_s2 += 0x14;
    } while (var_s1 != 0xA0);
}
*/


#pragma GLOBAL_ASM("asm/nonmatchings/game_14060/func_80013A98.s")
