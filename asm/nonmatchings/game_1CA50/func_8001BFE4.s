glabel func_8001BFE4
/* 1CBE4 8001BFE4 3C188009 */  lui        $t8, %hi(D_8008B7F0)
/* 1CBE8 8001BFE8 2718B7F0 */  addiu      $t8, $t8, %lo(D_8008B7F0)
/* 1CBEC 8001BFEC 00047880 */  sll        $t7, $a0, 2
/* 1CBF0 8001BFF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CBF4 8001BFF4 01F81021 */  addu       $v0, $t7, $t8
/* 1CBF8 8001BFF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CBFC 8001BFFC AFA40018 */  sw         $a0, 0x18($sp)
/* 1CC00 8001C000 90440000 */  lbu        $a0, 0x0($v0)
/* 1CC04 8001C004 90450001 */  lbu        $a1, 0x1($v0)
/* 1CC08 8001C008 90460002 */  lbu        $a2, 0x2($v0)
/* 1CC0C 8001C00C 0C007DD7 */  jal        func_8001F75C
/* 1CC10 8001C010 90470003 */   lbu       $a3, 0x3($v0)
/* 1CC14 8001C014 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CC18 8001C018 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1CC1C 8001C01C 03E00008 */  jr         $ra
/* 1CC20 8001C020 00000000 */   nop
/* 1CC24 8001C024 00000000 */  nop
/* 1CC28 8001C028 00000000 */  nop
/* 1CC2C 8001C02C 00000000 */  nop
