.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel osGetCount
/* 77910 80076D10 40024800 */  mfc0       $v0, $9
/* 77914 80076D14 03E00008 */  jr         $ra
/* 77918 80076D18 00000000 */   nop
/* 7791C 80076D1C 00000000 */  nop
