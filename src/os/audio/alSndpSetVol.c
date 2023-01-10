#include "sndp.h"
#include <os_internal.h>
#include <ultraerror.h>

void alSndpSetVol(ALSndPlayer *sndp, s16 vol) 
{
    ALSndpEvent evt;
    ALSoundState  *sState = sndp->sndState;

#ifdef _DEBUG
    if ((sndp->target >= sndp->maxSounds) || (sndp->target < 0)){
        __osError(ERR_ALSNDPSETPAR, 2, sndp->target, sndp->maxSounds-1);
        return;
    }
#endif

    evt.vol.type = AL_SNDP_VOL_EVT;
    evt.vol.state = &sState[sndp->target];
    evt.vol.vol = vol;
    alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, 0);
}
