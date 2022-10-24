.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80018E90
/* 19A90 80018E90 AFA40000 */  sw         $a0, 0x0($sp)
/* 19A94 80018E94 03E00008 */  jr         $ra
/* 19A98 80018E98 AFA50004 */   sw        $a1, 0x4($sp)
/* 19A9C 80018E9C 00000000 */  nop
