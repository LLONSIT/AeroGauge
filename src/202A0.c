#include "ultra64.h"
#include "variables.h"
#include "structs.h"

struct _202A0
{
    s8 filler[0x8];
    s16 unk8;
};

#ifdef NEEDS_DATA
char gCurrentColorRed[4] = {0xFF, 0, 0, 0} char gCurrentColorGreen[4] = {0xFF, 0, 0, 0} char gCurrentColorBlue[4] = {0xFF, 0, 0, 0} char gCurrentColorAlpha[4] = {0xFF, 0, 0, 0} f64 D_8008C900 = 1.0;
f64 D_8008C908 = 1.0;
#else
extern char gCurrentColorRed;
extern char gCurrentColorGreen;
extern char gCurrentColorBlue;
extern char gCurrentColorAlpha;
extern f64 D_8008C900;
extern f64 D_8008C908;
#endif


Gfx* draw_text(Gfx**, s32, s32, u8, s32);     /* extern */

extern s32 D_8008C8DC;
extern s32 D_8008C910;
extern s32 __osCurrentTime1;

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/func_8001F6A0.s")

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/osSetTime.s")

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/func_8001F6C8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/202A0/func_8001F6F4.s")

void func_8001F700(f64 arg0, f64 arg1)
{
    if (arg0 > 0.0)
    {
        D_8008C900 = 1.0 / arg0;
    }
    if (arg1 > 0.0)
    {
        D_8008C908 = 1.0 / arg1;
    }
}

void update_rgba(char red, char green, char blue, char alpha)
{
    gCurrentColorRed = red;
    gCurrentColorGreen = green;
    gCurrentColorBlue = blue;
    gCurrentColorAlpha = alpha;
}


// Why the rom keeps shifting beacause of this function?? 
#ifdef NON_MATCHING
void print_text(Gfx **gDisplayList, char *str, s32 var)
{
    Gfx *gDisplayListHead;
    s32 pad[2];
    u8 c;
    char *var_s1;
    struct _202A0 *temp_v0;

    GFX_CMD_BEGIN()

    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE);
    gSPTexture(gDisplayListHead++, 0x800, 0x800, 0, G_TX_RENDERTILE, G_ON);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_NONE);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetCombineMode(gDisplayListHead++, G_CC_MODULATEIA_PRIM, G_CC_MODULATEIA_PRIM);
    gDPSetAlphaCompare(gDisplayListHead++, G_AC_NONE);
    gDPSetAlphaDither(gDisplayListHead++, G_AD_PATTERN | 0x30);

    c = *str;
    
    if (c)
    {
        var_s1 = str;
        while (c)
        {
            temp_v0 = draw_text(&gDisplayListHead, D_8008C8DC, __osCurrentTime1, c, var);
            if (temp_v0 != NULL)
            {
                if (D_8008C910 < 0)
                {
                    D_8008C8DC += temp_v0->unk8;
                }
                else
                {
                    D_8008C8DC += D_8008C910;
                }
            }
            
            c = var_s1[1];

            var_s1++;

            if (!c) {
                break;
            }
        }
    }

    GFX_CMD_END()
}
#else
#pragma GLOBAL_ASM("asm/nonmatchings/202A0/print_text.s")
#endif
#pragma GLOBAL_ASM("asm/nonmatchings/202A0/draw_text.s")
