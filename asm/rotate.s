.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006B7F0
/* 6C3F0 8006B7F0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 6C3F4 8006B7F4 3C01800A */  lui        $at, %hi(D_80098D10)
/* 6C3F8 8006B7F8 C4248D10 */  lwc1       $f4, %lo(D_80098D10)($at)
/* 6C3FC 8006B7FC AFB00018 */  sw         $s0, 0x18($sp)
/* 6C400 8006B800 00808025 */  or         $s0, $a0, $zero
/* 6C404 8006B804 3C01801B */  lui        $at, %hi(D_801AAC20)
/* 6C408 8006B808 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6C40C 8006B80C AFA5003C */  sw         $a1, 0x3C($sp)
/* 6C410 8006B810 AFA60040 */  sw         $a2, 0x40($sp)
/* 6C414 8006B814 AFA70044 */  sw         $a3, 0x44($sp)
/* 6C418 8006B818 27A60048 */  addiu      $a2, $sp, 0x48
/* 6C41C 8006B81C 27A50044 */  addiu      $a1, $sp, 0x44
/* 6C420 8006B820 27A40040 */  addiu      $a0, $sp, 0x40
/* 6C424 8006B824 0C01B490 */  jal        guNormalize
/* 6C428 8006B828 E424AC20 */   swc1      $f4, %lo(D_801AAC20)($at)
/* 6C42C 8006B82C 3C01801B */  lui        $at, %hi(D_801AAC20)
/* 6C430 8006B830 C7AC003C */  lwc1       $f12, 0x3C($sp)
/* 6C434 8006B834 C426AC20 */  lwc1       $f6, %lo(D_801AAC20)($at)
/* 6C438 8006B838 46066302 */  mul.s      $f12, $f12, $f6
/* 6C43C 8006B83C 0C019B54 */  jal        sinf
/* 6C440 8006B840 E7AC003C */   swc1      $f12, 0x3C($sp)
/* 6C444 8006B844 C7AC003C */  lwc1       $f12, 0x3C($sp)
/* 6C448 8006B848 0C01AB20 */  jal        cosf
/* 6C44C 8006B84C E7A00034 */   swc1      $f0, 0x34($sp)
/* 6C450 8006B850 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 6C454 8006B854 C7A40044 */  lwc1       $f4, 0x44($sp)
/* 6C458 8006B858 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C45C 8006B85C 44814000 */  mtc1       $at, $f8
/* 6C460 8006B860 46045182 */  mul.s      $f6, $f10, $f4
/* 6C464 8006B864 02002025 */  or         $a0, $s0, $zero
/* 6C468 8006B868 46004081 */  sub.s      $f2, $f8, $f0
/* 6C46C 8006B86C C7A80048 */  lwc1       $f8, 0x48($sp)
/* 6C470 8006B870 E7A00030 */  swc1       $f0, 0x30($sp)
/* 6C474 8006B874 46023402 */  mul.s      $f16, $f6, $f2
/* 6C478 8006B878 00000000 */  nop
/* 6C47C 8006B87C 46082182 */  mul.s      $f6, $f4, $f8
/* 6C480 8006B880 E7B0002C */  swc1       $f16, 0x2C($sp)
/* 6C484 8006B884 46023482 */  mul.s      $f18, $f6, $f2
/* 6C488 8006B888 00000000 */  nop
/* 6C48C 8006B88C 460A4102 */  mul.s      $f4, $f8, $f10
/* 6C490 8006B890 E7B20028 */  swc1       $f18, 0x28($sp)
/* 6C494 8006B894 46022182 */  mul.s      $f6, $f4, $f2
/* 6C498 8006B898 0C01B0CC */  jal        guMtxIdentF
/* 6C49C 8006B89C E7A60024 */   swc1      $f6, 0x24($sp)
/* 6C4A0 8006B8A0 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 6C4A4 8006B8A4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6C4A8 8006B8A8 44815000 */  mtc1       $at, $f10
/* 6C4AC 8006B8AC 46084002 */  mul.s      $f0, $f8, $f8
/* 6C4B0 8006B8B0 C7AC0030 */  lwc1       $f12, 0x30($sp)
/* 6C4B4 8006B8B4 C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 6C4B8 8006B8B8 C7B0002C */  lwc1       $f16, 0x2C($sp)
/* 6C4BC 8006B8BC C7B20028 */  lwc1       $f18, 0x28($sp)
/* 6C4C0 8006B8C0 46005101 */  sub.s      $f4, $f10, $f0
/* 6C4C4 8006B8C4 460C2182 */  mul.s      $f6, $f4, $f12
/* 6C4C8 8006B8C8 46003200 */  add.s      $f8, $f6, $f0
/* 6C4CC 8006B8CC E6080000 */  swc1       $f8, 0x0($s0)
/* 6C4D0 8006B8D0 C7AA0040 */  lwc1       $f10, 0x40($sp)
/* 6C4D4 8006B8D4 460E5102 */  mul.s      $f4, $f10, $f14
/* 6C4D8 8006B8D8 46049181 */  sub.s      $f6, $f18, $f4
/* 6C4DC 8006B8DC E6060024 */  swc1       $f6, 0x24($s0)
/* 6C4E0 8006B8E0 C7A80040 */  lwc1       $f8, 0x40($sp)
/* 6C4E4 8006B8E4 460E4282 */  mul.s      $f10, $f8, $f14
/* 6C4E8 8006B8E8 44814000 */  mtc1       $at, $f8
/* 6C4EC 8006B8EC 46125100 */  add.s      $f4, $f10, $f18
/* 6C4F0 8006B8F0 E6040018 */  swc1       $f4, 0x18($s0)
/* 6C4F4 8006B8F4 C7A60044 */  lwc1       $f6, 0x44($sp)
/* 6C4F8 8006B8F8 46063082 */  mul.s      $f2, $f6, $f6
/* 6C4FC 8006B8FC 46024281 */  sub.s      $f10, $f8, $f2
/* 6C500 8006B900 460C5102 */  mul.s      $f4, $f10, $f12
/* 6C504 8006B904 46022180 */  add.s      $f6, $f4, $f2
/* 6C508 8006B908 E6060014 */  swc1       $f6, 0x14($s0)
/* 6C50C 8006B90C C7A80044 */  lwc1       $f8, 0x44($sp)
/* 6C510 8006B910 C7A40024 */  lwc1       $f4, 0x24($sp)
/* 6C514 8006B914 460E4282 */  mul.s      $f10, $f8, $f14
/* 6C518 8006B918 46045180 */  add.s      $f6, $f10, $f4
/* 6C51C 8006B91C E6060020 */  swc1       $f6, 0x20($s0)
/* 6C520 8006B920 C7AA0044 */  lwc1       $f10, 0x44($sp)
/* 6C524 8006B924 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 6C528 8006B928 460E5102 */  mul.s      $f4, $f10, $f14
/* 6C52C 8006B92C 46044181 */  sub.s      $f6, $f8, $f4
/* 6C530 8006B930 44814000 */  mtc1       $at, $f8
/* 6C534 8006B934 E6060008 */  swc1       $f6, 0x8($s0)
/* 6C538 8006B938 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* 6C53C 8006B93C 460A5002 */  mul.s      $f0, $f10, $f10
/* 6C540 8006B940 46004101 */  sub.s      $f4, $f8, $f0
/* 6C544 8006B944 460C2182 */  mul.s      $f6, $f4, $f12
/* 6C548 8006B948 46003280 */  add.s      $f10, $f6, $f0
/* 6C54C 8006B94C E60A0028 */  swc1       $f10, 0x28($s0)
/* 6C550 8006B950 C7A80048 */  lwc1       $f8, 0x48($sp)
/* 6C554 8006B954 460E4102 */  mul.s      $f4, $f8, $f14
/* 6C558 8006B958 46048181 */  sub.s      $f6, $f16, $f4
/* 6C55C 8006B95C E6060010 */  swc1       $f6, 0x10($s0)
/* 6C560 8006B960 C7AA0048 */  lwc1       $f10, 0x48($sp)
/* 6C564 8006B964 460E5202 */  mul.s      $f8, $f10, $f14
/* 6C568 8006B968 46104100 */  add.s      $f4, $f8, $f16
/* 6C56C 8006B96C E6040004 */  swc1       $f4, 0x4($s0)
/* 6C570 8006B970 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6C574 8006B974 8FB00018 */  lw         $s0, 0x18($sp)
/* 6C578 8006B978 27BD0038 */  addiu      $sp, $sp, 0x38
/* 6C57C 8006B97C 03E00008 */  jr         $ra
/* 6C580 8006B980 00000000 */   nop

