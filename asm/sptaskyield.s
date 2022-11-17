.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80070270
/* 70E70 80070270 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 70E74 80070274 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70E78 80070278 0C01E1BC */  jal        func_800786F0
/* 70E7C 8007027C 24040400 */   addiu     $a0, $zero, 0x400
/* 70E80 80070280 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70E84 80070284 27BD0018 */  addiu      $sp, $sp, 0x18
/* 70E88 80070288 03E00008 */  jr         $ra
/* 70E8C 8007028C 00000000 */   nop
