#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_1CA50/Print_Menu_Options.s")


extern struct R_G_B_A gCurrentColor[];


void func_8001BFE4(s32 index) {

 Update_speedometer_colors(gCurrentColor[index].red, gCurrentColor[index].green, gCurrentColor[index].blue, gCurrentColor[index].alpha);

}




//#pragma GLOBAL_ASM("asm/nonmatchings/game_1CA50/func_8001BFE4.s")
