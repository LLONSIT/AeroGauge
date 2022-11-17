.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80078850
/* 79450 80078850 4442F800 */  cfc1       $v0, $31
/* 79454 80078854 44C4F800 */  ctc1       $a0, $31
/* 79458 80078858 03E00008 */  jr         $ra
/* 7945C 8007885C 00000000 */   nop
