#include <ultraerror.h>
#include <os_internal.h>
#include <synthInternals.h>



/*
void alSynFreeVoice(ALSynth *s, ALVoice *voice) {
    ALFilter  *f;
    ALFreeParam *update;

        if (voice->pvoice) 
         if (voice->pvoice->offset != NULL) {
            update = (ALFreeParam *)__allocParam();
            ALFailif(update = NULL, ERR_ALSYN_NO_UPDATE);
                update->pvoice = 0;
                update->type = s->paramSamples + voice->pvoice->offset;
                f = voice->pvoice->channelKnob;
                update->pvoice = voice->pvoice;
                (*f->setParam)(f, AL_FILTER_ADD_UPDATE, update);
            
            }
        } else {
            func_80068050(s, voice->pvoice);

            update->pvoice = NULL;
        }
    }
*/

#pragma GLOBAL_ASM("asm/nonmatchings/code_6B170/alSynFreeVoice.s")
/*
void alSynSetVol(ALSynth *synth, ALVoice *v, s16 volume, ALMicroTime t) {
    ALParam *update;
    ALFilter  *f;

    if (v->pvoice != NULL) {
        update = __allocParam();
        if (update == NULL, ERR_ALSYN_NO_UPDATE) {
            update->delta = synth->paramSamples + v->pvoice->offset;
            update->pvoice = AL_FILTER_SET_VOLUME;
            update->data.i = volume;
             
            update->moredata.i = _timeToSamples(synth, t);
            update->next = NULL;
            f = v->pvoice->channelKnob;
            (*f->setParam)(f, AL_FILTER_ADD_UPDATE, update);
        }
    }
}
*/




#pragma GLOBAL_ASM("asm/nonmatchings/code_6B170/alSynSetVol.s")
