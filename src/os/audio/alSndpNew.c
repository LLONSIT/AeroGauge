#include "sndp.h"
#include <os_internal.h>
#include <ultraerror.h>
#include <assert.h>

ALMicroTime _sndpVoiceHandler(void *node)
{
    ALSndPlayer *sndp = (ALSndPlayer *) node;
    ALSndpEvent evt;

    do {
        switch (sndp->nextEvent.type) {
            case (AL_SNDP_API_EVT):
                evt.common.type = AL_SNDP_API_EVT;
                alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, sndp->frameTime);
                break;

            default:
                _handleEvent(sndp, (ALSndpEvent *)&sndp->nextEvent);
                break;
        }   
        sndp->nextDelta = alEvtqNextEvent(&sndp->evtq, &sndp->nextEvent);

    } while (sndp->nextDelta == 0);
    sndp->curTime += sndp->nextDelta;
    return sndp->nextDelta;
}
 


void alSndpNew(ALSndPlayer *sndp, ALSndpConfig *c)
{
    u8            *ptr;
    ALEvent       evt;
    ALSoundState  *sState;
    u32           i;

    /*
     * Init member variables
     */
    sndp->maxSounds = c->maxSounds;
    sndp->target = -1;
    sndp->frameTime = AL_USEC_PER_FRAME;        /* time between API events */
    sState = (ALSoundState*)alHeapAlloc(c->heap, 1,
                                        c->maxSounds * sizeof(ALSoundState));
    sndp->sndState = sState;

    for(i = 0; i < c->maxSounds; i++)
	sState[i].sound = 0;

    /*
     * init the event queue
     */
    ptr = alHeapAlloc(c->heap, 1, c->maxEvents * sizeof(ALEventListItem));
    alEvtqNew(&sndp->evtq, (ALEventListItem *)ptr, c->maxEvents);

    /*
     * add ourselves to the driver
     */
    sndp->drvr = &alGlobals->drvr;
    sndp->node.next = NULL;
    sndp->node.handler = _sndpVoiceHandler;
    sndp->node.clientData = sndp;
    alSynAddPlayer(sndp->drvr, &sndp->node);

    /*
     * Start responding to API events
     */
    evt.type = AL_SNDP_API_EVT;
    alEvtqPostEvent(&sndp->evtq, (ALEvent *)&evt, sndp->frameTime);
    sndp->nextDelta = alEvtqNextEvent(&sndp->evtq, &sndp->nextEvent);

}
