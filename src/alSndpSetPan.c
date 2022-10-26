//OS Funcs
#include <ultra64.h>
#include <ultratypes.h>
#include <libaudio.h>



void alSndpSetPan(ALSndPlayer *sndp, ALPan pan) {
    s8 sp28;
    s32 sp24;
    s16 sp20;

    sp20 = 2;
    sp28 = pan;
    sp24 = (pan + 0x3C * 0x30) + pan + 0x40;
    alEvtqPostEvent(pan + 0x14, &sp20, NULL);
}

//#pragma GLOBAL_ASM("asm/nonmatchings/alSndpSetPan/alSndpSetPan.s")
