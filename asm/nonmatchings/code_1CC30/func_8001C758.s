glabel func_8001C758
/* 1D358 8001C758 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 1D35C 8001C75C AFBF0044 */  sw         $ra, 0x44($sp)
/* 1D360 8001C760 AFBE0040 */  sw         $fp, 0x40($sp)
/* 1D364 8001C764 AFB7003C */  sw         $s7, 0x3C($sp)
/* 1D368 8001C768 AFB60038 */  sw         $s6, 0x38($sp)
/* 1D36C 8001C76C AFB50034 */  sw         $s5, 0x34($sp)
/* 1D370 8001C770 AFB40030 */  sw         $s4, 0x30($sp)
/* 1D374 8001C774 AFB3002C */  sw         $s3, 0x2C($sp)
/* 1D378 8001C778 AFB20028 */  sw         $s2, 0x28($sp)
/* 1D37C 8001C77C AFB10024 */  sw         $s1, 0x24($sp)
/* 1D380 8001C780 AFB00020 */  sw         $s0, 0x20($sp)
/* 1D384 8001C784 AFA40070 */  sw         $a0, 0x70($sp)
/* 1D388 8001C788 AFA50074 */  sw         $a1, 0x74($sp)
/* 1D38C 8001C78C AFA60078 */  sw         $a2, 0x78($sp)
/* 1D390 8001C790 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1D394 8001C794 30C700FF */  andi       $a3, $a2, 0xFF
/* 1D398 8001C798 240600FF */  addiu      $a2, $zero, 0xFF
/* 1D39C 8001C79C 240400FF */  addiu      $a0, $zero, 0xFF
/* 1D3A0 8001C7A0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1D3A4 8001C7A4 0C007DD7 */  jal        func_8001F75C
/* 1D3A8 8001C7A8 AFAF006C */   sw        $t7, 0x6C($sp)
/* 1D3AC 8001C7AC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 1D3B0 8001C7B0 44816800 */  mtc1       $at, $f13
/* 1D3B4 8001C7B4 44806000 */  mtc1       $zero, $f12
/* 1D3B8 8001C7B8 0C007DC0 */  jal        func_8001F700
/* 1D3BC 8001C7BC 46206386 */   mov.d     $f14, $f12
/* 1D3C0 8001C7C0 24040034 */  addiu      $a0, $zero, 0x34
/* 1D3C4 8001C7C4 0C007DAD */  jal        func_8001F6B4
/* 1D3C8 8001C7C8 24050040 */   addiu     $a1, $zero, 0x40
/* 1D3CC 8001C7CC 27B7006C */  addiu      $s7, $sp, 0x6C
/* 1D3D0 8001C7D0 3C058009 */  lui        $a1, %hi(D_80096E4C)
/* 1D3D4 8001C7D4 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1D3D8 8001C7D8 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1D3DC 8001C7DC 24A56E4C */  addiu      $a1, $a1, %lo(D_80096E4C)
/* 1D3E0 8001C7E0 0C007DE4 */  jal        func_8001F790
/* 1D3E4 8001C7E4 02E02025 */   or        $a0, $s7, $zero
/* 1D3E8 8001C7E8 3C168017 */  lui        $s6, %hi(D_8016C420)
/* 1D3EC 8001C7EC 26D6C420 */  addiu      $s6, $s6, %lo(D_8016C420)
/* 1D3F0 8001C7F0 8ED80000 */  lw         $t8, 0x0($s6)
/* 1D3F4 8001C7F4 24120001 */  addiu      $s2, $zero, 0x1
/* 1D3F8 8001C7F8 24100048 */  addiu      $s0, $zero, 0x48
/* 1D3FC 8001C7FC 1B00001E */  blez       $t8, .L8001C878
/* 1D400 8001C800 3C118017 */   lui       $s1, %hi(D_8016C364)
/* 1D404 8001C804 3C1E8009 */  lui        $fp, %hi(D_8008C31C)
/* 1D408 8001C808 3C158009 */  lui        $s5, %hi(D_80097980)
/* 1D40C 8001C80C 3C148009 */  lui        $s4, %hi(D_80096E60)
/* 1D410 8001C810 26946E60 */  addiu      $s4, $s4, %lo(D_80096E60)
/* 1D414 8001C814 26B57980 */  addiu      $s5, $s5, %lo(D_80097980)
/* 1D418 8001C818 27DEC31C */  addiu      $fp, $fp, %lo(D_8008C31C)
/* 1D41C 8001C81C 2631C364 */  addiu      $s1, $s1, %lo(D_8016C364)
/* 1D420 8001C820 27B30058 */  addiu      $s3, $sp, 0x58
.L8001C824:
/* 1D424 8001C824 24040058 */  addiu      $a0, $zero, 0x58
/* 1D428 8001C828 0C007DAD */  jal        func_8001F6B4
/* 1D42C 8001C82C 02002825 */   or        $a1, $s0, $zero
/* 1D430 8001C830 8227FFFC */  lb         $a3, -0x4($s1)
/* 1D434 8001C834 02602025 */  or         $a0, $s3, $zero
/* 1D438 8001C838 02802825 */  or         $a1, $s4, $zero
/* 1D43C 8001C83C 02A7C821 */  addu       $t9, $s5, $a3
/* 1D440 8001C840 9328FFFF */  lbu        $t0, -0x1($t9)
/* 1D444 8001C844 02403025 */  or         $a2, $s2, $zero
/* 1D448 8001C848 0C01AE81 */  jal        func_8006BA04
/* 1D44C 8001C84C AFA80010 */   sw        $t0, 0x10($sp)
/* 1D450 8001C850 02E02025 */  or         $a0, $s7, $zero
/* 1D454 8001C854 02602825 */  or         $a1, $s3, $zero
/* 1D458 8001C858 0C007DE4 */  jal        func_8001F790
/* 1D45C 8001C85C 03C03025 */   or        $a2, $fp, $zero
/* 1D460 8001C860 8EC90000 */  lw         $t1, 0x0($s6)
/* 1D464 8001C864 26520001 */  addiu      $s2, $s2, 0x1
/* 1D468 8001C868 2610000E */  addiu      $s0, $s0, 0xE
/* 1D46C 8001C86C 0132082A */  slt        $at, $t1, $s2
/* 1D470 8001C870 1020FFEC */  beqz       $at, .L8001C824
/* 1D474 8001C874 2631002C */   addiu     $s1, $s1, 0x2C
.L8001C878:
/* 1D478 8001C878 001228C0 */  sll        $a1, $s2, 3
/* 1D47C 8001C87C 00B22823 */  subu       $a1, $a1, $s2
/* 1D480 8001C880 3C1E8009 */  lui        $fp, %hi(D_8008C31C)
/* 1D484 8001C884 00052840 */  sll        $a1, $a1, 1
/* 1D488 8001C888 27DEC31C */  addiu      $fp, $fp, %lo(D_8008C31C)
/* 1D48C 8001C88C 27B30058 */  addiu      $s3, $sp, 0x58
/* 1D490 8001C890 24A5003A */  addiu      $a1, $a1, 0x3A
/* 1D494 8001C894 0C007DAD */  jal        func_8001F6B4
/* 1D498 8001C898 24040020 */   addiu     $a0, $zero, 0x20
/* 1D49C 8001C89C 0C003EC4 */  jal        func_8000FB10
/* 1D4A0 8001C8A0 00000000 */   nop
/* 1D4A4 8001C8A4 0C003EE4 */  jal        func_8000FB90
/* 1D4A8 8001C8A8 00408025 */   or        $s0, $v0, $zero
/* 1D4AC 8001C8AC 3C058009 */  lui        $a1, %hi(D_80096E74)
/* 1D4B0 8001C8B0 24A56E74 */  addiu      $a1, $a1, %lo(D_80096E74)
/* 1D4B4 8001C8B4 02602025 */  or         $a0, $s3, $zero
/* 1D4B8 8001C8B8 26060001 */  addiu      $a2, $s0, 0x1
/* 1D4BC 8001C8BC 0C01AE81 */  jal        func_8006BA04
/* 1D4C0 8001C8C0 00403825 */   or        $a3, $v0, $zero
/* 1D4C4 8001C8C4 02E02025 */  or         $a0, $s7, $zero
/* 1D4C8 8001C8C8 02602825 */  or         $a1, $s3, $zero
/* 1D4CC 8001C8CC 0C007DE4 */  jal        func_8001F790
/* 1D4D0 8001C8D0 03C03025 */   or        $a2, $fp, $zero
/* 1D4D4 8001C8D4 8FAA006C */  lw         $t2, 0x6C($sp)
/* 1D4D8 8001C8D8 8FAB0070 */  lw         $t3, 0x70($sp)
/* 1D4DC 8001C8DC AD6A0000 */  sw         $t2, 0x0($t3)
/* 1D4E0 8001C8E0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 1D4E4 8001C8E4 8FBE0040 */  lw         $fp, 0x40($sp)
/* 1D4E8 8001C8E8 8FB7003C */  lw         $s7, 0x3C($sp)
/* 1D4EC 8001C8EC 8FB60038 */  lw         $s6, 0x38($sp)
/* 1D4F0 8001C8F0 8FB50034 */  lw         $s5, 0x34($sp)
/* 1D4F4 8001C8F4 8FB40030 */  lw         $s4, 0x30($sp)
/* 1D4F8 8001C8F8 8FB3002C */  lw         $s3, 0x2C($sp)
/* 1D4FC 8001C8FC 8FB20028 */  lw         $s2, 0x28($sp)
/* 1D500 8001C900 8FB10024 */  lw         $s1, 0x24($sp)
/* 1D504 8001C904 8FB00020 */  lw         $s0, 0x20($sp)
/* 1D508 8001C908 03E00008 */  jr         $ra
/* 1D50C 8001C90C 27BD0070 */   addiu     $sp, $sp, 0x70
