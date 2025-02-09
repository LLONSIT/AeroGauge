#include "ultra64.h"
#include "sched.h"

s32 func_8006299C(s32 *arg0);


extern u8 D_80092D54;
extern s32 D_8013FF84;
extern s32 D_8019E0F0;
extern u8 D_8019FFE8;
extern OSMesgQueue D_801A8750;
extern OSSched   D_801A8868;
extern OSScClient D_801AAAF8;
extern OSMesgQueue D_8019FB78;

extern u8 D_80092D58;
extern u8 D_80098820[];
extern u8 D_80098828[];
extern u8 D_80098830[];
extern u8 D_80098838[];
extern u8 D_8019E0F4;
extern u8 D_8019E0F5;
extern u8 D_8019E0F6;
extern u8 D_8019FC10;
extern u32 D_8019FC18[];
extern u8 D_8019FDF8;

u8 func_80062210(void);
void func_800623E8(int);
void func_80060970(void);
void func_800609B4(void);
void func_800627E0(void*);


#pragma GLOBAL_ASM("asm/nonmatchings/core/Eeprom/func_80061D00.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/Eeprom/func_80061E8C.s")


u8 func_80062018(s64* arg0) {
    u8 sp3F;
    u16 i;
    u32* var_v0;
    s64 sp28[2];
    s64 sp20;

    sp3F = 0;
    if (osEepromLongRead(&D_8019FB78, 3, arg0, 0x1E8) == 0) {
        if (osEepromLongRead(&D_8019FB78, 1, sp28, 0x10) == 0) {
            var_v0 = (u32*)arg0;
            sp20 = 0;
            for (i = 0; i < 0x7A; i++, var_v0++) {
                sp20 += *var_v0;
            }
            
            if ((sp20 != sp28[0]) || (sp20 != sp28[1])) {
                sp3F = 0x22;
            }
        } else {
            sp3F = 0x1F;
        }
    } else {
        sp3F = 0x1F;
    }
    return sp3F;
}


s32 func_80062114(void) {
    u8 var_v1 = func_80062018(&D_8019FC18);

    if (var_v1 == 0) {
        var_v1 = func_8006299C(&D_8019FC18);
    }
    return var_v1 ;
}

void func_80062154(void) {
    switch (D_80092D54) {                           /* irregular */
    case 0:
       osScRemoveClient(&D_801A8868, &D_801AAAF8);
        D_8019FFE8 = func_80062210();
       osScAddClient(&D_801A8868, &D_801AAAF8, &D_801A8750);
        D_80092D54 = 1;
        return;
    case 1:
        if (D_8019FFE8 != 0) {
            func_800623E8(1);
            D_8019FFE8 = 0;
        }
        D_80092D54 = 0;
        D_8013FF84 = D_8019E0F0;
        return;
    }
}

u8 func_80062210(void) {
    u8 a;
    u8 sp3E;
    char var_v0;
    
    struct {
    s64 sp2C;
    s64 sp34;
    } sixty_four_bits;

    sp3E = 0;
    func_80060970();
    if (D_80092D58 != 0) {
        func_800627E0(&D_8019FC18);
        D_80092D58 = 0;
    }
    if (D_8019E0F4 != 0) {
        if (osEepromLongWrite(&D_8019FB78, D_80098820[D_8019FC10], &D_8019FC18[D_80098830[D_8019FC10]], 0x28) != 0) {
            sp3E = 0x20;
        }
        D_8019E0F4 = 0;
    }
    if (D_8019E0F5 != 0) {
        if (osEepromLongWrite(&D_8019FB78, D_80098828[D_8019FC10], &D_8019FC18[D_80098838[D_8019FC10]], 0x28) != 0) {
            sp3E = 0x20;
        }
        D_8019E0F5 = 0;
    }
    if (D_8019E0F6 != 0) {
        if (osEepromLongWrite(&D_8019FB78, 0x3FU, &D_8019FDF8, 8) != 0) {
            sp3E = 0x20;
        }
        D_8019E0F6 = 0;
    }

    for (sixty_four_bits.sp2C = 0, var_v0 = 0; var_v0 < 0x7A; var_v0++) {
        sixty_four_bits.sp2C +=  D_8019FC18[var_v0];
    } 
    
    sixty_four_bits.sp34 = sixty_four_bits.sp2C;
    if (osEepromLongWrite(&D_8019FB78, 1U,  (u8*)&sixty_four_bits.sp2C, 0x10) != 0) {
        sp3E = 0x20;
    }
    
    func_800609B4();
    D_80092D58 = 1;
    return sp3E;
}

#pragma GLOBAL_ASM("asm/nonmatchings/core/Eeprom/func_800623E8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/Eeprom/func_800625C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/Eeprom/func_800627E0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/core/Eeprom/func_8006299C.s")
