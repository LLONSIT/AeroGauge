.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800259C0
/* 265C0 800259C0 90830000 */  lbu        $v1, 0x0($a0)
/* 265C4 800259C4 90A60000 */  lbu        $a2, 0x0($a1)
/* 265C8 800259C8 5466000C */  bnel       $v1, $a2, .L800259FC
/* 265CC 800259CC 00661023 */   subu      $v0, $v1, $a2
.L800259D0:
/* 265D0 800259D0 54600004 */  bnel       $v1, $zero, .L800259E4
/* 265D4 800259D4 90830001 */   lbu       $v1, 0x1($a0)
/* 265D8 800259D8 03E00008 */  jr         $ra
/* 265DC 800259DC 00001025 */   or        $v0, $zero, $zero
/* 265E0 800259E0 90830001 */  lbu        $v1, 0x1($a0)
.L800259E4:
/* 265E4 800259E4 90A60001 */  lbu        $a2, 0x1($a1)
/* 265E8 800259E8 24840001 */  addiu      $a0, $a0, 0x1
/* 265EC 800259EC 24A50001 */  addiu      $a1, $a1, 0x1
/* 265F0 800259F0 1066FFF7 */  beq        $v1, $a2, .L800259D0
/* 265F4 800259F4 00000000 */   nop
/* 265F8 800259F8 00661023 */  subu       $v0, $v1, $a2
.L800259FC:
/* 265FC 800259FC 03E00008 */  jr         $ra
/* 26600 80025A00 00000000 */   nop
/* 26604 80025A04 00000000 */  nop
/* 26608 80025A08 00000000 */  nop
/* 2660C 80025A0C 00000000 */  nop
