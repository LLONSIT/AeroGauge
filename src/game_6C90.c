#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include "functions.h"


#pragma GLOBAL_ASM("asm/nonmatchings/game_6C90/func_80006090.s")


void func_80006188(void (**arg0)()) {
    void (*temp_v0)();

    temp_v0 = *arg0;
    if (temp_v0 != NULL) {
        temp_v0(arg0);
        return;
    }
     n_alSeqpDelete(arg0);
}

//unresolved rodata
/*
void func_800061C4(struct unk_struct_800061C4* arg0, u32 arg1, f32 arg2) {
    switch (arg1) {
    case 0:
        arg0->unkB0 = arg2;
        return;
    case 1:
        arg0->unkB4 = arg2;
        return; 
    case 2:
        arg0->unkB8 = arg2;
        return;
    case 3:
        arg0->unkBC = arg2;
        return;
    case 4:
        arg0->unkC0 = arg2;
    default:
        return;
    }

}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/game_6C90/func_800061C4.s")
#pragma GLOBAL_ASM("asm/nonmatchings/game_6C90/func_80006214.s")
