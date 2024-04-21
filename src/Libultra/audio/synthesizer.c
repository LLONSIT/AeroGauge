#include "common.h"

void __nextSampleTime(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/Libultra/audio/synthesizer/_timeToSamples.s")

#pragma GLOBAL_ASM("asm/nonmatchings/Libultra/audio/synthesizer/_freePVoice.s")

#pragma GLOBAL_ASM("asm/nonmatchings/Libultra/audio/synthesizer/_collectPVoices.s")

#pragma GLOBAL_ASM("asm/nonmatchings/Libultra/audio/synthesizer/__freeParam.s")

#pragma GLOBAL_ASM("asm/nonmatchings/Libultra/audio/synthesizer/__allocParam.s")

void _timeToSamplesNoRound(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/Libultra/audio/synthesizer/alAudioFrame.s")

#pragma GLOBAL_ASM("asm/nonmatchings/Libultra/audio/synthesizer/alSynNew.s")
