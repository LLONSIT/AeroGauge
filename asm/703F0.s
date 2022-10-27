.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

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
/* 70428 8006F828 0C01978C */  jal        func_80065E30
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
/* 70468 8006F868 0C01AB80 */  jal        func_8006AE00
/* 7046C 8006F86C 24040007 */   addiu     $a0, $zero, 0x7
/* 70470 8006F870 3C05801B */  lui        $a1, %hi(D_801AC060)
/* 70474 8006F874 3C06801B */  lui        $a2, %hi(D_801AC0A8)
/* 70478 8006F878 24C6C0A8 */  addiu      $a2, $a2, %lo(D_801AC0A8)
/* 7047C 8006F87C 24A5C060 */  addiu      $a1, $a1, %lo(D_801AC060)
/* 70480 8006F880 0C01AB80 */  jal        func_8006AE00
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
/* 704B8 8006F8B8 0C01C148 */  jal        func_80070520
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
/* 70544 8006F944 0C019F40 */  jal        func_80067D00
/* 70548 8006F948 2484AEB0 */   addiu     $a0, $a0, %lo(D_801AAEB0)
/* 7054C 8006F94C 0C01C220 */  jal        __osRestoreInt
/* 70550 8006F950 8FA4002C */   lw        $a0, 0x2C($sp)
/* 70554 8006F954 8FB80028 */  lw         $t8, 0x28($sp)
/* 70558 8006F958 2401FFFF */  addiu      $at, $zero, -0x1
/* 7055C 8006F95C 13010004 */  beq        $t8, $at, .L8006F970
/* 70560 8006F960 00000000 */   nop
/* 70564 8006F964 00002025 */  or         $a0, $zero, $zero
/* 70568 8006F968 0C01C148 */  jal        func_80070520
/* 7056C 8006F96C 03002825 */   or        $a1, $t8, $zero
.L8006F970:
/* 70570 8006F970 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70574 8006F974 27BD0030 */  addiu      $sp, $sp, 0x30
/* 70578 8006F978 03E00008 */  jr         $ra
/* 7057C 8006F97C 00000000 */   nop

