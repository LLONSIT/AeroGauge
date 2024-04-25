#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"
#include "macro.h"

//File declaration
void func_8001E1C0(void);                                  /* extern */
void func_8001E218(void);
void func_8001E340(void);
void func_8001E46C(void);
void func_8001E4A4(void);

void func_8001E1C0(void) {
    func_80000610(0);
    func_80001418(0);
    func_80001418(1);
    func_80001418(2);
    func_80001418(3);
    func_80001418(4);
    func_80001418(5);
    func_80001418(6);
}


#ifdef NON_MATCHING
void func_8001E218(void) {
    static s32 temp_t4;
    u8 var_a2;
    static s32 D_8008B830 = 0;

    if (D_8013FC88.unk4 & 1) {
        if ((D_8008B830 % 30) == 0) {
            D_80109C28.unk9C = 0x7FFF;
            D_80109C28.unk9E = 0x40;
            D_80109C28.unkA4 = 1.0f;
            func_800013C0(0x17, 6);
        }
        D_8008B830++;
        return;
    }

    if (D_8008B830 != 0) {
        D_8008B830 = 0;
    }
    //temp_t4 = D_8013FC88.unk4 & 0xC00;

    if (D_8013FC88.unk4 & 0xC00) {
        var_a2 = 0x40;
        if ((D_8013FC88.unk0 % 21U) == 0) {
            if (D_8013FF90 == 5) {
                switch (D_8013FC88.unk4 & 0xC00) {                  /* irregular */
                case 0xC00:
                    break;
                case 0x400:
                    var_a2 = 0x20;
                    break;
                case 0x800:
                    var_a2 = 0x60;
                    break;
                }
            }
            D_80109C28.unk9C = 0x3FFF;
            D_80109C28.unk9E = var_a2;
            func_800013C0(0x20, 6);
        }
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1EDC0/func_8001E218.s")
#endif

#ifdef NEEDS_RODATA
void func_8001E340(void) {
    switch (D_8013FF90.GameMode) {
    case TIME_ATTACK:
    case SINGLE_TIME:
    case SINGLE_TIME_1:
    case GRANDPRIX_TOTAL_TIME:
    case GRANDPRIX_NO_TOTAL_TIME:
    case VS_MODE:
    case UNKNOWN1:
        func_8001E1C0();
        return;
    case 7:
        if (func_8000CE14(3) != 0) {
            D_80109BDC = 0x6E14;
            switch (D_8013FF9B) {                   /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                func_800005C0(0xEU, 0U);
                return;
            case 1:                                 /* switch 1 */
                func_800005C0(8U, 0U);
                return;
            case 2:                                 /* switch 1 */
                func_800005C0(0xAU, 0U);
                return;
            case 3:                                 /* switch 1 */
                func_800005C0(4U, 0U);
                return;
            }
        } else {
        default:
            return;
        }
        break;
    case 9:
        func_8001E1C0();
        D_80109BDC = 0x6E14;
        func_800005C0(1U, 0U);
        return;
    case 10:
        func_8001E1C0();
        D_80109BDC = 0x6E14;
        func_800005C0(3U, 0U);
        break;
    }
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/1EDC0/func_8001E340.s")
#endif

void func_8001E46C(void) {
    func_8001E1C0();
    D_80109BDC = 0x6E14;
    func_800005C0(0x12U, 0U);
}

void func_8001E4A4(void) {
    func_8001E1C0();
    D_80109BDC = 0x6E14;
    func_800005C0(0x10U, 0U);
}

