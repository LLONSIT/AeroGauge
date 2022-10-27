.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006FB50
/* 70750 8006FB50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 70754 8006FB54 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70758 8006FB58 AFA40028 */  sw         $a0, 0x28($sp)
/* 7075C 8006FB5C 0C01C218 */  jal        __osDisableInt
/* 70760 8006FB60 AFB00018 */   sw        $s0, 0x18($sp)
/* 70764 8006FB64 3C0F8009 */  lui        $t7, %hi(D_80094C54)
/* 70768 8006FB68 8DEF4C54 */  lw         $t7, %lo(D_80094C54)($t7)
/* 7076C 8006FB6C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 70770 8006FB70 3C198009 */  lui        $t9, %hi(D_80094C54)
/* 70774 8006FB74 24180001 */  addiu      $t8, $zero, 0x1
/* 70778 8006FB78 ADEE0008 */  sw         $t6, 0x8($t7)
/* 7077C 8006FB7C 8F394C54 */  lw         $t9, %lo(D_80094C54)($t9)
/* 70780 8006FB80 3C088009 */  lui        $t0, %hi(D_80094C54)
/* 70784 8006FB84 00408025 */  or         $s0, $v0, $zero
/* 70788 8006FB88 A7380000 */  sh         $t8, 0x0($t9)
/* 7078C 8006FB8C 8D084C54 */  lw         $t0, %lo(D_80094C54)($t0)
/* 70790 8006FB90 02002025 */  or         $a0, $s0, $zero
/* 70794 8006FB94 8D090008 */  lw         $t1, 0x8($t0)
/* 70798 8006FB98 8D2A0004 */  lw         $t2, 0x4($t1)
/* 7079C 8006FB9C 0C01C220 */  jal        __osRestoreInt
/* 707A0 8006FBA0 AD0A000C */   sw        $t2, 0xC($t0)
/* 707A4 8006FBA4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 707A8 8006FBA8 8FB00018 */  lw         $s0, 0x18($sp)
/* 707AC 8006FBAC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 707B0 8006FBB0 03E00008 */  jr         $ra
/* 707B4 8006FBB4 00000000 */   nop
/* 707B8 8006FBB8 00000000 */  nop
/* 707BC 8006FBBC 00000000 */  nop
