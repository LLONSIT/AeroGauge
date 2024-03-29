#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"
#include "macros.h"



#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_80009D10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_80009D70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_80009DA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_80009DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_80009E5C.s")

//some nice expressions, can be simplified
void func_80009EE0(struct_80009EE0* arg0, s32 arg1, s32* arg2) {
    s32 a;
    Matrix sp2C;
    s32 var_v1;

    func_80020D1C(&sp2C, arg1 + 8, arg1 + 0x14, 0, 4);
    arg0->unk4 = (u16) (arg0->unk4 | 2);
    CopyMatrix(&sp2C, arg0 + 1);

    var_v1 =  *arg2 & 0x7F;
    if (var_v1 >= 0x40) {
        var_v1 = 0x7F - var_v1;
    }

    arg0->unk35 = var_v1 * 4;
    arg0->unk4 = (u16) (arg0->unk4 | 0x10);
    arg0->unk36 = var_v1 * 4;
    arg0->unk34 = 0xFF;
    arg0->unk37 = 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_80009F88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A0A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A164.s")


void func_8000A2C8(struct_80009EE0* arg0, s32 arg1, s32 arg2) {
    Matrix sp28;

    func_80020D1C(&sp28, arg1 + 8, arg1 + 0x14, 0, 4);
    arg0->unk4 = (u16) (arg0->unk4 | 2);
    CopyMatrix(&sp28, arg0 + 1);
    arg0->unk4 = (u16) (arg0->unk4 | 0x10);
    arg0->unk37 = 0xB4;
    arg0->unk34 = 0xFF;
    arg0->unk35 = 0xFF;
    arg0->unk36 = 0xFF;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A5B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A65C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A728.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A808.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A8F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000A9FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000AC24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000ADB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000AE94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B024.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B294.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B388.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B66C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B85C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000B954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000BA4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000BB3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000BC04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000BCB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000BEDC.s")

void func_8000C000(void) {
    func_80009D10();
}
#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C040.s")

void func_8000C060(void) {
    func_80009D10();
}


#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C0A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C0C0.s")

void func_8000C0E0(void) {
    func_80009D10();
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C1EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C3D0.s")

void func_8000C4AC(void *arg0, void *arg1, s32 *arg2) {


  func_8000C6B4(arg0, arg1, arg2, CONSTANT_RETURN_VALUE); 

}

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C4CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C4EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C5B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C6B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C99C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C9BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000C9DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CBB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CBD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CBF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CC14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CCF0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CD5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CDD0.s")


extern s32 D_8013F7A4;

void func_8000CDF8(s32 arg0) {
    D_8013F7A4 = arg0;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_A910/func_8000CE14.s")
