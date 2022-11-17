.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80079E50
/* 7AA50 80079E50 44853000 */  mtc1       $a1, $f6
/* 7AA54 80079E54 C4840010 */  lwc1       $f4, 0x10($a0)
/* 7AA58 80079E58 C4900014 */  lwc1       $f16, 0x14($a0)
/* 7AA5C 80079E5C 46803220 */  cvt.s.w    $f8, $f6
/* 7AA60 80079E60 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 7AA64 80079E64 44812800 */  mtc1       $at, $f5
/* 7AA68 80079E68 3C014010 */  lui        $at, (0x40100000 >> 16)
/* 7AA6C 80079E6C 46082282 */  mul.s      $f10, $f4, $f8
/* 7AA70 80079E70 44802000 */  mtc1       $zero, $f4
/* 7AA74 80079E74 460A8480 */  add.s      $f18, $f16, $f10
/* 7AA78 80079E78 E4920014 */  swc1       $f18, 0x14($a0)
/* 7AA7C 80079E7C C4860014 */  lwc1       $f6, 0x14($a0)
/* 7AA80 80079E80 46003021 */  cvt.d.s    $f0, $f6
/* 7AA84 80079E84 44803000 */  mtc1       $zero, $f6
/* 7AA88 80079E88 4620203C */  c.lt.d     $f4, $f0
/* 7AA8C 80079E8C 00000000 */  nop
/* 7AA90 80079E90 45020009 */  bc1fl      .L80079EB8
/* 7AA94 80079E94 462004A0 */   cvt.s.d   $f18, $f0
/* 7AA98 80079E98 44814800 */  mtc1       $at, $f9
/* 7AA9C 80079E9C 44804000 */  mtc1       $zero, $f8
/* 7AAA0 80079EA0 00000000 */  nop
/* 7AAA4 80079EA4 46280401 */  sub.d      $f16, $f0, $f8
/* 7AAA8 80079EA8 462082A0 */  cvt.s.d    $f10, $f16
/* 7AAAC 80079EAC 10000003 */  b          .L80079EBC
/* 7AAB0 80079EB0 E48A0014 */   swc1      $f10, 0x14($a0)
/* 7AAB4 80079EB4 462004A0 */  cvt.s.d    $f18, $f0
.L80079EB8:
/* 7AAB8 80079EB8 E4920014 */  swc1       $f18, 0x14($a0)
.L80079EBC:
/* 7AABC 80079EBC C4820014 */  lwc1       $f2, 0x14($a0)
/* 7AAC0 80079EC0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 7AAC4 80079EC4 44814800 */  mtc1       $at, $f9
/* 7AAC8 80079EC8 4606103C */  c.lt.s     $f2, $f6
/* 7AACC 80079ECC 44804000 */  mtc1       $zero, $f8
/* 7AAD0 80079ED0 45020003 */  bc1fl      .L80079EE0
/* 7AAD4 80079ED4 46001121 */   cvt.d.s   $f4, $f2
/* 7AAD8 80079ED8 46001087 */  neg.s      $f2, $f2
/* 7AADC 80079EDC 46001121 */  cvt.d.s    $f4, $f2
.L80079EE0:
/* 7AAE0 80079EE0 C48A001C */  lwc1       $f10, 0x1C($a0)
/* 7AAE4 80079EE4 46282401 */  sub.d      $f16, $f4, $f8
/* 7AAE8 80079EE8 462080A0 */  cvt.s.d    $f2, $f16
/* 7AAEC 80079EEC 46025002 */  mul.s      $f0, $f10, $f2
/* 7AAF0 80079EF0 03E00008 */  jr         $ra
/* 7AAF4 80079EF4 00000000 */   nop

glabel _filterBuffer
/* 7AAF8 80079EF8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7AAFC 80079EFC AFBF0014 */  sw         $ra, 0x14($sp)
/* 7AB00 80079F00 30A2FFFF */  andi       $v0, $a1, 0xFFFF
/* 7AB04 80079F04 0006C040 */  sll        $t8, $a2, 1
/* 7AB08 80079F08 3319FFFF */  andi       $t9, $t8, 0xFFFF
/* 7AB0C 80079F0C 00027C00 */  sll        $t7, $v0, 16
/* 7AB10 80079F10 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7AB14 80079F14 3C0A0B00 */  lui        $t2, (0xB000020 >> 16)
/* 7AB18 80079F18 00417025 */  or         $t6, $v0, $at
/* 7AB1C 80079F1C 01F94825 */  or         $t1, $t7, $t9
/* 7AB20 80079F20 354A0020 */  ori        $t2, $t2, (0xB000020 & 0xFFFF)
/* 7AB24 80079F24 00804025 */  or         $t0, $a0, $zero
/* 7AB28 80079F28 ACE90004 */  sw         $t1, 0x4($a3)
/* 7AB2C 80079F2C ACEE0000 */  sw         $t6, 0x0($a3)
/* 7AB30 80079F30 ACEA0008 */  sw         $t2, 0x8($a3)
/* 7AB34 80079F34 AFA80028 */  sw         $t0, 0x28($sp)
/* 7AB38 80079F38 AFA70034 */  sw         $a3, 0x34($sp)
/* 7AB3C 80079F3C 0C019FAC */  jal        osVirtualToPhysical
/* 7AB40 80079F40 24840008 */   addiu     $a0, $a0, 0x8
/* 7AB44 80079F44 8FA70034 */  lw         $a3, 0x34($sp)
/* 7AB48 80079F48 8FA80028 */  lw         $t0, 0x28($sp)
/* 7AB4C 80079F4C 3C010E00 */  lui        $at, (0xE000000 >> 16)
/* 7AB50 80079F50 24E30010 */  addiu      $v1, $a3, 0x10
/* 7AB54 80079F54 246B0008 */  addiu      $t3, $v1, 0x8
/* 7AB58 80079F58 ACE2000C */  sw         $v0, 0xC($a3)
/* 7AB5C 80079F5C AFAB0024 */  sw         $t3, 0x24($sp)
/* 7AB60 80079F60 8D0C002C */  lw         $t4, 0x2C($t0)
/* 7AB64 80079F64 850F0002 */  lh         $t7, 0x2($t0)
/* 7AB68 80079F68 318D00FF */  andi       $t5, $t4, 0xFF
/* 7AB6C 80079F6C 000D7400 */  sll        $t6, $t5, 16
/* 7AB70 80079F70 01C1C025 */  or         $t8, $t6, $at
/* 7AB74 80079F74 31F9FFFF */  andi       $t9, $t7, 0xFFFF
/* 7AB78 80079F78 03194825 */  or         $t1, $t8, $t9
/* 7AB7C 80079F7C AC690000 */  sw         $t1, 0x0($v1)
/* 7AB80 80079F80 8D040028 */  lw         $a0, 0x28($t0)
/* 7AB84 80079F84 0C019FAC */  jal        osVirtualToPhysical
/* 7AB88 80079F88 AFA30018 */   sw        $v1, 0x18($sp)
/* 7AB8C 80079F8C 8FA50018 */  lw         $a1, 0x18($sp)
/* 7AB90 80079F90 8FA80028 */  lw         $t0, 0x28($sp)
/* 7AB94 80079F94 ACA20004 */  sw         $v0, 0x4($a1)
/* 7AB98 80079F98 AD00002C */  sw         $zero, 0x2C($t0)
/* 7AB9C 80079F9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7ABA0 80079FA0 8FA20024 */  lw         $v0, 0x24($sp)
/* 7ABA4 80079FA4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7ABA8 80079FA8 03E00008 */  jr         $ra
/* 7ABAC 80079FAC 00000000 */   nop

