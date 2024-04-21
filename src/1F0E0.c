#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"
#include "macro.h"

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001E4E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001E540.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001E6FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001E870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001E8A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001E8D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001EB1C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001EC78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001EDBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001F01C.s")

void func_8001F040(Gfx* arg0) {
    func_8001EC78(arg0, &D_8016C508, 0x10001);
    gDPSetScissor(D_8016C508++, G_SC_NON_INTERLACE, 16, 8, 303, 231);
    func_8000CD5C(arg0, &D_8016C508, &D_8016C510, &D_8016C50C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001F0B4.s")

void func_8001F0D8(void) {
    func_8003ED00(&D_8016C508, &D_8016C510, &D_8016C50C);
}

#pragma GLOBAL_ASM("asm/nonmatchings/1F0E0/func_8001F10C.s")
