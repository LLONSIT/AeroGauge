#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include "functions.h"

//global
extern s32 D_8013FC80;
typedef struct {
   /* */ u8 unk0;
  /* */  u8 unk1;
 /* */	 u8 unk2;
}var;

typedef struct {
    /* 0x00 */ char pad0[0x55];
    /* 0x55 */ s8 unk55;                            /* inferred */
    /* 0x56 */ char pad56[0x12];                    /* maybe part of unk55[0x13]? */
    /* 0x68 */ f32 unk68;                           /* inferred */
    /* 0x6C */ char pad6C[0x64];                    /* maybe part of unk68[0x1A]? */
    /* 0xD0 */ f32 unkD0;                           /* inferred */
    /* 0xD4 */ char padD4[4];
} var_s1;                                              /* size = 0xD8 */

typedef struct {
    /* 0x0 */ u8 unk0;                              /* inferred */
    /* 0x1 */ char pad1[4];                         /* maybe part of unk0[5]? */
    /* 0x5 */ s8 unk5;                              /* inferred */
} var_s2;                

void func_80015160(struct unk_struct_8001516 *arg0) {
 
    switch (arg0->unk2) {                           
    case 0:
        func_80015594();
        return;
    case 1:
        func_800156E4();
        return;
    case 2:
        func_8001573C();
        return;
    case 3:
        func_8001583C();
        return;
    }
}

void func_800151E0(var* arg0) {

    switch (arg0->unk2) {                              /* irregular */
    case 0:
        func_80015594();
        return;
    case 1:
        func_8001568C();
        return;
    case 2:
        func_8001573C();
        return;
    case 3:
        func_8001583C();
        return;
    }
}

void func_80015260(var* arg0) {

    switch (arg0->unk2) {                              /* irregular */
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

#pragma GLOBAL_ASM("asm/nonmatchings/game_15D60/func_800152FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_15D60/func_80015594.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_15D60/func_8001568C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_15D60/func_800156E4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_15D60/func_8001573C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_15D60/func_8001583C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_15D60/func_80015898.s")

void func_80015A2C(var_s1* arg0, var_s2* arg1) {
    if (arg1->unk0 & 1) {
        f64 temp = 0;

        arg0->unkD0 = D_800969A8;
        arg0->unk68 = temp;
    }
    if (arg1->unk0 & 2) {
        arg0->unk55 = (arg1->unk5 > 0) ? arg1->unk5 : 0xA;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_15D60/func_80015A8C.s")
