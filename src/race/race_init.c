#include <ultra64.h>
#include <PR/gbi.h> //for macros
#include "structs.h"
#include "functions.h"
#include "variables.h"
#include "macros.h"

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000D670.s")

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000D708.s")

//temp
extern u8 D_100A1A8[];
extern u8 D_100A268;

void func_8000D97C(Gfx** gDisplayList) {
    Gfx* gDisplayListHead;


    gDisplayListHead = *gDisplayList;

    func_8000DEDC(&gDisplayListHead);
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

#pragma GLOBAL_ASM("asm/nonmatchings/race/race_init/func_8000DEDC.s")

UNUSED func_8000DFBC(void) {
}
