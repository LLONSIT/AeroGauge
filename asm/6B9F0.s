.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel sqrtf
/* 6B9F0 8006ADF0 03E00008 */  jr         $ra
/* 6B9F4 8006ADF4 46006004 */   sqrt.s    $f0, $f12
/* 6B9F8 8006ADF8 00000000 */  nop
/* 6B9FC 8006ADFC 00000000 */  nop
