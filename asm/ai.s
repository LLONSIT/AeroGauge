.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osAiDeviceBusy
/* 71FB0 800713B0 3C0EA450 */  lui        $t6, %hi(D_A450000C)
/* 71FB4 800713B4 8DC4000C */  lw         $a0, %lo(D_A450000C)($t6)
/* 71FB8 800713B8 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 71FBC 800713BC 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 71FC0 800713C0 00817824 */  and        $t7, $a0, $at
/* 71FC4 800713C4 11E00003 */  beqz       $t7, .L800713D4
/* 71FC8 800713C8 00000000 */   nop
/* 71FCC 800713CC 10000002 */  b          .L800713D8
/* 71FD0 800713D0 24020001 */   addiu     $v0, $zero, 0x1
.L800713D4:
/* 71FD4 800713D4 00001025 */  or         $v0, $zero, $zero
.L800713D8:
/* 71FD8 800713D8 03E00008 */  jr         $ra
/* 71FDC 800713DC 27BD0008 */   addiu     $sp, $sp, 0x8
