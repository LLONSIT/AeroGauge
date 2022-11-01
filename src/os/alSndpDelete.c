#include <ultra64.h>
#include <ultratypes.h>
#include <libaudio.h>

void alSndpDelete(ALSndPlayer *sndp) {
    alSynRemovePlayer(&alGlobals->drvr,&sndp->node);
}

