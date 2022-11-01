#include <ultra64.h>
#include <libaudio.h>
//s#include "libultra_internal.h"
void __osCleanupThread(void);
extern OSThread *__osActiveQueue;


#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/func_80067990.s")

void alUnlink(ALLink *ln) {

    if (ln->next != NULL) {
        ln->next->prev = ln->prev;
    }

    if (ln->prev != NULL) {
        ln->prev->next = ln->next;
    }
}

void alLink(ALLink *element, ALLink *after) {

    element->next = after->next;
    element->prev = after;

    if (after->next != NULL) {
    after->next->prev = element;
    }
    after->next = element;
}



void alClose(ALGlobals *glob) {
    if (alGlobals != NULL) {
        alSynDelete(&glob->drvr);
        alGlobals = 0;
    }
}



#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/func_80067B7C.s")
 

#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/osCreateThread.s")
