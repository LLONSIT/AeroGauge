glabel func_80010D08
/* 11908 80010D08 A4800140 */  sh         $zero, 0x140($a0)
/* 1190C 80010D0C A4800142 */  sh         $zero, 0x142($a0)
/* 11910 80010D10 848F0140 */  lh         $t7, 0x140($a0)
/* 11914 80010D14 84880142 */  lh         $t0, 0x142($a0)
/* 11918 80010D18 3C0A8009 */  lui        $t2, %hi(D_8008C8C4)
/* 1191C 80010D1C 3C0B8009 */  lui        $t3, %hi(D_8008C8CC)
/* 11920 80010D20 3C0C8008 */  lui        $t4, %hi(D_80082A68)
/* 11924 80010D24 254AC8C4 */  addiu      $t2, $t2, %lo(D_8008C8C4)
/* 11928 80010D28 256BC8CC */  addiu      $t3, $t3, %lo(D_8008C8CC)
/* 1192C 80010D2C 258C2A68 */  addiu      $t4, $t4, %lo(D_80082A68)
/* 11930 80010D30 00AFC021 */  addu       $t8, $a1, $t7
/* 11934 80010D34 00C84821 */  addu       $t1, $a2, $t0
/* 11938 80010D38 A485013C */  sh         $a1, 0x13C($a0)
/* 1193C 80010D3C A486013E */  sh         $a2, 0x13E($a0)
/* 11940 80010D40 A4980138 */  sh         $t8, 0x138($a0)
/* 11944 80010D44 A489013A */  sh         $t1, 0x13A($a0)
/* 11948 80010D48 AC8A0144 */  sw         $t2, 0x144($a0)
/* 1194C 80010D4C AC8B0148 */  sw         $t3, 0x148($a0)
/* 11950 80010D50 AC8C014C */  sw         $t4, 0x14C($a0)
/* 11954 80010D54 3C0D8014 */  lui        $t5, %hi(D_8013FF90)
/* 11958 80010D58 81ADFF90 */  lb         $t5, %lo(D_8013FF90)($t5)
/* 1195C 80010D5C 24010005 */  addiu      $at, $zero, 0x5
/* 11960 80010D60 3C0E8008 */  lui        $t6, %hi(D_80082A5C)
/* 11964 80010D64 15A10003 */  bne        $t5, $at, .L80010D74
/* 11968 80010D68 25CE2A5C */   addiu     $t6, $t6, %lo(D_80082A5C)
/* 1196C 80010D6C 03E00008 */  jr         $ra
/* 11970 80010D70 AC800150 */   sw        $zero, 0x150($a0)
.L80010D74:
/* 11974 80010D74 AC8E0150 */  sw         $t6, 0x150($a0)
/* 11978 80010D78 03E00008 */  jr         $ra
/* 1197C 80010D7C 00000000 */   nop