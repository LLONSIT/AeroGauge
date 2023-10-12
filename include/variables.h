#ifndef VARIABLES_H
#define VARIABLES_H
#include <ultra64.h>
#include <PR/sched.h>
#include "macros.h"

//game_10640
extern s32 D_8013FF84;


//game_E270

extern s32 gRaceLevel[]; //switch
extern s32 D_8008BEBC;
extern s8 D_80095538;
extern s8 gPrintDest; //sprintf dest for game_E270

//game_1FC0

//0x8008B  asm symbols
extern s16 D_8008B7DC;
extern s16 D_8008B7E0;
extern s16 D_8008B7E4;
extern s16 D_8008B7E8;
extern s16 D_8008B7EC;


//not clasified yet
extern OSMesgQueue D_801AC060;
extern s32 *D_80093680;
extern u16 D_801AC0C0;
extern u16 D_801AC090;
extern s16 D_801AC0A8;
extern OSMesg D_801AC078;
extern OSThread D_801AAEB0;
extern s32 D_8009369C;
extern s32 D_801AB060;
extern s32 D_80093690;
extern  u8 D_801AC092;
extern s8 gPlayerLapCount;

extern u8 D_8019E6A8;

extern s8 D_8013FF94;
extern s32 D_8016C420;
extern s32 D_8016C424;

//game_DA40
extern u8 D_8013FFB8;
extern f64 D_80095420;
extern f32 D_8013F7D0;
extern f32 D_8013F7D4;


//race_core
//game_1A230
extern s8 gPlayerRacePos;
extern s32 D_8008C8CC;
extern const char D_80096C94;
extern f64 D_80096CD0;
extern s32 D_8008C8D4;
extern s8 D_80096BE4;
extern s8 D_80096BF4;
extern s8 D_80096C00;


//game_10D60
extern f32 gUnk_YPos; //it stores the player car position value
extern f32 D_800962D0;
extern f32 D_800962D4;
extern s8 D_8008F640;
extern s8 D_8008F644;
extern s8 D_8019EE00;
extern s8 D_8019EE01;
extern s8 D_8008F640;
extern s8 D_8008F644;
extern u16 D_8019EE02;
extern s16 D_8019EE04;
extern s32 D_8019EE08;
extern s32 D_8019EE0C;
extern s32 D_8019EE10;
extern s32 D_8019EE14;

//game_16BD0
extern s32 D_8013FC84;

//game_1CC30

extern s8 D_80096510;

//game_1CA50
extern s32 D_8008B7F0;

//game_1EDC0
extern s16 D_80109BDC;

//game_202A0
extern s32 D_8008C910;
extern s32 D_8008C8DC;
extern s32 __osCurrentTime;
extern f64 D_8008C900;
extern f64 D_8008C908;
extern s32 D_8008C8F4;
extern s32 D_8008C8F8;
extern s32 D_8008C8DC;
extern s32 __osCurrentTime;
extern s32 D_8008C910;

//RGBA from game_202A0
extern u8 gCurrentColorRed;
extern u8 gCurrentColorBlue;
extern u8 gCurrentColorGreen;
extern u8 gCurrentColorAlpha;


//game_2360
extern s32 D_8010C438;


//game_24890

extern f32 func_80023C90(f32);
extern f32 D_80097230;
extern f32 D_80097234;
extern f64 D_80097238;
extern f64 D_80097240;



//game_3F900

extern u8 D_8008EF4C;
extern s32 D_80394518;
extern s32 D_80394A70;
extern s32 D_80394A98;
extern s32 D_80394DE8;

//game_53A60
extern u8 D_8008F270;
extern u8 D_8033D0A0;
extern u8 D_8033E9B0;
extern u8 race_tex; //yakuza kaza
extern u8 D_803402C0;
extern u8 D_803416D0;
extern u8 D_803420D8;
extern u8 D_8034A840;


//game_62900
extern u8 D_80092D54;
extern s32 D_8013FF84;
extern s32 D_8019E0F0;
extern u8 D_8019FFE8;
extern OSMesgQueue D_801A8750;
extern OSSched   D_801A8868;
extern OSScClient D_801AAAF8;
extern s32 D_8019FC18;


//thread1
extern u8 SegmentUnkStart[]; //?
extern u8 D_183B90[]; //?
extern s32 D_8008B1F8;
extern s32 D_80270800[];

//core
extern s32 ai_data;

//final_thread
extern s32 D_80092E3C;
extern s32 osTvType;
extern OSThread D_801A45A0; //second_thread?
extern u8 D_80092E3F;
extern OSMesgQueue* D_801AAAF0;
extern void* D_801A8768;

//game_10D60
extern f32 D_800828B8;
extern f32 D_800828C0;
extern f32 D_800962A8;
extern f32 D_800995C0;
extern f32 D_8013F880;
extern f32 D_8013F888;
extern f32 D_8013F890;
extern u16 D_8013FC8C;

//game_9D50
extern u8 D_80081FD4;

//core_16BD0
/*blank*/


//race_init
extern u8 D_8008213C[];
extern u8 D_80097988[];
extern u8 D_8019ED3A[];


//game_470E0
extern UNK_TYPE D_803B8920;
extern UNK_TYPE D_803BBDF8;
extern UNK_TYPE D_8019EDB0;
extern UNK_TYPE D_8019EDC8;

//game_1FD50
extern s32 D_8008B870[];

//game_15D60
extern f32 D_800969A8;

//game_61570
extern OSMesgQueue D_8019FB78;
extern void *D_8019FB90;

//game_337B0
extern s32 D_8008C31C;
extern u8 D_8008ED00;
extern s32 D_8008ED18[];
extern char* D_80097504;
extern Gfx* D_8019E300;
extern Gfx *D_8019E318;
extern u8 D_8019E333;
extern s32 D_801A0028[];

//game_65FF0 (game init?)
extern s32 D_80092DF4;
extern s32 D_801A2090;
extern s32 D_801A4240;
#endif //VARIABLES_H
