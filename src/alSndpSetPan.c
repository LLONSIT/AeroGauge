#include <ultra64.h>
#include <sndp.h>
#include <libaudio.h>

/*
void alSndpSetPan(ALSndPlayer *sndp, ALPan pan)
{
    ALSndpEvent evt;
    ALSoundState  *sState = sndp->sndState;

    evt.pan.type = AL_SNDP_PAN_EVT;
    evt.pan.pan  = pan;
    evt.pan.state = &sState[sndp->target];
    alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, 0);
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/alSndpSetPan/alSndpSetPan.s")
