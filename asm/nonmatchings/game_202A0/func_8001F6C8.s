glabel func_8001F6C8
/* 202C8 8001F6C8 3C028009 */  lui        $v0, %hi(D_8008C8DC)
/* 202CC 8001F6CC 3C038009 */  lui        $v1, %hi(__osCurrentTime)
/* 202D0 8001F6D0 2463C8E0 */  addiu      $v1, $v1, %lo(__osCurrentTime)
/* 202D4 8001F6D4 2442C8DC */  addiu      $v0, $v0, %lo(D_8008C8DC)
/* 202D8 8001F6D8 8C4E0000 */  lw         $t6, 0x0($v0)
/* 202DC 8001F6DC 8C780000 */  lw         $t8, 0x0($v1)
/* 202E0 8001F6E0 01C47821 */  addu       $t7, $t6, $a0
/* 202E4 8001F6E4 0305C821 */  addu       $t9, $t8, $a1
/* 202E8 8001F6E8 AC4F0000 */  sw         $t7, 0x0($v0)
/* 202EC 8001F6EC 03E00008 */  jr         $ra
/* 202F0 8001F6F0 AC790000 */   sw        $t9, 0x0($v1)