glabel func_8006B984
/* 6C584 8006B984 44856000 */  mtc1       $a1, $f12
/* 6C588 8006B988 44867000 */  mtc1       $a2, $f14
/* 6C58C 8006B98C 44878000 */  mtc1       $a3, $f16
/* 6C590 8006B990 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 6C594 8006B994 C7A40070 */  lwc1       $f4, 0x70($sp)
/* 6C598 8006B998 AFBF001C */  sw         $ra, 0x1C($sp)
/* 6C59C 8006B99C AFA40060 */  sw         $a0, 0x60($sp)
/* 6C5A0 8006B9A0 44056000 */  mfc1       $a1, $f12
/* 6C5A4 8006B9A4 44067000 */  mfc1       $a2, $f14
/* 6C5A8 8006B9A8 44078000 */  mfc1       $a3, $f16
/* 6C5AC 8006B9AC 27A40020 */  addiu      $a0, $sp, 0x20
/* 6C5B0 8006B9B0 0C01ADFC */  jal        func_8006B7F0
/* 6C5B4 8006B9B4 E7A40010 */   swc1      $f4, 0x10($sp)
/* 6C5B8 8006B9B8 27A40020 */  addiu      $a0, $sp, 0x20
/* 6C5BC 8006B9BC 0C01B08C */  jal        guMtxF2L
/* 6C5C0 8006B9C0 8FA50060 */   lw        $a1, 0x60($sp)
/* 6C5C4 8006B9C4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6C5C8 8006B9C8 27BD0060 */  addiu      $sp, $sp, 0x60
/* 6C5CC 8006B9CC 03E00008 */  jr         $ra
/* 6C5D0 8006B9D0 00000000 */   nop
/* 6C5D4 8006B9D4 00000000 */  nop
/* 6C5D8 8006B9D8 00000000 */  nop
/* 6C5DC 8006B9DC 00000000 */  nop
