glabel func_80010D88
/* 11988 80010D88 A480016C */  sh         $zero, 0x16C($a0)
/* 1198C 80010D8C A480016E */  sh         $zero, 0x16E($a0)
/* 11990 80010D90 848F016C */  lh         $t7, 0x16C($a0)
/* 11994 80010D94 8488016E */  lh         $t0, 0x16E($a0)
/* 11998 80010D98 3C0A8008 */  lui        $t2, %hi(D_80082A8C)
/* 1199C 80010D9C 3C0B8008 */  lui        $t3, %hi(D_80082A98)
/* 119A0 80010DA0 254A2A8C */  addiu      $t2, $t2, %lo(D_80082A8C)
/* 119A4 80010DA4 256B2A98 */  addiu      $t3, $t3, %lo(D_80082A98)
/* 119A8 80010DA8 00AFC021 */  addu       $t8, $a1, $t7
/* 119AC 80010DAC 00C84821 */  addu       $t1, $a2, $t0
/* 119B0 80010DB0 A4850168 */  sh         $a1, 0x168($a0)
/* 119B4 80010DB4 A486016A */  sh         $a2, 0x16A($a0)
/* 119B8 80010DB8 A4980164 */  sh         $t8, 0x164($a0)
/* 119BC 80010DBC A4890166 */  sh         $t1, 0x166($a0)
/* 119C0 80010DC0 AC8A0178 */  sw         $t2, 0x178($a0)
/* 119C4 80010DC4 03E00008 */  jr         $ra
/* 119C8 80010DC8 AC8B0174 */   sw        $t3, 0x174($a0)
