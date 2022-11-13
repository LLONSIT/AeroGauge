.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006CD00
/* 6D900 8006CD00 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 6D904 8006CD04 AFA40008 */  sw         $a0, 0x8($sp)
/* 6D908 8006CD08 AFA5000C */  sw         $a1, 0xC($sp)
/* 6D90C 8006CD0C AFA60010 */  sw         $a2, 0x10($sp)
/* 6D910 8006CD10 AFA70014 */  sw         $a3, 0x14($sp)
/* 6D914 8006CD14 03E00008 */  jr         $ra
/* 6D918 8006CD18 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_8006CD1C
/* 6D91C 8006CD1C 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 6D920 8006CD20 AFA40008 */  sw         $a0, 0x8($sp)
/* 6D924 8006CD24 AFA5000C */  sw         $a1, 0xC($sp)
/* 6D928 8006CD28 AFA60010 */  sw         $a2, 0x10($sp)
/* 6D92C 8006CD2C AFA70014 */  sw         $a3, 0x14($sp)
/* 6D930 8006CD30 03E00008 */  jr         $ra
/* 6D934 8006CD34 27BD0008 */   addiu     $sp, $sp, 0x8
/* 6D938 8006CD38 00000000 */  nop
/* 6D93C 8006CD3C 00000000 */  nop
