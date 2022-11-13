.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8005EAB0
/* 5F6B0 8005EAB0 908E0000 */  lbu        $t6, 0x0($a0)
/* 5F6B4 8005EAB4 31D8FF7F */  andi       $t8, $t6, 0xFF7F
/* 5F6B8 8005EAB8 330800BF */  andi       $t0, $t8, 0xBF
/* 5F6BC 8005EABC A0980000 */  sb         $t8, 0x0($a0)
/* 5F6C0 8005EAC0 310A00DF */  andi       $t2, $t0, 0xDF
/* 5F6C4 8005EAC4 A0880000 */  sb         $t0, 0x0($a0)
/* 5F6C8 8005EAC8 A08A0000 */  sb         $t2, 0x0($a0)
/* 5F6CC 8005EACC 314B00EF */  andi       $t3, $t2, 0xEF
/* 5F6D0 8005EAD0 A08B0000 */  sb         $t3, 0x0($a0)
/* 5F6D4 8005EAD4 948C0000 */  lhu        $t4, 0x0($a0)
/* 5F6D8 8005EAD8 318DF03F */  andi       $t5, $t4, 0xF03F
/* 5F6DC 8005EADC A48D0000 */  sh         $t5, 0x0($a0)
/* 5F6E0 8005EAE0 908E0001 */  lbu        $t6, 0x1($a0)
/* 5F6E4 8005EAE4 31CFFFC0 */  andi       $t7, $t6, 0xFFC0
/* 5F6E8 8005EAE8 03E00008 */  jr         $ra
/* 5F6EC 8005EAEC A08F0001 */   sb        $t7, 0x1($a0)

glabel func_8005EAF0
/* 5F6F0 8005EAF0 27BDFF18 */  addiu      $sp, $sp, -0xE8
/* 5F6F4 8005EAF4 AFBF006C */  sw         $ra, 0x6C($sp)
/* 5F6F8 8005EAF8 AFBE0068 */  sw         $fp, 0x68($sp)
/* 5F6FC 8005EAFC AFB70064 */  sw         $s7, 0x64($sp)
/* 5F700 8005EB00 AFB60060 */  sw         $s6, 0x60($sp)
/* 5F704 8005EB04 AFB5005C */  sw         $s5, 0x5C($sp)
/* 5F708 8005EB08 AFB40058 */  sw         $s4, 0x58($sp)
/* 5F70C 8005EB0C AFB30054 */  sw         $s3, 0x54($sp)
/* 5F710 8005EB10 AFB20050 */  sw         $s2, 0x50($sp)
/* 5F714 8005EB14 AFB1004C */  sw         $s1, 0x4C($sp)
/* 5F718 8005EB18 AFB00048 */  sw         $s0, 0x48($sp)
/* 5F71C 8005EB1C F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 5F720 8005EB20 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 5F724 8005EB24 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 5F728 8005EB28 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 5F72C 8005EB2C F7B60020 */  sdc1       $f22, 0x20($sp)
/* 5F730 8005EB30 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 5F734 8005EB34 8C8E0000 */  lw         $t6, 0x0($a0)
/* 5F738 8005EB38 94900042 */  lhu        $s0, 0x42($a0)
/* 5F73C 8005EB3C 3C01800A */  lui        $at, %hi(D_80098700)
/* 5F740 8005EB40 000EC280 */  sll        $t8, $t6, 10
/* 5F744 8005EB44 07030004 */  bgezl      $t8, .L8005EB58
/* 5F748 8005EB48 44800000 */   mtc1      $zero, $f0
/* 5F74C 8005EB4C 1000011F */  b          .L8005EFCC
/* 5F750 8005EB50 00001025 */   or        $v0, $zero, $zero
/* 5F754 8005EB54 44800000 */  mtc1       $zero, $f0
.L8005EB58:
/* 5F758 8005EB58 C4228700 */  lwc1       $f2, %lo(D_80098700)($at)
/* 5F75C 8005EB5C 24920278 */  addiu      $s2, $a0, 0x278
/* 5F760 8005EB60 E6400000 */  swc1       $f0, 0x0($s2)
/* 5F764 8005EB64 E6400004 */  swc1       $f0, 0x4($s2)
/* 5F768 8005EB68 E6400008 */  swc1       $f0, 0x8($s2)
/* 5F76C 8005EB6C C48400A4 */  lwc1       $f4, 0xA4($a0)
/* 5F770 8005EB70 3C014024 */  lui        $at, (0x40240000 >> 16)
/* 5F774 8005EB74 4481B800 */  mtc1       $at, $f23
/* 5F778 8005EB78 46022182 */  mul.s      $f6, $f4, $f2
/* 5F77C 8005EB7C 4480B000 */  mtc1       $zero, $f22
/* 5F780 8005EB80 3C13801A */  lui        $s3, %hi(D_8019EEC0)
/* 5F784 8005EB84 2673EEC0 */  addiu      $s3, $s3, %lo(D_8019EEC0)
/* 5F788 8005EB88 27B900B0 */  addiu      $t9, $sp, 0xB0
/* 5F78C 8005EB8C 46003221 */  cvt.d.s    $f8, $f6
/* 5F790 8005EB90 46364282 */  mul.d      $f10, $f8, $f22
/* 5F794 8005EB94 46205420 */  cvt.s.d    $f16, $f10
/* 5F798 8005EB98 E6700000 */  swc1       $f16, 0x0($s3)
/* 5F79C 8005EB9C C49200A8 */  lwc1       $f18, 0xA8($a0)
/* 5F7A0 8005EBA0 8E610000 */  lw         $at, 0x0($s3)
/* 5F7A4 8005EBA4 46029102 */  mul.s      $f4, $f18, $f2
/* 5F7A8 8005EBA8 460021A1 */  cvt.d.s    $f6, $f4
/* 5F7AC 8005EBAC 46363202 */  mul.d      $f8, $f6, $f22
/* 5F7B0 8005EBB0 462042A0 */  cvt.s.d    $f10, $f8
/* 5F7B4 8005EBB4 E66A0004 */  swc1       $f10, 0x4($s3)
/* 5F7B8 8005EBB8 C49000AC */  lwc1       $f16, 0xAC($a0)
/* 5F7BC 8005EBBC 46028482 */  mul.s      $f18, $f16, $f2
/* 5F7C0 8005EBC0 46009121 */  cvt.d.s    $f4, $f18
/* 5F7C4 8005EBC4 46362182 */  mul.d      $f6, $f4, $f22
/* 5F7C8 8005EBC8 46203220 */  cvt.s.d    $f8, $f6
/* 5F7CC 8005EBCC E6680008 */  swc1       $f8, 0x8($s3)
/* 5F7D0 8005EBD0 AF210000 */  sw         $at, 0x0($t9)
/* 5F7D4 8005EBD4 8E6A0004 */  lw         $t2, 0x4($s3)
/* 5F7D8 8005EBD8 AF2A0004 */  sw         $t2, 0x4($t9)
/* 5F7DC 8005EBDC 8E610008 */  lw         $at, 0x8($s3)
/* 5F7E0 8005EBE0 AF210008 */  sw         $at, 0x8($t9)
/* 5F7E4 8005EBE4 C7AA00B0 */  lwc1       $f10, 0xB0($sp)
/* 5F7E8 8005EBE8 C7B200B4 */  lwc1       $f18, 0xB4($sp)
/* 5F7EC 8005EBEC C7A800B8 */  lwc1       $f8, 0xB8($sp)
/* 5F7F0 8005EBF0 460A5402 */  mul.s      $f16, $f10, $f10
/* 5F7F4 8005EBF4 AFA400E8 */  sw         $a0, 0xE8($sp)
/* 5F7F8 8005EBF8 46129102 */  mul.s      $f4, $f18, $f18
/* 5F7FC 8005EBFC 46048180 */  add.s      $f6, $f16, $f4
/* 5F800 8005EC00 46084282 */  mul.s      $f10, $f8, $f8
/* 5F804 8005EC04 0C01AB7C */  jal        sqrtf
/* 5F808 8005EC08 460A3300 */   add.s     $f12, $f6, $f10
/* 5F80C 8005EC0C 44809000 */  mtc1       $zero, $f18
/* 5F810 8005EC10 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 5F814 8005EC14 46120032 */  c.eq.s     $f0, $f18
/* 5F818 8005EC18 00000000 */  nop
/* 5F81C 8005EC1C 45020004 */  bc1fl      .L8005EC30
/* 5F820 8005EC20 44818800 */   mtc1      $at, $f17
/* 5F824 8005EC24 100000E9 */  b          .L8005EFCC
/* 5F828 8005EC28 00001025 */   or        $v0, $zero, $zero
/* 5F82C 8005EC2C 44818800 */  mtc1       $at, $f17
.L8005EC30:
/* 5F830 8005EC30 44808000 */  mtc1       $zero, $f16
/* 5F834 8005EC34 46000121 */  cvt.d.s    $f4, $f0
/* 5F838 8005EC38 C7A600B0 */  lwc1       $f6, 0xB0($sp)
/* 5F83C 8005EC3C 46248203 */  div.d      $f8, $f16, $f4
/* 5F840 8005EC40 C7B200B4 */  lwc1       $f18, 0xB4($sp)
/* 5F844 8005EC44 C7A400B8 */  lwc1       $f4, 0xB8($sp)
/* 5F848 8005EC48 8FA300E8 */  lw         $v1, 0xE8($sp)
/* 5F84C 8005EC4C 3C0B8014 */  lui        $t3, %hi(D_8013FF68)
/* 5F850 8005EC50 8D6BFF68 */  lw         $t3, %lo(D_8013FF68)($t3)
/* 5F854 8005EC54 00106880 */  sll        $t5, $s0, 2
/* 5F858 8005EC58 3C1E8011 */  lui        $fp, %hi(D_8010CAD0)
/* 5F85C 8005EC5C 3C14801A */  lui        $s4, %hi(D_8019EFF0)
/* 5F860 8005EC60 0000A825 */  or         $s5, $zero, $zero
/* 5F864 8005EC64 00004025 */  or         $t0, $zero, $zero
/* 5F868 8005EC68 2694EFF0 */  addiu      $s4, $s4, %lo(D_8019EFF0)
/* 5F86C 8005EC6C 27DECAD0 */  addiu      $fp, $fp, %lo(D_8010CAD0)
/* 5F870 8005EC70 0000B025 */  or         $s6, $zero, $zero
/* 5F874 8005EC74 00008825 */  or         $s1, $zero, $zero
/* 5F878 8005EC78 46204520 */  cvt.s.d    $f20, $f8
/* 5F87C 8005EC7C 46143282 */  mul.s      $f10, $f6, $f20
/* 5F880 8005EC80 00000000 */  nop
/* 5F884 8005EC84 46149402 */  mul.s      $f16, $f18, $f20
/* 5F888 8005EC88 00000000 */  nop
/* 5F88C 8005EC8C 46142202 */  mul.s      $f8, $f4, $f20
/* 5F890 8005EC90 E7AA00B0 */  swc1       $f10, 0xB0($sp)
/* 5F894 8005EC94 E7B000B4 */  swc1       $f16, 0xB4($sp)
/* 5F898 8005EC98 E7A800B8 */  swc1       $f8, 0xB8($sp)
/* 5F89C 8005EC9C C4660274 */  lwc1       $f6, 0x274($v1)
/* 5F8A0 8005ECA0 C4700268 */  lwc1       $f16, 0x268($v1)
/* 5F8A4 8005ECA4 460032A1 */  cvt.d.s    $f10, $f6
/* 5F8A8 8005ECA8 46008121 */  cvt.d.s    $f4, $f16
/* 5F8AC 8005ECAC 46365482 */  mul.d      $f18, $f10, $f22
/* 5F8B0 8005ECB0 00000000 */  nop
/* 5F8B4 8005ECB4 46362202 */  mul.d      $f8, $f4, $f22
/* 5F8B8 8005ECB8 462097A0 */  cvt.s.d    $f30, $f18
/* 5F8BC 8005ECBC 462041A0 */  cvt.s.d    $f6, $f8
/* 5F8C0 8005ECC0 E7A600C8 */  swc1       $f6, 0xC8($sp)
/* 5F8C4 8005ECC4 C46A026C */  lwc1       $f10, 0x26C($v1)
/* 5F8C8 8005ECC8 460054A1 */  cvt.d.s    $f18, $f10
/* 5F8CC 8005ECCC 46369402 */  mul.d      $f16, $f18, $f22
/* 5F8D0 8005ECD0 46208120 */  cvt.s.d    $f4, $f16
/* 5F8D4 8005ECD4 E7A400CC */  swc1       $f4, 0xCC($sp)
/* 5F8D8 8005ECD8 C4680270 */  lwc1       $f8, 0x270($v1)
/* 5F8DC 8005ECDC 460042A1 */  cvt.d.s    $f10, $f8
/* 5F8E0 8005ECE0 C6680000 */  lwc1       $f8, 0x0($s3)
/* 5F8E4 8005ECE4 46365482 */  mul.d      $f18, $f10, $f22
/* 5F8E8 8005ECE8 C66A0004 */  lwc1       $f10, 0x4($s3)
/* 5F8EC 8005ECEC 46083600 */  add.s      $f24, $f6, $f8
/* 5F8F0 8005ECF0 460A2680 */  add.s      $f26, $f4, $f10
/* 5F8F4 8005ECF4 46209420 */  cvt.s.d    $f16, $f18
/* 5F8F8 8005ECF8 C6720008 */  lwc1       $f18, 0x8($s3)
/* 5F8FC 8005ECFC E7B000D0 */  swc1       $f16, 0xD0($sp)
/* 5F900 8005ED00 8D6C000C */  lw         $t4, 0xC($t3)
/* 5F904 8005ED04 46128700 */  add.s      $f28, $f16, $f18
/* 5F908 8005ED08 018DB821 */  addu       $s7, $t4, $t5
/* 5F90C 8005ED0C 96E20000 */  lhu        $v0, 0x0($s7)
.L8005ED10:
/* 5F910 8005ED10 1840006E */  blez       $v0, .L8005EECC
/* 5F914 8005ED14 00000000 */   nop
/* 5F918 8005ED18 AFA800D4 */  sw         $t0, 0xD4($sp)
/* 5F91C 8005ED1C 96EE0002 */  lhu        $t6, 0x2($s7)
.L8005ED20:
/* 5F920 8005ED20 4407F000 */  mfc1       $a3, $f30
/* 5F924 8005ED24 27A500C8 */  addiu      $a1, $sp, 0xC8
/* 5F928 8005ED28 01D12021 */  addu       $a0, $t6, $s1
/* 5F92C 8005ED2C 0004C100 */  sll        $t8, $a0, 4
/* 5F930 8005ED30 AE840000 */  sw         $a0, 0x0($s4)
/* 5F934 8005ED34 03D88021 */  addu       $s0, $fp, $t8
/* 5F938 8005ED38 0C017C05 */  jal        func_8005F014
/* 5F93C 8005ED3C 02603025 */   or        $a2, $s3, $zero
/* 5F940 8005ED40 1040005B */  beqz       $v0, .L8005EEB0
/* 5F944 8005ED44 0015C880 */   sll       $t9, $s5, 2
/* 5F948 8005ED48 8E890000 */  lw         $t1, 0x0($s4)
/* 5F94C 8005ED4C 3C01801A */  lui        $at, %hi(D_8019EE70)
/* 5F950 8005ED50 00390821 */  addu       $at, $at, $t9
/* 5F954 8005ED54 AC29EE70 */  sw         $t1, %lo(D_8019EE70)($at)
/* 5F958 8005ED58 C6460000 */  lwc1       $f6, 0x0($s2)
/* 5F95C 8005ED5C C6080000 */  lwc1       $f8, 0x0($s0)
/* 5F960 8005ED60 C64A0004 */  lwc1       $f10, 0x4($s2)
/* 5F964 8005ED64 3C01800A */  lui        $at, %hi(D_80098708)
/* 5F968 8005ED68 46083100 */  add.s      $f4, $f6, $f8
/* 5F96C 8005ED6C C6460008 */  lwc1       $f6, 0x8($s2)
/* 5F970 8005ED70 26B50001 */  addiu      $s5, $s5, 0x1
/* 5F974 8005ED74 26D60001 */  addiu      $s6, $s6, 0x1
/* 5F978 8005ED78 E6440000 */  swc1       $f4, 0x0($s2)
/* 5F97C 8005ED7C C6100004 */  lwc1       $f16, 0x4($s0)
/* 5F980 8005ED80 02402025 */  or         $a0, $s2, $zero
/* 5F984 8005ED84 46105480 */  add.s      $f18, $f10, $f16
/* 5F988 8005ED88 4600F2A1 */  cvt.d.s    $f10, $f30
/* 5F98C 8005ED8C E6520004 */  swc1       $f18, 0x4($s2)
/* 5F990 8005ED90 C6080008 */  lwc1       $f8, 0x8($s0)
/* 5F994 8005ED94 46083100 */  add.s      $f4, $f6, $f8
/* 5F998 8005ED98 E6440008 */  swc1       $f4, 0x8($s2)
/* 5F99C 8005ED9C D4308708 */  ldc1       $f16, %lo(D_80098708)($at)
/* 5F9A0 8005EDA0 46305582 */  mul.d      $f22, $f10, $f16
/* 5F9A4 8005EDA4 0C009090 */  jal        func_80024240
/* 5F9A8 8005EDA8 00000000 */   nop
/* 5F9AC 8005EDAC 3C018009 */  lui        $at, %hi(D_8008FA8C)
/* 5F9B0 8005EDB0 C432FA8C */  lwc1       $f18, %lo(D_8008FA8C)($at)
/* 5F9B4 8005EDB4 C6040000 */  lwc1       $f4, 0x0($s0)
/* 5F9B8 8005EDB8 C6100004 */  lwc1       $f16, 0x4($s0)
/* 5F9BC 8005EDBC 460091A1 */  cvt.d.s    $f6, $f18
/* 5F9C0 8005EDC0 27AA00B0 */  addiu      $t2, $sp, 0xB0
/* 5F9C4 8005EDC4 4626B201 */  sub.d      $f8, $f22, $f6
/* 5F9C8 8005EDC8 C6060008 */  lwc1       $f6, 0x8($s0)
/* 5F9CC 8005EDCC 46204520 */  cvt.s.d    $f20, $f8
/* 5F9D0 8005EDD0 46142282 */  mul.s      $f10, $f4, $f20
/* 5F9D4 8005EDD4 C7A400C8 */  lwc1       $f4, 0xC8($sp)
/* 5F9D8 8005EDD8 46148482 */  mul.s      $f18, $f16, $f20
/* 5F9DC 8005EDDC C7B000CC */  lwc1       $f16, 0xCC($sp)
/* 5F9E0 8005EDE0 46143202 */  mul.s      $f8, $f6, $f20
/* 5F9E4 8005EDE4 C7A600D0 */  lwc1       $f6, 0xD0($sp)
/* 5F9E8 8005EDE8 460AC600 */  add.s      $f24, $f24, $f10
/* 5F9EC 8005EDEC 4612D680 */  add.s      $f26, $f26, $f18
/* 5F9F0 8005EDF0 4608E700 */  add.s      $f28, $f28, $f8
/* 5F9F4 8005EDF4 4604C281 */  sub.s      $f10, $f24, $f4
/* 5F9F8 8005EDF8 4610D481 */  sub.s      $f18, $f26, $f16
/* 5F9FC 8005EDFC E66A0000 */  swc1       $f10, 0x0($s3)
/* 5FA00 8005EE00 8E610000 */  lw         $at, 0x0($s3)
/* 5FA04 8005EE04 4606E201 */  sub.s      $f8, $f28, $f6
/* 5FA08 8005EE08 E6720004 */  swc1       $f18, 0x4($s3)
/* 5FA0C 8005EE0C E6680008 */  swc1       $f8, 0x8($s3)
/* 5FA10 8005EE10 AD410000 */  sw         $at, 0x0($t2)
/* 5FA14 8005EE14 8E6C0004 */  lw         $t4, 0x4($s3)
/* 5FA18 8005EE18 AD4C0004 */  sw         $t4, 0x4($t2)
/* 5FA1C 8005EE1C 8E610008 */  lw         $at, 0x8($s3)
/* 5FA20 8005EE20 AD410008 */  sw         $at, 0x8($t2)
/* 5FA24 8005EE24 C7A400B0 */  lwc1       $f4, 0xB0($sp)
/* 5FA28 8005EE28 C7B000B4 */  lwc1       $f16, 0xB4($sp)
/* 5FA2C 8005EE2C C7A800B8 */  lwc1       $f8, 0xB8($sp)
/* 5FA30 8005EE30 46042282 */  mul.s      $f10, $f4, $f4
/* 5FA34 8005EE34 00000000 */  nop
/* 5FA38 8005EE38 46108482 */  mul.s      $f18, $f16, $f16
/* 5FA3C 8005EE3C 46125180 */  add.s      $f6, $f10, $f18
/* 5FA40 8005EE40 46084102 */  mul.s      $f4, $f8, $f8
/* 5FA44 8005EE44 0C01AB7C */  jal        sqrtf
/* 5FA48 8005EE48 46043300 */   add.s     $f12, $f6, $f4
/* 5FA4C 8005EE4C 44808000 */  mtc1       $zero, $f16
/* 5FA50 8005EE50 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 5FA54 8005EE54 46100032 */  c.eq.s     $f0, $f16
/* 5FA58 8005EE58 00000000 */  nop
/* 5FA5C 8005EE5C 45020005 */  bc1fl      .L8005EE74
/* 5FA60 8005EE60 44815800 */   mtc1      $at, $f11
/* 5FA64 8005EE64 8FA800D4 */  lw         $t0, 0xD4($sp)
/* 5FA68 8005EE68 10000018 */  b          .L8005EECC
/* 5FA6C 8005EE6C 8FA300E8 */   lw        $v1, 0xE8($sp)
/* 5FA70 8005EE70 44815800 */  mtc1       $at, $f11
.L8005EE74:
/* 5FA74 8005EE74 44805000 */  mtc1       $zero, $f10
/* 5FA78 8005EE78 460004A1 */  cvt.d.s    $f18, $f0
/* 5FA7C 8005EE7C C7A600B0 */  lwc1       $f6, 0xB0($sp)
/* 5FA80 8005EE80 46325203 */  div.d      $f8, $f10, $f18
/* 5FA84 8005EE84 C7B000B4 */  lwc1       $f16, 0xB4($sp)
/* 5FA88 8005EE88 C7B200B8 */  lwc1       $f18, 0xB8($sp)
/* 5FA8C 8005EE8C 46204520 */  cvt.s.d    $f20, $f8
/* 5FA90 8005EE90 46143102 */  mul.s      $f4, $f6, $f20
/* 5FA94 8005EE94 00000000 */  nop
/* 5FA98 8005EE98 46148282 */  mul.s      $f10, $f16, $f20
/* 5FA9C 8005EE9C 00000000 */  nop
/* 5FAA0 8005EEA0 46149202 */  mul.s      $f8, $f18, $f20
/* 5FAA4 8005EEA4 E7A400B0 */  swc1       $f4, 0xB0($sp)
/* 5FAA8 8005EEA8 E7AA00B4 */  swc1       $f10, 0xB4($sp)
/* 5FAAC 8005EEAC E7A800B8 */  swc1       $f8, 0xB8($sp)
.L8005EEB0:
/* 5FAB0 8005EEB0 96ED0000 */  lhu        $t5, 0x0($s7)
/* 5FAB4 8005EEB4 26310001 */  addiu      $s1, $s1, 0x1
/* 5FAB8 8005EEB8 022D082A */  slt        $at, $s1, $t5
/* 5FABC 8005EEBC 5420FF98 */  bnel       $at, $zero, .L8005ED20
/* 5FAC0 8005EEC0 96EE0002 */   lhu       $t6, 0x2($s7)
/* 5FAC4 8005EEC4 8FA800D4 */  lw         $t0, 0xD4($sp)
/* 5FAC8 8005EEC8 8FA300E8 */  lw         $v1, 0xE8($sp)
.L8005EECC:
/* 5FACC 8005EECC 1AC00007 */  blez       $s6, .L8005EEEC
/* 5FAD0 8005EED0 25080001 */   addiu     $t0, $t0, 0x1
/* 5FAD4 8005EED4 2901000B */  slti       $at, $t0, 0xB
/* 5FAD8 8005EED8 10200004 */  beqz       $at, .L8005EEEC
/* 5FADC 8005EEDC 0000B025 */   or        $s6, $zero, $zero
/* 5FAE0 8005EEE0 00008825 */  or         $s1, $zero, $zero
/* 5FAE4 8005EEE4 1000FF8A */  b          .L8005ED10
/* 5FAE8 8005EEE8 96E20000 */   lhu       $v0, 0x0($s7)
.L8005EEEC:
/* 5FAEC 8005EEEC 12A00037 */  beqz       $s5, .L8005EFCC
/* 5FAF0 8005EEF0 00001025 */   or        $v0, $zero, $zero
/* 5FAF4 8005EEF4 3C01800A */  lui        $at, %hi(D_80098710)
/* 5FAF8 8005EEF8 D4208710 */  ldc1       $f0, %lo(D_80098710)($at)
/* 5FAFC 8005EEFC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 5FB00 8005EF00 44811000 */  mtc1       $at, $f2
/* 5FB04 8005EF04 3C018009 */  lui        $at, %hi(D_8008FA80)
/* 5FB08 8005EF08 AC35FA80 */  sw         $s5, %lo(D_8008FA80)($at)
/* 5FB0C 8005EF0C C6660000 */  lwc1       $f6, 0x0($s3)
/* 5FB10 8005EF10 846F0036 */  lh         $t7, 0x36($v1)
/* 5FB14 8005EF14 3C01800A */  lui        $at, %hi(D_80098720)
/* 5FB18 8005EF18 46023102 */  mul.s      $f4, $f6, $f2
/* 5FB1C 8005EF1C 46002421 */  cvt.d.s    $f16, $f4
/* 5FB20 8005EF20 46208282 */  mul.d      $f10, $f16, $f0
/* 5FB24 8005EF24 462054A0 */  cvt.s.d    $f18, $f10
/* 5FB28 8005EF28 E47200A4 */  swc1       $f18, 0xA4($v1)
/* 5FB2C 8005EF2C C6680004 */  lwc1       $f8, 0x4($s3)
/* 5FB30 8005EF30 46024182 */  mul.s      $f6, $f8, $f2
/* 5FB34 8005EF34 46003121 */  cvt.d.s    $f4, $f6
/* 5FB38 8005EF38 46202402 */  mul.d      $f16, $f4, $f0
/* 5FB3C 8005EF3C 462082A0 */  cvt.s.d    $f10, $f16
/* 5FB40 8005EF40 E46A00A8 */  swc1       $f10, 0xA8($v1)
/* 5FB44 8005EF44 C6720008 */  lwc1       $f18, 0x8($s3)
/* 5FB48 8005EF48 C46A01B0 */  lwc1       $f10, 0x1B0($v1)
/* 5FB4C 8005EF4C 46029202 */  mul.s      $f8, $f18, $f2
/* 5FB50 8005EF50 460041A1 */  cvt.d.s    $f6, $f8
/* 5FB54 8005EF54 46203102 */  mul.d      $f4, $f6, $f0
/* 5FB58 8005EF58 C46601B4 */  lwc1       $f6, 0x1B4($v1)
/* 5FB5C 8005EF5C 46202420 */  cvt.s.d    $f16, $f4
/* 5FB60 8005EF60 E47000AC */  swc1       $f16, 0xAC($v1)
/* 5FB64 8005EF64 C6520000 */  lwc1       $f18, 0x0($s2)
/* 5FB68 8005EF68 C6440004 */  lwc1       $f4, 0x4($s2)
/* 5FB6C 8005EF6C 46125202 */  mul.s      $f8, $f10, $f18
/* 5FB70 8005EF70 C47201B8 */  lwc1       $f18, 0x1B8($v1)
/* 5FB74 8005EF74 46043402 */  mul.s      $f16, $f6, $f4
/* 5FB78 8005EF78 C6460008 */  lwc1       $f6, 0x8($s2)
/* 5FB7C 8005EF7C 46069102 */  mul.s      $f4, $f18, $f6
/* 5FB80 8005EF80 46104280 */  add.s      $f10, $f8, $f16
/* 5FB84 8005EF84 05E10004 */  bgez       $t7, .L8005EF98
/* 5FB88 8005EF88 46045500 */   add.s     $f20, $f10, $f4
/* 5FB8C 8005EF8C 3C01800A */  lui        $at, %hi(D_80098718)
/* 5FB90 8005EF90 10000002 */  b          .L8005EF9C
/* 5FB94 8005EF94 D4208718 */   ldc1      $f0, %lo(D_80098718)($at)
.L8005EF98:
/* 5FB98 8005EF98 D4208720 */  ldc1       $f0, %lo(D_80098720)($at)
.L8005EF9C:
/* 5FB9C 8005EF9C 4600A221 */  cvt.d.s    $f8, $f20
/* 5FBA0 8005EFA0 4620403C */  c.lt.d     $f8, $f0
/* 5FBA4 8005EFA4 00000000 */  nop
/* 5FBA8 8005EFA8 45000006 */  bc1f       .L8005EFC4
/* 5FBAC 8005EFAC 00000000 */   nop
/* 5FBB0 8005EFB0 A0600055 */  sb         $zero, 0x55($v1)
/* 5FBB4 8005EFB4 0C017DE4 */  jal        func_8005F790
/* 5FBB8 8005EFB8 C46C0030 */   lwc1      $f12, 0x30($v1)
/* 5FBBC 8005EFBC 10000004 */  b          .L8005EFD0
/* 5FBC0 8005EFC0 8FBF006C */   lw        $ra, 0x6C($sp)
.L8005EFC4:
/* 5FBC4 8005EFC4 10000001 */  b          .L8005EFCC
/* 5FBC8 8005EFC8 24020005 */   addiu     $v0, $zero, 0x5
.L8005EFCC:
/* 5FBCC 8005EFCC 8FBF006C */  lw         $ra, 0x6C($sp)
.L8005EFD0:
/* 5FBD0 8005EFD0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 5FBD4 8005EFD4 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 5FBD8 8005EFD8 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 5FBDC 8005EFDC D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 5FBE0 8005EFE0 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 5FBE4 8005EFE4 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 5FBE8 8005EFE8 8FB00048 */  lw         $s0, 0x48($sp)
/* 5FBEC 8005EFEC 8FB1004C */  lw         $s1, 0x4C($sp)
/* 5FBF0 8005EFF0 8FB20050 */  lw         $s2, 0x50($sp)
/* 5FBF4 8005EFF4 8FB30054 */  lw         $s3, 0x54($sp)
/* 5FBF8 8005EFF8 8FB40058 */  lw         $s4, 0x58($sp)
/* 5FBFC 8005EFFC 8FB5005C */  lw         $s5, 0x5C($sp)
/* 5FC00 8005F000 8FB60060 */  lw         $s6, 0x60($sp)
/* 5FC04 8005F004 8FB70064 */  lw         $s7, 0x64($sp)
/* 5FC08 8005F008 8FBE0068 */  lw         $fp, 0x68($sp)
/* 5FC0C 8005F00C 03E00008 */  jr         $ra
/* 5FC10 8005F010 27BD00E8 */   addiu     $sp, $sp, 0xE8

