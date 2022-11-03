.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80065740
/* 66340 80065740 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 66344 80065744 AFA40020 */  sw         $a0, 0x20($sp)
/* 66348 80065748 8FAF0020 */  lw         $t7, 0x20($sp)
/* 6634C 8006574C 3C0E801B */  lui        $t6, %hi(D_801A8750)
/* 66350 80065750 AFBF001C */  sw         $ra, 0x1C($sp)
/* 66354 80065754 25CE8750 */  addiu      $t6, $t6, %lo(D_801A8750)
/* 66358 80065758 3C04801A */  lui        $a0, %hi(D_801A45A0)
/* 6635C 8006575C 3C068006 */  lui        $a2, %hi(func_800657B0)
/* 66360 80065760 24C657B0 */  addiu      $a2, $a2, %lo(func_800657B0)
/* 66364 80065764 248445A0 */  addiu      $a0, $a0, %lo(D_801A45A0)
/* 66368 80065768 AFAE0010 */  sw         $t6, 0x10($sp)
/* 6636C 8006576C 24050006 */  addiu      $a1, $zero, 0x6
/* 66370 80065770 00003825 */  or         $a3, $zero, $zero
/* 66374 80065774 0C019EEC */  jal        osCreateThread
/* 66378 80065778 AFAF0014 */   sw        $t7, 0x14($sp)
/* 6637C 8006577C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 66380 80065780 27BD0020 */  addiu      $sp, $sp, 0x20
/* 66384 80065784 03E00008 */  jr         $ra
/* 66388 80065788 00000000 */   nop

glabel func_8006578C
/* 6638C 8006578C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 66390 80065790 AFBF0014 */  sw         $ra, 0x14($sp)
/* 66394 80065794 3C04801A */  lui        $a0, %hi(D_801A45A0)
/* 66398 80065798 0C019F40 */  jal        osStartThread
/* 6639C 8006579C 248445A0 */   addiu     $a0, $a0, %lo(D_801A45A0)
/* 663A0 800657A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 663A4 800657A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 663A8 800657A8 03E00008 */  jr         $ra
/* 663AC 800657AC 00000000 */   nop

