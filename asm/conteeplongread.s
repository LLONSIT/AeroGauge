.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osEepromLongRead
/* 6EEF0 8006E2F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6EEF4 8006E2F4 AFA7002C */  sw         $a3, 0x2C($sp)
/* 6EEF8 8006E2F8 8FAE002C */  lw         $t6, 0x2C($sp)
/* 6EEFC 8006E2FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6EF00 8006E300 AFA40020 */  sw         $a0, 0x20($sp)
/* 6EF04 8006E304 AFA50024 */  sw         $a1, 0x24($sp)
/* 6EF08 8006E308 AFA60028 */  sw         $a2, 0x28($sp)
/* 6EF0C 8006E30C 19C00016 */  blez       $t6, .L8006E368
/* 6EF10 8006E310 AFA0001C */   sw        $zero, 0x1C($sp)
.L8006E314:
/* 6EF14 8006E314 8FA40020 */  lw         $a0, 0x20($sp)
/* 6EF18 8006E318 93A50027 */  lbu        $a1, 0x27($sp)
/* 6EF1C 8006E31C 0C01B7B8 */  jal        func_8006DEE0
/* 6EF20 8006E320 8FA60028 */   lw        $a2, 0x28($sp)
/* 6EF24 8006E324 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6EF28 8006E328 8FAF001C */  lw         $t7, 0x1C($sp)
/* 6EF2C 8006E32C 11E00003 */  beqz       $t7, .L8006E33C
/* 6EF30 8006E330 00000000 */   nop
/* 6EF34 8006E334 1000000D */  b          .L8006E36C
/* 6EF38 8006E338 01E01025 */   or        $v0, $t7, $zero
.L8006E33C:
/* 6EF3C 8006E33C 8FB8002C */  lw         $t8, 0x2C($sp)
/* 6EF40 8006E340 93A80027 */  lbu        $t0, 0x27($sp)
/* 6EF44 8006E344 8FAA0028 */  lw         $t2, 0x28($sp)
/* 6EF48 8006E348 2719FFF8 */  addiu      $t9, $t8, -0x8
/* 6EF4C 8006E34C AFB9002C */  sw         $t9, 0x2C($sp)
/* 6EF50 8006E350 8FAC002C */  lw         $t4, 0x2C($sp)
/* 6EF54 8006E354 25090001 */  addiu      $t1, $t0, 0x1
/* 6EF58 8006E358 254B0008 */  addiu      $t3, $t2, 0x8
/* 6EF5C 8006E35C A3A90027 */  sb         $t1, 0x27($sp)
/* 6EF60 8006E360 1D80FFEC */  bgtz       $t4, .L8006E314
/* 6EF64 8006E364 AFAB0028 */   sw        $t3, 0x28($sp)
.L8006E368:
/* 6EF68 8006E368 8FA2001C */  lw         $v0, 0x1C($sp)
.L8006E36C:
/* 6EF6C 8006E36C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6EF70 8006E370 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6EF74 8006E374 03E00008 */  jr         $ra
/* 6EF78 8006E378 00000000 */   nop
/* 6EF7C 8006E37C 00000000 */  nop
