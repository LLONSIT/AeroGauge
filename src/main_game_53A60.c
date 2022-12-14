#include <ultra64.h>
#include "structs.h"
#include "variables.h"
#include "functions.h"

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80052E60.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80052F84.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80053238.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80053318.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80053394.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80053788.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80053B7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80053E7C.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80054290.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_800546A4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80054AB8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80054DC8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_800550D8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80055338.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_800555B4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80055674.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80055734.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_800557F4.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_800558FC.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80055A04.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80055B14.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80055B80.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_80055DE8.s")

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_800564B0.s")


//Loading some Car textures
/*
void func_800569BC(Gfx **arg0, u8 arg1) {
    Gfx *sp13C;


    sp13C = *arg0;
    func_800557F4(&sp13C, &D_8008F270);
    switch (arg1) {                                 // irregular
    case 0:

    gDPSetTextureImage(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 80, &D_8033D0A0)
    gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 10, D_8033D0A0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(sp13C++);
    gDPLoadTile(sp13C++, G_TX_LOADTILE, 0, 0, 0x1E4, 0x11C); //?
    gDPPipeSync(sp13C++);
    gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_4b, 10, D_8033D0A0, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(sp13C++, G_TX_RENDERTILE, 0, 0, 0x564, 0x11C); //?
    //gTexRect(sp13C++, 0xC, 0x190, 0x900, 4);
    //gDPHalf1(sp13C++, 0x00000000);
    //gDPHalf2(sp13C++, 0x04000400);
    gDPSetTextureImage(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 80, &D_8033E9B0);
    gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 10, D_8033E9B0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(sp13C++);
    gDPLoadTile(sp13C++, G_TX_LOADTILE, 0, 0, 0x1E4, 0xC4)
    gDPPipeSync(sp13C++);
    gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_4b, 10, D_8033E9B0, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(sp13C++, G_TX_RENDERTILE, 0, 0, 0x564, 0xC4);
    //gTexRect(sp13C++, 0x200, 0x410, 0x900, 0x4D8, G_TX_RENDERTILE);
    //gDPHalf1(sp13C++, 0x00000000);
    //gDPHalf2(sp13C++, 0x04000400);
    gDPSetTextureImage(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 80, &D_803416D0);
    gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 10, D_803416D0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
    gDPLoadSync(sp13C++);
    gDPLoadTile(sp13C++, G_TX_LOADTILE, 0, 0, 0x1E4, 0xC4);
    gDPPipeSync(sp13C++);
    gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_4b, 10, D_803416D0, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
    gDPSetTileSize(sp13C++, G_TX_RENDERTILE, 0, 0, 0x564, 0xC4);
   // gTexRect(sp13C++, 0x200, 0x4D8, 0x900, 0x5A0, G_TX_RENDERTILE);
   // gDPHalf1(sp13C++, 0x00000000);
   // gDPHalf2(sp13C++, 0x04000400);
      //var_t7->unk0 = 0xB3000000;
//block_7:
        //var_t7->unk4 = 0x04000400;
        break;
    case 1:

      gDPSetTextureImage(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 80, race_tex); //yuku kaza
      gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 10, race_tex, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
      gDPLoadSync(sp13C++);
      gDPLoadTile(sp13C++, G_TX_LOADTILE, 0, 0, 0x1E4, 0x11C);
      gDPPipeSync(sp13C++);
      gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_4b, 10, race_tex, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
      gDPSetTileSize(sp13C++, G_TX_RENDERTILE, 0, 0, 0x564, 0x163);
      //gTexRect(sp13C++, 0x200, 0x158, 0x900, 0x410, G_TX_RENDERTILE);
      //gDPHalf1(sp13C++, 0x00000000);
      //gDPHalf2(sp13C++, 0x04000400);
      gDPSetTextureImage(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 80, D_803402C0);
      gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 10, D_803402C0, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
      gDPLoadSync(sp13C++);
      gDPLoadTile(sp13C++, G_TX_LOADTILE, 0, 0, 0x1E4, 0xC4);
      gDPPipeSync(sp13C++);
      gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_4b, 10, D_803402C0, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
      gDPSetTileSize(sp13C++, G_TX_RENDERTILE, 0, 0, 0x564, 0xC4);
     // gTexRect(sp13C++, 0x200, 0x410, 0x900, 0x4D8, G_TX_RENDERTILE);
     // gDPHalf1(sp13C++, 0x00000000);
     // gDPHalf2(sp13C++, 0x04000400);
      gDPSetTextureImage(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 80, D_8034A840);
      gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 10, D_8034A840, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
      gDPLoadSync(sp13C++);
      gDPLoadTile(sp13C++, G_TX_LOADTILE, 0, 0, 0x1E4, 0xC4);
      gDPPipeSync(sp13C++);
      gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_4b, 10, D_8034A840, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
      gDPSetTileSize(sp13C++, G_TX_RENDERTILE, 0, 0, 0x564, 0xC4);
     // gTexRect(sp13C++, 0x200, 0x4D8, 0x900, 0x5A0, G_TX_RENDERTILE);
     // gDPHalf1(sp13C++, 0x00000000);
     // gDPHalf2(sp13C++, 0x04000400);

         break;
    case 2:

      gDPSetTextureImage(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 80, D_803420D8);
      gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_8b, 10, D_803420D8, G_TX_LOADTILE, 0, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD, G_TX_NOMIRROR | G_TX_CLAMP, G_TX_NOMASK, G_TX_NOLOD);
      gDPLoadSync(sp13C++);
      gDPLoadTile(sp13C++, G_TX_LOADTILE, 0, 0, 0x1E4, 0xC4);
      gDPSetTile(sp13C++, G_IM_FMT_I, G_IM_SIZ_4b, 10, D_803420D8, G_TX_RENDERTILE, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, 8, G_TX_NOMIRROR | G_TX_WRAP, G_TX_NOMASK, G_TX_NOLOD);
      gDPSetTileSize(sp13C++, G_TX_RENDERTILE, 0, 0, 0x564, 0xC4);
      //gTexRect(sp13C++, 0x200, 0x258, 0x900, 0x4A0, G_TX_RENDERTILE);
      //gDPHalf1(sp13C++, 0x00000000);
      //gDPHalf2(sp13C++, 0x00000000);
     //   goto block_7;
    }
    gDPPipeSync(sp13C);
    *arg0 = sp13C;
}
*/

#pragma GLOBAL_ASM("asm/nonmatchings/main_game_53A60/func_800569BC.s")
