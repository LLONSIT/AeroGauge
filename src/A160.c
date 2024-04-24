#include <ultra64.h>
#include "functions.h"

s32 func_80009560(OSMesgQueue* arg0, OSPfs* arg1, s32 *arg2);

s32 func_80009560(OSMesgQueue* arg0, OSPfs* arg1, s32 *arg2) {
    OSMesgQueue sp48;
    s32 pad[4];
    OSMesg sp34;
    void* sp30;
    s32 sp2C;
    osCreateMesgQueue(&sp48, &sp34, 5);
    osSetEventMesg(5, &sp48, 1);
    sp2C = osPfsInitPak(&sp48 ,arg1,arg2);

    while (osRecvMesg(&sp48, &sp30, 0) == 0) {
        osSendMesg(arg0, sp30, 0);
    }
    func_80009298(arg0);
    return sp2C;
}
