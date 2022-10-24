.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80067EB0
/* 68AB0 80067EB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 68AB4 80067EB4 AFA40018 */  sw         $a0, 0x18($sp)
/* 68AB8 80067EB8 8FAE0018 */  lw         $t6, 0x18($sp)
/* 68ABC 80067EBC 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 68AC0 80067EC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68AC4 80067EC4 01C1082B */  sltu       $at, $t6, $at
/* 68AC8 80067EC8 14200007 */  bnez       $at, .L80067EE8
/* 68ACC 80067ECC 3C01A000 */   lui       $at, (0xA0000000 >> 16)
/* 68AD0 80067ED0 01C1082B */  sltu       $at, $t6, $at
/* 68AD4 80067ED4 10200004 */  beqz       $at, .L80067EE8
/* 68AD8 80067ED8 3C011FFF */   lui       $at, (0x1FFFFFFF >> 16)
/* 68ADC 80067EDC 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 68AE0 80067EE0 1000000E */  b          .L80067F1C
/* 68AE4 80067EE4 01C11024 */   and       $v0, $t6, $at
.L80067EE8:
/* 68AE8 80067EE8 8FAF0018 */  lw         $t7, 0x18($sp)
/* 68AEC 80067EEC 3C01A000 */  lui        $at, (0xA0000000 >> 16)
/* 68AF0 80067EF0 01E1082B */  sltu       $at, $t7, $at
/* 68AF4 80067EF4 14200007 */  bnez       $at, .L80067F14
/* 68AF8 80067EF8 3C01C000 */   lui       $at, (0xC0000000 >> 16)
/* 68AFC 80067EFC 01E1082B */  sltu       $at, $t7, $at
/* 68B00 80067F00 10200004 */  beqz       $at, .L80067F14
/* 68B04 80067F04 3C011FFF */   lui       $at, (0x1FFFFFFF >> 16)
/* 68B08 80067F08 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 68B0C 80067F0C 10000003 */  b          .L80067F1C
/* 68B10 80067F10 01E11024 */   and       $v0, $t7, $at
.L80067F14:
/* 68B14 80067F14 0C01C4BC */  jal        func_800712F0
/* 68B18 80067F18 8FA40018 */   lw        $a0, 0x18($sp)
.L80067F1C:
/* 68B1C 80067F1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68B20 80067F20 27BD0018 */  addiu      $sp, $sp, 0x18
/* 68B24 80067F24 03E00008 */  jr         $ra
/* 68B28 80067F28 00000000 */   nop
/* 68B2C 80067F2C 00000000 */  nop
