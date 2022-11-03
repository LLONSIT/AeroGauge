glabel func_8001A750
/* 1B350 8001A750 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1B354 8001A754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B358 8001A758 AFA40028 */  sw         $a0, 0x28($sp)
/* 1B35C 8001A75C AFA5002C */  sw         $a1, 0x2C($sp)
/* 1B360 8001A760 AFA60030 */  sw         $a2, 0x30($sp)
/* 1B364 8001A764 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1B368 8001A768 240400B5 */  addiu      $a0, $zero, 0xB5
/* 1B36C 8001A76C 24060014 */  addiu      $a2, $zero, 0x14
/* 1B370 8001A770 24050060 */  addiu      $a1, $zero, 0x60
/* 1B374 8001A774 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B378 8001A778 0C007DD7 */  jal        func_8001F75C
/* 1B37C 8001A77C AFAF0024 */   sw        $t7, 0x24($sp)
/* 1B380 8001A780 8FA2002C */  lw         $v0, 0x2C($sp)
/* 1B384 8001A784 94440002 */  lhu        $a0, 0x2($v0)
/* 1B388 8001A788 94450004 */  lhu        $a1, 0x4($v0)
/* 1B38C 8001A78C 2484FFC4 */  addiu      $a0, $a0, -0x3C
/* 1B390 8001A790 0C007DAD */  jal        osSetTime
/* 1B394 8001A794 24A50013 */   addiu     $a1, $a1, 0x13
/* 1B398 8001A798 8FB8002C */  lw         $t8, 0x2C($sp)
/* 1B39C 8001A79C 3C018009 */  lui        $at, %hi(D_80096CD0)
/* 1B3A0 8001A7A0 D4286CD0 */  ldc1       $f8, %lo(D_80096CD0)($at)
/* 1B3A4 8001A7A4 C7040010 */  lwc1       $f4, 0x10($t8)
/* 1B3A8 8001A7A8 3C058009 */  lui        $a1, %hi(D_80096C94)
/* 1B3AC 8001A7AC 24A56C94 */  addiu      $a1, $a1, %lo(D_80096C94)
/* 1B3B0 8001A7B0 460021A1 */  cvt.d.s    $f6, $f4
/* 1B3B4 8001A7B4 27A40018 */  addiu      $a0, $sp, 0x18
/* 1B3B8 8001A7B8 46283282 */  mul.d      $f10, $f6, $f8
/* 1B3BC 8001A7BC 4620540D */  trunc.w.d  $f16, $f10
/* 1B3C0 8001A7C0 44068000 */  mfc1       $a2, $f16
/* 1B3C4 8001A7C4 0C01AE81 */  jal        sprintf
/* 1B3C8 8001A7C8 00000000 */   nop
/* 1B3CC 8001A7CC 3C068009 */  lui        $a2, %hi(D_8008C8CC)
/* 1B3D0 8001A7D0 24C6C8CC */  addiu      $a2, $a2, %lo(D_8008C8CC)
/* 1B3D4 8001A7D4 27A40024 */  addiu      $a0, $sp, 0x24
/* 1B3D8 8001A7D8 0C007DE4 */  jal        func_8001F790
/* 1B3DC 8001A7DC 27A50018 */   addiu     $a1, $sp, 0x18
/* 1B3E0 8001A7E0 8FA80024 */  lw         $t0, 0x24($sp)
/* 1B3E4 8001A7E4 8FA90028 */  lw         $t1, 0x28($sp)
/* 1B3E8 8001A7E8 AD280000 */  sw         $t0, 0x0($t1)
/* 1B3EC 8001A7EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B3F0 8001A7F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1B3F4 8001A7F4 03E00008 */  jr         $ra
/* 1B3F8 8001A7F8 00000000 */   nop
