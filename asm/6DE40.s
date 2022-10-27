.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006D240
/* 6DE40 8006D240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6DE44 8006D244 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6DE48 8006D248 C4820000 */  lwc1       $f2, 0x0($a0)
/* 6DE4C 8006D24C C4AE0000 */  lwc1       $f14, 0x0($a1)
/* 6DE50 8006D250 C4C00000 */  lwc1       $f0, 0x0($a2)
/* 6DE54 8006D254 46021102 */  mul.s      $f4, $f2, $f2
/* 6DE58 8006D258 AFA60020 */  sw         $a2, 0x20($sp)
/* 6DE5C 8006D25C AFA5001C */  sw         $a1, 0x1C($sp)
/* 6DE60 8006D260 460E7182 */  mul.s      $f6, $f14, $f14
/* 6DE64 8006D264 AFA40018 */  sw         $a0, 0x18($sp)
/* 6DE68 8006D268 46000282 */  mul.s      $f10, $f0, $f0
/* 6DE6C 8006D26C 46062200 */  add.s      $f8, $f4, $f6
/* 6DE70 8006D270 0C01AB7C */  jal        func_8006ADF0
/* 6DE74 8006D274 46085300 */   add.s     $f12, $f10, $f8
/* 6DE78 8006D278 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6DE7C 8006D27C 44818000 */  mtc1       $at, $f16
/* 6DE80 8006D280 8FA40018 */  lw         $a0, 0x18($sp)
/* 6DE84 8006D284 8FA5001C */  lw         $a1, 0x1C($sp)
/* 6DE88 8006D288 46008083 */  div.s      $f2, $f16, $f0
/* 6DE8C 8006D28C C4920000 */  lwc1       $f18, 0x0($a0)
/* 6DE90 8006D290 8FA60020 */  lw         $a2, 0x20($sp)
/* 6DE94 8006D294 46029102 */  mul.s      $f4, $f18, $f2
/* 6DE98 8006D298 E4840000 */  swc1       $f4, 0x0($a0)
/* 6DE9C 8006D29C C4A60000 */  lwc1       $f6, 0x0($a1)
/* 6DEA0 8006D2A0 46023282 */  mul.s      $f10, $f6, $f2
/* 6DEA4 8006D2A4 E4AA0000 */  swc1       $f10, 0x0($a1)
/* 6DEA8 8006D2A8 C4C80000 */  lwc1       $f8, 0x0($a2)
/* 6DEAC 8006D2AC 46024402 */  mul.s      $f16, $f8, $f2
/* 6DEB0 8006D2B0 E4D00000 */  swc1       $f16, 0x0($a2)
/* 6DEB4 8006D2B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6DEB8 8006D2B8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6DEBC 8006D2BC 03E00008 */  jr         $ra
/* 6DEC0 8006D2C0 00000000 */   nop
/* 6DEC4 8006D2C4 00000000 */  nop
/* 6DEC8 8006D2C8 00000000 */  nop
/* 6DECC 8006D2CC 00000000 */  nop
