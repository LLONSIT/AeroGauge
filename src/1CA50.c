#include <ultra64.h>
#include "functions.h"
#include "variables.h"
#include "structs.h"
#include "macro.h"

//.data
#ifdef NEEDS_DATA
/* Sixteen different color combinations for each color eg:
*  D_8008B7F0[index -> 0] = red = 0xB4, green = 0xB4....
*
*/
struct R_G_B_A D_8008B7F0[16] = {0xB4, 0xB4, 0xB4, 0xFF, 0x5A,
                                0x5A, 0x5A, 0xFF, 0x00, 0xFF,
                                0x00, 0xFF, 0x0, 0x0, 0x0, 0x0};
#else
struct R_G_B_A D_8008B7F0[16];
#endif

//File declarations
void func_8001BFE4(int index);

#pragma GLOBAL_ASM("asm/nonmatchings/1CA50/func_8001BE50.s")

void func_8001BFE4(int index) {
    update_rgba(D_8008B7F0[index].red, D_8008B7F0[index].green, D_8008B7F0[index].blue, D_8008B7F0[index].alpha);
}
