#include <ultra64.h>
#include <PR/gbi.h> //for macros
#include "structs.h"
#include "functions.h"
#include "variables.h"
#include "macros.h"


extern gSelector_1 gSelector;

s32 func_8000D670() {
    s32 temp_a0;
    s32 var_v0;
    s32 var_v0_2;

    for(var_v0 = 0; var_v0 < 8 ; ){
        var_v0 += 4;
    }

    if (gSelector.unk4 == 0) {
        var_v0_2 = 3;
    } else {
        var_v0_2 = 4;
    }

    if (gSelector.unkB >= var_v0_2) {
        return 0;
    }
    temp_a0 = D_80097988[gSelector.unkB] - D_8019ED3A[gSelector.unk5];
    if (temp_a0 <= 0) {
        return 0;
    }
    if (temp_a0 >= 0xB) {
        return -1;
    }
    return D_8008213C[temp_a0];
}

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000D708.s")

//temp
extern u8 D_100A1A8[];
extern u8 D_100A268;


void func_8000D97C(Gfx** gDisplayList, s32 alpha_color) {
    Gfx* gDisplayListHead;


    gDisplayListHead = *gDisplayList;
    
    func_8000DEDC(&gDisplayListHead, alpha_color);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, &D_100A268);
    gDPTileSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_RGBA, G_IM_SIZ_4b, 0, 0x0100, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTLUTCmd(gDisplayListHead++, G_TX_LOADTILE, 15);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTextureLUT(gDisplayListHead++, G_TT_RGBA16);
    gDPSetTextureImage(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 8,  &D_100A1A8);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_8b, 1, 0x0000, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
    gDPLoadSync(gDisplayListHead++);
    gDPLoadTile(gDisplayListHead++, G_TX_LOADTILE, 0, 0, 0x001E, 0x0058);
    gDPPipeSync(gDisplayListHead++);
    gDPSetTile(gDisplayListHead++, G_IM_FMT_CI, G_IM_SIZ_4b, 1, 0x0000, G_TX_RENDERTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_WRAP, 4, G_TX_NOLOD);
    gDPSetTileSize(gDisplayListHead++, G_TX_RENDERTILE, 0, 0, 0x003C, 0x0058);
    gSPTextureRectangle(gDisplayListHead++, 0x0040, 0x02D0, 0x04BC, 0x032C, G_TX_RENDERTILE, 0, 0, 0x0400, 0x0400);

   /*
    temp_t5_2->unk4 = 0;
    temp_t5_2->unk0 = 0xB4000000;
    temp_t8_3 = gDisplayListHead;
    gDisplayListHead = temp_t8_3 + 8;
    temp_t8_3->unk4 = 0x04000400;
    temp_t8_3->unk0 = 0xB3000000;
    */
    gDPPipeSync(gDisplayListHead++);
    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000DBC0.s")

/************************************************************


 * This nice function does this message at the init of a race

 * syntax: "Round number Level Current Message"


************************************************************/


//D_80095538 = ROUND %d %s %s
void Render_InitRaceMesg(Gfx** gDisplayList, s32 Round, char *mesg) {
    Gfx* gDisplayListHead;

    sprintf(&gPrintDest, &D_80095538, Round+1, gRaceLevel[Round], mesg);
    gDisplayListHead = *gDisplayList;
    Print_text(&gDisplayListHead, &gPrintDest, &D_8008BEBC);
    *gDisplayList = gDisplayListHead;
}

void func_8000DEDC(Gfx** gDisplayList, s32 color) {

    Gfx *gDisplayListHead;

    u8 alpha = color;

    gDisplayListHead = *gDisplayList;

    gDPPipeSync(gDisplayListHead++);
    gDPSetCycleType(gDisplayListHead++, G_CYC_1CYCLE)
    gDPSetRenderMode(gDisplayListHead++, G_RM_XLU_SURF, G_RM_XLU_SURF2);
    gDPSetEnvColor(gDisplayListHead++, 255, 255, 255, alpha);

    gDPSetCombineLERP(gDisplayListHead++, 0, 0, 0, TEXEL0, 0, 0, 0, ENVIRONMENT, 0, 0, 0, TEXEL0, 0, 0, 0, ENVIRONMENT);
    gDPSetTexturePersp(gDisplayListHead++, G_TP_NONE);
    gDPSetTextureLOD(gDisplayListHead++, G_TL_TILE);
    gDPSetTextureFilter(gDisplayListHead++, G_TF_BILERP);
    gDPSetTextureConvert(gDisplayListHead++, G_TC_FILT);

    *gDisplayList = gDisplayListHead;
}


UNUSED func_8000DFBC(void) {
}
