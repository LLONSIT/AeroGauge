.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osAiGetLength
/* 68BE0 80067FE0 3C0EA450 */  lui        $t6, %hi(D_A4500004)
/* 68BE4 80067FE4 03E00008 */  jr         $ra
/* 68BE8 80067FE8 8DC20004 */   lw        $v0, %lo(D_A4500004)($t6)
/* 68BEC 80067FEC 00000000 */  nop
