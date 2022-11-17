.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_8007B830
/* 7C430 8007B830 40845800 */  mtc0       $a0, $11
/* 7C434 8007B834 03E00008 */  jr         $ra
/* 7C438 8007B838 00000000 */   nop
/* 7C43C 8007B83C 00000000 */  nop
