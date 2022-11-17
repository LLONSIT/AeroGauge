.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80065B00
/* 66700 80065B00 24030010 */  addiu      $v1, $zero, 0x10
/* 66704 80065B04 30AE000F */  andi       $t6, $a1, 0xF
/* 66708 80065B08 006E1023 */  subu       $v0, $v1, $t6
/* 6670C 80065B0C 10620003 */  beq        $v1, $v0, .L80065B1C
/* 66710 80065B10 00A27821 */   addu      $t7, $a1, $v0
/* 66714 80065B14 10000002 */  b          .L80065B20
/* 66718 80065B18 AC8F0000 */   sw        $t7, 0x0($a0)
.L80065B1C:
/* 6671C 80065B1C AC850000 */  sw         $a1, 0x0($a0)
.L80065B20:
/* 66720 80065B20 8C980000 */  lw         $t8, 0x0($a0)
/* 66724 80065B24 AC860008 */  sw         $a2, 0x8($a0)
/* 66728 80065B28 AC80000C */  sw         $zero, 0xC($a0)
/* 6672C 80065B2C 03E00008 */  jr         $ra
/* 66730 80065B30 AC980004 */   sw        $t8, 0x4($a0)
/* 66734 80065B34 00000000 */  nop
/* 66738 80065B38 00000000 */  nop
/* 6673C 80065B3C 00000000 */  nop
