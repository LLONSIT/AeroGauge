.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel guMtxXFMF
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

glabel guMtxCatF
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
