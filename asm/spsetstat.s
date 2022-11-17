.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800786F0
/* 792F0 800786F0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 792F4 800786F4 03E00008 */  jr         $ra
/* 792F8 800786F8 ADC40010 */   sw        $a0, %lo(D_A4040010)($t6)
/* 792FC 800786FC 00000000 */  nop
