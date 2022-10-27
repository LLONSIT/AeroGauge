.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006CC60
/* 6D860 8006CC60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6D864 8006CC64 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6D868 8006CC68 AFA40028 */  sw         $a0, 0x28($sp)
/* 6D86C 8006CC6C 0C01C218 */  jal        __osDisableInt
/* 6D870 8006CC70 AFB00018 */   sw        $s0, 0x18($sp)
/* 6D874 8006CC74 93AE002B */  lbu        $t6, 0x2B($sp)
/* 6D878 8006CC78 00408025 */  or         $s0, $v0, $zero
/* 6D87C 8006CC7C 11C00007 */  beqz       $t6, .L8006CC9C
/* 6D880 8006CC80 00000000 */   nop
/* 6D884 8006CC84 3C0F8009 */  lui        $t7, %hi(D_80094C54)
/* 6D888 8006CC88 8DEF4C54 */  lw         $t7, %lo(D_80094C54)($t7)
/* 6D88C 8006CC8C 95F80000 */  lhu        $t8, 0x0($t7)
/* 6D890 8006CC90 37190020 */  ori        $t9, $t8, 0x20
/* 6D894 8006CC94 10000007 */  b          .L8006CCB4
/* 6D898 8006CC98 A5F90000 */   sh        $t9, 0x0($t7)
.L8006CC9C:
/* 6D89C 8006CC9C 3C088009 */  lui        $t0, %hi(D_80094C54)
/* 6D8A0 8006CCA0 8D084C54 */  lw         $t0, %lo(D_80094C54)($t0)
/* 6D8A4 8006CCA4 2401FFDF */  addiu      $at, $zero, -0x21
/* 6D8A8 8006CCA8 95090000 */  lhu        $t1, 0x0($t0)
/* 6D8AC 8006CCAC 01215024 */  and        $t2, $t1, $at
/* 6D8B0 8006CCB0 A50A0000 */  sh         $t2, 0x0($t0)
.L8006CCB4:
/* 6D8B4 8006CCB4 0C01C220 */  jal        __osRestoreInt
/* 6D8B8 8006CCB8 02002025 */   or        $a0, $s0, $zero
/* 6D8BC 8006CCBC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6D8C0 8006CCC0 8FB00018 */  lw         $s0, 0x18($sp)
/* 6D8C4 8006CCC4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6D8C8 8006CCC8 03E00008 */  jr         $ra
/* 6D8CC 8006CCCC 00000000 */   nop

# Handwritten function
glabel func_8006CCD0
/* 6D8D0 8006CCD0 3C088000 */  lui        $t0, 0x8000
/* 6D8D4 8006CCD4 240A2000 */  addiu      $t2, $zero, 0x2000
/* 6D8D8 8006CCD8 010A4821 */  addu       $t1, $t0, $t2
/* 6D8DC 8006CCDC 2529FFF0 */  addiu      $t1, $t1, -0x10
.L8006CCE0:
/* 6D8E0 8006CCE0 BD010000 */  cache      0x01, 0x0($t0)
/* 6D8E4 8006CCE4 0109082B */  sltu       $at, $t0, $t1
/* 6D8E8 8006CCE8 1420FFFD */  bnez       $at, .L8006CCE0
/* 6D8EC 8006CCEC 25080010 */   addiu     $t0, $t0, 0x10
/* 6D8F0 8006CCF0 03E00008 */  jr         $ra
/* 6D8F4 8006CCF4 00000000 */   nop
/* 6D8F8 8006CCF8 00000000 */  nop
/* 6D8FC 8006CCFC 00000000 */  nop
