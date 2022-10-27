.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006AE00
/* 6BA00 8006AE00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6BA04 8006AE04 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6BA08 8006AE08 AFA40028 */  sw         $a0, 0x28($sp)
/* 6BA0C 8006AE0C AFA5002C */  sw         $a1, 0x2C($sp)
/* 6BA10 8006AE10 AFA60030 */  sw         $a2, 0x30($sp)
/* 6BA14 8006AE14 0C01C218 */  jal        __osDisableInt
/* 6BA18 8006AE18 AFB00018 */   sw        $s0, 0x18($sp)
/* 6BA1C 8006AE1C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6BA20 8006AE20 3C18801B */  lui        $t8, %hi(D_801AAB10)
/* 6BA24 8006AE24 8FA8002C */  lw         $t0, 0x2C($sp)
/* 6BA28 8006AE28 2718AB10 */  addiu      $t8, $t8, %lo(D_801AAB10)
/* 6BA2C 8006AE2C 000E78C0 */  sll        $t7, $t6, 3
/* 6BA30 8006AE30 01F8C821 */  addu       $t9, $t7, $t8
/* 6BA34 8006AE34 AFB90020 */  sw         $t9, 0x20($sp)
/* 6BA38 8006AE38 AF280000 */  sw         $t0, 0x0($t9)
/* 6BA3C 8006AE3C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 6BA40 8006AE40 8FA90030 */  lw         $t1, 0x30($sp)
/* 6BA44 8006AE44 00408025 */  or         $s0, $v0, $zero
/* 6BA48 8006AE48 02002025 */  or         $a0, $s0, $zero
/* 6BA4C 8006AE4C 0C01C220 */  jal        __osRestoreInt
/* 6BA50 8006AE50 AD490004 */   sw        $t1, 0x4($t2)
/* 6BA54 8006AE54 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6BA58 8006AE58 8FB00018 */  lw         $s0, 0x18($sp)
/* 6BA5C 8006AE5C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6BA60 8006AE60 03E00008 */  jr         $ra
/* 6BA64 8006AE64 00000000 */   nop
/* 6BA68 8006AE68 00000000 */  nop
/* 6BA6C 8006AE6C 00000000 */  nop
