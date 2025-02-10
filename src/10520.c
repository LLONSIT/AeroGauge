#include <ultra64.h>
#include "functions.h"
#include "structs.h"
#include "variables.h"

void osSetTime(OSTime time);

//.Extern
extern s32 D_8008C0EC;


s32 D_800821B0[4] = {0, 1, 2, 3};
s32 D_800821C0 = 0;

void func_8000F920(void) {
    D_8013FF90.GameMode = 7;
    D_8013FF90.unk7 = 0;
    D_8013FF90.unk9 = 8;
    D_8013FF90.unkB = D_800821B0[D_800821C0];
    D_8013FF90.unk5 = 1;    
    
    D_8013FF90.unk2 = 0x3C;    
    
    D_800821C0++;
    if ((D_800821C0) == 4) {
        D_800821C0 = 0;
    }
    D_8013FF84 = 5;
}

//Display_NO_CONTROLLER
void func_8000F990(Gfx** gDisplayList) {
    Gfx *gDisplayListHead;
    static u8 temp_t0 = 0;

    if (temp_t0 >= 0 && temp_t0 < 0x1E) {
        gDisplayListHead = *gDisplayList;
        update_rgba(255, 0, 0, 255); // Red color
        osSetTime(0x70 << 0 | 0x200000000 << 4);  //???
        print_text(&gDisplayListHead, "NO CONTROLLER", &D_8008C0EC); 

        *gDisplayList = gDisplayListHead;
    }

    temp_t0++;
    if (temp_t0 == 0x3C) {
        temp_t0 = 0;
    }
}

