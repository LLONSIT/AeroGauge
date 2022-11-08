glabel osSetTime
/* 202B4 8001F6B4 3C018009 */  lui        $at, %hi(D_8008C8DC)
/* 202B8 8001F6B8 AC24C8DC */  sw         $a0, %lo(D_8008C8DC)($at)
/* 202BC 8001F6BC 3C018009 */  lui        $at, %hi(__osCurrentTime)
/* 202C0 8001F6C0 03E00008 */  jr         $ra
/* 202C4 8001F6C4 AC25C8E0 */   sw        $a1, %lo(__osCurrentTime)($at)
