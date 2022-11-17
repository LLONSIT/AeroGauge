.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSynDelete
/* 71E40 80071240 03E00008 */  jr         $ra
/* 71E44 80071244 AC800000 */   sw        $zero, 0x0($a0)
/* 71E48 80071248 00000000 */  nop
/* 71E4C 8007124C 00000000 */  nop