glabel func_8005F014
/* 5FC14 8005F014 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5FC18 8005F018 3C0E8014 */  lui        $t6, %hi(D_8013FF68)
/* 5FC1C 8005F01C 8DCEFF68 */  lw         $t6, %lo(D_8013FF68)($t6)
/* 5FC20 8005F020 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5FC24 8005F024 AFA40028 */  sw         $a0, 0x28($sp)
/* 5FC28 8005F028 AFA5002C */  sw         $a1, 0x2C($sp)
/* 5FC2C 8005F02C AFA70034 */  sw         $a3, 0x34($sp)
/* 5FC30 8005F030 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 5FC34 8005F034 3C07801A */  lui        $a3, %hi(D_8019EF00)
/* 5FC38 8005F038 8DCF0008 */  lw         $t7, 0x8($t6)
/* 5FC3C 8005F03C 24E7EF00 */  addiu      $a3, $a3, %lo(D_8019EF00)
/* 5FC40 8005F040 E4E40000 */  swc1       $f4, 0x0($a3)
/* 5FC44 8005F044 C4C60004 */  lwc1       $f6, 0x4($a2)
/* 5FC48 8005F048 C4E00000 */  lwc1       $f0, 0x0($a3)
/* 5FC4C 8005F04C 0004C8C0 */  sll        $t9, $a0, 3
/* 5FC50 8005F050 E4E60004 */  swc1       $f6, 0x4($a3)
/* 5FC54 8005F054 46000282 */  mul.s      $f10, $f0, $f0
/* 5FC58 8005F058 C4C80008 */  lwc1       $f8, 0x8($a2)
/* 5FC5C 8005F05C C4E20004 */  lwc1       $f2, 0x4($a3)
/* 5FC60 8005F060 0324C821 */  addu       $t9, $t9, $a0
/* 5FC64 8005F064 E4E80008 */  swc1       $f8, 0x8($a3)
/* 5FC68 8005F068 46021402 */  mul.s      $f16, $f2, $f2
/* 5FC6C 8005F06C C4EE0008 */  lwc1       $f14, 0x8($a3)
/* 5FC70 8005F070 0019C840 */  sll        $t9, $t9, 1
/* 5FC74 8005F074 01F91021 */  addu       $v0, $t7, $t9
/* 5FC78 8005F078 460E7102 */  mul.s      $f4, $f14, $f14
/* 5FC7C 8005F07C AFA20020 */  sw         $v0, 0x20($sp)
/* 5FC80 8005F080 AFA60030 */  sw         $a2, 0x30($sp)
/* 5FC84 8005F084 46105480 */  add.s      $f18, $f10, $f16
/* 5FC88 8005F088 0C01AB7C */  jal        sqrtf
/* 5FC8C 8005F08C 46049300 */   add.s     $f12, $f18, $f4
/* 5FC90 8005F090 3C038009 */  lui        $v1, %hi(D_8008FA84)
/* 5FC94 8005F094 2463FA84 */  addiu      $v1, $v1, %lo(D_8008FA84)
/* 5FC98 8005F098 E4600000 */  swc1       $f0, 0x0($v1)
/* 5FC9C 8005F09C C4620000 */  lwc1       $f2, 0x0($v1)
/* 5FCA0 8005F0A0 44803000 */  mtc1       $zero, $f6
/* 5FCA4 8005F0A4 3C07801A */  lui        $a3, %hi(D_8019EF00)
/* 5FCA8 8005F0A8 24E7EF00 */  addiu      $a3, $a3, %lo(D_8019EF00)
/* 5FCAC 8005F0AC 46023032 */  c.eq.s     $f6, $f2
/* 5FCB0 8005F0B0 8FA20020 */  lw         $v0, 0x20($sp)
/* 5FCB4 8005F0B4 8FA60030 */  lw         $a2, 0x30($sp)
/* 5FCB8 8005F0B8 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 5FCBC 8005F0BC 45020004 */  bc1fl      .L8005F0D0
/* 5FCC0 8005F0C0 44814800 */   mtc1      $at, $f9
/* 5FCC4 8005F0C4 100001AE */  b          .L8005F780
/* 5FCC8 8005F0C8 00001025 */   or        $v0, $zero, $zero
/* 5FCCC 8005F0CC 44814800 */  mtc1       $at, $f9
.L8005F0D0:
/* 5FCD0 8005F0D0 44804000 */  mtc1       $zero, $f8
/* 5FCD4 8005F0D4 460012A1 */  cvt.d.s    $f10, $f2
/* 5FCD8 8005F0D8 C4F20000 */  lwc1       $f18, 0x0($a3)
/* 5FCDC 8005F0DC 462A4403 */  div.d      $f16, $f8, $f10
/* 5FCE0 8005F0E0 C4E60004 */  lwc1       $f6, 0x4($a3)
/* 5FCE4 8005F0E4 C4EA0008 */  lwc1       $f10, 0x8($a3)
/* 5FCE8 8005F0E8 8FA80028 */  lw         $t0, 0x28($sp)
/* 5FCEC 8005F0EC 3C0A8011 */  lui        $t2, %hi(D_8010CAD0)
/* 5FCF0 8005F0F0 254ACAD0 */  addiu      $t2, $t2, %lo(D_8010CAD0)
/* 5FCF4 8005F0F4 00084900 */  sll        $t1, $t0, 4
/* 5FCF8 8005F0F8 012A5821 */  addu       $t3, $t1, $t2
/* 5FCFC 8005F0FC 3C04801A */  lui        $a0, %hi(D_8019EF20)
/* 5FD00 8005F100 2484EF20 */  addiu      $a0, $a0, %lo(D_8019EF20)
/* 5FD04 8005F104 3C038009 */  lui        $v1, %hi(D_8008FA88)
/* 5FD08 8005F108 2463FA88 */  addiu      $v1, $v1, %lo(D_8008FA88)
/* 5FD0C 8005F10C 44809800 */  mtc1       $zero, $f19
/* 5FD10 8005F110 46208020 */  cvt.s.d    $f0, $f16
/* 5FD14 8005F114 46009102 */  mul.s      $f4, $f18, $f0
/* 5FD18 8005F118 00000000 */  nop
/* 5FD1C 8005F11C 46003202 */  mul.s      $f8, $f6, $f0
/* 5FD20 8005F120 44803000 */  mtc1       $zero, $f6
/* 5FD24 8005F124 46005402 */  mul.s      $f16, $f10, $f0
/* 5FD28 8005F128 E4E40000 */  swc1       $f4, 0x0($a3)
/* 5FD2C 8005F12C E4E80004 */  swc1       $f8, 0x4($a3)
/* 5FD30 8005F130 E4F00008 */  swc1       $f16, 0x8($a3)
/* 5FD34 8005F134 8D610000 */  lw         $at, 0x0($t3)
/* 5FD38 8005F138 C4F00000 */  lwc1       $f16, 0x0($a3)
/* 5FD3C 8005F13C AC810000 */  sw         $at, 0x0($a0)
/* 5FD40 8005F140 8D6D0004 */  lw         $t5, 0x4($t3)
/* 5FD44 8005F144 AC8D0004 */  sw         $t5, 0x4($a0)
/* 5FD48 8005F148 8D610008 */  lw         $at, 0x8($t3)
/* 5FD4C 8005F14C AC810008 */  sw         $at, 0x8($a0)
/* 5FD50 8005F150 8D6D000C */  lw         $t5, 0xC($t3)
/* 5FD54 8005F154 3C014024 */  lui        $at, (0x40240000 >> 16)
/* 5FD58 8005F158 44813800 */  mtc1       $at, $f7
/* 5FD5C 8005F15C AC8D000C */  sw         $t5, 0xC($a0)
/* 5FD60 8005F160 C492000C */  lwc1       $f18, 0xC($a0)
/* 5FD64 8005F164 46009121 */  cvt.d.s    $f4, $f18
/* 5FD68 8005F168 C4920000 */  lwc1       $f18, 0x0($a0)
/* 5FD6C 8005F16C 46262202 */  mul.d      $f8, $f4, $f6
/* 5FD70 8005F170 C4E60004 */  lwc1       $f6, 0x4($a3)
/* 5FD74 8005F174 46128102 */  mul.s      $f4, $f16, $f18
/* 5FD78 8005F178 C4F20008 */  lwc1       $f18, 0x8($a3)
/* 5FD7C 8005F17C 462042A0 */  cvt.s.d    $f10, $f8
/* 5FD80 8005F180 C4880004 */  lwc1       $f8, 0x4($a0)
/* 5FD84 8005F184 E48A000C */  swc1       $f10, 0xC($a0)
/* 5FD88 8005F188 46083282 */  mul.s      $f10, $f6, $f8
/* 5FD8C 8005F18C C4860008 */  lwc1       $f6, 0x8($a0)
/* 5FD90 8005F190 46069202 */  mul.s      $f8, $f18, $f6
/* 5FD94 8005F194 44809000 */  mtc1       $zero, $f18
/* 5FD98 8005F198 460A2400 */  add.s      $f16, $f4, $f10
/* 5FD9C 8005F19C 46088100 */  add.s      $f4, $f16, $f8
/* 5FDA0 8005F1A0 E4640000 */  swc1       $f4, 0x0($v1)
/* 5FDA4 8005F1A4 C4600000 */  lwc1       $f0, 0x0($v1)
/* 5FDA8 8005F1A8 C7B00034 */  lwc1       $f16, 0x34($sp)
/* 5FDAC 8005F1AC 460002A1 */  cvt.d.s    $f10, $f0
/* 5FDB0 8005F1B0 462A903E */  c.le.d     $f18, $f10
/* 5FDB4 8005F1B4 00000000 */  nop
/* 5FDB8 8005F1B8 45000003 */  bc1f       .L8005F1C8
/* 5FDBC 8005F1BC 00000000 */   nop
/* 5FDC0 8005F1C0 1000016F */  b          .L8005F780
/* 5FDC4 8005F1C4 00001025 */   or        $v0, $zero, $zero
.L8005F1C8:
/* 5FDC8 8005F1C8 46000187 */  neg.s      $f6, $f0
/* 5FDCC 8005F1CC 8FA3002C */  lw         $v1, 0x2C($sp)
/* 5FDD0 8005F1D0 46103202 */  mul.s      $f8, $f6, $f16
/* 5FDD4 8005F1D4 3C018009 */  lui        $at, %hi(D_8008FA94)
/* 5FDD8 8005F1D8 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 5FDDC 8005F1DC 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 5FDE0 8005F1E0 E428FA94 */  swc1       $f8, %lo(D_8008FA94)($at)
/* 5FDE4 8005F1E4 C4CA0000 */  lwc1       $f10, 0x0($a2)
/* 5FDE8 8005F1E8 C4640000 */  lwc1       $f4, 0x0($v1)
/* 5FDEC 8005F1EC 460A2480 */  add.s      $f18, $f4, $f10
/* 5FDF0 8005F1F0 E4B20000 */  swc1       $f18, 0x0($a1)
/* 5FDF4 8005F1F4 C4D00004 */  lwc1       $f16, 0x4($a2)
/* 5FDF8 8005F1F8 C4660004 */  lwc1       $f6, 0x4($v1)
/* 5FDFC 8005F1FC 46103200 */  add.s      $f8, $f6, $f16
/* 5FE00 8005F200 E4A80004 */  swc1       $f8, 0x4($a1)
/* 5FE04 8005F204 C4CA0008 */  lwc1       $f10, 0x8($a2)
/* 5FE08 8005F208 C4640008 */  lwc1       $f4, 0x8($v1)
/* 5FE0C 8005F20C AFA20020 */  sw         $v0, 0x20($sp)
/* 5FE10 8005F210 460A2480 */  add.s      $f18, $f4, $f10
/* 5FE14 8005F214 0C0090B8 */  jal        func_800242E0
/* 5FE18 8005F218 E4B20008 */   swc1      $f18, 0x8($a1)
/* 5FE1C 8005F21C 3C038009 */  lui        $v1, %hi(D_8008FA8C)
/* 5FE20 8005F220 2463FA8C */  addiu      $v1, $v1, %lo(D_8008FA8C)
/* 5FE24 8005F224 E4600000 */  swc1       $f0, 0x0($v1)
/* 5FE28 8005F228 C4700000 */  lwc1       $f16, 0x0($v1)
/* 5FE2C 8005F22C C7A60034 */  lwc1       $f6, 0x34($sp)
/* 5FE30 8005F230 3C04801A */  lui        $a0, %hi(D_8019EF20)
/* 5FE34 8005F234 8FA20020 */  lw         $v0, 0x20($sp)
/* 5FE38 8005F238 4610303C */  c.lt.s     $f6, $f16
/* 5FE3C 8005F23C 2484EF20 */  addiu      $a0, $a0, %lo(D_8019EF20)
/* 5FE40 8005F240 8FA5002C */  lw         $a1, 0x2C($sp)
/* 5FE44 8005F244 45000003 */  bc1f       .L8005F254
/* 5FE48 8005F248 00000000 */   nop
/* 5FE4C 8005F24C 1000014C */  b          .L8005F780
/* 5FE50 8005F250 00001025 */   or        $v0, $zero, $zero
.L8005F254:
/* 5FE54 8005F254 0C0090B8 */  jal        func_800242E0
/* 5FE58 8005F258 AFA20020 */   sw        $v0, 0x20($sp)
/* 5FE5C 8005F25C 3C038009 */  lui        $v1, %hi(D_8008FA90)
/* 5FE60 8005F260 2463FA90 */  addiu      $v1, $v1, %lo(D_8008FA90)
/* 5FE64 8005F264 E4600000 */  swc1       $f0, 0x0($v1)
/* 5FE68 8005F268 C4640000 */  lwc1       $f4, 0x0($v1)
/* 5FE6C 8005F26C C7A80034 */  lwc1       $f8, 0x34($sp)
/* 5FE70 8005F270 3C07801A */  lui        $a3, %hi(D_8019EF00)
/* 5FE74 8005F274 24E7EF00 */  addiu      $a3, $a3, %lo(D_8019EF00)
/* 5FE78 8005F278 4608203E */  c.le.s     $f4, $f8
/* 5FE7C 8005F27C 8FA20020 */  lw         $v0, 0x20($sp)
/* 5FE80 8005F280 45020004 */  bc1fl      .L8005F294
/* 5FE84 8005F284 844E0000 */   lh        $t6, 0x0($v0)
/* 5FE88 8005F288 1000013D */  b          .L8005F780
/* 5FE8C 8005F28C 00001025 */   or        $v0, $zero, $zero
/* 5FE90 8005F290 844E0000 */  lh         $t6, 0x0($v0)
.L8005F294:
/* 5FE94 8005F294 3C05801A */  lui        $a1, %hi(D_8019EED0)
/* 5FE98 8005F298 24A5EED0 */  addiu      $a1, $a1, %lo(D_8019EED0)
/* 5FE9C 8005F29C 448E5000 */  mtc1       $t6, $f10
/* 5FEA0 8005F2A0 3C06801A */  lui        $a2, %hi(D_8019EEE0)
/* 5FEA4 8005F2A4 24C6EEE0 */  addiu      $a2, $a2, %lo(D_8019EEE0)
/* 5FEA8 8005F2A8 468054A0 */  cvt.s.w    $f18, $f10
/* 5FEAC 8005F2AC 3C04801A */  lui        $a0, %hi(D_8019EF30)
/* 5FEB0 8005F2B0 2484EF30 */  addiu      $a0, $a0, %lo(D_8019EF30)
/* 5FEB4 8005F2B4 E4B20000 */  swc1       $f18, 0x0($a1)
/* 5FEB8 8005F2B8 84580002 */  lh         $t8, 0x2($v0)
/* 5FEBC 8005F2BC 44983000 */  mtc1       $t8, $f6
/* 5FEC0 8005F2C0 00000000 */  nop
/* 5FEC4 8005F2C4 46803420 */  cvt.s.w    $f16, $f6
/* 5FEC8 8005F2C8 E4B00004 */  swc1       $f16, 0x4($a1)
/* 5FECC 8005F2CC 844F0004 */  lh         $t7, 0x4($v0)
/* 5FED0 8005F2D0 448F4000 */  mtc1       $t7, $f8
/* 5FED4 8005F2D4 00000000 */  nop
/* 5FED8 8005F2D8 46804120 */  cvt.s.w    $f4, $f8
/* 5FEDC 8005F2DC E4A40008 */  swc1       $f4, 0x8($a1)
/* 5FEE0 8005F2E0 84590006 */  lh         $t9, 0x6($v0)
/* 5FEE4 8005F2E4 44995000 */  mtc1       $t9, $f10
/* 5FEE8 8005F2E8 00000000 */  nop
/* 5FEEC 8005F2EC 468054A0 */  cvt.s.w    $f18, $f10
/* 5FEF0 8005F2F0 E4D20000 */  swc1       $f18, 0x0($a2)
/* 5FEF4 8005F2F4 84480008 */  lh         $t0, 0x8($v0)
/* 5FEF8 8005F2F8 44883000 */  mtc1       $t0, $f6
/* 5FEFC 8005F2FC 00000000 */  nop
/* 5FF00 8005F300 46803420 */  cvt.s.w    $f16, $f6
/* 5FF04 8005F304 E4D00004 */  swc1       $f16, 0x4($a2)
/* 5FF08 8005F308 8449000A */  lh         $t1, 0xA($v0)
/* 5FF0C 8005F30C AFA20020 */  sw         $v0, 0x20($sp)
/* 5FF10 8005F310 44894000 */  mtc1       $t1, $f8
/* 5FF14 8005F314 00000000 */  nop
/* 5FF18 8005F318 46804120 */  cvt.s.w    $f4, $f8
/* 5FF1C 8005F31C 0C017DFF */  jal        func_8005F7FC
/* 5FF20 8005F320 E4C40008 */   swc1      $f4, 0x8($a2)
/* 5FF24 8005F324 3C04801A */  lui        $a0, %hi(D_8019EF30)
/* 5FF28 8005F328 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 5FF2C 8005F32C 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 5FF30 8005F330 0C0090B8 */  jal        func_800242E0
/* 5FF34 8005F334 2484EF30 */   addiu     $a0, $a0, %lo(D_8019EF30)
/* 5FF38 8005F338 3C038009 */  lui        $v1, %hi(D_8008FA98)
/* 5FF3C 8005F33C C7A20034 */  lwc1       $f2, 0x34($sp)
/* 5FF40 8005F340 2463FA98 */  addiu      $v1, $v1, %lo(D_8008FA98)
/* 5FF44 8005F344 E4600000 */  swc1       $f0, 0x0($v1)
/* 5FF48 8005F348 C46A0000 */  lwc1       $f10, 0x0($v1)
/* 5FF4C 8005F34C 46001087 */  neg.s      $f2, $f2
/* 5FF50 8005F350 3C07801A */  lui        $a3, %hi(D_8019EF00)
/* 5FF54 8005F354 4602503C */  c.lt.s     $f10, $f2
/* 5FF58 8005F358 24E7EF00 */  addiu      $a3, $a3, %lo(D_8019EF00)
/* 5FF5C 8005F35C 8FA20020 */  lw         $v0, 0x20($sp)
/* 5FF60 8005F360 45020004 */  bc1fl      .L8005F374
/* 5FF64 8005F364 844A000C */   lh        $t2, 0xC($v0)
/* 5FF68 8005F368 10000105 */  b          .L8005F780
/* 5FF6C 8005F36C 00001025 */   or        $v0, $zero, $zero
/* 5FF70 8005F370 844A000C */  lh         $t2, 0xC($v0)
.L8005F374:
/* 5FF74 8005F374 3C06801A */  lui        $a2, %hi(D_8019EEF0)
/* 5FF78 8005F378 24C6EEF0 */  addiu      $a2, $a2, %lo(D_8019EEF0)
/* 5FF7C 8005F37C 448A9000 */  mtc1       $t2, $f18
/* 5FF80 8005F380 3C04801A */  lui        $a0, %hi(D_8019EF40)
/* 5FF84 8005F384 3C05801A */  lui        $a1, %hi(D_8019EEE0)
/* 5FF88 8005F388 468091A0 */  cvt.s.w    $f6, $f18
/* 5FF8C 8005F38C 24A5EEE0 */  addiu      $a1, $a1, %lo(D_8019EEE0)
/* 5FF90 8005F390 2484EF40 */  addiu      $a0, $a0, %lo(D_8019EF40)
/* 5FF94 8005F394 E4C60000 */  swc1       $f6, 0x0($a2)
/* 5FF98 8005F398 844C000E */  lh         $t4, 0xE($v0)
/* 5FF9C 8005F39C 448C8000 */  mtc1       $t4, $f16
/* 5FFA0 8005F3A0 00000000 */  nop
/* 5FFA4 8005F3A4 46808220 */  cvt.s.w    $f8, $f16
/* 5FFA8 8005F3A8 E4C80004 */  swc1       $f8, 0x4($a2)
/* 5FFAC 8005F3AC 844B0010 */  lh         $t3, 0x10($v0)
/* 5FFB0 8005F3B0 E7A2001C */  swc1       $f2, 0x1C($sp)
/* 5FFB4 8005F3B4 448B2000 */  mtc1       $t3, $f4
/* 5FFB8 8005F3B8 00000000 */  nop
/* 5FFBC 8005F3BC 468022A0 */  cvt.s.w    $f10, $f4
/* 5FFC0 8005F3C0 0C017DFF */  jal        func_8005F7FC
/* 5FFC4 8005F3C4 E4CA0008 */   swc1      $f10, 0x8($a2)
/* 5FFC8 8005F3C8 3C04801A */  lui        $a0, %hi(D_8019EF40)
/* 5FFCC 8005F3CC 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 5FFD0 8005F3D0 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 5FFD4 8005F3D4 0C0090B8 */  jal        func_800242E0
/* 5FFD8 8005F3D8 2484EF40 */   addiu     $a0, $a0, %lo(D_8019EF40)
/* 5FFDC 8005F3DC 3C028009 */  lui        $v0, %hi(D_8008FA9C)
/* 5FFE0 8005F3E0 2442FA9C */  addiu      $v0, $v0, %lo(D_8008FA9C)
/* 5FFE4 8005F3E4 E4400000 */  swc1       $f0, 0x0($v0)
/* 5FFE8 8005F3E8 C4520000 */  lwc1       $f18, 0x0($v0)
/* 5FFEC 8005F3EC C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 5FFF0 8005F3F0 3C07801A */  lui        $a3, %hi(D_8019EF00)
/* 5FFF4 8005F3F4 3C04801A */  lui        $a0, %hi(D_8019EF50)
/* 5FFF8 8005F3F8 4606903C */  c.lt.s     $f18, $f6
/* 5FFFC 8005F3FC 3C05801A */  lui        $a1, %hi(D_8019EEF0)
/* 60000 8005F400 24E7EF00 */  addiu      $a3, $a3, %lo(D_8019EF00)
/* 60004 8005F404 24A5EEF0 */  addiu      $a1, $a1, %lo(D_8019EEF0)
/* 60008 8005F408 45000003 */  bc1f       .L8005F418
/* 6000C 8005F40C 2484EF50 */   addiu     $a0, $a0, %lo(D_8019EF50)
/* 60010 8005F410 100000DB */  b          .L8005F780
/* 60014 8005F414 00001025 */   or        $v0, $zero, $zero
.L8005F418:
/* 60018 8005F418 3C06801A */  lui        $a2, %hi(D_8019EED0)
/* 6001C 8005F41C 0C017DFF */  jal        func_8005F7FC
/* 60020 8005F420 24C6EED0 */   addiu     $a2, $a2, %lo(D_8019EED0)
/* 60024 8005F424 3C04801A */  lui        $a0, %hi(D_8019EF50)
/* 60028 8005F428 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 6002C 8005F42C 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 60030 8005F430 0C0090B8 */  jal        func_800242E0
/* 60034 8005F434 2484EF50 */   addiu     $a0, $a0, %lo(D_8019EF50)
/* 60038 8005F438 3C028009 */  lui        $v0, %hi(D_8008FAA0)
/* 6003C 8005F43C 2442FAA0 */  addiu      $v0, $v0, %lo(D_8008FAA0)
/* 60040 8005F440 E4400000 */  swc1       $f0, 0x0($v0)
/* 60044 8005F444 C4500000 */  lwc1       $f16, 0x0($v0)
/* 60048 8005F448 C7A8001C */  lwc1       $f8, 0x1C($sp)
/* 6004C 8005F44C 3C04801A */  lui        $a0, %hi(D_8019EF60)
/* 60050 8005F450 3C05801A */  lui        $a1, %hi(D_8019EF30)
/* 60054 8005F454 4608803C */  c.lt.s     $f16, $f8
/* 60058 8005F458 24A5EF30 */  addiu      $a1, $a1, %lo(D_8019EF30)
/* 6005C 8005F45C 2484EF60 */  addiu      $a0, $a0, %lo(D_8019EF60)
/* 60060 8005F460 3C06801A */  lui        $a2, %hi(D_8019EF40)
/* 60064 8005F464 45000003 */  bc1f       .L8005F474
/* 60068 8005F468 00000000 */   nop
/* 6006C 8005F46C 100000C4 */  b          .L8005F780
/* 60070 8005F470 00001025 */   or        $v0, $zero, $zero
.L8005F474:
/* 60074 8005F474 0C017E54 */  jal        func_8005F950
/* 60078 8005F478 24C6EF40 */   addiu     $a2, $a2, %lo(D_8019EF40)
/* 6007C 8005F47C 3C04801A */  lui        $a0, %hi(D_8019EF60)
/* 60080 8005F480 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 60084 8005F484 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 60088 8005F488 0C0090B8 */  jal        func_800242E0
/* 6008C 8005F48C 2484EF60 */   addiu     $a0, $a0, %lo(D_8019EF60)
/* 60090 8005F490 3C028009 */  lui        $v0, %hi(D_8008FAA4)
/* 60094 8005F494 2442FAA4 */  addiu      $v0, $v0, %lo(D_8008FAA4)
/* 60098 8005F498 E4400000 */  swc1       $f0, 0x0($v0)
/* 6009C 8005F49C C4440000 */  lwc1       $f4, 0x0($v0)
/* 600A0 8005F4A0 C7AA001C */  lwc1       $f10, 0x1C($sp)
/* 600A4 8005F4A4 3C04801A */  lui        $a0, %hi(D_8019EF70)
/* 600A8 8005F4A8 3C05801A */  lui        $a1, %hi(D_8019EF40)
/* 600AC 8005F4AC 460A203C */  c.lt.s     $f4, $f10
/* 600B0 8005F4B0 24A5EF40 */  addiu      $a1, $a1, %lo(D_8019EF40)
/* 600B4 8005F4B4 2484EF70 */  addiu      $a0, $a0, %lo(D_8019EF70)
/* 600B8 8005F4B8 3C06801A */  lui        $a2, %hi(D_8019EF50)
/* 600BC 8005F4BC 45000003 */  bc1f       .L8005F4CC
/* 600C0 8005F4C0 00000000 */   nop
/* 600C4 8005F4C4 100000AE */  b          .L8005F780
/* 600C8 8005F4C8 00001025 */   or        $v0, $zero, $zero
.L8005F4CC:
/* 600CC 8005F4CC 0C017E54 */  jal        func_8005F950
/* 600D0 8005F4D0 24C6EF50 */   addiu     $a2, $a2, %lo(D_8019EF50)
/* 600D4 8005F4D4 3C04801A */  lui        $a0, %hi(D_8019EF70)
/* 600D8 8005F4D8 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 600DC 8005F4DC 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 600E0 8005F4E0 0C0090B8 */  jal        func_800242E0
/* 600E4 8005F4E4 2484EF70 */   addiu     $a0, $a0, %lo(D_8019EF70)
/* 600E8 8005F4E8 3C028009 */  lui        $v0, %hi(D_8008FAA8)
/* 600EC 8005F4EC 2442FAA8 */  addiu      $v0, $v0, %lo(D_8008FAA8)
/* 600F0 8005F4F0 E4400000 */  swc1       $f0, 0x0($v0)
/* 600F4 8005F4F4 C4520000 */  lwc1       $f18, 0x0($v0)
/* 600F8 8005F4F8 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 600FC 8005F4FC 3C04801A */  lui        $a0, %hi(D_8019EF80)
/* 60100 8005F500 3C05801A */  lui        $a1, %hi(D_8019EF50)
/* 60104 8005F504 4606903C */  c.lt.s     $f18, $f6
/* 60108 8005F508 24A5EF50 */  addiu      $a1, $a1, %lo(D_8019EF50)
/* 6010C 8005F50C 2484EF80 */  addiu      $a0, $a0, %lo(D_8019EF80)
/* 60110 8005F510 3C06801A */  lui        $a2, %hi(D_8019EF30)
/* 60114 8005F514 45000003 */  bc1f       .L8005F524
/* 60118 8005F518 00000000 */   nop
/* 6011C 8005F51C 10000098 */  b          .L8005F780
/* 60120 8005F520 00001025 */   or        $v0, $zero, $zero
.L8005F524:
/* 60124 8005F524 0C017E54 */  jal        func_8005F950
/* 60128 8005F528 24C6EF30 */   addiu     $a2, $a2, %lo(D_8019EF30)
/* 6012C 8005F52C 3C04801A */  lui        $a0, %hi(D_8019EF80)
/* 60130 8005F530 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 60134 8005F534 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 60138 8005F538 0C0090B8 */  jal        func_800242E0
/* 6013C 8005F53C 2484EF80 */   addiu     $a0, $a0, %lo(D_8019EF80)
/* 60140 8005F540 3C028009 */  lui        $v0, %hi(D_8008FAAC)
/* 60144 8005F544 2442FAAC */  addiu      $v0, $v0, %lo(D_8008FAAC)
/* 60148 8005F548 E4400000 */  swc1       $f0, 0x0($v0)
/* 6014C 8005F54C C4500000 */  lwc1       $f16, 0x0($v0)
/* 60150 8005F550 C7A8001C */  lwc1       $f8, 0x1C($sp)
/* 60154 8005F554 3C04801A */  lui        $a0, %hi(D_8019EF90)
/* 60158 8005F558 3C05801A */  lui        $a1, %hi(D_8019EF20)
/* 6015C 8005F55C 4608803C */  c.lt.s     $f16, $f8
/* 60160 8005F560 24A5EF20 */  addiu      $a1, $a1, %lo(D_8019EF20)
/* 60164 8005F564 2484EF90 */  addiu      $a0, $a0, %lo(D_8019EF90)
/* 60168 8005F568 3C06801A */  lui        $a2, %hi(D_8019EF30)
/* 6016C 8005F56C 45000003 */  bc1f       .L8005F57C
/* 60170 8005F570 00000000 */   nop
/* 60174 8005F574 10000082 */  b          .L8005F780
/* 60178 8005F578 00001025 */   or        $v0, $zero, $zero
.L8005F57C:
/* 6017C 8005F57C 0C017E86 */  jal        func_8005FA18
/* 60180 8005F580 24C6EF30 */   addiu     $a2, $a2, %lo(D_8019EF30)
/* 60184 8005F584 3C04801A */  lui        $a0, %hi(D_8019EF90)
/* 60188 8005F588 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 6018C 8005F58C 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 60190 8005F590 0C0090B8 */  jal        func_800242E0
/* 60194 8005F594 2484EF90 */   addiu     $a0, $a0, %lo(D_8019EF90)
/* 60198 8005F598 3C028009 */  lui        $v0, %hi(D_8008FAB0)
/* 6019C 8005F59C 2442FAB0 */  addiu      $v0, $v0, %lo(D_8008FAB0)
/* 601A0 8005F5A0 E4400000 */  swc1       $f0, 0x0($v0)
/* 601A4 8005F5A4 C4440000 */  lwc1       $f4, 0x0($v0)
/* 601A8 8005F5A8 C7AA001C */  lwc1       $f10, 0x1C($sp)
/* 601AC 8005F5AC 3C04801A */  lui        $a0, %hi(D_8019EFA0)
/* 601B0 8005F5B0 3C05801A */  lui        $a1, %hi(D_8019EF20)
/* 601B4 8005F5B4 460A203C */  c.lt.s     $f4, $f10
/* 601B8 8005F5B8 24A5EF20 */  addiu      $a1, $a1, %lo(D_8019EF20)
/* 601BC 8005F5BC 2484EFA0 */  addiu      $a0, $a0, %lo(D_8019EFA0)
/* 601C0 8005F5C0 3C06801A */  lui        $a2, %hi(D_8019EF40)
/* 601C4 8005F5C4 45000003 */  bc1f       .L8005F5D4
/* 601C8 8005F5C8 00000000 */   nop
/* 601CC 8005F5CC 1000006C */  b          .L8005F780
/* 601D0 8005F5D0 00001025 */   or        $v0, $zero, $zero
.L8005F5D4:
/* 601D4 8005F5D4 0C017E86 */  jal        func_8005FA18
/* 601D8 8005F5D8 24C6EF40 */   addiu     $a2, $a2, %lo(D_8019EF40)
/* 601DC 8005F5DC 3C04801A */  lui        $a0, %hi(D_8019EFA0)
/* 601E0 8005F5E0 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 601E4 8005F5E4 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 601E8 8005F5E8 0C0090B8 */  jal        func_800242E0
/* 601EC 8005F5EC 2484EFA0 */   addiu     $a0, $a0, %lo(D_8019EFA0)
/* 601F0 8005F5F0 3C028009 */  lui        $v0, %hi(D_8008FAB4)
/* 601F4 8005F5F4 2442FAB4 */  addiu      $v0, $v0, %lo(D_8008FAB4)
/* 601F8 8005F5F8 E4400000 */  swc1       $f0, 0x0($v0)
/* 601FC 8005F5FC C4520000 */  lwc1       $f18, 0x0($v0)
/* 60200 8005F600 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 60204 8005F604 3C04801A */  lui        $a0, %hi(D_8019EFB0)
/* 60208 8005F608 3C05801A */  lui        $a1, %hi(D_8019EF20)
/* 6020C 8005F60C 4606903C */  c.lt.s     $f18, $f6
/* 60210 8005F610 24A5EF20 */  addiu      $a1, $a1, %lo(D_8019EF20)
/* 60214 8005F614 2484EFB0 */  addiu      $a0, $a0, %lo(D_8019EFB0)
/* 60218 8005F618 3C06801A */  lui        $a2, %hi(D_8019EF50)
/* 6021C 8005F61C 45000003 */  bc1f       .L8005F62C
/* 60220 8005F620 00000000 */   nop
/* 60224 8005F624 10000056 */  b          .L8005F780
/* 60228 8005F628 00001025 */   or        $v0, $zero, $zero
.L8005F62C:
/* 6022C 8005F62C 0C017E86 */  jal        func_8005FA18
/* 60230 8005F630 24C6EF50 */   addiu     $a2, $a2, %lo(D_8019EF50)
/* 60234 8005F634 3C04801A */  lui        $a0, %hi(D_8019EFB0)
/* 60238 8005F638 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 6023C 8005F63C 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 60240 8005F640 0C0090B8 */  jal        func_800242E0
/* 60244 8005F644 2484EFB0 */   addiu     $a0, $a0, %lo(D_8019EFB0)
/* 60248 8005F648 3C028009 */  lui        $v0, %hi(D_8008FAB8)
/* 6024C 8005F64C 2442FAB8 */  addiu      $v0, $v0, %lo(D_8008FAB8)
/* 60250 8005F650 E4400000 */  swc1       $f0, 0x0($v0)
/* 60254 8005F654 C4500000 */  lwc1       $f16, 0x0($v0)
/* 60258 8005F658 C7A8001C */  lwc1       $f8, 0x1C($sp)
/* 6025C 8005F65C 3C04801A */  lui        $a0, %hi(D_8019EFC0)
/* 60260 8005F660 3C05801A */  lui        $a1, %hi(D_8019EF20)
/* 60264 8005F664 4608803C */  c.lt.s     $f16, $f8
/* 60268 8005F668 24A5EF20 */  addiu      $a1, $a1, %lo(D_8019EF20)
/* 6026C 8005F66C 2484EFC0 */  addiu      $a0, $a0, %lo(D_8019EFC0)
/* 60270 8005F670 3C06801A */  lui        $a2, %hi(D_8019EF60)
/* 60274 8005F674 45000003 */  bc1f       .L8005F684
/* 60278 8005F678 00000000 */   nop
/* 6027C 8005F67C 10000040 */  b          .L8005F780
/* 60280 8005F680 00001025 */   or        $v0, $zero, $zero
.L8005F684:
/* 60284 8005F684 0C017E86 */  jal        func_8005FA18
/* 60288 8005F688 24C6EF60 */   addiu     $a2, $a2, %lo(D_8019EF60)
/* 6028C 8005F68C 3C04801A */  lui        $a0, %hi(D_8019EFC0)
/* 60290 8005F690 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 60294 8005F694 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 60298 8005F698 0C0090B8 */  jal        func_800242E0
/* 6029C 8005F69C 2484EFC0 */   addiu     $a0, $a0, %lo(D_8019EFC0)
/* 602A0 8005F6A0 3C028009 */  lui        $v0, %hi(D_8008FABC)
/* 602A4 8005F6A4 2442FABC */  addiu      $v0, $v0, %lo(D_8008FABC)
/* 602A8 8005F6A8 E4400000 */  swc1       $f0, 0x0($v0)
/* 602AC 8005F6AC C4440000 */  lwc1       $f4, 0x0($v0)
/* 602B0 8005F6B0 C7AA001C */  lwc1       $f10, 0x1C($sp)
/* 602B4 8005F6B4 3C04801A */  lui        $a0, %hi(D_8019EFD0)
/* 602B8 8005F6B8 3C05801A */  lui        $a1, %hi(D_8019EF20)
/* 602BC 8005F6BC 460A203C */  c.lt.s     $f4, $f10
/* 602C0 8005F6C0 24A5EF20 */  addiu      $a1, $a1, %lo(D_8019EF20)
/* 602C4 8005F6C4 2484EFD0 */  addiu      $a0, $a0, %lo(D_8019EFD0)
/* 602C8 8005F6C8 3C06801A */  lui        $a2, %hi(D_8019EF70)
/* 602CC 8005F6CC 45000003 */  bc1f       .L8005F6DC
/* 602D0 8005F6D0 00000000 */   nop
/* 602D4 8005F6D4 1000002A */  b          .L8005F780
/* 602D8 8005F6D8 00001025 */   or        $v0, $zero, $zero
.L8005F6DC:
/* 602DC 8005F6DC 0C017E86 */  jal        func_8005FA18
/* 602E0 8005F6E0 24C6EF70 */   addiu     $a2, $a2, %lo(D_8019EF70)
/* 602E4 8005F6E4 3C04801A */  lui        $a0, %hi(D_8019EFD0)
/* 602E8 8005F6E8 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 602EC 8005F6EC 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 602F0 8005F6F0 0C0090B8 */  jal        func_800242E0
/* 602F4 8005F6F4 2484EFD0 */   addiu     $a0, $a0, %lo(D_8019EFD0)
/* 602F8 8005F6F8 3C028009 */  lui        $v0, %hi(D_8008FAC0)
/* 602FC 8005F6FC 2442FAC0 */  addiu      $v0, $v0, %lo(D_8008FAC0)
/* 60300 8005F700 E4400000 */  swc1       $f0, 0x0($v0)
/* 60304 8005F704 C4520000 */  lwc1       $f18, 0x0($v0)
/* 60308 8005F708 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 6030C 8005F70C 3C04801A */  lui        $a0, %hi(D_8019EFE0)
/* 60310 8005F710 3C05801A */  lui        $a1, %hi(D_8019EF20)
/* 60314 8005F714 4606903C */  c.lt.s     $f18, $f6
/* 60318 8005F718 24A5EF20 */  addiu      $a1, $a1, %lo(D_8019EF20)
/* 6031C 8005F71C 2484EFE0 */  addiu      $a0, $a0, %lo(D_8019EFE0)
/* 60320 8005F720 3C06801A */  lui        $a2, %hi(D_8019EF80)
/* 60324 8005F724 45000003 */  bc1f       .L8005F734
/* 60328 8005F728 00000000 */   nop
/* 6032C 8005F72C 10000014 */  b          .L8005F780
/* 60330 8005F730 00001025 */   or        $v0, $zero, $zero
.L8005F734:
/* 60334 8005F734 0C017E86 */  jal        func_8005FA18
/* 60338 8005F738 24C6EF80 */   addiu     $a2, $a2, %lo(D_8019EF80)
/* 6033C 8005F73C 3C04801A */  lui        $a0, %hi(D_8019EFE0)
/* 60340 8005F740 3C05801A */  lui        $a1, %hi(D_8019EF10)
/* 60344 8005F744 24A5EF10 */  addiu      $a1, $a1, %lo(D_8019EF10)
/* 60348 8005F748 0C0090B8 */  jal        func_800242E0
/* 6034C 8005F74C 2484EFE0 */   addiu     $a0, $a0, %lo(D_8019EFE0)
/* 60350 8005F750 3C028009 */  lui        $v0, %hi(D_8008FAC4)
/* 60354 8005F754 2442FAC4 */  addiu      $v0, $v0, %lo(D_8008FAC4)
/* 60358 8005F758 E4400000 */  swc1       $f0, 0x0($v0)
/* 6035C 8005F75C C4500000 */  lwc1       $f16, 0x0($v0)
/* 60360 8005F760 C7A8001C */  lwc1       $f8, 0x1C($sp)
/* 60364 8005F764 24020001 */  addiu      $v0, $zero, 0x1
/* 60368 8005F768 4608803C */  c.lt.s     $f16, $f8
/* 6036C 8005F76C 00000000 */  nop
/* 60370 8005F770 45000003 */  bc1f       .L8005F780
/* 60374 8005F774 00000000 */   nop
/* 60378 8005F778 10000001 */  b          .L8005F780
/* 6037C 8005F77C 00001025 */   or        $v0, $zero, $zero
.L8005F780:
/* 60380 8005F780 8FBF0014 */  lw         $ra, 0x14($sp)
/* 60384 8005F784 27BD0028 */  addiu      $sp, $sp, 0x28
/* 60388 8005F788 03E00008 */  jr         $ra
/* 6038C 8005F78C 00000000 */   nop

