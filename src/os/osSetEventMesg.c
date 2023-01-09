#include <PR/os_internal.h>
#include "osint.h"
__OSEventState D_801AAB10[OS_NUM_EVENTS];

void osSetEventMesg(OSEvent event, OSMesgQueue *mq, OSMesg msg)
{
        register u32 saveMask = __osDisableInt();
        __OSEventState *es;

        es = &D_801AAB10[event];
        es->messageQueue = mq;
        es->message = msg;
        __osRestoreInt(saveMask);
}
