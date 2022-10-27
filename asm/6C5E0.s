.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006B9E0
/* 6C5E0 8006B9E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6C5E4 8006B9E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C5E8 8006B9E8 0C01B350 */  jal        func_8006CD40
/* 6C5EC 8006B9EC AFA60020 */   sw        $a2, 0x20($sp)
/* 6C5F0 8006B9F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6C5F4 8006B9F4 8FAE0020 */  lw         $t6, 0x20($sp)
/* 6C5F8 8006B9F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6C5FC 8006B9FC 03E00008 */  jr         $ra
/* 6C600 8006BA00 004E1021 */   addu      $v0, $v0, $t6

glabel func_8006BA04
/* 6C604 8006BA04 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6C608 8006BA08 AFA40020 */  sw         $a0, 0x20($sp)
/* 6C60C 8006BA0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C610 8006BA10 AFA50024 */  sw         $a1, 0x24($sp)
/* 6C614 8006BA14 AFA60028 */  sw         $a2, 0x28($sp)
/* 6C618 8006BA18 AFA7002C */  sw         $a3, 0x2C($sp)
/* 6C61C 8006BA1C 3C048007 */  lui        $a0, %hi(func_8006B9E0)
/* 6C620 8006BA20 2484B9E0 */  addiu      $a0, $a0, %lo(func_8006B9E0)
/* 6C624 8006BA24 27A70028 */  addiu      $a3, $sp, 0x28
/* 6C628 8006BA28 8FA60024 */  lw         $a2, 0x24($sp)
/* 6C62C 8006BA2C 0C01D9B0 */  jal        _Printf
/* 6C630 8006BA30 8FA50020 */   lw        $a1, 0x20($sp)
/* 6C634 8006BA34 04400004 */  bltz       $v0, .L8006BA48
/* 6C638 8006BA38 00401825 */   or        $v1, $v0, $zero
/* 6C63C 8006BA3C 8FAE0020 */  lw         $t6, 0x20($sp)
/* 6C640 8006BA40 01C27821 */  addu       $t7, $t6, $v0
/* 6C644 8006BA44 A1E00000 */  sb         $zero, 0x0($t7)
.L8006BA48:
/* 6C648 8006BA48 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6C64C 8006BA4C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6C650 8006BA50 00601025 */  or         $v0, $v1, $zero
/* 6C654 8006BA54 03E00008 */  jr         $ra
/* 6C658 8006BA58 00000000 */   nop
/* 6C65C 8006BA5C 00000000 */  nop
