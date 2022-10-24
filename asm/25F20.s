.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80025320
/* 25F20 80025320 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25F24 80025324 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25F28 80025328 C4820000 */  lwc1       $f2, 0x0($a0)
/* 25F2C 8002532C C4AE0000 */  lwc1       $f14, 0x0($a1)
/* 25F30 80025330 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 25F34 80025334 46021102 */  mul.s      $f4, $f2, $f2
/* 25F38 80025338 AFA60020 */  sw         $a2, 0x20($sp)
/* 25F3C 8002533C AFA5001C */  sw         $a1, 0x1C($sp)
/* 25F40 80025340 460E7182 */  mul.s      $f6, $f14, $f14
/* 25F44 80025344 AFA40018 */  sw         $a0, 0x18($sp)
/* 25F48 80025348 46000282 */  mul.s      $f10, $f0, $f0
/* 25F4C 8002534C 46062200 */  add.s      $f8, $f4, $f6
/* 25F50 80025350 0C01AB7C */  jal        func_8006ADF0
/* 25F54 80025354 46085300 */   add.s     $f12, $f10, $f8
/* 25F58 80025358 44808000 */  mtc1       $zero, $f16
/* 25F5C 8002535C 8FA40018 */  lw         $a0, 0x18($sp)
/* 25F60 80025360 8FA5001C */  lw         $a1, 0x1C($sp)
/* 25F64 80025364 46100032 */  c.eq.s     $f0, $f16
/* 25F68 80025368 8FA60020 */  lw         $a2, 0x20($sp)
/* 25F6C 8002536C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 25F70 80025370 4503000D */  bc1tl      .L800253A8
/* 25F74 80025374 8FBF0014 */   lw        $ra, 0x14($sp)
/* 25F78 80025378 44819000 */  mtc1       $at, $f18
/* 25F7C 8002537C C4840000 */  lwc1       $f4, 0x0($a0)
/* 25F80 80025380 46009083 */  div.s      $f2, $f18, $f0
/* 25F84 80025384 46022182 */  mul.s      $f6, $f4, $f2
/* 25F88 80025388 E4860000 */  swc1       $f6, 0x0($a0)
/* 25F8C 8002538C C4AA0000 */  lwc1       $f10, 0x0($a1)
/* 25F90 80025390 46025202 */  mul.s      $f8, $f10, $f2
/* 25F94 80025394 E4A80000 */  swc1       $f8, 0x0($a1)
/* 25F98 80025398 C4D00000 */  lwc1       $f16, 0x0($a2)
/* 25F9C 8002539C 46028482 */  mul.s      $f18, $f16, $f2
/* 25FA0 800253A0 E4D20000 */  swc1       $f18, 0x0($a2)
/* 25FA4 800253A4 8FBF0014 */  lw         $ra, 0x14($sp)
.L800253A8:
/* 25FA8 800253A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 25FAC 800253AC 03E00008 */  jr         $ra
/* 25FB0 800253B0 00000000 */   nop
/* 25FB4 800253B4 00000000 */  nop
/* 25FB8 800253B8 00000000 */  nop
/* 25FBC 800253BC 00000000 */  nop
