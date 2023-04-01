#include <ultra64.h>
#include "functions.h"
#include "macros.h"
#include "variables.h"
#include "structs.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_80019930.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_80019C94.s")

#if 0
//weird noppad?
void func_80019FB4(Gfx** gDisplayList) {
    Gfx *gDisplayListHead;
    s8* str; //Current String
    s16 msgPos; //Message Possition

    if (D_8013CEC0 == 5) {
        str = &D_80094338; //"DRAWN GAME"
        msgPos = 0xD;
    } else {
        switch (D_8013CE6C) { //menu opt?
        case 2:
        case 3:
            str = &D_80094344; //"RETIRE"
            msgPos = 0xF;
            break;
        case MAX_TIME:
            str =  &D_8009434C; //"TIME UP"
            msgPos = 0xF;
            break;
        }
    }
    gDisplayListHead = *gDisplayList;
    func_80020014(0xC8, 0xC8, 0xC8, 0xFF);
    osSetTime((msgPos * 8) + 0xC, 0x70); //this determine the pos?
    Print_Text(&gDisplayListHead, str, &D_8008B90C);
    *gDisplayList = gDisplayListHead;
}
#endif

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_80019FB4.s")


#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001A0B0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001A3D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001A5D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001A750.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001AA6C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001B1BC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001B290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001B468.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001B628.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001B6FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001B858.s")

void func_8001BAA4(void) {
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001BAAC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001BE04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001C050.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001C5F0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001C77C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001C7C0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001CA04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001CA38.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001CF10.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001D0D0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001D600.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001D720.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001D9F8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001DC24.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001DDB0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001DE80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001E02C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001E148.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001E598.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001E5EC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001E7A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001E7D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001E868.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001E8D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001EA30.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001EA88.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001EBB4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001ECE4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_1A530/func_8001ED1C.s")
