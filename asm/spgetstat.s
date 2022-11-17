.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80078350
/* 78F50 80078350 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 78F54 80078354 03E00008 */  jr         $ra
/* 78F58 80078358 8DC20010 */   lw        $v0, %lo(D_A4040010)($t6)
/* 78F5C 8007835C 00000000 */  nop
