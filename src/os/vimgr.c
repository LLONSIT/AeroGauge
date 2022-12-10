#include <os_internal.h>
#include <rcp.h>
#include "viint.h"
#include "../os/osint.h"

OSDevMgr __osViDevMgr = {0};
static OSThread viThread;
static unsigned char viThreadStack[OS_VIM_STACKSIZE];
static OSMesgQueue viEventQueue;
static OSMesg viEventBuf[5];
static OSIoMesg viRetraceMsg;
static OSIoMesg viCounterMsg;

static void viMgrMain(void *arg) {}
void osCreateViManager(OSPri pri)
{
	u32 savedMask;
	OSPri oldPri;
	OSPri myPri;
	if (__osViDevMgr.active == 0)
	{
		__osTimerServicesInit();
		osCreateMesgQueue(&viEventQueue, viEventBuf, 5);
		viRetraceMsg.hdr.type = OS_MESG_TYPE_VRETRACE;
		viRetraceMsg.hdr.pri = OS_MESG_PRI_NORMAL;
		viRetraceMsg.hdr.retQueue = NULL;
		viCounterMsg.hdr.type = OS_MESG_TYPE_COUNTER;
		viCounterMsg.hdr.pri = OS_MESG_PRI_NORMAL;
		viCounterMsg.hdr.retQueue = NULL;
		osSetEventMesg(OS_EVENT_VI, &viEventQueue, &viRetraceMsg);
		osSetEventMesg(OS_EVENT_COUNTER, &viEventQueue, &viCounterMsg);
		oldPri = -1;
		myPri = osGetThreadPri(NULL);
		if (myPri < pri)
		{
			oldPri = myPri;
			osSetThreadPri(NULL, pri);
		}
		savedMask = __osDisableInt();
		__osViDevMgr.active = 1;
		__osViDevMgr.thread = &viThread;
		__osViDevMgr.cmdQueue = &viEventQueue;
		__osViDevMgr.evtQueue = &viEventQueue;
		__osViDevMgr.acsQueue = NULL;
		__osViDevMgr.dma = NULL;
		__osViDevMgr.edma = NULL;
		osCreateThread(&viThread, 0, viMgrMain, &__osViDevMgr, &viThreadStack[OS_VIM_STACKSIZE], pri);
		__osViInit();
		osStartThread(&viThread);
		__osRestoreInt(savedMask);
		if (oldPri != -1)
		{
			osSetThreadPri(0, oldPri);
		}
	}
}

#pragma GLOBAL_ASM("asm/nonmatchings/os/vimgr/viMgrMain.s")
