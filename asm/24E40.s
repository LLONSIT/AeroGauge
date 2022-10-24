.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80024240
/* 24E40 80024240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24E44 80024244 AFBF0014 */  sw         $ra, 0x14($sp)
/* 24E48 80024248 C4800000 */  lwc1       $f0, 0x0($a0)
/* 24E4C 8002424C C4820004 */  lwc1       $f2, 0x4($a0)
/* 24E50 80024250 C48E0008 */  lwc1       $f14, 0x8($a0)
/* 24E54 80024254 46000102 */  mul.s      $f4, $f0, $f0
/* 24E58 80024258 AFA40018 */  sw         $a0, 0x18($sp)
/* 24E5C 8002425C 46021182 */  mul.s      $f6, $f2, $f2
/* 24E60 80024260 46062200 */  add.s      $f8, $f4, $f6
/* 24E64 80024264 460E7282 */  mul.s      $f10, $f14, $f14
/* 24E68 80024268 0C01AB7C */  jal        func_8006ADF0
/* 24E6C 8002426C 460A4300 */   add.s     $f12, $f8, $f10
/* 24E70 80024270 44808000 */  mtc1       $zero, $f16
/* 24E74 80024274 8FA40018 */  lw         $a0, 0x18($sp)
/* 24E78 80024278 46000306 */  mov.s      $f12, $f0
/* 24E7C 8002427C 46100032 */  c.eq.s     $f0, $f16
/* 24E80 80024280 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 24E84 80024284 4503000F */  bc1tl      .L800242C4
/* 24E88 80024288 8FBF0014 */   lw        $ra, 0x14($sp)
/* 24E8C 8002428C 44819000 */  mtc1       $at, $f18
/* 24E90 80024290 C4840000 */  lwc1       $f4, 0x0($a0)
/* 24E94 80024294 C4880004 */  lwc1       $f8, 0x4($a0)
/* 24E98 80024298 46009083 */  div.s      $f2, $f18, $f0
/* 24E9C 8002429C C4900008 */  lwc1       $f16, 0x8($a0)
/* 24EA0 800242A0 46022182 */  mul.s      $f6, $f4, $f2
/* 24EA4 800242A4 00000000 */  nop
/* 24EA8 800242A8 46024282 */  mul.s      $f10, $f8, $f2
/* 24EAC 800242AC 00000000 */  nop
/* 24EB0 800242B0 46028482 */  mul.s      $f18, $f16, $f2
/* 24EB4 800242B4 E4860000 */  swc1       $f6, 0x0($a0)
/* 24EB8 800242B8 E48A0004 */  swc1       $f10, 0x4($a0)
/* 24EBC 800242BC E4920008 */  swc1       $f18, 0x8($a0)
/* 24EC0 800242C0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800242C4:
/* 24EC4 800242C4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 24EC8 800242C8 46006006 */  mov.s      $f0, $f12
/* 24ECC 800242CC 03E00008 */  jr         $ra
/* 24ED0 800242D0 00000000 */   nop
/* 24ED4 800242D4 00000000 */  nop
/* 24ED8 800242D8 00000000 */  nop
/* 24EDC 800242DC 00000000 */  nop
