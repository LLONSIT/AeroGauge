.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006E200
/* 6EE00 8006E200 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6EE04 8006E204 AFA7003C */  sw         $a3, 0x3C($sp)
/* 6EE08 8006E208 8FAE003C */  lw         $t6, 0x3C($sp)
/* 6EE0C 8006E20C AFBF0024 */  sw         $ra, 0x24($sp)
/* 6EE10 8006E210 AFA40030 */  sw         $a0, 0x30($sp)
/* 6EE14 8006E214 AFA50034 */  sw         $a1, 0x34($sp)
/* 6EE18 8006E218 AFA60038 */  sw         $a2, 0x38($sp)
/* 6EE1C 8006E21C 19C0002C */  blez       $t6, .L8006E2D0
/* 6EE20 8006E220 AFA0002C */   sw        $zero, 0x2C($sp)
.L8006E224:
/* 6EE24 8006E224 8FA40030 */  lw         $a0, 0x30($sp)
/* 6EE28 8006E228 93A50037 */  lbu        $a1, 0x37($sp)
/* 6EE2C 8006E22C 0C01DD70 */  jal        osEepromWrite
/* 6EE30 8006E230 8FA60038 */   lw        $a2, 0x38($sp)
/* 6EE34 8006E234 AFA2002C */  sw         $v0, 0x2C($sp)
/* 6EE38 8006E238 8FAF002C */  lw         $t7, 0x2C($sp)
/* 6EE3C 8006E23C 11E00003 */  beqz       $t7, .L8006E24C
/* 6EE40 8006E240 00000000 */   nop
/* 6EE44 8006E244 10000023 */  b          .L8006E2D4
/* 6EE48 8006E248 01E01025 */   or        $v0, $t7, $zero
.L8006E24C:
/* 6EE4C 8006E24C 8FB8003C */  lw         $t8, 0x3C($sp)
/* 6EE50 8006E250 93A80037 */  lbu        $t0, 0x37($sp)
/* 6EE54 8006E254 8FAA0038 */  lw         $t2, 0x38($sp)
/* 6EE58 8006E258 3C0E801B */  lui        $t6, %hi(D_801AABF8)
/* 6EE5C 8006E25C 3C0F801B */  lui        $t7, %hi(D_801AAC10)
/* 6EE60 8006E260 25EFAC10 */  addiu      $t7, $t7, %lo(D_801AAC10)
/* 6EE64 8006E264 25CEABF8 */  addiu      $t6, $t6, %lo(D_801AABF8)
/* 6EE68 8006E268 3C04801B */  lui        $a0, %hi(D_801AABD8)
/* 6EE6C 8006E26C 3C070008 */  lui        $a3, (0x89544 >> 16)
/* 6EE70 8006E270 240C0000 */  addiu      $t4, $zero, 0x0
/* 6EE74 8006E274 240D0000 */  addiu      $t5, $zero, 0x0
/* 6EE78 8006E278 2719FFF8 */  addiu      $t9, $t8, -0x8
/* 6EE7C 8006E27C 25090001 */  addiu      $t1, $t0, 0x1
/* 6EE80 8006E280 254B0008 */  addiu      $t3, $t2, 0x8
/* 6EE84 8006E284 AFB9003C */  sw         $t9, 0x3C($sp)
/* 6EE88 8006E288 A3A90037 */  sb         $t1, 0x37($sp)
/* 6EE8C 8006E28C AFAB0038 */  sw         $t3, 0x38($sp)
/* 6EE90 8006E290 AFAD0014 */  sw         $t5, 0x14($sp)
/* 6EE94 8006E294 AFAC0010 */  sw         $t4, 0x10($sp)
/* 6EE98 8006E298 34E79544 */  ori        $a3, $a3, (0x89544 & 0xFFFF)
/* 6EE9C 8006E29C 2484ABD8 */  addiu      $a0, $a0, %lo(D_801AABD8)
/* 6EEA0 8006E2A0 AFAE0018 */  sw         $t6, 0x18($sp)
/* 6EEA4 8006E2A4 AFAF001C */  sw         $t7, 0x1C($sp)
/* 6EEA8 8006E2A8 0C01D058 */  jal        osSetTimer
/* 6EEAC 8006E2AC 24060000 */   addiu     $a2, $zero, 0x0
/* 6EEB0 8006E2B0 3C04801B */  lui        $a0, %hi(D_801AABF8)
/* 6EEB4 8006E2B4 2484ABF8 */  addiu      $a0, $a0, %lo(D_801AABF8)
/* 6EEB8 8006E2B8 00002825 */  or         $a1, $zero, $zero
/* 6EEBC 8006E2BC 0C019824 */  jal        osRecvMesg
/* 6EEC0 8006E2C0 24060001 */   addiu     $a2, $zero, 0x1
/* 6EEC4 8006E2C4 8FB8003C */  lw         $t8, 0x3C($sp)
/* 6EEC8 8006E2C8 1F00FFD6 */  bgtz       $t8, .L8006E224
/* 6EECC 8006E2CC 00000000 */   nop
.L8006E2D0:
/* 6EED0 8006E2D0 8FA2002C */  lw         $v0, 0x2C($sp)
.L8006E2D4:
/* 6EED4 8006E2D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6EED8 8006E2D8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 6EEDC 8006E2DC 03E00008 */  jr         $ra
/* 6EEE0 8006E2E0 00000000 */   nop
/* 6EEE4 8006E2E4 00000000 */  nop
/* 6EEE8 8006E2E8 00000000 */  nop
/* 6EEEC 8006E2EC 00000000 */  nop
