#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"

extern struct R_G_B_A gCurrentColor[];


#pragma GLOBAL_ASM("asm/nonmatchings/menu/Pause/Pause_Menu_Options.s")


void Call_update_speedometer_colors(s32 index) {

 Update_speedometer_colors(gCurrentColor[index].red, gCurrentColor[index].green, gCurrentColor[index].blue, gCurrentColor[index].alpha);

}

