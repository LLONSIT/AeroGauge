#include <ultra64.h>
#include "variables.h"
#include "structs.h"
#include "functions.h"
#include "macros.h"


struct unk_struct_D801DD30_1 {

u8 pad[0x2B1];
s32 unk2B4;
s32 unk2B8;


};

struct fa{
  s8 unk244;
  s8 unk245;

};

extern s32 D_8013FF88;
extern struct unk_struct_D801DD30_1 D_8013FC88;
extern s8 gSelector;
extern  char* D_80096BA8;
extern  char* D_80096BB4;
extern  char* D_80096BC0;
extern  char* D_80096BC8;

void func_800191FC(Gfx **gDisplayList, struct fa *arg1);
void func_80019508(Gfx** gDisplayList);
#define MORE_TO_LEFT 0xD
#define NOT_FULLY_CENTERED 0xE
#define ALMOST_CENTERED 0xF

#pragma GLOBAL_ASM("asm/nonmatchings/game_19AA0/func_80018EA0.s")
/*
void func_800191FC(Gfx **gDisplayList, struct fa *arg1) {
    s8 v0,v1;
    Gfx *gDisplayListHead;

    gDisplayListHead = *gDisplayList;
    gDPSetScissorFrac(gDisplayListHead++, G_SC_ODD_INTERLACE, 0x0040, 0x0020, 0x0C39, 0x0C00);
    if (((gSelector == 3) || (gSelector == 4)) && ((D_8013FF88 == 2) || (D_8013FF88 == 0))) {
        func_8000D708(&gDisplayListHead);
    }
    if (!(D_8013FC8C & 0x1000)) {
        if (D_8013FC8C & 2) {
            func_800199A0(&gDisplayListHead);
            func_80019B90(&gDisplayListHead);
        }
    } else if ((gSelector == 9) || (gSelector == 0xA)) {
        func_8001C030(&gDisplayListHead);
    } else if ((gSelector == 7) && (func_80009488() == 0)) {
        func_8000F990(&gDisplayListHead);
    }
    if ( arg1->unk244 >= 0) {
        func_80020EFC(&gDisplayListHead, 0, 8, 0x13F, 0xE7, 0, (u32) ((arg1->unk244 * 255.0f) / 30.0f) & 0xFF);
        arg1->unk244 = (s8) (arg1->unk244 - 1);
    }
    if (arg1->unk245 >= 0) {
        func_80020EFC(&gDisplayListHead, 0, 8, 0x13F, 0xE7, 0, (u32) ((1.0f - ((f32) arg1->unk245 / 30.0f)) * 255.0f) & 0xFF);
        arg1->unk245 = (s8) (arg1->unk245 - 1);
    }
    if (D_8013FF88 == 6) {
        func_80019508(&gDisplayListHead);
    }
    *gDisplayList = gDisplayListHead;
}

*/

#pragma GLOBAL_ASM("asm/nonmatchings/game_19AA0/func_800191FC.s")

#define MAX_TIME 4

void func_80019508(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;
    const char* str;
    s16 msgPos;

    if (gSelector == 5) {

        #ifdef JAPENESE_KIOSK_DEMO
            str = "DRAWN GAME";
            msgPos = MORE_TO_LEFT;
        #else
        if ((D_8013FC88.unk2B4 == 4) && (D_8013FC88.unk2B8 == 4)) {
            str = &D_80096BA8; //"TIME OVER"
            msgPos = NOT_FULLY_CENTERED;
        } else {
            str = &D_80096BB4; //"GAME_OVER""
            msgPos = NOT_FULLY_CENTERED;
        }
        #endif
    } else {
        #ifdef JAPENESE_KIOSK_DEMO
        switch (D_8013CE6C) {
        #else
        switch (D_8013FC88.unk2B4) {
        #endif
        case 2:
        case 3:
            str = &D_80096BC0; //"RETIRE"
            msgPos = ALMOST_CENTERED;
            break;
        case MAX_TIME:
            str = &D_80096BC8; //"TIME UP""
            msgPos = ALMOST_CENTERED;
            break;
        }
    }
    gDisplayListHead = *gDisplayList;
    Update_RGBA_Colors(0xC8U, 0xC8U, 0xC8U, 0xFFU);

    osSetTime((msgPos * 8) + 0xC, 0x70);

    Print_text(&gDisplayListHead, str, &D_8008BEBC);
    *gDisplayList = gDisplayListHead;
}

