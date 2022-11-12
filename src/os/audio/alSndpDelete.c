#include "sndp.h"
#include <os_internal.h>
#include <ultraerror.h>

void alSndpDelete(ALSndPlayer *sndp)
{
    /*
     * Remove client from synthesizer. Note application is responsible
     * for making sure all sounds have been stopped beforehand.
     */
#ifdef _DEBUG
    {
        int i, notStopped = 0;
        ALSoundState *sState = sndp->sndState;

        for (i=0; i<sndp->maxSounds; i++)
            if ((sState + i)->state != AL_STOPPED)
                notStopped = 1;
        ALFailIf(notStopped, ERR_ALSNDPDELETE);
    }
#endif    
    alSynRemovePlayer(&alGlobals->drvr, &sndp->node);
}

