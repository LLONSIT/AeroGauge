.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800249D0
/* 255D0 800249D0 3C018009 */  lui        $at, %hi(D_8008CDE0)
/* 255D4 800249D4 C420CDE0 */  lwc1       $f0, %lo(D_8008CDE0)($at)
/* 255D8 800249D8 44876000 */  mtc1       $a3, $f12
/* 255DC 800249DC 44857000 */  mtc1       $a1, $f14
/* 255E0 800249E0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 255E4 800249E4 46006302 */  mul.s      $f12, $f12, $f0
/* 255E8 800249E8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 255EC 800249EC 4486A000 */  mtc1       $a2, $f20
/* 255F0 800249F0 46007382 */  mul.s      $f14, $f14, $f0
/* 255F4 800249F4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 255F8 800249F8 AFB00028 */  sw         $s0, 0x28($sp)
/* 255FC 800249FC 4600A502 */  mul.s      $f20, $f20, $f0
/* 25600 80024A00 00808025 */  or         $s0, $a0, $zero
/* 25604 80024A04 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 25608 80024A08 E7AC0054 */  swc1       $f12, 0x54($sp)
/* 2560C 80024A0C E7AE004C */  swc1       $f14, 0x4C($sp)
/* 25610 80024A10 0C019B54 */  jal        __sinf
/* 25614 80024A14 E7B40050 */   swc1      $f20, 0x50($sp)
/* 25618 80024A18 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 2561C 80024A1C 0C01AB20 */  jal        __cosf
/* 25620 80024A20 46000506 */   mov.s     $f20, $f0
/* 25624 80024A24 46000586 */  mov.s      $f22, $f0
/* 25628 80024A28 0C019B54 */  jal        __sinf
/* 2562C 80024A2C C7AC004C */   lwc1      $f12, 0x4C($sp)
/* 25630 80024A30 E7A00040 */  swc1       $f0, 0x40($sp)
/* 25634 80024A34 0C01AB20 */  jal        __cosf
/* 25638 80024A38 C7AC004C */   lwc1      $f12, 0x4C($sp)
/* 2563C 80024A3C C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 25640 80024A40 0C019B54 */  jal        __sinf
/* 25644 80024A44 E7A00034 */   swc1      $f0, 0x34($sp)
/* 25648 80024A48 C7AC0050 */  lwc1       $f12, 0x50($sp)
/* 2564C 80024A4C 0C01AB20 */  jal        __cosf
/* 25650 80024A50 E7A0003C */   swc1      $f0, 0x3C($sp)
/* 25654 80024A54 02002025 */  or         $a0, $s0, $zero
/* 25658 80024A58 0C01B0CC */  jal        guMtxIdentF
/* 2565C 80024A5C E7A00030 */   swc1      $f0, 0x30($sp)
/* 25660 80024A60 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 25664 80024A64 C7AE003C */  lwc1       $f14, 0x3C($sp)
/* 25668 80024A68 C7A20034 */  lwc1       $f2, 0x34($sp)
/* 2566C 80024A6C 46166102 */  mul.s      $f4, $f12, $f22
/* 25670 80024A70 46007187 */  neg.s      $f6, $f14
/* 25674 80024A74 46001007 */  neg.s      $f0, $f2
/* 25678 80024A78 46163202 */  mul.s      $f8, $f6, $f22
/* 2567C 80024A7C E6140004 */  swc1       $f20, 0x4($s0)
/* 25680 80024A80 460C0282 */  mul.s      $f10, $f0, $f12
/* 25684 80024A84 E6040000 */  swc1       $f4, 0x0($s0)
/* 25688 80024A88 E6080008 */  swc1       $f8, 0x8($s0)
/* 2568C 80024A8C C7A60040 */  lwc1       $f6, 0x40($sp)
/* 25690 80024A90 46145102 */  mul.s      $f4, $f10, $f20
/* 25694 80024A94 00000000 */  nop
/* 25698 80024A98 460E3202 */  mul.s      $f8, $f6, $f14
/* 2569C 80024A9C 46082280 */  add.s      $f10, $f4, $f8
/* 256A0 80024AA0 46161182 */  mul.s      $f6, $f2, $f22
/* 256A4 80024AA4 E60A0010 */  swc1       $f10, 0x10($s0)
/* 256A8 80024AA8 460E1402 */  mul.s      $f16, $f2, $f14
/* 256AC 80024AAC E6060014 */  swc1       $f6, 0x14($s0)
/* 256B0 80024AB0 C7A40040 */  lwc1       $f4, 0x40($sp)
/* 256B4 80024AB4 460C2482 */  mul.s      $f18, $f4, $f12
/* 256B8 80024AB8 00000000 */  nop
/* 256BC 80024ABC 46148202 */  mul.s      $f8, $f16, $f20
/* 256C0 80024AC0 46124280 */  add.s      $f10, $f8, $f18
/* 256C4 80024AC4 46149182 */  mul.s      $f6, $f18, $f20
/* 256C8 80024AC8 E60A0018 */  swc1       $f10, 0x18($s0)
/* 256CC 80024ACC 46160202 */  mul.s      $f8, $f0, $f22
/* 256D0 80024AD0 46103100 */  add.s      $f4, $f6, $f16
/* 256D4 80024AD4 E6080024 */  swc1       $f8, 0x24($s0)
/* 256D8 80024AD8 E6040020 */  swc1       $f4, 0x20($s0)
/* 256DC 80024ADC C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 256E0 80024AE0 46005187 */  neg.s      $f6, $f10
/* 256E4 80024AE4 460E3102 */  mul.s      $f4, $f6, $f14
/* 256E8 80024AE8 00000000 */  nop
/* 256EC 80024AEC 46142202 */  mul.s      $f8, $f4, $f20
/* 256F0 80024AF0 00000000 */  nop
/* 256F4 80024AF4 460C1282 */  mul.s      $f10, $f2, $f12
/* 256F8 80024AF8 460A4180 */  add.s      $f6, $f8, $f10
/* 256FC 80024AFC E6060028 */  swc1       $f6, 0x28($s0)
/* 25700 80024B00 8FBF002C */  lw         $ra, 0x2C($sp)
/* 25704 80024B04 8FB00028 */  lw         $s0, 0x28($sp)
/* 25708 80024B08 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 2570C 80024B0C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 25710 80024B10 03E00008 */  jr         $ra
/* 25714 80024B14 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80024B18
/* 25718 80024B18 44856000 */  mtc1       $a1, $f12
/* 2571C 80024B1C 44867000 */  mtc1       $a2, $f14
/* 25720 80024B20 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 25724 80024B24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25728 80024B28 AFA40058 */  sw         $a0, 0x58($sp)
/* 2572C 80024B2C 44056000 */  mfc1       $a1, $f12
/* 25730 80024B30 44067000 */  mfc1       $a2, $f14
/* 25734 80024B34 AFA70064 */  sw         $a3, 0x64($sp)
/* 25738 80024B38 0C009274 */  jal        func_800249D0
/* 2573C 80024B3C 27A40018 */   addiu     $a0, $sp, 0x18
/* 25740 80024B40 27A40018 */  addiu      $a0, $sp, 0x18
/* 25744 80024B44 0C01B08C */  jal        guMtxF2L
/* 25748 80024B48 8FA50058 */   lw        $a1, 0x58($sp)
/* 2574C 80024B4C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 25750 80024B50 27BD0058 */  addiu      $sp, $sp, 0x58
/* 25754 80024B54 03E00008 */  jr         $ra
/* 25758 80024B58 00000000 */   nop
/* 2575C 80024B5C 00000000 */  nop
