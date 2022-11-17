.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel guLookAtF
/* 6C8F0 8006BCF0 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 6C8F4 8006BCF4 AFBF004C */  sw         $ra, 0x4C($sp)
/* 6C8F8 8006BCF8 AFB00048 */  sw         $s0, 0x48($sp)
/* 6C8FC 8006BCFC 00808025 */  or         $s0, $a0, $zero
/* 6C900 8006BD00 F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 6C904 8006BD04 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 6C908 8006BD08 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 6C90C 8006BD0C F7B80028 */  sdc1       $f24, 0x28($sp)
/* 6C910 8006BD10 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 6C914 8006BD14 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 6C918 8006BD18 AFA50054 */  sw         $a1, 0x54($sp)
/* 6C91C 8006BD1C AFA60058 */  sw         $a2, 0x58($sp)
/* 6C920 8006BD20 0C01B0CC */  jal        guMtxIdentF
/* 6C924 8006BD24 AFA7005C */   sw        $a3, 0x5C($sp)
/* 6C928 8006BD28 C7A40060 */  lwc1       $f4, 0x60($sp)
/* 6C92C 8006BD2C C7A60054 */  lwc1       $f6, 0x54($sp)
/* 6C930 8006BD30 C7A80064 */  lwc1       $f8, 0x64($sp)
/* 6C934 8006BD34 C7AA0058 */  lwc1       $f10, 0x58($sp)
/* 6C938 8006BD38 46062001 */  sub.s      $f0, $f4, $f6
/* 6C93C 8006BD3C C7A6005C */  lwc1       $f6, 0x5C($sp)
/* 6C940 8006BD40 C7A40068 */  lwc1       $f4, 0x68($sp)
/* 6C944 8006BD44 460A4581 */  sub.s      $f22, $f8, $f10
/* 6C948 8006BD48 46000202 */  mul.s      $f8, $f0, $f0
/* 6C94C 8006BD4C 46000506 */  mov.s      $f20, $f0
/* 6C950 8006BD50 46062601 */  sub.s      $f24, $f4, $f6
/* 6C954 8006BD54 4616B282 */  mul.s      $f10, $f22, $f22
/* 6C958 8006BD58 460A4100 */  add.s      $f4, $f8, $f10
/* 6C95C 8006BD5C 4618C182 */  mul.s      $f6, $f24, $f24
/* 6C960 8006BD60 0C01AB7C */  jal        sqrtf
/* 6C964 8006BD64 46062300 */   add.s     $f12, $f4, $f6
/* 6C968 8006BD68 3C01BFF0 */  lui        $at, (0xBFF00000 >> 16)
/* 6C96C 8006BD6C 44814800 */  mtc1       $at, $f9
/* 6C970 8006BD70 44804000 */  mtc1       $zero, $f8
/* 6C974 8006BD74 460002A1 */  cvt.d.s    $f10, $f0
/* 6C978 8006BD78 C7A60070 */  lwc1       $f6, 0x70($sp)
/* 6C97C 8006BD7C 462A4103 */  div.d      $f4, $f8, $f10
/* 6C980 8006BD80 C7AA0074 */  lwc1       $f10, 0x74($sp)
/* 6C984 8006BD84 462020A0 */  cvt.s.d    $f2, $f4
/* 6C988 8006BD88 4602A502 */  mul.s      $f20, $f20, $f2
/* 6C98C 8006BD8C 00000000 */  nop
/* 6C990 8006BD90 4602B582 */  mul.s      $f22, $f22, $f2
/* 6C994 8006BD94 00000000 */  nop
/* 6C998 8006BD98 4602C602 */  mul.s      $f24, $f24, $f2
/* 6C99C 8006BD9C 00000000 */  nop
/* 6C9A0 8006BDA0 46183202 */  mul.s      $f8, $f6, $f24
/* 6C9A4 8006BDA4 00000000 */  nop
/* 6C9A8 8006BDA8 46165102 */  mul.s      $f4, $f10, $f22
/* 6C9AC 8006BDAC 46044681 */  sub.s      $f26, $f8, $f4
/* 6C9B0 8006BDB0 46145202 */  mul.s      $f8, $f10, $f20
/* 6C9B4 8006BDB4 C7A4006C */  lwc1       $f4, 0x6C($sp)
/* 6C9B8 8006BDB8 46182282 */  mul.s      $f10, $f4, $f24
/* 6C9BC 8006BDBC 460A4701 */  sub.s      $f28, $f8, $f10
/* 6C9C0 8006BDC0 46162202 */  mul.s      $f8, $f4, $f22
/* 6C9C4 8006BDC4 00000000 */  nop
/* 6C9C8 8006BDC8 46143282 */  mul.s      $f10, $f6, $f20
/* 6C9CC 8006BDCC 460A4781 */  sub.s      $f30, $f8, $f10
/* 6C9D0 8006BDD0 461AD102 */  mul.s      $f4, $f26, $f26
/* 6C9D4 8006BDD4 00000000 */  nop
/* 6C9D8 8006BDD8 461CE182 */  mul.s      $f6, $f28, $f28
/* 6C9DC 8006BDDC 46062200 */  add.s      $f8, $f4, $f6
/* 6C9E0 8006BDE0 461EF282 */  mul.s      $f10, $f30, $f30
/* 6C9E4 8006BDE4 0C01AB7C */  jal        sqrtf
/* 6C9E8 8006BDE8 460A4300 */   add.s     $f12, $f8, $f10
/* 6C9EC 8006BDEC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 6C9F0 8006BDF0 44812800 */  mtc1       $at, $f5
/* 6C9F4 8006BDF4 44802000 */  mtc1       $zero, $f4
/* 6C9F8 8006BDF8 460001A1 */  cvt.d.s    $f6, $f0
/* 6C9FC 8006BDFC 46262203 */  div.d      $f8, $f4, $f6
/* 6CA00 8006BE00 462040A0 */  cvt.s.d    $f2, $f8
/* 6CA04 8006BE04 4602D682 */  mul.s      $f26, $f26, $f2
/* 6CA08 8006BE08 00000000 */  nop
/* 6CA0C 8006BE0C 4602E702 */  mul.s      $f28, $f28, $f2
/* 6CA10 8006BE10 00000000 */  nop
/* 6CA14 8006BE14 4602F782 */  mul.s      $f30, $f30, $f2
/* 6CA18 8006BE18 00000000 */  nop
/* 6CA1C 8006BE1C 461EB282 */  mul.s      $f10, $f22, $f30
/* 6CA20 8006BE20 00000000 */  nop
/* 6CA24 8006BE24 461CC102 */  mul.s      $f4, $f24, $f28
/* 6CA28 8006BE28 00000000 */  nop
/* 6CA2C 8006BE2C 461AC182 */  mul.s      $f6, $f24, $f26
/* 6CA30 8006BE30 00000000 */  nop
/* 6CA34 8006BE34 461EA202 */  mul.s      $f8, $f20, $f30
/* 6CA38 8006BE38 46045381 */  sub.s      $f14, $f10, $f4
/* 6CA3C 8006BE3C 461CA282 */  mul.s      $f10, $f20, $f28
/* 6CA40 8006BE40 00000000 */  nop
/* 6CA44 8006BE44 461AB102 */  mul.s      $f4, $f22, $f26
/* 6CA48 8006BE48 E7AE006C */  swc1       $f14, 0x6C($sp)
/* 6CA4C 8006BE4C 46083401 */  sub.s      $f16, $f6, $f8
/* 6CA50 8006BE50 460E7182 */  mul.s      $f6, $f14, $f14
/* 6CA54 8006BE54 00000000 */  nop
/* 6CA58 8006BE58 46108202 */  mul.s      $f8, $f16, $f16
/* 6CA5C 8006BE5C E7B00070 */  swc1       $f16, 0x70($sp)
/* 6CA60 8006BE60 46045481 */  sub.s      $f18, $f10, $f4
/* 6CA64 8006BE64 46129102 */  mul.s      $f4, $f18, $f18
/* 6CA68 8006BE68 46083280 */  add.s      $f10, $f6, $f8
/* 6CA6C 8006BE6C E7B20074 */  swc1       $f18, 0x74($sp)
/* 6CA70 8006BE70 0C01AB7C */  jal        sqrtf
/* 6CA74 8006BE74 46045300 */   add.s     $f12, $f10, $f4
/* 6CA78 8006BE78 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 6CA7C 8006BE7C 44813800 */  mtc1       $at, $f7
/* 6CA80 8006BE80 44803000 */  mtc1       $zero, $f6
/* 6CA84 8006BE84 46000221 */  cvt.d.s    $f8, $f0
/* 6CA88 8006BE88 C7AE006C */  lwc1       $f14, 0x6C($sp)
/* 6CA8C 8006BE8C 46283283 */  div.d      $f10, $f6, $f8
/* 6CA90 8006BE90 C7AC0070 */  lwc1       $f12, 0x70($sp)
/* 6CA94 8006BE94 C7A40074 */  lwc1       $f4, 0x74($sp)
/* 6CA98 8006BE98 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 6CA9C 8006BE9C 462050A0 */  cvt.s.d    $f2, $f10
/* 6CAA0 8006BEA0 46027382 */  mul.s      $f14, $f14, $f2
/* 6CAA4 8006BEA4 00000000 */  nop
/* 6CAA8 8006BEA8 46026302 */  mul.s      $f12, $f12, $f2
/* 6CAAC 8006BEAC 00000000 */  nop
/* 6CAB0 8006BEB0 46022182 */  mul.s      $f6, $f4, $f2
/* 6CAB4 8006BEB4 E7A60074 */  swc1       $f6, 0x74($sp)
/* 6CAB8 8006BEB8 E61A0000 */  swc1       $f26, 0x0($s0)
/* 6CABC 8006BEBC E61C0010 */  swc1       $f28, 0x10($s0)
/* 6CAC0 8006BEC0 E61E0020 */  swc1       $f30, 0x20($s0)
/* 6CAC4 8006BEC4 C7A80054 */  lwc1       $f8, 0x54($sp)
/* 6CAC8 8006BEC8 C7A40058 */  lwc1       $f4, 0x58($sp)
/* 6CACC 8006BECC 461A4282 */  mul.s      $f10, $f8, $f26
/* 6CAD0 8006BED0 00000000 */  nop
/* 6CAD4 8006BED4 461C2182 */  mul.s      $f6, $f4, $f28
/* 6CAD8 8006BED8 C7A4005C */  lwc1       $f4, 0x5C($sp)
/* 6CADC 8006BEDC E60E0004 */  swc1       $f14, 0x4($s0)
/* 6CAE0 8006BEE0 E60C0014 */  swc1       $f12, 0x14($s0)
/* 6CAE4 8006BEE4 46065200 */  add.s      $f8, $f10, $f6
/* 6CAE8 8006BEE8 461E2282 */  mul.s      $f10, $f4, $f30
/* 6CAEC 8006BEEC 460A4180 */  add.s      $f6, $f8, $f10
/* 6CAF0 8006BEF0 46003107 */  neg.s      $f4, $f6
/* 6CAF4 8006BEF4 E6040030 */  swc1       $f4, 0x30($s0)
/* 6CAF8 8006BEF8 C7A00074 */  lwc1       $f0, 0x74($sp)
/* 6CAFC 8006BEFC E7AC0070 */  swc1       $f12, 0x70($sp)
/* 6CB00 8006BF00 E7AE006C */  swc1       $f14, 0x6C($sp)
/* 6CB04 8006BF04 C7AE0054 */  lwc1       $f14, 0x54($sp)
/* 6CB08 8006BF08 C7AC0058 */  lwc1       $f12, 0x58($sp)
/* 6CB0C 8006BF0C C7A2005C */  lwc1       $f2, 0x5C($sp)
/* 6CB10 8006BF10 E6000024 */  swc1       $f0, 0x24($s0)
/* 6CB14 8006BF14 C7A8006C */  lwc1       $f8, 0x6C($sp)
/* 6CB18 8006BF18 C7A60070 */  lwc1       $f6, 0x70($sp)
/* 6CB1C 8006BF1C E6140008 */  swc1       $f20, 0x8($s0)
/* 6CB20 8006BF20 46087282 */  mul.s      $f10, $f14, $f8
/* 6CB24 8006BF24 E6160018 */  swc1       $f22, 0x18($s0)
/* 6CB28 8006BF28 E6180028 */  swc1       $f24, 0x28($s0)
/* 6CB2C 8006BF2C 46066102 */  mul.s      $f4, $f12, $f6
/* 6CB30 8006BF30 46045200 */  add.s      $f8, $f10, $f4
/* 6CB34 8006BF34 46001182 */  mul.s      $f6, $f2, $f0
/* 6CB38 8006BF38 44800000 */  mtc1       $zero, $f0
/* 6CB3C 8006BF3C 00000000 */  nop
/* 6CB40 8006BF40 E600000C */  swc1       $f0, 0xC($s0)
/* 6CB44 8006BF44 E600001C */  swc1       $f0, 0x1C($s0)
/* 6CB48 8006BF48 E600002C */  swc1       $f0, 0x2C($s0)
/* 6CB4C 8006BF4C 46064280 */  add.s      $f10, $f8, $f6
/* 6CB50 8006BF50 46147202 */  mul.s      $f8, $f14, $f20
/* 6CB54 8006BF54 00000000 */  nop
/* 6CB58 8006BF58 46166182 */  mul.s      $f6, $f12, $f22
/* 6CB5C 8006BF5C 46005107 */  neg.s      $f4, $f10
/* 6CB60 8006BF60 E6040034 */  swc1       $f4, 0x34($s0)
/* 6CB64 8006BF64 46181102 */  mul.s      $f4, $f2, $f24
/* 6CB68 8006BF68 46064280 */  add.s      $f10, $f8, $f6
/* 6CB6C 8006BF6C 46045200 */  add.s      $f8, $f10, $f4
/* 6CB70 8006BF70 44815000 */  mtc1       $at, $f10
/* 6CB74 8006BF74 46004187 */  neg.s      $f6, $f8
/* 6CB78 8006BF78 E60A003C */  swc1       $f10, 0x3C($s0)
/* 6CB7C 8006BF7C E6060038 */  swc1       $f6, 0x38($s0)
/* 6CB80 8006BF80 8FBF004C */  lw         $ra, 0x4C($sp)
/* 6CB84 8006BF84 8FB00048 */  lw         $s0, 0x48($sp)
/* 6CB88 8006BF88 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 6CB8C 8006BF8C D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 6CB90 8006BF90 D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 6CB94 8006BF94 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 6CB98 8006BF98 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 6CB9C 8006BF9C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 6CBA0 8006BFA0 03E00008 */  jr         $ra
/* 6CBA4 8006BFA4 27BD0050 */   addiu     $sp, $sp, 0x50