glabel _saveBuffer
/* 7ABB0 80079FB0 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7ABB4 80079FB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7ABB8 80079FB8 AFB00018 */  sw         $s0, 0x18($sp)
/* 7ABBC 80079FBC 8C83001C */  lw         $v1, 0x1C($a0)
/* 7ABC0 80079FC0 8C820014 */  lw         $v0, 0x14($a0)
/* 7ABC4 80079FC4 8FA80070 */  lw         $t0, 0x70($sp)
/* 7ABC8 80079FC8 00037040 */  sll        $t6, $v1, 1
/* 7ABCC 80079FCC 00A2082B */  sltu       $at, $a1, $v0
/* 7ABD0 80079FD0 00805025 */  or         $t2, $a0, $zero
/* 7ABD4 80079FD4 00C06825 */  or         $t5, $a2, $zero
/* 7ABD8 80079FD8 00E05825 */  or         $t3, $a3, $zero
/* 7ABDC 80079FDC 10200002 */  beqz       $at, .L80079FE8
/* 7ABE0 80079FE0 004E4821 */   addu      $t1, $v0, $t6
/* 7ABE4 80079FE4 00AE2821 */  addu       $a1, $a1, $t6
.L80079FE8:
/* 7ABE8 80079FE8 000B3040 */  sll        $a2, $t3, 1
/* 7ABEC 80079FEC 00C53821 */  addu       $a3, $a2, $a1
/* 7ABF0 80079FF0 0127082B */  sltu       $at, $t1, $a3
/* 7ABF4 80079FF4 1020003C */  beqz       $at, .L8007A0E8
/* 7ABF8 80079FF8 25100008 */   addiu     $s0, $t0, 0x8
/* 7ABFC 80079FFC 01255823 */  subu       $t3, $t1, $a1
/* 7AC00 8007A000 000BC043 */  sra        $t8, $t3, 1
/* 7AC04 8007A004 3C0F0800 */  lui        $t7, (0x8000000 >> 16)
/* 7AC08 8007A008 AD0F0000 */  sw         $t7, 0x0($t0)
/* 7AC0C 8007A00C 00185840 */  sll        $t3, $t8, 1
/* 7AC10 8007A010 3178FFFF */  andi       $t8, $t3, 0xFFFF
/* 7AC14 8007A014 000D7C00 */  sll        $t7, $t5, 16
/* 7AC18 8007A018 01F8C825 */  or         $t9, $t7, $t8
/* 7AC1C 8007A01C 25100008 */  addiu      $s0, $t0, 0x8
/* 7AC20 8007A020 AD190004 */  sw         $t9, 0x4($t0)
/* 7AC24 8007A024 02006025 */  or         $t4, $s0, $zero
/* 7AC28 8007A028 3C0E0600 */  lui        $t6, (0x6000000 >> 16)
/* 7AC2C 8007A02C AD8E0000 */  sw         $t6, 0x0($t4)
/* 7AC30 8007A030 AFAD0068 */  sw         $t5, 0x68($sp)
/* 7AC34 8007A034 AFAC0044 */  sw         $t4, 0x44($sp)
/* 7AC38 8007A038 AFAB0024 */  sw         $t3, 0x24($sp)
/* 7AC3C 8007A03C AFAA0060 */  sw         $t2, 0x60($sp)
/* 7AC40 8007A040 AFA9004C */  sw         $t1, 0x4C($sp)
/* 7AC44 8007A044 AFA70028 */  sw         $a3, 0x28($sp)
/* 7AC48 8007A048 AFA6002C */  sw         $a2, 0x2C($sp)
/* 7AC4C 8007A04C 26100008 */  addiu      $s0, $s0, 0x8
/* 7AC50 8007A050 0C019FAC */  jal        osVirtualToPhysical
/* 7AC54 8007A054 00A02025 */   or        $a0, $a1, $zero
/* 7AC58 8007A058 8FAC0044 */  lw         $t4, 0x44($sp)
/* 7AC5C 8007A05C 8FA70028 */  lw         $a3, 0x28($sp)
/* 7AC60 8007A060 8FA9004C */  lw         $t1, 0x4C($sp)
/* 7AC64 8007A064 8FAB0024 */  lw         $t3, 0x24($sp)
/* 7AC68 8007A068 8FAD0068 */  lw         $t5, 0x68($sp)
/* 7AC6C 8007A06C 8FAA0060 */  lw         $t2, 0x60($sp)
/* 7AC70 8007A070 02001825 */  or         $v1, $s0, $zero
/* 7AC74 8007A074 3C0F0800 */  lui        $t7, (0x8000000 >> 16)
/* 7AC78 8007A078 AD820004 */  sw         $v0, 0x4($t4)
/* 7AC7C 8007A07C AC6F0000 */  sw         $t7, 0x0($v1)
/* 7AC80 8007A080 00E97823 */  subu       $t7, $a3, $t1
/* 7AC84 8007A084 016DC821 */  addu       $t9, $t3, $t5
/* 7AC88 8007A088 00197400 */  sll        $t6, $t9, 16
/* 7AC8C 8007A08C 000FC043 */  sra        $t8, $t7, 1
/* 7AC90 8007A090 0018C840 */  sll        $t9, $t8, 1
/* 7AC94 8007A094 332FFFFF */  andi       $t7, $t9, 0xFFFF
/* 7AC98 8007A098 01CFC025 */  or         $t8, $t6, $t7
/* 7AC9C 8007A09C 26100008 */  addiu      $s0, $s0, 0x8
/* 7ACA0 8007A0A0 AC780004 */  sw         $t8, 0x4($v1)
/* 7ACA4 8007A0A4 02002825 */  or         $a1, $s0, $zero
/* 7ACA8 8007A0A8 3C190600 */  lui        $t9, (0x6000000 >> 16)
/* 7ACAC 8007A0AC ACB90000 */  sw         $t9, 0x0($a1)
/* 7ACB0 8007A0B0 8D440014 */  lw         $a0, 0x14($t2)
/* 7ACB4 8007A0B4 AFA5003C */  sw         $a1, 0x3C($sp)
/* 7ACB8 8007A0B8 0C019FAC */  jal        osVirtualToPhysical
/* 7ACBC 8007A0BC 26100008 */   addiu     $s0, $s0, 0x8
/* 7ACC0 8007A0C0 8FA5003C */  lw         $a1, 0x3C($sp)
/* 7ACC4 8007A0C4 8FA6002C */  lw         $a2, 0x2C($sp)
/* 7ACC8 8007A0C8 02001825 */  or         $v1, $s0, $zero
/* 7ACCC 8007A0CC 3C0E0800 */  lui        $t6, (0x8000000 >> 16)
/* 7ACD0 8007A0D0 ACA20004 */  sw         $v0, 0x4($a1)
/* 7ACD4 8007A0D4 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 7ACD8 8007A0D8 AC6F0004 */  sw         $t7, 0x4($v1)
/* 7ACDC 8007A0DC AC6E0000 */  sw         $t6, 0x0($v1)
/* 7ACE0 8007A0E0 10000010 */  b          .L8007A124
/* 7ACE4 8007A0E4 26100008 */   addiu     $s0, $s0, 0x8
.L8007A0E8:
/* 7ACE8 8007A0E8 3C180800 */  lui        $t8, (0x8000000 >> 16)
/* 7ACEC 8007A0EC AD180000 */  sw         $t8, 0x0($t0)
/* 7ACF0 8007A0F0 000D7400 */  sll        $t6, $t5, 16
/* 7ACF4 8007A0F4 30CFFFFF */  andi       $t7, $a2, 0xFFFF
/* 7ACF8 8007A0F8 01CFC025 */  or         $t8, $t6, $t7
/* 7ACFC 8007A0FC AD180004 */  sw         $t8, 0x4($t0)
/* 7AD00 8007A100 02001825 */  or         $v1, $s0, $zero
/* 7AD04 8007A104 3C190600 */  lui        $t9, (0x6000000 >> 16)
/* 7AD08 8007A108 AC790000 */  sw         $t9, 0x0($v1)
/* 7AD0C 8007A10C AFA30030 */  sw         $v1, 0x30($sp)
/* 7AD10 8007A110 26100008 */  addiu      $s0, $s0, 0x8
/* 7AD14 8007A114 0C019FAC */  jal        osVirtualToPhysical
/* 7AD18 8007A118 00A02025 */   or        $a0, $a1, $zero
/* 7AD1C 8007A11C 8FA30030 */  lw         $v1, 0x30($sp)
/* 7AD20 8007A120 AC620004 */  sw         $v0, 0x4($v1)
.L8007A124:
/* 7AD24 8007A124 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7AD28 8007A128 02001025 */  or         $v0, $s0, $zero
/* 7AD2C 8007A12C 8FB00018 */  lw         $s0, 0x18($sp)
/* 7AD30 8007A130 03E00008 */  jr         $ra
/* 7AD34 8007A134 27BD0060 */   addiu     $sp, $sp, 0x60

