#include <ultra64.h>
#include <ultratypes.h>
#include "functions.h"

/*Not libultra*/


s32 func_80009560(OSMesgQueue* mesg, OSPfs* arg1, s32 *arg2) {
    OSMesgQueue sp48;
    s32 pad[4];
    OSMesg  sp34;
    OSMesg  sp30;

    s32 sp2C;
    osCreateMesgQueue(&sp48, &sp34, OS_EVENT_SI);
    osSetEventMesg(OS_EVENT_SI, &sp48, OS_EVENT_SW2);
    sp2C = osPfsInitPak(&sp48, arg1, arg2);
    if (osRecvMesg(&sp48, &sp30, 0) == 0) {
        do {
            osSendMesg(mesg, sp30, 0);
        } while (osRecvMesg(&sp48, &sp30, 0) == 0);
    }
    func_80009298(mesg);
    return sp2C;
}

