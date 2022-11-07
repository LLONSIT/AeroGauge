#include <ultra64.h>
#include <ultratypes.h>
//Not libultra

//debug func?

extern void func_80009298(OSMesgQueue *);

s32 func_80009560(OSMesgQueue* arg0, OSPfs* arg1, s32 *arg2) {
    OSMesgQueue sp48;
    s32 pad[4];
    OSMesg  sp34;
    OSMesg  sp30;

    s32 sp2C;
    osCreateMesgQueue(&sp48, &sp34, 5);
    osSetEventMesg(5, &sp48, 1);
    sp2C = osPfsInitPak(&sp48, arg1, arg2);
    if (osRecvMesg(&sp48, &sp30, 0) == 0) {
        do {
            osSendMesg(arg0, sp30, 0);
        } while (osRecvMesg(&sp48, &sp30, 0) == 0);
    }
    func_80009298(arg0);
    return sp2C;
}

