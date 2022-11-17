.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8007AAA0
/* 7B6A0 8007AAA0 3C0EA480 */  lui        $t6, %hi(D_A4800018)
/* 7B6A4 8007AAA4 8DC40018 */  lw         $a0, %lo(D_A4800018)($t6)
/* 7B6A8 8007AAA8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7B6AC 8007AAAC 308F0003 */  andi       $t7, $a0, 0x3
/* 7B6B0 8007AAB0 11E00003 */  beqz       $t7, .L8007AAC0
/* 7B6B4 8007AAB4 00000000 */   nop
/* 7B6B8 8007AAB8 10000002 */  b          .L8007AAC4
/* 7B6BC 8007AABC 24020001 */   addiu     $v0, $zero, 0x1
.L8007AAC0:
/* 7B6C0 8007AAC0 00001025 */  or         $v0, $zero, $zero
.L8007AAC4:
/* 7B6C4 8007AAC4 03E00008 */  jr         $ra
/* 7B6C8 8007AAC8 27BD0008 */   addiu     $sp, $sp, 0x8
/* 7B6CC 8007AACC 00000000 */  nop