glabel func_8006F980
/* 70580 8006F980 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 70584 8006F984 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70588 8006F988 AFA40038 */  sw         $a0, 0x38($sp)
/* 7058C 8006F98C AFB00018 */  sw         $s0, 0x18($sp)
/* 70590 8006F990 AFA0002C */  sw         $zero, 0x2C($sp)
/* 70594 8006F994 0C01DFF0 */  jal        func_80077FC0
/* 70598 8006F998 AFA00028 */   sw        $zero, 0x28($sp)
/* 7059C 8006F99C AFA20034 */  sw         $v0, 0x34($sp)
/* 705A0 8006F9A0 8FAE0034 */  lw         $t6, 0x34($sp)
/* 705A4 8006F9A4 3C01801B */  lui        $at, %hi(D_801AC0C0)
/* 705A8 8006F9A8 95CF0002 */  lhu        $t7, 0x2($t6)
/* 705AC 8006F9AC 15E00004 */  bnez       $t7, .L8006F9C0
/* 705B0 8006F9B0 A42FC0C0 */   sh        $t7, %lo(D_801AC0C0)($at)
/* 705B4 8006F9B4 24180001 */  addiu      $t8, $zero, 0x1
/* 705B8 8006F9B8 3C01801B */  lui        $at, %hi(D_801AC0C0)
/* 705BC 8006F9BC A438C0C0 */  sh         $t8, %lo(D_801AC0C0)($at)
.L8006F9C0:
/* 705C0 8006F9C0 8FB90038 */  lw         $t9, 0x38($sp)
/* 705C4 8006F9C4 AFB90030 */  sw         $t9, 0x30($sp)
.L8006F9C8:
/* 705C8 8006F9C8 8FA80030 */  lw         $t0, 0x30($sp)
/* 705CC 8006F9CC 27A5002C */  addiu      $a1, $sp, 0x2C
/* 705D0 8006F9D0 24060001 */  addiu      $a2, $zero, 0x1
/* 705D4 8006F9D4 0C019824 */  jal        func_80066090
/* 705D8 8006F9D8 8D04000C */   lw        $a0, 0xC($t0)
/* 705DC 8006F9DC 8FA9002C */  lw         $t1, 0x2C($sp)
/* 705E0 8006F9E0 2401000D */  addiu      $at, $zero, 0xD
/* 705E4 8006F9E4 95300000 */  lhu        $s0, 0x0($t1)
/* 705E8 8006F9E8 12010005 */  beq        $s0, $at, .L8006FA00
/* 705EC 8006F9EC 2401000E */   addiu     $at, $zero, 0xE
/* 705F0 8006F9F0 12010047 */  beq        $s0, $at, .L8006FB10
/* 705F4 8006F9F4 00000000 */   nop
/* 705F8 8006F9F8 1000FFF3 */  b          .L8006F9C8
/* 705FC 8006F9FC 00000000 */   nop
.L8006FA00:
/* 70600 8006FA00 0C01DFF4 */  jal        func_80077FD0
/* 70604 8006FA04 00000000 */   nop
/* 70608 8006FA08 3C0A801B */  lui        $t2, %hi(D_801AC0C0)
/* 7060C 8006FA0C 954AC0C0 */  lhu        $t2, %lo(D_801AC0C0)($t2)
/* 70610 8006FA10 3C01801B */  lui        $at, %hi(D_801AC0C0)
/* 70614 8006FA14 254BFFFF */  addiu      $t3, $t2, -0x1
/* 70618 8006FA18 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 7061C 8006FA1C 15800010 */  bnez       $t4, .L8006FA60
/* 70620 8006FA20 A42BC0C0 */   sh        $t3, %lo(D_801AC0C0)($at)
/* 70624 8006FA24 0C01DFF0 */  jal        func_80077FC0
/* 70628 8006FA28 00000000 */   nop
/* 7062C 8006FA2C AFA20034 */  sw         $v0, 0x34($sp)
/* 70630 8006FA30 8FAD0034 */  lw         $t5, 0x34($sp)
/* 70634 8006FA34 8DAE0010 */  lw         $t6, 0x10($t5)
/* 70638 8006FA38 11C00005 */  beqz       $t6, .L8006FA50
/* 7063C 8006FA3C 00000000 */   nop
/* 70640 8006FA40 01C02025 */  or         $a0, $t6, $zero
/* 70644 8006FA44 8DA50014 */  lw         $a1, 0x14($t5)
/* 70648 8006FA48 0C01A1B4 */  jal        func_800686D0
/* 7064C 8006FA4C 00003025 */   or        $a2, $zero, $zero
.L8006FA50:
/* 70650 8006FA50 8FAF0034 */  lw         $t7, 0x34($sp)
/* 70654 8006FA54 3C01801B */  lui        $at, %hi(D_801AC0C0)
/* 70658 8006FA58 95F80002 */  lhu        $t8, 0x2($t7)
/* 7065C 8006FA5C A438C0C0 */  sh         $t8, %lo(D_801AC0C0)($at)
.L8006FA60:
/* 70660 8006FA60 3C19801B */  lui        $t9, %hi(D_801AD33C)
/* 70664 8006FA64 8F39D33C */  lw         $t9, %lo(D_801AD33C)($t9)
/* 70668 8006FA68 8FA90028 */  lw         $t1, 0x28($sp)
/* 7066C 8006FA6C 3C01801B */  lui        $at, %hi(D_801AD33C)
/* 70670 8006FA70 27280001 */  addiu      $t0, $t9, 0x1
/* 70674 8006FA74 1120000C */  beqz       $t1, .L8006FAA8
/* 70678 8006FA78 AC28D33C */   sw        $t0, %lo(D_801AD33C)($at)
/* 7067C 8006FA7C 0C01DB44 */  jal        func_80076D10
/* 70680 8006FA80 00000000 */   nop
/* 70684 8006FA84 AFA20024 */  sw         $v0, 0x24($sp)
/* 70688 8006FA88 8FAA0024 */  lw         $t2, 0x24($sp)
/* 7068C 8006FA8C 240C0000 */  addiu      $t4, $zero, 0x0
/* 70690 8006FA90 3C01801B */  lui        $at, %hi(D_801AD330)
/* 70694 8006FA94 AC2CD330 */  sw         $t4, %lo(D_801AD330)($at)
/* 70698 8006FA98 3C01801B */  lui        $at, %hi(D_801AD334)
/* 7069C 8006FA9C 01406825 */  or         $t5, $t2, $zero
/* 706A0 8006FAA0 AC2DD334 */  sw         $t5, %lo(D_801AD334)($at)
/* 706A4 8006FAA4 AFA00028 */  sw         $zero, 0x28($sp)
.L8006FAA8:
/* 706A8 8006FAA8 3C0B801B */  lui        $t3, %hi(D_801AD338)
/* 706AC 8006FAAC 8D6BD338 */  lw         $t3, %lo(D_801AD338)($t3)
/* 706B0 8006FAB0 0C01DB44 */  jal        func_80076D10
/* 706B4 8006FAB4 AFAB0024 */   sw        $t3, 0x24($sp)
/* 706B8 8006FAB8 3C01801B */  lui        $at, %hi(D_801AD338)
/* 706BC 8006FABC AC22D338 */  sw         $v0, %lo(D_801AD338)($at)
/* 706C0 8006FAC0 3C0E801B */  lui        $t6, %hi(D_801AD338)
/* 706C4 8006FAC4 8DCED338 */  lw         $t6, %lo(D_801AD338)($t6)
/* 706C8 8006FAC8 8FAF0024 */  lw         $t7, 0x24($sp)
/* 706CC 8006FACC 3C0B801B */  lui        $t3, %hi(D_801AD334)
/* 706D0 8006FAD0 8D6BD334 */  lw         $t3, %lo(D_801AD334)($t3)
/* 706D4 8006FAD4 01CFC023 */  subu       $t8, $t6, $t7
/* 706D8 8006FAD8 03004825 */  or         $t1, $t8, $zero
/* 706DC 8006FADC 3C0A801B */  lui        $t2, %hi(D_801AD330)
/* 706E0 8006FAE0 012B6821 */  addu       $t5, $t1, $t3
/* 706E4 8006FAE4 8D4AD330 */  lw         $t2, %lo(D_801AD330)($t2)
/* 706E8 8006FAE8 24080000 */  addiu      $t0, $zero, 0x0
/* 706EC 8006FAEC 01AB082B */  sltu       $at, $t5, $t3
/* 706F0 8006FAF0 00286021 */  addu       $t4, $at, $t0
/* 706F4 8006FAF4 3C01801B */  lui        $at, %hi(D_801AD330)
/* 706F8 8006FAF8 018A6021 */  addu       $t4, $t4, $t2
/* 706FC 8006FAFC AC2CD330 */  sw         $t4, %lo(D_801AD330)($at)
/* 70700 8006FB00 3C01801B */  lui        $at, %hi(D_801AD334)
/* 70704 8006FB04 AFB80024 */  sw         $t8, 0x24($sp)
/* 70708 8006FB08 1000FFAF */  b          .L8006F9C8
/* 7070C 8006FB0C AC2DD334 */   sw        $t5, %lo(D_801AD334)($at)
.L8006FB10:
/* 70710 8006FB10 0C01DB6B */  jal        __osTimerInterrupt
/* 70714 8006FB14 00000000 */   nop
/* 70718 8006FB18 1000FFAB */  b          .L8006F9C8
/* 7071C 8006FB1C 00000000 */   nop
/* 70720 8006FB20 00000000 */  nop
/* 70724 8006FB24 00000000 */  nop
/* 70728 8006FB28 00000000 */  nop
/* 7072C 8006FB2C 00000000 */  nop
/* 70730 8006FB30 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70734 8006FB34 8FB00018 */  lw         $s0, 0x18($sp)
/* 70738 8006FB38 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7073C 8006FB3C 03E00008 */  jr         $ra
/* 70740 8006FB40 00000000 */   nop
/* 70744 8006FB44 00000000 */  nop
/* 70748 8006FB48 00000000 */  nop
/* 7074C 8006FB4C 00000000 */  nop
