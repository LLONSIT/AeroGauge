#ifndef STRUCTS_H
#define STRUCTS_H
#include "macros.h"
#include "types.h"

struct unk_8001DF40 {

	u8 unk0;
	s32 unk2;
	s32 unk20;
};

struct unk_struct_8013FC {
    s8 pad[0xFC];
 unsigned short unkFC;


};

struct unk_struct_8006B {
	s32 unk3C;
	s32 unk40;
	s32 unk28;
};

struct struct_8001AB94 {
    u16 unk0;
    u16 unk2;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s32 unk10;
    s32 unk14;
    s32 unk18;
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


struct unk_struct_80041964 {

    s8 pad[0x5]; //padding
    s8 unk4; //used
    s8 unk5; //used
    s8 unk7; //used

};


struct unk_struct_80024240 {

    f32 unk0;
    f32 unk4;
    f32 unk8;

};

struct unk_struct_8001BFE {

    s8 unk0;
    s8 unk1;
    s8 unk2;
    s8 unk3;

};



struct unk_struct_800061C4 {
    s8 pad[0xB0];
    f32 unkB0;
    f32 unkB4;
    f32 unkB8;
    f32 unkBC;
    f32 unkC0;


};


struct race_a {

    u16 unk0;
    u16 unk2;
    u16 unk4;
    s32 unk8;
    s32 unkC;
    f32 PlayerPos;
};

struct unk_struct_8001516 {

    s8 fill[0x2];
    unsigned char unk2;


};


struct unk_struct_8001583C {

    s8 pad[0xC8];
    f32 unkC8;
    f32 unkD0;
    f32 unkD8;
    s8 unk57;
    s8 unk58;
    f32 unk5C;
    f32 unk60;
    s16 unk49C;
    s16 unk49E;
    s8 unk4CC;
    s8 unk4CD;
    s8 unk4CF;
    s8 unk4CE;
};


struct unk_struct_80010C14{

    s8 pad[0xFC];
    s16 unkFC;
    s16 unkFE;
    s16 unk100;
    s16 unk102;
    s16 unk104;
    s16 unk106;
    s8 unk108;
    s32 unk10C;


};


struct unk_struct_800114A0 {
    s16 unk0;
    s16 unk2;
    s16 unk4;
    f32 unk8;
    f32 unk10;
    f32 unkC;
};

struct unk_struct_8005E1DC {
    s8 pad[0x6];
    s8 unk6;
    s8 unk7;
    s8 unk8;
};

struct unk_struct_80018944 {
    s8 pad[0x1B8];
    s32 unk1B8;

};

typedef struct {
    s32 unk0;
    u8 pad[0x14];
} struct_80109C30; // size 0x18


struct unk_struct_80013F40 {


s8 pad[0x34];
struct {
    s32 a : 14;
    s32 b : 1;
    
} unk34;


};

typedef struct {

 u8 unk0;
 s32 unk4;
 s32 unk8;

} struct_8010C428;


typedef struct {

    s32 unk0;
    s8 pad[0x19];

} struct_80109BCC;


typedef struct {

    char unk0;
    s32 unk4;
    s32 unk8;


}c_struct;  //Core struct


 //This two structs are probably the same...
typedef struct var_S {

 s8 pad[0x23C];
 s32 unk23C;
 s32 unk240;

} unk_struct_80020684_1;

typedef struct  {

    s8 pad[0xA8];
    s32 unkA8;
    s8 ALIGNn[0x200-19]; 
    s32 unk29C;

} unk_struct_80020684_2;

typedef struct {
  s8 pad[0x26];
  s32 unk26;
  s32 unk28;
  s32 unk34;
  s32 unk38;
  s32 unk40;
  s32 unk42;
  u16 unk48;
  s32 unkF0;
}unk_struct_80010E40;


typedef struct {
  s8 pad[0x4];
  u16 unk4;
  s8 fill[0x30-2];
  u8 unk34;
  u8 unk35;
  u8 unk36;
  u8 unk37;
  u8 pad38[0x5C - 0x38];
}struct_80009EE0;


//used 

struct R_G_B_A {
  u8 red;
  u8 green;
  u8 blue;
  u8 alpha;
};


struct tr {
  s16 ulx;
  s16 uly;
  s16 lrx;
  s16 lry;
};

typedef struct {
  s8 unk0;
  s16 unk2;
  s8 unk4;
  s8 pad[4];
  s8 unk9;
  s8 filler[1];
  s8 unkB;
}gSelector_struct;


typedef struct{
  s32 unk0;
  s8 unk4;
  const s8 unk5;
  u8 filler[0x5];
  const s8 unkB;
}gSelector_1;


typedef struct {
    f32 unk0;
    f32 fovy;
    f32 aspect;
    f32 near;
    f32 far;
    f32 scale;
    Vec3f eye;
    Vec3f at;
    Vec3f up;
}mf;

//Figure out, if this members are actually used
struct game_22EC0_80022FD0_unk {
/* 0x00 */ u16 pad;
/* 0x02 */ u16 pad1;
/* 0x04 */ u16 unk4;
/* 0x06 */ u16 pad2;
/* 0x08 */ u8 unk8;
/* 0x0C */ int unk0C;
/* 0x10 */ int unk10;
          int unk14;
          int unk18;
          int unk1C;
          int unk20;
          int unk24;
          int unk28;
          int unk2C;
          int unk30;
          int unk34;
          int unk38;
          int unk3C;
            int unk40;
            int unk44;
            int unk48;
            int unk4C;
            float unk_X;
            float unk_Y;
            float unk_Z;
            s32 unk_5C;
    char kf[0x3C];
    int unk9C;
    int unkA0;
    int unkA4;
};

//Race core
struct in_local_unkStruct {
   u8 unk0;
   u16 unk2;
   u16 unk4;
   s32 unk8;
};

struct unk_8001ADC4 {
    u8 pad;
    u8 pad1[0x47];
    u8 unk48;
    u8 b[7];
    s8 unk50;
};

#endif 

