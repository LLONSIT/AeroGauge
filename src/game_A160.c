#include <ultra64.h>
#include <ultratypes.h>
//Not libultra 
//99% matching 
extern void func_80009298(s32);
//debug func?
/*
s32 func_80009560(OSMesgQueue* arg0, OSPfs* arg1, s32 arg2) {
    OSMesgQueue sp48;
    void* sp34;
    void* sp30;
    s32 sp2C;

    osCreateMesgQueue(&sp48, &sp34, 5);
    osSetEventMesg(5, &sp48, (void* )1);
    sp2C = osPfsInitPak(&sp48, arg1, arg2);
    if (osRecvMesg(&sp48, &sp30, 0) == 0) {
        do {
            osSendMesg(arg0, sp30, 0);
        } while (osRecvMesg(&sp48, &sp30, 0) == 0);
    }
    func_80009298(arg0);
    return sp2C;
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/game_A160/func_80009560.s")
