#include "synthInternals.h"
#include <os_internal.h>
#include <ultraerror.h>

void alSynSetFXMix(ALSynth *synth, ALVoice *v, u8 fxmix)
{
    ALParam  *update;
    ALFilter *f;

    if (v->pvoice) {
        /*
         * get new update struct from the free list
         */
        update = __allocParam();
        ALFailIf(update == 0, ERR_ALSYN_NO_UPDATE);

        /*
         * set offset and fxmix data
         */
        update->delta  = synth->paramSamples + v->pvoice->offset;
        update->type   = AL_FILTER_SET_FXAMT;
        if (fxmix < 0)
            update->data.i = -fxmix;
        else
            update->data.i = fxmix;
        update->next   = 0;

        f = v->pvoice->channelKnob;
        (*f->setParam)(f, AL_FILTER_ADD_UPDATE, update);
    }
}
