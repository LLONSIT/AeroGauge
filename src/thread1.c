#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include "structs.h"
#include "macros.h"

extern s32 D_8008B1F0;
extern  s32 D_8008B258;
//extern  D_801A8750;
///extern  D_801A8868;
//extern  D_801AAAF8;
extern s32 D_80330800;


//Matched just need to figure out the bss
//https://decomp.me/scratch/9K3xT
#pragma GLOBAL_ASM("asm/nonmatchings/thread1/func_80015C40.s")

//jtable
#pragma GLOBAL_ASM("asm/nonmatchings/thread1/func_80015C8C.s")

s32 func_80015D70(void) {
   /* Not a very good explaination:
   *    Uopt seems to optimise the result by storing it in live range $v0, and then
   *    putting in a predecessor (node), this seems to be a -O2 / -O2 -g3 effect
   */
    if (D_8008B1F0 == 0) {
        func_80000610(0);
        osScRemoveClient(&D_801A8868, &D_801AAAF8);
        func_8001E6FC(&D_801A8750);
        func_80065704(&D_80330800, &D_8008B258);
        osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
        D_8008B1F0 = 1;
        return 1;
    }
    return 0;
}

//Matched, but bss :/
#pragma GLOBAL_ASM("asm/nonmatchings/thread1/func_80015E04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/thread1/func_80015EC0.s")

s32 func_80015F2C(void) {
    s32 var_v0;

    var_v0 = 0;
    if (D_8008B1F8 == 0) {
        func_80000610(0);
        osScRemoveClient(&D_801A8868, &D_801AAAF8);
        func_8001E6FC(&D_801A8750);
        func_80065690(SegmentUnkStart, D_80270800, D_183B90 - SegmentUnkStart);
        osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
        D_8008B1F8 = 1;
        return 1;
    }
    return 0;
}
