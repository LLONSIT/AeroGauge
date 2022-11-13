.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80025170
/* 25D70 80025170 3C018009 */  lui        $at, %hi(D_8008CE30)
/* 25D74 80025174 44856000 */  mtc1       $a1, $f12
/* 25D78 80025178 C424CE30 */  lwc1       $f4, %lo(D_8008CE30)($at)
/* 25D7C 8002517C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 25D80 80025180 F7B60018 */  sdc1       $f22, 0x18($sp)
/* 25D84 80025184 46046302 */  mul.s      $f12, $f12, $f4
/* 25D88 80025188 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 25D8C 8002518C 4486A000 */  mtc1       $a2, $f20
/* 25D90 80025190 4487B000 */  mtc1       $a3, $f22
/* 25D94 80025194 AFBF0024 */  sw         $ra, 0x24($sp)
/* 25D98 80025198 AFA40050 */  sw         $a0, 0x50($sp)
/* 25D9C 8002519C 0C019B54 */  jal        __sinf
/* 25DA0 800251A0 E7AC0054 */   swc1      $f12, 0x54($sp)
/* 25DA4 800251A4 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 25DA8 800251A8 0C01AB20 */  jal        __cosf
/* 25DAC 800251AC E7A0004C */   swc1      $f0, 0x4C($sp)
/* 25DB0 800251B0 4614A302 */  mul.s      $f12, $f20, $f20
/* 25DB4 800251B4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 25DB8 800251B8 44817000 */  mtc1       $at, $f14
/* 25DBC 800251BC 8FA40050 */  lw         $a0, 0x50($sp)
/* 25DC0 800251C0 44801000 */  mtc1       $zero, $f2
/* 25DC4 800251C4 C7B2004C */  lwc1       $f18, 0x4C($sp)
/* 25DC8 800251C8 E48E003C */  swc1       $f14, 0x3C($a0)
/* 25DCC 800251CC 460C7181 */  sub.s      $f6, $f14, $f12
/* 25DD0 800251D0 E482000C */  swc1       $f2, 0xC($a0)
/* 25DD4 800251D4 E482001C */  swc1       $f2, 0x1C($a0)
/* 25DD8 800251D8 E482002C */  swc1       $f2, 0x2C($a0)
/* 25DDC 800251DC 46003202 */  mul.s      $f8, $f6, $f0
/* 25DE0 800251E0 E4820030 */  swc1       $f2, 0x30($a0)
/* 25DE4 800251E4 E4820034 */  swc1       $f2, 0x34($a0)
/* 25DE8 800251E8 E4820038 */  swc1       $f2, 0x38($a0)
/* 25DEC 800251EC 46007401 */  sub.s      $f16, $f14, $f0
/* 25DF0 800251F0 460C4280 */  add.s      $f10, $f8, $f12
/* 25DF4 800251F4 E48A0000 */  swc1       $f10, 0x0($a0)
/* 25DF8 800251F8 C7A40060 */  lwc1       $f4, 0x60($sp)
/* 25DFC 800251FC 4604B182 */  mul.s      $f6, $f22, $f4
/* 25E00 80025200 00000000 */  nop
/* 25E04 80025204 46103202 */  mul.s      $f8, $f6, $f16
/* 25E08 80025208 00000000 */  nop
/* 25E0C 8002520C 4612A282 */  mul.s      $f10, $f20, $f18
/* 25E10 80025210 E7A80030 */  swc1       $f8, 0x30($sp)
/* 25E14 80025214 4616B302 */  mul.s      $f12, $f22, $f22
/* 25E18 80025218 E7AA002C */  swc1       $f10, 0x2C($sp)
/* 25E1C 8002521C C7A4002C */  lwc1       $f4, 0x2C($sp)
/* 25E20 80025220 46044181 */  sub.s      $f6, $f8, $f4
/* 25E24 80025224 E4860024 */  swc1       $f6, 0x24($a0)
/* 25E28 80025228 C7A80030 */  lwc1       $f8, 0x30($sp)
/* 25E2C 8002522C C7AA002C */  lwc1       $f10, 0x2C($sp)
/* 25E30 80025230 44813000 */  mtc1       $at, $f6
/* 25E34 80025234 E7B00034 */  swc1       $f16, 0x34($sp)
/* 25E38 80025238 46085100 */  add.s      $f4, $f10, $f8
/* 25E3C 8002523C 460C3281 */  sub.s      $f10, $f6, $f12
/* 25E40 80025240 E4840018 */  swc1       $f4, 0x18($a0)
/* 25E44 80025244 46005202 */  mul.s      $f8, $f10, $f0
/* 25E48 80025248 460C4100 */  add.s      $f4, $f8, $f12
/* 25E4C 8002524C 4612B382 */  mul.s      $f14, $f22, $f18
/* 25E50 80025250 E4840014 */  swc1       $f4, 0x14($a0)
/* 25E54 80025254 C7A60060 */  lwc1       $f6, 0x60($sp)
/* 25E58 80025258 C7A80034 */  lwc1       $f8, 0x34($sp)
/* 25E5C 8002525C 46143282 */  mul.s      $f10, $f6, $f20
/* 25E60 80025260 00000000 */  nop
/* 25E64 80025264 46085082 */  mul.s      $f2, $f10, $f8
/* 25E68 80025268 44814000 */  mtc1       $at, $f8
/* 25E6C 8002526C 46027100 */  add.s      $f4, $f14, $f2
/* 25E70 80025270 460E1181 */  sub.s      $f6, $f2, $f14
/* 25E74 80025274 E4840020 */  swc1       $f4, 0x20($a0)
/* 25E78 80025278 E4860008 */  swc1       $f6, 0x8($a0)
/* 25E7C 8002527C C7AA0060 */  lwc1       $f10, 0x60($sp)
/* 25E80 80025280 460A5402 */  mul.s      $f16, $f10, $f10
/* 25E84 80025284 46104101 */  sub.s      $f4, $f8, $f16
/* 25E88 80025288 46002182 */  mul.s      $f6, $f4, $f0
/* 25E8C 8002528C 46103280 */  add.s      $f10, $f6, $f16
/* 25E90 80025290 4616A202 */  mul.s      $f8, $f20, $f22
/* 25E94 80025294 E48A0028 */  swc1       $f10, 0x28($a0)
/* 25E98 80025298 C7A40034 */  lwc1       $f4, 0x34($sp)
/* 25E9C 8002529C C7A60060 */  lwc1       $f6, 0x60($sp)
/* 25EA0 800252A0 46044002 */  mul.s      $f0, $f8, $f4
/* 25EA4 800252A4 00000000 */  nop
/* 25EA8 800252A8 46123082 */  mul.s      $f2, $f6, $f18
/* 25EAC 800252AC 46020281 */  sub.s      $f10, $f0, $f2
/* 25EB0 800252B0 46001200 */  add.s      $f8, $f2, $f0
/* 25EB4 800252B4 E48A0010 */  swc1       $f10, 0x10($a0)
/* 25EB8 800252B8 E4880004 */  swc1       $f8, 0x4($a0)
/* 25EBC 800252BC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 25EC0 800252C0 D7B60018 */  ldc1       $f22, 0x18($sp)
/* 25EC4 800252C4 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 25EC8 800252C8 03E00008 */  jr         $ra
/* 25ECC 800252CC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800252D0
/* 25ED0 800252D0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 25ED4 800252D4 44856000 */  mtc1       $a1, $f12
/* 25ED8 800252D8 44867000 */  mtc1       $a2, $f14
/* 25EDC 800252DC C7A40070 */  lwc1       $f4, 0x70($sp)
/* 25EE0 800252E0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 25EE4 800252E4 AFA40060 */  sw         $a0, 0x60($sp)
/* 25EE8 800252E8 44056000 */  mfc1       $a1, $f12
/* 25EEC 800252EC 44067000 */  mfc1       $a2, $f14
/* 25EF0 800252F0 AFA7006C */  sw         $a3, 0x6C($sp)
/* 25EF4 800252F4 27A40020 */  addiu      $a0, $sp, 0x20
/* 25EF8 800252F8 0C00945C */  jal        func_80025170
/* 25EFC 800252FC E7A40010 */   swc1      $f4, 0x10($sp)
/* 25F00 80025300 27A40020 */  addiu      $a0, $sp, 0x20
/* 25F04 80025304 0C01B08C */  jal        guMtxF2L
/* 25F08 80025308 8FA50060 */   lw        $a1, 0x60($sp)
/* 25F0C 8002530C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 25F10 80025310 27BD0060 */  addiu      $sp, $sp, 0x60
/* 25F14 80025314 03E00008 */  jr         $ra
/* 25F18 80025318 00000000 */   nop
/* 25F1C 8002531C 00000000 */  nop
