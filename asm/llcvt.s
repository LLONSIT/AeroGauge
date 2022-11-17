.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006C890
/* 6D490 8006C890 46206109 */  trunc.l.d  $f4, $f12
/* 6D494 8006C894 44222000 */  dmfc1      $v0, $f4
/* 6D498 8006C898 00000000 */  nop
/* 6D49C 8006C89C 0002183C */  dsll32     $v1, $v0, 0
/* 6D4A0 8006C8A0 0003183F */  dsra32     $v1, $v1, 0
/* 6D4A4 8006C8A4 03E00008 */  jr         $ra
/* 6D4A8 8006C8A8 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C8AC
/* 6D4AC 8006C8AC 46006109 */  trunc.l.s  $f4, $f12
/* 6D4B0 8006C8B0 44222000 */  dmfc1      $v0, $f4
/* 6D4B4 8006C8B4 00000000 */  nop
/* 6D4B8 8006C8B8 0002183C */  dsll32     $v1, $v0, 0
/* 6D4BC 8006C8BC 0003183F */  dsra32     $v1, $v1, 0
/* 6D4C0 8006C8C0 03E00008 */  jr         $ra
/* 6D4C4 8006C8C4 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C8C8
/* 6D4C8 8006C8C8 444EF800 */  cfc1       $t6, $31
/* 6D4CC 8006C8CC 24020001 */  addiu      $v0, $zero, 0x1
/* 6D4D0 8006C8D0 44C2F800 */  ctc1       $v0, $31
/* 6D4D4 8006C8D4 00000000 */  nop
/* 6D4D8 8006C8D8 46206125 */  cvt.l.d    $f4, $f12
/* 6D4DC 8006C8DC 4442F800 */  cfc1       $v0, $31
/* 6D4E0 8006C8E0 00000000 */  nop
/* 6D4E4 8006C8E4 30410004 */  andi       $at, $v0, 0x4
/* 6D4E8 8006C8E8 30420078 */  andi       $v0, $v0, 0x78
/* 6D4EC 8006C8EC 10400015 */  beqz       $v0, .L8006C944
/* 6D4F0 8006C8F0 3C0143E0 */   lui       $at, (0x43E00000 >> 16)
/* 6D4F4 8006C8F4 44812800 */  mtc1       $at, $f5
/* 6D4F8 8006C8F8 44802000 */  mtc1       $zero, $f4
/* 6D4FC 8006C8FC 24020001 */  addiu      $v0, $zero, 0x1
/* 6D500 8006C900 46246101 */  sub.d      $f4, $f12, $f4
/* 6D504 8006C904 44C2F800 */  ctc1       $v0, $31
/* 6D508 8006C908 00000000 */  nop
/* 6D50C 8006C90C 46202125 */  cvt.l.d    $f4, $f4
/* 6D510 8006C910 4442F800 */  cfc1       $v0, $31
/* 6D514 8006C914 00000000 */  nop
/* 6D518 8006C918 30410004 */  andi       $at, $v0, 0x4
/* 6D51C 8006C91C 30420078 */  andi       $v0, $v0, 0x78
/* 6D520 8006C920 14400006 */  bnez       $v0, .L8006C93C
/* 6D524 8006C924 00000000 */   nop
/* 6D528 8006C928 3C0F800A */  lui        $t7, %hi(D_80098D30)
/* 6D52C 8006C92C DDEF8D30 */  ld         $t7, %lo(D_80098D30)($t7)
/* 6D530 8006C930 44222000 */  dmfc1      $v0, $f4
/* 6D534 8006C934 10000007 */  b          .L8006C954
/* 6D538 8006C938 004F1025 */   or        $v0, $v0, $t7
.L8006C93C:
/* 6D53C 8006C93C 10000005 */  b          .L8006C954
/* 6D540 8006C940 2402FFFF */   addiu     $v0, $zero, -0x1
.L8006C944:
/* 6D544 8006C944 44222000 */  dmfc1      $v0, $f4
/* 6D548 8006C948 00000000 */  nop
/* 6D54C 8006C94C 0440FFFB */  bltz       $v0, .L8006C93C
/* 6D550 8006C950 00000000 */   nop
.L8006C954:
/* 6D554 8006C954 44CEF800 */  ctc1       $t6, $31
/* 6D558 8006C958 0002183C */  dsll32     $v1, $v0, 0
/* 6D55C 8006C95C 0003183F */  dsra32     $v1, $v1, 0
/* 6D560 8006C960 03E00008 */  jr         $ra
/* 6D564 8006C964 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006C968
/* 6D568 8006C968 444EF800 */  cfc1       $t6, $31
/* 6D56C 8006C96C 24020001 */  addiu      $v0, $zero, 0x1
/* 6D570 8006C970 44C2F800 */  ctc1       $v0, $31
/* 6D574 8006C974 00000000 */  nop
/* 6D578 8006C978 46006125 */  cvt.l.s    $f4, $f12
/* 6D57C 8006C97C 4442F800 */  cfc1       $v0, $31
/* 6D580 8006C980 00000000 */  nop
/* 6D584 8006C984 30410004 */  andi       $at, $v0, 0x4
/* 6D588 8006C988 30420078 */  andi       $v0, $v0, 0x78
/* 6D58C 8006C98C 10400014 */  beqz       $v0, .L8006C9E0
/* 6D590 8006C990 3C015F00 */   lui       $at, (0x5F000000 >> 16)
/* 6D594 8006C994 44812000 */  mtc1       $at, $f4
/* 6D598 8006C998 24020001 */  addiu      $v0, $zero, 0x1
/* 6D59C 8006C99C 46046101 */  sub.s      $f4, $f12, $f4
/* 6D5A0 8006C9A0 44C2F800 */  ctc1       $v0, $31
/* 6D5A4 8006C9A4 00000000 */  nop
/* 6D5A8 8006C9A8 46002125 */  cvt.l.s    $f4, $f4
/* 6D5AC 8006C9AC 4442F800 */  cfc1       $v0, $31
/* 6D5B0 8006C9B0 00000000 */  nop
/* 6D5B4 8006C9B4 30410004 */  andi       $at, $v0, 0x4
/* 6D5B8 8006C9B8 30420078 */  andi       $v0, $v0, 0x78
/* 6D5BC 8006C9BC 14400006 */  bnez       $v0, .L8006C9D8
/* 6D5C0 8006C9C0 00000000 */   nop
/* 6D5C4 8006C9C4 3C0F800A */  lui        $t7, %hi(D_80098D38)
/* 6D5C8 8006C9C8 DDEF8D38 */  ld         $t7, %lo(D_80098D38)($t7)
/* 6D5CC 8006C9CC 44222000 */  dmfc1      $v0, $f4
/* 6D5D0 8006C9D0 10000007 */  b          .L8006C9F0
/* 6D5D4 8006C9D4 004F1025 */   or        $v0, $v0, $t7
.L8006C9D8:
/* 6D5D8 8006C9D8 10000005 */  b          .L8006C9F0
/* 6D5DC 8006C9DC 2402FFFF */   addiu     $v0, $zero, -0x1
.L8006C9E0:
/* 6D5E0 8006C9E0 44222000 */  dmfc1      $v0, $f4
/* 6D5E4 8006C9E4 00000000 */  nop
/* 6D5E8 8006C9E8 0440FFFB */  bltz       $v0, .L8006C9D8
/* 6D5EC 8006C9EC 00000000 */   nop
.L8006C9F0:
/* 6D5F0 8006C9F0 44CEF800 */  ctc1       $t6, $31
/* 6D5F4 8006C9F4 0002183C */  dsll32     $v1, $v0, 0
/* 6D5F8 8006C9F8 0003183F */  dsra32     $v1, $v1, 0
/* 6D5FC 8006C9FC 03E00008 */  jr         $ra
/* 6D600 8006CA00 0002103F */   dsra32    $v0, $v0, 0