glabel func_8005F790
/* 60390 8005F790 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 60394 8005F794 44812000 */  mtc1       $at, $f4
/* 60398 8005F798 3C014248 */  lui        $at, (0x42480000 >> 16)
/* 6039C 8005F79C 4604603C */  c.lt.s     $f12, $f4
/* 603A0 8005F7A0 00000000 */  nop
/* 603A4 8005F7A4 45020004 */  bc1fl      .L8005F7B8
/* 603A8 8005F7A8 44813000 */   mtc1      $at, $f6
/* 603AC 8005F7AC 03E00008 */  jr         $ra
/* 603B0 8005F7B0 24020001 */   addiu     $v0, $zero, 0x1
/* 603B4 8005F7B4 44813000 */  mtc1       $at, $f6
.L8005F7B8:
/* 603B8 8005F7B8 3C01430C */  lui        $at, (0x430C0000 >> 16)
/* 603BC 8005F7BC 4606603C */  c.lt.s     $f12, $f6
/* 603C0 8005F7C0 00000000 */  nop
/* 603C4 8005F7C4 45020004 */  bc1fl      .L8005F7D8
/* 603C8 8005F7C8 44814000 */   mtc1      $at, $f8
/* 603CC 8005F7CC 03E00008 */  jr         $ra
/* 603D0 8005F7D0 24020002 */   addiu     $v0, $zero, 0x2
/* 603D4 8005F7D4 44814000 */  mtc1       $at, $f8
.L8005F7D8:
/* 603D8 8005F7D8 24020004 */  addiu      $v0, $zero, 0x4
/* 603DC 8005F7DC 4608603C */  c.lt.s     $f12, $f8
/* 603E0 8005F7E0 00000000 */  nop
/* 603E4 8005F7E4 45000003 */  bc1f       .L8005F7F4
/* 603E8 8005F7E8 00000000 */   nop
/* 603EC 8005F7EC 03E00008 */  jr         $ra
/* 603F0 8005F7F0 24020003 */   addiu     $v0, $zero, 0x3
.L8005F7F4:
/* 603F4 8005F7F4 03E00008 */  jr         $ra
/* 603F8 8005F7F8 00000000 */   nop

