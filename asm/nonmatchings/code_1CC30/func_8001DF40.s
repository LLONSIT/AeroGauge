glabel func_8001DF40
/* 1EB40 8001DF40 90990000 */  lbu        $t9, 0x0($a0)
/* 1EB44 8001DF44 240E0002 */  addiu      $t6, $zero, 0x2
/* 1EB48 8001DF48 A08E0002 */  sb         $t6, 0x2($a0)
/* 1EB4C 8001DF4C 372A0080 */  ori        $t2, $t9, 0x80
/* 1EB50 8001DF50 354D0010 */  ori        $t5, $t2, 0x10
/* 1EB54 8001DF54 3C0F8009 */  lui        $t7, %hi(D_80096510)
/* 1EB58 8001DF58 A08A0000 */  sb         $t2, 0x0($a0)
/* 1EB5C 8001DF5C 25EF6510 */  addiu      $t7, $t7, %lo(D_80096510)
/* 1EB60 8001DF60 A08D0000 */  sb         $t5, 0x0($a0)
/* 1EB64 8001DF64 35AE0008 */  ori        $t6, $t5, 0x8
/* 1EB68 8001DF68 AC8F0020 */  sw         $t7, 0x20($a0)
/* 1EB6C 8001DF6C 03E00008 */  jr         $ra
/* 1EB70 8001DF70 A08E0000 */   sb        $t6, 0x0($a0)
