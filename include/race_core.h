#ifndef RACE_CORE_H
#define RACE_CORE_H

extern s8 *D_8008C540; //unkMessage
extern s32 D_80096C98;

struct in_local_struct_8001AB94 {
    u16 unk0;
    u16 unk2;
    s16 unk4;
    s16 unk6; //filler
    s16 unk8;
    s16 unkA; //filler
    u8 unkC;
    s32 unk10;
};

//TODO: join the different gSelector structs
struct gSelector_2 {
    s8 unk0;
    s8 pad[0x18];
    u8 unk19;
};

struct unk_8001B35C {
/* 0x0 */ s32 unk0;
/* 0x4 */ u16 unk4;
/* 0x6 */ u16 unk6;
/* 0x8 */ u16 unk8;
/* 0xA */ u16 unkA;
/* 0xC */ u16 unkC;
/* 0xE */ u16 unkE;
/* 0x10 */ f32 unk10;
/* 0x14 */ s32 unk14;
/* 0x18 */ s32 unk18;
/* 0x1C */ s32 unk1C;
};
#endif //RACE_CORE_H