glabel _loadBuffer
/* 7AD38 8007A138 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7AD3C 8007A13C AFBF001C */  sw         $ra, 0x1C($sp)
/* 7AD40 8007A140 AFB00018 */  sw         $s0, 0x18($sp)
/* 7AD44 8007A144 8C83001C */  lw         $v1, 0x1C($a0)
/* 7AD48 8007A148 8C820014 */  lw         $v0, 0x14($a0)
/* 7AD4C 8007A14C 8FA80070 */  lw         $t0, 0x70($sp)
/* 7AD50 8007A150 00037040 */  sll        $t6, $v1, 1
/* 7AD54 8007A154 00A2082B */  sltu       $at, $a1, $v0
/* 7AD58 8007A158 00805025 */  or         $t2, $a0, $zero
/* 7AD5C 8007A15C 00C06825 */  or         $t5, $a2, $zero
/* 7AD60 8007A160 00E05825 */  or         $t3, $a3, $zero
/* 7AD64 8007A164 10200002 */  beqz       $at, .L8007A170
/* 7AD68 8007A168 004E4821 */   addu      $t1, $v0, $t6
/* 7AD6C 8007A16C 00AE2821 */  addu       $a1, $a1, $t6
.L8007A170:
/* 7AD70 8007A170 000B3040 */  sll        $a2, $t3, 1
/* 7AD74 8007A174 00C53821 */  addu       $a3, $a2, $a1
/* 7AD78 8007A178 0127082B */  sltu       $at, $t1, $a3
/* 7AD7C 8007A17C 10200037 */  beqz       $at, .L8007A25C
/* 7AD80 8007A180 25100008 */   addiu     $s0, $t0, 0x8
/* 7AD84 8007A184 31AFFFFF */  andi       $t7, $t5, 0xFFFF
/* 7AD88 8007A188 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7AD8C 8007A18C 01255823 */  subu       $t3, $t1, $a1
/* 7AD90 8007A190 000BC843 */  sra        $t9, $t3, 1
/* 7AD94 8007A194 01E1C025 */  or         $t8, $t7, $at
/* 7AD98 8007A198 00197040 */  sll        $t6, $t9, 1
/* 7AD9C 8007A19C 31CFFFFF */  andi       $t7, $t6, 0xFFFF
/* 7ADA0 8007A1A0 AD180000 */  sw         $t8, 0x0($t0)
/* 7ADA4 8007A1A4 25100008 */  addiu      $s0, $t0, 0x8
/* 7ADA8 8007A1A8 AD0F0004 */  sw         $t7, 0x4($t0)
/* 7ADAC 8007A1AC 02006025 */  or         $t4, $s0, $zero
/* 7ADB0 8007A1B0 3C180400 */  lui        $t8, (0x4000000 >> 16)
/* 7ADB4 8007A1B4 AD980000 */  sw         $t8, 0x0($t4)
/* 7ADB8 8007A1B8 AFAD0068 */  sw         $t5, 0x68($sp)
/* 7ADBC 8007A1BC AFAC0044 */  sw         $t4, 0x44($sp)
/* 7ADC0 8007A1C0 AFAE0024 */  sw         $t6, 0x24($sp)
/* 7ADC4 8007A1C4 AFAA0060 */  sw         $t2, 0x60($sp)
/* 7ADC8 8007A1C8 AFA9004C */  sw         $t1, 0x4C($sp)
/* 7ADCC 8007A1CC AFA70028 */  sw         $a3, 0x28($sp)
/* 7ADD0 8007A1D0 AFA6002C */  sw         $a2, 0x2C($sp)
/* 7ADD4 8007A1D4 26100008 */  addiu      $s0, $s0, 0x8
/* 7ADD8 8007A1D8 0C019FAC */  jal        osVirtualToPhysical
/* 7ADDC 8007A1DC 00A02025 */   or        $a0, $a1, $zero
/* 7ADE0 8007A1E0 8FAB0024 */  lw         $t3, 0x24($sp)
/* 7ADE4 8007A1E4 8FAD0068 */  lw         $t5, 0x68($sp)
/* 7ADE8 8007A1E8 8FA70028 */  lw         $a3, 0x28($sp)
/* 7ADEC 8007A1EC 8FA9004C */  lw         $t1, 0x4C($sp)
/* 7ADF0 8007A1F0 8FAC0044 */  lw         $t4, 0x44($sp)
/* 7ADF4 8007A1F4 016DC821 */  addu       $t9, $t3, $t5
/* 7ADF8 8007A1F8 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 7ADFC 8007A1FC 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7AE00 8007A200 8FAA0060 */  lw         $t2, 0x60($sp)
/* 7AE04 8007A204 01C17825 */  or         $t7, $t6, $at
/* 7AE08 8007A208 00E9C023 */  subu       $t8, $a3, $t1
/* 7AE0C 8007A20C 0018C843 */  sra        $t9, $t8, 1
/* 7AE10 8007A210 02001825 */  or         $v1, $s0, $zero
/* 7AE14 8007A214 AD820004 */  sw         $v0, 0x4($t4)
/* 7AE18 8007A218 AC6F0000 */  sw         $t7, 0x0($v1)
/* 7AE1C 8007A21C 00197040 */  sll        $t6, $t9, 1
/* 7AE20 8007A220 31CFFFFF */  andi       $t7, $t6, 0xFFFF
/* 7AE24 8007A224 26100008 */  addiu      $s0, $s0, 0x8
/* 7AE28 8007A228 AC6F0004 */  sw         $t7, 0x4($v1)
/* 7AE2C 8007A22C 02002825 */  or         $a1, $s0, $zero
/* 7AE30 8007A230 3C180400 */  lui        $t8, (0x4000000 >> 16)
/* 7AE34 8007A234 ACB80000 */  sw         $t8, 0x0($a1)
/* 7AE38 8007A238 8D440014 */  lw         $a0, 0x14($t2)
/* 7AE3C 8007A23C AFA5003C */  sw         $a1, 0x3C($sp)
/* 7AE40 8007A240 0C019FAC */  jal        osVirtualToPhysical
/* 7AE44 8007A244 26100008 */   addiu     $s0, $s0, 0x8
/* 7AE48 8007A248 8FA5003C */  lw         $a1, 0x3C($sp)
/* 7AE4C 8007A24C 8FA6002C */  lw         $a2, 0x2C($sp)
/* 7AE50 8007A250 ACA20004 */  sw         $v0, 0x4($a1)
/* 7AE54 8007A254 10000012 */  b          .L8007A2A0
/* 7AE58 8007A258 30C7FFFF */   andi      $a3, $a2, 0xFFFF
.L8007A25C:
/* 7AE5C 8007A25C 31B9FFFF */  andi       $t9, $t5, 0xFFFF
/* 7AE60 8007A260 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7AE64 8007A264 03217025 */  or         $t6, $t9, $at
/* 7AE68 8007A268 30C7FFFF */  andi       $a3, $a2, 0xFFFF
/* 7AE6C 8007A26C AD070004 */  sw         $a3, 0x4($t0)
/* 7AE70 8007A270 AD0E0000 */  sw         $t6, 0x0($t0)
/* 7AE74 8007A274 02001825 */  or         $v1, $s0, $zero
/* 7AE78 8007A278 3C0F0400 */  lui        $t7, (0x4000000 >> 16)
/* 7AE7C 8007A27C AC6F0000 */  sw         $t7, 0x0($v1)
/* 7AE80 8007A280 AFA70028 */  sw         $a3, 0x28($sp)
/* 7AE84 8007A284 AFA30034 */  sw         $v1, 0x34($sp)
/* 7AE88 8007A288 26100008 */  addiu      $s0, $s0, 0x8
/* 7AE8C 8007A28C 0C019FAC */  jal        osVirtualToPhysical
/* 7AE90 8007A290 00A02025 */   or        $a0, $a1, $zero
/* 7AE94 8007A294 8FA30034 */  lw         $v1, 0x34($sp)
/* 7AE98 8007A298 8FA70028 */  lw         $a3, 0x28($sp)
/* 7AE9C 8007A29C AC620004 */  sw         $v0, 0x4($v1)
.L8007A2A0:
/* 7AEA0 8007A2A0 02001825 */  or         $v1, $s0, $zero
/* 7AEA4 8007A2A4 3C180800 */  lui        $t8, (0x8000000 >> 16)
/* 7AEA8 8007A2A8 AC780000 */  sw         $t8, 0x0($v1)
/* 7AEAC 8007A2AC AC670004 */  sw         $a3, 0x4($v1)
/* 7AEB0 8007A2B0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7AEB4 8007A2B4 26020008 */  addiu      $v0, $s0, 0x8
/* 7AEB8 8007A2B8 8FB00018 */  lw         $s0, 0x18($sp)
/* 7AEBC 8007A2BC 03E00008 */  jr         $ra
/* 7AEC0 8007A2C0 27BD0060 */   addiu     $sp, $sp, 0x60