glabel func_8005F7FC
/* 603FC 8005F7FC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 60400 8005F800 AFBF0014 */  sw         $ra, 0x14($sp)
/* 60404 8005F804 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 60408 8005F808 C4C80000 */  lwc1       $f8, 0x0($a2)
/* 6040C 8005F80C C4AA0004 */  lwc1       $f10, 0x4($a1)
/* 60410 8005F810 C4C40004 */  lwc1       $f4, 0x4($a2)
/* 60414 8005F814 46064001 */  sub.s      $f0, $f8, $f6
/* 60418 8005F818 C4A60008 */  lwc1       $f6, 0x8($a1)
/* 6041C 8005F81C C4C80008 */  lwc1       $f8, 0x8($a2)
/* 60420 8005F820 460A2481 */  sub.s      $f18, $f4, $f10
/* 60424 8005F824 46064101 */  sub.s      $f4, $f8, $f6
/* 60428 8005F828 E7A4003C */  swc1       $f4, 0x3C($sp)
/* 6042C 8005F82C C4EA0008 */  lwc1       $f10, 0x8($a3)
/* 60430 8005F830 C7A4003C */  lwc1       $f4, 0x3C($sp)
/* 60434 8005F834 E7AA0028 */  swc1       $f10, 0x28($sp)
/* 60438 8005F838 C4E80004 */  lwc1       $f8, 0x4($a3)
/* 6043C 8005F83C E7A80024 */  swc1       $f8, 0x24($sp)
/* 60440 8005F840 C7A60024 */  lwc1       $f6, 0x24($sp)
/* 60444 8005F844 C7A80028 */  lwc1       $f8, 0x28($sp)
/* 60448 8005F848 46043282 */  mul.s      $f10, $f6, $f4
/* 6044C 8005F84C E7A60018 */  swc1       $f6, 0x18($sp)
/* 60450 8005F850 46124182 */  mul.s      $f6, $f8, $f18
/* 60454 8005F854 460A3081 */  sub.s      $f2, $f6, $f10
/* 60458 8005F858 C4E60000 */  lwc1       $f6, 0x0($a3)
/* 6045C 8005F85C AFA5004C */  sw         $a1, 0x4C($sp)
/* 60460 8005F860 AFA40048 */  sw         $a0, 0x48($sp)
/* 60464 8005F864 E7A60020 */  swc1       $f6, 0x20($sp)
/* 60468 8005F868 C7AA0020 */  lwc1       $f10, 0x20($sp)
/* 6046C 8005F86C E7A20038 */  swc1       $f2, 0x38($sp)
/* 60470 8005F870 46045182 */  mul.s      $f6, $f10, $f4
/* 60474 8005F874 00000000 */  nop
/* 60478 8005F878 46004102 */  mul.s      $f4, $f8, $f0
/* 6047C 8005F87C C7A80018 */  lwc1       $f8, 0x18($sp)
/* 60480 8005F880 46043381 */  sub.s      $f14, $f6, $f4
/* 60484 8005F884 46004182 */  mul.s      $f6, $f8, $f0
/* 60488 8005F888 00000000 */  nop
/* 6048C 8005F88C 46125102 */  mul.s      $f4, $f10, $f18
/* 60490 8005F890 E7AE0034 */  swc1       $f14, 0x34($sp)
/* 60494 8005F894 46021202 */  mul.s      $f8, $f2, $f2
/* 60498 8005F898 00000000 */  nop
/* 6049C 8005F89C 460E7282 */  mul.s      $f10, $f14, $f14
/* 604A0 8005F8A0 46043401 */  sub.s      $f16, $f6, $f4
/* 604A4 8005F8A4 46108102 */  mul.s      $f4, $f16, $f16
/* 604A8 8005F8A8 460A4180 */  add.s      $f6, $f8, $f10
/* 604AC 8005F8AC E7B00030 */  swc1       $f16, 0x30($sp)
/* 604B0 8005F8B0 0C01AB7C */  jal        sqrtf
/* 604B4 8005F8B4 46043300 */   add.s     $f12, $f6, $f4
/* 604B8 8005F8B8 44804000 */  mtc1       $zero, $f8
/* 604BC 8005F8BC 8FA40048 */  lw         $a0, 0x48($sp)
/* 604C0 8005F8C0 8FA5004C */  lw         $a1, 0x4C($sp)
/* 604C4 8005F8C4 46080032 */  c.eq.s     $f0, $f8
/* 604C8 8005F8C8 C7A20038 */  lwc1       $f2, 0x38($sp)
/* 604CC 8005F8CC C7AE0034 */  lwc1       $f14, 0x34($sp)
/* 604D0 8005F8D0 C7B00030 */  lwc1       $f16, 0x30($sp)
/* 604D4 8005F8D4 4501000C */  bc1t       .L8005F908
/* 604D8 8005F8D8 3C013FF0 */   lui       $at, (0x3FF00000 >> 16)
/* 604DC 8005F8DC 44815800 */  mtc1       $at, $f11
/* 604E0 8005F8E0 44805000 */  mtc1       $zero, $f10
/* 604E4 8005F8E4 460001A1 */  cvt.d.s    $f6, $f0
/* 604E8 8005F8E8 46265103 */  div.d      $f4, $f10, $f6
/* 604EC 8005F8EC 46202320 */  cvt.s.d    $f12, $f4
/* 604F0 8005F8F0 460C1082 */  mul.s      $f2, $f2, $f12
/* 604F4 8005F8F4 00000000 */  nop
/* 604F8 8005F8F8 460C7382 */  mul.s      $f14, $f14, $f12
/* 604FC 8005F8FC 00000000 */  nop
/* 60500 8005F900 460C8402 */  mul.s      $f16, $f16, $f12
/* 60504 8005F904 00000000 */  nop
.L8005F908:
/* 60508 8005F908 C4A80000 */  lwc1       $f8, 0x0($a1)
/* 6050C 8005F90C C4A60004 */  lwc1       $f6, 0x4($a1)
/* 60510 8005F910 46024282 */  mul.s      $f10, $f8, $f2
/* 60514 8005F914 00000000 */  nop
/* 60518 8005F918 46067102 */  mul.s      $f4, $f14, $f6
/* 6051C 8005F91C C4A60008 */  lwc1       $f6, 0x8($a1)
/* 60520 8005F920 E4820000 */  swc1       $f2, 0x0($a0)
/* 60524 8005F924 E48E0004 */  swc1       $f14, 0x4($a0)
/* 60528 8005F928 E4900008 */  swc1       $f16, 0x8($a0)
/* 6052C 8005F92C 46045200 */  add.s      $f8, $f10, $f4
/* 60530 8005F930 46068282 */  mul.s      $f10, $f16, $f6
/* 60534 8005F934 460A4300 */  add.s      $f12, $f8, $f10
/* 60538 8005F938 46006307 */  neg.s      $f12, $f12
/* 6053C 8005F93C E48C000C */  swc1       $f12, 0xC($a0)
/* 60540 8005F940 8FBF0014 */  lw         $ra, 0x14($sp)
/* 60544 8005F944 27BD0048 */  addiu      $sp, $sp, 0x48
/* 60548 8005F948 03E00008 */  jr         $ra
/* 6054C 8005F94C 00000000 */   nop

