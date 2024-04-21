#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"
#include "macro.h"

struct struct_15D60_80015160  {
	u8 unk0;
	u8 unk1;
	u8 unk2;
};

//UNUSED
void func_80015160(struct struct_15D60_80015160* arg0) {
    switch (arg0->unk2) {
    case 0:
        func_80015594(arg0);
        return;
    case 1:
        func_800156E4(arg0);
        return;
    case 2:
        func_8001573C(arg0);
        return;
    case 3:
        func_8001583C(arg0);
        return;
    }
}

void func_800151E0(struct struct_15D60_80015160* arg0) {
    switch (arg0->unk2) {
    case 0:
        func_80015594(arg0);
        return;
    case 1:
        func_8001568C(arg0);
        return;
    case 2:
        func_8001573C(arg0);
        return;
    case 3:
        func_8001583C(arg0);
        return;
    }
}

void func_80015260(struct struct_15D60_80015160* arg0) {
    switch (arg0->unk2) {
    case 0:
        func_80015594(arg0);
        break;
    case 1:
        func_8001568C(arg0);
        break;
    case 2:
        func_8001573C(arg0);
        break;
    case 3:
        func_8001583C(arg0);
        break;
    }
    func_80010628(D_8013FC80, arg0);
}

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_800152FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_80015594.s")

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_8001568C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_800156E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_8001573C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_8001583C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_80015898.s")

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_80015A2C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/15D60/func_80015A8C.s")
