.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_80065E60
/* 66A60 80065E60 18A0001F */  blez       $a1, .L80065EE0
/* 66A64 80065E64 00000000 */   nop
/* 66A68 80065E68 240B2000 */  addiu      $t3, $zero, 0x2000
/* 66A6C 80065E6C 00AB082B */  sltu       $at, $a1, $t3
/* 66A70 80065E70 1020001D */  beqz       $at, .L80065EE8
/* 66A74 80065E74 00000000 */   nop
/* 66A78 80065E78 00804025 */  or         $t0, $a0, $zero
/* 66A7C 80065E7C 00854821 */  addu       $t1, $a0, $a1
/* 66A80 80065E80 0109082B */  sltu       $at, $t0, $t1
/* 66A84 80065E84 10200016 */  beqz       $at, .L80065EE0
/* 66A88 80065E88 00000000 */   nop
/* 66A8C 80065E8C 310A000F */  andi       $t2, $t0, 0xF
/* 66A90 80065E90 11400007 */  beqz       $t2, .L80065EB0
/* 66A94 80065E94 2529FFF0 */   addiu     $t1, $t1, -0x10
/* 66A98 80065E98 010A4023 */  subu       $t0, $t0, $t2
/* 66A9C 80065E9C BD150000 */  cache      0x15, 0x0($t0)
/* 66AA0 80065EA0 0109082B */  sltu       $at, $t0, $t1
/* 66AA4 80065EA4 1020000E */  beqz       $at, .L80065EE0
/* 66AA8 80065EA8 00000000 */   nop
/* 66AAC 80065EAC 25080010 */  addiu      $t0, $t0, 0x10
.L80065EB0:
/* 66AB0 80065EB0 312A000F */  andi       $t2, $t1, 0xF
/* 66AB4 80065EB4 11400006 */  beqz       $t2, .L80065ED0
/* 66AB8 80065EB8 00000000 */   nop
/* 66ABC 80065EBC 012A4823 */  subu       $t1, $t1, $t2
/* 66AC0 80065EC0 BD350010 */  cache      0x15, 0x10($t1)
/* 66AC4 80065EC4 0128082B */  sltu       $at, $t1, $t0
/* 66AC8 80065EC8 14200005 */  bnez       $at, .L80065EE0
/* 66ACC 80065ECC 00000000 */   nop
.L80065ED0:
/* 66AD0 80065ED0 BD110000 */  cache      0x11, 0x0($t0)
/* 66AD4 80065ED4 0109082B */  sltu       $at, $t0, $t1
/* 66AD8 80065ED8 1420FFFD */  bnez       $at, .L80065ED0
/* 66ADC 80065EDC 25080010 */   addiu     $t0, $t0, 0x10
.L80065EE0:
/* 66AE0 80065EE0 03E00008 */  jr         $ra
/* 66AE4 80065EE4 00000000 */   nop
.L80065EE8:
/* 66AE8 80065EE8 3C088000 */  lui        $t0, 0x8000
/* 66AEC 80065EEC 010B4821 */  addu       $t1, $t0, $t3
/* 66AF0 80065EF0 2529FFF0 */  addiu      $t1, $t1, -0x10
.L80065EF4:
/* 66AF4 80065EF4 BD010000 */  cache      0x01, 0x0($t0)
/* 66AF8 80065EF8 0109082B */  sltu       $at, $t0, $t1
/* 66AFC 80065EFC 1420FFFD */  bnez       $at, .L80065EF4
/* 66B00 80065F00 25080010 */   addiu     $t0, $t0, 0x10
/* 66B04 80065F04 03E00008 */  jr         $ra
/* 66B08 80065F08 00000000 */   nop
/* 66B0C 80065F0C 00000000 */  nop
