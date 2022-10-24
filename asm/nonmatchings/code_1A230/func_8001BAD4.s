glabel func_8001BAD4
/* 1C6D4 8001BAD4 240E007F */  addiu      $t6, $zero, 0x7F
/* 1C6D8 8001BAD8 3C018009 */  lui        $at, %hi(D_8008B7DC)
/* 1C6DC 8001BADC 3C188014 */  lui        $t8, %hi(D_8013FC80)
/* 1C6E0 8001BAE0 8F18FC80 */  lw         $t8, %lo(D_8013FC80)($t8)
/* 1C6E4 8001BAE4 A42EB7DC */  sh         $t6, %lo(D_8008B7DC)($at)
/* 1C6E8 8001BAE8 3C018009 */  lui        $at, %hi(D_8008B7E0)
/* 1C6EC 8001BAEC 240F00FF */  addiu      $t7, $zero, 0xFF
/* 1C6F0 8001BAF0 A42FB7E0 */  sh         $t7, %lo(D_8008B7E0)($at)
/* 1C6F4 8001BAF4 971900FC */  lhu        $t9, 0xFC($t8)
/* 1C6F8 8001BAF8 24080141 */  addiu      $t0, $zero, 0x141
/* 1C6FC 8001BAFC 3C018009 */  lui        $at, %hi(D_8008B7E4)
/* 1C700 8001BB00 01194823 */  subu       $t1, $t0, $t9
/* 1C704 8001BB04 A429B7E4 */  sh         $t1, %lo(D_8008B7E4)($at)
/* 1C708 8001BB08 3C018009 */  lui        $at, %hi(D_8008B7E8)
/* 1C70C 8001BB0C A420B7E8 */  sh         $zero, %lo(D_8008B7E8)($at)
/* 1C710 8001BB10 3C018009 */  lui        $at, %hi(D_8008B7EC)
/* 1C714 8001BB14 240A0140 */  addiu      $t2, $zero, 0x140
/* 1C718 8001BB18 03E00008 */  jr         $ra
/* 1C71C 8001BB1C A42AB7EC */   sh        $t2, %lo(D_8008B7EC)($at)
