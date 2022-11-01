#include <ultraerror.h>
#include <os_internal.h>
#include <synthInternals.h>

/*
void alSynFreeVoice(ALSynth *drvr, ALVoice *voice)
{
    ALFilter *f;
    ALFreeParam *update;

    if (voice->pvoice != NULL) {

        if (voice->pvoice->offset != NULL) { 
            update = (ALFreeParam *)__allocParam();
            ALFailIf(update == 0, ERR_ALSYN_NO_UPDATE);
        }

            update->delta  = drvr->paramSamples + voice->pvoice->offset;
            update->type   = AL_FILTER_FREE_VOICE;
            update->pvoice = voice->pvoice;

            f = voice->pvoice->channelKnob;
            (*f->setParam)(f, AL_FILTER_ADD_UPDATE, update);
        } else {
            _freePVoice(drvr, voice->pvoice);
        }

        voice->pvoice = 0;

    }

*/
#pragma GLOBAL_ASM("asm/nonmatchings/code_6B170/alSynFreeVoice.s")

void alSynSetVol(ALSynth *synth, ALVoice *v, s16 volume, ALMicroTime t)
{
    ALParam  *update;
    ALFilter *f;

    if (v->pvoice != NULL) {
      
        update = __allocParam();
        ALFailIf(update == 0, ERR_ALSYN_NO_UPDATE);

        update->delta  = synth->paramSamples + v->pvoice->offset;
        update->type   = AL_FILTER_SET_VOLUME;
        update->data.i = volume;
        update->moredata.i  = _timeToSamples(synth, t);
        update->next = 0;

        f = v->pvoice->channelKnob;
        (*f->setParam)(f, AL_FILTER_ADD_UPDATE, update);        
    }
}

//#pragma GLOBAL_ASM("asm/nonmatchings/code_6B170/alSynSetVol.s")