glabel func_800657B0
/* 663B0 800657B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 663B4 800657B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 663B8 800657B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 663BC 800657BC 0C019621 */  jal        func_80065884
/* 663C0 800657C0 AFA40020 */   sw        $a0, 0x20($sp)
/* 663C4 800657C4 0C005710 */  jal        func_80015C40
/* 663C8 800657C8 00000000 */   nop
/* 663CC 800657CC 3C02801B */  lui        $v0, %hi(D_801AAB00)
/* 663D0 800657D0 2442AB00 */  addiu      $v0, $v0, %lo(D_801AAB00)
/* 663D4 800657D4 3C10801B */  lui        $s0, %hi(D_801A8750)
/* 663D8 800657D8 26108750 */  addiu      $s0, $s0, %lo(D_801A8750)
/* 663DC 800657DC 240E0002 */  addiu      $t6, $zero, 0x2
/* 663E0 800657E0 3C05801B */  lui        $a1, %hi(D_801A8768)
/* 663E4 800657E4 AC400000 */  sw         $zero, 0x0($v0)
/* 663E8 800657E8 A0400004 */  sb         $zero, 0x4($v0)
/* 663EC 800657EC A04E0005 */  sb         $t6, 0x5($v0)
/* 663F0 800657F0 24A58768 */  addiu      $a1, $a1, %lo(D_801A8768)
/* 663F4 800657F4 02002025 */  or         $a0, $s0, $zero
/* 663F8 800657F8 0C01978C */  jal        osCreateMesgQueue
/* 663FC 800657FC 24060040 */   addiu     $a2, $zero, 0x40
/* 66400 80065800 0C002454 */  jal        func_80009150
/* 66404 80065804 02002025 */   or        $a0, $s0, $zero
/* 66408 80065808 10400005 */  beqz       $v0, .L80065820
/* 6640C 8006580C 3C04801B */   lui       $a0, %hi(D_801A8868)
/* 66410 80065810 240F0007 */  addiu      $t7, $zero, 0x7
/* 66414 80065814 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 66418 80065818 10000003 */  b          .L80065828
/* 6641C 8006581C AC2FFF84 */   sw        $t7, %lo(D_8013FF84)($at)
.L80065820:
/* 66420 80065820 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 66424 80065824 AC20FF84 */  sw         $zero, %lo(D_8013FF84)($at)
.L80065828:
/* 66428 80065828 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 6642C 8006582C 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 66430 80065830 24848868 */  addiu      $a0, $a0, %lo(D_801A8868)
/* 66434 80065834 0C0192CF */  jal        func_80064B3C
/* 66438 80065838 02003025 */   or        $a2, $s0, $zero
/* 6643C 8006583C 02002025 */  or         $a0, $s0, $zero
/* 66440 80065840 00002825 */  or         $a1, $zero, $zero
/* 66444 80065844 0C019824 */  jal        func_80066090
/* 66448 80065848 00003025 */   or        $a2, $zero, $zero
/* 6644C 8006584C 14400006 */  bnez       $v0, .L80065868
/* 66450 80065850 02002025 */   or        $a0, $s0, $zero
.L80065854:
/* 66454 80065854 00002825 */  or         $a1, $zero, $zero
/* 66458 80065858 0C019824 */  jal        func_80066090
/* 6645C 8006585C 00003025 */   or        $a2, $zero, $zero
/* 66460 80065860 5040FFFC */  beql       $v0, $zero, .L80065854
/* 66464 80065864 02002025 */   or        $a0, $s0, $zero
.L80065868:
/* 66468 80065868 0C01963F */  jal        func_800658FC
/* 6646C 8006586C 00000000 */   nop
/* 66470 80065870 8FBF001C */  lw         $ra, 0x1C($sp)
/* 66474 80065874 8FB00018 */  lw         $s0, 0x18($sp)
/* 66478 80065878 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6647C 8006587C 03E00008 */  jr         $ra
/* 66480 80065880 00000000 */   nop

glabel func_80065884
/* 66484 80065884 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 66488 80065888 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6648C 8006588C 0C0196B4 */  jal        func_80065AD0
/* 66490 80065890 00000000 */   nop
/* 66494 80065894 0C01958C */  jal        func_80065630
/* 66498 80065898 00000000 */   nop
/* 6649C 8006589C 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 664A0 800658A0 3C05801B */  lui        $a1, %hi(D_801AAAF0)
/* 664A4 800658A4 3C078009 */  lui        $a3, %hi(D_80092E3F)
/* 664A8 800658A8 240E0001 */  addiu      $t6, $zero, 0x1
/* 664AC 800658AC AFAE0010 */  sw         $t6, 0x10($sp)
/* 664B0 800658B0 90E72E3F */  lbu        $a3, %lo(D_80092E3F)($a3)
/* 664B4 800658B4 24A5AAF0 */  addiu      $a1, $a1, %lo(D_801AAAF0)
/* 664B8 800658B8 24848868 */  addiu      $a0, $a0, %lo(D_801A8868)
/* 664BC 800658BC 0C019284 */  jal        func_80064A10
/* 664C0 800658C0 2406000D */   addiu     $a2, $zero, 0xD
/* 664C4 800658C4 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 664C8 800658C8 0C019305 */  jal        func_80064C14
/* 664CC 800658CC 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 664D0 800658D0 3C01801B */  lui        $at, %hi(D_801AAAF0)
/* 664D4 800658D4 0C000114 */  jal        func_80000450
/* 664D8 800658D8 AC22AAF0 */   sw        $v0, %lo(D_801AAAF0)($at)
/* 664DC 800658DC 0C00018E */  jal        func_80000638
/* 664E0 800658E0 00000000 */   nop
/* 664E4 800658E4 0C000513 */  jal        func_8000144C
/* 664E8 800658E8 00000000 */   nop
/* 664EC 800658EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 664F0 800658F0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 664F4 800658F4 03E00008 */  jr         $ra
/* 664F8 800658F8 00000000 */   nop

