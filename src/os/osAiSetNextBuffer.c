#include <PR/os_internal.h>
#include <PR/rcp.h>
#include "osint.h"

extern static u8 D_80092E50 = 0;

s32 osAiSetNextBuffer(void *bufPtr, u32 size)
{
        
        char *bptr = bufPtr;
        if (D_80092E50 != 0)
                bptr -= 0x2000;

        if ((((u32)bufPtr + size) & 0x1fff) == 0)
                D_80092E50 = 1;
        else
                D_80092E50 = 0;

        if (__osAiDeviceBusy())
                return -1;

	IO_WRITE(AI_DRAM_ADDR_REG, osVirtualToPhysical(bptr));
        IO_WRITE(AI_LEN_REG, size);
        return 0;
}
