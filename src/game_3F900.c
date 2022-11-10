#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_8003ED00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_8003EDFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_8003EF88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_8003F4A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_8003F98C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_8003FC40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80040010.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80040138.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80040698.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80040860.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80040BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80040DEC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80041278.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_8004149C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80041618.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_8004184C.s")


struct unk_struct_80041964 D_8013FF90;

void func_80041964(void) {
    if ((D_8019E6A8 == 0) && (D_8019EE02 & 0x10)) {
        if (D_8013FF90.unk4 == 0) {
            if (D_8013FF90.unk7 == 5) {
                D_8013FF90.unk7 = 0;
                return;
            }
            D_8013FF90.unk7 = D_8013FF90.unk7 + 1;
            return;
        }
        D_8013FF90.unk7 = D_8013FF90.unk7 ^ 1;
    }   
}


//#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80041964.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_800419D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80041AF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_3F900/func_80041D2C.s")
