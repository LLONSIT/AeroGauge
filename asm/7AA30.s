.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80079E30
/* 7AA30 80079E30 AC800000 */  sw         $zero, 0x0($a0)
/* 7AA34 80079E34 AC850004 */  sw         $a1, 0x4($a0)
/* 7AA38 80079E38 AC860008 */  sw         $a2, 0x8($a0)
/* 7AA3C 80079E3C A480000C */  sh         $zero, 0xC($a0)
/* 7AA40 80079E40 A480000E */  sh         $zero, 0xE($a0)
/* 7AA44 80079E44 03E00008 */  jr         $ra
/* 7AA48 80079E48 AC870010 */   sw        $a3, 0x10($a0)
/* 7AA4C 80079E4C 00000000 */  nop
