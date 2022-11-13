#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"

//Nice ASCII developer
 void func_8001E1C0(void) {
        func_80000610(0);
        func_80001418(0);
        func_80001418(1);
        func_80001418(2);
        func_80001418(3);
        func_80001418(4);
        func_80001418(5);
        func_80001418(6);
    }

#pragma GLOBAL_ASM("asm/nonmatchings/game_1EDC0/func_8001E218.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1EDC0/func_8001E340.s")

void func_8001E46C(void) {
    func_8001E1C0();
    D_80109BDC = 0x6E14;
    func_800005C0(0x12, 0);
}


void func_8001E4A4(void) {
    func_8001E1C0();
    D_80109BDC = 0x6E14;
    func_800005C0(0x10, 0);
}