glabel _loadOutputBuffer
/* 7AEC4 8007A2C4 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7AEC8 8007A2C8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7AECC 8007A2CC AFB10020 */  sw         $s1, 0x20($sp)
/* 7AED0 8007A2D0 AFB0001C */  sw         $s0, 0x1C($sp)
/* 7AED4 8007A2D4 AFA60068 */  sw         $a2, 0x68($sp)
/* 7AED8 8007A2D8 8CAE0024 */  lw         $t6, 0x24($a1)
/* 7AEDC 8007A2DC 00A08025 */  or         $s0, $a1, $zero
/* 7AEE0 8007A2E0 00E08825 */  or         $s1, $a3, $zero
/* 7AEE4 8007A2E4 11C0006E */  beqz       $t6, .L8007A4A0
/* 7AEE8 8007A2E8 00805025 */   or        $t2, $a0, $zero
/* 7AEEC 8007A2EC 8CAF0004 */  lw         $t7, 0x4($a1)
/* 7AEF0 8007A2F0 8CB80000 */  lw         $t8, 0x0($a1)
/* 7AEF4 8007A2F4 00A02025 */  or         $a0, $a1, $zero
/* 7AEF8 8007A2F8 00E02825 */  or         $a1, $a3, $zero
/* 7AEFC 8007A2FC 01F8C823 */  subu       $t9, $t7, $t8
/* 7AF00 8007A300 AFB90038 */  sw         $t9, 0x38($sp)
/* 7AF04 8007A304 0C01E794 */  jal        func_80079E50
/* 7AF08 8007A308 AFAA0060 */   sw        $t2, 0x60($sp)
/* 7AF0C 8007A30C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 7AF10 8007A310 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 7AF14 8007A314 44817000 */  mtc1       $at, $f14
/* 7AF18 8007A318 448C3000 */  mtc1       $t4, $f6
/* 7AF1C 8007A31C 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 7AF20 8007A320 44812800 */  mtc1       $at, $f5
/* 7AF24 8007A324 46803220 */  cvt.s.w    $f8, $f6
/* 7AF28 8007A328 44802000 */  mtc1       $zero, $f4
/* 7AF2C 8007A32C 8FA40060 */  lw         $a0, 0x60($sp)
/* 7AF30 8007A330 24060280 */  addiu      $a2, $zero, 0x280
/* 7AF34 8007A334 46080283 */  div.s      $f10, $f0, $f8
/* 7AF38 8007A338 460E5402 */  mul.s      $f16, $f10, $f14
/* 7AF3C 8007A33C 4600848D */  trunc.w.s  $f18, $f16
/* 7AF40 8007A340 440E9000 */  mfc1       $t6, $f18
/* 7AF44 8007A344 00000000 */  nop
/* 7AF48 8007A348 448E3000 */  mtc1       $t6, $f6
/* 7AF4C 8007A34C 00000000 */  nop
/* 7AF50 8007A350 46803220 */  cvt.s.w    $f8, $f6
/* 7AF54 8007A354 460E4283 */  div.s      $f10, $f8, $f14
/* 7AF58 8007A358 44914000 */  mtc1       $s1, $f8
/* 7AF5C 8007A35C 46005421 */  cvt.d.s    $f16, $f10
/* 7AF60 8007A360 468042A0 */  cvt.s.w    $f10, $f8
/* 7AF64 8007A364 46302481 */  sub.d      $f18, $f4, $f16
/* 7AF68 8007A368 462090A0 */  cvt.s.d    $f2, $f18
/* 7AF6C 8007A36C 460A1102 */  mul.s      $f4, $f2, $f10
/* 7AF70 8007A370 E7A20044 */  swc1       $f2, 0x44($sp)
/* 7AF74 8007A374 8E020024 */  lw         $v0, 0x24($s0)
/* 7AF78 8007A378 C4460020 */  lwc1       $f6, 0x20($v0)
/* 7AF7C 8007A37C 46043300 */  add.s      $f12, $f6, $f4
/* 7AF80 8007A380 4600640D */  trunc.w.s  $f16, $f12
/* 7AF84 8007A384 44098000 */  mfc1       $t1, $f16
/* 7AF88 8007A388 00000000 */  nop
/* 7AF8C 8007A38C 44899000 */  mtc1       $t1, $f18
/* 7AF90 8007A390 00000000 */  nop
/* 7AF94 8007A394 46809220 */  cvt.s.w    $f8, $f18
/* 7AF98 8007A398 46086281 */  sub.s      $f10, $f12, $f8
/* 7AF9C 8007A39C E44A0020 */  swc1       $f10, 0x20($v0)
/* 7AFA0 8007A3A0 8E190018 */  lw         $t9, 0x18($s0)
/* 7AFA4 8007A3A4 8E180004 */  lw         $t8, 0x4($s0)
/* 7AFA8 8007A3A8 8C8F0018 */  lw         $t7, 0x18($a0)
/* 7AFAC 8007A3AC AFA9002C */  sw         $t1, 0x2C($sp)
/* 7AFB0 8007A3B0 03196023 */  subu       $t4, $t8, $t9
/* 7AFB4 8007A3B4 000C6823 */  negu       $t5, $t4
/* 7AFB8 8007A3B8 000D7040 */  sll        $t6, $t5, 1
/* 7AFBC 8007A3BC 01EE4021 */  addu       $t0, $t7, $t6
/* 7AFC0 8007A3C0 31030007 */  andi       $v1, $t0, 0x7
/* 7AFC4 8007A3C4 8FB90070 */  lw         $t9, 0x70($sp)
/* 7AFC8 8007A3C8 0003C043 */  sra        $t8, $v1, 1
/* 7AFCC 8007A3CC 00185840 */  sll        $t3, $t8, 1
/* 7AFD0 8007A3D0 010B2823 */  subu       $a1, $t0, $t3
/* 7AFD4 8007A3D4 AFAB0028 */  sw         $t3, 0x28($sp)
/* 7AFD8 8007A3D8 03001825 */  or         $v1, $t8, $zero
/* 7AFDC 8007A3DC 01383821 */  addu       $a3, $t1, $t8
/* 7AFE0 8007A3E0 0C01E84E */  jal        _loadBuffer
/* 7AFE4 8007A3E4 AFB90010 */   sw        $t9, 0x10($sp)
/* 7AFE8 8007A3E8 8FAB0028 */  lw         $t3, 0x28($sp)
/* 7AFEC 8007A3EC 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7AFF0 8007A3F0 244E0008 */  addiu      $t6, $v0, 0x8
/* 7AFF4 8007A3F4 256C0280 */  addiu      $t4, $t3, 0x280
/* 7AFF8 8007A3F8 318DFFFF */  andi       $t5, $t4, 0xFFFF
/* 7AFFC 8007A3FC 01A17825 */  or         $t7, $t5, $at
/* 7B000 8007A400 AC4F0000 */  sw         $t7, 0x0($v0)
/* 7B004 8007A404 8FB80068 */  lw         $t8, 0x68($sp)
/* 7B008 8007A408 00116040 */  sll        $t4, $s1, 1
/* 7B00C 8007A40C 318DFFFF */  andi       $t5, $t4, 0xFFFF
/* 7B010 8007A410 0018CC00 */  sll        $t9, $t8, 16
/* 7B014 8007A414 032D7825 */  or         $t7, $t9, $t5
/* 7B018 8007A418 AC4F0004 */  sw         $t7, 0x4($v0)
/* 7B01C 8007A41C 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 7B020 8007A420 44812000 */  mtc1       $at, $f4
/* 7B024 8007A424 C7A60044 */  lwc1       $f6, 0x44($sp)
/* 7B028 8007A428 AFAE0030 */  sw         $t6, 0x30($sp)
/* 7B02C 8007A42C 8E0D0024 */  lw         $t5, 0x24($s0)
/* 7B030 8007A430 46043402 */  mul.s      $f16, $f6, $f4
/* 7B034 8007A434 3C010500 */  lui        $at, (0x5000000 >> 16)
/* 7B038 8007A438 8DAF0024 */  lw         $t7, 0x24($t5)
/* 7B03C 8007A43C 24430010 */  addiu      $v1, $v0, 0x10
/* 7B040 8007A440 31EE00FF */  andi       $t6, $t7, 0xFF
/* 7B044 8007A444 000EC400 */  sll        $t8, $t6, 16
/* 7B048 8007A448 4600848D */  trunc.w.s  $f18, $f16
/* 7B04C 8007A44C 440C9000 */  mfc1       $t4, $f18
/* 7B050 8007A450 00000000 */  nop
/* 7B054 8007A454 3199FFFF */  andi       $t9, $t4, 0xFFFF
/* 7B058 8007A458 03016025 */  or         $t4, $t8, $at
/* 7B05C 8007A45C 01996825 */  or         $t5, $t4, $t9
/* 7B060 8007A460 AC4D0008 */  sw         $t5, 0x8($v0)
/* 7B064 8007A464 8E0F0024 */  lw         $t7, 0x24($s0)
/* 7B068 8007A468 8DE40014 */  lw         $a0, 0x14($t7)
/* 7B06C 8007A46C 0C019FAC */  jal        osVirtualToPhysical
/* 7B070 8007A470 AFA3005C */   sw        $v1, 0x5C($sp)
/* 7B074 8007A474 8FAE0030 */  lw         $t6, 0x30($sp)
/* 7B078 8007A478 8FA9002C */  lw         $t1, 0x2C($sp)
/* 7B07C 8007A47C 8FA3005C */  lw         $v1, 0x5C($sp)
/* 7B080 8007A480 ADC20004 */  sw         $v0, 0x4($t6)
/* 7B084 8007A484 8E180024 */  lw         $t8, 0x24($s0)
/* 7B088 8007A488 AF000024 */  sw         $zero, 0x24($t8)
/* 7B08C 8007A48C 8E0C0018 */  lw         $t4, 0x18($s0)
/* 7B090 8007A490 0189C821 */  addu       $t9, $t4, $t1
/* 7B094 8007A494 03316823 */  subu       $t5, $t9, $s1
/* 7B098 8007A498 1000000D */  b          .L8007A4D0
/* 7B09C 8007A49C AE0D0018 */   sw        $t5, 0x18($s0)
.L8007A4A0:
/* 7B0A0 8007A4A0 8E0E0004 */  lw         $t6, 0x4($s0)
/* 7B0A4 8007A4A4 8D4F0018 */  lw         $t7, 0x18($t2)
/* 7B0A8 8007A4A8 8FB90070 */  lw         $t9, 0x70($sp)
/* 7B0AC 8007A4AC 000EC023 */  negu       $t8, $t6
/* 7B0B0 8007A4B0 00186040 */  sll        $t4, $t8, 1
/* 7B0B4 8007A4B4 01402025 */  or         $a0, $t2, $zero
/* 7B0B8 8007A4B8 8FA60068 */  lw         $a2, 0x68($sp)
/* 7B0BC 8007A4BC 02203825 */  or         $a3, $s1, $zero
/* 7B0C0 8007A4C0 01EC2821 */  addu       $a1, $t7, $t4
/* 7B0C4 8007A4C4 0C01E84E */  jal        _loadBuffer
/* 7B0C8 8007A4C8 AFB90010 */   sw        $t9, 0x10($sp)
/* 7B0CC 8007A4CC 00401825 */  or         $v1, $v0, $zero
.L8007A4D0:
/* 7B0D0 8007A4D0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7B0D4 8007A4D4 8FB0001C */  lw         $s0, 0x1C($sp)
/* 7B0D8 8007A4D8 8FB10020 */  lw         $s1, 0x20($sp)
/* 7B0DC 8007A4DC 27BD0060 */  addiu      $sp, $sp, 0x60
/* 7B0E0 8007A4E0 03E00008 */  jr         $ra
/* 7B0E4 8007A4E4 00601025 */   or        $v0, $v1, $zero

