glabel func_8001C910
/* 1D510 8001C910 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1D514 8001C914 AFB30034 */  sw         $s3, 0x34($sp)
/* 1D518 8001C918 3C138014 */  lui        $s3, %hi(D_8013FF90)
/* 1D51C 8001C91C 2673FF90 */  addiu      $s3, $s3, %lo(D_8013FF90)
/* 1D520 8001C920 AFBF004C */  sw         $ra, 0x4C($sp)
/* 1D524 8001C924 AFBE0048 */  sw         $fp, 0x48($sp)
/* 1D528 8001C928 AFB70044 */  sw         $s7, 0x44($sp)
/* 1D52C 8001C92C AFB60040 */  sw         $s6, 0x40($sp)
/* 1D530 8001C930 AFB5003C */  sw         $s5, 0x3C($sp)
/* 1D534 8001C934 AFB40038 */  sw         $s4, 0x38($sp)
/* 1D538 8001C938 AFB20030 */  sw         $s2, 0x30($sp)
/* 1D53C 8001C93C AFB1002C */  sw         $s1, 0x2C($sp)
/* 1D540 8001C940 AFB00028 */  sw         $s0, 0x28($sp)
/* 1D544 8001C944 0C01746C */  jal        func_8005D1B0
/* 1D548 8001C948 8264000B */   lb        $a0, 0xB($s3)
/* 1D54C 8001C94C 926E0000 */  lbu        $t6, 0x0($s3)
/* 1D550 8001C950 2DC1000C */  sltiu      $at, $t6, 0xC
/* 1D554 8001C954 1020012A */  beqz       $at, .L8001CE00
/* 1D558 8001C958 000E7080 */   sll       $t6, $t6, 2
/* 1D55C 8001C95C 3C018009 */  lui        $at, %hi(jtbl_80096E90_main)
/* 1D560 8001C960 002E0821 */  addu       $at, $at, $t6
/* 1D564 8001C964 8C2E6E90 */  lw         $t6, %lo(jtbl_80096E90_main)($at)
/* 1D568 8001C968 01C00008 */  jr         $t6
/* 1D56C 8001C96C 00000000 */   nop
glabel L8001C970
/* 1D570 8001C970 82650005 */  lb         $a1, 0x5($s3)
/* 1D574 8001C974 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D578 8001C978 826F0004 */  lb         $t7, 0x4($s3)
/* 1D57C 8001C97C 00BE0019 */  multu      $a1, $fp
/* 1D580 8001C980 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D584 8001C984 000FC100 */  sll        $t8, $t7, 4
/* 1D588 8001C988 030FC023 */  subu       $t8, $t8, $t7
/* 1D58C 8001C98C 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D590 8001C990 0018C140 */  sll        $t8, $t8, 5
/* 1D594 8001C994 826A0007 */  lb         $t2, 0x7($s3)
/* 1D598 8001C998 0218C821 */  addu       $t9, $s0, $t8
/* 1D59C 8001C99C 3C078006 */  lui        $a3, %hi(func_8005C750)
/* 1D5A0 8001C9A0 24E7C750 */  addiu      $a3, $a3, %lo(func_8005C750)
/* 1D5A4 8001C9A4 00004012 */  mflo       $t0
/* 1D5A8 8001C9A8 03284821 */  addu       $t1, $t9, $t0
/* 1D5AC 8001C9AC AFA90010 */  sw         $t1, 0x10($sp)
/* 1D5B0 8001C9B0 00002025 */  or         $a0, $zero, $zero
/* 1D5B4 8001C9B4 24060001 */  addiu      $a2, $zero, 0x1
/* 1D5B8 8001C9B8 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D5BC 8001C9BC 0C007506 */  jal        func_8001D418
/* 1D5C0 8001C9C0 AFAA0014 */   sw        $t2, 0x14($sp)
/* 1D5C4 8001C9C4 926B0019 */  lbu        $t3, 0x19($s3)
/* 1D5C8 8001C9C8 24040001 */  addiu      $a0, $zero, 0x1
/* 1D5CC 8001C9CC 5160010D */  beql       $t3, $zero, .L8001CE04
/* 1D5D0 8001C9D0 8FBF004C */   lw        $ra, 0x4C($sp)
/* 1D5D4 8001C9D4 82650006 */  lb         $a1, 0x6($s3)
/* 1D5D8 8001C9D8 826C0004 */  lb         $t4, 0x4($s3)
/* 1D5DC 8001C9DC 82790008 */  lb         $t9, 0x8($s3)
/* 1D5E0 8001C9E0 00BE0019 */  multu      $a1, $fp
/* 1D5E4 8001C9E4 000C6900 */  sll        $t5, $t4, 4
/* 1D5E8 8001C9E8 01AC6823 */  subu       $t5, $t5, $t4
/* 1D5EC 8001C9EC 000D6940 */  sll        $t5, $t5, 5
/* 1D5F0 8001C9F0 020D7021 */  addu       $t6, $s0, $t5
/* 1D5F4 8001C9F4 3C078006 */  lui        $a3, %hi(func_8005C95C)
/* 1D5F8 8001C9F8 24E7C95C */  addiu      $a3, $a3, %lo(func_8005C95C)
/* 1D5FC 8001C9FC 24060001 */  addiu      $a2, $zero, 0x1
/* 1D600 8001CA00 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D604 8001CA04 AFB90014 */  sw         $t9, 0x14($sp)
/* 1D608 8001CA08 00007812 */  mflo       $t7
/* 1D60C 8001CA0C 01CFC021 */  addu       $t8, $t6, $t7
/* 1D610 8001CA10 0C007506 */  jal        func_8001D418
/* 1D614 8001CA14 AFB80010 */   sw        $t8, 0x10($sp)
/* 1D618 8001CA18 100000FA */  b          .L8001CE04
/* 1D61C 8001CA1C 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CA20
/* 1D620 8001CA20 82650005 */  lb         $a1, 0x5($s3)
/* 1D624 8001CA24 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D628 8001CA28 82680004 */  lb         $t0, 0x4($s3)
/* 1D62C 8001CA2C 00BE0019 */  multu      $a1, $fp
/* 1D630 8001CA30 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D634 8001CA34 00084900 */  sll        $t1, $t0, 4
/* 1D638 8001CA38 01284823 */  subu       $t1, $t1, $t0
/* 1D63C 8001CA3C 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D640 8001CA40 00094940 */  sll        $t1, $t1, 5
/* 1D644 8001CA44 826D0007 */  lb         $t5, 0x7($s3)
/* 1D648 8001CA48 02095021 */  addu       $t2, $s0, $t1
/* 1D64C 8001CA4C 3C078006 */  lui        $a3, %hi(func_8005C750)
/* 1D650 8001CA50 24E7C750 */  addiu      $a3, $a3, %lo(func_8005C750)
/* 1D654 8001CA54 00005812 */  mflo       $t3
/* 1D658 8001CA58 014B6021 */  addu       $t4, $t2, $t3
/* 1D65C 8001CA5C AFAC0010 */  sw         $t4, 0x10($sp)
/* 1D660 8001CA60 00002025 */  or         $a0, $zero, $zero
/* 1D664 8001CA64 24060001 */  addiu      $a2, $zero, 0x1
/* 1D668 8001CA68 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D66C 8001CA6C 0C007506 */  jal        func_8001D418
/* 1D670 8001CA70 AFAD0014 */   sw        $t5, 0x14($sp)
/* 1D674 8001CA74 100000E3 */  b          .L8001CE04
/* 1D678 8001CA78 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CA7C
/* 1D67C 8001CA7C 82650005 */  lb         $a1, 0x5($s3)
/* 1D680 8001CA80 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D684 8001CA84 826E0004 */  lb         $t6, 0x4($s3)
/* 1D688 8001CA88 00BE0019 */  multu      $a1, $fp
/* 1D68C 8001CA8C 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D690 8001CA90 000E7900 */  sll        $t7, $t6, 4
/* 1D694 8001CA94 01EE7823 */  subu       $t7, $t7, $t6
/* 1D698 8001CA98 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D69C 8001CA9C 000F7940 */  sll        $t7, $t7, 5
/* 1D6A0 8001CAA0 82690007 */  lb         $t1, 0x7($s3)
/* 1D6A4 8001CAA4 020FC021 */  addu       $t8, $s0, $t7
/* 1D6A8 8001CAA8 3C078006 */  lui        $a3, %hi(func_8005C750)
/* 1D6AC 8001CAAC 24E7C750 */  addiu      $a3, $a3, %lo(func_8005C750)
/* 1D6B0 8001CAB0 0000C812 */  mflo       $t9
/* 1D6B4 8001CAB4 03194021 */  addu       $t0, $t8, $t9
/* 1D6B8 8001CAB8 AFA80010 */  sw         $t0, 0x10($sp)
/* 1D6BC 8001CABC 00002025 */  or         $a0, $zero, $zero
/* 1D6C0 8001CAC0 82660009 */  lb         $a2, 0x9($s3)
/* 1D6C4 8001CAC4 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D6C8 8001CAC8 0C007506 */  jal        func_8001D418
/* 1D6CC 8001CACC AFA90014 */   sw        $t1, 0x14($sp)
/* 1D6D0 8001CAD0 3C128009 */  lui        $s2, %hi(D_8008B6F0)
/* 1D6D4 8001CAD4 3C178001 */  lui        $s7, %hi(func_800151E0)
/* 1D6D8 8001CAD8 3C168009 */  lui        $s6, %hi(D_80096510)
/* 1D6DC 8001CADC 24100001 */  addiu      $s0, $zero, 0x1
/* 1D6E0 8001CAE0 26D66510 */  addiu      $s6, $s6, %lo(D_80096510)
/* 1D6E4 8001CAE4 26F751E0 */  addiu      $s7, $s7, %lo(func_800151E0)
/* 1D6E8 8001CAE8 2652B6F0 */  addiu      $s2, $s2, %lo(D_8008B6F0)
/* 1D6EC 8001CAEC 00008825 */  or         $s1, $zero, $zero
/* 1D6F0 8001CAF0 2415FFFF */  addiu      $s5, $zero, -0x1
/* 1D6F4 8001CAF4 24140008 */  addiu      $s4, $zero, 0x8
.L8001CAF8:
/* 1D6F8 8001CAF8 82450000 */  lb         $a1, 0x0($s2)
/* 1D6FC 8001CAFC 02002025 */  or         $a0, $s0, $zero
/* 1D700 8001CB00 26260001 */  addiu      $a2, $s1, 0x1
/* 1D704 8001CB04 12A50010 */  beq        $s5, $a1, .L8001CB48
/* 1D708 8001CB08 02E03825 */   or        $a3, $s7, $zero
/* 1D70C 8001CB0C 021E0019 */  multu      $s0, $fp
/* 1D710 8001CB10 826A0004 */  lb         $t2, 0x4($s3)
/* 1D714 8001CB14 24180001 */  addiu      $t8, $zero, 0x1
/* 1D718 8001CB18 AFB80018 */  sw         $t8, 0x18($sp)
/* 1D71C 8001CB1C 000A5880 */  sll        $t3, $t2, 2
/* 1D720 8001CB20 016A5823 */  subu       $t3, $t3, $t2
/* 1D724 8001CB24 000B59C0 */  sll        $t3, $t3, 7
/* 1D728 8001CB28 02CB6021 */  addu       $t4, $s6, $t3
/* 1D72C 8001CB2C 26100001 */  addiu      $s0, $s0, 0x1
/* 1D730 8001CB30 AFA00014 */  sw         $zero, 0x14($sp)
/* 1D734 8001CB34 00006812 */  mflo       $t5
/* 1D738 8001CB38 018D7021 */  addu       $t6, $t4, $t5
/* 1D73C 8001CB3C 25CFFFD0 */  addiu      $t7, $t6, -0x30
/* 1D740 8001CB40 0C007506 */  jal        func_8001D418
/* 1D744 8001CB44 AFAF0010 */   sw        $t7, 0x10($sp)
.L8001CB48:
/* 1D748 8001CB48 26310001 */  addiu      $s1, $s1, 0x1
/* 1D74C 8001CB4C 1634FFEA */  bne        $s1, $s4, .L8001CAF8
/* 1D750 8001CB50 26520001 */   addiu     $s2, $s2, 0x1
/* 1D754 8001CB54 100000AB */  b          .L8001CE04
/* 1D758 8001CB58 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CB5C
/* 1D75C 8001CB5C 82650005 */  lb         $a1, 0x5($s3)
/* 1D760 8001CB60 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D764 8001CB64 82790004 */  lb         $t9, 0x4($s3)
/* 1D768 8001CB68 00BE0019 */  multu      $a1, $fp
/* 1D76C 8001CB6C 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D770 8001CB70 00194100 */  sll        $t0, $t9, 4
/* 1D774 8001CB74 01194023 */  subu       $t0, $t0, $t9
/* 1D778 8001CB78 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D77C 8001CB7C 00084140 */  sll        $t0, $t0, 5
/* 1D780 8001CB80 826C0007 */  lb         $t4, 0x7($s3)
/* 1D784 8001CB84 02084821 */  addu       $t1, $s0, $t0
/* 1D788 8001CB88 3C078006 */  lui        $a3, %hi(func_8005C750)
/* 1D78C 8001CB8C 24E7C750 */  addiu      $a3, $a3, %lo(func_8005C750)
/* 1D790 8001CB90 00005012 */  mflo       $t2
/* 1D794 8001CB94 012A5821 */  addu       $t3, $t1, $t2
/* 1D798 8001CB98 AFAB0010 */  sw         $t3, 0x10($sp)
/* 1D79C 8001CB9C 00002025 */  or         $a0, $zero, $zero
/* 1D7A0 8001CBA0 24060001 */  addiu      $a2, $zero, 0x1
/* 1D7A4 8001CBA4 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D7A8 8001CBA8 0C007506 */  jal        func_8001D418
/* 1D7AC 8001CBAC AFAC0014 */   sw        $t4, 0x14($sp)
/* 1D7B0 8001CBB0 82650006 */  lb         $a1, 0x6($s3)
/* 1D7B4 8001CBB4 826D0004 */  lb         $t5, 0x4($s3)
/* 1D7B8 8001CBB8 82680008 */  lb         $t0, 0x8($s3)
/* 1D7BC 8001CBBC 00BE0019 */  multu      $a1, $fp
/* 1D7C0 8001CBC0 000D7100 */  sll        $t6, $t5, 4
/* 1D7C4 8001CBC4 01CD7023 */  subu       $t6, $t6, $t5
/* 1D7C8 8001CBC8 000E7140 */  sll        $t6, $t6, 5
/* 1D7CC 8001CBCC 020E7821 */  addu       $t7, $s0, $t6
/* 1D7D0 8001CBD0 3C078006 */  lui        $a3, %hi(func_8005C878)
/* 1D7D4 8001CBD4 24E7C878 */  addiu      $a3, $a3, %lo(func_8005C878)
/* 1D7D8 8001CBD8 24040001 */  addiu      $a0, $zero, 0x1
/* 1D7DC 8001CBDC 24060002 */  addiu      $a2, $zero, 0x2
/* 1D7E0 8001CBE0 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D7E4 8001CBE4 0000C012 */  mflo       $t8
/* 1D7E8 8001CBE8 01F8C821 */  addu       $t9, $t7, $t8
/* 1D7EC 8001CBEC AFB90010 */  sw         $t9, 0x10($sp)
/* 1D7F0 8001CBF0 0C007506 */  jal        func_8001D418
/* 1D7F4 8001CBF4 AFA80014 */   sw        $t0, 0x14($sp)
/* 1D7F8 8001CBF8 10000082 */  b          .L8001CE04
/* 1D7FC 8001CBFC 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CC00
/* 1D800 8001CC00 82650005 */  lb         $a1, 0x5($s3)
/* 1D804 8001CC04 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D808 8001CC08 82690004 */  lb         $t1, 0x4($s3)
/* 1D80C 8001CC0C 00BE0019 */  multu      $a1, $fp
/* 1D810 8001CC10 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D814 8001CC14 00095100 */  sll        $t2, $t1, 4
/* 1D818 8001CC18 01495023 */  subu       $t2, $t2, $t1
/* 1D81C 8001CC1C 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D820 8001CC20 000A5140 */  sll        $t2, $t2, 5
/* 1D824 8001CC24 826E0007 */  lb         $t6, 0x7($s3)
/* 1D828 8001CC28 020A5821 */  addu       $t3, $s0, $t2
/* 1D82C 8001CC2C 3C078006 */  lui        $a3, %hi(func_8005C95C)
/* 1D830 8001CC30 24E7C95C */  addiu      $a3, $a3, %lo(func_8005C95C)
/* 1D834 8001CC34 00006012 */  mflo       $t4
/* 1D838 8001CC38 016C6821 */  addu       $t5, $t3, $t4
/* 1D83C 8001CC3C AFAD0010 */  sw         $t5, 0x10($sp)
/* 1D840 8001CC40 00002025 */  or         $a0, $zero, $zero
/* 1D844 8001CC44 24060001 */  addiu      $a2, $zero, 0x1
/* 1D848 8001CC48 AFA00018 */  sw         $zero, 0x18($sp)
/* 1D84C 8001CC4C 0C007506 */  jal        func_8001D418
/* 1D850 8001CC50 AFAE0014 */   sw        $t6, 0x14($sp)
/* 1D854 8001CC54 1000006B */  b          .L8001CE04
/* 1D858 8001CC58 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CC5C
/* 1D85C 8001CC5C 3C158001 */  lui        $s5, %hi(func_800151E0)
/* 1D860 8001CC60 3C128009 */  lui        $s2, %hi(D_80096660)
/* 1D864 8001CC64 26526660 */  addiu      $s2, $s2, %lo(D_80096660)
/* 1D868 8001CC68 26B551E0 */  addiu      $s5, $s5, %lo(func_800151E0)
/* 1D86C 8001CC6C 00008025 */  or         $s0, $zero, $zero
/* 1D870 8001CC70 24110008 */  addiu      $s1, $zero, 0x8
/* 1D874 8001CC74 24140008 */  addiu      $s4, $zero, 0x8
.L8001CC78:
/* 1D878 8001CC78 26130001 */  addiu      $s3, $s0, 0x1
/* 1D87C 8001CC7C 240F0001 */  addiu      $t7, $zero, 0x1
/* 1D880 8001CC80 AFAF0018 */  sw         $t7, 0x18($sp)
/* 1D884 8001CC84 02602825 */  or         $a1, $s3, $zero
/* 1D888 8001CC88 02002025 */  or         $a0, $s0, $zero
/* 1D88C 8001CC8C 02203025 */  or         $a2, $s1, $zero
/* 1D890 8001CC90 02A03825 */  or         $a3, $s5, $zero
/* 1D894 8001CC94 AFB20010 */  sw         $s2, 0x10($sp)
/* 1D898 8001CC98 0C007506 */  jal        func_8001D418
/* 1D89C 8001CC9C AFA00014 */   sw        $zero, 0x14($sp)
/* 1D8A0 8001CCA0 02608025 */  or         $s0, $s3, $zero
/* 1D8A4 8001CCA4 2631FFFF */  addiu      $s1, $s1, -0x1
/* 1D8A8 8001CCA8 1674FFF3 */  bne        $s3, $s4, .L8001CC78
/* 1D8AC 8001CCAC 2652FFD0 */   addiu     $s2, $s2, -0x30
/* 1D8B0 8001CCB0 10000054 */  b          .L8001CE04
/* 1D8B4 8001CCB4 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CCB8
/* 1D8B8 8001CCB8 82650005 */  lb         $a1, 0x5($s3)
/* 1D8BC 8001CCBC 241E0030 */  addiu      $fp, $zero, 0x30
/* 1D8C0 8001CCC0 82780004 */  lb         $t8, 0x4($s3)
/* 1D8C4 8001CCC4 00BE0019 */  multu      $a1, $fp
/* 1D8C8 8001CCC8 3C108009 */  lui        $s0, %hi(D_80097CF0)
/* 1D8CC 8001CCCC 0018C900 */  sll        $t9, $t8, 4
/* 1D8D0 8001CCD0 0338C823 */  subu       $t9, $t9, $t8
/* 1D8D4 8001CCD4 26107CF0 */  addiu      $s0, $s0, %lo(D_80097CF0)
/* 1D8D8 8001CCD8 0019C940 */  sll        $t9, $t9, 5
/* 1D8DC 8001CCDC 826B0007 */  lb         $t3, 0x7($s3)
/* 1D8E0 8001CCE0 02194021 */  addu       $t0, $s0, $t9
/* 1D8E4 8001CCE4 3C078006 */  lui        $a3, %hi(func_8005C95C)
/* 1D8E8 8001CCE8 240C0001 */  addiu      $t4, $zero, 0x1
/* 1D8EC 8001CCEC 00004812 */  mflo       $t1
/* 1D8F0 8001CCF0 01095021 */  addu       $t2, $t0, $t1
/* 1D8F4 8001CCF4 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1D8F8 8001CCF8 AFAC0018 */  sw         $t4, 0x18($sp)
/* 1D8FC 8001CCFC 24E7C95C */  addiu      $a3, $a3, %lo(func_8005C95C)
/* 1D900 8001CD00 00002025 */  or         $a0, $zero, $zero
/* 1D904 8001CD04 24060008 */  addiu      $a2, $zero, 0x8
/* 1D908 8001CD08 0C007506 */  jal        func_8001D418
/* 1D90C 8001CD0C AFAB0014 */   sw        $t3, 0x14($sp)
/* 1D910 8001CD10 1000003C */  b          .L8001CE04
/* 1D914 8001CD14 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CD18
/* 1D918 8001CD18 826D0004 */  lb         $t5, 0x4($s3)
/* 1D91C 8001CD1C 3C168009 */  lui        $s6, %hi(D_80096510)
/* 1D920 8001CD20 82780007 */  lb         $t8, 0x7($s3)
/* 1D924 8001CD24 000D7080 */  sll        $t6, $t5, 2
/* 1D928 8001CD28 01CD7023 */  subu       $t6, $t6, $t5
/* 1D92C 8001CD2C 26D66510 */  addiu      $s6, $s6, %lo(D_80096510)
/* 1D930 8001CD30 000E71C0 */  sll        $t6, $t6, 7
/* 1D934 8001CD34 3C178001 */  lui        $s7, %hi(func_800151E0)
/* 1D938 8001CD38 02CE7821 */  addu       $t7, $s6, $t6
/* 1D93C 8001CD3C 24190001 */  addiu      $t9, $zero, 0x1
/* 1D940 8001CD40 26E751E0 */  addiu      $a3, $s7, %lo(func_800151E0)
/* 1D944 8001CD44 AFB90018 */  sw         $t9, 0x18($sp)
/* 1D948 8001CD48 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1D94C 8001CD4C 00002025 */  or         $a0, $zero, $zero
/* 1D950 8001CD50 82650005 */  lb         $a1, 0x5($s3)
/* 1D954 8001CD54 24060001 */  addiu      $a2, $zero, 0x1
/* 1D958 8001CD58 0C007506 */  jal        func_8001D418
/* 1D95C 8001CD5C AFB80014 */   sw        $t8, 0x14($sp)
/* 1D960 8001CD60 10000028 */  b          .L8001CE04
/* 1D964 8001CD64 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CD68
/* 1D968 8001CD68 82680004 */  lb         $t0, 0x4($s3)
/* 1D96C 8001CD6C 3C168009 */  lui        $s6, %hi(D_80096510)
/* 1D970 8001CD70 826B0007 */  lb         $t3, 0x7($s3)
/* 1D974 8001CD74 00084880 */  sll        $t1, $t0, 2
/* 1D978 8001CD78 01284823 */  subu       $t1, $t1, $t0
/* 1D97C 8001CD7C 26D66510 */  addiu      $s6, $s6, %lo(D_80096510)
/* 1D980 8001CD80 000949C0 */  sll        $t1, $t1, 7
/* 1D984 8001CD84 3C178001 */  lui        $s7, %hi(func_800151E0)
/* 1D988 8001CD88 02C95021 */  addu       $t2, $s6, $t1
/* 1D98C 8001CD8C 240C0001 */  addiu      $t4, $zero, 0x1
/* 1D990 8001CD90 26E751E0 */  addiu      $a3, $s7, %lo(func_800151E0)
/* 1D994 8001CD94 AFAC0018 */  sw         $t4, 0x18($sp)
/* 1D998 8001CD98 AFAA0010 */  sw         $t2, 0x10($sp)
/* 1D99C 8001CD9C 00002025 */  or         $a0, $zero, $zero
/* 1D9A0 8001CDA0 82650005 */  lb         $a1, 0x5($s3)
/* 1D9A4 8001CDA4 24060001 */  addiu      $a2, $zero, 0x1
/* 1D9A8 8001CDA8 0C007506 */  jal        func_8001D418
/* 1D9AC 8001CDAC AFAB0014 */   sw        $t3, 0x14($sp)
/* 1D9B0 8001CDB0 10000014 */  b          .L8001CE04
/* 1D9B4 8001CDB4 8FBF004C */   lw        $ra, 0x4C($sp)
glabel L8001CDB8
/* 1D9B8 8001CDB8 826D0004 */  lb         $t5, 0x4($s3)
/* 1D9BC 8001CDBC 3C168009 */  lui        $s6, %hi(D_80096510)
/* 1D9C0 8001CDC0 82780007 */  lb         $t8, 0x7($s3)
/* 1D9C4 8001CDC4 000D7080 */  sll        $t6, $t5, 2
/* 1D9C8 8001CDC8 01CD7023 */  subu       $t6, $t6, $t5
/* 1D9CC 8001CDCC 26D66510 */  addiu      $s6, $s6, %lo(D_80096510)
/* 1D9D0 8001CDD0 000E71C0 */  sll        $t6, $t6, 7
/* 1D9D4 8001CDD4 02CE7821 */  addu       $t7, $s6, $t6
/* 1D9D8 8001CDD8 3C078001 */  lui        $a3, %hi(func_80015260)
/* 1D9DC 8001CDDC 24190001 */  addiu      $t9, $zero, 0x1
/* 1D9E0 8001CDE0 AFB90018 */  sw         $t9, 0x18($sp)
/* 1D9E4 8001CDE4 24E75260 */  addiu      $a3, $a3, %lo(func_80015260)
/* 1D9E8 8001CDE8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1D9EC 8001CDEC 00002025 */  or         $a0, $zero, $zero
/* 1D9F0 8001CDF0 82650005 */  lb         $a1, 0x5($s3)
/* 1D9F4 8001CDF4 24060008 */  addiu      $a2, $zero, 0x8
/* 1D9F8 8001CDF8 0C007506 */  jal        func_8001D418
/* 1D9FC 8001CDFC AFB80014 */   sw        $t8, 0x14($sp)
.L8001CE00:
/* 1DA00 8001CE00 8FBF004C */  lw         $ra, 0x4C($sp)
.L8001CE04:
/* 1DA04 8001CE04 8FB00028 */  lw         $s0, 0x28($sp)
/* 1DA08 8001CE08 8FB1002C */  lw         $s1, 0x2C($sp)
/* 1DA0C 8001CE0C 8FB20030 */  lw         $s2, 0x30($sp)
/* 1DA10 8001CE10 8FB30034 */  lw         $s3, 0x34($sp)
/* 1DA14 8001CE14 8FB40038 */  lw         $s4, 0x38($sp)
/* 1DA18 8001CE18 8FB5003C */  lw         $s5, 0x3C($sp)
/* 1DA1C 8001CE1C 8FB60040 */  lw         $s6, 0x40($sp)
/* 1DA20 8001CE20 8FB70044 */  lw         $s7, 0x44($sp)
/* 1DA24 8001CE24 8FBE0048 */  lw         $fp, 0x48($sp)
/* 1DA28 8001CE28 03E00008 */  jr         $ra
/* 1DA2C 8001CE2C 27BD0050 */   addiu     $sp, $sp, 0x50
