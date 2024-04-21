#include "ultra64.h"
#include "functions.h"
#include "structs.h"
#include "variables.h"
#include "macro.h"

struct struct_800820D4 D_800820D4[DEF_UNK_SIZE];
s32 D_8013F7A0;

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_80009D10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_80009D70.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_80009DA4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_80009DD8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_80009E5C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_80009EE0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_80009F88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A0A8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A164.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A2C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A350.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A5B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A65C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A728.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A808.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A8F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000A9FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000AC24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000ADB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000AE94.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B024.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B104.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B294.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B388.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B480.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B574.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B66C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B764.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B85C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000B954.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000BA4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000BB3C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000BC04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000BCB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000BEDC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C020.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C040.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C060.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C080.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C0A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C0C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C0E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C100.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C120.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C1EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C3D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C4AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C4CC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C4EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C5B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C6B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C938.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C958.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C978.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/__dummy.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C9BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000C9DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CBB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CBD4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CBF4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CC14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CCD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CCF0.s")

void func_8000CD5C(Gfx* arg0, Gfx** arg1, s32 arg2, s32 arg3) {
    if (D_800820D4[D_8013F7A0].unk8 != NULL) {
        D_800820D4[D_8013F7A0].unk8(arg0, arg1, arg2, arg3);
    } else {
    func_8001EC78(arg0, arg1, 0x10001);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CDD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/osViExtendVStart.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/A910/func_8000CE14.s")
