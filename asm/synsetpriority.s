.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80074010
/* 74C10 80074010 AFA40000 */  sw         $a0, 0x0($sp)
/* 74C14 80074014 AFA60008 */  sw         $a2, 0x8($sp)
/* 74C18 80074018 03E00008 */  jr         $ra
/* 74C1C 8007401C A4A60016 */   sh        $a2, 0x16($a1)
