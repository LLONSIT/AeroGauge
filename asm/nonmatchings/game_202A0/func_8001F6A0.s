glabel func_8001F6A0
/* 202A0 8001F6A0 3C018009 */  lui        $at, %hi(D_8008C8F4)
/* 202A4 8001F6A4 AC24C8F4 */  sw         $a0, %lo(D_8008C8F4)($at)
/* 202A8 8001F6A8 3C018009 */  lui        $at, %hi(D_8008C8F8)
/* 202AC 8001F6AC 03E00008 */  jr         $ra
/* 202B0 8001F6B0 AC25C8F8 */   sw        $a1, %lo(D_8008C8F8)($at)
