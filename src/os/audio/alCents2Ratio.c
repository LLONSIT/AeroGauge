
#include <PR/libaudio.h>

extern f32 D_80098950;
extern f32 D_80098954;

f32 alCents2Ratio(s32 cents)
{
    f32 x;
    f32 ratio = 1.0f;

    if (cents >= 0) {
        x = D_80098950;         /* 2^(1/1200) */
    } else {
        x = D_80098954;       /* 2^(-1/1200) */
        cents = -cents;
    }

    while (cents) {
        if (cents & 1)
            ratio *= x;
        x *= x;
        cents >>= 1;
    }

    return ratio;
    }
