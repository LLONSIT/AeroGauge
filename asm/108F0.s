.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000FCF0
/* 108F0 8000FCF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 108F4 8000FCF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 108F8 8000FCF8 0C002518 */  jal        func_80009460
/* 108FC 8000FCFC 00002025 */   or        $a0, $zero, $zero
/* 10900 8000FD00 A7A2001E */  sh         $v0, 0x1E($sp)
/* 10904 8000FD04 0C00250E */  jal        func_80009438
/* 10908 8000FD08 00002025 */   or        $a0, $zero, $zero
/* 1090C 8000FD0C 3C0E8008 */  lui        $t6, %hi(D_80082830)
/* 10910 8000FD10 8DCE2830 */  lw         $t6, %lo(D_80082830)($t6)
/* 10914 8000FD14 3047FFFF */  andi       $a3, $v0, 0xFFFF
/* 10918 8000FD18 240F6E14 */  addiu      $t7, $zero, 0x6E14
/* 1091C 8000FD1C 15C0002C */  bnez       $t6, .L8000FDD0
/* 10920 8000FD20 3C018011 */   lui       $at, %hi(D_80109BDC)
/* 10924 8000FD24 A42F9BDC */  sh         $t7, %lo(D_80109BDC)($at)
/* 10928 8000FD28 24040002 */  addiu      $a0, $zero, 0x2
/* 1092C 8000FD2C 00002825 */  or         $a1, $zero, $zero
/* 10930 8000FD30 0C000170 */  jal        func_800005C0
/* 10934 8000FD34 A7A7001C */   sh        $a3, 0x1C($sp)
/* 10938 8000FD38 3C014368 */  lui        $at, (0x43680000 >> 16)
/* 1093C 8000FD3C 44812000 */  mtc1       $at, $f4
/* 10940 8000FD40 3C028008 */  lui        $v0, %hi(D_80082818)
/* 10944 8000FD44 3C048008 */  lui        $a0, %hi(D_80082820)
/* 10948 8000FD48 3C088008 */  lui        $t0, %hi(D_8008281C)
/* 1094C 8000FD4C 2508281C */  addiu      $t0, $t0, %lo(D_8008281C)
/* 10950 8000FD50 24842820 */  addiu      $a0, $a0, %lo(D_80082820)
/* 10954 8000FD54 24422818 */  addiu      $v0, $v0, %lo(D_80082818)
/* 10958 8000FD58 AC400000 */  sw         $zero, 0x0($v0)
/* 1095C 8000FD5C AD000000 */  sw         $zero, 0x0($t0)
/* 10960 8000FD60 3C188008 */  lui        $t8, %hi(D_80082828)
/* 10964 8000FD64 E4840000 */  swc1       $f4, 0x0($a0)
/* 10968 8000FD68 8F182828 */  lw         $t8, %lo(D_80082828)($t8)
/* 1096C 8000FD6C 240A00E0 */  addiu      $t2, $zero, 0xE0
/* 10970 8000FD70 3C068008 */  lui        $a2, %hi(D_8008282C)
/* 10974 8000FD74 8F190004 */  lw         $t9, 0x4($t8)
/* 10978 8000FD78 24C6282C */  addiu      $a2, $a2, %lo(D_8008282C)
/* 1097C 8000FD7C 240D0064 */  addiu      $t5, $zero, 0x64
/* 10980 8000FD80 8729000A */  lh         $t1, 0xA($t9)
/* 10984 8000FD84 240E0001 */  addiu      $t6, $zero, 0x1
/* 10988 8000FD88 97A7001C */  lhu        $a3, 0x1C($sp)
/* 1098C 8000FD8C 0149001A */  div        $zero, $t2, $t1
/* 10990 8000FD90 15200002 */  bnez       $t1, .L8000FD9C
/* 10994 8000FD94 00000000 */   nop
/* 10998 8000FD98 0007000D */  break      7
.L8000FD9C:
/* 1099C 8000FD9C 2401FFFF */  addiu      $at, $zero, -0x1
/* 109A0 8000FDA0 15210004 */  bne        $t1, $at, .L8000FDB4
/* 109A4 8000FDA4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 109A8 8000FDA8 15410002 */  bne        $t2, $at, .L8000FDB4
/* 109AC 8000FDAC 00000000 */   nop
/* 109B0 8000FDB0 0006000D */  break      6
.L8000FDB4:
/* 109B4 8000FDB4 00005812 */  mflo       $t3
/* 109B8 8000FDB8 256C0001 */  addiu      $t4, $t3, 0x1
/* 109BC 8000FDBC 3C018008 */  lui        $at, %hi(D_80082814)
/* 109C0 8000FDC0 AC2C2814 */  sw         $t4, %lo(D_80082814)($at)
/* 109C4 8000FDC4 A0CD0000 */  sb         $t5, 0x0($a2)
/* 109C8 8000FDC8 3C018008 */  lui        $at, %hi(D_80082830)
/* 109CC 8000FDCC AC2E2830 */  sw         $t6, %lo(D_80082830)($at)
.L8000FDD0:
/* 109D0 8000FDD0 97AF001E */  lhu        $t7, 0x1E($sp)
/* 109D4 8000FDD4 3C028008 */  lui        $v0, %hi(D_80082818)
/* 109D8 8000FDD8 3C048008 */  lui        $a0, %hi(D_80082820)
/* 109DC 8000FDDC 3C068008 */  lui        $a2, %hi(D_8008282C)
/* 109E0 8000FDE0 3C088008 */  lui        $t0, %hi(D_8008281C)
/* 109E4 8000FDE4 3C058008 */  lui        $a1, %hi(D_80082828)
/* 109E8 8000FDE8 31F81000 */  andi       $t8, $t7, 0x1000
/* 109EC 8000FDEC 2508281C */  addiu      $t0, $t0, %lo(D_8008281C)
/* 109F0 8000FDF0 24C6282C */  addiu      $a2, $a2, %lo(D_8008282C)
/* 109F4 8000FDF4 24842820 */  addiu      $a0, $a0, %lo(D_80082820)
/* 109F8 8000FDF8 24422818 */  addiu      $v0, $v0, %lo(D_80082818)
/* 109FC 8000FDFC 13000004 */  beqz       $t8, .L8000FE10
/* 10A00 8000FE00 8CA52828 */   lw        $a1, %lo(D_80082828)($a1)
/* 10A04 8000FE04 8C590000 */  lw         $t9, 0x0($v0)
/* 10A08 8000FE08 3B2A0001 */  xori       $t2, $t9, 0x1
/* 10A0C 8000FE0C AC4A0000 */  sw         $t2, 0x0($v0)
.L8000FE10:
/* 10A10 8000FE10 8C490000 */  lw         $t1, 0x0($v0)
/* 10A14 8000FE14 30EB8000 */  andi       $t3, $a3, 0x8000
/* 10A18 8000FE18 3C014024 */  lui        $at, (0x40240000 >> 16)
/* 10A1C 8000FE1C 55200018 */  bnel       $t1, $zero, .L8000FE80
/* 10A20 8000FE20 C4840000 */   lwc1      $f4, 0x0($a0)
/* 10A24 8000FE24 11600006 */  beqz       $t3, .L8000FE40
/* 10A28 8000FE28 00E01825 */   or        $v1, $a3, $zero
/* 10A2C 8000FE2C 90C20000 */  lbu        $v0, 0x0($a2)
/* 10A30 8000FE30 28410078 */  slti       $at, $v0, 0x78
/* 10A34 8000FE34 10200002 */  beqz       $at, .L8000FE40
/* 10A38 8000FE38 244C0001 */   addiu     $t4, $v0, 0x1
/* 10A3C 8000FE3C A0CC0000 */  sb         $t4, 0x0($a2)
.L8000FE40:
/* 10A40 8000FE40 306D4000 */  andi       $t5, $v1, 0x4000
/* 10A44 8000FE44 11A00005 */  beqz       $t5, .L8000FE5C
/* 10A48 8000FE48 3C013FE0 */   lui       $at, (0x3FE00000 >> 16)
/* 10A4C 8000FE4C 90C20000 */  lbu        $v0, 0x0($a2)
/* 10A50 8000FE50 18400002 */  blez       $v0, .L8000FE5C
/* 10A54 8000FE54 244EFFFF */   addiu     $t6, $v0, -0x1
/* 10A58 8000FE58 A0CE0000 */  sb         $t6, 0x0($a2)
.L8000FE5C:
/* 10A5C 8000FE5C C4860000 */  lwc1       $f6, 0x0($a0)
/* 10A60 8000FE60 44815800 */  mtc1       $at, $f11
/* 10A64 8000FE64 44805000 */  mtc1       $zero, $f10
/* 10A68 8000FE68 46003221 */  cvt.d.s    $f8, $f6
/* 10A6C 8000FE6C 462A4401 */  sub.d      $f16, $f8, $f10
/* 10A70 8000FE70 462084A0 */  cvt.s.d    $f18, $f16
/* 10A74 8000FE74 10000008 */  b          .L8000FE98
/* 10A78 8000FE78 E4920000 */   swc1      $f18, 0x0($a0)
/* 10A7C 8000FE7C C4840000 */  lwc1       $f4, 0x0($a0)
.L8000FE80:
/* 10A80 8000FE80 44814800 */  mtc1       $at, $f9
/* 10A84 8000FE84 44804000 */  mtc1       $zero, $f8
/* 10A88 8000FE88 460021A1 */  cvt.d.s    $f6, $f4
/* 10A8C 8000FE8C 46283281 */  sub.d      $f10, $f6, $f8
/* 10A90 8000FE90 46205420 */  cvt.s.d    $f16, $f10
/* 10A94 8000FE94 E4900000 */  swc1       $f16, 0x0($a0)
.L8000FE98:
/* 10A98 8000FE98 8CAF0004 */  lw         $t7, 0x4($a1)
/* 10A9C 8000FE9C C4800000 */  lwc1       $f0, 0x0($a0)
/* 10AA0 8000FEA0 3C0E8008 */  lui        $t6, %hi(D_80082824)
/* 10AA4 8000FEA4 85F8000A */  lh         $t8, 0xA($t7)
/* 10AA8 8000FEA8 00003025 */  or         $a2, $zero, $zero
/* 10AAC 8000FEAC 24076E14 */  addiu      $a3, $zero, 0x6E14
/* 10AB0 8000FEB0 0018C823 */  negu       $t9, $t8
/* 10AB4 8000FEB4 44999000 */  mtc1       $t9, $f18
/* 10AB8 8000FEB8 00000000 */  nop
/* 10ABC 8000FEBC 46809120 */  cvt.s.w    $f4, $f18
/* 10AC0 8000FEC0 4604003C */  c.lt.s     $f0, $f4
/* 10AC4 8000FEC4 00000000 */  nop
/* 10AC8 8000FEC8 4502000C */  bc1fl      .L8000FEFC
/* 10ACC 8000FECC 8D0D0000 */   lw        $t5, 0x0($t0)
/* 10AD0 8000FED0 8D0A0000 */  lw         $t2, 0x0($t0)
/* 10AD4 8000FED4 25490001 */  addiu      $t1, $t2, 0x1
/* 10AD8 8000FED8 AD090000 */  sw         $t1, 0x0($t0)
/* 10ADC 8000FEDC 8CAB0004 */  lw         $t3, 0x4($a1)
/* 10AE0 8000FEE0 856C000A */  lh         $t4, 0xA($t3)
/* 10AE4 8000FEE4 448C3000 */  mtc1       $t4, $f6
/* 10AE8 8000FEE8 00000000 */  nop
/* 10AEC 8000FEEC 46803220 */  cvt.s.w    $f8, $f6
/* 10AF0 8000FEF0 46080280 */  add.s      $f10, $f0, $f8
/* 10AF4 8000FEF4 E48A0000 */  swc1       $f10, 0x0($a0)
/* 10AF8 8000FEF8 8D0D0000 */  lw         $t5, 0x0($t0)
.L8000FEFC:
/* 10AFC 8000FEFC 8DCE2824 */  lw         $t6, %lo(D_80082824)($t6)
/* 10B00 8000FF00 01AE082A */  slt        $at, $t5, $t6
/* 10B04 8000FF04 14200008 */  bnez       $at, .L8000FF28
/* 10B08 8000FF08 3C014000 */   lui       $at, (0x40000000 >> 16)
/* 10B0C 8000FF0C 44816000 */  mtc1       $at, $f12
/* 10B10 8000FF10 0C00122C */  jal        func_800048B0
/* 10B14 8000FF14 00002825 */   or        $a1, $zero, $zero
/* 10B18 8000FF18 10400003 */  beqz       $v0, .L8000FF28
/* 10B1C 8000FF1C 3C018008 */   lui       $at, %hi(D_80082830)
/* 10B20 8000FF20 0C009968 */  jal        func_800265A0
/* 10B24 8000FF24 AC202830 */   sw        $zero, %lo(D_80082830)($at)
.L8000FF28:
/* 10B28 8000FF28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10B2C 8000FF2C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 10B30 8000FF30 03E00008 */  jr         $ra
/* 10B34 8000FF34 00000000 */   nop

