#include <ultra64.h>
#include <libaudio.h>
#include <ultratypes.h>

void alSynDelete(ALSynth *s) {
    s->head = 0;
}

