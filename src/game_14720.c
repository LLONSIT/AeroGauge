#include <ultra64.h>
#include "variables.h"
#include "structs.h"
#include "functions.h"

#pragma GLOBAL_ASM("asm/nonmatchings/game_14720/func_80013B20.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_14720/func_80013C8C.s")


void func_80013F40(struct unk_struct_80013F40* arg0) {
   
    func_80011DCC();
    func_800128BC(arg0);
    func_80014534(arg0);
   
    if ((arg0->unk34.b)) { //  & 0x20000
        
        func_8001412C(arg0);
        
    } else {
        func_800135A0(arg0);
    }
    func_80013C8C(arg0);
}


void func_80013FA8(s32 arg0) {
    func_80011B60();
    func_80011CCC(arg0);
    func_80012770(arg0);
    func_80012848(arg0);
    func_80014420(arg0);
    func_80013460(arg0);
    func_80013B20(arg0);
}



#pragma GLOBAL_ASM("asm/nonmatchings/game_14720/func_80014000.s")

#pragma GLOBAL_ASM("asm/nonmatchings/game_14720/func_8001412C.s")
