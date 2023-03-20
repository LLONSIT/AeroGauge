#include <ultra64.h>
#include <PR/gbi.h> //for macros
#include "macros.h"
#include "structs.h"
#include "variables.h"
#include "types.h"
#include "functions.h"


#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80062E60.s")

void func_80062FA4(Gfx** gDisplayList, u8 color) {
    Gfx *gDisplayListHead;

    u8 alpha = color;

    gDisplayListHead = *gDisplayList;

    gDPSetPrimColor(gDisplayListHead++, 0, 0, 0xFF, 0xFF, 0xFF, alpha);

    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80062FD0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80063274.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_8006336C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_800634EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_800636C8.s")

void func_80063930(OSPfs *pfs) {
    func_80060970();
    if (func_80009460(0) & 0x800) {
        func_8006E520(pfs);
    }
    if (func_80009460(0) & 0x400) {
        osMotorStop(pfs);
    }
    func_800609B4();
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80063990.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80063B78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80063C54.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80063CFC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80063D64.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80063DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80063F50.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_8006410C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_800643E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80064660.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_63A60/func_80064940.s")
