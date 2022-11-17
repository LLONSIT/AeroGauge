.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alHeapDBAlloc
/* 66740 80065B40 8FAE0010 */  lw         $t6, 0x10($sp)
/* 66744 80065B44 AFA40000 */  sw         $a0, 0x0($sp)
/* 66748 80065B48 AFA50004 */  sw         $a1, 0x4($sp)
/* 6674C 80065B4C 00EE0019 */  multu      $a3, $t6
/* 66750 80065B50 8CD90008 */  lw         $t9, 0x8($a2)
/* 66754 80065B54 8CD80000 */  lw         $t8, 0x0($a2)
/* 66758 80065B58 8CC40004 */  lw         $a0, 0x4($a2)
/* 6675C 80065B5C 2401FFF0 */  addiu      $at, $zero, -0x10
/* 66760 80065B60 03194021 */  addu       $t0, $t8, $t9
/* 66764 80065B64 00001825 */  or         $v1, $zero, $zero
/* 66768 80065B68 00001012 */  mflo       $v0
/* 6676C 80065B6C 2442000F */  addiu      $v0, $v0, 0xF
/* 66770 80065B70 00417824 */  and        $t7, $v0, $at
/* 66774 80065B74 008F4821 */  addu       $t1, $a0, $t7
/* 66778 80065B78 0109082B */  sltu       $at, $t0, $t1
/* 6677C 80065B7C 14200003 */  bnez       $at, .L80065B8C
/* 66780 80065B80 008F5021 */   addu      $t2, $a0, $t7
/* 66784 80065B84 00801825 */  or         $v1, $a0, $zero
/* 66788 80065B88 ACCA0004 */  sw         $t2, 0x4($a2)
.L80065B8C:
/* 6678C 80065B8C 03E00008 */  jr         $ra
/* 66790 80065B90 00601025 */   or        $v0, $v1, $zero
/* 66794 80065B94 00000000 */  nop
/* 66798 80065B98 00000000 */  nop
/* 6679C 80065B9C 00000000 */  nop
