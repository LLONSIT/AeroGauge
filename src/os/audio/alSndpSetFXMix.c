#include "sndp.h"
#include <os_internal.h>
#include <ultraerror.h>

void alSndpSetFXMix(ALSndPlayer *sndp, u8 mix) 
{
    ALSndpEvent evt;
    ALSoundState  *sState = sndp->sndState;

#ifdef _DEBUG
    if ((sndp->target >= sndp->maxSounds) || (sndp->target < 0)){
        __osError(ERR_ALSNDPSETPAR, 2, sndp->target, sndp->maxSounds-1);
        return;
    }
#endif

    evt.fx.type = AL_SNDP_FX_EVT;
    evt.fx.state = &sState[sndp->target];
    evt.fx.mix = mix;
    alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, 0);
}
