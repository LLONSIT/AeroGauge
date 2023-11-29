#include <ultra64.h>
#include "variables.h"
#include "structs.h"
#include "macros.h"
#include "functions.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_22EC0/func_800222C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_22EC0/func_80022408.s")

void func_800226AC(Matrix arg0, struct game_22EC0_80022FD0_unk* arg1) {
    s32 pad[30];
    void* temp_a1;
    void* temp_a1_2;
    Matrix spA8;

    if (!(arg1->unk4 & 0x100)) {
        guMtxIdentF(spA8 +  8);
        if (arg1->unk4 & 2) {
            if ((arg1->unk8 & 1) || (arg1->unk8 & 4)) {
                arg1->unk9C = NULL;
                CopyMatrix(arg0, &arg1->unk_5C);
            } else {
                arg1->unk9C = D_8016C510++;
                func_80024370(&arg1->unk_5C, arg0, spA8[8]);
                guMtxF2L(spA8[8], arg1->unk9C);
            }
        }
        temp_a1 = arg1->unkA0;
        if (arg1->unkA0 != NULL) {
            func_800226AC(spA8[8], temp_a1);
        }
    }
    temp_a1_2 = arg1->unkA4;
    if (temp_a1_2 != NULL) {
        func_800226AC(arg0, temp_a1_2);
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_22EC0/func_80022788.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_22EC0/func_800227E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_22EC0/func_80022B40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_22EC0/func_80022C30.s")

void func_80022FD0(struct game_22EC0_80022FD0_unk *arg0) {
    Matrix spA8;
    Matrix sp68;
    Matrix sp28;

    guScaleF(sp68, arg0->unk_X, arg0->unk_Y, arg0->unk_Z);

    switch (arg0->unk8) {                              /* irregular */
    case 1:
        func_80024370(sp68, &D_8019DCF0, sp28);
        break;
    case 4:
        func_80024370(sp68, &D_8019DD70, sp28);
        break;
    }
    func_8006B750(spA8, arg0->unk38, arg0->unk3C, arg0->unk40);
    guMtxCatF(sp28, spA8, sp28);
    guMtxCatF(sp28, &arg0->unk_5C, sp28);
    guMtxF2L(sp28, D_8016C510);
    gSPMatrix(D_8016C508++, D_8016C510++, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_MODELVIEW);
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_22EC0/func_800230C8.s")