glabel func_8005F950
/* 60550 8005F950 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 60554 8005F954 AFBF0014 */  sw         $ra, 0x14($sp)
/* 60558 8005F958 C4C60000 */  lwc1       $f6, 0x0($a2)
/* 6055C 8005F95C C4A40000 */  lwc1       $f4, 0x0($a1)
/* 60560 8005F960 C4CA0004 */  lwc1       $f10, 0x4($a2)
/* 60564 8005F964 C4A80004 */  lwc1       $f8, 0x4($a1)
/* 60568 8005F968 46062380 */  add.s      $f14, $f4, $f6
/* 6056C 8005F96C C4C60008 */  lwc1       $f6, 0x8($a2)
/* 60570 8005F970 C4A40008 */  lwc1       $f4, 0x8($a1)
/* 60574 8005F974 460A4400 */  add.s      $f16, $f8, $f10
/* 60578 8005F978 C4CA000C */  lwc1       $f10, 0xC($a2)
/* 6057C 8005F97C C4A8000C */  lwc1       $f8, 0xC($a1)
/* 60580 8005F980 46062480 */  add.s      $f18, $f4, $f6
/* 60584 8005F984 460E7182 */  mul.s      $f6, $f14, $f14
/* 60588 8005F988 E7B00020 */  swc1       $f16, 0x20($sp)
/* 6058C 8005F98C 460A4100 */  add.s      $f4, $f8, $f10
/* 60590 8005F990 46108202 */  mul.s      $f8, $f16, $f16
/* 60594 8005F994 E7B20024 */  swc1       $f18, 0x24($sp)
/* 60598 8005F998 E7AE001C */  swc1       $f14, 0x1C($sp)
/* 6059C 8005F99C E7A40028 */  swc1       $f4, 0x28($sp)
/* 605A0 8005F9A0 46129102 */  mul.s      $f4, $f18, $f18
/* 605A4 8005F9A4 AFA40030 */  sw         $a0, 0x30($sp)
/* 605A8 8005F9A8 46083280 */  add.s      $f10, $f6, $f8
/* 605AC 8005F9AC 0C01AB7C */  jal        sqrtf
/* 605B0 8005F9B0 46045300 */   add.s     $f12, $f10, $f4
/* 605B4 8005F9B4 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 605B8 8005F9B8 44813800 */  mtc1       $at, $f7
/* 605BC 8005F9BC 44803000 */  mtc1       $zero, $f6
/* 605C0 8005F9C0 46000221 */  cvt.d.s    $f8, $f0
/* 605C4 8005F9C4 C7AE001C */  lwc1       $f14, 0x1C($sp)
/* 605C8 8005F9C8 46283283 */  div.d      $f10, $f6, $f8
/* 605CC 8005F9CC C7B00020 */  lwc1       $f16, 0x20($sp)
/* 605D0 8005F9D0 C7B20024 */  lwc1       $f18, 0x24($sp)
/* 605D4 8005F9D4 C7AC0028 */  lwc1       $f12, 0x28($sp)
/* 605D8 8005F9D8 8FA40030 */  lw         $a0, 0x30($sp)
/* 605DC 8005F9DC 462050A0 */  cvt.s.d    $f2, $f10
/* 605E0 8005F9E0 46027382 */  mul.s      $f14, $f14, $f2
/* 605E4 8005F9E4 00000000 */  nop
/* 605E8 8005F9E8 46028402 */  mul.s      $f16, $f16, $f2
/* 605EC 8005F9EC 00000000 */  nop
/* 605F0 8005F9F0 46029482 */  mul.s      $f18, $f18, $f2
/* 605F4 8005F9F4 E48E0000 */  swc1       $f14, 0x0($a0)
/* 605F8 8005F9F8 46026302 */  mul.s      $f12, $f12, $f2
/* 605FC 8005F9FC E4900004 */  swc1       $f16, 0x4($a0)
/* 60600 8005FA00 E4920008 */  swc1       $f18, 0x8($a0)
/* 60604 8005FA04 E48C000C */  swc1       $f12, 0xC($a0)
/* 60608 8005FA08 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6060C 8005FA0C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 60610 8005FA10 03E00008 */  jr         $ra
/* 60614 8005FA14 00000000 */   nop

glabel func_8005FA18
/* 60618 8005FA18 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6061C 8005FA1C AFBF0014 */  sw         $ra, 0x14($sp)
/* 60620 8005FA20 C4A60000 */  lwc1       $f6, 0x0($a1)
/* 60624 8005FA24 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 60628 8005FA28 C4AA0004 */  lwc1       $f10, 0x4($a1)
/* 6062C 8005FA2C C4C80004 */  lwc1       $f8, 0x4($a2)
/* 60630 8005FA30 46062381 */  sub.s      $f14, $f4, $f6
/* 60634 8005FA34 C4A60008 */  lwc1       $f6, 0x8($a1)
/* 60638 8005FA38 C4C40008 */  lwc1       $f4, 0x8($a2)
/* 6063C 8005FA3C 460A4401 */  sub.s      $f16, $f8, $f10
/* 60640 8005FA40 C4AA000C */  lwc1       $f10, 0xC($a1)
/* 60644 8005FA44 C4C8000C */  lwc1       $f8, 0xC($a2)
/* 60648 8005FA48 46062481 */  sub.s      $f18, $f4, $f6
/* 6064C 8005FA4C 460E7182 */  mul.s      $f6, $f14, $f14
/* 60650 8005FA50 E7B00020 */  swc1       $f16, 0x20($sp)
/* 60654 8005FA54 460A4101 */  sub.s      $f4, $f8, $f10
/* 60658 8005FA58 46108202 */  mul.s      $f8, $f16, $f16
/* 6065C 8005FA5C E7B20024 */  swc1       $f18, 0x24($sp)
/* 60660 8005FA60 E7AE001C */  swc1       $f14, 0x1C($sp)
/* 60664 8005FA64 E7A40028 */  swc1       $f4, 0x28($sp)
/* 60668 8005FA68 46129102 */  mul.s      $f4, $f18, $f18
/* 6066C 8005FA6C AFA40030 */  sw         $a0, 0x30($sp)
/* 60670 8005FA70 46083280 */  add.s      $f10, $f6, $f8
/* 60674 8005FA74 0C01AB7C */  jal        sqrtf
/* 60678 8005FA78 46045300 */   add.s     $f12, $f10, $f4
/* 6067C 8005FA7C 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 60680 8005FA80 44813800 */  mtc1       $at, $f7
/* 60684 8005FA84 44803000 */  mtc1       $zero, $f6
/* 60688 8005FA88 46000221 */  cvt.d.s    $f8, $f0
/* 6068C 8005FA8C C7AE001C */  lwc1       $f14, 0x1C($sp)
/* 60690 8005FA90 46283283 */  div.d      $f10, $f6, $f8
/* 60694 8005FA94 C7B00020 */  lwc1       $f16, 0x20($sp)
/* 60698 8005FA98 C7B20024 */  lwc1       $f18, 0x24($sp)
/* 6069C 8005FA9C C7AC0028 */  lwc1       $f12, 0x28($sp)
/* 606A0 8005FAA0 8FA40030 */  lw         $a0, 0x30($sp)
/* 606A4 8005FAA4 462050A0 */  cvt.s.d    $f2, $f10
/* 606A8 8005FAA8 46027382 */  mul.s      $f14, $f14, $f2
/* 606AC 8005FAAC 00000000 */  nop
/* 606B0 8005FAB0 46028402 */  mul.s      $f16, $f16, $f2
/* 606B4 8005FAB4 00000000 */  nop
/* 606B8 8005FAB8 46029482 */  mul.s      $f18, $f18, $f2
/* 606BC 8005FABC E48E0000 */  swc1       $f14, 0x0($a0)
/* 606C0 8005FAC0 46026302 */  mul.s      $f12, $f12, $f2
/* 606C4 8005FAC4 E4900004 */  swc1       $f16, 0x4($a0)
/* 606C8 8005FAC8 E4920008 */  swc1       $f18, 0x8($a0)
/* 606CC 8005FACC E48C000C */  swc1       $f12, 0xC($a0)
/* 606D0 8005FAD0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 606D4 8005FAD4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 606D8 8005FAD8 03E00008 */  jr         $ra
/* 606DC 8005FADC 00000000 */   nop

