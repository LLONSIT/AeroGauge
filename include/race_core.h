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

#endif //RACE_CORE_H
