#include <ultra64.h>

void func_80065E60(void *, u32);                       /* extern */
extern u8 D_80092E10;
extern void *D_801A4240;
extern OSMesgQueue D_801A4560;
extern void *D_801A4578;
extern OSMesgQueue D_801A4580;

void func_80065630(void) {
    if (D_80092E10 != 0) {
        osCreatePiManager(0x96, &D_801A4560, &D_801A4240, 0xC8);
        osCreateMesgQueue(&D_801A4580, &D_801A4578, 1);
        D_80092E10 = 0;
    }
}

/* Original name: romCopy */
void dma_copy(u32 arg0, void *arg1, u32 arg2) {
    OSIoMesg sp30;
    void *sp2C;

    func_80065E60(arg1, arg2);
    osPiStartDma(&sp30, 0, 0, arg0, arg1, arg2, &D_801A4580);
    osRecvMesg(&D_801A4580, &sp2C, 1);
}

/* TODO is this right ? */
void func_80065704(u32 *arg0, u32 *arg1) {
    u32 temp_a0;

    temp_a0 = arg1[0];
    dma_copy(temp_a0, arg0, arg1[1] - temp_a0);
}

