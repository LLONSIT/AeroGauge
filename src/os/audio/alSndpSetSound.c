#include "sndp.h"
#include <os_internal.h>
#include <ultraerror.h>

void alSndpSetSound(ALSndPlayer *sndp, ALSndId id)
{
#ifdef _DEBUG
    if ((id >= sndp->maxSounds) || (id < 0)){
        __osError(ERR_ALSNDPSETSOUND, 2, id, sndp->maxSounds-1);
        return;
    }
#endif

    sndp->target = id;
}
