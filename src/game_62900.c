#include <ultra64.h>
#include <PR/sched.h>
#include "variables.h"
#include <functions.h>


#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_80061D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_80061E8C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_80062018.s")


s32 func_80062114(void) {
    u8 var_v1 = func_80062018(&D_8019FC18);

    if (var_v1 == 0) {
        var_v1 = func_8006299C(&D_8019FC18);
    }
    return var_v1 ;
}


void func_80062154(void) {
    switch (D_80092D54) {                           /* irregular */
    case 0:
       osScRemoveClient(&D_801A8868, &D_801AAAF8);
        D_8019FFE8 = func_80062210();
       osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
        D_80092D54 = 1;
        return;
    case 1:
        if (D_8019FFE8 != 0) {
            func_800623E8(1);
            D_8019FFE8 = 0;
        }
        D_80092D54 = 0;
        D_8013FF84 = D_8019E0F0;
        return;
    }
}


//#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_80062154.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_80062210.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_800623E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_800625C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_800627E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_62900/func_8006299C.s")
