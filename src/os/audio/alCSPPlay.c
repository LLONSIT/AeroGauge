#include <libaudio.h>
#include "cseqp.h"

void alCSPPlay(ALCSPlayer *seqp)
{
    ALEvent evt;

    evt.type = AL_SEQP_PLAY_EVT;

    alEvtqPostEvent(&seqp->evtq, &evt, 0);
}
