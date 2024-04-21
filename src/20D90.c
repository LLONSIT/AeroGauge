#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"
#include "macro.h"

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_800204E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_800205AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020624.s")

void func_80020684(struct unk_struct_80020684_1* arg0, struct unk_struct_80020684_2* arg1, s32 arg2) {
    if (arg2 == 0) {
        arg1->unk29C =  arg0->unk23C;
        arg0->unk23C = arg1;
        return;
    }
    arg1->unkA8 =  arg0->unk240;
    arg0->unk240 = arg1;
}

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_800206B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020748.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_800207F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_800209B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020D1C.s")

BOOL func_80020EA8(struct R_G_B_A* first_color, struct R_G_B_A* second_color) {
    if ((first_color->red == second_color->red) && (first_color->green == second_color->green) && (first_color->blue == second_color->blue) && (first_color->alpha == second_color->alpha)) {
        return TRUE;
    }
    return FALSE;
}

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80020EFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80021078.s")

void func_80021674(u16 arg0) {
    gDPPipeSync(D_8016C508++);
    gDPSetTexturePersp(D_8016C508++, G_TP_NONE | 0x80000);
    func_800216E0(arg0);
    func_800217F4(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_800216E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_800217F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/20D90/func_80021A70.s")
