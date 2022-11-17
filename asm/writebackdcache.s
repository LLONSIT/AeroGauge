.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_80078670
/* 79270 80078670 18A00011 */  blez       $a1, .L800786B8
/* 79274 80078674 00000000 */   nop
/* 79278 80078678 240B2000 */  addiu      $t3, $zero, 0x2000
/* 7927C 8007867C 00AB082B */  sltu       $at, $a1, $t3
/* 79280 80078680 1020000F */  beqz       $at, .L800786C0
/* 79284 80078684 00000000 */   nop
/* 79288 80078688 00804025 */  or         $t0, $a0, $zero
/* 7928C 8007868C 00854821 */  addu       $t1, $a0, $a1
/* 79290 80078690 0109082B */  sltu       $at, $t0, $t1
/* 79294 80078694 10200008 */  beqz       $at, .L800786B8
/* 79298 80078698 00000000 */   nop
/* 7929C 8007869C 310A000F */  andi       $t2, $t0, 0xF
/* 792A0 800786A0 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 792A4 800786A4 010A4023 */  subu       $t0, $t0, $t2
.L800786A8:
/* 792A8 800786A8 BD190000 */  cache      0x19, 0x0($t0)
/* 792AC 800786AC 0109082B */  sltu       $at, $t0, $t1
/* 792B0 800786B0 1420FFFD */  bnez       $at, .L800786A8
/* 792B4 800786B4 25080010 */   addiu     $t0, $t0, 0x10
.L800786B8:
/* 792B8 800786B8 03E00008 */  jr         $ra
/* 792BC 800786BC 00000000 */   nop
.L800786C0:
/* 792C0 800786C0 3C088000 */  lui        $t0, 0x8000
/* 792C4 800786C4 010B4821 */  addu       $t1, $t0, $t3
/* 792C8 800786C8 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800786CC:
/* 792CC 800786CC BD010000 */  cache      0x01, 0x0($t0)
/* 792D0 800786D0 0109082B */  sltu       $at, $t0, $t1
/* 792D4 800786D4 1420FFFD */  bnez       $at, .L800786CC
/* 792D8 800786D8 25080010 */   addiu     $t0, $t0, 0x10
/* 792DC 800786DC 03E00008 */  jr         $ra
/* 792E0 800786E0 00000000 */   nop
/* 792E4 800786E4 00000000 */  nop
/* 792E8 800786E8 00000000 */  nop
/* 792EC 800786EC 00000000 */  nop
