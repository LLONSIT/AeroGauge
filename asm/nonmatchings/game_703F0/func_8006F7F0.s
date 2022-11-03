glabel func_8006F7F0
/* 703F0 8006F7F0 3C0E8009 */  lui        $t6, %hi(D_80093680)
/* 703F4 8006F7F4 8DCE3680 */  lw         $t6, %lo(D_80093680)($t6)
/* 703F8 8006F7F8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 703FC 8006F7FC AFBF001C */  sw         $ra, 0x1C($sp)
/* 70400 8006F800 15C0005B */  bnez       $t6, .L8006F970
/* 70404 8006F804 AFA40030 */   sw        $a0, 0x30($sp)
/* 70408 8006F808 0C01DB48 */  jal        func_80076D20
/* 7040C 8006F80C 00000000 */   nop
/* 70410 8006F810 3C018009 */  lui        $at, %hi(D_8009369C)
/* 70414 8006F814 3C04801B */  lui        $a0, %hi(D_801AC060)
/* 70418 8006F818 3C05801B */  lui        $a1, %hi(D_801AC078)
/* 7041C 8006F81C AC20369C */  sw         $zero, %lo(D_8009369C)($at)
/* 70420 8006F820 24A5C078 */  addiu      $a1, $a1, %lo(D_801AC078)
/* 70424 8006F824 2484C060 */  addiu      $a0, $a0, %lo(D_801AC060)
/* 70428 8006F828 0C01978C */  jal        osCreateMesgQueue
/* 7042C 8006F82C 24060005 */   addiu     $a2, $zero, 0x5
/* 70430 8006F830 3C01801B */  lui        $at, %hi(D_801AC090)
/* 70434 8006F834 240F000D */  addiu      $t7, $zero, 0xD
/* 70438 8006F838 A42FC090 */  sh         $t7, %lo(D_801AC090)($at)
/* 7043C 8006F83C A020C092 */  sb         $zero, %lo(D_801AC092)($at)
/* 70440 8006F840 AC20C094 */  sw         $zero, %lo(D_801AC094)($at)
/* 70444 8006F844 3C01801B */  lui        $at, %hi(D_801AC0A8)
/* 70448 8006F848 2418000E */  addiu      $t8, $zero, 0xE
/* 7044C 8006F84C 3C05801B */  lui        $a1, %hi(D_801AC060)
/* 70450 8006F850 3C06801B */  lui        $a2, %hi(D_801AC090)
/* 70454 8006F854 A438C0A8 */  sh         $t8, %lo(D_801AC0A8)($at)
/* 70458 8006F858 A020C0AA */  sb         $zero, %lo(D_801AC0AA)($at)
/* 7045C 8006F85C AC20C0AC */  sw         $zero, %lo(D_801AC0AC)($at)
/* 70460 8006F860 24C6C090 */  addiu      $a2, $a2, %lo(D_801AC090)
/* 70464 8006F864 24A5C060 */  addiu      $a1, $a1, %lo(D_801AC060)
/* 70468 8006F868 0C01AB80 */  jal        osSetEventMesg
/* 7046C 8006F86C 24040007 */   addiu     $a0, $zero, 0x7
/* 70470 8006F870 3C05801B */  lui        $a1, %hi(D_801AC060)
/* 70474 8006F874 3C06801B */  lui        $a2, %hi(D_801AC0A8)
/* 70478 8006F878 24C6C0A8 */  addiu      $a2, $a2, %lo(D_801AC0A8)
/* 7047C 8006F87C 24A5C060 */  addiu      $a1, $a1, %lo(D_801AC060)
/* 70480 8006F880 0C01AB80 */  jal        osSetEventMesg
/* 70484 8006F884 24040003 */   addiu     $a0, $zero, 0x3
/* 70488 8006F888 2419FFFF */  addiu      $t9, $zero, -0x1
/* 7048C 8006F88C AFB90028 */  sw         $t9, 0x28($sp)
/* 70490 8006F890 0C01DFE8 */  jal        osGetThreadPri
/* 70494 8006F894 00002025 */   or        $a0, $zero, $zero
/* 70498 8006F898 AFA20024 */  sw         $v0, 0x24($sp)
/* 7049C 8006F89C 8FA80024 */  lw         $t0, 0x24($sp)
/* 704A0 8006F8A0 8FA90030 */  lw         $t1, 0x30($sp)
/* 704A4 8006F8A4 0109082A */  slt        $at, $t0, $t1
/* 704A8 8006F8A8 10200005 */  beqz       $at, .L8006F8C0
/* 704AC 8006F8AC 00000000 */   nop
/* 704B0 8006F8B0 AFA80028 */  sw         $t0, 0x28($sp)
/* 704B4 8006F8B4 00002025 */  or         $a0, $zero, $zero
/* 704B8 8006F8B8 0C01C148 */  jal        osSetThreadPri
/* 704BC 8006F8BC 01202825 */   or        $a1, $t1, $zero
.L8006F8C0:
/* 704C0 8006F8C0 0C01C218 */  jal        __osDisableInt
/* 704C4 8006F8C4 00000000 */   nop
/* 704C8 8006F8C8 3C018009 */  lui        $at, %hi(D_80093680)
/* 704CC 8006F8CC 3C0C801B */  lui        $t4, %hi(D_801AC060)
/* 704D0 8006F8D0 3C0B801B */  lui        $t3, %hi(D_801AAEB0)
/* 704D4 8006F8D4 258CC060 */  addiu      $t4, $t4, %lo(D_801AC060)
/* 704D8 8006F8D8 240A0001 */  addiu      $t2, $zero, 0x1
/* 704DC 8006F8DC 256BAEB0 */  addiu      $t3, $t3, %lo(D_801AAEB0)
/* 704E0 8006F8E0 AC2A3680 */  sw         $t2, %lo(D_80093680)($at)
/* 704E4 8006F8E4 AC2B3684 */  sw         $t3, %lo(D_80093684)($at)
/* 704E8 8006F8E8 AC2C3688 */  sw         $t4, %lo(D_80093688)($at)
/* 704EC 8006F8EC AC2C368C */  sw         $t4, %lo(D_8009368C)($at)
/* 704F0 8006F8F0 3C0D801B */  lui        $t5, %hi(D_801AB060)
/* 704F4 8006F8F4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 704F8 8006F8F8 3C018009 */  lui        $at, %hi(D_80093690)
/* 704FC 8006F8FC 25ADB060 */  addiu      $t5, $t5, %lo(D_801AB060)
/* 70500 8006F900 25AE1000 */  addiu      $t6, $t5, 0x1000
/* 70504 8006F904 3C068007 */  lui        $a2, %hi(func_8006F980)
/* 70508 8006F908 3C078009 */  lui        $a3, %hi(D_80093680)
/* 7050C 8006F90C AFA2002C */  sw         $v0, 0x2C($sp)
/* 70510 8006F910 AC203690 */  sw         $zero, %lo(D_80093690)($at)
/* 70514 8006F914 AC203694 */  sw         $zero, %lo(D_80093694)($at)
/* 70518 8006F918 AC203698 */  sw         $zero, %lo(D_80093698)($at)
/* 7051C 8006F91C 24E73680 */  addiu      $a3, $a3, %lo(D_80093680)
/* 70520 8006F920 24C6F980 */  addiu      $a2, $a2, %lo(func_8006F980)
/* 70524 8006F924 AFAE0010 */  sw         $t6, 0x10($sp)
/* 70528 8006F928 01602025 */  or         $a0, $t3, $zero
/* 7052C 8006F92C 00002825 */  or         $a1, $zero, $zero
/* 70530 8006F930 0C019EEC */  jal        osCreateThread
/* 70534 8006F934 AFAF0014 */   sw        $t7, 0x14($sp)
/* 70538 8006F938 0C01DC48 */  jal        __osViInit
/* 7053C 8006F93C 00000000 */   nop
/* 70540 8006F940 3C04801B */  lui        $a0, %hi(D_801AAEB0)
/* 70544 8006F944 0C019F40 */  jal        osStartThread
/* 70548 8006F948 2484AEB0 */   addiu     $a0, $a0, %lo(D_801AAEB0)
/* 7054C 8006F94C 0C01C220 */  jal        __osRestoreInt
/* 70550 8006F950 8FA4002C */   lw        $a0, 0x2C($sp)
/* 70554 8006F954 8FB80028 */  lw         $t8, 0x28($sp)
/* 70558 8006F958 2401FFFF */  addiu      $at, $zero, -0x1
/* 7055C 8006F95C 13010004 */  beq        $t8, $at, .L8006F970
/* 70560 8006F960 00000000 */   nop
/* 70564 8006F964 00002025 */  or         $a0, $zero, $zero
/* 70568 8006F968 0C01C148 */  jal        osSetThreadPri
/* 7056C 8006F96C 03002825 */   or        $a1, $t8, $zero
.L8006F970:
/* 70570 8006F970 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70574 8006F974 27BD0030 */  addiu      $sp, $sp, 0x30
/* 70578 8006F978 03E00008 */  jr         $ra
/* 7057C 8006F97C 00000000 */   nop
