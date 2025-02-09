#include <ultra64.h>
#include "ag_math.h"
#include "functions.h"
#include "variables.h"

struct UnkStruct_80011820 {
    /* 0x00 */ char pad0[4];
    /* 0x04 */ u16 unk4;                            /* inferred */
    /* 0x06 */ s16 unk6;                            /* inferred */
    /* 0x08 */ char pad8[0x2C];                     /* maybe part of unk6[0x17]? */
    /* 0x34 */ char unk34;                            /* inferred */
    /* 0x35 */ char unk35;                            /* inferred */
    /* 0x36 */ char unk36;                            /* inferred */
    /* 0x37 */ char unk37;                            /* inferred */
    /* 0x38 */ char pad38[0x24];                    /* maybe part of unk37[0x25]? */
    /* 0x5C */ Matrix unk5C;                        /* inferred */
    /* 0x6C */ char pad6C[0x10];                    /* maybe part of unk5C[5]? */
    /* 0xAC */ s32 unkAC;                           /* inferred */
    /* 0xB0 */ char padB0[0x20];                    /* maybe part of unkAC[9]? */
};    

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010160.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_8001024C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010548.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010694.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_8001071C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010870.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010A68.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010B14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010BBC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010C14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010C4C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010C88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010D08.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010D88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010DCC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010E40.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80010F78.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80011214.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_800112B8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_8001136C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_800113A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_800113DC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80011428.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_8001145C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80011468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80011484.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_800114A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_800114C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_8001159C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80011624.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_800116AC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_800117B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_80011820.s")

#pragma GLOBAL_ASM("asm/nonmatchings/10D60/func_800118B4.s")
