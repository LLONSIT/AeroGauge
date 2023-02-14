#include <ultra64.h>
#include "variables.h"
#include "functions.h"
#include "structs.h"

//TODO: should be u64 or s64
void func_8001F6A0(s32 arg0, s32 arg1) {
    D_8008C8F4 = arg0;
    D_8008C8F8 = arg1;
}


void osSetTime(s32 arg0, s32 arg1) {
    D_8008C8DC = arg0;
    __osCurrentTime = arg1;
}


void func_8001F6C8(s32 arg0, s32 arg1) {
    D_8008C8DC += arg0;
    __osCurrentTime += arg1;
}


void func_8001F6F4(s32 arg0) {
    D_8008C910 = arg0;
}


void func_8001F700(f64 arg0, f64 arg1) {
    if (arg0 > 0.0) {
        D_8008C900 = 1.0 / arg0;
    }
    if (arg1 > 0.0) {
        D_8008C908 = 1.0 / arg1;
    }
}


//For each print_text use (alomost) this is necessary.

void Update_speedometer_colors(u8 Red, u8 Blue, u8 Green, u8 Alpha) {
    gCurrentColorRed = Red;
    gCurrentColorBlue = Blue;
    gCurrentColorGreen = Green;
    gCurrentColorAlpha = Alpha;
}


//#pragma GLOBAL_ASM("asm/nonmatchings/game_202A0/Update_speedometer_colors.s")

struct n {

s8 pad[0x8];
s16 unk8;
};


//void* func_8001F998(Gfx**, s32, s32, u8, s32);     /* extern */
extern s32 D_8008C8DC;
extern s32 D_8008C910;
extern s32 __osCurrentTime;

/*
void Print_text(Gfx** gDisplayList, s8* str, s32 var) {
    Gfx* gDisplayListHead;
    s32 pad[2];
    
    u8 var_a3;
    u8* var_s1;
    struct n *temp_v0;
    gDisplayListHead = *gDisplayList;
    
    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    gSPTexture(gDisplayListHead++, 0x800, 0x800, 0, G_TX_RENDERTILE, G_ON);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_NONE);
    gDPSetAlphaDither(gDisplayListHead++, G_AD_PATTERN | 0x30);
    var_a3 = *str;
    if (var_a3 != 0) {
        var_s1 = str;
        if (var_a3 != 0) {
loop_3:
            temp_v0 = func_8001F998(&gDisplayListHead, D_8008C8DC, __osCurrentTime, var_a3, var);
            if (temp_v0 != NULL) {
                if (D_8008C910 < 0) {
                    D_8008C8DC += temp_v0->unk8;
                } else {
                    D_8008C8DC += D_8008C910;
                }
            }
            var_a3 = var_s1[4-3];
            var_s1 += 1;
            if ((var_a3 != 0) && (var_a3 != 0)) {
                goto loop_3;
            }
        }
    }
    *gDisplayList = gDisplayListHead;
}
*/
#pragma GLOBAL_ASM("asm/nonmatchings/game_202A0/Print_text.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_202A0/func_8001F998.s")
