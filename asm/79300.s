.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80078700
/* 79300 80078700 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 79304 80078704 8DC50010 */  lw         $a1, %lo(D_A4040010)($t6)
/* 79308 80078708 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7930C 8007870C 30AF0001 */  andi       $t7, $a1, 0x1
/* 79310 80078710 15E00003 */  bnez       $t7, .L80078720
/* 79314 80078714 00000000 */   nop
/* 79318 80078718 10000004 */  b          .L8007872C
/* 7931C 8007871C 2402FFFF */   addiu     $v0, $zero, -0x1
.L80078720:
/* 79320 80078720 3C18A408 */  lui        $t8, %hi(D_A4080000)
/* 79324 80078724 AF040000 */  sw         $a0, %lo(D_A4080000)($t8)
/* 79328 80078728 00001025 */  or         $v0, $zero, $zero
.L8007872C:
/* 7932C 8007872C 03E00008 */  jr         $ra
/* 79330 80078730 27BD0008 */   addiu     $sp, $sp, 0x8
/* 79334 80078734 00000000 */  nop
/* 79338 80078738 00000000 */  nop
/* 7933C 8007873C 00000000 */  nop