glabel func_800658FC
/* 664FC 800658FC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 66500 80065900 AFB30024 */  sw         $s3, 0x24($sp)
/* 66504 80065904 AFB20020 */  sw         $s2, 0x20($sp)
/* 66508 80065908 AFB1001C */  sw         $s1, 0x1C($sp)
/* 6650C 8006590C AFB00018 */  sw         $s0, 0x18($sp)
/* 66510 80065910 AFBE0038 */  sw         $fp, 0x38($sp)
/* 66514 80065914 AFB70034 */  sw         $s7, 0x34($sp)
/* 66518 80065918 AFB60030 */  sw         $s6, 0x30($sp)
/* 6651C 8006591C AFB5002C */  sw         $s5, 0x2C($sp)
/* 66520 80065920 AFB40028 */  sw         $s4, 0x28($sp)
/* 66524 80065924 3C10801B */  lui        $s0, %hi(D_801AAB00)
/* 66528 80065928 3C118009 */  lui        $s1, %hi(D_80092E20)
/* 6652C 8006592C 3C128009 */  lui        $s2, %hi(D_8008B850)
/* 66530 80065930 3C13801B */  lui        $s3, %hi(D_801A8750)
/* 66534 80065934 AFBF003C */  sw         $ra, 0x3C($sp)
/* 66538 80065938 AFA0004C */  sw         $zero, 0x4C($sp)
/* 6653C 8006593C 26738750 */  addiu      $s3, $s3, %lo(D_801A8750)
/* 66540 80065940 2652B850 */  addiu      $s2, $s2, %lo(D_8008B850)
/* 66544 80065944 26312E20 */  addiu      $s1, $s1, %lo(D_80092E20)
/* 66548 80065948 2610AB00 */  addiu      $s0, $s0, %lo(D_801AAB00)
/* 6654C 8006594C 24140001 */  addiu      $s4, $zero, 0x1
/* 66550 80065950 24150001 */  addiu      $s5, $zero, 0x1
/* 66554 80065954 27B6004C */  addiu      $s6, $sp, 0x4C
/* 66558 80065958 24170002 */  addiu      $s7, $zero, 0x2
/* 6655C 8006595C 241E0004 */  addiu      $fp, $zero, 0x4
.L80065960:
/* 66560 80065960 02602025 */  or         $a0, $s3, $zero
.L80065964:
/* 66564 80065964 02C02825 */  or         $a1, $s6, $zero
/* 66568 80065968 0C019824 */  jal        func_80066090
/* 6656C 8006596C 02803025 */   or        $a2, $s4, $zero
/* 66570 80065970 8FAE004C */  lw         $t6, 0x4C($sp)
/* 66574 80065974 85C30000 */  lh         $v1, 0x0($t6)
/* 66578 80065978 5074000B */  beql       $v1, $s4, .L800659A8
/* 6657C 8006597C 92020004 */   lbu       $v0, 0x4($s0)
/* 66580 80065980 50770035 */  beql       $v1, $s7, .L80065A58
/* 66584 80065984 8E4D0000 */   lw        $t5, 0x0($s2)
/* 66588 80065988 107E003A */  beq        $v1, $fp, .L80065A74
/* 6658C 8006598C 240F0002 */   addiu     $t7, $zero, 0x2
/* 66590 80065990 24010005 */  addiu      $at, $zero, 0x5
/* 66594 80065994 10610033 */  beq        $v1, $at, .L80065A64
/* 66598 80065998 00000000 */   nop
/* 6659C 8006599C 1000FFF1 */  b          .L80065964
/* 665A0 800659A0 02602025 */   or        $a0, $s3, $zero
/* 665A4 800659A4 92020004 */  lbu        $v0, 0x4($s0)
.L800659A8:
/* 665A8 800659A8 14400005 */  bnez       $v0, .L800659C0
/* 665AC 800659AC 00000000 */   nop
/* 665B0 800659B0 0C005723 */  jal        func_80015C8C
/* 665B4 800659B4 00000000 */   nop
/* 665B8 800659B8 10000010 */  b          .L800659FC
/* 665BC 800659BC 92180004 */   lbu       $t8, 0x4($s0)
.L800659C0:
/* 665C0 800659C0 5682FFE8 */  bnel       $s4, $v0, .L80065964
/* 665C4 800659C4 02602025 */   or        $a0, $s3, $zero
/* 665C8 800659C8 0C007950 */  jal        func_8001E540
/* 665CC 800659CC 00000000 */   nop
/* 665D0 800659D0 0C0024F7 */  jal        func_800093DC
/* 665D4 800659D4 00000000 */   nop
/* 665D8 800659D8 50400008 */  beql       $v0, $zero, .L800659FC
/* 665DC 800659DC 92180004 */   lbu       $t8, 0x4($s0)
/* 665E0 800659E0 8E2F0000 */  lw         $t7, 0x0($s1)
/* 665E4 800659E4 55E00005 */  bnel       $t7, $zero, .L800659FC
/* 665E8 800659E8 92180004 */   lbu       $t8, 0x4($s0)
/* 665EC 800659EC AE350000 */  sw         $s5, 0x0($s1)
/* 665F0 800659F0 0C01AC88 */  jal        func_8006B220
/* 665F4 800659F4 02602025 */   or        $a0, $s3, $zero
/* 665F8 800659F8 92180004 */  lbu        $t8, 0x4($s0)
.L800659FC:
/* 665FC 800659FC 92090005 */  lbu        $t1, 0x5($s0)
/* 66600 80065A00 8E0B0000 */  lw         $t3, 0x0($s0)
/* 66604 80065A04 27190001 */  addiu      $t9, $t8, 0x1
/* 66608 80065A08 332800FF */  andi       $t0, $t9, 0xFF
/* 6660C 80065A0C 0109001A */  div        $zero, $t0, $t1
/* 66610 80065A10 A2190004 */  sb         $t9, 0x4($s0)
/* 66614 80065A14 00005010 */  mfhi       $t2
/* 66618 80065A18 256C0001 */  addiu      $t4, $t3, 0x1
/* 6661C 80065A1C 15200002 */  bnez       $t1, .L80065A28
/* 66620 80065A20 00000000 */   nop
/* 66624 80065A24 0007000D */  break      7
.L80065A28:
/* 66628 80065A28 2401FFFF */  addiu      $at, $zero, -0x1
/* 6662C 80065A2C 15210004 */  bne        $t1, $at, .L80065A40
/* 66630 80065A30 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 66634 80065A34 15010002 */  bne        $t0, $at, .L80065A40
/* 66638 80065A38 00000000 */   nop
/* 6663C 80065A3C 0006000D */  break      6
.L80065A40:
/* 66640 80065A40 A20A0004 */  sb         $t2, 0x4($s0)
/* 66644 80065A44 0C00128D */  jal        func_80004A34
/* 66648 80065A48 AE0C0000 */   sw        $t4, 0x0($s0)
/* 6664C 80065A4C 1000FFC5 */  b          .L80065964
/* 66650 80065A50 02602025 */   or        $a0, $s3, $zero
/* 66654 80065A54 8E4D0000 */  lw         $t5, 0x0($s2)
.L80065A58:
/* 66658 80065A58 25AEFFFF */  addiu      $t6, $t5, -0x1
/* 6665C 80065A5C 1000FFC0 */  b          .L80065960
/* 66660 80065A60 AE4E0000 */   sw        $t6, 0x0($s2)
.L80065A64:
/* 66664 80065A64 0C0024B1 */  jal        func_800092C4
/* 66668 80065A68 00000000 */   nop
/* 6666C 80065A6C 1000FFBC */  b          .L80065960
/* 66670 80065A70 AE200000 */   sw        $zero, 0x0($s1)
.L80065A74:
/* 66674 80065A74 8E580000 */  lw         $t8, 0x0($s2)
/* 66678 80065A78 A20F0004 */  sb         $t7, 0x4($s0)
/* 6667C 80065A7C 32A400FF */  andi       $a0, $s5, 0xFF
/* 66680 80065A80 27190002 */  addiu      $t9, $t8, 0x2
/* 66684 80065A84 0C01B318 */  jal        func_8006CC60
/* 66688 80065A88 AE590000 */   sw        $t9, 0x0($s2)
/* 6668C 80065A8C AE350000 */  sw         $s5, 0x0($s1)
/* 66690 80065A90 1000FFB3 */  b          .L80065960
/* 66694 80065A94 AE000000 */   sw        $zero, 0x0($s0)
/* 66698 80065A98 00000000 */  nop
/* 6669C 80065A9C 00000000 */  nop
/* 666A0 80065AA0 8FBF003C */  lw         $ra, 0x3C($sp)
/* 666A4 80065AA4 8FB00018 */  lw         $s0, 0x18($sp)
/* 666A8 80065AA8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 666AC 80065AAC 8FB20020 */  lw         $s2, 0x20($sp)
/* 666B0 80065AB0 8FB30024 */  lw         $s3, 0x24($sp)
/* 666B4 80065AB4 8FB40028 */  lw         $s4, 0x28($sp)
/* 666B8 80065AB8 8FB5002C */  lw         $s5, 0x2C($sp)
/* 666BC 80065ABC 8FB60030 */  lw         $s6, 0x30($sp)
/* 666C0 80065AC0 8FB70034 */  lw         $s7, 0x34($sp)
/* 666C4 80065AC4 8FBE0038 */  lw         $fp, 0x38($sp)
/* 666C8 80065AC8 03E00008 */  jr         $ra
/* 666CC 80065ACC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80065AD0
/* 666D0 80065AD0 3C0E8000 */  lui        $t6, %hi(osTvType)
/* 666D4 80065AD4 8DCE0300 */  lw         $t6, %lo(osTvType)($t6)
/* 666D8 80065AD8 24020002 */  addiu      $v0, $zero, 0x2
/* 666DC 80065ADC 240F001E */  addiu      $t7, $zero, 0x1E
/* 666E0 80065AE0 144E0004 */  bne        $v0, $t6, .L80065AF4
/* 666E4 80065AE4 3C018009 */   lui       $at, %hi(D_80092E3C)
/* 666E8 80065AE8 3C018009 */  lui        $at, %hi(D_80092E3C)
/* 666EC 80065AEC 03E00008 */  jr         $ra
/* 666F0 80065AF0 AC2F2E3C */   sw        $t7, %lo(D_80092E3C)($at)
.L80065AF4:
/* 666F4 80065AF4 AC222E3C */  sw         $v0, %lo(D_80092E3C)($at)
/* 666F8 80065AF8 03E00008 */  jr         $ra
/* 666FC 80065AFC 00000000 */   nop

