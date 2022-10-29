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
    if (alGlobals != 0) { 
        alSynDelete(&glob->drvr);
        alGlobals = 0;
    }
}



#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/func_80067B7C.s")

/*
void osCreateThread(void *arg0, s32 arg1, s32 arg2, s32 arg3, u32 arg4, s32 arg5) {
    s32 sp20;
    s32 temp_s0;

    arg0->unk14 = arg1;
    arg0->unk4 = arg5;
    arg0->unk0 = 0;
    arg0->unk8 = 0;
    arg0->unk11C = arg2;
    arg0->unk38 = (s32) (arg3 >> 0x1F);
    arg0->unk3C = arg3;
    arg0->unkF4 = (s32) (arg4 - 0x10);
    arg0->unkF0 = (s32) (((s32) arg4 >> 0x1F) - (arg4 < 0x10U));
    arg0->unk100 = (s32) ((s32) &__osCleanupThread >> 0x1F);
    arg0->unk104 = &__osCleanupThread;
    sp20 = 0x3FFF01;
    arg0->unk118 = 0xFF03;
    arg0->unk128 = (u32) ((u32) (sp20 & 0x3F0000) >> 0x10);
    arg0->unk12C = 0x01000800;
    arg0->unk18 = 0;
    arg0->unk10 = 1;
    arg0->unk12 = 0;
    temp_s0 = __osDisableInt();
    arg0->unkC = (void *) __osActiveQueue;
    __osActiveQueue = arg0;
    __osRestoreInt(temp_s0);
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/code_68590/osCreateThread.s")
