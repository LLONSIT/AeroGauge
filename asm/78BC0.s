.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80077FC0
/* 78BC0 80077FC0 3C028009 */  lui        $v0, %hi(D_80094C50)
/* 78BC4 80077FC4 03E00008 */  jr         $ra
/* 78BC8 80077FC8 8C424C50 */   lw        $v0, %lo(D_80094C50)($v0)
/* 78BCC 80077FCC 00000000 */  nop
