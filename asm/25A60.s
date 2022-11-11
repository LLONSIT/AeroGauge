.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80024E60
/* 25A60 80024E60 3C018009 */  lui        $at, %hi(D_8008CE10)
/* 25A64 80024E64 C420CE10 */  lwc1       $f0, %lo(D_8008CE10)($at)
/* 25A68 80024E68 44876000 */  mtc1       $a3, $f12
/* 25A6C 80024E6C 44857000 */  mtc1       $a1, $f14
/* 25A70 80024E70 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 25A74 80024E74 46006302 */  mul.s      $f12, $f12, $f0
/* 25A78 80024E78 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 25A7C 80024E7C 4486A000 */  mtc1       $a2, $f20
/* 25A80 80024E80 46007382 */  mul.s      $f14, $f14, $f0
/* 25A84 80024E84 AFBF002C */  sw         $ra, 0x2C($sp)
/* 25A88 80024E88 AFB00028 */  sw         $s0, 0x28($sp)
/* 25A8C 80024E8C 4600A502 */  mul.s      $f20, $f20, $f0
/* 25A90 80024E90 00808025 */  or         $s0, $a0, $zero
/* 25A94 80024E94 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 25A98 80024E98 E7AC0054 */  swc1       $f12, 0x54($sp)
/* 25A9C 80024E9C E7AE004C */  swc1       $f14, 0x4C($sp)
/* 25AA0 80024EA0 0C019B54 */  jal        __sinf
/* 25AA4 80024EA4 E7B40050 */   swc1      $f20, 0x50($sp)
/* 25AA8 80024EA8 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 25AAC 80024EAC 0C01AB20 */  jal        func_8006AC80
/* 25AB0 80024EB0 46000506 */   mov.s     $f20, $f0
/* 25AB4 80024EB4 46000586 */  mov.s      $f22, $f0
/* 25AB8 80024EB8 0C019B54 */  jal        __sinf
/* 25ABC 80024EBC C7AC004C */   lwc1      $f12, 0x4C($sp)
/* 25AC0 80024EC0 E7A00040 */  swc1       $f0, 0x40($sp)
/* 25AC4 80024EC4 0C01AB20 */  jal        func_8006AC80
/* 25AC8 80024EC8 C7AC004C */   lwc1      $f12, 0x4C($sp)
/* 25ACC 80024ECC C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 25AD0 80024ED0 0C019B54 */  jal        __sinf
/* 25AD4 80024ED4 E7A00034 */   swc1      $f0, 0x34($sp)
/* 25AD8 80024ED8 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 25ADC 80024EDC 0C01AB20 */  jal        func_8006AC80
/* 25AE0 80024EE0 E7A0003C */   swc1      $f0, 0x3C($sp)
/* 25AE4 80024EE4 02002025 */  or         $a0, $s0, $zero
/* 25AE8 80024EE8 0C01B0CC */  jal        func_8006C330
/* 25AEC 80024EEC E7A00030 */   swc1      $f0, 0x30($sp)
/* 25AF0 80024EF0 C7B20040 */  lwc1       $f18, 0x40($sp)
/* 25AF4 80024EF4 C7A2003C */  lwc1       $f2, 0x3C($sp)
/* 25AF8 80024EF8 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 25AFC 80024EFC 4612A002 */  mul.s      $f0, $f20, $f18
/* 25B00 80024F00 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 25B04 80024F04 46020102 */  mul.s      $f4, $f0, $f2
/* 25B08 80024F08 00000000 */  nop
/* 25B0C 80024F0C 460CB182 */  mul.s      $f6, $f22, $f12
/* 25B10 80024F10 46062200 */  add.s      $f8, $f4, $f6
/* 25B14 80024F14 460EA282 */  mul.s      $f10, $f20, $f14
/* 25B18 80024F18 00000000 */  nop
/* 25B1C 80024F1C 460C0102 */  mul.s      $f4, $f0, $f12
/* 25B20 80024F20 E6080000 */  swc1       $f8, 0x0($s0)
/* 25B24 80024F24 4602B182 */  mul.s      $f6, $f22, $f2
/* 25B28 80024F28 E60A0004 */  swc1       $f10, 0x4($s0)
/* 25B2C 80024F2C 4612B402 */  mul.s      $f16, $f22, $f18
/* 25B30 80024F30 46062201 */  sub.s      $f8, $f4, $f6
/* 25B34 80024F34 46028282 */  mul.s      $f10, $f16, $f2
/* 25B38 80024F38 E6080008 */  swc1       $f8, 0x8($s0)
/* 25B3C 80024F3C 460CA102 */  mul.s      $f4, $f20, $f12
/* 25B40 80024F40 46045181 */  sub.s      $f6, $f10, $f4
/* 25B44 80024F44 460EB202 */  mul.s      $f8, $f22, $f14
/* 25B48 80024F48 00000000 */  nop
/* 25B4C 80024F4C 460C8282 */  mul.s      $f10, $f16, $f12
/* 25B50 80024F50 E6060010 */  swc1       $f6, 0x10($s0)
/* 25B54 80024F54 4602A102 */  mul.s      $f4, $f20, $f2
/* 25B58 80024F58 E6080014 */  swc1       $f8, 0x14($s0)
/* 25B5C 80024F5C 46027202 */  mul.s      $f8, $f14, $f2
/* 25B60 80024F60 46045180 */  add.s      $f6, $f10, $f4
/* 25B64 80024F64 460C7102 */  mul.s      $f4, $f14, $f12
/* 25B68 80024F68 E6080020 */  swc1       $f8, 0x20($s0)
/* 25B6C 80024F6C 46009287 */  neg.s      $f10, $f18
/* 25B70 80024F70 E6060018 */  swc1       $f6, 0x18($s0)
/* 25B74 80024F74 E60A0024 */  swc1       $f10, 0x24($s0)
/* 25B78 80024F78 E6040028 */  swc1       $f4, 0x28($s0)
/* 25B7C 80024F7C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 25B80 80024F80 8FB00028 */  lw         $s0, 0x28($sp)
/* 25B84 80024F84 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 25B88 80024F88 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 25B8C 80024F8C 03E00008 */  jr         $ra
/* 25B90 80024F90 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80024F94
/* 25B94 80024F94 44856000 */  mtc1       $a1, $f12
/* 25B98 80024F98 44867000 */  mtc1       $a2, $f14
/* 25B9C 80024F9C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 25BA0 80024FA0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25BA4 80024FA4 AFA40058 */  sw         $a0, 0x58($sp)
/* 25BA8 80024FA8 44056000 */  mfc1       $a1, $f12
/* 25BAC 80024FAC 44067000 */  mfc1       $a2, $f14
/* 25BB0 80024FB0 AFA70064 */  sw         $a3, 0x64($sp)
/* 25BB4 80024FB4 0C009398 */  jal        func_80024E60
/* 25BB8 80024FB8 27A40018 */   addiu     $a0, $sp, 0x18
/* 25BBC 80024FBC 27A40018 */  addiu      $a0, $sp, 0x18
/* 25BC0 80024FC0 0C01B08C */  jal        func_8006C230
/* 25BC4 80024FC4 8FA50058 */   lw        $a1, 0x58($sp)
/* 25BC8 80024FC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 25BCC 80024FCC 27BD0058 */  addiu      $sp, $sp, 0x58
/* 25BD0 80024FD0 03E00008 */  jr         $ra
/* 25BD4 80024FD4 00000000 */   nop
/* 25BD8 80024FD8 00000000 */  nop
/* 25BDC 80024FDC 00000000 */  nop
