#include <ultra64.h>
#include <PR/gbi.h> //for macros
#include "functions.h"
#include "variables.h"
#include "macros.h"
#include "structs.h"
#include "types.h" //Vec3f

void func_8001F150(u32 arg0, s32 arg1) {
    if ((arg0 != 0) && (arg0 < 0x10U)) {
        D_8008B870[arg0] = arg1;
    }
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_1FD50/func_8001F174.s")

void func_8001F2BC(Gfx** gDisplayList) {

    Gfx *gDisplayListHead;

    gDisplayListHead = *gDisplayList;

    gDPFullSync(gDisplayListHead++);
    gSPEndDisplayList(gDisplayListHead++);

    *gDisplayList = gDisplayListHead;
}

#pragma GLOBAL_ASM("asm/nonmatchings/game_1FD50/func_8001F2E8.s")

void func_8001F59C(Gfx** gDisplayList, Mtx* mtx, mf* mtxP) {
    Gfx *gDisplayListHead;
    u16 perspNorm;
    Matrix perspMf;
    Matrix viewMf;
    Matrix finalMf;

    guPerspectiveF(perspMf, &perspNorm,
        mtxP->fovy,
        mtxP->aspect,
        mtxP->near,
        mtxP->far,
        mtxP->scale
    );
    guLookAtF(viewMf,
        mtxP->eye.x, mtxP->eye.y, mtxP->eye.z,
        mtxP->at.x,  mtxP->at.y,  mtxP->at.z,
        mtxP->up.x,  mtxP->up.y,  mtxP->up.z
    );
    guMtxCatF(viewMf, perspMf, finalMf);
    guMtxF2L(finalMf, mtx);

    gDisplayListHead = *gDisplayList;

    gSPPerspNormalize(gDisplayListHead++, perspNorm);
    gSPMatrix(gDisplayListHead++, mtx, G_MTX_NOPUSH | G_MTX_LOAD | G_MTX_PROJECTION);

    *gDisplayList = gDisplayListHead;
}

void func_8001F694(void) {
}