glabel alFxParamHdl
/* 7B0E8 8007A4E8 24A3FFFE */  addiu      $v1, $a1, -0x2
/* 7B0EC 8007A4EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B0F0 8007A4F0 306E0007 */  andi       $t6, $v1, 0x7
/* 7B0F4 8007A4F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7B0F8 8007A4F8 2DC10008 */  sltiu      $at, $t6, 0x8
/* 7B0FC 8007A4FC 00803825 */  or         $a3, $a0, $zero
/* 7B100 8007A500 1020008B */  beqz       $at, .L8007A730
/* 7B104 8007A504 8CC80000 */   lw        $t0, 0x0($a2)
/* 7B108 8007A508 000E7080 */  sll        $t6, $t6, 2
/* 7B10C 8007A50C 3C01800A */  lui        $at, %hi(jtbl_80098F90_main)
/* 7B110 8007A510 002E0821 */  addu       $at, $at, $t6
/* 7B114 8007A514 8C2E8F90 */  lw         $t6, %lo(jtbl_80098F90_main)($at)
/* 7B118 8007A518 01C00008 */  jr         $t6
/* 7B11C 8007A51C 00000000 */   nop
glabel L8007A520
/* 7B120 8007A520 2401FFF8 */  addiu      $at, $zero, -0x8
/* 7B124 8007A524 01017824 */  and        $t7, $t0, $at
/* 7B128 8007A528 8CF80020 */  lw         $t8, 0x20($a3)
/* 7B12C 8007A52C 04610003 */  bgez       $v1, .L8007A53C
/* 7B130 8007A530 0003C8C3 */   sra       $t9, $v1, 3
/* 7B134 8007A534 24610007 */  addiu      $at, $v1, 0x7
/* 7B138 8007A538 0001C8C3 */  sra        $t9, $at, 3
.L8007A53C:
/* 7B13C 8007A53C 00194880 */  sll        $t1, $t9, 2
/* 7B140 8007A540 01394821 */  addu       $t1, $t1, $t9
/* 7B144 8007A544 000948C0 */  sll        $t1, $t1, 3
/* 7B148 8007A548 03095021 */  addu       $t2, $t8, $t1
/* 7B14C 8007A54C 10000078 */  b          .L8007A730
/* 7B150 8007A550 AD4F0000 */   sw        $t7, 0x0($t2)
glabel L8007A554
/* 7B154 8007A554 2401FFF8 */  addiu      $at, $zero, -0x8
/* 7B158 8007A558 01015824 */  and        $t3, $t0, $at
/* 7B15C 8007A55C 8CEC0020 */  lw         $t4, 0x20($a3)
/* 7B160 8007A560 04610003 */  bgez       $v1, .L8007A570
/* 7B164 8007A564 000368C3 */   sra       $t5, $v1, 3
/* 7B168 8007A568 24610007 */  addiu      $at, $v1, 0x7
/* 7B16C 8007A56C 000168C3 */  sra        $t5, $at, 3
.L8007A570:
/* 7B170 8007A570 000D7080 */  sll        $t6, $t5, 2
/* 7B174 8007A574 01CD7021 */  addu       $t6, $t6, $t5
/* 7B178 8007A578 000E70C0 */  sll        $t6, $t6, 3
/* 7B17C 8007A57C 018EC821 */  addu       $t9, $t4, $t6
/* 7B180 8007A580 1000006B */  b          .L8007A730
/* 7B184 8007A584 AF2B0004 */   sw        $t3, 0x4($t9)
glabel L8007A588
/* 7B188 8007A588 8CF80020 */  lw         $t8, 0x20($a3)
/* 7B18C 8007A58C 04610003 */  bgez       $v1, .L8007A59C
/* 7B190 8007A590 000348C3 */   sra       $t1, $v1, 3
/* 7B194 8007A594 24610007 */  addiu      $at, $v1, 0x7
/* 7B198 8007A598 000148C3 */  sra        $t1, $at, 3
.L8007A59C:
/* 7B19C 8007A59C 00097880 */  sll        $t7, $t1, 2
/* 7B1A0 8007A5A0 01E97821 */  addu       $t7, $t7, $t1
/* 7B1A4 8007A5A4 000F78C0 */  sll        $t7, $t7, 3
/* 7B1A8 8007A5A8 030F5021 */  addu       $t2, $t8, $t7
/* 7B1AC 8007A5AC 10000060 */  b          .L8007A730
/* 7B1B0 8007A5B0 A5480008 */   sh        $t0, 0x8($t2)
glabel L8007A5B4
/* 7B1B4 8007A5B4 8CED0020 */  lw         $t5, 0x20($a3)
/* 7B1B8 8007A5B8 04610003 */  bgez       $v1, .L8007A5C8
/* 7B1BC 8007A5BC 000360C3 */   sra       $t4, $v1, 3
/* 7B1C0 8007A5C0 24610007 */  addiu      $at, $v1, 0x7
/* 7B1C4 8007A5C4 000160C3 */  sra        $t4, $at, 3
.L8007A5C8:
/* 7B1C8 8007A5C8 000C7080 */  sll        $t6, $t4, 2
/* 7B1CC 8007A5CC 01CC7021 */  addu       $t6, $t6, $t4
/* 7B1D0 8007A5D0 000E70C0 */  sll        $t6, $t6, 3
/* 7B1D4 8007A5D4 01AE5821 */  addu       $t3, $t5, $t6
/* 7B1D8 8007A5D8 10000055 */  b          .L8007A730
/* 7B1DC 8007A5DC A568000A */   sh        $t0, 0xA($t3)
glabel L8007A5E0
/* 7B1E0 8007A5E0 8CF90020 */  lw         $t9, 0x20($a3)
/* 7B1E4 8007A5E4 04610003 */  bgez       $v1, .L8007A5F4
/* 7B1E8 8007A5E8 000348C3 */   sra       $t1, $v1, 3
/* 7B1EC 8007A5EC 24610007 */  addiu      $at, $v1, 0x7
/* 7B1F0 8007A5F0 000148C3 */  sra        $t1, $at, 3
.L8007A5F4:
/* 7B1F4 8007A5F4 0009C080 */  sll        $t8, $t1, 2
/* 7B1F8 8007A5F8 0309C021 */  addu       $t8, $t8, $t1
/* 7B1FC 8007A5FC 0018C0C0 */  sll        $t8, $t8, 3
/* 7B200 8007A600 03387821 */  addu       $t7, $t9, $t8
/* 7B204 8007A604 1000004A */  b          .L8007A730
/* 7B208 8007A608 A5E8000C */   sh        $t0, 0xC($t7)
glabel L8007A60C
/* 7B20C 8007A60C 44882000 */  mtc1       $t0, $f4
/* 7B210 8007A610 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 7B214 8007A614 44814000 */  mtc1       $at, $f8
/* 7B218 8007A618 468021A0 */  cvt.s.w    $f6, $f4
/* 7B21C 8007A61C 3C0A8009 */  lui        $t2, %hi(alGlobals)
/* 7B220 8007A620 8D4A2E40 */  lw         $t2, %lo(alGlobals)($t2)
/* 7B224 8007A624 8CED0020 */  lw         $t5, 0x20($a3)
/* 7B228 8007A628 8D4C0044 */  lw         $t4, 0x44($t2)
/* 7B22C 8007A62C 46083283 */  div.s      $f10, $f6, $f8
/* 7B230 8007A630 448C9000 */  mtc1       $t4, $f18
/* 7B234 8007A634 00000000 */  nop
/* 7B238 8007A638 46809121 */  cvt.d.w    $f4, $f18
/* 7B23C 8007A63C 46005021 */  cvt.d.s    $f0, $f10
/* 7B240 8007A640 46200400 */  add.d      $f16, $f0, $f0
/* 7B244 8007A644 46248183 */  div.d      $f6, $f16, $f4
/* 7B248 8007A648 46203220 */  cvt.s.d    $f8, $f6
/* 7B24C 8007A64C 04610003 */  bgez       $v1, .L8007A65C
/* 7B250 8007A650 000370C3 */   sra       $t6, $v1, 3
/* 7B254 8007A654 24610007 */  addiu      $at, $v1, 0x7
/* 7B258 8007A658 000170C3 */  sra        $t6, $at, 3
.L8007A65C:
/* 7B25C 8007A65C 000E5880 */  sll        $t3, $t6, 2
/* 7B260 8007A660 016E5821 */  addu       $t3, $t3, $t6
/* 7B264 8007A664 000B58C0 */  sll        $t3, $t3, 3
/* 7B268 8007A668 01AB4821 */  addu       $t1, $t5, $t3
/* 7B26C 8007A66C 10000030 */  b          .L8007A730
/* 7B270 8007A670 E5280010 */   swc1      $f8, 0x10($t1)
glabel L8007A674
/* 7B274 8007A674 8CF90020 */  lw         $t9, 0x20($a3)
/* 7B278 8007A678 04610003 */  bgez       $v1, .L8007A688
/* 7B27C 8007A67C 0003C0C3 */   sra       $t8, $v1, 3
/* 7B280 8007A680 24610007 */  addiu      $at, $v1, 0x7
/* 7B284 8007A684 0001C0C3 */  sra        $t8, $at, 3
.L8007A688:
/* 7B288 8007A688 00187880 */  sll        $t7, $t8, 2
/* 7B28C 8007A68C 01F87821 */  addu       $t7, $t7, $t8
/* 7B290 8007A690 000F78C0 */  sll        $t7, $t7, 3
/* 7B294 8007A694 032F1021 */  addu       $v0, $t9, $t7
/* 7B298 8007A698 8C4A0004 */  lw         $t2, 0x4($v0)
/* 7B29C 8007A69C 8C4C0000 */  lw         $t4, 0x0($v0)
/* 7B2A0 8007A6A0 44882000 */  mtc1       $t0, $f4
/* 7B2A4 8007A6A4 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 7B2A8 8007A6A8 014C7023 */  subu       $t6, $t2, $t4
/* 7B2AC 8007A6AC 448E5000 */  mtc1       $t6, $f10
/* 7B2B0 8007A6B0 468021A0 */  cvt.s.w    $f6, $f4
/* 7B2B4 8007A6B4 05C10005 */  bgez       $t6, .L8007A6CC
/* 7B2B8 8007A6B8 468054A1 */   cvt.d.w   $f18, $f10
/* 7B2BC 8007A6BC 44818800 */  mtc1       $at, $f17
/* 7B2C0 8007A6C0 44808000 */  mtc1       $zero, $f16
/* 7B2C4 8007A6C4 00000000 */  nop
/* 7B2C8 8007A6C8 46309480 */  add.d      $f18, $f18, $f16
.L8007A6CC:
/* 7B2CC 8007A6CC 3C01800A */  lui        $at, %hi(D_80098FB0)
/* 7B2D0 8007A6D0 D42A8FB0 */  ldc1       $f10, %lo(D_80098FB0)($at)
/* 7B2D4 8007A6D4 46003221 */  cvt.d.s    $f8, $f6
/* 7B2D8 8007A6D8 462A4403 */  div.d      $f16, $f8, $f10
/* 7B2DC 8007A6DC 46309102 */  mul.d      $f4, $f18, $f16
/* 7B2E0 8007A6E0 462021A0 */  cvt.s.d    $f6, $f4
/* 7B2E4 8007A6E4 10000012 */  b          .L8007A730
/* 7B2E8 8007A6E8 E446001C */   swc1      $f6, 0x1C($v0)
glabel L8007A6EC
/* 7B2EC 8007A6EC 04610003 */  bgez       $v1, .L8007A6FC
/* 7B2F0 8007A6F0 000310C3 */   sra       $v0, $v1, 3
/* 7B2F4 8007A6F4 24610007 */  addiu      $at, $v1, 0x7
/* 7B2F8 8007A6F8 000110C3 */  sra        $v0, $at, 3
.L8007A6FC:
/* 7B2FC 8007A6FC 8CEB0020 */  lw         $t3, 0x20($a3)
/* 7B300 8007A700 00026880 */  sll        $t5, $v0, 2
/* 7B304 8007A704 01A26821 */  addu       $t5, $t5, $v0
/* 7B308 8007A708 000D68C0 */  sll        $t5, $t5, 3
/* 7B30C 8007A70C 016D4821 */  addu       $t1, $t3, $t5
/* 7B310 8007A710 8D250020 */  lw         $a1, 0x20($t1)
/* 7B314 8007A714 50A00007 */  beql       $a1, $zero, .L8007A734
/* 7B318 8007A718 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7B31C 8007A71C A4A80000 */  sh         $t0, 0x0($a1)
/* 7B320 8007A720 8CF80020 */  lw         $t8, 0x20($a3)
/* 7B324 8007A724 030DC821 */  addu       $t9, $t8, $t5
/* 7B328 8007A728 0C01C5A8 */  jal        func_800716A0
/* 7B32C 8007A72C 8F240020 */   lw        $a0, 0x20($t9)
.L8007A730:
/* 7B330 8007A730 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007A734:
/* 7B334 8007A734 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7B338 8007A738 00001025 */  or         $v0, $zero, $zero
/* 7B33C 8007A73C 03E00008 */  jr         $ra
/* 7B340 8007A740 00000000 */   nop