glabel func_8006CA04
/* 6D604 8006CA04 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D608 8006CA08 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D60C 8006CA0C DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D610 8006CA10 44AE2000 */  dmtc1      $t6, $f4
/* 6D614 8006CA14 03E00008 */  jr         $ra
/* 6D618 8006CA18 46A02021 */   cvt.d.l   $f0, $f4

glabel func_8006CA1C
/* 6D61C 8006CA1C AFA40000 */  sw         $a0, 0x0($sp)
/* 6D620 8006CA20 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D624 8006CA24 DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D628 8006CA28 44AE2000 */  dmtc1      $t6, $f4
/* 6D62C 8006CA2C 03E00008 */  jr         $ra
/* 6D630 8006CA30 46A02020 */   cvt.s.l   $f0, $f4

glabel func_8006CA34
/* 6D634 8006CA34 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D638 8006CA38 AFA50004 */  sw         $a1, 0x4($sp)
/* 6D63C 8006CA3C DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D640 8006CA40 44AE2000 */  dmtc1      $t6, $f4
/* 6D644 8006CA44 05C10006 */  bgez       $t6, .L8006CA60
/* 6D648 8006CA48 46A02021 */   cvt.d.l   $f0, $f4
/* 6D64C 8006CA4C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 6D650 8006CA50 44813800 */  mtc1       $at, $f7
/* 6D654 8006CA54 44803000 */  mtc1       $zero, $f6
/* 6D658 8006CA58 00000000 */  nop
/* 6D65C 8006CA5C 46260000 */  add.d      $f0, $f0, $f6
.L8006CA60:
/* 6D660 8006CA60 03E00008 */  jr         $ra
/* 6D664 8006CA64 00000000 */   nop

glabel func_8006CA68
/* 6D668 8006CA68 AFA40000 */  sw         $a0, 0x0($sp)
/* 6D66C 8006CA6C AFA50004 */  sw         $a1, 0x4($sp)
/* 6D670 8006CA70 DFAE0000 */  ld         $t6, 0x0($sp)
/* 6D674 8006CA74 44AE2000 */  dmtc1      $t6, $f4
/* 6D678 8006CA78 05C10005 */  bgez       $t6, .L8006CA90
/* 6D67C 8006CA7C 46A02020 */   cvt.s.l   $f0, $f4
/* 6D680 8006CA80 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 6D684 8006CA84 44813000 */  mtc1       $at, $f6
/* 6D688 8006CA88 00000000 */  nop
/* 6D68C 8006CA8C 46060000 */  add.s      $f0, $f0, $f6
.L8006CA90:
/* 6D690 8006CA90 03E00008 */  jr         $ra
/* 6D694 8006CA94 00000000 */   nop
/* 6D698 8006CA98 00000000 */  nop
/* 6D69C 8006CA9C 00000000 */  nop
