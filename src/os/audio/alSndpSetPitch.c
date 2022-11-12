#include "sndp.h"
#include <os_internal.h>
#include <ultraerror.h>

void alSndpSetPitch(ALSndPlayer *sndp, f32 pitch) 
{
    ALSndpEvent evt;
    ALSoundState  *sState = sndp->sndState;

    /*
     * If this is set during playback there will be
     * a the envelope lengths won't be accurate - but you can still
     * do it. 
     */

#ifdef _DEBUG
    if ((sndp->target >= sndp->maxSounds) || (sndp->target < 0)){
        __osError(ERR_ALSNDPSETPAR, 2, sndp->target, sndp->maxSounds-1);
        return;
    }
#endif

    evt.pitch.type = AL_SNDP_PITCH_EVT;
    evt.pitch.state = &sState[sndp->target];
    evt.pitch.pitch = pitch;
    alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, 0);
}

