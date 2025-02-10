#include <ultra64.h>
#include "audio.h"
#include "simple.h"
#include "segment.h"



/**** audio globals ****/
extern u8 gAudioHeap[AUDIO_HEAP_SIZE];
extern s8 D_8019E4A0;
extern u8          *gSeqPtr;
extern ALSynConfig   gAlConfig;
extern ALHeap             gAlHeap;
extern ALBankFile    *gBankPtr;

void init_audio(void) 
{
    u32           len;
    amConfig      amc;
    
    alHeapInit(&gAlHeap, gAudioHeap, 0x41EB0);    

    /*
     * Load the bank file from ROM
     */
    len = SegmentTblStart_ROM_START - BankSegment_ROM_START;
    gBankPtr = alHeapAlloc(&gAlHeap, 1, len);
    dma_copy(BankSegment_ROM_START, gBankPtr, len);
    
    alBnkfNew(gBankPtr, (u8 *) SegmentTblStart_ROM_START);

    /*
     * Load the sequence file from ROM
     */
    len = SegmentTblEnd_ROM_START - SeqSegment_ROM_START;
    gSeqPtr = alHeapAlloc(&gAlHeap, 1, len);
    dma_copy(SeqSegment_ROM_START, (char *) gSeqPtr, len);
    alBnkfNew((ALBankFile*)gSeqPtr, (u8 *) SegmentTblEnd_ROM_START);
    

    /*
     * Create the Audio Manager
     */
    gAlConfig.maxVVoices = 0x1e;
    gAlConfig.maxPVoices = 0x1e;
    gAlConfig.maxUpdates = 0x100;
    gAlConfig.dmaproc    = 0;                  /* audio mgr will fill this in */
    gAlConfig.fxType	 = 0;
    gAlConfig.outputRate = 0;                  /* audio mgr will fill this in */
    gAlConfig.heap       = &gAlHeap;
    
    amc.outputRate = 0x5622;
    amc.framesPerField = 1;
    amc.maxACMDSize = 0x1000;
    D_8019E4A0 = 0;
 
    amCreateAudioMgr(&gAlConfig, AUDIO_PRIORITY, &amc);
    
}

