.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osCreateMesgQueue
/* 66A30 80065E30 3C0E8009 */  lui        $t6, %hi(D_80094870)
/* 66A34 80065E34 3C0F8009 */  lui        $t7, %hi(D_80094870)
/* 66A38 80065E38 25CE4870 */  addiu      $t6, $t6, %lo(D_80094870)
/* 66A3C 80065E3C 25EF4870 */  addiu      $t7, $t7, %lo(D_80094870)
/* 66A40 80065E40 AC8E0000 */  sw         $t6, 0x0($a0)
/* 66A44 80065E44 AC8F0004 */  sw         $t7, 0x4($a0)
/* 66A48 80065E48 AC800008 */  sw         $zero, 0x8($a0)
/* 66A4C 80065E4C AC80000C */  sw         $zero, 0xC($a0)
/* 66A50 80065E50 AC860010 */  sw         $a2, 0x10($a0)
/* 66A54 80065E54 03E00008 */  jr         $ra
/* 66A58 80065E58 AC850014 */   sw        $a1, 0x14($a0)
/* 66A5C 80065E5C 00000000 */  nop
