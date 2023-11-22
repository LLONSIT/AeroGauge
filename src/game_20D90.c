#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"
#include "macros.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020190.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020260.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020418.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_800204E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020504.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_800205AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020624.s")

void func_80020684(unk_struct_80020684_1* arg0, unk_struct_80020684_2* arg1, s32 arg2) {
    if (arg2 == 0) {
        arg1->unk29C =  arg0->unk23C;
        arg0->unk23C = arg1;
        return;
    }
    arg1->unkA8 =  arg0->unk240;
    arg0->unk240 = arg1;
}

void func_800206B0(unk_struct_80020684_1 *arg0, void* arg1, int arg2) {
    unk_struct_80020684_2 *var_v0;
    unk_struct_80020684_2 *var_v1;
    unk_struct_80020684_2 *var_v1_2;

    var_v0 = NULL;
    if (arg2 == 0) {
        for (var_v1 = arg0->unk23C; var_v1 != NULL; var_v0 = var_v1, var_v1 = var_v1->unk29C) {
                if (var_v1 == arg1) {
                    if (var_v0 != NULL) {
                        var_v0->unk29C = var_v1->unk29C;
                    } else {
                        arg0->unk23C = var_v1->unk29C;
                    }
                }
            }
    } else {
        for (var_v1_2 = arg0->unk240; var_v1_2 != NULL; var_v0 = var_v1_2, var_v1_2 = var_v1_2->unkA8) {
                if (var_v1_2 == arg1) {
                    if (var_v0 != NULL) {
                        var_v0->unkA8 = var_v1_2->unkA8;
                    } else {
                        arg0->unk240 = var_v1_2->unkA8;
                    }
                }
            }
        }
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020748.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_800207F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_800209B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020B68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020D1C.s")

#define FOUND 1
#define NOT_FOUND 0

int func_80020EA8(struct R_G_B_A* arg0, struct R_G_B_A* arg1) {
    if ((arg0->red == arg1->red) && (arg0->green == arg1->green) && (arg0->blue == arg1->blue) && (arg0->alpha == arg1->alpha)) {
        return FOUND;
    }
    return NOT_FOUND;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80020EFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_80021078.s")

extern void* func_800216E0(u16);
extern void* func_800217F4(u16);

extern Gfx* D_8016C508;

void func_80021674(u16 arg0) {
    gDPPipeSync(D_8016C508++);
    gDPSetTexturePersp(D_8016C508++, G_TP_NONE | 0x80000);
    func_800216E0(arg0);
    func_800217F4(arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_800216E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_20D90/func_800217F4.s")

void func_80021A70(void) {
}
