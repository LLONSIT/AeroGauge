#include <os_internal.h>
#include <rcp.h>
#include "../os/osint.h"

extern u8 hdwrBugFlag;
s32 osAiSetNextBuffer(void *bufPtr, u32 size)
{
	char *bptr = bufPtr;
	if (hdwrBugFlag != 0)
		bptr -= 0x2000;

	if ((((u32)bufPtr + size) & 0x1fff) == 0)
		hdwrBugFlag = 1;
	else
		hdwrBugFlag = 0;

	if (__osAiDeviceBusy())
		return -1;

	IO_WRITE(AI_DRAM_ADDR_REG, osVirtualToPhysical(bptr));
	IO_WRITE(AI_LEN_REG, size);
	return 0;
}