glabel func_8005FAE0
/* 606E0 8005FAE0 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 606E4 8005FAE4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 606E8 8005FAE8 AFB30038 */  sw         $s3, 0x38($sp)
/* 606EC 8005FAEC AFB20034 */  sw         $s2, 0x34($sp)
/* 606F0 8005FAF0 AFB10030 */  sw         $s1, 0x30($sp)
/* 606F4 8005FAF4 AFB0002C */  sw         $s0, 0x2C($sp)
/* 606F8 8005FAF8 F7B80020 */  sdc1       $f24, 0x20($sp)
/* 606FC 8005FAFC F7B60018 */  sdc1       $f22, 0x18($sp)
/* 60700 8005FB00 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 60704 8005FB04 8C810268 */  lw         $at, 0x268($a0)
/* 60708 8005FB08 27A50060 */  addiu      $a1, $sp, 0x60
/* 6070C 8005FB0C 44804000 */  mtc1       $zero, $f8
/* 60710 8005FB10 ACA10000 */  sw         $at, 0x0($a1)
/* 60714 8005FB14 8C98026C */  lw         $t8, 0x26C($a0)
/* 60718 8005FB18 44800000 */  mtc1       $zero, $f0
/* 6071C 8005FB1C 00809025 */  or         $s2, $a0, $zero
/* 60720 8005FB20 ACB80004 */  sw         $t8, 0x4($a1)
/* 60724 8005FB24 8C810270 */  lw         $at, 0x270($a0)
/* 60728 8005FB28 264600A4 */  addiu      $a2, $s2, 0xA4
/* 6072C 8005FB2C 00009825 */  or         $s3, $zero, $zero
/* 60730 8005FB30 ACA10008 */  sw         $at, 0x8($a1)
/* 60734 8005FB34 8C980274 */  lw         $t8, 0x274($a0)
/* 60738 8005FB38 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 6073C 8005FB3C 44814800 */  mtc1       $at, $f9
/* 60740 8005FB40 ACB8000C */  sw         $t8, 0xC($a1)
/* 60744 8005FB44 C7A4006C */  lwc1       $f4, 0x6C($sp)
/* 60748 8005FB48 27A70074 */  addiu      $a3, $sp, 0x74
/* 6074C 8005FB4C 460021A1 */  cvt.d.s    $f6, $f4
/* 60750 8005FB50 46283282 */  mul.d      $f10, $f6, $f8
/* 60754 8005FB54 46205420 */  cvt.s.d    $f16, $f10
/* 60758 8005FB58 E7B0006C */  swc1       $f16, 0x6C($sp)
/* 6075C 8005FB5C E4800298 */  swc1       $f0, 0x298($a0)
/* 60760 8005FB60 E4800294 */  swc1       $f0, 0x294($a0)
/* 60764 8005FB64 E4800290 */  swc1       $f0, 0x290($a0)
/* 60768 8005FB68 8C840048 */  lw         $a0, 0x48($a0)
/* 6076C 8005FB6C AFA60050 */  sw         $a2, 0x50($sp)
/* 60770 8005FB70 0C01817F */  jal        func_800605FC
/* 60774 8005FB74 24840004 */   addiu     $a0, $a0, 0x4
/* 60778 8005FB78 8E430048 */  lw         $v1, 0x48($s2)
/* 6077C 8005FB7C 90790000 */  lbu        $t9, 0x0($v1)
/* 60780 8005FB80 2728FFFF */  addiu      $t0, $t9, -0x1
/* 60784 8005FB84 2D010005 */  sltiu      $at, $t0, 0x5
/* 60788 8005FB88 102001DE */  beqz       $at, L80060304
/* 6078C 8005FB8C 00084080 */   sll       $t0, $t0, 2
/* 60790 8005FB90 3C01800A */  lui        $at, %hi(jtbl_80098728_main)
/* 60794 8005FB94 00280821 */  addu       $at, $at, $t0
/* 60798 8005FB98 8C288728 */  lw         $t0, %lo(jtbl_80098728_main)($at)
/* 6079C 8005FB9C 01000008 */  jr         $t0
/* 607A0 8005FBA0 00000000 */   nop
glabel L8005FBA4
/* 607A4 8005FBA4 24710048 */  addiu      $s1, $v1, 0x48
/* 607A8 8005FBA8 02202025 */  or         $a0, $s1, $zero
/* 607AC 8005FBAC 27A50060 */  addiu      $a1, $sp, 0x60
/* 607B0 8005FBB0 8FA60050 */  lw         $a2, 0x50($sp)
/* 607B4 8005FBB4 0C01817F */  jal        func_800605FC
/* 607B8 8005FBB8 27A70074 */   addiu     $a3, $sp, 0x74
/* 607BC 8005FBBC 10400033 */  beqz       $v0, .L8005FC8C
/* 607C0 8005FBC0 26500290 */   addiu     $s0, $s2, 0x290
/* 607C4 8005FBC4 C6120000 */  lwc1       $f18, 0x0($s0)
/* 607C8 8005FBC8 C6240000 */  lwc1       $f4, 0x0($s1)
/* 607CC 8005FBCC C6080004 */  lwc1       $f8, 0x4($s0)
/* 607D0 8005FBD0 46049180 */  add.s      $f6, $f18, $f4
/* 607D4 8005FBD4 C6120008 */  lwc1       $f18, 0x8($s0)
/* 607D8 8005FBD8 E6060000 */  swc1       $f6, 0x0($s0)
/* 607DC 8005FBDC C62A0004 */  lwc1       $f10, 0x4($s1)
/* 607E0 8005FBE0 C6180000 */  lwc1       $f24, 0x0($s0)
/* 607E4 8005FBE4 460A4400 */  add.s      $f16, $f8, $f10
/* 607E8 8005FBE8 4618C202 */  mul.s      $f8, $f24, $f24
/* 607EC 8005FBEC E6100004 */  swc1       $f16, 0x4($s0)
/* 607F0 8005FBF0 C6240008 */  lwc1       $f4, 0x8($s1)
/* 607F4 8005FBF4 C6160004 */  lwc1       $f22, 0x4($s0)
/* 607F8 8005FBF8 46049180 */  add.s      $f6, $f18, $f4
/* 607FC 8005FBFC 4616B282 */  mul.s      $f10, $f22, $f22
/* 60800 8005FC00 E6060008 */  swc1       $f6, 0x8($s0)
/* 60804 8005FC04 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60808 8005FC08 4614A482 */  mul.s      $f18, $f20, $f20
/* 6080C 8005FC0C 460A4400 */  add.s      $f16, $f8, $f10
/* 60810 8005FC10 0C01AB7C */  jal        sqrtf
/* 60814 8005FC14 46128300 */   add.s     $f12, $f16, $f18
/* 60818 8005FC18 C6040000 */  lwc1       $f4, 0x0($s0)
/* 6081C 8005FC1C C6160004 */  lwc1       $f22, 0x4($s0)
/* 60820 8005FC20 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60824 8005FC24 46002183 */  div.s      $f6, $f4, $f0
/* 60828 8005FC28 E6060000 */  swc1       $f6, 0x0($s0)
/* 6082C 8005FC2C C6180000 */  lwc1       $f24, 0x0($s0)
/* 60830 8005FC30 4618C202 */  mul.s      $f8, $f24, $f24
/* 60834 8005FC34 00000000 */  nop
/* 60838 8005FC38 4616B282 */  mul.s      $f10, $f22, $f22
/* 6083C 8005FC3C 460A4400 */  add.s      $f16, $f8, $f10
/* 60840 8005FC40 4614A482 */  mul.s      $f18, $f20, $f20
/* 60844 8005FC44 0C01AB7C */  jal        sqrtf
/* 60848 8005FC48 46128300 */   add.s     $f12, $f16, $f18
/* 6084C 8005FC4C C6040004 */  lwc1       $f4, 0x4($s0)
/* 60850 8005FC50 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60854 8005FC54 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60858 8005FC58 46002183 */  div.s      $f6, $f4, $f0
/* 6085C 8005FC5C 4618C202 */  mul.s      $f8, $f24, $f24
/* 60860 8005FC60 E6060004 */  swc1       $f6, 0x4($s0)
/* 60864 8005FC64 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60868 8005FC68 4616B282 */  mul.s      $f10, $f22, $f22
/* 6086C 8005FC6C 460A4400 */  add.s      $f16, $f8, $f10
/* 60870 8005FC70 4614A482 */  mul.s      $f18, $f20, $f20
/* 60874 8005FC74 0C01AB7C */  jal        sqrtf
/* 60878 8005FC78 46128300 */   add.s     $f12, $f16, $f18
/* 6087C 8005FC7C C6040008 */  lwc1       $f4, 0x8($s0)
/* 60880 8005FC80 24130001 */  addiu      $s3, $zero, 0x1
/* 60884 8005FC84 46002183 */  div.s      $f6, $f4, $f0
/* 60888 8005FC88 E6060008 */  swc1       $f6, 0x8($s0)
.L8005FC8C:
/* 6088C 8005FC8C 8E510048 */  lw         $s1, 0x48($s2)
/* 60890 8005FC90 27A50060 */  addiu      $a1, $sp, 0x60
/* 60894 8005FC94 8FA60050 */  lw         $a2, 0x50($sp)
/* 60898 8005FC98 26310058 */  addiu      $s1, $s1, 0x58
/* 6089C 8005FC9C 02202025 */  or         $a0, $s1, $zero
/* 608A0 8005FCA0 0C01817F */  jal        func_800605FC
/* 608A4 8005FCA4 27A70074 */   addiu     $a3, $sp, 0x74
/* 608A8 8005FCA8 10400033 */  beqz       $v0, .L8005FD78
/* 608AC 8005FCAC 26500290 */   addiu     $s0, $s2, 0x290
/* 608B0 8005FCB0 C6080000 */  lwc1       $f8, 0x0($s0)
/* 608B4 8005FCB4 C62A0000 */  lwc1       $f10, 0x0($s1)
/* 608B8 8005FCB8 C6120004 */  lwc1       $f18, 0x4($s0)
/* 608BC 8005FCBC 460A4400 */  add.s      $f16, $f8, $f10
/* 608C0 8005FCC0 C6080008 */  lwc1       $f8, 0x8($s0)
/* 608C4 8005FCC4 E6100000 */  swc1       $f16, 0x0($s0)
/* 608C8 8005FCC8 C6240004 */  lwc1       $f4, 0x4($s1)
/* 608CC 8005FCCC C6180000 */  lwc1       $f24, 0x0($s0)
/* 608D0 8005FCD0 46049180 */  add.s      $f6, $f18, $f4
/* 608D4 8005FCD4 4618C482 */  mul.s      $f18, $f24, $f24
/* 608D8 8005FCD8 E6060004 */  swc1       $f6, 0x4($s0)
/* 608DC 8005FCDC C62A0008 */  lwc1       $f10, 0x8($s1)
/* 608E0 8005FCE0 C6160004 */  lwc1       $f22, 0x4($s0)
/* 608E4 8005FCE4 460A4400 */  add.s      $f16, $f8, $f10
/* 608E8 8005FCE8 4616B102 */  mul.s      $f4, $f22, $f22
/* 608EC 8005FCEC E6100008 */  swc1       $f16, 0x8($s0)
/* 608F0 8005FCF0 C6140008 */  lwc1       $f20, 0x8($s0)
/* 608F4 8005FCF4 4614A202 */  mul.s      $f8, $f20, $f20
/* 608F8 8005FCF8 46049180 */  add.s      $f6, $f18, $f4
/* 608FC 8005FCFC 0C01AB7C */  jal        sqrtf
/* 60900 8005FD00 46083300 */   add.s     $f12, $f6, $f8
/* 60904 8005FD04 C60A0000 */  lwc1       $f10, 0x0($s0)
/* 60908 8005FD08 C6160004 */  lwc1       $f22, 0x4($s0)
/* 6090C 8005FD0C C6140008 */  lwc1       $f20, 0x8($s0)
/* 60910 8005FD10 46005403 */  div.s      $f16, $f10, $f0
/* 60914 8005FD14 E6100000 */  swc1       $f16, 0x0($s0)
/* 60918 8005FD18 C6180000 */  lwc1       $f24, 0x0($s0)
/* 6091C 8005FD1C 4618C482 */  mul.s      $f18, $f24, $f24
/* 60920 8005FD20 00000000 */  nop
/* 60924 8005FD24 4616B102 */  mul.s      $f4, $f22, $f22
/* 60928 8005FD28 46049180 */  add.s      $f6, $f18, $f4
/* 6092C 8005FD2C 4614A202 */  mul.s      $f8, $f20, $f20
/* 60930 8005FD30 0C01AB7C */  jal        sqrtf
/* 60934 8005FD34 46083300 */   add.s     $f12, $f6, $f8
/* 60938 8005FD38 C60A0004 */  lwc1       $f10, 0x4($s0)
/* 6093C 8005FD3C C6180000 */  lwc1       $f24, 0x0($s0)
/* 60940 8005FD40 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60944 8005FD44 46005403 */  div.s      $f16, $f10, $f0
/* 60948 8005FD48 4618C482 */  mul.s      $f18, $f24, $f24
/* 6094C 8005FD4C E6100004 */  swc1       $f16, 0x4($s0)
/* 60950 8005FD50 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60954 8005FD54 4616B102 */  mul.s      $f4, $f22, $f22
/* 60958 8005FD58 46049180 */  add.s      $f6, $f18, $f4
/* 6095C 8005FD5C 4614A202 */  mul.s      $f8, $f20, $f20
/* 60960 8005FD60 0C01AB7C */  jal        sqrtf
/* 60964 8005FD64 46083300 */   add.s     $f12, $f6, $f8
/* 60968 8005FD68 C60A0008 */  lwc1       $f10, 0x8($s0)
/* 6096C 8005FD6C 26730001 */  addiu      $s3, $s3, 0x1
/* 60970 8005FD70 46005403 */  div.s      $f16, $f10, $f0
/* 60974 8005FD74 E6100008 */  swc1       $f16, 0x8($s0)
.L8005FD78:
/* 60978 8005FD78 8E510048 */  lw         $s1, 0x48($s2)
/* 6097C 8005FD7C 27A50060 */  addiu      $a1, $sp, 0x60
/* 60980 8005FD80 8FA60050 */  lw         $a2, 0x50($sp)
/* 60984 8005FD84 26310068 */  addiu      $s1, $s1, 0x68
/* 60988 8005FD88 02202025 */  or         $a0, $s1, $zero
/* 6098C 8005FD8C 0C01817F */  jal        func_800605FC
/* 60990 8005FD90 27A70074 */   addiu     $a3, $sp, 0x74
/* 60994 8005FD94 10400033 */  beqz       $v0, .L8005FE64
/* 60998 8005FD98 26500290 */   addiu     $s0, $s2, 0x290
/* 6099C 8005FD9C C6120000 */  lwc1       $f18, 0x0($s0)
/* 609A0 8005FDA0 C6240000 */  lwc1       $f4, 0x0($s1)
/* 609A4 8005FDA4 C6080004 */  lwc1       $f8, 0x4($s0)
/* 609A8 8005FDA8 46049180 */  add.s      $f6, $f18, $f4
/* 609AC 8005FDAC C6120008 */  lwc1       $f18, 0x8($s0)
/* 609B0 8005FDB0 E6060000 */  swc1       $f6, 0x0($s0)
/* 609B4 8005FDB4 C62A0004 */  lwc1       $f10, 0x4($s1)
/* 609B8 8005FDB8 C6180000 */  lwc1       $f24, 0x0($s0)
/* 609BC 8005FDBC 460A4400 */  add.s      $f16, $f8, $f10
/* 609C0 8005FDC0 4618C202 */  mul.s      $f8, $f24, $f24
/* 609C4 8005FDC4 E6100004 */  swc1       $f16, 0x4($s0)
/* 609C8 8005FDC8 C6240008 */  lwc1       $f4, 0x8($s1)
/* 609CC 8005FDCC C6160004 */  lwc1       $f22, 0x4($s0)
/* 609D0 8005FDD0 46049180 */  add.s      $f6, $f18, $f4
/* 609D4 8005FDD4 4616B282 */  mul.s      $f10, $f22, $f22
/* 609D8 8005FDD8 E6060008 */  swc1       $f6, 0x8($s0)
/* 609DC 8005FDDC C6140008 */  lwc1       $f20, 0x8($s0)
/* 609E0 8005FDE0 4614A482 */  mul.s      $f18, $f20, $f20
/* 609E4 8005FDE4 460A4400 */  add.s      $f16, $f8, $f10
/* 609E8 8005FDE8 0C01AB7C */  jal        sqrtf
/* 609EC 8005FDEC 46128300 */   add.s     $f12, $f16, $f18
/* 609F0 8005FDF0 C6040000 */  lwc1       $f4, 0x0($s0)
/* 609F4 8005FDF4 C6160004 */  lwc1       $f22, 0x4($s0)
/* 609F8 8005FDF8 C6140008 */  lwc1       $f20, 0x8($s0)
/* 609FC 8005FDFC 46002183 */  div.s      $f6, $f4, $f0
/* 60A00 8005FE00 E6060000 */  swc1       $f6, 0x0($s0)
/* 60A04 8005FE04 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60A08 8005FE08 4618C202 */  mul.s      $f8, $f24, $f24
/* 60A0C 8005FE0C 00000000 */  nop
/* 60A10 8005FE10 4616B282 */  mul.s      $f10, $f22, $f22
/* 60A14 8005FE14 460A4400 */  add.s      $f16, $f8, $f10
/* 60A18 8005FE18 4614A482 */  mul.s      $f18, $f20, $f20
/* 60A1C 8005FE1C 0C01AB7C */  jal        sqrtf
/* 60A20 8005FE20 46128300 */   add.s     $f12, $f16, $f18
/* 60A24 8005FE24 C6040004 */  lwc1       $f4, 0x4($s0)
/* 60A28 8005FE28 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60A2C 8005FE2C C6140008 */  lwc1       $f20, 0x8($s0)
/* 60A30 8005FE30 46002183 */  div.s      $f6, $f4, $f0
/* 60A34 8005FE34 4618C202 */  mul.s      $f8, $f24, $f24
/* 60A38 8005FE38 E6060004 */  swc1       $f6, 0x4($s0)
/* 60A3C 8005FE3C C6160004 */  lwc1       $f22, 0x4($s0)
/* 60A40 8005FE40 4616B282 */  mul.s      $f10, $f22, $f22
/* 60A44 8005FE44 460A4400 */  add.s      $f16, $f8, $f10
/* 60A48 8005FE48 4614A482 */  mul.s      $f18, $f20, $f20
/* 60A4C 8005FE4C 0C01AB7C */  jal        sqrtf
/* 60A50 8005FE50 46128300 */   add.s     $f12, $f16, $f18
/* 60A54 8005FE54 C6040008 */  lwc1       $f4, 0x8($s0)
/* 60A58 8005FE58 26730001 */  addiu      $s3, $s3, 0x1
/* 60A5C 8005FE5C 46002183 */  div.s      $f6, $f4, $f0
/* 60A60 8005FE60 E6060008 */  swc1       $f6, 0x8($s0)
.L8005FE64:
/* 60A64 8005FE64 8E510048 */  lw         $s1, 0x48($s2)
/* 60A68 8005FE68 27A50060 */  addiu      $a1, $sp, 0x60
/* 60A6C 8005FE6C 8FA60050 */  lw         $a2, 0x50($sp)
/* 60A70 8005FE70 26310078 */  addiu      $s1, $s1, 0x78
/* 60A74 8005FE74 02202025 */  or         $a0, $s1, $zero
/* 60A78 8005FE78 0C01817F */  jal        func_800605FC
/* 60A7C 8005FE7C 27A70074 */   addiu     $a3, $sp, 0x74
/* 60A80 8005FE80 104001D0 */  beqz       $v0, .L800605C4
/* 60A84 8005FE84 26500290 */   addiu     $s0, $s2, 0x290
/* 60A88 8005FE88 C6080000 */  lwc1       $f8, 0x0($s0)
/* 60A8C 8005FE8C C62A0000 */  lwc1       $f10, 0x0($s1)
/* 60A90 8005FE90 C6120004 */  lwc1       $f18, 0x4($s0)
/* 60A94 8005FE94 460A4400 */  add.s      $f16, $f8, $f10
/* 60A98 8005FE98 C6080008 */  lwc1       $f8, 0x8($s0)
/* 60A9C 8005FE9C E6100000 */  swc1       $f16, 0x0($s0)
/* 60AA0 8005FEA0 C6240004 */  lwc1       $f4, 0x4($s1)
/* 60AA4 8005FEA4 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60AA8 8005FEA8 46049180 */  add.s      $f6, $f18, $f4
/* 60AAC 8005FEAC 4618C482 */  mul.s      $f18, $f24, $f24
/* 60AB0 8005FEB0 E6060004 */  swc1       $f6, 0x4($s0)
/* 60AB4 8005FEB4 C62A0008 */  lwc1       $f10, 0x8($s1)
/* 60AB8 8005FEB8 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60ABC 8005FEBC 460A4400 */  add.s      $f16, $f8, $f10
/* 60AC0 8005FEC0 4616B102 */  mul.s      $f4, $f22, $f22
/* 60AC4 8005FEC4 E6100008 */  swc1       $f16, 0x8($s0)
/* 60AC8 8005FEC8 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60ACC 8005FECC 4614A202 */  mul.s      $f8, $f20, $f20
/* 60AD0 8005FED0 46049180 */  add.s      $f6, $f18, $f4
/* 60AD4 8005FED4 0C01AB7C */  jal        sqrtf
/* 60AD8 8005FED8 46083300 */   add.s     $f12, $f6, $f8
/* 60ADC 8005FEDC C60A0000 */  lwc1       $f10, 0x0($s0)
/* 60AE0 8005FEE0 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60AE4 8005FEE4 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60AE8 8005FEE8 46005403 */  div.s      $f16, $f10, $f0
/* 60AEC 8005FEEC E6100000 */  swc1       $f16, 0x0($s0)
/* 60AF0 8005FEF0 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60AF4 8005FEF4 4618C482 */  mul.s      $f18, $f24, $f24
/* 60AF8 8005FEF8 00000000 */  nop
/* 60AFC 8005FEFC 4616B102 */  mul.s      $f4, $f22, $f22
/* 60B00 8005FF00 46049180 */  add.s      $f6, $f18, $f4
/* 60B04 8005FF04 4614A202 */  mul.s      $f8, $f20, $f20
/* 60B08 8005FF08 0C01AB7C */  jal        sqrtf
/* 60B0C 8005FF0C 46083300 */   add.s     $f12, $f6, $f8
/* 60B10 8005FF10 C60A0004 */  lwc1       $f10, 0x4($s0)
/* 60B14 8005FF14 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60B18 8005FF18 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60B1C 8005FF1C 46005403 */  div.s      $f16, $f10, $f0
/* 60B20 8005FF20 4618C482 */  mul.s      $f18, $f24, $f24
/* 60B24 8005FF24 E6100004 */  swc1       $f16, 0x4($s0)
/* 60B28 8005FF28 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60B2C 8005FF2C 4616B102 */  mul.s      $f4, $f22, $f22
/* 60B30 8005FF30 46049180 */  add.s      $f6, $f18, $f4
/* 60B34 8005FF34 4614A202 */  mul.s      $f8, $f20, $f20
/* 60B38 8005FF38 0C01AB7C */  jal        sqrtf
/* 60B3C 8005FF3C 46083300 */   add.s     $f12, $f6, $f8
/* 60B40 8005FF40 C60A0008 */  lwc1       $f10, 0x8($s0)
/* 60B44 8005FF44 26730001 */  addiu      $s3, $s3, 0x1
/* 60B48 8005FF48 46005403 */  div.s      $f16, $f10, $f0
/* 60B4C 8005FF4C 1000019D */  b          .L800605C4
/* 60B50 8005FF50 E6100008 */   swc1      $f16, 0x8($s0)
glabel L8005FF54
/* 60B54 8005FF54 24710058 */  addiu      $s1, $v1, 0x58
/* 60B58 8005FF58 02202025 */  or         $a0, $s1, $zero
/* 60B5C 8005FF5C 27A50060 */  addiu      $a1, $sp, 0x60
/* 60B60 8005FF60 8FA60050 */  lw         $a2, 0x50($sp)
/* 60B64 8005FF64 0C01817F */  jal        func_800605FC
/* 60B68 8005FF68 27A70074 */   addiu     $a3, $sp, 0x74
/* 60B6C 8005FF6C 10400033 */  beqz       $v0, .L8006003C
/* 60B70 8005FF70 26500290 */   addiu     $s0, $s2, 0x290
/* 60B74 8005FF74 C6120000 */  lwc1       $f18, 0x0($s0)
/* 60B78 8005FF78 C6240000 */  lwc1       $f4, 0x0($s1)
/* 60B7C 8005FF7C C6080004 */  lwc1       $f8, 0x4($s0)
/* 60B80 8005FF80 46049180 */  add.s      $f6, $f18, $f4
/* 60B84 8005FF84 C6120008 */  lwc1       $f18, 0x8($s0)
/* 60B88 8005FF88 E6060000 */  swc1       $f6, 0x0($s0)
/* 60B8C 8005FF8C C62A0004 */  lwc1       $f10, 0x4($s1)
/* 60B90 8005FF90 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60B94 8005FF94 460A4400 */  add.s      $f16, $f8, $f10
/* 60B98 8005FF98 4618C202 */  mul.s      $f8, $f24, $f24
/* 60B9C 8005FF9C E6100004 */  swc1       $f16, 0x4($s0)
/* 60BA0 8005FFA0 C6240008 */  lwc1       $f4, 0x8($s1)
/* 60BA4 8005FFA4 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60BA8 8005FFA8 46049180 */  add.s      $f6, $f18, $f4
/* 60BAC 8005FFAC 4616B282 */  mul.s      $f10, $f22, $f22
/* 60BB0 8005FFB0 E6060008 */  swc1       $f6, 0x8($s0)
/* 60BB4 8005FFB4 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60BB8 8005FFB8 4614A482 */  mul.s      $f18, $f20, $f20
/* 60BBC 8005FFBC 460A4400 */  add.s      $f16, $f8, $f10
/* 60BC0 8005FFC0 0C01AB7C */  jal        sqrtf
/* 60BC4 8005FFC4 46128300 */   add.s     $f12, $f16, $f18
/* 60BC8 8005FFC8 C6040000 */  lwc1       $f4, 0x0($s0)
/* 60BCC 8005FFCC C6160004 */  lwc1       $f22, 0x4($s0)
/* 60BD0 8005FFD0 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60BD4 8005FFD4 46002183 */  div.s      $f6, $f4, $f0
/* 60BD8 8005FFD8 E6060000 */  swc1       $f6, 0x0($s0)
/* 60BDC 8005FFDC C6180000 */  lwc1       $f24, 0x0($s0)
/* 60BE0 8005FFE0 4618C202 */  mul.s      $f8, $f24, $f24
/* 60BE4 8005FFE4 00000000 */  nop
/* 60BE8 8005FFE8 4616B282 */  mul.s      $f10, $f22, $f22
/* 60BEC 8005FFEC 460A4400 */  add.s      $f16, $f8, $f10
/* 60BF0 8005FFF0 4614A482 */  mul.s      $f18, $f20, $f20
/* 60BF4 8005FFF4 0C01AB7C */  jal        sqrtf
/* 60BF8 8005FFF8 46128300 */   add.s     $f12, $f16, $f18
/* 60BFC 8005FFFC C6040004 */  lwc1       $f4, 0x4($s0)
/* 60C00 80060000 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60C04 80060004 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60C08 80060008 46002183 */  div.s      $f6, $f4, $f0
/* 60C0C 8006000C 4618C202 */  mul.s      $f8, $f24, $f24
/* 60C10 80060010 E6060004 */  swc1       $f6, 0x4($s0)
/* 60C14 80060014 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60C18 80060018 4616B282 */  mul.s      $f10, $f22, $f22
/* 60C1C 8006001C 460A4400 */  add.s      $f16, $f8, $f10
/* 60C20 80060020 4614A482 */  mul.s      $f18, $f20, $f20
/* 60C24 80060024 0C01AB7C */  jal        sqrtf
/* 60C28 80060028 46128300 */   add.s     $f12, $f16, $f18
/* 60C2C 8006002C C6040008 */  lwc1       $f4, 0x8($s0)
/* 60C30 80060030 24130001 */  addiu      $s3, $zero, 0x1
/* 60C34 80060034 46002183 */  div.s      $f6, $f4, $f0
/* 60C38 80060038 E6060008 */  swc1       $f6, 0x8($s0)
.L8006003C:
/* 60C3C 8006003C 8E510048 */  lw         $s1, 0x48($s2)
/* 60C40 80060040 27A50060 */  addiu      $a1, $sp, 0x60
/* 60C44 80060044 8FA60050 */  lw         $a2, 0x50($sp)
/* 60C48 80060048 26310068 */  addiu      $s1, $s1, 0x68
/* 60C4C 8006004C 02202025 */  or         $a0, $s1, $zero
/* 60C50 80060050 0C01817F */  jal        func_800605FC
/* 60C54 80060054 27A70074 */   addiu     $a3, $sp, 0x74
/* 60C58 80060058 10400033 */  beqz       $v0, .L80060128
/* 60C5C 8006005C 26500290 */   addiu     $s0, $s2, 0x290
/* 60C60 80060060 C6080000 */  lwc1       $f8, 0x0($s0)
/* 60C64 80060064 C62A0000 */  lwc1       $f10, 0x0($s1)
/* 60C68 80060068 C6120004 */  lwc1       $f18, 0x4($s0)
/* 60C6C 8006006C 460A4400 */  add.s      $f16, $f8, $f10
/* 60C70 80060070 C6080008 */  lwc1       $f8, 0x8($s0)
/* 60C74 80060074 E6100000 */  swc1       $f16, 0x0($s0)
/* 60C78 80060078 C6240004 */  lwc1       $f4, 0x4($s1)
/* 60C7C 8006007C C6180000 */  lwc1       $f24, 0x0($s0)
/* 60C80 80060080 46049180 */  add.s      $f6, $f18, $f4
/* 60C84 80060084 4618C482 */  mul.s      $f18, $f24, $f24
/* 60C88 80060088 E6060004 */  swc1       $f6, 0x4($s0)
/* 60C8C 8006008C C62A0008 */  lwc1       $f10, 0x8($s1)
/* 60C90 80060090 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60C94 80060094 460A4400 */  add.s      $f16, $f8, $f10
/* 60C98 80060098 4616B102 */  mul.s      $f4, $f22, $f22
/* 60C9C 8006009C E6100008 */  swc1       $f16, 0x8($s0)
/* 60CA0 800600A0 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60CA4 800600A4 4614A202 */  mul.s      $f8, $f20, $f20
/* 60CA8 800600A8 46049180 */  add.s      $f6, $f18, $f4
/* 60CAC 800600AC 0C01AB7C */  jal        sqrtf
/* 60CB0 800600B0 46083300 */   add.s     $f12, $f6, $f8
/* 60CB4 800600B4 C60A0000 */  lwc1       $f10, 0x0($s0)
/* 60CB8 800600B8 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60CBC 800600BC C6140008 */  lwc1       $f20, 0x8($s0)
/* 60CC0 800600C0 46005403 */  div.s      $f16, $f10, $f0
/* 60CC4 800600C4 E6100000 */  swc1       $f16, 0x0($s0)
/* 60CC8 800600C8 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60CCC 800600CC 4618C482 */  mul.s      $f18, $f24, $f24
/* 60CD0 800600D0 00000000 */  nop
/* 60CD4 800600D4 4616B102 */  mul.s      $f4, $f22, $f22
/* 60CD8 800600D8 46049180 */  add.s      $f6, $f18, $f4
/* 60CDC 800600DC 4614A202 */  mul.s      $f8, $f20, $f20
/* 60CE0 800600E0 0C01AB7C */  jal        sqrtf
/* 60CE4 800600E4 46083300 */   add.s     $f12, $f6, $f8
/* 60CE8 800600E8 C60A0004 */  lwc1       $f10, 0x4($s0)
/* 60CEC 800600EC C6180000 */  lwc1       $f24, 0x0($s0)
/* 60CF0 800600F0 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60CF4 800600F4 46005403 */  div.s      $f16, $f10, $f0
/* 60CF8 800600F8 4618C482 */  mul.s      $f18, $f24, $f24
/* 60CFC 800600FC E6100004 */  swc1       $f16, 0x4($s0)
/* 60D00 80060100 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60D04 80060104 4616B102 */  mul.s      $f4, $f22, $f22
/* 60D08 80060108 46049180 */  add.s      $f6, $f18, $f4
/* 60D0C 8006010C 4614A202 */  mul.s      $f8, $f20, $f20
/* 60D10 80060110 0C01AB7C */  jal        sqrtf
/* 60D14 80060114 46083300 */   add.s     $f12, $f6, $f8
/* 60D18 80060118 C60A0008 */  lwc1       $f10, 0x8($s0)
/* 60D1C 8006011C 26730001 */  addiu      $s3, $s3, 0x1
/* 60D20 80060120 46005403 */  div.s      $f16, $f10, $f0
/* 60D24 80060124 E6100008 */  swc1       $f16, 0x8($s0)
.L80060128:
/* 60D28 80060128 8E510048 */  lw         $s1, 0x48($s2)
/* 60D2C 8006012C 27A50060 */  addiu      $a1, $sp, 0x60
/* 60D30 80060130 8FA60050 */  lw         $a2, 0x50($sp)
/* 60D34 80060134 26310078 */  addiu      $s1, $s1, 0x78
/* 60D38 80060138 02202025 */  or         $a0, $s1, $zero
/* 60D3C 8006013C 0C01817F */  jal        func_800605FC
/* 60D40 80060140 27A70074 */   addiu     $a3, $sp, 0x74
/* 60D44 80060144 10400033 */  beqz       $v0, .L80060214
/* 60D48 80060148 26500290 */   addiu     $s0, $s2, 0x290
/* 60D4C 8006014C C6120000 */  lwc1       $f18, 0x0($s0)
/* 60D50 80060150 C6240000 */  lwc1       $f4, 0x0($s1)
/* 60D54 80060154 C6080004 */  lwc1       $f8, 0x4($s0)
/* 60D58 80060158 46049180 */  add.s      $f6, $f18, $f4
/* 60D5C 8006015C C6120008 */  lwc1       $f18, 0x8($s0)
/* 60D60 80060160 E6060000 */  swc1       $f6, 0x0($s0)
/* 60D64 80060164 C62A0004 */  lwc1       $f10, 0x4($s1)
/* 60D68 80060168 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60D6C 8006016C 460A4400 */  add.s      $f16, $f8, $f10
/* 60D70 80060170 4618C202 */  mul.s      $f8, $f24, $f24
/* 60D74 80060174 E6100004 */  swc1       $f16, 0x4($s0)
/* 60D78 80060178 C6240008 */  lwc1       $f4, 0x8($s1)
/* 60D7C 8006017C C6160004 */  lwc1       $f22, 0x4($s0)
/* 60D80 80060180 46049180 */  add.s      $f6, $f18, $f4
/* 60D84 80060184 4616B282 */  mul.s      $f10, $f22, $f22
/* 60D88 80060188 E6060008 */  swc1       $f6, 0x8($s0)
/* 60D8C 8006018C C6140008 */  lwc1       $f20, 0x8($s0)
/* 60D90 80060190 4614A482 */  mul.s      $f18, $f20, $f20
/* 60D94 80060194 460A4400 */  add.s      $f16, $f8, $f10
/* 60D98 80060198 0C01AB7C */  jal        sqrtf
/* 60D9C 8006019C 46128300 */   add.s     $f12, $f16, $f18
/* 60DA0 800601A0 C6040000 */  lwc1       $f4, 0x0($s0)
/* 60DA4 800601A4 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60DA8 800601A8 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60DAC 800601AC 46002183 */  div.s      $f6, $f4, $f0
/* 60DB0 800601B0 E6060000 */  swc1       $f6, 0x0($s0)
/* 60DB4 800601B4 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60DB8 800601B8 4618C202 */  mul.s      $f8, $f24, $f24
/* 60DBC 800601BC 00000000 */  nop
/* 60DC0 800601C0 4616B282 */  mul.s      $f10, $f22, $f22
/* 60DC4 800601C4 460A4400 */  add.s      $f16, $f8, $f10
/* 60DC8 800601C8 4614A482 */  mul.s      $f18, $f20, $f20
/* 60DCC 800601CC 0C01AB7C */  jal        sqrtf
/* 60DD0 800601D0 46128300 */   add.s     $f12, $f16, $f18
/* 60DD4 800601D4 C6040004 */  lwc1       $f4, 0x4($s0)
/* 60DD8 800601D8 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60DDC 800601DC C6140008 */  lwc1       $f20, 0x8($s0)
/* 60DE0 800601E0 46002183 */  div.s      $f6, $f4, $f0
/* 60DE4 800601E4 4618C202 */  mul.s      $f8, $f24, $f24
/* 60DE8 800601E8 E6060004 */  swc1       $f6, 0x4($s0)
/* 60DEC 800601EC C6160004 */  lwc1       $f22, 0x4($s0)
/* 60DF0 800601F0 4616B282 */  mul.s      $f10, $f22, $f22
/* 60DF4 800601F4 460A4400 */  add.s      $f16, $f8, $f10
/* 60DF8 800601F8 4614A482 */  mul.s      $f18, $f20, $f20
/* 60DFC 800601FC 0C01AB7C */  jal        sqrtf
/* 60E00 80060200 46128300 */   add.s     $f12, $f16, $f18
/* 60E04 80060204 C6040008 */  lwc1       $f4, 0x8($s0)
/* 60E08 80060208 26730001 */  addiu      $s3, $s3, 0x1
/* 60E0C 8006020C 46002183 */  div.s      $f6, $f4, $f0
/* 60E10 80060210 E6060008 */  swc1       $f6, 0x8($s0)
.L80060214:
/* 60E14 80060214 8E510048 */  lw         $s1, 0x48($s2)
/* 60E18 80060218 27A50060 */  addiu      $a1, $sp, 0x60
/* 60E1C 8006021C 8FA60050 */  lw         $a2, 0x50($sp)
/* 60E20 80060220 26310038 */  addiu      $s1, $s1, 0x38
/* 60E24 80060224 02202025 */  or         $a0, $s1, $zero
/* 60E28 80060228 0C01817F */  jal        func_800605FC
/* 60E2C 8006022C 27A70074 */   addiu     $a3, $sp, 0x74
/* 60E30 80060230 104000E4 */  beqz       $v0, .L800605C4
/* 60E34 80060234 26500290 */   addiu     $s0, $s2, 0x290
/* 60E38 80060238 C6080000 */  lwc1       $f8, 0x0($s0)
/* 60E3C 8006023C C62A0000 */  lwc1       $f10, 0x0($s1)
/* 60E40 80060240 C6120004 */  lwc1       $f18, 0x4($s0)
/* 60E44 80060244 460A4400 */  add.s      $f16, $f8, $f10
/* 60E48 80060248 C6080008 */  lwc1       $f8, 0x8($s0)
/* 60E4C 8006024C E6100000 */  swc1       $f16, 0x0($s0)
/* 60E50 80060250 C6240004 */  lwc1       $f4, 0x4($s1)
/* 60E54 80060254 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60E58 80060258 46049180 */  add.s      $f6, $f18, $f4
/* 60E5C 8006025C 4618C482 */  mul.s      $f18, $f24, $f24
/* 60E60 80060260 E6060004 */  swc1       $f6, 0x4($s0)
/* 60E64 80060264 C62A0008 */  lwc1       $f10, 0x8($s1)
/* 60E68 80060268 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60E6C 8006026C 460A4400 */  add.s      $f16, $f8, $f10
/* 60E70 80060270 4616B102 */  mul.s      $f4, $f22, $f22
/* 60E74 80060274 E6100008 */  swc1       $f16, 0x8($s0)
/* 60E78 80060278 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60E7C 8006027C 4614A202 */  mul.s      $f8, $f20, $f20
/* 60E80 80060280 46049180 */  add.s      $f6, $f18, $f4
/* 60E84 80060284 0C01AB7C */  jal        sqrtf
/* 60E88 80060288 46083300 */   add.s     $f12, $f6, $f8
/* 60E8C 8006028C C60A0000 */  lwc1       $f10, 0x0($s0)
/* 60E90 80060290 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60E94 80060294 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60E98 80060298 46005403 */  div.s      $f16, $f10, $f0
/* 60E9C 8006029C E6100000 */  swc1       $f16, 0x0($s0)
/* 60EA0 800602A0 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60EA4 800602A4 4618C482 */  mul.s      $f18, $f24, $f24
/* 60EA8 800602A8 00000000 */  nop
/* 60EAC 800602AC 4616B102 */  mul.s      $f4, $f22, $f22
/* 60EB0 800602B0 46049180 */  add.s      $f6, $f18, $f4
/* 60EB4 800602B4 4614A202 */  mul.s      $f8, $f20, $f20
/* 60EB8 800602B8 0C01AB7C */  jal        sqrtf
/* 60EBC 800602BC 46083300 */   add.s     $f12, $f6, $f8
/* 60EC0 800602C0 C60A0004 */  lwc1       $f10, 0x4($s0)
/* 60EC4 800602C4 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60EC8 800602C8 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60ECC 800602CC 46005403 */  div.s      $f16, $f10, $f0
/* 60ED0 800602D0 4618C482 */  mul.s      $f18, $f24, $f24
/* 60ED4 800602D4 E6100004 */  swc1       $f16, 0x4($s0)
/* 60ED8 800602D8 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60EDC 800602DC 4616B102 */  mul.s      $f4, $f22, $f22
/* 60EE0 800602E0 46049180 */  add.s      $f6, $f18, $f4
/* 60EE4 800602E4 4614A202 */  mul.s      $f8, $f20, $f20
/* 60EE8 800602E8 0C01AB7C */  jal        sqrtf
/* 60EEC 800602EC 46083300 */   add.s     $f12, $f6, $f8
/* 60EF0 800602F0 C60A0008 */  lwc1       $f10, 0x8($s0)
/* 60EF4 800602F4 26730001 */  addiu      $s3, $s3, 0x1
/* 60EF8 800602F8 46005403 */  div.s      $f16, $f10, $f0
/* 60EFC 800602FC 100000B1 */  b          .L800605C4
/* 60F00 80060300 E6100008 */   swc1      $f16, 0x8($s0)
glabel L80060304
/* 60F04 80060304 24710048 */  addiu      $s1, $v1, 0x48
/* 60F08 80060308 02202025 */  or         $a0, $s1, $zero
/* 60F0C 8006030C 27A50060 */  addiu      $a1, $sp, 0x60
/* 60F10 80060310 8FA60050 */  lw         $a2, 0x50($sp)
/* 60F14 80060314 0C01817F */  jal        func_800605FC
/* 60F18 80060318 27A70074 */   addiu     $a3, $sp, 0x74
/* 60F1C 8006031C 10400033 */  beqz       $v0, .L800603EC
/* 60F20 80060320 26500290 */   addiu     $s0, $s2, 0x290
/* 60F24 80060324 C6120000 */  lwc1       $f18, 0x0($s0)
/* 60F28 80060328 C6240000 */  lwc1       $f4, 0x0($s1)
/* 60F2C 8006032C C6080004 */  lwc1       $f8, 0x4($s0)
/* 60F30 80060330 46049180 */  add.s      $f6, $f18, $f4
/* 60F34 80060334 C6120008 */  lwc1       $f18, 0x8($s0)
/* 60F38 80060338 E6060000 */  swc1       $f6, 0x0($s0)
/* 60F3C 8006033C C62A0004 */  lwc1       $f10, 0x4($s1)
/* 60F40 80060340 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60F44 80060344 460A4400 */  add.s      $f16, $f8, $f10
/* 60F48 80060348 4618C202 */  mul.s      $f8, $f24, $f24
/* 60F4C 8006034C E6100004 */  swc1       $f16, 0x4($s0)
/* 60F50 80060350 C6240008 */  lwc1       $f4, 0x8($s1)
/* 60F54 80060354 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60F58 80060358 46049180 */  add.s      $f6, $f18, $f4
/* 60F5C 8006035C 4616B282 */  mul.s      $f10, $f22, $f22
/* 60F60 80060360 E6060008 */  swc1       $f6, 0x8($s0)
/* 60F64 80060364 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60F68 80060368 4614A482 */  mul.s      $f18, $f20, $f20
/* 60F6C 8006036C 460A4400 */  add.s      $f16, $f8, $f10
/* 60F70 80060370 0C01AB7C */  jal        sqrtf
/* 60F74 80060374 46128300 */   add.s     $f12, $f16, $f18
/* 60F78 80060378 C6040000 */  lwc1       $f4, 0x0($s0)
/* 60F7C 8006037C C6160004 */  lwc1       $f22, 0x4($s0)
/* 60F80 80060380 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60F84 80060384 46002183 */  div.s      $f6, $f4, $f0
/* 60F88 80060388 E6060000 */  swc1       $f6, 0x0($s0)
/* 60F8C 8006038C C6180000 */  lwc1       $f24, 0x0($s0)
/* 60F90 80060390 4618C202 */  mul.s      $f8, $f24, $f24
/* 60F94 80060394 00000000 */  nop
/* 60F98 80060398 4616B282 */  mul.s      $f10, $f22, $f22
/* 60F9C 8006039C 460A4400 */  add.s      $f16, $f8, $f10
/* 60FA0 800603A0 4614A482 */  mul.s      $f18, $f20, $f20
/* 60FA4 800603A4 0C01AB7C */  jal        sqrtf
/* 60FA8 800603A8 46128300 */   add.s     $f12, $f16, $f18
/* 60FAC 800603AC C6040004 */  lwc1       $f4, 0x4($s0)
/* 60FB0 800603B0 C6180000 */  lwc1       $f24, 0x0($s0)
/* 60FB4 800603B4 C6140008 */  lwc1       $f20, 0x8($s0)
/* 60FB8 800603B8 46002183 */  div.s      $f6, $f4, $f0
/* 60FBC 800603BC 4618C202 */  mul.s      $f8, $f24, $f24
/* 60FC0 800603C0 E6060004 */  swc1       $f6, 0x4($s0)
/* 60FC4 800603C4 C6160004 */  lwc1       $f22, 0x4($s0)
/* 60FC8 800603C8 4616B282 */  mul.s      $f10, $f22, $f22
/* 60FCC 800603CC 460A4400 */  add.s      $f16, $f8, $f10
/* 60FD0 800603D0 4614A482 */  mul.s      $f18, $f20, $f20
/* 60FD4 800603D4 0C01AB7C */  jal        sqrtf
/* 60FD8 800603D8 46128300 */   add.s     $f12, $f16, $f18
/* 60FDC 800603DC C6040008 */  lwc1       $f4, 0x8($s0)
/* 60FE0 800603E0 24130001 */  addiu      $s3, $zero, 0x1
/* 60FE4 800603E4 46002183 */  div.s      $f6, $f4, $f0
/* 60FE8 800603E8 E6060008 */  swc1       $f6, 0x8($s0)
.L800603EC:
/* 60FEC 800603EC 8E510048 */  lw         $s1, 0x48($s2)
/* 60FF0 800603F0 27A50060 */  addiu      $a1, $sp, 0x60
/* 60FF4 800603F4 8FA60050 */  lw         $a2, 0x50($sp)
/* 60FF8 800603F8 26310058 */  addiu      $s1, $s1, 0x58
/* 60FFC 800603FC 02202025 */  or         $a0, $s1, $zero
/* 61000 80060400 0C01817F */  jal        func_800605FC
/* 61004 80060404 27A70074 */   addiu     $a3, $sp, 0x74
/* 61008 80060408 10400033 */  beqz       $v0, .L800604D8
/* 6100C 8006040C 26500290 */   addiu     $s0, $s2, 0x290
/* 61010 80060410 C6080000 */  lwc1       $f8, 0x0($s0)
/* 61014 80060414 C62A0000 */  lwc1       $f10, 0x0($s1)
/* 61018 80060418 C6120004 */  lwc1       $f18, 0x4($s0)
/* 6101C 8006041C 460A4400 */  add.s      $f16, $f8, $f10
/* 61020 80060420 C6080008 */  lwc1       $f8, 0x8($s0)
/* 61024 80060424 E6100000 */  swc1       $f16, 0x0($s0)
/* 61028 80060428 C6240004 */  lwc1       $f4, 0x4($s1)
/* 6102C 8006042C C6180000 */  lwc1       $f24, 0x0($s0)
/* 61030 80060430 46049180 */  add.s      $f6, $f18, $f4
/* 61034 80060434 4618C482 */  mul.s      $f18, $f24, $f24
/* 61038 80060438 E6060004 */  swc1       $f6, 0x4($s0)
/* 6103C 8006043C C62A0008 */  lwc1       $f10, 0x8($s1)
/* 61040 80060440 C6160004 */  lwc1       $f22, 0x4($s0)
/* 61044 80060444 460A4400 */  add.s      $f16, $f8, $f10
/* 61048 80060448 4616B102 */  mul.s      $f4, $f22, $f22
/* 6104C 8006044C E6100008 */  swc1       $f16, 0x8($s0)
/* 61050 80060450 C6140008 */  lwc1       $f20, 0x8($s0)
/* 61054 80060454 4614A202 */  mul.s      $f8, $f20, $f20
/* 61058 80060458 46049180 */  add.s      $f6, $f18, $f4
/* 6105C 8006045C 0C01AB7C */  jal        sqrtf
/* 61060 80060460 46083300 */   add.s     $f12, $f6, $f8
/* 61064 80060464 C60A0000 */  lwc1       $f10, 0x0($s0)
/* 61068 80060468 C6160004 */  lwc1       $f22, 0x4($s0)
/* 6106C 8006046C C6140008 */  lwc1       $f20, 0x8($s0)
/* 61070 80060470 46005403 */  div.s      $f16, $f10, $f0
/* 61074 80060474 E6100000 */  swc1       $f16, 0x0($s0)
/* 61078 80060478 C6180000 */  lwc1       $f24, 0x0($s0)
/* 6107C 8006047C 4618C482 */  mul.s      $f18, $f24, $f24
/* 61080 80060480 00000000 */  nop
/* 61084 80060484 4616B102 */  mul.s      $f4, $f22, $f22
/* 61088 80060488 46049180 */  add.s      $f6, $f18, $f4
/* 6108C 8006048C 4614A202 */  mul.s      $f8, $f20, $f20
/* 61090 80060490 0C01AB7C */  jal        sqrtf
/* 61094 80060494 46083300 */   add.s     $f12, $f6, $f8
/* 61098 80060498 C60A0004 */  lwc1       $f10, 0x4($s0)
/* 6109C 8006049C C6180000 */  lwc1       $f24, 0x0($s0)
/* 610A0 800604A0 C6140008 */  lwc1       $f20, 0x8($s0)
/* 610A4 800604A4 46005403 */  div.s      $f16, $f10, $f0
/* 610A8 800604A8 4618C482 */  mul.s      $f18, $f24, $f24
/* 610AC 800604AC E6100004 */  swc1       $f16, 0x4($s0)
/* 610B0 800604B0 C6160004 */  lwc1       $f22, 0x4($s0)
/* 610B4 800604B4 4616B102 */  mul.s      $f4, $f22, $f22
/* 610B8 800604B8 46049180 */  add.s      $f6, $f18, $f4
/* 610BC 800604BC 4614A202 */  mul.s      $f8, $f20, $f20
/* 610C0 800604C0 0C01AB7C */  jal        sqrtf
/* 610C4 800604C4 46083300 */   add.s     $f12, $f6, $f8
/* 610C8 800604C8 C60A0008 */  lwc1       $f10, 0x8($s0)
/* 610CC 800604CC 26730001 */  addiu      $s3, $s3, 0x1
/* 610D0 800604D0 46005403 */  div.s      $f16, $f10, $f0
/* 610D4 800604D4 E6100008 */  swc1       $f16, 0x8($s0)
.L800604D8:
/* 610D8 800604D8 8E510048 */  lw         $s1, 0x48($s2)
/* 610DC 800604DC 27A50060 */  addiu      $a1, $sp, 0x60
/* 610E0 800604E0 8FA60050 */  lw         $a2, 0x50($sp)
/* 610E4 800604E4 26310038 */  addiu      $s1, $s1, 0x38
/* 610E8 800604E8 02202025 */  or         $a0, $s1, $zero
/* 610EC 800604EC 0C01817F */  jal        func_800605FC
/* 610F0 800604F0 27A70074 */   addiu     $a3, $sp, 0x74
/* 610F4 800604F4 10400033 */  beqz       $v0, .L800605C4
/* 610F8 800604F8 26500290 */   addiu     $s0, $s2, 0x290
/* 610FC 800604FC C6120000 */  lwc1       $f18, 0x0($s0)
/* 61100 80060500 C6240000 */  lwc1       $f4, 0x0($s1)
/* 61104 80060504 C6080004 */  lwc1       $f8, 0x4($s0)
/* 61108 80060508 46049180 */  add.s      $f6, $f18, $f4
/* 6110C 8006050C C6120008 */  lwc1       $f18, 0x8($s0)
/* 61110 80060510 E6060000 */  swc1       $f6, 0x0($s0)
/* 61114 80060514 C62A0004 */  lwc1       $f10, 0x4($s1)
/* 61118 80060518 C6180000 */  lwc1       $f24, 0x0($s0)
/* 6111C 8006051C 460A4400 */  add.s      $f16, $f8, $f10
/* 61120 80060520 4618C202 */  mul.s      $f8, $f24, $f24
/* 61124 80060524 E6100004 */  swc1       $f16, 0x4($s0)
/* 61128 80060528 C6240008 */  lwc1       $f4, 0x8($s1)
/* 6112C 8006052C C6160004 */  lwc1       $f22, 0x4($s0)
/* 61130 80060530 46049180 */  add.s      $f6, $f18, $f4
/* 61134 80060534 4616B282 */  mul.s      $f10, $f22, $f22
/* 61138 80060538 E6060008 */  swc1       $f6, 0x8($s0)
/* 6113C 8006053C C6140008 */  lwc1       $f20, 0x8($s0)
/* 61140 80060540 4614A482 */  mul.s      $f18, $f20, $f20
/* 61144 80060544 460A4400 */  add.s      $f16, $f8, $f10
/* 61148 80060548 0C01AB7C */  jal        sqrtf
/* 6114C 8006054C 46128300 */   add.s     $f12, $f16, $f18
/* 61150 80060550 C6040000 */  lwc1       $f4, 0x0($s0)
/* 61154 80060554 C6160004 */  lwc1       $f22, 0x4($s0)
/* 61158 80060558 C6140008 */  lwc1       $f20, 0x8($s0)
/* 6115C 8006055C 46002183 */  div.s      $f6, $f4, $f0
/* 61160 80060560 E6060000 */  swc1       $f6, 0x0($s0)
/* 61164 80060564 C6180000 */  lwc1       $f24, 0x0($s0)
/* 61168 80060568 4618C202 */  mul.s      $f8, $f24, $f24
/* 6116C 8006056C 00000000 */  nop
/* 61170 80060570 4616B282 */  mul.s      $f10, $f22, $f22
/* 61174 80060574 460A4400 */  add.s      $f16, $f8, $f10
/* 61178 80060578 4614A482 */  mul.s      $f18, $f20, $f20
/* 6117C 8006057C 0C01AB7C */  jal        sqrtf
/* 61180 80060580 46128300 */   add.s     $f12, $f16, $f18
/* 61184 80060584 C6040004 */  lwc1       $f4, 0x4($s0)
/* 61188 80060588 C6180000 */  lwc1       $f24, 0x0($s0)
/* 6118C 8006058C C6140008 */  lwc1       $f20, 0x8($s0)
/* 61190 80060590 46002183 */  div.s      $f6, $f4, $f0
/* 61194 80060594 4618C202 */  mul.s      $f8, $f24, $f24
/* 61198 80060598 E6060004 */  swc1       $f6, 0x4($s0)
/* 6119C 8006059C C6160004 */  lwc1       $f22, 0x4($s0)
/* 611A0 800605A0 4616B282 */  mul.s      $f10, $f22, $f22
/* 611A4 800605A4 460A4400 */  add.s      $f16, $f8, $f10
/* 611A8 800605A8 4614A482 */  mul.s      $f18, $f20, $f20
/* 611AC 800605AC 0C01AB7C */  jal        sqrtf
/* 611B0 800605B0 46128300 */   add.s     $f12, $f16, $f18
/* 611B4 800605B4 C6040008 */  lwc1       $f4, 0x8($s0)
/* 611B8 800605B8 26730001 */  addiu      $s3, $s3, 0x1
/* 611BC 800605BC 46002183 */  div.s      $f6, $f4, $f0
/* 611C0 800605C0 E6060008 */  swc1       $f6, 0x8($s0)
.L800605C4:
/* 611C4 800605C4 12600003 */  beqz       $s3, .L800605D4
/* 611C8 800605C8 D7B40010 */   ldc1      $f20, 0x10($sp)
/* 611CC 800605CC 10000002 */  b          .L800605D8
/* 611D0 800605D0 24020001 */   addiu     $v0, $zero, 0x1
.L800605D4:
/* 611D4 800605D4 00001025 */  or         $v0, $zero, $zero
.L800605D8:
/* 611D8 800605D8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 611DC 800605DC D7B60018 */  ldc1       $f22, 0x18($sp)
/* 611E0 800605E0 D7B80020 */  ldc1       $f24, 0x20($sp)
/* 611E4 800605E4 8FB0002C */  lw         $s0, 0x2C($sp)
/* 611E8 800605E8 8FB10030 */  lw         $s1, 0x30($sp)
/* 611EC 800605EC 8FB20034 */  lw         $s2, 0x34($sp)
/* 611F0 800605F0 8FB30038 */  lw         $s3, 0x38($sp)
/* 611F4 800605F4 03E00008 */  jr         $ra
/* 611F8 800605F8 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_800605FC
/* 611FC 800605FC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 61200 80060600 44818000 */  mtc1       $at, $f16
/* 61204 80060604 C4C80008 */  lwc1       $f8, 0x8($a2)
/* 61208 80060608 C4C40000 */  lwc1       $f4, 0x0($a2)
/* 6120C 8006060C C4CA0004 */  lwc1       $f10, 0x4($a2)
/* 61210 80060610 46104183 */  div.s      $f6, $f8, $f16
/* 61214 80060614 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 61218 80060618 00001025 */  or         $v0, $zero, $zero
/* 6121C 8006061C 46102483 */  div.s      $f18, $f4, $f16
/* 61220 80060620 E7A6004C */  swc1       $f6, 0x4C($sp)
/* 61224 80060624 C4A40000 */  lwc1       $f4, 0x0($a1)
/* 61228 80060628 E7A4002C */  swc1       $f4, 0x2C($sp)
/* 6122C 8006062C C4A80004 */  lwc1       $f8, 0x4($a1)
/* 61230 80060630 E7A80028 */  swc1       $f8, 0x28($sp)
/* 61234 80060634 C4A40008 */  lwc1       $f4, 0x8($a1)
/* 61238 80060638 C7A60028 */  lwc1       $f6, 0x28($sp)
/* 6123C 8006063C E7A40024 */  swc1       $f4, 0x24($sp)
/* 61240 80060640 C7A80024 */  lwc1       $f8, 0x24($sp)
/* 61244 80060644 C7A4004C */  lwc1       $f4, 0x4C($sp)
/* 61248 80060648 46105003 */  div.s      $f0, $f10, $f16
/* 6124C 8006064C C7AA002C */  lwc1       $f10, 0x2C($sp)
/* 61250 80060650 46044380 */  add.s      $f14, $f8, $f4
/* 61254 80060654 C4840000 */  lwc1       $f4, 0x0($a0)
/* 61258 80060658 46125080 */  add.s      $f2, $f10, $f18
/* 6125C 8006065C E7A40020 */  swc1       $f4, 0x20($sp)
/* 61260 80060660 C4840004 */  lwc1       $f4, 0x4($a0)
/* 61264 80060664 E7A4001C */  swc1       $f4, 0x1C($sp)
/* 61268 80060668 C4840008 */  lwc1       $f4, 0x8($a0)
/* 6126C 8006066C E7A60004 */  swc1       $f6, 0x4($sp)
/* 61270 80060670 E7AA0000 */  swc1       $f10, 0x0($sp)
/* 61274 80060674 E7A40018 */  swc1       $f4, 0x18($sp)
/* 61278 80060678 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 6127C 8006067C E7A80008 */  swc1       $f8, 0x8($sp)
/* 61280 80060680 E7A4000C */  swc1       $f4, 0xC($sp)
/* 61284 80060684 46022282 */  mul.s      $f10, $f4, $f2
/* 61288 80060688 46003300 */  add.s      $f12, $f6, $f0
/* 6128C 8006068C C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 61290 80060690 460C3202 */  mul.s      $f8, $f6, $f12
/* 61294 80060694 46085280 */  add.s      $f10, $f10, $f8
/* 61298 80060698 C7A80018 */  lwc1       $f8, 0x18($sp)
/* 6129C 8006069C 460E4102 */  mul.s      $f4, $f8, $f14
/* 612A0 800606A0 46045280 */  add.s      $f10, $f10, $f4
/* 612A4 800606A4 C484000C */  lwc1       $f4, 0xC($a0)
/* 612A8 800606A8 46045280 */  add.s      $f10, $f10, $f4
/* 612AC 800606AC E7AA0034 */  swc1       $f10, 0x34($sp)
/* 612B0 800606B0 C4A4000C */  lwc1       $f4, 0xC($a1)
/* 612B4 800606B4 E7A40014 */  swc1       $f4, 0x14($sp)
/* 612B8 800606B8 C7A40014 */  lwc1       $f4, 0x14($sp)
/* 612BC 800606BC 4604503C */  c.lt.s     $f10, $f4
/* 612C0 800606C0 00000000 */  nop
/* 612C4 800606C4 4500002D */  bc1f       .L8006077C
/* 612C8 800606C8 00000000 */   nop
/* 612CC 800606CC 460A2101 */  sub.s      $f4, $f4, $f10
/* 612D0 800606D0 3C01800A */  lui        $at, %hi(D_80098740)
/* 612D4 800606D4 460022A1 */  cvt.d.s    $f10, $f4
/* 612D8 800606D8 D4248740 */  ldc1       $f4, %lo(D_80098740)($at)
/* 612DC 800606DC 46245280 */  add.d      $f10, $f10, $f4
/* 612E0 800606E0 C7A4000C */  lwc1       $f4, 0xC($sp)
/* 612E4 800606E4 46205020 */  cvt.s.d    $f0, $f10
/* 612E8 800606E8 46002282 */  mul.s      $f10, $f4, $f0
/* 612EC 800606EC 460A1080 */  add.s      $f2, $f2, $f10
/* 612F0 800606F0 46003102 */  mul.s      $f4, $f6, $f0
/* 612F4 800606F4 C7A60000 */  lwc1       $f6, 0x0($sp)
/* 612F8 800606F8 46004282 */  mul.s      $f10, $f8, $f0
/* 612FC 800606FC 46061481 */  sub.s      $f18, $f2, $f6
/* 61300 80060700 46046300 */  add.s      $f12, $f12, $f4
/* 61304 80060704 C7A40004 */  lwc1       $f4, 0x4($sp)
/* 61308 80060708 460A7380 */  add.s      $f14, $f14, $f10
/* 6130C 8006070C C7AA0008 */  lwc1       $f10, 0x8($sp)
/* 61310 80060710 46046201 */  sub.s      $f8, $f12, $f4
/* 61314 80060714 46109102 */  mul.s      $f4, $f18, $f16
/* 61318 80060718 460A7181 */  sub.s      $f6, $f14, $f10
/* 6131C 8006071C E7A80048 */  swc1       $f8, 0x48($sp)
/* 61320 80060720 E7A6004C */  swc1       $f6, 0x4C($sp)
/* 61324 80060724 E4C40000 */  swc1       $f4, 0x0($a2)
/* 61328 80060728 C7A80048 */  lwc1       $f8, 0x48($sp)
/* 6132C 8006072C 46104282 */  mul.s      $f10, $f8, $f16
/* 61330 80060730 E4CA0004 */  swc1       $f10, 0x4($a2)
/* 61334 80060734 C7A6004C */  lwc1       $f6, 0x4C($sp)
/* 61338 80060738 46103102 */  mul.s      $f4, $f6, $f16
/* 6133C 8006073C 10E0000D */  beqz       $a3, .L80060774
/* 61340 80060740 E4C40008 */   swc1      $f4, 0x8($a2)
/* 61344 80060744 C4880000 */  lwc1       $f8, 0x0($a0)
/* 61348 80060748 C4860004 */  lwc1       $f6, 0x4($a0)
/* 6134C 8006074C 46024282 */  mul.s      $f10, $f8, $f2
/* 61350 80060750 00000000 */  nop
/* 61354 80060754 460C3102 */  mul.s      $f4, $f6, $f12
/* 61358 80060758 C4860008 */  lwc1       $f6, 0x8($a0)
/* 6135C 8006075C 46045200 */  add.s      $f8, $f10, $f4
/* 61360 80060760 460E3282 */  mul.s      $f10, $f6, $f14
/* 61364 80060764 C486000C */  lwc1       $f6, 0xC($a0)
/* 61368 80060768 460A4100 */  add.s      $f4, $f8, $f10
/* 6136C 8006076C 46062200 */  add.s      $f8, $f4, $f6
/* 61370 80060770 E4E80000 */  swc1       $f8, 0x0($a3)
.L80060774:
/* 61374 80060774 10000004 */  b          .L80060788
/* 61378 80060778 24020001 */   addiu     $v0, $zero, 0x1
.L8006077C:
/* 6137C 8006077C 10E00002 */  beqz       $a3, .L80060788
/* 61380 80060780 C7AA0034 */   lwc1      $f10, 0x34($sp)
/* 61384 80060784 E4EA0000 */  swc1       $f10, 0x0($a3)
.L80060788:
/* 61388 80060788 03E00008 */  jr         $ra
/* 6138C 8006078C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80060790
/* 61390 80060790 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 61394 80060794 AFBF005C */  sw         $ra, 0x5C($sp)
/* 61398 80060798 AFB40058 */  sw         $s4, 0x58($sp)
/* 6139C 8006079C AFB30054 */  sw         $s3, 0x54($sp)
/* 613A0 800607A0 AFB20050 */  sw         $s2, 0x50($sp)
/* 613A4 800607A4 AFB1004C */  sw         $s1, 0x4C($sp)
/* 613A8 800607A8 AFB00048 */  sw         $s0, 0x48($sp)
/* 613AC 800607AC F7BE0040 */  sdc1       $f30, 0x40($sp)
/* 613B0 800607B0 F7BC0038 */  sdc1       $f28, 0x38($sp)
/* 613B4 800607B4 F7BA0030 */  sdc1       $f26, 0x30($sp)
/* 613B8 800607B8 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 613BC 800607BC F7B60020 */  sdc1       $f22, 0x20($sp)
/* 613C0 800607C0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 613C4 800607C4 8C8E0000 */  lw         $t6, 0x0($a0)
/* 613C8 800607C8 00808825 */  or         $s1, $a0, $zero
/* 613CC 800607CC 00009825 */  or         $s3, $zero, $zero
/* 613D0 800607D0 000EC080 */  sll        $t8, $t6, 2
/* 613D4 800607D4 07030004 */  bgezl      $t8, .L800607E8
/* 613D8 800607D8 4480D000 */   mtc1      $zero, $f26
/* 613DC 800607DC 10000053 */  b          .L8006092C
/* 613E0 800607E0 00001025 */   or        $v0, $zero, $zero
/* 613E4 800607E4 4480D000 */  mtc1       $zero, $f26
.L800607E8:
/* 613E8 800607E8 3C148014 */  lui        $s4, %hi(D_8013FC88)
/* 613EC 800607EC 2694FC88 */  addiu      $s4, $s4, %lo(D_8013FC88)
/* 613F0 800607F0 E63A0284 */  swc1       $f26, 0x284($s1)
/* 613F4 800607F4 E63A0288 */  swc1       $f26, 0x288($s1)
/* 613F8 800607F8 E63A028C */  swc1       $f26, 0x28C($s1)
/* 613FC 800607FC 92990009 */  lbu        $t9, 0x9($s4)
/* 61400 80060800 3C108014 */  lui        $s0, %hi(D_8013FFB0)
/* 61404 80060804 2610FFB0 */  addiu      $s0, $s0, %lo(D_8013FFB0)
/* 61408 80060808 1B200042 */  blez       $t9, .L80060914
/* 6140C 8006080C 00009025 */   or        $s2, $zero, $zero
/* 61410 80060810 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 61414 80060814 4481F800 */  mtc1       $at, $f31
/* 61418 80060818 3C01800A */  lui        $at, %hi(D_80098748)
/* 6141C 8006081C 4480F000 */  mtc1       $zero, $f30
/* 61420 80060820 D43C8748 */  ldc1       $f28, %lo(D_80098748)($at)
.L80060824:
/* 61424 80060824 52300036 */  beql       $s1, $s0, .L80060900
/* 61428 80060828 928B0009 */   lbu       $t3, 0x9($s4)
/* 6142C 8006082C 8E080000 */  lw         $t0, 0x0($s0)
/* 61430 80060830 00085080 */  sll        $t2, $t0, 2
/* 61434 80060834 05420032 */  bltzl      $t2, .L80060900
/* 61438 80060838 928B0009 */   lbu       $t3, 0x9($s4)
/* 6143C 8006083C C6240098 */  lwc1       $f4, 0x98($s1)
/* 61440 80060840 C6060098 */  lwc1       $f6, 0x98($s0)
/* 61444 80060844 C628009C */  lwc1       $f8, 0x9C($s1)
/* 61448 80060848 C60A009C */  lwc1       $f10, 0x9C($s0)
/* 6144C 8006084C 46062501 */  sub.s      $f20, $f4, $f6
/* 61450 80060850 C63000A0 */  lwc1       $f16, 0xA0($s1)
/* 61454 80060854 C61200A0 */  lwc1       $f18, 0xA0($s0)
/* 61458 80060858 460A4581 */  sub.s      $f22, $f8, $f10
/* 6145C 8006085C 4614A102 */  mul.s      $f4, $f20, $f20
/* 61460 80060860 46128601 */  sub.s      $f24, $f16, $f18
/* 61464 80060864 4616B182 */  mul.s      $f6, $f22, $f22
/* 61468 80060868 46062200 */  add.s      $f8, $f4, $f6
/* 6146C 8006086C 4618C282 */  mul.s      $f10, $f24, $f24
/* 61470 80060870 0C01AB7C */  jal        sqrtf
/* 61474 80060874 460A4300 */   add.s     $f12, $f8, $f10
/* 61478 80060878 460000A1 */  cvt.d.s    $f2, $f0
/* 6147C 8006087C 463C103C */  c.lt.d     $f2, $f28
/* 61480 80060880 00000000 */  nop
/* 61484 80060884 4502001E */  bc1fl      .L80060900
/* 61488 80060888 928B0009 */   lbu       $t3, 0x9($s4)
/* 6148C 8006088C 461A0032 */  c.eq.s     $f0, $f26
/* 61490 80060890 26240284 */  addiu      $a0, $s1, 0x284
/* 61494 80060894 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 61498 80060898 4503000B */  bc1tl      .L800608C8
/* 6149C 8006089C 4481B000 */   mtc1      $at, $f22
/* 614A0 800608A0 4622F403 */  div.d      $f16, $f30, $f2
/* 614A4 800608A4 46208320 */  cvt.s.d    $f12, $f16
/* 614A8 800608A8 460CA502 */  mul.s      $f20, $f20, $f12
/* 614AC 800608AC 00000000 */  nop
/* 614B0 800608B0 460CB582 */  mul.s      $f22, $f22, $f12
/* 614B4 800608B4 00000000 */  nop
/* 614B8 800608B8 460CC602 */  mul.s      $f24, $f24, $f12
/* 614BC 800608BC 10000004 */  b          .L800608D0
/* 614C0 800608C0 00000000 */   nop
/* 614C4 800608C4 4481B000 */  mtc1       $at, $f22
.L800608C8:
/* 614C8 800608C8 4600D506 */  mov.s      $f20, $f26
/* 614CC 800608CC 4600D606 */  mov.s      $f24, $f26
.L800608D0:
/* 614D0 800608D0 C4920000 */  lwc1       $f18, 0x0($a0)
/* 614D4 800608D4 C4860004 */  lwc1       $f6, 0x4($a0)
/* 614D8 800608D8 C48A0008 */  lwc1       $f10, 0x8($a0)
/* 614DC 800608DC 46149100 */  add.s      $f4, $f18, $f20
/* 614E0 800608E0 46163200 */  add.s      $f8, $f6, $f22
/* 614E4 800608E4 E4840000 */  swc1       $f4, 0x0($a0)
/* 614E8 800608E8 46185400 */  add.s      $f16, $f10, $f24
/* 614EC 800608EC E4880004 */  swc1       $f8, 0x4($a0)
/* 614F0 800608F0 0C009090 */  jal        func_80024240
/* 614F4 800608F4 E4900008 */   swc1      $f16, 0x8($a0)
/* 614F8 800608F8 26730001 */  addiu      $s3, $s3, 0x1
/* 614FC 800608FC 928B0009 */  lbu        $t3, 0x9($s4)
.L80060900:
/* 61500 80060900 26520001 */  addiu      $s2, $s2, 0x1
/* 61504 80060904 261020A0 */  addiu      $s0, $s0, 0x20A0
/* 61508 80060908 024B082A */  slt        $at, $s2, $t3
/* 6150C 8006090C 1420FFC5 */  bnez       $at, .L80060824
/* 61510 80060910 00000000 */   nop
.L80060914:
/* 61514 80060914 12600005 */  beqz       $s3, .L8006092C
/* 61518 80060918 00001025 */   or        $v0, $zero, $zero
/* 6151C 8006091C 0C017DE4 */  jal        func_8005F790
/* 61520 80060920 C62C0030 */   lwc1      $f12, 0x30($s1)
/* 61524 80060924 10000002 */  b          .L80060930
/* 61528 80060928 8FBF005C */   lw        $ra, 0x5C($sp)
.L8006092C:
/* 6152C 8006092C 8FBF005C */  lw         $ra, 0x5C($sp)
.L80060930:
/* 61530 80060930 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 61534 80060934 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 61538 80060938 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 6153C 8006093C D7BA0030 */  ldc1       $f26, 0x30($sp)
/* 61540 80060940 D7BC0038 */  ldc1       $f28, 0x38($sp)
/* 61544 80060944 D7BE0040 */  ldc1       $f30, 0x40($sp)
/* 61548 80060948 8FB00048 */  lw         $s0, 0x48($sp)
/* 6154C 8006094C 8FB1004C */  lw         $s1, 0x4C($sp)
/* 61550 80060950 8FB20050 */  lw         $s2, 0x50($sp)
/* 61554 80060954 8FB30054 */  lw         $s3, 0x54($sp)
/* 61558 80060958 8FB40058 */  lw         $s4, 0x58($sp)
/* 6155C 8006095C 03E00008 */  jr         $ra
/* 61560 80060960 27BD0060 */   addiu     $sp, $sp, 0x60
/* 61564 80060964 00000000 */  nop
/* 61568 80060968 00000000 */  nop
/* 6156C 8006096C 00000000 */  nop
