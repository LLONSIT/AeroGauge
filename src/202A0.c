#include "ultra64.h"
#include "variables.h"
#include "structs.h"

#ifdef NEEDS_DATA
char gCurrentColorRed[4] = {0xFF, 0, 0, 0}
char gCurrentColorGreen[4] = {0xFF, 0, 0, 0}
char gCurrentColorBlue[4] = {0xFF, 0, 0, 0}
char gCurrentColorAlpha[4] = {0xFF, 0, 0, 0}
#else
char gCurrentColorRed;
char gCurrentColorGreen;
char gCurrentColorBlue;
char gCurrentColorAlpha;
#endif



#pragma GLOBAL_ASM("asm/nonmatchings/202A0/func_8001F6A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/osSetTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/func_8001F6C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/func_8001F6F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/func_8001F700.s")

void update_rgba(char red, char green, char blue, char alpha) {
    gCurrentColorRed = red;
    gCurrentColorGreen = green;
    gCurrentColorBlue = blue;
    gCurrentColorAlpha = alpha;
}

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/print_text.s")

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/func_8001F998.s")
