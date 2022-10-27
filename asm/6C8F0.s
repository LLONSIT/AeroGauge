.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006BCF0
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
/* 6C920 8006BD20 0C01B0CC */  jal        func_8006C330
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
/* 6C960 8006BD60 0C01AB7C */  jal        func_8006ADF0
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
/* 6C9E4 8006BDE4 0C01AB7C */  jal        func_8006ADF0
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
/* 6CA70 8006BE70 0C01AB7C */  jal        func_8006ADF0
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

glabel func_8006BFA8
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
/* 6CBFC 8006BFFC 0C01AF3C */  jal        func_8006BCF0
/* 6CC00 8006C000 E7B20020 */   swc1      $f18, 0x20($sp)
/* 6CC04 8006C004 27A40030 */  addiu      $a0, $sp, 0x30
/* 6CC08 8006C008 0C01B08C */  jal        func_8006C230
/* 6CC0C 8006C00C 8FA50070 */   lw        $a1, 0x70($sp)
/* 6CC10 8006C010 8FBF002C */  lw         $ra, 0x2C($sp)
/* 6CC14 8006C014 27BD0070 */  addiu      $sp, $sp, 0x70
/* 6CC18 8006C018 03E00008 */  jr         $ra
/* 6CC1C 8006C01C 00000000 */   nop

glabel func_8006C020
/* 6CC20 8006C020 44856000 */  mtc1       $a1, $f12
/* 6CC24 8006C024 C4840000 */  lwc1       $f4, 0x0($a0)
/* 6CC28 8006C028 44867000 */  mtc1       $a2, $f14
/* 6CC2C 8006C02C C4880010 */  lwc1       $f8, 0x10($a0)
/* 6CC30 8006C030 460C2182 */  mul.s      $f6, $f4, $f12
/* 6CC34 8006C034 44878000 */  mtc1       $a3, $f16
/* 6CC38 8006C038 C4840020 */  lwc1       $f4, 0x20($a0)
/* 6CC3C 8006C03C 460E4282 */  mul.s      $f10, $f8, $f14
/* 6CC40 8006C040 8FAE0010 */  lw         $t6, 0x10($sp)
/* 6CC44 8006C044 46102202 */  mul.s      $f8, $f4, $f16
/* 6CC48 8006C048 460A3480 */  add.s      $f18, $f6, $f10
/* 6CC4C 8006C04C C48A0030 */  lwc1       $f10, 0x30($a0)
/* 6CC50 8006C050 46089180 */  add.s      $f6, $f18, $f8
/* 6CC54 8006C054 46065100 */  add.s      $f4, $f10, $f6
/* 6CC58 8006C058 E5C40000 */  swc1       $f4, 0x0($t6)
/* 6CC5C 8006C05C C4920004 */  lwc1       $f18, 0x4($a0)
/* 6CC60 8006C060 C48A0014 */  lwc1       $f10, 0x14($a0)
/* 6CC64 8006C064 8FAF0014 */  lw         $t7, 0x14($sp)
/* 6CC68 8006C068 460C9202 */  mul.s      $f8, $f18, $f12
/* 6CC6C 8006C06C C4920024 */  lwc1       $f18, 0x24($a0)
/* 6CC70 8006C070 460E5182 */  mul.s      $f6, $f10, $f14
/* 6CC74 8006C074 46064100 */  add.s      $f4, $f8, $f6
/* 6CC78 8006C078 46109282 */  mul.s      $f10, $f18, $f16
/* 6CC7C 8006C07C C4860034 */  lwc1       $f6, 0x34($a0)
/* 6CC80 8006C080 460A2200 */  add.s      $f8, $f4, $f10
/* 6CC84 8006C084 46083480 */  add.s      $f18, $f6, $f8
/* 6CC88 8006C088 E5F20000 */  swc1       $f18, 0x0($t7)
/* 6CC8C 8006C08C C4840008 */  lwc1       $f4, 0x8($a0)
/* 6CC90 8006C090 C4860018 */  lwc1       $f6, 0x18($a0)
/* 6CC94 8006C094 8FB80018 */  lw         $t8, 0x18($sp)
/* 6CC98 8006C098 460C2282 */  mul.s      $f10, $f4, $f12
/* 6CC9C 8006C09C C4840028 */  lwc1       $f4, 0x28($a0)
/* 6CCA0 8006C0A0 460E3202 */  mul.s      $f8, $f6, $f14
/* 6CCA4 8006C0A4 46085480 */  add.s      $f18, $f10, $f8
/* 6CCA8 8006C0A8 46102182 */  mul.s      $f6, $f4, $f16
/* 6CCAC 8006C0AC C4880038 */  lwc1       $f8, 0x38($a0)
/* 6CCB0 8006C0B0 46069280 */  add.s      $f10, $f18, $f6
/* 6CCB4 8006C0B4 460A4100 */  add.s      $f4, $f8, $f10
/* 6CCB8 8006C0B8 03E00008 */  jr         $ra
/* 6CCBC 8006C0BC E7040000 */   swc1      $f4, 0x0($t8)

