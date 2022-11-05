#include "ultratypes.h"

struct unk_8001DF40 {

	u8 unk0;
	s32 unk2;
	s32 unk20;
};

struct unk_struct_8013FC { 

    float a[4][4];
    float b[6][6];
    int n;
    float y;
    char g[0x1];
    char c[0x22];
 unsigned short unkFC;


};
struct unk_struct_8006B {


	s32 unk3C;
	s32 unk40;
	s32 unk28;


};

struct struct_8001AB94 {
    s16 unk0;
    s16 unk2;
    s8 pad[0x8];
    s32 unk10;
};


struct  unk_struct_D801DD30 {



    s8 pad[0x56];
    s32 unk2CC;
    s32 unk2DC;
    s32 unk2C8;
    u32 unk2D8;
    s32 unk2C4;
};

typedef struct  {
  /* 0x0 */   s8 pad[0x380];
  /* 0x380 */ s16 unk380; //used
  /* 0x382 */ s16 unk382; //used
} unk_struct_8001369C;

typedef struct {
    unk_struct_8001369C *unk0[5];
} D_801369C; // size 0x14

