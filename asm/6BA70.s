.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006AE70
/* 6BA70 8006AE70 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6BA74 8006AE74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6BA78 8006AE78 AFA40020 */  sw         $a0, 0x20($sp)
/* 6BA7C 8006AE7C 0C01D03C */  jal        func_800740F0
/* 6BA80 8006AE80 AFA0001C */   sw        $zero, 0x1C($sp)
/* 6BA84 8006AE84 93AE0023 */  lbu        $t6, 0x23($sp)
/* 6BA88 8006AE88 29C10005 */  slti       $at, $t6, 0x5
/* 6BA8C 8006AE8C 14200005 */  bnez       $at, .L8006AEA4
/* 6BA90 8006AE90 00000000 */   nop
/* 6BA94 8006AE94 240F0004 */  addiu      $t7, $zero, 0x4
/* 6BA98 8006AE98 3C01801B */  lui        $at, %hi(D_801AABD1)
/* 6BA9C 8006AE9C 10000004 */  b          .L8006AEB0
/* 6BAA0 8006AEA0 A02FABD1 */   sb        $t7, %lo(D_801AABD1)($at)
.L8006AEA4:
/* 6BAA4 8006AEA4 93B80023 */  lbu        $t8, 0x23($sp)
/* 6BAA8 8006AEA8 3C01801B */  lui        $at, %hi(D_801AABD1)
/* 6BAAC 8006AEAC A038ABD1 */  sb         $t8, %lo(D_801AABD1)($at)
.L8006AEB0:
/* 6BAB0 8006AEB0 241900FE */  addiu      $t9, $zero, 0xFE
/* 6BAB4 8006AEB4 3C01801B */  lui        $at, %hi(D_801AABD0)
/* 6BAB8 8006AEB8 0C01D04D */  jal        func_80074134
/* 6BABC 8006AEBC A039ABD0 */   sb        $t9, %lo(D_801AABD0)($at)
/* 6BAC0 8006AEC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6BAC4 8006AEC4 8FA2001C */  lw         $v0, 0x1C($sp)
/* 6BAC8 8006AEC8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6BACC 8006AECC 03E00008 */  jr         $ra
/* 6BAD0 8006AED0 00000000 */   nop
/* 6BAD4 8006AED4 00000000 */  nop
/* 6BAD8 8006AED8 00000000 */  nop
/* 6BADC 8006AEDC 00000000 */  nop