glabel func_8006C0C0
/* 6CCC0 8006C0C0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6CCC4 8006C0C4 44800000 */  mtc1       $zero, $f0
/* 6CCC8 8006C0C8 27A3001C */  addiu      $v1, $sp, 0x1C
/* 6CCCC 8006C0CC 27AB005C */  addiu      $t3, $sp, 0x5C
/* 6CCD0 8006C0D0 00803825 */  or         $a3, $a0, $zero
/* 6CCD4 8006C0D4 00A04025 */  or         $t0, $a1, $zero
/* 6CCD8 8006C0D8 240A0010 */  addiu      $t2, $zero, 0x10
.L8006C0DC:
/* 6CCDC 8006C0DC 00002025 */  or         $a0, $zero, $zero
/* 6CCE0 8006C0E0 00602825 */  or         $a1, $v1, $zero
/* 6CCE4 8006C0E4 01004825 */  or         $t1, $t0, $zero
/* 6CCE8 8006C0E8 E4A00000 */  swc1       $f0, 0x0($a1)
/* 6CCEC 8006C0EC C52C0000 */  lwc1       $f12, 0x0($t1)
/* 6CCF0 8006C0F0 C4EE0000 */  lwc1       $f14, 0x0($a3)
/* 6CCF4 8006C0F4 24840004 */  addiu      $a0, $a0, 0x4
/* 6CCF8 8006C0F8 C4B00000 */  lwc1       $f16, 0x0($a1)
/* 6CCFC 8006C0FC 460C7482 */  mul.s      $f18, $f14, $f12
/* 6CD00 8006C100 508A0020 */  beql       $a0, $t2, .L8006C184
/* 6CD04 8006C104 46128380 */   add.s     $f14, $f16, $f18
/* 6CD08 8006C108 46128380 */  add.s      $f14, $f16, $f18
.L8006C10C:
/* 6CD0C 8006C10C 24840004 */  addiu      $a0, $a0, 0x4
/* 6CD10 8006C110 24A50004 */  addiu      $a1, $a1, 0x4
/* 6CD14 8006C114 25290004 */  addiu      $t1, $t1, 0x4
/* 6CD18 8006C118 E4AEFFFC */  swc1       $f14, -0x4($a1)
/* 6CD1C 8006C11C C4EE0004 */  lwc1       $f14, 0x4($a3)
/* 6CD20 8006C120 C52C000C */  lwc1       $f12, 0xC($t1)
/* 6CD24 8006C124 C4AAFFFC */  lwc1       $f10, -0x4($a1)
/* 6CD28 8006C128 460C7302 */  mul.s      $f12, $f14, $f12
/* 6CD2C 8006C12C 460C5300 */  add.s      $f12, $f10, $f12
/* 6CD30 8006C130 E4ACFFFC */  swc1       $f12, -0x4($a1)
/* 6CD34 8006C134 C4EC0008 */  lwc1       $f12, 0x8($a3)
/* 6CD38 8006C138 C52A001C */  lwc1       $f10, 0x1C($t1)
/* 6CD3C 8006C13C C4AEFFFC */  lwc1       $f14, -0x4($a1)
/* 6CD40 8006C140 460A6282 */  mul.s      $f10, $f12, $f10
/* 6CD44 8006C144 460A7280 */  add.s      $f10, $f14, $f10
/* 6CD48 8006C148 E4AAFFFC */  swc1       $f10, -0x4($a1)
/* 6CD4C 8006C14C C4EA000C */  lwc1       $f10, 0xC($a3)
/* 6CD50 8006C150 C52E002C */  lwc1       $f14, 0x2C($t1)
/* 6CD54 8006C154 C4ACFFFC */  lwc1       $f12, -0x4($a1)
/* 6CD58 8006C158 E4A00000 */  swc1       $f0, 0x0($a1)
/* 6CD5C 8006C15C 460E5382 */  mul.s      $f14, $f10, $f14
/* 6CD60 8006C160 C4B00000 */  lwc1       $f16, 0x0($a1)
/* 6CD64 8006C164 460E6380 */  add.s      $f14, $f12, $f14
/* 6CD68 8006C168 E4AEFFFC */  swc1       $f14, -0x4($a1)
/* 6CD6C 8006C16C C4EE0000 */  lwc1       $f14, 0x0($a3)
/* 6CD70 8006C170 C52C0000 */  lwc1       $f12, 0x0($t1)
/* 6CD74 8006C174 460C7482 */  mul.s      $f18, $f14, $f12
/* 6CD78 8006C178 548AFFE4 */  bnel       $a0, $t2, .L8006C10C
/* 6CD7C 8006C17C 46128380 */   add.s     $f14, $f16, $f18
/* 6CD80 8006C180 46128380 */  add.s      $f14, $f16, $f18
.L8006C184:
/* 6CD84 8006C184 24A50004 */  addiu      $a1, $a1, 0x4
/* 6CD88 8006C188 25290004 */  addiu      $t1, $t1, 0x4
/* 6CD8C 8006C18C E4AEFFFC */  swc1       $f14, -0x4($a1)
/* 6CD90 8006C190 C52C000C */  lwc1       $f12, 0xC($t1)
/* 6CD94 8006C194 C4EE0004 */  lwc1       $f14, 0x4($a3)
/* 6CD98 8006C198 C4AAFFFC */  lwc1       $f10, -0x4($a1)
/* 6CD9C 8006C19C 460C7302 */  mul.s      $f12, $f14, $f12
/* 6CDA0 8006C1A0 460C5300 */  add.s      $f12, $f10, $f12
/* 6CDA4 8006C1A4 E4ACFFFC */  swc1       $f12, -0x4($a1)
/* 6CDA8 8006C1A8 C52A001C */  lwc1       $f10, 0x1C($t1)
/* 6CDAC 8006C1AC C4EC0008 */  lwc1       $f12, 0x8($a3)
/* 6CDB0 8006C1B0 C4AEFFFC */  lwc1       $f14, -0x4($a1)
/* 6CDB4 8006C1B4 460A6282 */  mul.s      $f10, $f12, $f10
/* 6CDB8 8006C1B8 460A7280 */  add.s      $f10, $f14, $f10
/* 6CDBC 8006C1BC E4AAFFFC */  swc1       $f10, -0x4($a1)
/* 6CDC0 8006C1C0 C52E002C */  lwc1       $f14, 0x2C($t1)
/* 6CDC4 8006C1C4 C4EA000C */  lwc1       $f10, 0xC($a3)
/* 6CDC8 8006C1C8 C4ACFFFC */  lwc1       $f12, -0x4($a1)
/* 6CDCC 8006C1CC 460E5382 */  mul.s      $f14, $f10, $f14
/* 6CDD0 8006C1D0 460E6380 */  add.s      $f14, $f12, $f14
/* 6CDD4 8006C1D4 E4AEFFFC */  swc1       $f14, -0x4($a1)
/* 6CDD8 8006C1D8 24630010 */  addiu      $v1, $v1, 0x10
/* 6CDDC 8006C1DC 006B082B */  sltu       $at, $v1, $t3
/* 6CDE0 8006C1E0 1420FFBE */  bnez       $at, .L8006C0DC
/* 6CDE4 8006C1E4 24E70010 */   addiu     $a3, $a3, 0x10
/* 6CDE8 8006C1E8 00C01825 */  or         $v1, $a2, $zero
/* 6CDEC 8006C1EC 27A4001C */  addiu      $a0, $sp, 0x1C
/* 6CDF0 8006C1F0 27A2005C */  addiu      $v0, $sp, 0x5C
.L8006C1F4:
/* 6CDF4 8006C1F4 C4860000 */  lwc1       $f6, 0x0($a0)
/* 6CDF8 8006C1F8 24840010 */  addiu      $a0, $a0, 0x10
/* 6CDFC 8006C1FC 24630010 */  addiu      $v1, $v1, 0x10
/* 6CE00 8006C200 E466FFF0 */  swc1       $f6, -0x10($v1)
/* 6CE04 8006C204 C488FFF4 */  lwc1       $f8, -0xC($a0)
/* 6CE08 8006C208 E468FFF4 */  swc1       $f8, -0xC($v1)
/* 6CE0C 8006C20C C490FFF8 */  lwc1       $f16, -0x8($a0)
/* 6CE10 8006C210 E470FFF8 */  swc1       $f16, -0x8($v1)
/* 6CE14 8006C214 C48AFFFC */  lwc1       $f10, -0x4($a0)
/* 6CE18 8006C218 1482FFF6 */  bne        $a0, $v0, .L8006C1F4
/* 6CE1C 8006C21C E46AFFFC */   swc1      $f10, -0x4($v1)
/* 6CE20 8006C220 03E00008 */  jr         $ra
/* 6CE24 8006C224 27BD0068 */   addiu     $sp, $sp, 0x68
/* 6CE28 8006C228 00000000 */  nop
/* 6CE2C 8006C22C 00000000 */  nop
