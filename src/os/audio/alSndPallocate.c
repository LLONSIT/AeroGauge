#include "sndp.h"

ALSndId alSndpAllocate(ALSndPlayer *sndp, ALSound *sound)
{
    ALSndId i;
    ALSoundState *sState = sndp->sndState;

    for (i = 0; i < sndp->maxSounds; i++) {
        if (!sState[i].sound) {
            sState[i].sound = sound;
            sState[i].priority = AL_DEFAULT_PRIORITY;
            sState[i].state = AL_STOPPED;
            sState[i].pitch = 1.0;
            sState[i].pan = AL_PAN_CENTER;
            sState[i].fxMix = AL_DEFAULT_FXMIX;
            sState[i].vol = 32767*sound->sampleVolume/AL_VOL_FULL;
            return i;
        }
    }

    return -1;
}
