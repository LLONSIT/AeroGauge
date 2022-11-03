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