glabel func_80065B00
/* 66700 80065B00 24030010 */  addiu      $v1, $zero, 0x10
/* 66704 80065B04 30AE000F */  andi       $t6, $a1, 0xF
/* 66708 80065B08 006E1023 */  subu       $v0, $v1, $t6
/* 6670C 80065B0C 10620003 */  beq        $v1, $v0, .L80065B1C
/* 66710 80065B10 00A27821 */   addu      $t7, $a1, $v0
/* 66714 80065B14 10000002 */  b          .L80065B20
/* 66718 80065B18 AC8F0000 */   sw        $t7, 0x0($a0)
.L80065B1C:
/* 6671C 80065B1C AC850000 */  sw         $a1, 0x0($a0)
.L80065B20:
/* 66720 80065B20 8C980000 */  lw         $t8, 0x0($a0)
/* 66724 80065B24 AC860008 */  sw         $a2, 0x8($a0)
/* 66728 80065B28 AC80000C */  sw         $zero, 0xC($a0)
/* 6672C 80065B2C 03E00008 */  jr         $ra
/* 66730 80065B30 AC980004 */   sw        $t8, 0x4($a0)
/* 66734 80065B34 00000000 */  nop
/* 66738 80065B38 00000000 */  nop
/* 6673C 80065B3C 00000000 */  nop
