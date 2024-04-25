#include <ultra64.h>
#ifndef STRUCTS_H
#define STRUCTS_H

struct unk_800005C0 {
	u8 unk0; 	/* 0x0 */
	s16 unk2; 	/* 0x2 */
	int unk4; 	/* 0x4 */
    char next_bytes[24];/* 0x24 */
}; 			/* size = 0x30*/

struct unk_80000610 {
    int unk0; /* 0x0 */
    char next[0x19]; /* 0x19 */
}; /* size = 0x19 */

struct unk_8001AB94 {
    short unk0;
    short unk2;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
};

struct unk_8001AC64 {
    u16 unk0;
    u16 unk2;
    s16 unk4;
    s16 unk6; //filler
    s16 unk8;
    s16 unkA; //filler
    u8 unkC;
    s32 unk10;
};

struct unk_struct_80020684_1 {
	char pad[0x23C];
	struct unk_struct_80020684_2* unk23C;
	struct unk_struct_80020684_2* unk240;
};

struct unk_struct_80020684_2 {
    char pad[0xA8];
    s32 unkA8;
    char pad1[0x200-19];
    s32 unk29C;
};

struct struct_1A230_800{
/* 0x0 */ u8 unk0;
/* 0x2 */ u16 unk2;
/* 0x4 */ u16 unk4;
/* (not used) 0x12 */ char pad[0x12];
/* 0x18 */  s32 unk18;
};

struct R_G_B_A {
/* 0x0 */ unsigned char red;
/* 0x1 */ unsigned char green;
/* 0x2 */ unsigned char blue;
/* 0x3 */ unsigned char alpha;
};

struct struct_800820D4 {
    void (*unk8)();
    char pad[0x1];
};


typedef struct {
/* 0x0 */ u8 GameMode;
/* 0x2 */ short unk2;
/* 0x4 */ s8 unk4;
/* 0x5 */ s8 unk5;
/* 0x6 */ s8 unk6;
/* 0x7 */ s8 unk7;
/* 0x8 */ s8 unk8;
/* 0x9 */ s8 unk9;
/* 0xA */ s8 unkA;
/* 0xB */ s8 unkB;
/* 0xC */ s8 pad[1];
/* 0x10 */ int unk10;
/* 0x14 */ int unk14;
/* 0x18 */ s8 unk18;
/* 0x19 */ s8 unk19;
/* 0x1A */ u8 unk1A;
}struct_8013FF90;

struct unk_struct_80024240 {
/* 0x0 */ f32 unk0;
/* 0x4 */ f32 unk4;
/* 0x8 */ f32 unk8;
};

struct struct_8008FAE0 {
/* 0x0 */ int pad;
/* 0x4 */ int unk4;
/* 0x8 */ u16 unk8;
};

struct  unk_struct_D801DD30 {
    char pad[0x2C8];
    s16 unk2C8;
};

#endif /* STRUCTS_H */
