#include <ultra64.h>
#include <PR/gbi.h> //for macros
#include "structs.h"
#include "functions.h"
#include "variables.h"
#include "macros.h"

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000D670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000D708.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000D97C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000DBC0.s")

/************************************************************


 * This nice function does this message at the init of a race

 * syntax: "Round number Level Current Message"


************************************************************/


//D_80095538 = ROUND %d %s %s
void Render_InitRaceMesg(Gfx** gDisplayList, s32 Round, char *mesg) {
    Gfx* gDisplayListHead;

    sprintf(&gPrintDest, &D_80095538, Round+1, gRaceLevel[Round], mesg);
    gDisplayListHead = *gDisplayList;
    Print_text(&gDisplayListHead, &gPrintDest, &D_8008BEBC);
    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000DEDC.s")

UNUSED func_8000DFBC(void) {
}
