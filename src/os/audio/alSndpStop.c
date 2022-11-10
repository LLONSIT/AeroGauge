#include "sndp.h"

void alSndpStop(ALSndPlayer *sndp)
{
    ALSndpEvent evt;
    ALSoundState  *sState = sndp->sndState;

    /*
     * Go immediately into the release phase
     */
    evt.common.type = AL_SNDP_STOP_EVT;
    evt.common.state = &sState[sndp->target];
    alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, 0);
}
