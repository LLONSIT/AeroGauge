.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel __osSetSR
/* 79430 80078830 40846000 */  mtc0       $a0, $12
/* 79434 80078834 00000000 */  nop
/* 79438 80078838 03E00008 */  jr         $ra
/* 7943C 8007883C 00000000 */   nop