glabel func_8000FF38
/* 10B38 8000FF38 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 10B3C 8000FF3C AFBF0034 */  sw         $ra, 0x34($sp)
/* 10B40 8000FF40 AFB70030 */  sw         $s7, 0x30($sp)
/* 10B44 8000FF44 AFB6002C */  sw         $s6, 0x2C($sp)
/* 10B48 8000FF48 AFB50028 */  sw         $s5, 0x28($sp)
/* 10B4C 8000FF4C AFB40024 */  sw         $s4, 0x24($sp)
/* 10B50 8000FF50 AFB30020 */  sw         $s3, 0x20($sp)
/* 10B54 8000FF54 AFB2001C */  sw         $s2, 0x1C($sp)
/* 10B58 8000FF58 AFB10018 */  sw         $s1, 0x18($sp)
/* 10B5C 8000FF5C AFB00014 */  sw         $s0, 0x14($sp)
/* 10B60 8000FF60 AFA40080 */  sw         $a0, 0x80($sp)
/* 10B64 8000FF64 AFA50084 */  sw         $a1, 0x84($sp)
/* 10B68 8000FF68 AFA60088 */  sw         $a2, 0x88($sp)
/* 10B6C 8000FF6C AFA7008C */  sw         $a3, 0x8C($sp)
/* 10B70 8000FF70 8CAF0000 */  lw         $t7, 0x0($a1)
/* 10B74 8000FF74 3C19ED04 */  lui        $t9, (0xED040020 >> 16)
/* 10B78 8000FF78 3C0A004B */  lui        $t2, (0x4BC39C >> 16)
/* 10B7C 8000FF7C AFAF007C */  sw         $t7, 0x7C($sp)
/* 10B80 8000FF80 25F80008 */  addiu      $t8, $t7, 0x8
/* 10B84 8000FF84 AFB8007C */  sw         $t8, 0x7C($sp)
/* 10B88 8000FF88 354AC39C */  ori        $t2, $t2, (0x4BC39C & 0xFFFF)
/* 10B8C 8000FF8C 37390020 */  ori        $t9, $t9, (0xED040020 & 0xFFFF)
/* 10B90 8000FF90 ADF90000 */  sw         $t9, 0x0($t7)
/* 10B94 8000FF94 ADEA0004 */  sw         $t2, 0x4($t7)
/* 10B98 8000FF98 8FAB007C */  lw         $t3, 0x7C($sp)
/* 10B9C 8000FF9C 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 10BA0 8000FFA0 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
/* 10BA4 8000FFA4 256C0008 */  addiu      $t4, $t3, 0x8
/* 10BA8 8000FFA8 AFAC007C */  sw         $t4, 0x7C($sp)
/* 10BAC 8000FFAC AD600004 */  sw         $zero, 0x4($t3)
/* 10BB0 8000FFB0 AD6D0000 */  sw         $t5, 0x0($t3)
/* 10BB4 8000FFB4 8FAE007C */  lw         $t6, 0x7C($sp)
/* 10BB8 8000FFB8 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
/* 10BBC 8000FFBC 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
/* 10BC0 8000FFC0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 10BC4 8000FFC4 AFAF007C */  sw         $t7, 0x7C($sp)
/* 10BC8 8000FFC8 ADC00004 */  sw         $zero, 0x4($t6)
/* 10BCC 8000FFCC ADD80000 */  sw         $t8, 0x0($t6)
/* 10BD0 8000FFD0 8FB9007C */  lw         $t9, 0x7C($sp)
/* 10BD4 8000FFD4 3C0C0C08 */  lui        $t4, (0xC084000 >> 16)
/* 10BD8 8000FFD8 358C4000 */  ori        $t4, $t4, (0xC084000 & 0xFFFF)
/* 10BDC 8000FFDC 272A0008 */  addiu      $t2, $t9, 0x8
/* 10BE0 8000FFE0 AFAA007C */  sw         $t2, 0x7C($sp)
/* 10BE4 8000FFE4 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
/* 10BE8 8000FFE8 240500E6 */  addiu      $a1, $zero, 0xE6
/* 10BEC 8000FFEC 240700FF */  addiu      $a3, $zero, 0xFF
/* 10BF0 8000FFF0 240600E6 */  addiu      $a2, $zero, 0xE6
/* 10BF4 8000FFF4 240400FF */  addiu      $a0, $zero, 0xFF
/* 10BF8 8000FFF8 AF2B0000 */  sw         $t3, 0x0($t9)
/* 10BFC 8000FFFC 0C007DD7 */  jal        func_8001F75C
/* 10C00 80010000 AF2C0004 */   sw        $t4, 0x4($t9)
/* 10C04 80010004 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 10C08 80010008 44816800 */  mtc1       $at, $f13
/* 10C0C 8001000C 44806000 */  mtc1       $zero, $f12
/* 10C10 80010010 0C007DC0 */  jal        func_8001F700
/* 10C14 80010014 46206386 */   mov.d     $f14, $f12
/* 10C18 80010018 3C138008 */  lui        $s3, %hi(D_80082828)
/* 10C1C 8001001C 26732828 */  addiu      $s3, $s3, %lo(D_80082828)
/* 10C20 80010020 8E6D0000 */  lw         $t5, 0x0($s3)
/* 10C24 80010024 3C168008 */  lui        $s6, %hi(D_80082820)
/* 10C28 80010028 26D62820 */  addiu      $s6, $s6, %lo(D_80082820)
/* 10C2C 8001002C 8DAE0004 */  lw         $t6, 0x4($t5)
/* 10C30 80010030 3C01436E */  lui        $at, (0x436E0000 >> 16)
/* 10C34 80010034 44812000 */  mtc1       $at, $f4
/* 10C38 80010038 85CF000A */  lh         $t7, 0xA($t6)
/* 10C3C 8001003C C6C60000 */  lwc1       $f6, 0x0($s6)
/* 10C40 80010040 3C108008 */  lui        $s0, %hi(D_8008281C)
/* 10C44 80010044 448F5000 */  mtc1       $t7, $f10
/* 10C48 80010048 46062201 */  sub.s      $f8, $f4, $f6
/* 10C4C 8001004C 3C148008 */  lui        $s4, %hi(D_80082824)
/* 10C50 80010050 8E10281C */  lw         $s0, %lo(D_8008281C)($s0)
/* 10C54 80010054 46805420 */  cvt.s.w    $f16, $f10
/* 10C58 80010058 26942824 */  addiu      $s4, $s4, %lo(D_80082824)
/* 10C5C 8001005C 00008825 */  or         $s1, $zero, $zero
/* 10C60 80010060 27B7007C */  addiu      $s7, $sp, 0x7C
/* 10C64 80010064 46104483 */  div.s      $f18, $f8, $f16
/* 10C68 80010068 4600910D */  trunc.w.s  $f4, $f18
/* 10C6C 8001006C 44152000 */  mfc1       $s5, $f4
/* 10C70 80010070 00000000 */  nop
/* 10C74 80010074 1AA0001F */  blez       $s5, .L800100F4
/* 10C78 80010078 00000000 */   nop
.L8001007C:
/* 10C7C 8001007C 8E990000 */  lw         $t9, 0x0($s4)
/* 10C80 80010080 0219082A */  slt        $at, $s0, $t9
/* 10C84 80010084 1020001B */  beqz       $at, .L800100F4
/* 10C88 80010088 00000000 */   nop
/* 10C8C 8001008C 8E6A0000 */  lw         $t2, 0x0($s3)
/* 10C90 80010090 C6C80000 */  lwc1       $f8, 0x0($s6)
/* 10C94 80010094 3C188008 */  lui        $t8, %hi(D_800821F0)
/* 10C98 80010098 8D4B0004 */  lw         $t3, 0x4($t2)
/* 10C9C 8001009C 271821F0 */  addiu      $t8, $t8, %lo(D_800821F0)
/* 10CA0 800100A0 00107880 */  sll        $t7, $s0, 2
/* 10CA4 800100A4 856C000A */  lh         $t4, 0xA($t3)
/* 10CA8 800100A8 01F89021 */  addu       $s2, $t7, $t8
/* 10CAC 800100AC 24040013 */  addiu      $a0, $zero, 0x13
/* 10CB0 800100B0 01910019 */  multu      $t4, $s1
/* 10CB4 800100B4 00006812 */  mflo       $t5
/* 10CB8 800100B8 448D3000 */  mtc1       $t5, $f6
/* 10CBC 800100BC 00000000 */  nop
/* 10CC0 800100C0 468032A0 */  cvt.s.w    $f10, $f6
/* 10CC4 800100C4 46085400 */  add.s      $f16, $f10, $f8
/* 10CC8 800100C8 4600848D */  trunc.w.s  $f18, $f16
/* 10CCC 800100CC 44059000 */  mfc1       $a1, $f18
/* 10CD0 800100D0 0C007DAD */  jal        osSetTime
/* 10CD4 800100D4 00000000 */   nop
/* 10CD8 800100D8 02E02025 */  or         $a0, $s7, $zero
/* 10CDC 800100DC 8E450000 */  lw         $a1, 0x0($s2)
/* 10CE0 800100E0 0C007DE4 */  jal        func_8001F790
/* 10CE4 800100E4 8E660000 */   lw        $a2, 0x0($s3)
/* 10CE8 800100E8 26310001 */  addiu      $s1, $s1, 0x1
/* 10CEC 800100EC 1635FFE3 */  bne        $s1, $s5, .L8001007C
/* 10CF0 800100F0 26100001 */   addiu     $s0, $s0, 0x1
.L800100F4:
/* 10CF4 800100F4 3C198008 */  lui        $t9, %hi(D_80082818)
/* 10CF8 800100F8 8F392818 */  lw         $t9, %lo(D_80082818)($t9)
/* 10CFC 800100FC 27B7007C */  addiu      $s7, $sp, 0x7C
/* 10D00 80010100 57200009 */  bnel       $t9, $zero, .L80010128
/* 10D04 80010104 8FAA007C */   lw        $t2, 0x7C($sp)
/* 10D08 80010108 0C007A29 */  jal        func_8001E8A4
/* 10D0C 8001010C 00000000 */   nop
/* 10D10 80010110 3C068008 */  lui        $a2, %hi(D_8008282C)
/* 10D14 80010114 90C6282C */  lbu        $a2, %lo(D_8008282C)($a2)
/* 10D18 80010118 02E02025 */  or         $a0, $s7, $zero
/* 10D1C 8001011C 0C008E4C */  jal        func_80023930
/* 10D20 80010120 00402825 */   or        $a1, $v0, $zero
/* 10D24 80010124 8FAA007C */  lw         $t2, 0x7C($sp)
.L80010128:
/* 10D28 80010128 8FAB0084 */  lw         $t3, 0x84($sp)
/* 10D2C 8001012C AD6A0000 */  sw         $t2, 0x0($t3)
/* 10D30 80010130 8FBF0034 */  lw         $ra, 0x34($sp)
/* 10D34 80010134 8FB70030 */  lw         $s7, 0x30($sp)
/* 10D38 80010138 8FB6002C */  lw         $s6, 0x2C($sp)
/* 10D3C 8001013C 8FB50028 */  lw         $s5, 0x28($sp)
/* 10D40 80010140 8FB40024 */  lw         $s4, 0x24($sp)
/* 10D44 80010144 8FB30020 */  lw         $s3, 0x20($sp)
/* 10D48 80010148 8FB2001C */  lw         $s2, 0x1C($sp)
/* 10D4C 8001014C 8FB10018 */  lw         $s1, 0x18($sp)
/* 10D50 80010150 8FB00014 */  lw         $s0, 0x14($sp)
/* 10D54 80010154 03E00008 */  jr         $ra
/* 10D58 80010158 27BD0080 */   addiu     $sp, $sp, 0x80
/* 10D5C 8001015C 00000000 */  nop
