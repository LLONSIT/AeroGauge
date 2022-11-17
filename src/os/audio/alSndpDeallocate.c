#include "sndp.h"
#include <os_internal.h>
#include <ultraerror.h>

void alSndpDeallocate(ALSndPlayer *sndp, ALSndId id)
{
    ALSoundState  *sState = sndp->sndState;

    ALFailIf((sState + id)->state != AL_STOPPED, ERR_ALSNDPDEALLOCATE);

    sState[id].sound = 0;
    if (sndp->target == id) /* if we are deleting the target sound */
        sndp->target = -1;
}


