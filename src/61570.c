#include <ultra64.h>
#include "functions.h"
#include "structs.h"

//.bss
void* D_8019FBE0;

//File declarations
void func_80060B64(OSMesgQueue* arg0, struct unk_struct_D801DD30* arg1, u8 arg2);


#pragma GLOBAL_ASM("asm/nonmatchings/61570/func_80060970.s")

#pragma GLOBAL_ASM("asm/nonmatchings/61570/func_800609B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/61570/func_80060A3C.s")

#ifdef NEEDS_RODATA
void func_80060B64(OSMesgQueue* arg0, struct unk_struct_D801DD30* arg1, u8 arg2) {
    u32 temp_v0;

    osContStartReadData(arg0);
    osRecvMesg(arg0, &D_8019FBE0, 1);
    temp_v0 = osPfsInitPak(arg0, arg1, (s32) arg2);
    switch (temp_v0) {
    case 0:
        func_80060A3C(arg1);
        arg1->unk2C8 = 0;
        return;
    case 1:
        arg1->unk2C8 = 1;
        return;
    case 2:
        arg1->unk2C8 = 2;
        return;
    case 10:
        arg1->unk2C8 = 0xA;
        return;
    case 11:
        arg1->unk2C8 = 0xB;
        return;
    default:
        arg1->unk2C8 = 4;
        return;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/61570/func_80060B64.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/61570/func_80060C20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/61570/func_80060F20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/61570/func_80060FAC.s")
