#include <ultra64.h>
#include "variables.h"
#include "structs.h"
#include "functions.h"

typedef struct
{
    s32 unk0;
    u8 pad[0x14];
} var; // size 0x18

struct gauge_struct
{
    ALSndPlayer *player;
    u8 unk4;
    ALSndId unk6;
    s32 unk8; // Sound status flag?
    ALSndId unkC;
    char unkE;
    char unkF;
    ALSound *unk10;
    float unk14;
};

typedef struct unkthing
{
    char unk00[0xE];
    s16 unkE;
    ALSound *unk10[0x10]; // how many???
} unkthing;

extern struct unkthing *D_80109C20;
extern ALSound *D_80109C24;
extern struct gauge_struct D_80109C28[7];

extern var D_80109C30[4];

void func_800013C0(u8 arg0, u8 arg1)
{
    if ((arg0 < D_80109C20->unkE) && (arg1 < 7))
    {
        D_80109C28[arg1].unk4 = arg0;
        D_80109C28[arg1].unk8 = 2;
    }
}

void func_80001418(u8 arg0)
{
    if (arg0 < 7)
    {
        D_80109C30[arg0].unk0 = 1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/1FC0/func_8000144C.s")

void func_800015C4(void)
{
    s32 unk10tmp; /* !@ Moved some stack vars*/
    ALSndPlayer *player;
    u8 i;

    for (i = 0; i < 7; i++)
    {
        struct gauge_struct *temp_s1 = (struct gauge_struct *)&D_80109C28[i];
        player = temp_s1->player;

        alSndpSetSound(player, temp_s1->unk6);
        alSndpSetVol(player, temp_s1->unkC);
        alSndpSetPan(player, temp_s1->unkE);
        alSndpSetFXMix(player, temp_s1->unkF);
        alSndpSetPitch(player, temp_s1->unk14);

        switch (temp_s1->unk8)
        { /* irregular */
        case 0:
            break;
        case 1:
            alSndpStop(player);
            temp_s1->unk8 = 0;
            break;
        case 2:
            if (alSndpGetState(player) == AL_PLAYING)
            {
                alSndpStop(player);
            }
            temp_s1->unk8 = 3; // Stop flag?
            break;
        case 3:
            if (alSndpGetState(player) == AL_STOPPED)
            {
                alSndpDeallocate(player, temp_s1->unk6);
                D_80109C24 = (unk10tmp = D_80109C20->unk10[temp_s1->unk4]);
                temp_s1->unk6 = alSndpAllocate(player, D_80109C24) & 0xFFFF;
                alSndpSetSound(player, temp_s1->unk6);
                alSndpPlay(player);
                temp_s1->unk8 = 0;
            }
            break;
        }
    }
}