glabel guLookAt
/* 6CBA8 8006BFA8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 6CBAC 8006BFAC C7A40080 */  lwc1       $f4, 0x80($sp)
/* 6CBB0 8006BFB0 44856000 */  mtc1       $a1, $f12
/* 6CBB4 8006BFB4 44867000 */  mtc1       $a2, $f14
/* 6CBB8 8006BFB8 44878000 */  mtc1       $a3, $f16
/* 6CBBC 8006BFBC E7A40010 */  swc1       $f4, 0x10($sp)
/* 6CBC0 8006BFC0 C7A40094 */  lwc1       $f4, 0x94($sp)
/* 6CBC4 8006BFC4 C7A60084 */  lwc1       $f6, 0x84($sp)
/* 6CBC8 8006BFC8 C7A80088 */  lwc1       $f8, 0x88($sp)
/* 6CBCC 8006BFCC C7AA008C */  lwc1       $f10, 0x8C($sp)
/* 6CBD0 8006BFD0 C7B20090 */  lwc1       $f18, 0x90($sp)
/* 6CBD4 8006BFD4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 6CBD8 8006BFD8 AFA40070 */  sw         $a0, 0x70($sp)
/* 6CBDC 8006BFDC 44056000 */  mfc1       $a1, $f12
/* 6CBE0 8006BFE0 44067000 */  mfc1       $a2, $f14
/* 6CBE4 8006BFE4 44078000 */  mfc1       $a3, $f16
/* 6CBE8 8006BFE8 27A40030 */  addiu      $a0, $sp, 0x30
/* 6CBEC 8006BFEC E7A40024 */  swc1       $f4, 0x24($sp)
/* 6CBF0 8006BFF0 E7A60014 */  swc1       $f6, 0x14($sp)
/* 6CBF4 8006BFF4 E7A80018 */  swc1       $f8, 0x18($sp)
/* 6CBF8 8006BFF8 E7AA001C */  swc1       $f10, 0x1C($sp)
/* 6CBFC 8006BFFC 0C01AF3C */  jal        guLookAtF
/* 6CC00 8006C000 E7B20020 */   swc1      $f18, 0x20($sp)
/* 6CC04 8006C004 27A40030 */  addiu      $a0, $sp, 0x30
/* 6CC08 8006C008 0C01B08C */  jal        guMtxF2L
/* 6CC0C 8006C00C 8FA50070 */   lw        $a1, 0x70($sp)
/* 6CC10 8006C010 8FBF002C */  lw         $ra, 0x2C($sp)
/* 6CC14 8006C014 27BD0070 */  addiu      $sp, $sp, 0x70
/* 6CC18 8006C018 03E00008 */  jr         $ra
/* 6CC1C 8006C01C 00000000 */   nop
