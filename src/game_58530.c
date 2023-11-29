#include <ultra64.h>
#include "functions.h"
#include "variables.h"
 
void func_80057930(void) {
    D_8008F640 = 0;
    D_8019EE08 = func_800093E8(0);
    D_8019EE10 = func_80009410(0);
    D_8019EE02 = func_80009460(0); 
    if (D_8019EE08 >= 0x29) {
        D_8008F640 = -1;
    } else if (D_8019EE08 < -0x28) {
        D_8008F640 = 1;
    } else if (D_8019EE10 >= 0x29) {
        D_8008F640 = -2;
    } else if (D_8019EE10 < -0x28) {
        D_8008F640 = 2;
    }
    if (func_80009488() == 2) {
        D_8008F644 = 0;
        D_8019EE0C = func_800093E8(1);
        D_8019EE14 = func_80009410(1);
        D_8019EE04 = func_80009460(1);
        if (D_8019EE0C >= 0x29) {
            D_8008F644 = -1;
            return;
        }
        if (D_8019EE0C < -0x28) {
            D_8008F644 = 1;
            return;
        }
        if (D_8019EE14 >= 0x29) {
            D_8008F644 = -2;
            return;
        }
        if (D_8019EE14 < -0x28) {
            D_8008F644 = 2;
        }
    }
}

void func_80057AA0(void) {
    if ( D_8008F640 != D_8019EE00) {
        D_8019EE00 = D_8008F640;
    }
    if ((func_80009488() == 2) &&  (D_8008F644 != D_8019EE01)) {
        D_8019EE01 = D_8008F644;
    }
}
