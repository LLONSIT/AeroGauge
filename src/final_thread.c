#include <ultra64.h>
#include "variables.h"
#include "structs.h"
#include "macros.h"
#include "functions.h"


extern void func_80065AD0(void);
//static void *func_800657B0(s32 arg0);

extern void *func_800657B0;


void func_80065740(s32 arg0) {
    osCreateThread(&D_801A45A0, 6, &func_800657B0, NULL, &D_801A8750, arg0);
}

void func_8006578C(void) {
    osStartThread(&D_801A45A0);
}





/*
static void *func_800657B0(s32 arg0) {
    
    
    func_80065884();
    func_80015C40();
    
    D_801AAB00.unk0 = 0;
    D_801AAB00.unk4 = 0;
    D_801AAB00.unk5 = 2;
    osCreateMesgQueue(&D_801A8750, &D_801A8768, 0x40);
    if (func_80009150(&D_801A8750) != 0) {
        D_8013FF84 = 7;
    } else {
        D_8013FF84 = 0;
    }
    osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
    if (osRecvMesg(&D_801A8750, NULL, 0) == 0) {
        do {

        } while (osRecvMesg(&D_801A8750, NULL, 0) == 0);
    }
    func_800658FC();
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/final_thread/func_800657B0.s")


 void func_80065884(void) {
    func_80065AD0();
    func_80065630();
    osCreateScheduler(&D_801A8868, &D_801AAAF0, 0xD, D_80092E3F, (u8) 1);
    D_801AAAF0 = osScGetCmdQ(&D_801A8868);
    func_80000450();
    func_80000638();
    func_8000144C();
}


//#pragma GLOBAL_ASM("asm/nonmatchings/final_thread/func_80065884.s")


#pragma GLOBAL_ASM("asm/nonmatchings/final_thread/func_800658FC.s")

 void func_80065AD0(void) {
    if (osTvType == OS_TV_MPAL) {
        D_80092E3C = 0x1E;
        return;
    }
    D_80092E3C = 2;
}


