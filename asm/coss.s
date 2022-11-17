.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel coss
/* 6B850 8006AC50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B854 8006AC54 AFA40018 */  sw         $a0, 0x18($sp)
/* 6B858 8006AC58 00802825 */  or         $a1, $a0, $zero
/* 6B85C 8006AC5C 24A44000 */  addiu      $a0, $a1, 0x4000
/* 6B860 8006AC60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B864 8006AC64 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 6B868 8006AC68 0C01ADB8 */  jal        sins
/* 6B86C 8006AC6C 01C02025 */   or        $a0, $t6, $zero
/* 6B870 8006AC70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B874 8006AC74 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6B878 8006AC78 03E00008 */  jr         $ra
/* 6B87C 8006AC7C 00000000 */   nop
