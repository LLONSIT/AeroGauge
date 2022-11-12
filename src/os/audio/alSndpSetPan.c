#include "sndp.h"
#include <os_internal.h>
#include <ultraerror.h>

void alSndpSetPan(ALSndPlayer *sndp, ALPan pan) 
{
    ALSndpEvent evt;
    ALSoundState  *sState = sndp->sndState;

#ifdef _DEBUG
    if ((sndp->target >= sndp->maxSounds) || (sndp->target < 0)){
        __osError(ERR_ALSNDPSETPAR, 2, sndp->target, sndp->maxSounds-1);
        return;
    }
#endif

    evt.pan.type = AL_SNDP_PAN_EVT;
    evt.pan.pan  = pan;
    evt.pan.state = &sState[sndp->target];
    alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, 0);
}