glabel alFxParam
/* 7B344 8007A744 24010001 */  addiu      $at, $zero, 0x1
/* 7B348 8007A748 14A10002 */  bne        $a1, $at, .L8007A754
/* 7B34C 8007A74C 00000000 */   nop
/* 7B350 8007A750 AC860000 */  sw         $a2, 0x0($a0)
.L8007A754:
/* 7B354 8007A754 03E00008 */  jr         $ra
/* 7B358 8007A758 00001025 */   or        $v0, $zero, $zero

glabel alFxPull
/* 7B35C 8007A75C 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* 7B360 8007A760 AFB3002C */  sw         $s3, 0x2C($sp)
/* 7B364 8007A764 00809825 */  or         $s3, $a0, $zero
/* 7B368 8007A768 AFBF0044 */  sw         $ra, 0x44($sp)
/* 7B36C 8007A76C AFBE0040 */  sw         $fp, 0x40($sp)
/* 7B370 8007A770 AFB7003C */  sw         $s7, 0x3C($sp)
/* 7B374 8007A774 AFB60038 */  sw         $s6, 0x38($sp)
/* 7B378 8007A778 AFB50034 */  sw         $s5, 0x34($sp)
/* 7B37C 8007A77C AFB40030 */  sw         $s4, 0x30($sp)
/* 7B380 8007A780 AFB20028 */  sw         $s2, 0x28($sp)
/* 7B384 8007A784 AFB10024 */  sw         $s1, 0x24($sp)
/* 7B388 8007A788 AFB00020 */  sw         $s0, 0x20($sp)
/* 7B38C 8007A78C 8C840000 */  lw         $a0, 0x0($a0)
/* 7B390 8007A790 8FAE00B8 */  lw         $t6, 0xB8($sp)
/* 7B394 8007A794 AFA00080 */  sw         $zero, 0x80($sp)
/* 7B398 8007A798 00C0B025 */  or         $s6, $a2, $zero
/* 7B39C 8007A79C AFAE0010 */  sw         $t6, 0x10($sp)
/* 7B3A0 8007A7A0 8C990004 */  lw         $t9, 0x4($a0)
/* 7B3A4 8007A7A4 0320F809 */  jalr       $t9
/* 7B3A8 8007A7A8 00000000 */   nop
/* 7B3AC 8007A7AC 00168840 */  sll        $s1, $s6, 1
/* 7B3B0 8007A7B0 3C180C00 */  lui        $t8, (0xC00DA83 >> 16)
/* 7B3B4 8007A7B4 3C0A06C0 */  lui        $t2, (0x6C006C0 >> 16)
/* 7B3B8 8007A7B8 3C0B0C00 */  lui        $t3, (0xC005A82 >> 16)
/* 7B3BC 8007A7BC 3C0C0800 */  lui        $t4, (0x80006C0 >> 16)
/* 7B3C0 8007A7C0 3229FFFF */  andi       $t1, $s1, 0xFFFF
/* 7B3C4 8007A7C4 3C0F0800 */  lui        $t7, (0x8000000 >> 16)
/* 7B3C8 8007A7C8 354A06C0 */  ori        $t2, $t2, (0x6C006C0 & 0xFFFF)
/* 7B3CC 8007A7CC 3718DA83 */  ori        $t8, $t8, (0xC00DA83 & 0xFFFF)
/* 7B3D0 8007A7D0 358C06C0 */  ori        $t4, $t4, (0x80006C0 & 0xFFFF)
/* 7B3D4 8007A7D4 356B5A82 */  ori        $t3, $t3, (0xC005A82 & 0xFFFF)
/* 7B3D8 8007A7D8 AC4F0000 */  sw         $t7, 0x0($v0)
/* 7B3DC 8007A7DC AC490004 */  sw         $t1, 0x4($v0)
/* 7B3E0 8007A7E0 AC580008 */  sw         $t8, 0x8($v0)
/* 7B3E4 8007A7E4 AC4A000C */  sw         $t2, 0xC($v0)
/* 7B3E8 8007A7E8 AC4B0010 */  sw         $t3, 0x10($v0)
/* 7B3EC 8007A7EC AC4C0014 */  sw         $t4, 0x14($v0)
/* 7B3F0 8007A7F0 8E650018 */  lw         $a1, 0x18($s3)
/* 7B3F4 8007A7F4 244D0018 */  addiu      $t5, $v0, 0x18
/* 7B3F8 8007A7F8 0000A825 */  or         $s5, $zero, $zero
/* 7B3FC 8007A7FC 24120140 */  addiu      $s2, $zero, 0x140
/* 7B400 8007A800 AFAD0010 */  sw         $t5, 0x10($sp)
/* 7B404 8007A804 AFA90048 */  sw         $t1, 0x48($sp)
/* 7B408 8007A808 AFB10050 */  sw         $s1, 0x50($sp)
/* 7B40C 8007A80C 02602025 */  or         $a0, $s3, $zero
/* 7B410 8007A810 240606C0 */  addiu      $a2, $zero, 0x6C0
/* 7B414 8007A814 0C01E7EC */  jal        _saveBuffer
/* 7B418 8007A818 02C03825 */   or        $a3, $s6, $zero
/* 7B41C 8007A81C 8FA30080 */  lw         $v1, 0x80($sp)
/* 7B420 8007A820 3C0E0200 */  lui        $t6, (0x2000800 >> 16)
/* 7B424 8007A824 35CE0800 */  ori        $t6, $t6, (0x2000800 & 0xFFFF)
/* 7B428 8007A828 AC4E0000 */  sw         $t6, 0x0($v0)
/* 7B42C 8007A82C AC510004 */  sw         $s1, 0x4($v0)
/* 7B430 8007A830 92790024 */  lbu        $t9, 0x24($s3)
/* 7B434 8007A834 24500008 */  addiu      $s0, $v0, 0x8
/* 7B438 8007A838 0000B825 */  or         $s7, $zero, $zero
/* 7B43C 8007A83C 5B200077 */  blezl      $t9, .L8007AA1C
/* 7B440 8007A840 8E63001C */   lw        $v1, 0x1C($s3)
/* 7B444 8007A844 8E620018 */  lw         $v0, 0x18($s3)
.L8007A848:
/* 7B448 8007A848 8E6F0020 */  lw         $t7, 0x20($s3)
/* 7B44C 8007A84C 0017C080 */  sll        $t8, $s7, 2
/* 7B450 8007A850 0317C021 */  addu       $t8, $t8, $s7
/* 7B454 8007A854 0018C0C0 */  sll        $t8, $t8, 3
/* 7B458 8007A858 01F88821 */  addu       $s1, $t7, $t8
/* 7B45C 8007A85C 8E2A0000 */  lw         $t2, 0x0($s1)
/* 7B460 8007A860 8E2D0004 */  lw         $t5, 0x4($s1)
/* 7B464 8007A864 02602025 */  or         $a0, $s3, $zero
/* 7B468 8007A868 000A5823 */  negu       $t3, $t2
/* 7B46C 8007A86C 000B6040 */  sll        $t4, $t3, 1
/* 7B470 8007A870 000D7023 */  negu       $t6, $t5
/* 7B474 8007A874 004CA021 */  addu       $s4, $v0, $t4
/* 7B478 8007A878 000EC840 */  sll        $t9, $t6, 1
/* 7B47C 8007A87C 16830009 */  bne        $s4, $v1, .L8007A8A4
/* 7B480 8007A880 0059F021 */   addu      $fp, $v0, $t9
/* 7B484 8007A884 02407825 */  or         $t7, $s2, $zero
/* 7B488 8007A888 00159400 */  sll        $s2, $s5, 16
/* 7B48C 8007A88C 000FAC00 */  sll        $s5, $t7, 16
/* 7B490 8007A890 00155403 */  sra        $t2, $s5, 16
/* 7B494 8007A894 0012C403 */  sra        $t8, $s2, 16
/* 7B498 8007A898 03009025 */  or         $s2, $t8, $zero
/* 7B49C 8007A89C 10000007 */  b          .L8007A8BC
/* 7B4A0 8007A8A0 0140A825 */   or        $s5, $t2, $zero
.L8007A8A4:
/* 7B4A4 8007A8A4 02802825 */  or         $a1, $s4, $zero
/* 7B4A8 8007A8A8 02A03025 */  or         $a2, $s5, $zero
/* 7B4AC 8007A8AC 02C03825 */  or         $a3, $s6, $zero
/* 7B4B0 8007A8B0 0C01E84E */  jal        _loadBuffer
/* 7B4B4 8007A8B4 AFB00010 */   sw        $s0, 0x10($sp)
/* 7B4B8 8007A8B8 00408025 */  or         $s0, $v0, $zero
.L8007A8BC:
/* 7B4BC 8007A8BC 02602025 */  or         $a0, $s3, $zero
/* 7B4C0 8007A8C0 02202825 */  or         $a1, $s1, $zero
/* 7B4C4 8007A8C4 02403025 */  or         $a2, $s2, $zero
/* 7B4C8 8007A8C8 02C03825 */  or         $a3, $s6, $zero
/* 7B4CC 8007A8CC 0C01E8B1 */  jal        _loadOutputBuffer
/* 7B4D0 8007A8D0 AFB00010 */   sw        $s0, 0x10($sp)
/* 7B4D4 8007A8D4 86240008 */  lh         $a0, 0x8($s1)
/* 7B4D8 8007A8D8 00408025 */  or         $s0, $v0, $zero
/* 7B4DC 8007A8DC 3C010C00 */  lui        $at, (0xC000000 >> 16)
/* 7B4E0 8007A8E0 10800014 */  beqz       $a0, .L8007A934
/* 7B4E4 8007A8E4 308CFFFF */   andi      $t4, $a0, 0xFFFF
/* 7B4E8 8007A8E8 0015CC00 */  sll        $t9, $s5, 16
/* 7B4EC 8007A8EC 324FFFFF */  andi       $t7, $s2, 0xFFFF
/* 7B4F0 8007A8F0 032FC025 */  or         $t8, $t9, $t7
/* 7B4F4 8007A8F4 01816825 */  or         $t5, $t4, $at
/* 7B4F8 8007A8F8 AC4D0000 */  sw         $t5, 0x0($v0)
/* 7B4FC 8007A8FC AC580004 */  sw         $t8, 0x4($v0)
/* 7B500 8007A900 8E2A0024 */  lw         $t2, 0x24($s1)
/* 7B504 8007A904 24500008 */  addiu      $s0, $v0, 0x8
/* 7B508 8007A908 5540000B */  bnel       $t2, $zero, .L8007A938
/* 7B50C 8007A90C 8623000A */   lh        $v1, 0xA($s1)
/* 7B510 8007A910 8E2B0020 */  lw         $t3, 0x20($s1)
/* 7B514 8007A914 02602025 */  or         $a0, $s3, $zero
/* 7B518 8007A918 03C02825 */  or         $a1, $fp, $zero
/* 7B51C 8007A91C 15600005 */  bnez       $t3, .L8007A934
/* 7B520 8007A920 02403025 */   or        $a2, $s2, $zero
/* 7B524 8007A924 02C03825 */  or         $a3, $s6, $zero
/* 7B528 8007A928 0C01E7EC */  jal        _saveBuffer
/* 7B52C 8007A92C AFB00010 */   sw        $s0, 0x10($sp)
/* 7B530 8007A930 00408025 */  or         $s0, $v0, $zero
.L8007A934:
/* 7B534 8007A934 8623000A */  lh         $v1, 0xA($s1)
.L8007A938:
/* 7B538 8007A938 02001025 */  or         $v0, $s0, $zero
/* 7B53C 8007A93C 3C010C00 */  lui        $at, (0xC000000 >> 16)
/* 7B540 8007A940 1060000F */  beqz       $v1, .L8007A980
/* 7B544 8007A944 306DFFFF */   andi      $t5, $v1, 0xFFFF
/* 7B548 8007A948 00127C00 */  sll        $t7, $s2, 16
/* 7B54C 8007A94C 32B8FFFF */  andi       $t8, $s5, 0xFFFF
/* 7B550 8007A950 01F85025 */  or         $t2, $t7, $t8
/* 7B554 8007A954 01A17025 */  or         $t6, $t5, $at
/* 7B558 8007A958 AC4E0000 */  sw         $t6, 0x0($v0)
/* 7B55C 8007A95C AC4A0004 */  sw         $t2, 0x4($v0)
/* 7B560 8007A960 26100008 */  addiu      $s0, $s0, 0x8
/* 7B564 8007A964 AFB00010 */  sw         $s0, 0x10($sp)
/* 7B568 8007A968 02602025 */  or         $a0, $s3, $zero
/* 7B56C 8007A96C 02802825 */  or         $a1, $s4, $zero
/* 7B570 8007A970 02A03025 */  or         $a2, $s5, $zero
/* 7B574 8007A974 0C01E7EC */  jal        _saveBuffer
/* 7B578 8007A978 02C03825 */   or        $a3, $s6, $zero
/* 7B57C 8007A97C 00408025 */  or         $s0, $v0, $zero
.L8007A980:
/* 7B580 8007A980 8E240020 */  lw         $a0, 0x20($s1)
/* 7B584 8007A984 02402825 */  or         $a1, $s2, $zero
/* 7B588 8007A988 02C03025 */  or         $a2, $s6, $zero
/* 7B58C 8007A98C 50800005 */  beql       $a0, $zero, .L8007A9A4
/* 7B590 8007A990 8E2B0024 */   lw        $t3, 0x24($s1)
/* 7B594 8007A994 0C01E7BE */  jal        _filterBuffer
/* 7B598 8007A998 02003825 */   or        $a3, $s0, $zero
/* 7B59C 8007A99C 00408025 */  or         $s0, $v0, $zero
/* 7B5A0 8007A9A0 8E2B0024 */  lw         $t3, 0x24($s1)
.L8007A9A4:
/* 7B5A4 8007A9A4 02602025 */  or         $a0, $s3, $zero
/* 7B5A8 8007A9A8 03C02825 */  or         $a1, $fp, $zero
/* 7B5AC 8007A9AC 15600005 */  bnez       $t3, .L8007A9C4
/* 7B5B0 8007A9B0 02403025 */   or        $a2, $s2, $zero
/* 7B5B4 8007A9B4 02C03825 */  or         $a3, $s6, $zero
/* 7B5B8 8007A9B8 0C01E7EC */  jal        _saveBuffer
/* 7B5BC 8007A9BC AFB00010 */   sw        $s0, 0x10($sp)
/* 7B5C0 8007A9C0 00408025 */  or         $s0, $v0, $zero
.L8007A9C4:
/* 7B5C4 8007A9C4 8623000C */  lh         $v1, 0xC($s1)
/* 7B5C8 8007A9C8 26F70001 */  addiu      $s7, $s7, 0x1
/* 7B5CC 8007A9CC 00176400 */  sll        $t4, $s7, 16
/* 7B5D0 8007A9D0 1060000A */  beqz       $v1, .L8007A9FC
/* 7B5D4 8007A9D4 000CBC03 */   sra       $s7, $t4, 16
/* 7B5D8 8007A9D8 02001025 */  or         $v0, $s0, $zero
/* 7B5DC 8007A9DC 306DFFFF */  andi       $t5, $v1, 0xFFFF
/* 7B5E0 8007A9E0 3C010C00 */  lui        $at, (0xC000000 >> 16)
/* 7B5E4 8007A9E4 00127C00 */  sll        $t7, $s2, 16
/* 7B5E8 8007A9E8 35F80800 */  ori        $t8, $t7, 0x800
/* 7B5EC 8007A9EC 01A17025 */  or         $t6, $t5, $at
/* 7B5F0 8007A9F0 AC4E0000 */  sw         $t6, 0x0($v0)
/* 7B5F4 8007A9F4 AC580004 */  sw         $t8, 0x4($v0)
/* 7B5F8 8007A9F8 26100008 */  addiu      $s0, $s0, 0x8
.L8007A9FC:
/* 7B5FC 8007A9FC 926E0024 */  lbu        $t6, 0x24($s3)
/* 7B600 8007AA00 8E2A0004 */  lw         $t2, 0x4($s1)
/* 7B604 8007AA04 8E620018 */  lw         $v0, 0x18($s3)
/* 7B608 8007AA08 02EE082A */  slt        $at, $s7, $t6
/* 7B60C 8007AA0C 000A5840 */  sll        $t3, $t2, 1
/* 7B610 8007AA10 1420FF8D */  bnez       $at, .L8007A848
/* 7B614 8007AA14 004B1821 */   addu      $v1, $v0, $t3
/* 7B618 8007AA18 8E63001C */  lw         $v1, 0x1C($s3)
.L8007AA1C:
/* 7B61C 8007AA1C 8E790018 */  lw         $t9, 0x18($s3)
/* 7B620 8007AA20 8FAF0050 */  lw         $t7, 0x50($sp)
/* 7B624 8007AA24 8E6B0014 */  lw         $t3, 0x14($s3)
/* 7B628 8007AA28 00035040 */  sll        $t2, $v1, 1
/* 7B62C 8007AA2C 032FC021 */  addu       $t8, $t9, $t7
/* 7B630 8007AA30 016A6021 */  addu       $t4, $t3, $t2
/* 7B634 8007AA34 0198082B */  sltu       $at, $t4, $t8
/* 7B638 8007AA38 10200003 */  beqz       $at, .L8007AA48
/* 7B63C 8007AA3C AE780018 */   sw        $t8, 0x18($s3)
/* 7B640 8007AA40 030A6823 */  subu       $t5, $t8, $t2
/* 7B644 8007AA44 AE6D0018 */  sw         $t5, 0x18($s3)
.L8007AA48:
/* 7B648 8007AA48 3C0E0A00 */  lui        $t6, (0xA000800 >> 16)
/* 7B64C 8007AA4C 35CE0800 */  ori        $t6, $t6, (0xA000800 & 0xFFFF)
/* 7B650 8007AA50 02001825 */  or         $v1, $s0, $zero
/* 7B654 8007AA54 AC6E0000 */  sw         $t6, 0x0($v1)
/* 7B658 8007AA58 8FB90048 */  lw         $t9, 0x48($sp)
/* 7B65C 8007AA5C 3C0106C0 */  lui        $at, (0x6C00000 >> 16)
/* 7B660 8007AA60 26020008 */  addiu      $v0, $s0, 0x8
/* 7B664 8007AA64 03217825 */  or         $t7, $t9, $at
/* 7B668 8007AA68 AC6F0004 */  sw         $t7, 0x4($v1)
/* 7B66C 8007AA6C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 7B670 8007AA70 8FBE0040 */  lw         $fp, 0x40($sp)
/* 7B674 8007AA74 8FB7003C */  lw         $s7, 0x3C($sp)
/* 7B678 8007AA78 8FB60038 */  lw         $s6, 0x38($sp)
/* 7B67C 8007AA7C 8FB50034 */  lw         $s5, 0x34($sp)
/* 7B680 8007AA80 8FB40030 */  lw         $s4, 0x30($sp)
/* 7B684 8007AA84 8FB3002C */  lw         $s3, 0x2C($sp)
/* 7B688 8007AA88 8FB20028 */  lw         $s2, 0x28($sp)
/* 7B68C 8007AA8C 8FB10024 */  lw         $s1, 0x24($sp)
/* 7B690 8007AA90 8FB00020 */  lw         $s0, 0x20($sp)
/* 7B694 8007AA94 03E00008 */  jr         $ra
/* 7B698 8007AA98 27BD00A8 */   addiu     $sp, $sp, 0xA8
/* 7B69C 8007AA9C 00000000 */  nop
