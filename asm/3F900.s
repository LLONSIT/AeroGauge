.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8003ED00
/* 3F900 8003ED00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F904 8003ED04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F908 8003ED08 AFA40028 */  sw         $a0, 0x28($sp)
/* 3F90C 8003ED0C AFA5002C */  sw         $a1, 0x2C($sp)
/* 3F910 8003ED10 AFA60030 */  sw         $a2, 0x30($sp)
/* 3F914 8003ED14 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3F918 8003ED18 AFAF0024 */  sw         $t7, 0x24($sp)
/* 3F91C 8003ED1C 8CB90000 */  lw         $t9, 0x0($a1)
/* 3F920 8003ED20 AFB90020 */  sw         $t9, 0x20($sp)
/* 3F924 8003ED24 8CC90000 */  lw         $t1, 0x0($a2)
/* 3F928 8003ED28 0C015E4C */  jal        func_80057930
/* 3F92C 8003ED2C AFA9001C */   sw        $t1, 0x1C($sp)
/* 3F930 8003ED30 0C015C80 */  jal        func_80057200
/* 3F934 8003ED34 00000000 */   nop
/* 3F938 8003ED38 0C015CC2 */  jal        func_80057308
/* 3F93C 8003ED3C 00000000 */   nop
/* 3F940 8003ED40 0C0126E8 */  jal        func_80049BA0
/* 3F944 8003ED44 27A40024 */   addiu     $a0, $sp, 0x24
/* 3F948 8003ED48 0C0128D9 */  jal        func_8004A364
/* 3F94C 8003ED4C 27A40024 */   addiu     $a0, $sp, 0x24
/* 3F950 8003ED50 3C0A8009 */  lui        $t2, %hi(D_8008F290)
/* 3F954 8003ED54 8D4AF290 */  lw         $t2, %lo(D_8008F290)($t2)
/* 3F958 8003ED58 27A40024 */  addiu      $a0, $sp, 0x24
/* 3F95C 8003ED5C 2D410006 */  sltiu      $at, $t2, 0x6
/* 3F960 8003ED60 10200017 */  beqz       $at, .L8003EDC0
/* 3F964 8003ED64 000A5080 */   sll       $t2, $t2, 2
/* 3F968 8003ED68 3C018009 */  lui        $at, %hi(jtbl_80097668_main)
/* 3F96C 8003ED6C 002A0821 */  addu       $at, $at, $t2
/* 3F970 8003ED70 8C2A7668 */  lw         $t2, %lo(jtbl_80097668_main)($at)
/* 3F974 8003ED74 01400008 */  jr         $t2
/* 3F978 8003ED78 00000000 */   nop
glabel L8003ED7C
/* 3F97C 8003ED7C 27A50020 */  addiu      $a1, $sp, 0x20
/* 3F980 8003ED80 0C00FB7F */  jal        func_8003EDFC
/* 3F984 8003ED84 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3F988 8003ED88 1000000D */  b          .L8003EDC0
/* 3F98C 8003ED8C 00000000 */   nop
glabel L8003ED90
/* 3F990 8003ED90 27A50020 */  addiu      $a1, $sp, 0x20
/* 3F994 8003ED94 0C00FB7F */  jal        func_8003EDFC
/* 3F998 8003ED98 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3F99C 8003ED9C 10000008 */  b          .L8003EDC0
/* 3F9A0 8003EDA0 00000000 */   nop
glabel L8003EDA4
/* 3F9A4 8003EDA4 27A50020 */  addiu      $a1, $sp, 0x20
/* 3F9A8 8003EDA8 0C0145C8 */  jal        func_80051720
/* 3F9AC 8003EDAC 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3F9B0 8003EDB0 10000003 */  b          .L8003EDC0
/* 3F9B4 8003EDB4 00000000 */   nop
glabel L8003EDB8
/* 3F9B8 8003EDB8 0C012A24 */  jal        func_8004A890
/* 3F9BC 8003EDBC 00000000 */   nop
.L8003EDC0:
/* 3F9C0 8003EDC0 0C015EA8 */  jal        func_80057AA0
/* 3F9C4 8003EDC4 00000000 */   nop
/* 3F9C8 8003EDC8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 3F9CC 8003EDCC 8FAC0028 */  lw         $t4, 0x28($sp)
/* 3F9D0 8003EDD0 AD8B0000 */  sw         $t3, 0x0($t4)
/* 3F9D4 8003EDD4 8FAE002C */  lw         $t6, 0x2C($sp)
/* 3F9D8 8003EDD8 8FAD0020 */  lw         $t5, 0x20($sp)
/* 3F9DC 8003EDDC ADCD0000 */  sw         $t5, 0x0($t6)
/* 3F9E0 8003EDE0 8FB80030 */  lw         $t8, 0x30($sp)
/* 3F9E4 8003EDE4 8FAF001C */  lw         $t7, 0x1C($sp)
/* 3F9E8 8003EDE8 AF0F0000 */  sw         $t7, 0x0($t8)
/* 3F9EC 8003EDEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F9F0 8003EDF0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3F9F4 8003EDF4 03E00008 */  jr         $ra
/* 3F9F8 8003EDF8 00000000 */   nop

glabel func_8003EDFC
/* 3F9FC 8003EDFC 3C0E8009 */  lui        $t6, %hi(D_8008EF00)
/* 3FA00 8003EE00 91CEEF00 */  lbu        $t6, %lo(D_8008EF00)($t6)
/* 3FA04 8003EE04 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FA08 8003EE08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FA0C 8003EE0C AFA40028 */  sw         $a0, 0x28($sp)
/* 3FA10 8003EE10 AFA5002C */  sw         $a1, 0x2C($sp)
/* 3FA14 8003EE14 11C00015 */  beqz       $t6, .L8003EE6C
/* 3FA18 8003EE18 AFA60030 */   sw        $a2, 0x30($sp)
/* 3FA1C 8003EE1C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 3FA20 8003EE20 44810000 */  mtc1       $at, $f0
/* 3FA24 8003EE24 3C028011 */  lui        $v0, %hi(D_80109C28)
/* 3FA28 8003EE28 24036E14 */  addiu      $v1, $zero, 0x6E14
/* 3FA2C 8003EE2C 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 3FA30 8003EE30 24429C28 */  addiu      $v0, $v0, %lo(D_80109C28)
/* 3FA34 8003EE34 A4239BDC */  sh         $v1, %lo(D_80109BDC)($at)
/* 3FA38 8003EE38 A443006C */  sh         $v1, 0x6C($v0)
/* 3FA3C 8003EE3C A4430084 */  sh         $v1, 0x84($v0)
/* 3FA40 8003EE40 24040013 */  addiu      $a0, $zero, 0x13
/* 3FA44 8003EE44 00002825 */  or         $a1, $zero, $zero
/* 3FA48 8003EE48 E4400074 */  swc1       $f0, 0x74($v0)
/* 3FA4C 8003EE4C 0C000170 */  jal        func_800005C0
/* 3FA50 8003EE50 E440008C */   swc1      $f0, 0x8C($v0)
/* 3FA54 8003EE54 3C018009 */  lui        $at, %hi(D_8008F294)
/* 3FA58 8003EE58 AC20F294 */  sw         $zero, %lo(D_8008F294)($at)
/* 3FA5C 8003EE5C 3C018009 */  lui        $at, %hi(D_8008EE9C)
/* 3FA60 8003EE60 AC20EE9C */  sw         $zero, %lo(D_8008EE9C)($at)
/* 3FA64 8003EE64 3C018009 */  lui        $at, %hi(D_8008EF00)
/* 3FA68 8003EE68 A020EF00 */  sb         $zero, %lo(D_8008EF00)($at)
.L8003EE6C:
/* 3FA6C 8003EE6C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3FA70 8003EE70 8FB9002C */  lw         $t9, 0x2C($sp)
/* 3FA74 8003EE74 8FA90030 */  lw         $t1, 0x30($sp)
/* 3FA78 8003EE78 8DF80000 */  lw         $t8, 0x0($t7)
/* 3FA7C 8003EE7C 3C0B8009 */  lui        $t3, %hi(D_8008F294)
/* 3FA80 8003EE80 8D6BF294 */  lw         $t3, %lo(D_8008F294)($t3)
/* 3FA84 8003EE84 AFB80024 */  sw         $t8, 0x24($sp)
/* 3FA88 8003EE88 8F280000 */  lw         $t0, 0x0($t9)
/* 3FA8C 8003EE8C 2D610006 */  sltiu      $at, $t3, 0x6
/* 3FA90 8003EE90 000B5880 */  sll        $t3, $t3, 2
/* 3FA94 8003EE94 AFA80020 */  sw         $t0, 0x20($sp)
/* 3FA98 8003EE98 8D2A0000 */  lw         $t2, 0x0($t1)
/* 3FA9C 8003EE9C 10200026 */  beqz       $at, .L8003EF38
/* 3FAA0 8003EEA0 AFAA001C */   sw        $t2, 0x1C($sp)
/* 3FAA4 8003EEA4 3C018009 */  lui        $at, %hi(jtbl_80097680_main)
/* 3FAA8 8003EEA8 002B0821 */  addu       $at, $at, $t3
/* 3FAAC 8003EEAC 8C2B7680 */  lw         $t3, %lo(jtbl_80097680_main)($at)
/* 3FAB0 8003EEB0 01600008 */  jr         $t3
/* 3FAB4 8003EEB4 00000000 */   nop
glabel L8003EEB8
/* 3FAB8 8003EEB8 3C0C8009 */  lui        $t4, %hi(D_8008F290)
/* 3FABC 8003EEBC 8D8CF290 */  lw         $t4, %lo(D_8008F290)($t4)
/* 3FAC0 8003EEC0 24010003 */  addiu      $at, $zero, 0x3
/* 3FAC4 8003EEC4 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FAC8 8003EEC8 15810007 */  bne        $t4, $at, .L8003EEE8
/* 3FACC 8003EECC 27A50020 */   addiu     $a1, $sp, 0x20
/* 3FAD0 8003EED0 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FAD4 8003EED4 27A50020 */  addiu      $a1, $sp, 0x20
/* 3FAD8 8003EED8 0C010A65 */  jal        func_80042994
/* 3FADC 8003EEDC 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3FAE0 8003EEE0 10000016 */  b          .L8003EF3C
/* 3FAE4 8003EEE4 8FAD0024 */   lw        $t5, 0x24($sp)
.L8003EEE8:
/* 3FAE8 8003EEE8 0C00FD2A */  jal        func_8003F4A8
/* 3FAEC 8003EEEC 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3FAF0 8003EEF0 10000012 */  b          .L8003EF3C
/* 3FAF4 8003EEF4 8FAD0024 */   lw        $t5, 0x24($sp)
glabel L8003EEF8
/* 3FAF8 8003EEF8 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FAFC 8003EEFC 27A50020 */  addiu      $a1, $sp, 0x20
/* 3FB00 8003EF00 0C011938 */  jal        func_800464E0
/* 3FB04 8003EF04 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3FB08 8003EF08 1000000C */  b          .L8003EF3C
/* 3FB0C 8003EF0C 8FAD0024 */   lw        $t5, 0x24($sp)
glabel L8003EF10
/* 3FB10 8003EF10 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FB14 8003EF14 27A50020 */  addiu      $a1, $sp, 0x20
/* 3FB18 8003EF18 0C00CAEC */  jal        func_80032BB0
/* 3FB1C 8003EF1C 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3FB20 8003EF20 10000006 */  b          .L8003EF3C
/* 3FB24 8003EF24 8FAD0024 */   lw        $t5, 0x24($sp)
glabel L8003EF28
/* 3FB28 8003EF28 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FB2C 8003EF2C 27A50020 */  addiu      $a1, $sp, 0x20
/* 3FB30 8003EF30 0C01074B */  jal        func_80041D2C
/* 3FB34 8003EF34 27A6001C */   addiu     $a2, $sp, 0x1C
.L8003EF38:
/* 3FB38 8003EF38 8FAD0024 */  lw         $t5, 0x24($sp)
.L8003EF3C:
/* 3FB3C 8003EF3C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3FB40 8003EF40 3C098009 */  lui        $t1, %hi(D_8008EE9C)
/* 3FB44 8003EF44 240A0001 */  addiu      $t2, $zero, 0x1
/* 3FB48 8003EF48 ADCD0000 */  sw         $t5, 0x0($t6)
/* 3FB4C 8003EF4C 8FB8002C */  lw         $t8, 0x2C($sp)
/* 3FB50 8003EF50 8FAF0020 */  lw         $t7, 0x20($sp)
/* 3FB54 8003EF54 3C018009 */  lui        $at, %hi(D_8008EF00)
/* 3FB58 8003EF58 AF0F0000 */  sw         $t7, 0x0($t8)
/* 3FB5C 8003EF5C 8FA80030 */  lw         $t0, 0x30($sp)
/* 3FB60 8003EF60 8FB9001C */  lw         $t9, 0x1C($sp)
/* 3FB64 8003EF64 AD190000 */  sw         $t9, 0x0($t0)
/* 3FB68 8003EF68 8D29EE9C */  lw         $t1, %lo(D_8008EE9C)($t1)
/* 3FB6C 8003EF6C 51200003 */  beql       $t1, $zero, .L8003EF7C
/* 3FB70 8003EF70 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3FB74 8003EF74 A02AEF00 */  sb         $t2, %lo(D_8008EF00)($at)
/* 3FB78 8003EF78 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003EF7C:
/* 3FB7C 8003EF7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3FB80 8003EF80 03E00008 */  jr         $ra
/* 3FB84 8003EF84 00000000 */   nop

glabel func_8003EF88
/* 3FB88 8003EF88 3C0E8009 */  lui        $t6, %hi(D_8008F290)
/* 3FB8C 8003EF8C 8DCEF290 */  lw         $t6, %lo(D_8008F290)($t6)
/* 3FB90 8003EF90 3C02801A */  lui        $v0, %hi(D_8019E5E0)
/* 3FB94 8003EF94 2442E5E0 */  addiu      $v0, $v0, %lo(D_8019E5E0)
/* 3FB98 8003EF98 15C00004 */  bnez       $t6, .L8003EFAC
/* 3FB9C 8003EF9C 3C04801A */   lui       $a0, %hi(D_8019E6D8)
/* 3FBA0 8003EFA0 240F0006 */  addiu      $t7, $zero, 0x6
/* 3FBA4 8003EFA4 3C018014 */  lui        $at, %hi(D_8013FF9C)
/* 3FBA8 8003EFA8 A02FFF9C */  sb         $t7, %lo(D_8013FF9C)($at)
.L8003EFAC:
/* 3FBAC 8003EFAC 3C01C2C8 */  lui        $at, (0xC2C80000 >> 16)
/* 3FBB0 8003EFB0 44811000 */  mtc1       $at, $f2
/* 3FBB4 8003EFB4 3C01801A */  lui        $at, %hi(D_8019E6A8)
/* 3FBB8 8003EFB8 A020E6A8 */  sb         $zero, %lo(D_8019E6A8)($at)
/* 3FBBC 8003EFBC 3C01801A */  lui        $at, %hi(D_8019E0F6)
/* 3FBC0 8003EFC0 A020E0F6 */  sb         $zero, %lo(D_8019E0F6)($at)
/* 3FBC4 8003EFC4 2418004B */  addiu      $t8, $zero, 0x4B
/* 3FBC8 8003EFC8 2419002A */  addiu      $t9, $zero, 0x2A
/* 3FBCC 8003EFCC 3C0E803A */  lui        $t6, %hi(D_803993F0)
/* 3FBD0 8003EFD0 25CE93F0 */  addiu      $t6, $t6, %lo(D_803993F0)
/* 3FBD4 8003EFD4 A459000A */  sh         $t9, 0xA($v0)
/* 3FBD8 8003EFD8 A4580008 */  sh         $t8, 0x8($v0)
/* 3FBDC 8003EFDC AC4E000C */  sw         $t6, 0xC($v0)
/* 3FBE0 8003EFE0 3C0F803A */  lui        $t7, %hi(D_80399F98)
/* 3FBE4 8003EFE4 24180090 */  addiu      $t8, $zero, 0x90
/* 3FBE8 8003EFE8 2419000E */  addiu      $t9, $zero, 0xE
/* 3FBEC 8003EFEC 25EF9F98 */  addiu      $t7, $t7, %lo(D_80399F98)
/* 3FBF0 8003EFF0 A4590016 */  sh         $t9, 0x16($v0)
/* 3FBF4 8003EFF4 A4580014 */  sh         $t8, 0x14($v0)
/* 3FBF8 8003EFF8 240E008C */  addiu      $t6, $zero, 0x8C
/* 3FBFC 8003EFFC AC4F0010 */  sw         $t7, 0x10($v0)
/* 3FC00 8003F000 A44E0018 */  sh         $t6, 0x18($v0)
/* 3FC04 8003F004 2418001A */  addiu      $t8, $zero, 0x1A
/* 3FC08 8003F008 2419004A */  addiu      $t9, $zero, 0x4A
/* 3FC0C 8003F00C A459001E */  sh         $t9, 0x1E($v0)
/* 3FC10 8003F010 A458001C */  sh         $t8, 0x1C($v0)
/* 3FC14 8003F014 3C0E803A */  lui        $t6, %hi(D_8039A010)
/* 3FC18 8003F018 240F000E */  addiu      $t7, $zero, 0xE
/* 3FC1C 8003F01C A44F001A */  sh         $t7, 0x1A($v0)
/* 3FC20 8003F020 25CEA010 */  addiu      $t6, $t6, %lo(D_8039A010)
/* 3FC24 8003F024 2418004E */  addiu      $t8, $zero, 0x4E
/* 3FC28 8003F028 2419004E */  addiu      $t9, $zero, 0x4E
/* 3FC2C 8003F02C AC4E0020 */  sw         $t6, 0x20($v0)
/* 3FC30 8003F030 3C0F803A */  lui        $t7, %hi(D_8039A7F8)
/* 3FC34 8003F034 A459002E */  sh         $t9, 0x2E($v0)
/* 3FC38 8003F038 A458002A */  sh         $t8, 0x2A($v0)
/* 3FC3C 8003F03C 25EFA7F8 */  addiu      $t7, $t7, %lo(D_8039A7F8)
/* 3FC40 8003F040 3C18803A */  lui        $t8, %hi(D_803A2968)
/* 3FC44 8003F044 3C19803A */  lui        $t9, %hi(D_803A3810)
/* 3FC48 8003F048 240E001A */  addiu      $t6, $zero, 0x1A
/* 3FC4C 8003F04C AC4F0024 */  sw         $t7, 0x24($v0)
/* 3FC50 8003F050 A44E0030 */  sh         $t6, 0x30($v0)
/* 3FC54 8003F054 27393810 */  addiu      $t9, $t9, %lo(D_803A3810)
/* 3FC58 8003F058 27182968 */  addiu      $t8, $t8, %lo(D_803A2968)
/* 3FC5C 8003F05C AC580034 */  sw         $t8, 0x34($v0)
/* 3FC60 8003F060 AC590038 */  sw         $t9, 0x38($v0)
/* 3FC64 8003F064 240F006F */  addiu      $t7, $zero, 0x6F
/* 3FC68 8003F068 240E0085 */  addiu      $t6, $zero, 0x85
/* 3FC6C 8003F06C A44F0032 */  sh         $t7, 0x32($v0)
/* 3FC70 8003F070 A44E0044 */  sh         $t6, 0x44($v0)
/* 3FC74 8003F074 3C19803A */  lui        $t9, %hi(D_8039E7A8)
/* 3FC78 8003F078 3C18803A */  lui        $t8, %hi(D_8039E688)
/* 3FC7C 8003F07C 2718E688 */  addiu      $t8, $t8, %lo(D_8039E688)
/* 3FC80 8003F080 2739E7A8 */  addiu      $t9, $t9, %lo(D_8039E7A8)
/* 3FC84 8003F084 240F0077 */  addiu      $t7, $zero, 0x77
/* 3FC88 8003F088 240E0010 */  addiu      $t6, $zero, 0x10
/* 3FC8C 8003F08C A44F0046 */  sh         $t7, 0x46($v0)
/* 3FC90 8003F090 AC59004C */  sw         $t9, 0x4C($v0)
/* 3FC94 8003F094 AC580048 */  sw         $t8, 0x48($v0)
/* 3FC98 8003F098 A44E0050 */  sh         $t6, 0x50($v0)
/* 3FC9C 8003F09C 3C0E803A */  lui        $t6, %hi(D_8039E7D0)
/* 3FCA0 8003F0A0 2418007A */  addiu      $t8, $zero, 0x7A
/* 3FCA4 8003F0A4 24190077 */  addiu      $t9, $zero, 0x77
/* 3FCA8 8003F0A8 240F0010 */  addiu      $t7, $zero, 0x10
/* 3FCAC 8003F0AC A44F0054 */  sh         $t7, 0x54($v0)
/* 3FCB0 8003F0B0 A459005A */  sh         $t9, 0x5A($v0)
/* 3FCB4 8003F0B4 A4580058 */  sh         $t8, 0x58($v0)
/* 3FCB8 8003F0B8 25CEE7D0 */  addiu      $t6, $t6, %lo(D_8039E7D0)
/* 3FCBC 8003F0BC AC4E005C */  sw         $t6, 0x5C($v0)
/* 3FCC0 8003F0C0 3C0F803A */  lui        $t7, %hi(D_8039E810)
/* 3FCC4 8003F0C4 2418000A */  addiu      $t8, $zero, 0xA
/* 3FCC8 8003F0C8 2419000A */  addiu      $t9, $zero, 0xA
/* 3FCCC 8003F0CC 25EFE810 */  addiu      $t7, $t7, %lo(D_8039E810)
/* 3FCD0 8003F0D0 A459006A */  sh         $t9, 0x6A($v0)
/* 3FCD4 8003F0D4 A4580066 */  sh         $t8, 0x66($v0)
/* 3FCD8 8003F0D8 240E00DA */  addiu      $t6, $zero, 0xDA
/* 3FCDC 8003F0DC AC4F0060 */  sw         $t7, 0x60($v0)
/* 3FCE0 8003F0E0 A44E006C */  sh         $t6, 0x6C($v0)
/* 3FCE4 8003F0E4 3C188039 */  lui        $t8, %hi(D_80395F10)
/* 3FCE8 8003F0E8 3C198039 */  lui        $t9, %hi(D_803960A8)
/* 3FCEC 8003F0EC 273960A8 */  addiu      $t9, $t9, %lo(D_803960A8)
/* 3FCF0 8003F0F0 27185F10 */  addiu      $t8, $t8, %lo(D_80395F10)
/* 3FCF4 8003F0F4 240F0074 */  addiu      $t7, $zero, 0x74
/* 3FCF8 8003F0F8 240E000D */  addiu      $t6, $zero, 0xD
/* 3FCFC 8003F0FC A44F006E */  sh         $t7, 0x6E($v0)
/* 3FD00 8003F100 AC580070 */  sw         $t8, 0x70($v0)
/* 3FD04 8003F104 AC590074 */  sw         $t9, 0x74($v0)
/* 3FD08 8003F108 A44E007A */  sh         $t6, 0x7A($v0)
/* 3FD0C 8003F10C 3C0E803A */  lui        $t6, %hi(D_803A0AA8)
/* 3FD10 8003F110 3C19803A */  lui        $t9, %hi(D_803A0900)
/* 3FD14 8003F114 24180081 */  addiu      $t8, $zero, 0x81
/* 3FD18 8003F118 240F000D */  addiu      $t7, $zero, 0xD
/* 3FD1C 8003F11C A44F007E */  sh         $t7, 0x7E($v0)
/* 3FD20 8003F120 A4580082 */  sh         $t8, 0x82($v0)
/* 3FD24 8003F124 27390900 */  addiu      $t9, $t9, %lo(D_803A0900)
/* 3FD28 8003F128 25CE0AA8 */  addiu      $t6, $t6, %lo(D_803A0AA8)
/* 3FD2C 8003F12C AC4E0088 */  sw         $t6, 0x88($v0)
/* 3FD30 8003F130 AC590084 */  sw         $t9, 0x84($v0)
/* 3FD34 8003F134 24180032 */  addiu      $t8, $zero, 0x32
/* 3FD38 8003F138 240F0080 */  addiu      $t7, $zero, 0x80
/* 3FD3C 8003F13C A44F008C */  sh         $t7, 0x8C($v0)
/* 3FD40 8003F140 A458008E */  sh         $t8, 0x8E($v0)
/* 3FD44 8003F144 24190032 */  addiu      $t9, $zero, 0x32
/* 3FD48 8003F148 240E00B0 */  addiu      $t6, $zero, 0xB0
/* 3FD4C 8003F14C A44E0094 */  sh         $t6, 0x94($v0)
/* 3FD50 8003F150 A4590092 */  sh         $t9, 0x92($v0)
/* 3FD54 8003F154 3C18803A */  lui        $t8, %hi(D_803A08E8)
/* 3FD58 8003F158 3C0F803A */  lui        $t7, %hi(D_8039FC60)
/* 3FD5C 8003F15C 25EFFC60 */  addiu      $t7, $t7, %lo(D_8039FC60)
/* 3FD60 8003F160 271808E8 */  addiu      $t8, $t8, %lo(D_803A08E8)
/* 3FD64 8003F164 2419000C */  addiu      $t9, $zero, 0xC
/* 3FD68 8003F168 240E000C */  addiu      $t6, $zero, 0xC
/* 3FD6C 8003F16C AC58009C */  sw         $t8, 0x9C($v0)
/* 3FD70 8003F170 AC4F0098 */  sw         $t7, 0x98($v0)
/* 3FD74 8003F174 A44E00A6 */  sh         $t6, 0xA6($v0)
/* 3FD78 8003F178 A45900A2 */  sh         $t9, 0xA2($v0)
/* 3FD7C 8003F17C 3C198039 */  lui        $t9, %hi(D_80395EE8)
/* 3FD80 8003F180 240F00B2 */  addiu      $t7, $zero, 0xB2
/* 3FD84 8003F184 3C188039 */  lui        $t8, %hi(D_80395CA0)
/* 3FD88 8003F188 240E0004 */  addiu      $t6, $zero, 0x4
/* 3FD8C 8003F18C 24050040 */  addiu      $a1, $zero, 0x40
/* 3FD90 8003F190 3C09801A */  lui        $t1, %hi(D_8019EDDC)
/* 3FD94 8003F194 3C0A801A */  lui        $t2, %hi(D_8019EDE8)
/* 3FD98 8003F198 27185CA0 */  addiu      $t8, $t8, %lo(D_80395CA0)
/* 3FD9C 8003F19C A44F00AA */  sh         $t7, 0xAA($v0)
/* 3FDA0 8003F1A0 27395EE8 */  addiu      $t9, $t9, %lo(D_80395EE8)
/* 3FDA4 8003F1A4 A44E00B6 */  sh         $t6, 0xB6($v0)
/* 3FDA8 8003F1A8 254AEDE8 */  addiu      $t2, $t2, %lo(D_8019EDE8)
/* 3FDAC 8003F1AC 2529EDDC */  addiu      $t1, $t1, %lo(D_8019EDDC)
/* 3FDB0 8003F1B0 24060060 */  addiu      $a2, $zero, 0x60
/* 3FDB4 8003F1B4 24070050 */  addiu      $a3, $zero, 0x50
/* 3FDB8 8003F1B8 24080007 */  addiu      $t0, $zero, 0x7
/* 3FDBC 8003F1BC AC5900B0 */  sw         $t9, 0xB0($v0)
/* 3FDC0 8003F1C0 AC5800AC */  sw         $t8, 0xAC($v0)
/* 3FDC4 8003F1C4 3C0E803A */  lui        $t6, %hi(D_80399310)
/* 3FDC8 8003F1C8 240F0004 */  addiu      $t7, $zero, 0x4
/* 3FDCC 8003F1CC 240B0080 */  addiu      $t3, $zero, 0x80
/* 3FDD0 8003F1D0 A44F00BA */  sh         $t7, 0xBA($v0)
/* 3FDD4 8003F1D4 25CE9310 */  addiu      $t6, $t6, %lo(D_80399310)
/* 3FDD8 8003F1D8 24180082 */  addiu      $t8, $zero, 0x82
/* 3FDDC 8003F1DC 241900AC */  addiu      $t9, $zero, 0xAC
/* 3FDE0 8003F1E0 240C001F */  addiu      $t4, $zero, 0x1F
/* 3FDE4 8003F1E4 240D0030 */  addiu      $t5, $zero, 0x30
/* 3FDE8 8003F1E8 A45900BE */  sh         $t9, 0xBE($v0)
/* 3FDEC 8003F1EC A45800BC */  sh         $t8, 0xBC($v0)
/* 3FDF0 8003F1F0 AC4E00C0 */  sw         $t6, 0xC0($v0)
/* 3FDF4 8003F1F4 3C0F803A */  lui        $t7, %hi(D_803993D8)
/* 3FDF8 8003F1F8 25EF93D8 */  addiu      $t7, $t7, %lo(D_803993D8)
/* 3FDFC 8003F1FC 241800FF */  addiu      $t8, $zero, 0xFF
/* 3FE00 8003F200 240E00EF */  addiu      $t6, $zero, 0xEF
/* 3FE04 8003F204 2419013F */  addiu      $t9, $zero, 0x13F
/* 3FE08 8003F208 A44D0004 */  sh         $t5, 0x4($v0)
/* 3FE0C 8003F20C A44C0002 */  sh         $t4, 0x2($v0)
/* 3FE10 8003F210 A44C0006 */  sh         $t4, 0x6($v0)
/* 3FE14 8003F214 A4460000 */  sh         $a2, 0x0($v0)
/* 3FE18 8003F218 A44D002C */  sh         $t5, 0x2C($v0)
/* 3FE1C 8003F21C A4460028 */  sh         $a2, 0x28($v0)
/* 3FE20 8003F220 A448003E */  sh         $t0, 0x3E($v0)
/* 3FE24 8003F224 A4480042 */  sh         $t0, 0x42($v0)
/* 3FE28 8003F228 A447003C */  sh         $a3, 0x3C($v0)
/* 3FE2C 8003F22C A4470040 */  sh         $a3, 0x40($v0)
/* 3FE30 8003F230 A4480052 */  sh         $t0, 0x52($v0)
/* 3FE34 8003F234 A4480056 */  sh         $t0, 0x56($v0)
/* 3FE38 8003F238 A4470064 */  sh         $a3, 0x64($v0)
/* 3FE3C 8003F23C A4470068 */  sh         $a3, 0x68($v0)
/* 3FE40 8003F240 A44B0080 */  sh         $t3, 0x80($v0)
/* 3FE44 8003F244 A4450078 */  sh         $a1, 0x78($v0)
/* 3FE48 8003F248 A445007C */  sh         $a1, 0x7C($v0)
/* 3FE4C 8003F24C A44B0096 */  sh         $t3, 0x96($v0)
/* 3FE50 8003F250 A4450090 */  sh         $a1, 0x90($v0)
/* 3FE54 8003F254 A44B00A8 */  sh         $t3, 0xA8($v0)
/* 3FE58 8003F258 A44600A0 */  sh         $a2, 0xA0($v0)
/* 3FE5C 8003F25C A44600A4 */  sh         $a2, 0xA4($v0)
/* 3FE60 8003F260 AC4F00C4 */  sw         $t7, 0xC4($v0)
/* 3FE64 8003F264 A44500B4 */  sh         $a1, 0xB4($v0)
/* 3FE68 8003F268 A44500B8 */  sh         $a1, 0xB8($v0)
/* 3FE6C 8003F26C A1380003 */  sb         $t8, 0x3($t1)
/* 3FE70 8003F270 A1200000 */  sb         $zero, 0x0($t1)
/* 3FE74 8003F274 A1200001 */  sb         $zero, 0x1($t1)
/* 3FE78 8003F278 A1200002 */  sb         $zero, 0x2($t1)
/* 3FE7C 8003F27C A5590004 */  sh         $t9, 0x4($t2)
/* 3FE80 8003F280 A54E0006 */  sh         $t6, 0x6($t2)
/* 3FE84 8003F284 A5400000 */  sh         $zero, 0x0($t2)
/* 3FE88 8003F288 A5400002 */  sh         $zero, 0x2($t2)
/* 3FE8C 8003F28C 3C01801A */  lui        $at, %hi(D_8019E6AC)
/* 3FE90 8003F290 AC20E6AC */  sw         $zero, %lo(D_8019E6AC)($at)
/* 3FE94 8003F294 2484E6D8 */  addiu      $a0, $a0, %lo(D_8019E6D8)
/* 3FE98 8003F298 3C014170 */  lui        $at, (0x41700000 >> 16)
/* 3FE9C 8003F29C 44812000 */  mtc1       $at, $f4
/* 3FEA0 8003F2A0 44800000 */  mtc1       $zero, $f0
/* 3FEA4 8003F2A4 3C01C170 */  lui        $at, (0xC1700000 >> 16)
/* 3FEA8 8003F2A8 44813000 */  mtc1       $at, $f6
/* 3FEAC 8003F2AC 3C02801A */  lui        $v0, %hi(D_8019E6F0)
/* 3FEB0 8003F2B0 2442E6F0 */  addiu      $v0, $v0, %lo(D_8019E6F0)
/* 3FEB4 8003F2B4 00001825 */  or         $v1, $zero, $zero
/* 3FEB8 8003F2B8 E4820008 */  swc1       $f2, 0x8($a0)
/* 3FEBC 8003F2BC E4820014 */  swc1       $f2, 0x14($a0)
/* 3FEC0 8003F2C0 E4840000 */  swc1       $f4, 0x0($a0)
/* 3FEC4 8003F2C4 E4800004 */  swc1       $f0, 0x4($a0)
/* 3FEC8 8003F2C8 E4800010 */  swc1       $f0, 0x10($a0)
/* 3FECC 8003F2CC E486000C */  swc1       $f6, 0xC($a0)
.L8003F2D0:
/* 3FED0 8003F2D0 00437821 */  addu       $t7, $v0, $v1
/* 3FED4 8003F2D4 24630001 */  addiu      $v1, $v1, 0x1
/* 3FED8 8003F2D8 307800FF */  andi       $t8, $v1, 0xFF
/* 3FEDC 8003F2DC 2B010006 */  slti       $at, $t8, 0x6
/* 3FEE0 8003F2E0 03001825 */  or         $v1, $t8, $zero
/* 3FEE4 8003F2E4 1420FFFA */  bnez       $at, .L8003F2D0
/* 3FEE8 8003F2E8 A1E00000 */   sb        $zero, 0x0($t7)
/* 3FEEC 8003F2EC 3C068009 */  lui        $a2, %hi(D_8008B4A8)
/* 3FEF0 8003F2F0 8CC6B4A8 */  lw         $a2, %lo(D_8008B4A8)($a2)
/* 3FEF4 8003F2F4 00001825 */  or         $v1, $zero, $zero
/* 3FEF8 8003F2F8 2404003E */  addiu      $a0, $zero, 0x3E
/* 3FEFC 8003F2FC 00001025 */  or         $v0, $zero, $zero
/* 3FF00 8003F300 00063D82 */  srl        $a3, $a2, 22
.L8003F304:
/* 3FF04 8003F304 10870017 */  beq        $a0, $a3, .L8003F364
/* 3FF08 8003F308 00802825 */   or        $a1, $a0, $zero
/* 3FF0C 8003F30C 04410004 */  bgez       $v0, .L8003F320
/* 3FF10 8003F310 30590001 */   andi      $t9, $v0, 0x1
/* 3FF14 8003F314 13200002 */  beqz       $t9, .L8003F320
/* 3FF18 8003F318 00000000 */   nop
/* 3FF1C 8003F31C 2739FFFE */  addiu      $t9, $t9, -0x2
.L8003F320:
/* 3FF20 8003F320 17200005 */  bnez       $t9, .L8003F338
/* 3FF24 8003F324 24A4FFFF */   addiu     $a0, $a1, -0x1
/* 3FF28 8003F328 24A40001 */  addiu      $a0, $a1, 0x1
/* 3FF2C 8003F32C 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 3FF30 8003F330 10000007 */  b          .L8003F350
/* 3FF34 8003F334 01C02025 */   or        $a0, $t6, $zero
.L8003F338:
/* 3FF38 8003F338 308FFFFF */  andi       $t7, $a0, 0xFFFF
/* 3FF3C 8003F33C 10600004 */  beqz       $v1, .L8003F350
/* 3FF40 8003F340 01E02025 */   or        $a0, $t7, $zero
/* 3FF44 8003F344 25E40040 */  addiu      $a0, $t7, 0x40
/* 3FF48 8003F348 3098FFFF */  andi       $t8, $a0, 0xFFFF
/* 3FF4C 8003F34C 03002025 */  or         $a0, $t8, $zero
.L8003F350:
/* 3FF50 8003F350 24630001 */  addiu      $v1, $v1, 0x1
/* 3FF54 8003F354 306200FF */  andi       $v0, $v1, 0xFF
/* 3FF58 8003F358 28410020 */  slti       $at, $v0, 0x20
/* 3FF5C 8003F35C 1420FFE9 */  bnez       $at, .L8003F304
/* 3FF60 8003F360 00401825 */   or        $v1, $v0, $zero
.L8003F364:
/* 3FF64 8003F364 38440020 */  xori       $a0, $v0, 0x20
/* 3FF68 8003F368 14800011 */  bnez       $a0, .L8003F3B0
/* 3FF6C 8003F36C 00001825 */   or        $v1, $zero, $zero
/* 3FF70 8003F370 3C058009 */  lui        $a1, %hi(D_8008B4A8)
/* 3FF74 8003F374 24A5B4A8 */  addiu      $a1, $a1, %lo(D_8008B4A8)
/* 3FF78 8003F378 94AE0000 */  lhu        $t6, 0x0($a1)
/* 3FF7C 8003F37C 3C07801A */  lui        $a3, %hi(D_8019E0F6)
/* 3FF80 8003F380 24E7E0F6 */  addiu      $a3, $a3, %lo(D_8019E0F6)
/* 3FF84 8003F384 31CF003F */  andi       $t7, $t6, 0x3F
/* 3FF88 8003F388 35F80F80 */  ori        $t8, $t7, 0xF80
/* 3FF8C 8003F38C A4B80000 */  sh         $t8, 0x0($a1)
/* 3FF90 8003F390 90B90001 */  lbu        $t9, 0x1($a1)
/* 3FF94 8003F394 90F80000 */  lbu        $t8, 0x0($a3)
/* 3FF98 8003F398 332EFFC3 */  andi       $t6, $t9, 0xFFC3
/* 3FF9C 8003F39C 35CF0014 */  ori        $t7, $t6, 0x14
/* 3FFA0 8003F3A0 27190001 */  addiu      $t9, $t8, 0x1
/* 3FFA4 8003F3A4 A0AF0001 */  sb         $t7, 0x1($a1)
/* 3FFA8 8003F3A8 10000023 */  b          .L8003F438
/* 3FFAC 8003F3AC A0F90000 */   sb        $t9, 0x0($a3)
.L8003F3B0:
/* 3FFB0 8003F3B0 00062A80 */  sll        $a1, $a2, 10
/* 3FFB4 8003F3B4 3C07801A */  lui        $a3, %hi(D_8019E0F6)
/* 3FFB8 8003F3B8 00057702 */  srl        $t6, $a1, 28
/* 3FFBC 8003F3BC 24E7E0F6 */  addiu      $a3, $a3, %lo(D_8019E0F6)
/* 3FFC0 8003F3C0 01C02825 */  or         $a1, $t6, $zero
/* 3FFC4 8003F3C4 24040005 */  addiu      $a0, $zero, 0x5
.L8003F3C8:
/* 3FFC8 8003F3C8 54850004 */  bnel       $a0, $a1, .L8003F3DC
/* 3FFCC 8003F3CC 24630001 */   addiu     $v1, $v1, 0x1
/* 3FFD0 8003F3D0 10000009 */  b          .L8003F3F8
/* 3FFD4 8003F3D4 00601025 */   or        $v0, $v1, $zero
/* 3FFD8 8003F3D8 24630001 */  addiu      $v1, $v1, 0x1
.L8003F3DC:
/* 3FFDC 8003F3DC 306200FF */  andi       $v0, $v1, 0xFF
/* 3FFE0 8003F3E0 24840001 */  addiu      $a0, $a0, 0x1
/* 3FFE4 8003F3E4 3098FFFF */  andi       $t8, $a0, 0xFFFF
/* 3FFE8 8003F3E8 28410006 */  slti       $at, $v0, 0x6
/* 3FFEC 8003F3EC 03002025 */  or         $a0, $t8, $zero
/* 3FFF0 8003F3F0 1420FFF5 */  bnez       $at, .L8003F3C8
/* 3FFF4 8003F3F4 00401825 */   or        $v1, $v0, $zero
.L8003F3F8:
/* 3FFF8 8003F3F8 38440006 */  xori       $a0, $v0, 0x6
/* 3FFFC 8003F3FC 1480000E */  bnez       $a0, .L8003F438
/* 40000 8003F400 00001825 */   or        $v1, $zero, $zero
/* 40004 8003F404 3C058009 */  lui        $a1, %hi(D_8008B4A8)
/* 40008 8003F408 24A5B4A8 */  addiu      $a1, $a1, %lo(D_8008B4A8)
/* 4000C 8003F40C 94B90000 */  lhu        $t9, 0x0($a1)
/* 40010 8003F410 332E003F */  andi       $t6, $t9, 0x3F
/* 40014 8003F414 35CF0F80 */  ori        $t7, $t6, 0xF80
/* 40018 8003F418 A4AF0000 */  sh         $t7, 0x0($a1)
/* 4001C 8003F41C 90B80001 */  lbu        $t8, 0x1($a1)
/* 40020 8003F420 90EF0000 */  lbu        $t7, 0x0($a3)
/* 40024 8003F424 3319FFC3 */  andi       $t9, $t8, 0xFFC3
/* 40028 8003F428 372E0014 */  ori        $t6, $t9, 0x14
/* 4002C 8003F42C 25F80001 */  addiu      $t8, $t7, 0x1
/* 40030 8003F430 A0AE0001 */  sb         $t6, 0x1($a1)
/* 40034 8003F434 A0F80000 */  sb         $t8, 0x0($a3)
.L8003F438:
/* 40038 8003F438 3C058009 */  lui        $a1, %hi(D_8008B4A8)
/* 4003C 8003F43C 3C028009 */  lui        $v0, %hi(D_8008F29C)
/* 40040 8003F440 3C068009 */  lui        $a2, %hi(D_8008EEA4)
/* 40044 8003F444 24A5B4A8 */  addiu      $a1, $a1, %lo(D_8008B4A8)
/* 40048 8003F448 24C6EEA4 */  addiu      $a2, $a2, %lo(D_8008EEA4)
/* 4004C 8003F44C 9042F29C */  lbu        $v0, %lo(D_8008F29C)($v0)
/* 40050 8003F450 24070001 */  addiu      $a3, $zero, 0x1
.L8003F454:
/* 40054 8003F454 1440000B */  bnez       $v0, .L8003F484
/* 40058 8003F458 00C3C821 */   addu      $t9, $a2, $v1
/* 4005C 8003F45C 8CB90000 */  lw         $t9, 0x0($a1)
/* 40060 8003F460 00C32021 */  addu       $a0, $a2, $v1
/* 40064 8003F464 A0800000 */  sb         $zero, 0x0($a0)
/* 40068 8003F468 00197582 */  srl        $t6, $t9, 22
/* 4006C 8003F46C 006E7807 */  srav       $t7, $t6, $v1
/* 40070 8003F470 31F80001 */  andi       $t8, $t7, 0x1
/* 40074 8003F474 53000005 */  beql       $t8, $zero, .L8003F48C
/* 40078 8003F478 24630001 */   addiu     $v1, $v1, 0x1
/* 4007C 8003F47C 10000002 */  b          .L8003F488
/* 40080 8003F480 A0870000 */   sb        $a3, 0x0($a0)
.L8003F484:
/* 40084 8003F484 A3270000 */  sb         $a3, 0x0($t9)
.L8003F488:
/* 40088 8003F488 24630001 */  addiu      $v1, $v1, 0x1
.L8003F48C:
/* 4008C 8003F48C 306E00FF */  andi       $t6, $v1, 0xFF
/* 40090 8003F490 29C1000A */  slti       $at, $t6, 0xA
/* 40094 8003F494 1420FFEF */  bnez       $at, .L8003F454
/* 40098 8003F498 01C01825 */   or        $v1, $t6, $zero
/* 4009C 8003F49C 3C01801A */  lui        $at, %hi(D_8019E6A9)
/* 400A0 8003F4A0 03E00008 */  jr         $ra
/* 400A4 8003F4A4 A020E6A9 */   sb        $zero, %lo(D_8019E6A9)($at)

glabel func_8003F4A8
/* 400A8 8003F4A8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 400AC 8003F4AC 3C0E8009 */  lui        $t6, %hi(D_8008EF14)
/* 400B0 8003F4B0 91CEEF14 */  lbu        $t6, %lo(D_8008EF14)($t6)
/* 400B4 8003F4B4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 400B8 8003F4B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 400BC 8003F4BC AFA40030 */  sw         $a0, 0x30($sp)
/* 400C0 8003F4C0 AFA50034 */  sw         $a1, 0x34($sp)
/* 400C4 8003F4C4 11C00005 */  beqz       $t6, .L8003F4DC
/* 400C8 8003F4C8 AFA60038 */   sw        $a2, 0x38($sp)
/* 400CC 8003F4CC 0C00FBE2 */  jal        func_8003EF88
/* 400D0 8003F4D0 00000000 */   nop
/* 400D4 8003F4D4 3C018009 */  lui        $at, %hi(D_8008EF14)
/* 400D8 8003F4D8 A020EF14 */  sb         $zero, %lo(D_8008EF14)($at)
.L8003F4DC:
/* 400DC 8003F4DC 3C0F8009 */  lui        $t7, %hi(D_8008EF0C)
/* 400E0 8003F4E0 91EFEF0C */  lbu        $t7, %lo(D_8008EF0C)($t7)
/* 400E4 8003F4E4 15E00006 */  bnez       $t7, .L8003F500
/* 400E8 8003F4E8 3C188009 */   lui       $t8, %hi(D_8008EF10)
/* 400EC 8003F4EC 9318EF10 */  lbu        $t8, %lo(D_8008EF10)($t8)
/* 400F0 8003F4F0 57000004 */  bnel       $t8, $zero, .L8003F504
/* 400F4 8003F4F4 8FB90030 */   lw        $t9, 0x30($sp)
/* 400F8 8003F4F8 0C0106BD */  jal        func_80041AF4
/* 400FC 8003F4FC 00000000 */   nop
.L8003F500:
/* 40100 8003F500 8FB90030 */  lw         $t9, 0x30($sp)
.L8003F504:
/* 40104 8003F504 8FA90034 */  lw         $t1, 0x34($sp)
/* 40108 8003F508 8FAB0038 */  lw         $t3, 0x38($sp)
/* 4010C 8003F50C 8F280000 */  lw         $t0, 0x0($t9)
/* 40110 8003F510 27B0002C */  addiu      $s0, $sp, 0x2C
/* 40114 8003F514 02002025 */  or         $a0, $s0, $zero
/* 40118 8003F518 AFA8002C */  sw         $t0, 0x2C($sp)
/* 4011C 8003F51C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 40120 8003F520 AFAA0028 */  sw         $t2, 0x28($sp)
/* 40124 8003F524 8D6C0000 */  lw         $t4, 0x0($t3)
/* 40128 8003F528 0C0102EF */  jal        func_80040BBC
/* 4012C 8003F52C AFAC0024 */   sw        $t4, 0x24($sp)
/* 40130 8003F530 0C01049E */  jal        func_80041278
/* 40134 8003F534 02002025 */   or        $a0, $s0, $zero
/* 40138 8003F538 3C05801A */  lui        $a1, %hi(D_8019E5E0)
/* 4013C 8003F53C 24A5E5E0 */  addiu      $a1, $a1, %lo(D_8019E5E0)
/* 40140 8003F540 0C014DE2 */  jal        func_80053788
/* 40144 8003F544 02002025 */   or        $a0, $s0, $zero
/* 40148 8003F548 3C05801A */  lui        $a1, %hi(D_8019E5F4)
/* 4014C 8003F54C 24A5E5F4 */  addiu      $a1, $a1, %lo(D_8019E5F4)
/* 40150 8003F550 0C014EDF */  jal        func_80053B7C
/* 40154 8003F554 02002025 */   or        $a0, $s0, $zero
/* 40158 8003F558 0C00FF10 */  jal        func_8003FC40
/* 4015C 8003F55C 02002025 */   or        $a0, $s0, $zero
/* 40160 8003F560 0C010586 */  jal        func_80041618
/* 40164 8003F564 02002025 */   or        $a0, $s0, $zero
/* 40168 8003F568 3C05801A */  lui        $a1, %hi(D_8019E608)
/* 4016C 8003F56C 24A5E608 */  addiu      $a1, $a1, %lo(D_8019E608)
/* 40170 8003F570 0C0150A4 */  jal        func_80054290
/* 40174 8003F574 02002025 */   or        $a0, $s0, $zero
/* 40178 8003F578 0C010004 */  jal        func_80040010
/* 4017C 8003F57C 02002025 */   or        $a0, $s0, $zero
/* 40180 8003F580 3C05801A */  lui        $a1, %hi(D_8019E630)
/* 40184 8003F584 24A5E630 */  addiu      $a1, $a1, %lo(D_8019E630)
/* 40188 8003F588 0C014F9F */  jal        func_80053E7C
/* 4018C 8003F58C 02002025 */   or        $a0, $s0, $zero
/* 40190 8003F590 3C05801A */  lui        $a1, %hi(D_8019E61C)
/* 40194 8003F594 24A5E61C */  addiu      $a1, $a1, %lo(D_8019E61C)
/* 40198 8003F598 0C014F9F */  jal        func_80053E7C
/* 4019C 8003F59C 02002025 */   or        $a0, $s0, $zero
/* 401A0 8003F5A0 3C05801A */  lui        $a1, %hi(D_8019E644)
/* 401A4 8003F5A4 24A5E644 */  addiu      $a1, $a1, %lo(D_8019E644)
/* 401A8 8003F5A8 0C014F9F */  jal        func_80053E7C
/* 401AC 8003F5AC 02002025 */   or        $a0, $s0, $zero
/* 401B0 8003F5B0 3C0D801A */  lui        $t5, %hi(D_8019E6A9)
/* 401B4 8003F5B4 81ADE6A9 */  lb         $t5, %lo(D_8019E6A9)($t5)
/* 401B8 8003F5B8 11A00005 */  beqz       $t5, .L8003F5D0
/* 401BC 8003F5BC 00000000 */   nop
/* 401C0 8003F5C0 0C0101A6 */  jal        func_80040698
/* 401C4 8003F5C4 02002025 */   or        $a0, $s0, $zero
/* 401C8 8003F5C8 10000003 */  b          .L8003F5D8
/* 401CC 8003F5CC 00000000 */   nop
.L8003F5D0:
/* 401D0 8003F5D0 0C01004E */  jal        func_80040138
/* 401D4 8003F5D4 02002025 */   or        $a0, $s0, $zero
.L8003F5D8:
/* 401D8 8003F5D8 3C05801A */  lui        $a1, %hi(D_8019E66C)
/* 401DC 8003F5DC 24A5E66C */  addiu      $a1, $a1, %lo(D_8019E66C)
/* 401E0 8003F5E0 0C0150A4 */  jal        func_80054290
/* 401E4 8003F5E4 02002025 */   or        $a0, $s0, $zero
/* 401E8 8003F5E8 0C010527 */  jal        func_8004149C
/* 401EC 8003F5EC 02002025 */   or        $a0, $s0, $zero
/* 401F0 8003F5F0 3C05801A */  lui        $a1, %hi(D_8019E658)
/* 401F4 8003F5F4 24A5E658 */  addiu      $a1, $a1, %lo(D_8019E658)
/* 401F8 8003F5F8 0C0150A4 */  jal        func_80054290
/* 401FC 8003F5FC 02002025 */   or        $a0, $s0, $zero
/* 40200 8003F600 3C05801A */  lui        $a1, %hi(D_8019E680)
/* 40204 8003F604 24A5E680 */  addiu      $a1, $a1, %lo(D_8019E680)
/* 40208 8003F608 0C014F9F */  jal        func_80053E7C
/* 4020C 8003F60C 02002025 */   or        $a0, $s0, $zero
/* 40210 8003F610 3C05801A */  lui        $a1, %hi(D_8019E694)
/* 40214 8003F614 24A5E694 */  addiu      $a1, $a1, %lo(D_8019E694)
/* 40218 8003F618 0C014F9F */  jal        func_80053E7C
/* 4021C 8003F61C 02002025 */   or        $a0, $s0, $zero
/* 40220 8003F620 3C0E8009 */  lui        $t6, %hi(D_8008EF04)
/* 40224 8003F624 91CEEF04 */  lbu        $t6, %lo(D_8008EF04)($t6)
/* 40228 8003F628 11C00003 */  beqz       $t6, .L8003F638
/* 4022C 8003F62C 00000000 */   nop
/* 40230 8003F630 0C010218 */  jal        func_80040860
/* 40234 8003F634 02002025 */   or        $a0, $s0, $zero
.L8003F638:
/* 40238 8003F638 3C0F8009 */  lui        $t7, %hi(D_8008EF10)
/* 4023C 8003F63C 91EFEF10 */  lbu        $t7, %lo(D_8008EF10)($t7)
/* 40240 8003F640 11E00005 */  beqz       $t7, .L8003F658
/* 40244 8003F644 00000000 */   nop
/* 40248 8003F648 0C010613 */  jal        func_8004184C
/* 4024C 8003F64C 02002025 */   or        $a0, $s0, $zero
/* 40250 8003F650 10000003 */  b          .L8003F660
/* 40254 8003F654 00000000 */   nop
.L8003F658:
/* 40258 8003F658 0C01037B */  jal        func_80040DEC
/* 4025C 8003F65C 02002025 */   or        $a0, $s0, $zero
.L8003F660:
/* 40260 8003F660 0C010659 */  jal        func_80041964
/* 40264 8003F664 00000000 */   nop
/* 40268 8003F668 02002025 */  or         $a0, $s0, $zero
/* 4026C 8003F66C 27A50028 */  addiu      $a1, $sp, 0x28
/* 40270 8003F670 0C00FE63 */  jal        func_8003F98C
/* 40274 8003F674 27A60024 */   addiu     $a2, $sp, 0x24
/* 40278 8003F678 3C188009 */  lui        $t8, %hi(D_8008EF0C)
/* 4027C 8003F67C 9318EF0C */  lbu        $t8, %lo(D_8008EF0C)($t8)
/* 40280 8003F680 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 40284 8003F684 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 40288 8003F688 17000051 */  bnez       $t8, .L8003F7D0
/* 4028C 8003F68C 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 40290 8003F690 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 40294 8003F694 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 40298 8003F698 3C098009 */  lui        $t1, %hi(D_8008EF10)
/* 4029C 8003F69C 30598000 */  andi       $t9, $v0, 0x8000
/* 402A0 8003F6A0 17200003 */  bnez       $t9, .L8003F6B0
/* 402A4 8003F6A4 30482000 */   andi      $t0, $v0, 0x2000
/* 402A8 8003F6A8 11000018 */  beqz       $t0, .L8003F70C
/* 402AC 8003F6AC 304D4000 */   andi      $t5, $v0, 0x4000
.L8003F6B0:
/* 402B0 8003F6B0 9129EF10 */  lbu        $t1, %lo(D_8008EF10)($t1)
/* 402B4 8003F6B4 240C0001 */  addiu      $t4, $zero, 0x1
/* 402B8 8003F6B8 3C018009 */  lui        $at, %hi(D_8008EF0C)
/* 402BC 8003F6BC 1520000E */  bnez       $t1, .L8003F6F8
/* 402C0 8003F6C0 2404002A */   addiu     $a0, $zero, 0x2A
/* 402C4 8003F6C4 240A0001 */  addiu      $t2, $zero, 0x1
/* 402C8 8003F6C8 3C018009 */  lui        $at, %hi(D_8008EF10)
/* 402CC 8003F6CC A02AEF10 */  sb         $t2, %lo(D_8008EF10)($at)
/* 402D0 8003F6D0 3C01801A */  lui        $at, %hi(D_8019E6A8)
/* 402D4 8003F6D4 240B0001 */  addiu      $t3, $zero, 0x1
/* 402D8 8003F6D8 A02BE6A8 */  sb         $t3, %lo(D_8019E6A8)($at)
/* 402DC 8003F6DC 3C01801A */  lui        $at, %hi(D_8019E6A9)
/* 402E0 8003F6E0 A020E6A9 */  sb         $zero, %lo(D_8019E6A9)($at)
/* 402E4 8003F6E4 2404002A */  addiu      $a0, $zero, 0x2A
/* 402E8 8003F6E8 0C0004F0 */  jal        func_800013C0
/* 402EC 8003F6EC 24050004 */   addiu     $a1, $zero, 0x4
/* 402F0 8003F6F0 10000018 */  b          .L8003F754
/* 402F4 8003F6F4 00000000 */   nop
.L8003F6F8:
/* 402F8 8003F6F8 A02CEF0C */  sb         $t4, %lo(D_8008EF0C)($at)
/* 402FC 8003F6FC 0C0004F0 */  jal        func_800013C0
/* 40300 8003F700 24050004 */   addiu     $a1, $zero, 0x4
/* 40304 8003F704 10000013 */  b          .L8003F754
/* 40308 8003F708 00000000 */   nop
.L8003F70C:
/* 4030C 8003F70C 11A00011 */  beqz       $t5, .L8003F754
/* 40310 8003F710 3C0E8009 */   lui       $t6, %hi(D_8008EF10)
/* 40314 8003F714 91CEEF10 */  lbu        $t6, %lo(D_8008EF10)($t6)
/* 40318 8003F718 3C018009 */  lui        $at, %hi(D_8008EF08)
/* 4031C 8003F71C 24040026 */  addiu      $a0, $zero, 0x26
/* 40320 8003F720 11C0000A */  beqz       $t6, .L8003F74C
/* 40324 8003F724 24050004 */   addiu     $a1, $zero, 0x4
/* 40328 8003F728 3C018009 */  lui        $at, %hi(D_8008EF10)
/* 4032C 8003F72C A020EF10 */  sb         $zero, %lo(D_8008EF10)($at)
/* 40330 8003F730 3C01801A */  lui        $at, %hi(D_8019E6A8)
/* 40334 8003F734 A020E6A8 */  sb         $zero, %lo(D_8019E6A8)($at)
/* 40338 8003F738 24040026 */  addiu      $a0, $zero, 0x26
/* 4033C 8003F73C 0C0004F0 */  jal        func_800013C0
/* 40340 8003F740 24050004 */   addiu     $a1, $zero, 0x4
/* 40344 8003F744 10000003 */  b          .L8003F754
/* 40348 8003F748 00000000 */   nop
.L8003F74C:
/* 4034C 8003F74C 0C0004F0 */  jal        func_800013C0
/* 40350 8003F750 A020EF08 */   sb        $zero, %lo(D_8008EF08)($at)
.L8003F754:
/* 40354 8003F754 3C0F8009 */  lui        $t7, %hi(D_8008EF04)
/* 40358 8003F758 91EFEF04 */  lbu        $t7, %lo(D_8008EF04)($t7)
/* 4035C 8003F75C 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 40360 8003F760 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 40364 8003F764 15E00043 */  bnez       $t7, .L8003F874
/* 40368 8003F768 3C053E4C */   lui       $a1, (0x3E4CCCCD >> 16)
/* 4036C 8003F76C 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 40370 8003F770 0C014B98 */  jal        func_80052E60
/* 40374 8003F774 24060001 */   addiu     $a2, $zero, 0x1
/* 40378 8003F778 3C188009 */  lui        $t8, %hi(D_8008EEA0)
/* 4037C 8003F77C 9318EEA0 */  lbu        $t8, %lo(D_8008EEA0)($t8)
/* 40380 8003F780 3C018009 */  lui        $at, %hi(D_8008EF04)
/* 40384 8003F784 A022EF04 */  sb         $v0, %lo(D_8008EF04)($at)
/* 40388 8003F788 13000005 */  beqz       $t8, .L8003F7A0
/* 4038C 8003F78C 02002025 */   or        $a0, $s0, $zero
/* 40390 8003F790 0C010674 */  jal        func_800419D0
/* 40394 8003F794 02002025 */   or        $a0, $s0, $zero
/* 40398 8003F798 10000006 */  b          .L8003F7B4
/* 4039C 8003F79C 00000000 */   nop
.L8003F7A0:
/* 403A0 8003F7A0 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 403A4 8003F7A4 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 403A8 8003F7A8 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 403AC 8003F7AC 0C015681 */  jal        func_80055A04
/* 403B0 8003F7B0 24A5EDDC */   addiu     $a1, $a1, %lo(D_8019EDDC)
.L8003F7B4:
/* 403B4 8003F7B4 3C198009 */  lui        $t9, %hi(D_8008EF04)
/* 403B8 8003F7B8 9339EF04 */  lbu        $t9, %lo(D_8008EF04)($t9)
/* 403BC 8003F7BC 3C018009 */  lui        $at, %hi(D_8008EEA0)
/* 403C0 8003F7C0 1320002C */  beqz       $t9, .L8003F874
/* 403C4 8003F7C4 00000000 */   nop
/* 403C8 8003F7C8 1000002A */  b          .L8003F874
/* 403CC 8003F7CC A020EEA0 */   sb        $zero, %lo(D_8008EEA0)($at)
.L8003F7D0:
/* 403D0 8003F7D0 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 403D4 8003F7D4 0C014B98 */  jal        func_80052E60
/* 403D8 8003F7D8 00003025 */   or        $a2, $zero, $zero
/* 403DC 8003F7DC 10400023 */  beqz       $v0, .L8003F86C
/* 403E0 8003F7E0 3C018009 */   lui       $at, %hi(D_8008EE88)
/* 403E4 8003F7E4 44802000 */  mtc1       $zero, $f4
/* 403E8 8003F7E8 24080001 */  addiu      $t0, $zero, 0x1
/* 403EC 8003F7EC 3C0A8009 */  lui        $t2, %hi(D_8008F290)
/* 403F0 8003F7F0 E424EE88 */  swc1       $f4, %lo(D_8008EE88)($at)
/* 403F4 8003F7F4 E424EE84 */  swc1       $f4, %lo(D_8008EE84)($at)
/* 403F8 8003F7F8 3C018009 */  lui        $at, %hi(D_8008EF18)
/* 403FC 8003F7FC A020EF18 */  sb         $zero, %lo(D_8008EF18)($at)
/* 40400 8003F800 3C018009 */  lui        $at, %hi(D_8008EF10)
/* 40404 8003F804 A020EF10 */  sb         $zero, %lo(D_8008EF10)($at)
/* 40408 8003F808 3C018009 */  lui        $at, %hi(D_8008EF0C)
/* 4040C 8003F80C A020EF0C */  sb         $zero, %lo(D_8008EF0C)($at)
/* 40410 8003F810 3C018009 */  lui        $at, %hi(D_8008EF04)
/* 40414 8003F814 A020EF04 */  sb         $zero, %lo(D_8008EF04)($at)
/* 40418 8003F818 3C018009 */  lui        $at, %hi(D_8008EF14)
/* 4041C 8003F81C A028EF14 */  sb         $t0, %lo(D_8008EF14)($at)
/* 40420 8003F820 8D4AF290 */  lw         $t2, %lo(D_8008F290)($t2)
/* 40424 8003F824 3C018009 */  lui        $at, %hi(D_8008EF08)
/* 40428 8003F828 24090001 */  addiu      $t1, $zero, 0x1
/* 4042C 8003F82C A029EF08 */  sb         $t1, %lo(D_8008EF08)($at)
/* 40430 8003F830 3C01801A */  lui        $at, %hi(D_8019E6A8)
/* 40434 8003F834 15400005 */  bnez       $t2, .L8003F84C
/* 40438 8003F838 A020E6A8 */   sb        $zero, %lo(D_8019E6A8)($at)
/* 4043C 8003F83C 240B0004 */  addiu      $t3, $zero, 0x4
/* 40440 8003F840 3C018009 */  lui        $at, %hi(D_8008F294)
/* 40444 8003F844 10000009 */  b          .L8003F86C
/* 40448 8003F848 AC2BF294 */   sw        $t3, %lo(D_8008F294)($at)
.L8003F84C:
/* 4044C 8003F84C 3C02801A */  lui        $v0, %hi(D_8019E7E1)
/* 40450 8003F850 2442E7E1 */  addiu      $v0, $v0, %lo(D_8019E7E1)
/* 40454 8003F854 A0400000 */  sb         $zero, 0x0($v0)
/* 40458 8003F858 3C01801A */  lui        $at, %hi(D_8019E7E2)
/* 4045C 8003F85C A020E7E2 */  sb         $zero, %lo(D_8019E7E2)($at)
/* 40460 8003F860 3C018009 */  lui        $at, %hi(D_8008F294)
/* 40464 8003F864 240D0001 */  addiu      $t5, $zero, 0x1
/* 40468 8003F868 AC2DF294 */  sw         $t5, %lo(D_8008F294)($at)
.L8003F86C:
/* 4046C 8003F86C 0C010674 */  jal        func_800419D0
/* 40470 8003F870 02002025 */   or        $a0, $s0, $zero
.L8003F874:
/* 40474 8003F874 3C0E8009 */  lui        $t6, %hi(D_8008EF08)
/* 40478 8003F878 91CEEF08 */  lbu        $t6, %lo(D_8008EF08)($t6)
/* 4047C 8003F87C 3C0F8009 */  lui        $t7, %hi(D_8008EF18)
/* 40480 8003F880 55C00035 */  bnel       $t6, $zero, .L8003F958
/* 40484 8003F884 8FAA002C */   lw        $t2, 0x2C($sp)
/* 40488 8003F888 91EFEF18 */  lbu        $t7, %lo(D_8008EF18)($t7)
/* 4048C 8003F88C 3C018009 */  lui        $at, %hi(D_80097698)
/* 40490 8003F890 00002825 */  or         $a1, $zero, $zero
/* 40494 8003F894 15E00006 */  bnez       $t7, .L8003F8B0
/* 40498 8003F898 00003025 */   or        $a2, $zero, $zero
/* 4049C 8003F89C C42C7698 */  lwc1       $f12, %lo(D_80097698)($at)
/* 404A0 8003F8A0 0C00122C */  jal        func_800048B0
/* 404A4 8003F8A4 24076E14 */   addiu     $a3, $zero, 0x6E14
/* 404A8 8003F8A8 3C018009 */  lui        $at, %hi(D_8008EF18)
/* 404AC 8003F8AC A022EF18 */  sb         $v0, %lo(D_8008EF18)($at)
.L8003F8B0:
/* 404B0 8003F8B0 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 404B4 8003F8B4 3C053E4C */  lui        $a1, (0x3E4CCCCD >> 16)
/* 404B8 8003F8B8 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 404BC 8003F8BC 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 404C0 8003F8C0 0C014B98 */  jal        func_80052E60
/* 404C4 8003F8C4 00003025 */   or        $a2, $zero, $zero
/* 404C8 8003F8C8 3C038009 */  lui        $v1, %hi(D_8008EE9C)
/* 404CC 8003F8CC 2463EE9C */  addiu      $v1, $v1, %lo(D_8008EE9C)
/* 404D0 8003F8D0 1040001A */  beqz       $v0, .L8003F93C
/* 404D4 8003F8D4 AC620000 */   sw        $v0, 0x0($v1)
/* 404D8 8003F8D8 44803000 */  mtc1       $zero, $f6
/* 404DC 8003F8DC 3C028009 */  lui        $v0, %hi(D_8008EE80)
/* 404E0 8003F8E0 2442EE80 */  addiu      $v0, $v0, %lo(D_8008EE80)
/* 404E4 8003F8E4 E4460008 */  swc1       $f6, 0x8($v0)
/* 404E8 8003F8E8 C4480008 */  lwc1       $f8, 0x8($v0)
/* 404EC 8003F8EC 3C018009 */  lui        $at, %hi(D_8008EF10)
/* 404F0 8003F8F0 24190001 */  addiu      $t9, $zero, 0x1
/* 404F4 8003F8F4 E4480004 */  swc1       $f8, 0x4($v0)
/* 404F8 8003F8F8 A020EF10 */  sb         $zero, %lo(D_8008EF10)($at)
/* 404FC 8003F8FC 3C018009 */  lui        $at, %hi(D_8008EF0C)
/* 40500 8003F900 A020EF0C */  sb         $zero, %lo(D_8008EF0C)($at)
/* 40504 8003F904 3C018009 */  lui        $at, %hi(D_8008EF18)
/* 40508 8003F908 A020EF18 */  sb         $zero, %lo(D_8008EF18)($at)
/* 4050C 8003F90C 3C018009 */  lui        $at, %hi(D_8008EF04)
/* 40510 8003F910 A020EF04 */  sb         $zero, %lo(D_8008EF04)($at)
/* 40514 8003F914 3C018009 */  lui        $at, %hi(D_8008EF14)
/* 40518 8003F918 A039EF14 */  sb         $t9, %lo(D_8008EF14)($at)
/* 4051C 8003F91C 3C018009 */  lui        $at, %hi(D_8008EF08)
/* 40520 8003F920 24080001 */  addiu      $t0, $zero, 0x1
/* 40524 8003F924 A028EF08 */  sb         $t0, %lo(D_8008EF08)($at)
/* 40528 8003F928 3C01801A */  lui        $at, %hi(D_8019E6A8)
/* 4052C 8003F92C A020E6A8 */  sb         $zero, %lo(D_8019E6A8)($at)
/* 40530 8003F930 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 40534 8003F934 24090003 */  addiu      $t1, $zero, 0x3
/* 40538 8003F938 AC29FF84 */  sw         $t1, %lo(D_8013FF84)($at)
.L8003F93C:
/* 4053C 8003F93C 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 40540 8003F940 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 40544 8003F944 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 40548 8003F948 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 4054C 8003F94C 0C015681 */  jal        func_80055A04
/* 40550 8003F950 02002025 */   or        $a0, $s0, $zero
/* 40554 8003F954 8FAA002C */  lw         $t2, 0x2C($sp)
.L8003F958:
/* 40558 8003F958 8FAB0030 */  lw         $t3, 0x30($sp)
/* 4055C 8003F95C AD6A0000 */  sw         $t2, 0x0($t3)
/* 40560 8003F960 8FAD0034 */  lw         $t5, 0x34($sp)
/* 40564 8003F964 8FAC0028 */  lw         $t4, 0x28($sp)
/* 40568 8003F968 ADAC0000 */  sw         $t4, 0x0($t5)
/* 4056C 8003F96C 8FAF0038 */  lw         $t7, 0x38($sp)
/* 40570 8003F970 8FAE0024 */  lw         $t6, 0x24($sp)
/* 40574 8003F974 ADEE0000 */  sw         $t6, 0x0($t7)
/* 40578 8003F978 8FBF001C */  lw         $ra, 0x1C($sp)
/* 4057C 8003F97C 8FB00018 */  lw         $s0, 0x18($sp)
/* 40580 8003F980 27BD0030 */  addiu      $sp, $sp, 0x30
/* 40584 8003F984 03E00008 */  jr         $ra
/* 40588 8003F988 00000000 */   nop

glabel func_8003F98C
/* 4058C 8003F98C 3C098009 */  lui        $t1, %hi(D_8008EE80)
/* 40590 8003F990 2529EE80 */  addiu      $t1, $t1, %lo(D_8008EE80)
/* 40594 8003F994 C5240004 */  lwc1       $f4, 0x4($t1)
/* 40598 8003F998 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 4059C 8003F99C 44814800 */  mtc1       $at, $f9
/* 405A0 8003F9A0 44804000 */  mtc1       $zero, $f8
/* 405A4 8003F9A4 460021A1 */  cvt.d.s    $f6, $f4
/* 405A8 8003F9A8 3C018009 */  lui        $at, %hi(D_800976A0)
/* 405AC 8003F9AC 46283280 */  add.d      $f10, $f6, $f8
/* 405B0 8003F9B0 27BDFED8 */  addiu      $sp, $sp, -0x128
/* 405B4 8003F9B4 AFA40128 */  sw         $a0, 0x128($sp)
/* 405B8 8003F9B8 AFA5012C */  sw         $a1, 0x12C($sp)
/* 405BC 8003F9BC 46205420 */  cvt.s.d    $f16, $f10
/* 405C0 8003F9C0 AFA60130 */  sw         $a2, 0x130($sp)
/* 405C4 8003F9C4 3C073FAA */  lui        $a3, (0x3FAAAAAB >> 16)
/* 405C8 8003F9C8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 405CC 8003F9CC E5300004 */  swc1       $f16, 0x4($t1)
/* 405D0 8003F9D0 C5240004 */  lwc1       $f4, 0x4($t1)
/* 405D4 8003F9D4 D43276A0 */  ldc1       $f18, %lo(D_800976A0)($at)
/* 405D8 8003F9D8 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 405DC 8003F9DC 460021A1 */  cvt.d.s    $f6, $f4
/* 405E0 8003F9E0 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 405E4 8003F9E4 46269032 */  c.eq.d     $f18, $f6
/* 405E8 8003F9E8 34E7AAAB */  ori        $a3, $a3, (0x3FAAAAAB & 0xFFFF)
/* 405EC 8003F9EC 3C06425C */  lui        $a2, (0x425C0000 >> 16)
/* 405F0 8003F9F0 27A5005A */  addiu      $a1, $sp, 0x5A
/* 405F4 8003F9F4 45000004 */  bc1f       .L8003FA08
/* 405F8 8003F9F8 27A4009C */   addiu     $a0, $sp, 0x9C
/* 405FC 8003F9FC 44800000 */  mtc1       $zero, $f0
/* 40600 8003FA00 00000000 */  nop
/* 40604 8003FA04 E5200004 */  swc1       $f0, 0x4($t1)
.L8003FA08:
/* 40608 8003FA08 8FAE0128 */  lw         $t6, 0x128($sp)
/* 4060C 8003FA0C 8FB8012C */  lw         $t8, 0x12C($sp)
/* 40610 8003FA10 8FAA0130 */  lw         $t2, 0x130($sp)
/* 40614 8003FA14 8DCF0000 */  lw         $t7, 0x0($t6)
/* 40618 8003FA18 44814000 */  mtc1       $at, $f8
/* 4061C 8003FA1C 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
/* 40620 8003FA20 AFAF0124 */  sw         $t7, 0x124($sp)
/* 40624 8003FA24 8F190000 */  lw         $t9, 0x0($t8)
/* 40628 8003FA28 25EC0008 */  addiu      $t4, $t7, 0x8
/* 4062C 8003FA2C 44815000 */  mtc1       $at, $f10
/* 40630 8003FA30 AFB90120 */  sw         $t9, 0x120($sp)
/* 40634 8003FA34 8D4B0000 */  lw         $t3, 0x0($t2)
/* 40638 8003FA38 AFAC0124 */  sw         $t4, 0x124($sp)
/* 4063C 8003FA3C 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
/* 40640 8003FA40 AFAB011C */  sw         $t3, 0x11C($sp)
/* 40644 8003FA44 ADE00004 */  sw         $zero, 0x4($t7)
/* 40648 8003FA48 ADED0000 */  sw         $t5, 0x0($t7)
/* 4064C 8003FA4C 8FAE0124 */  lw         $t6, 0x124($sp)
/* 40650 8003FA50 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
/* 40654 8003FA54 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
/* 40658 8003FA58 25D80008 */  addiu      $t8, $t6, 0x8
/* 4065C 8003FA5C AFB80124 */  sw         $t8, 0x124($sp)
/* 40660 8003FA60 ADC00004 */  sw         $zero, 0x4($t6)
/* 40664 8003FA64 ADD90000 */  sw         $t9, 0x0($t6)
/* 40668 8003FA68 8FAA0124 */  lw         $t2, 0x124($sp)
/* 4066C 8003FA6C 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
/* 40670 8003FA70 3C0C0008 */  lui        $t4, (0x80000 >> 16)
/* 40674 8003FA74 254B0008 */  addiu      $t3, $t2, 0x8
/* 40678 8003FA78 AFAB0124 */  sw         $t3, 0x124($sp)
/* 4067C 8003FA7C AD4C0004 */  sw         $t4, 0x4($t2)
/* 40680 8003FA80 AD4F0000 */  sw         $t7, 0x0($t2)
/* 40684 8003FA84 8FAD0124 */  lw         $t5, 0x124($sp)
/* 40688 8003FA88 3C198009 */  lui        $t9, %hi(D_8008EE60)
/* 4068C 8003FA8C 3C180380 */  lui        $t8, (0x3800010 >> 16)
/* 40690 8003FA90 25AE0008 */  addiu      $t6, $t5, 0x8
/* 40694 8003FA94 AFAE0124 */  sw         $t6, 0x124($sp)
/* 40698 8003FA98 37180010 */  ori        $t8, $t8, (0x3800010 & 0xFFFF)
/* 4069C 8003FA9C 2739EE60 */  addiu      $t9, $t9, %lo(D_8008EE60)
/* 406A0 8003FAA0 ADB90004 */  sw         $t9, 0x4($t5)
/* 406A4 8003FAA4 ADB80000 */  sw         $t8, 0x0($t5)
/* 406A8 8003FAA8 8FAA0124 */  lw         $t2, 0x124($sp)
/* 406AC 8003FAAC 3C0FED19 */  lui        $t7, (0xED190020 >> 16)
/* 406B0 8003FAB0 3C0C004F */  lui        $t4, (0x4FC2B0 >> 16)
/* 406B4 8003FAB4 254B0008 */  addiu      $t3, $t2, 0x8
/* 406B8 8003FAB8 AFAB0124 */  sw         $t3, 0x124($sp)
/* 406BC 8003FABC 358CC2B0 */  ori        $t4, $t4, (0x4FC2B0 & 0xFFFF)
/* 406C0 8003FAC0 35EF0020 */  ori        $t7, $t7, (0xED190020 & 0xFFFF)
/* 406C4 8003FAC4 3C018009 */  lui        $at, %hi(D_800976A8)
/* 406C8 8003FAC8 AD4F0000 */  sw         $t7, 0x0($t2)
/* 406CC 8003FACC AD4C0004 */  sw         $t4, 0x4($t2)
/* 406D0 8003FAD0 C43076A8 */  lwc1       $f16, %lo(D_800976A8)($at)
/* 406D4 8003FAD4 E7A80010 */  swc1       $f8, 0x10($sp)
/* 406D8 8003FAD8 E7AA0014 */  swc1       $f10, 0x14($sp)
/* 406DC 8003FADC 0C01AE98 */  jal        func_8006BA60
/* 406E0 8003FAE0 E7B00018 */   swc1      $f16, 0x18($sp)
/* 406E4 8003FAE4 44800000 */  mtc1       $zero, $f0
/* 406E8 8003FAE8 3C01C040 */  lui        $at, (0xC0400000 >> 16)
/* 406EC 8003FAEC 44812000 */  mtc1       $at, $f4
/* 406F0 8003FAF0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 406F4 8003FAF4 44819000 */  mtc1       $at, $f18
/* 406F8 8003FAF8 27A400DC */  addiu      $a0, $sp, 0xDC
/* 406FC 8003FAFC 3C05428C */  lui        $a1, (0x428C0000 >> 16)
/* 40700 8003FB00 3C0641E0 */  lui        $a2, (0x41E00000 >> 16)
/* 40704 8003FB04 3C074260 */  lui        $a3, (0x42600000 >> 16)
/* 40708 8003FB08 E7A00010 */  swc1       $f0, 0x10($sp)
/* 4070C 8003FB0C E7A00018 */  swc1       $f0, 0x18($sp)
/* 40710 8003FB10 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 40714 8003FB14 E7A00024 */  swc1       $f0, 0x24($sp)
/* 40718 8003FB18 E7A40014 */  swc1       $f4, 0x14($sp)
/* 4071C 8003FB1C 0C01AF3C */  jal        func_8006BCF0
/* 40720 8003FB20 E7B20020 */   swc1      $f18, 0x20($sp)
/* 40724 8003FB24 27A400DC */  addiu      $a0, $sp, 0xDC
/* 40728 8003FB28 27A5009C */  addiu      $a1, $sp, 0x9C
/* 4072C 8003FB2C 0C01B030 */  jal        func_8006C0C0
/* 40730 8003FB30 27A6005C */   addiu     $a2, $sp, 0x5C
/* 40734 8003FB34 27A4005C */  addiu      $a0, $sp, 0x5C
/* 40738 8003FB38 0C01B08C */  jal        func_8006C230
/* 4073C 8003FB3C 8FA50120 */   lw        $a1, 0x120($sp)
/* 40740 8003FB40 8FAD0124 */  lw         $t5, 0x124($sp)
/* 40744 8003FB44 3C18BC00 */  lui        $t8, (0xBC00000E >> 16)
/* 40748 8003FB48 3718000E */  ori        $t8, $t8, (0xBC00000E & 0xFFFF)
/* 4074C 8003FB4C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 40750 8003FB50 AFAE0124 */  sw         $t6, 0x124($sp)
/* 40754 8003FB54 ADB80000 */  sw         $t8, 0x0($t5)
/* 40758 8003FB58 97B9005A */  lhu        $t9, 0x5A($sp)
/* 4075C 8003FB5C 3C0F0103 */  lui        $t7, (0x1030040 >> 16)
/* 40760 8003FB60 35EF0040 */  ori        $t7, $t7, (0x1030040 & 0xFFFF)
/* 40764 8003FB64 ADB90004 */  sw         $t9, 0x4($t5)
/* 40768 8003FB68 8FAA0124 */  lw         $t2, 0x124($sp)
/* 4076C 8003FB6C 3C088014 */  lui        $t0, %hi(D_8013FF90)
/* 40770 8003FB70 2508FF90 */  addiu      $t0, $t0, %lo(D_8013FF90)
/* 40774 8003FB74 254B0008 */  addiu      $t3, $t2, 0x8
/* 40778 8003FB78 AFAB0124 */  sw         $t3, 0x124($sp)
/* 4077C 8003FB7C AD4F0000 */  sw         $t7, 0x0($t2)
/* 40780 8003FB80 8FAC0120 */  lw         $t4, 0x120($sp)
/* 40784 8003FB84 3C198009 */  lui        $t9, %hi(D_8008EE80)
/* 40788 8003FB88 3C188009 */  lui        $t8, %hi(D_8008EF1C)
/* 4078C 8003FB8C AD4C0004 */  sw         $t4, 0x4($t2)
/* 40790 8003FB90 8FAD0120 */  lw         $t5, 0x120($sp)
/* 40794 8003FB94 810F0007 */  lb         $t7, 0x7($t0)
/* 40798 8003FB98 3C0A8009 */  lui        $t2, %hi(D_8008EF28)
/* 4079C 8003FB9C 254AEF28 */  addiu      $t2, $t2, %lo(D_8008EF28)
/* 407A0 8003FBA0 240C0096 */  addiu      $t4, $zero, 0x96
/* 407A4 8003FBA4 2718EF1C */  addiu      $t8, $t8, %lo(D_8008EF1C)
/* 407A8 8003FBA8 2739EE80 */  addiu      $t9, $t9, %lo(D_8008EE80)
/* 407AC 8003FBAC 240B0001 */  addiu      $t3, $zero, 0x1
/* 407B0 8003FBB0 25AE0040 */  addiu      $t6, $t5, 0x40
/* 407B4 8003FBB4 AFAE0120 */  sw         $t6, 0x120($sp)
/* 407B8 8003FBB8 AFAB0020 */  sw         $t3, 0x20($sp)
/* 407BC 8003FBBC AFB90014 */  sw         $t9, 0x14($sp)
/* 407C0 8003FBC0 AFB80010 */  sw         $t8, 0x10($sp)
/* 407C4 8003FBC4 AFAC0028 */  sw         $t4, 0x28($sp)
/* 407C8 8003FBC8 AFAA0018 */  sw         $t2, 0x18($sp)
/* 407CC 8003FBCC AFA0001C */  sw         $zero, 0x1C($sp)
/* 407D0 8003FBD0 81070005 */  lb         $a3, 0x5($t0)
/* 407D4 8003FBD4 27A40124 */  addiu      $a0, $sp, 0x124
/* 407D8 8003FBD8 27A50120 */  addiu      $a1, $sp, 0x120
/* 407DC 8003FBDC 27A6011C */  addiu      $a2, $sp, 0x11C
/* 407E0 8003FBE0 0C0086CE */  jal        func_80021B38
/* 407E4 8003FBE4 AFAF0024 */   sw        $t7, 0x24($sp)
/* 407E8 8003FBE8 8FAD0124 */  lw         $t5, 0x124($sp)
/* 407EC 8003FBEC 3C18ED00 */  lui        $t8, (0xED000020 >> 16)
/* 407F0 8003FBF0 3C19004F */  lui        $t9, (0x4FC39C >> 16)
/* 407F4 8003FBF4 25AE0008 */  addiu      $t6, $t5, 0x8
/* 407F8 8003FBF8 AFAE0124 */  sw         $t6, 0x124($sp)
/* 407FC 8003FBFC 3739C39C */  ori        $t9, $t9, (0x4FC39C & 0xFFFF)
/* 40800 8003FC00 37180020 */  ori        $t8, $t8, (0xED000020 & 0xFFFF)
/* 40804 8003FC04 ADB80000 */  sw         $t8, 0x0($t5)
/* 40808 8003FC08 ADB90004 */  sw         $t9, 0x4($t5)
/* 4080C 8003FC0C 8FAB0128 */  lw         $t3, 0x128($sp)
/* 40810 8003FC10 8FAA0124 */  lw         $t2, 0x124($sp)
/* 40814 8003FC14 AD6A0000 */  sw         $t2, 0x0($t3)
/* 40818 8003FC18 8FAC012C */  lw         $t4, 0x12C($sp)
/* 4081C 8003FC1C 8FAF0120 */  lw         $t7, 0x120($sp)
/* 40820 8003FC20 AD8F0000 */  sw         $t7, 0x0($t4)
/* 40824 8003FC24 8FAE0130 */  lw         $t6, 0x130($sp)
/* 40828 8003FC28 8FAD011C */  lw         $t5, 0x11C($sp)
/* 4082C 8003FC2C ADCD0000 */  sw         $t5, 0x0($t6)
/* 40830 8003FC30 8FBF0034 */  lw         $ra, 0x34($sp)
/* 40834 8003FC34 27BD0128 */  addiu      $sp, $sp, 0x128
/* 40838 8003FC38 03E00008 */  jr         $ra
/* 4083C 8003FC3C 00000000 */   nop

glabel func_8003FC40
/* 40840 8003FC40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 40844 8003FC44 3C028009 */  lui        $v0, %hi(D_8008EF34)
/* 40848 8003FC48 9042EF34 */  lbu        $v0, %lo(D_8008EF34)($v0)
/* 4084C 8003FC4C AFBF002C */  sw         $ra, 0x2C($sp)
/* 40850 8003FC50 AFBE0028 */  sw         $fp, 0x28($sp)
/* 40854 8003FC54 AFB70024 */  sw         $s7, 0x24($sp)
/* 40858 8003FC58 AFB60020 */  sw         $s6, 0x20($sp)
/* 4085C 8003FC5C AFB5001C */  sw         $s5, 0x1C($sp)
/* 40860 8003FC60 AFB40018 */  sw         $s4, 0x18($sp)
/* 40864 8003FC64 AFB30014 */  sw         $s3, 0x14($sp)
/* 40868 8003FC68 AFB20010 */  sw         $s2, 0x10($sp)
/* 4086C 8003FC6C AFB1000C */  sw         $s1, 0xC($sp)
/* 40870 8003FC70 AFB00008 */  sw         $s0, 0x8($sp)
/* 40874 8003FC74 AFA40030 */  sw         $a0, 0x30($sp)
/* 40878 8003FC78 04400013 */  bltz       $v0, .L8003FCC8
/* 4087C 8003FC7C 00401825 */   or        $v1, $v0, $zero
/* 40880 8003FC80 2861001E */  slti       $at, $v1, 0x1E
/* 40884 8003FC84 50200011 */  beql       $at, $zero, .L8003FCCC
/* 40888 8003FC88 24420001 */   addiu     $v0, $v0, 0x1
/* 4088C 8003FC8C 04610004 */  bgez       $v1, .L8003FCA0
/* 40890 8003FC90 306E0001 */   andi      $t6, $v1, 0x1
/* 40894 8003FC94 11C00002 */  beqz       $t6, .L8003FCA0
/* 40898 8003FC98 00000000 */   nop
/* 4089C 8003FC9C 25CEFFFE */  addiu      $t6, $t6, -0x2
.L8003FCA0:
/* 408A0 8003FCA0 15C00009 */  bnez       $t6, .L8003FCC8
/* 408A4 8003FCA4 3C0F8009 */   lui       $t7, %hi(D_8008EF39)
/* 408A8 8003FCA8 91EFEF39 */  lbu        $t7, %lo(D_8008EF39)($t7)
/* 408AC 8003FCAC 3C018009 */  lui        $at, %hi(D_8008EF39)
/* 408B0 8003FCB0 3C198009 */  lui        $t9, %hi(D_8008EF3A)
/* 408B4 8003FCB4 25F8FFFA */  addiu      $t8, $t7, -0x6
/* 408B8 8003FCB8 A038EF39 */  sb         $t8, %lo(D_8008EF39)($at)
/* 408BC 8003FCBC 9339EF3A */  lbu        $t9, %lo(D_8008EF3A)($t9)
/* 408C0 8003FCC0 272EFFF7 */  addiu      $t6, $t9, -0x9
/* 408C4 8003FCC4 A02EEF3A */  sb         $t6, %lo(D_8008EF3A)($at)
.L8003FCC8:
/* 408C8 8003FCC8 24420001 */  addiu      $v0, $v0, 0x1
.L8003FCCC:
/* 408CC 8003FCCC 304F00FF */  andi       $t7, $v0, 0xFF
/* 408D0 8003FCD0 3C018009 */  lui        $at, %hi(D_8008EF34)
/* 408D4 8003FCD4 A02FEF34 */  sb         $t7, %lo(D_8008EF34)($at)
/* 408D8 8003FCD8 2401001E */  addiu      $at, $zero, 0x1E
/* 408DC 8003FCDC 15E10008 */  bne        $t7, $at, .L8003FD00
/* 408E0 8003FCE0 3C0A8039 */   lui       $t2, %hi(D_803891D8)
/* 408E4 8003FCE4 3C018009 */  lui        $at, %hi(D_8008EF39)
/* 408E8 8003FCE8 2418005A */  addiu      $t8, $zero, 0x5A
/* 408EC 8003FCEC 24190087 */  addiu      $t9, $zero, 0x87
/* 408F0 8003FCF0 A038EF39 */  sb         $t8, %lo(D_8008EF39)($at)
/* 408F4 8003FCF4 A039EF3A */  sb         $t9, %lo(D_8008EF3A)($at)
/* 408F8 8003FCF8 3C018009 */  lui        $at, %hi(D_8008EF34)
/* 408FC 8003FCFC A020EF34 */  sb         $zero, %lo(D_8008EF34)($at)
.L8003FD00:
/* 40900 8003FD00 8FAE0030 */  lw         $t6, 0x30($sp)
/* 40904 8003FD04 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 40908 8003FD08 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
/* 4090C 8003FD0C 8DC20000 */  lw         $v0, 0x0($t6)
/* 40910 8003FD10 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
/* 40914 8003FD14 3C0E0050 */  lui        $t6, (0x504240 >> 16)
/* 40918 8003FD18 00402025 */  or         $a0, $v0, $zero
/* 4091C 8003FD1C 24420008 */  addiu      $v0, $v0, 0x8
/* 40920 8003FD20 00402825 */  or         $a1, $v0, $zero
/* 40924 8003FD24 AC8F0000 */  sw         $t7, 0x0($a0)
/* 40928 8003FD28 AC800004 */  sw         $zero, 0x4($a0)
/* 4092C 8003FD2C 24420008 */  addiu      $v0, $v0, 0x8
/* 40930 8003FD30 00403025 */  or         $a2, $v0, $zero
/* 40934 8003FD34 ACA00004 */  sw         $zero, 0x4($a1)
/* 40938 8003FD38 ACB80000 */  sw         $t8, 0x0($a1)
/* 4093C 8003FD3C 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 40940 8003FD40 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 40944 8003FD44 24420008 */  addiu      $v0, $v0, 0x8
/* 40948 8003FD48 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
/* 4094C 8003FD4C ACCE0004 */  sw         $t6, 0x4($a2)
/* 40950 8003FD50 ACD90000 */  sw         $t9, 0x0($a2)
/* 40954 8003FD54 00403825 */  or         $a3, $v0, $zero
/* 40958 8003FD58 3C0FFC11 */  lui        $t7, (0xFC11FE23 >> 16)
/* 4095C 8003FD5C 35EFFE23 */  ori        $t7, $t7, (0xFC11FE23 & 0xFFFF)
/* 40960 8003FD60 24420008 */  addiu      $v0, $v0, 0x8
/* 40964 8003FD64 2418F3F9 */  addiu      $t8, $zero, -0xC07
/* 40968 8003FD68 ACF80004 */  sw         $t8, 0x4($a3)
/* 4096C 8003FD6C ACEF0000 */  sw         $t7, 0x0($a3)
/* 40970 8003FD70 00401825 */  or         $v1, $v0, $zero
/* 40974 8003FD74 3C19FA00 */  lui        $t9, (0xFA000000 >> 16)
/* 40978 8003FD78 AC790000 */  sw         $t9, 0x0($v1)
/* 4097C 8003FD7C 3C0E8009 */  lui        $t6, %hi(D_8008EF38)
/* 40980 8003FD80 91CFEF38 */  lbu        $t7, %lo(D_8008EF38)($t6)
/* 40984 8003FD84 3C198009 */  lui        $t9, %hi(D_8008EF39)
/* 40988 8003FD88 932EEF39 */  lbu        $t6, %lo(D_8008EF39)($t9)
/* 4098C 8003FD8C 000FC600 */  sll        $t8, $t7, 24
/* 40990 8003FD90 24420008 */  addiu      $v0, $v0, 0x8
/* 40994 8003FD94 000E7C00 */  sll        $t7, $t6, 16
/* 40998 8003FD98 030FC825 */  or         $t9, $t8, $t7
/* 4099C 8003FD9C 3C0E8009 */  lui        $t6, %hi(D_8008EF3A)
/* 409A0 8003FDA0 91D8EF3A */  lbu        $t8, %lo(D_8008EF3A)($t6)
/* 409A4 8003FDA4 00402025 */  or         $a0, $v0, $zero
/* 409A8 8003FDA8 24420008 */  addiu      $v0, $v0, 0x8
/* 409AC 8003FDAC 00187A00 */  sll        $t7, $t8, 8
/* 409B0 8003FDB0 032F7025 */  or         $t6, $t9, $t7
/* 409B4 8003FDB4 3C188009 */  lui        $t8, %hi(D_8008EF3B)
/* 409B8 8003FDB8 9319EF3B */  lbu        $t9, %lo(D_8008EF3B)($t8)
/* 409BC 8003FDBC 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
/* 409C0 8003FDC0 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
/* 409C4 8003FDC4 01D97825 */  or         $t7, $t6, $t9
/* 409C8 8003FDC8 AC6F0004 */  sw         $t7, 0x4($v1)
/* 409CC 8003FDCC AC980000 */  sw         $t8, 0x0($a0)
/* 409D0 8003FDD0 AC800004 */  sw         $zero, 0x4($a0)
/* 409D4 8003FDD4 3C0EBA00 */  lui        $t6, (0xBA001001 >> 16)
/* 409D8 8003FDD8 00402825 */  or         $a1, $v0, $zero
/* 409DC 8003FDDC 24420008 */  addiu      $v0, $v0, 0x8
/* 409E0 8003FDE0 35CE1001 */  ori        $t6, $t6, (0xBA001001 & 0xFFFF)
/* 409E4 8003FDE4 ACAE0000 */  sw         $t6, 0x0($a1)
/* 409E8 8003FDE8 00403025 */  or         $a2, $v0, $zero
/* 409EC 8003FDEC 3C19BA00 */  lui        $t9, (0xBA000C02 >> 16)
/* 409F0 8003FDF0 ACA00004 */  sw         $zero, 0x4($a1)
/* 409F4 8003FDF4 37390C02 */  ori        $t9, $t9, (0xBA000C02 & 0xFFFF)
/* 409F8 8003FDF8 24420008 */  addiu      $v0, $v0, 0x8
/* 409FC 8003FDFC ACD90000 */  sw         $t9, 0x0($a2)
/* 40A00 8003FE00 240F2000 */  addiu      $t7, $zero, 0x2000
/* 40A04 8003FE04 00403825 */  or         $a3, $v0, $zero
/* 40A08 8003FE08 ACCF0004 */  sw         $t7, 0x4($a2)
/* 40A0C 8003FE0C 24420008 */  addiu      $v0, $v0, 0x8
/* 40A10 8003FE10 3C18BA00 */  lui        $t8, (0xBA000903 >> 16)
/* 40A14 8003FE14 37180903 */  ori        $t8, $t8, (0xBA000903 & 0xFFFF)
/* 40A18 8003FE18 240E0C00 */  addiu      $t6, $zero, 0xC00
/* 40A1C 8003FE1C 00402025 */  or         $a0, $v0, $zero
/* 40A20 8003FE20 ACEE0004 */  sw         $t6, 0x4($a3)
/* 40A24 8003FE24 ACF80000 */  sw         $t8, 0x0($a3)
/* 40A28 8003FE28 3C19BA00 */  lui        $t9, (0xBA000E02 >> 16)
/* 40A2C 8003FE2C 37390E02 */  ori        $t9, $t9, (0xBA000E02 & 0xFFFF)
/* 40A30 8003FE30 3C1F0400 */  lui        $ra, (0x4000400 >> 16)
/* 40A34 8003FE34 3C140008 */  lui        $s4, (0x80200 >> 16)
/* 40A38 8003FE38 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 40A3C 8003FE3C 3C0BFD88 */  lui        $t3, (0xFD88003F >> 16)
/* 40A40 8003FE40 AC990000 */  sw         $t9, 0x0($a0)
/* 40A44 8003FE44 AC800004 */  sw         $zero, 0x4($a0)
/* 40A48 8003FE48 24420008 */  addiu      $v0, $v0, 0x8
/* 40A4C 8003FE4C 356B003F */  ori        $t3, $t3, (0xFD88003F & 0xFFFF)
/* 40A50 8003FE50 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 40A54 8003FE54 36940200 */  ori        $s4, $s4, (0x80200 & 0xFFFF)
/* 40A58 8003FE58 37FF0400 */  ori        $ra, $ra, (0x4000400 & 0xFFFF)
/* 40A5C 8003FE5C 00001825 */  or         $v1, $zero, $zero
/* 40A60 8003FE60 254A91D8 */  addiu      $t2, $t2, %lo(D_803891D8)
/* 40A64 8003FE64 3C1EB300 */  lui        $fp, (0xB3000000 >> 16)
/* 40A68 8003FE68 3C17B400 */  lui        $s7, (0xB4000000 >> 16)
/* 40A6C 8003FE6C 3C16E400 */  lui        $s6, (0xE400030C >> 16)
/* 40A70 8003FE70 3C15F200 */  lui        $s5, (0xF2000000 >> 16)
/* 40A74 8003FE74 3C13F580 */  lui        $s3, (0xF5800000 >> 16)
/* 40A78 8003FE78 3C120700 */  lui        $s2, (0x70001C8 >> 16)
/* 40A7C 8003FE7C 3C11F400 */  lui        $s1, (0xF4000000 >> 16)
/* 40A80 8003FE80 3C10E600 */  lui        $s0, (0xE6000000 >> 16)
/* 40A84 8003FE84 3C0CF588 */  lui        $t4, (0xF5880000 >> 16)
.L8003FE88:
/* 40A88 8003FE88 00634023 */  subu       $t0, $v1, $v1
/* 40A8C 8003FE8C 25080040 */  addiu      $t0, $t0, 0x40
/* 40A90 8003FE90 00087843 */  sra        $t7, $t0, 1
/* 40A94 8003FE94 25E80007 */  addiu      $t0, $t7, 0x7
/* 40A98 8003FE98 0008C0C3 */  sra        $t8, $t0, 3
/* 40A9C 8003FE9C 00402025 */  or         $a0, $v0, $zero
/* 40AA0 8003FEA0 24420008 */  addiu      $v0, $v0, 0x8
/* 40AA4 8003FEA4 330E01FF */  andi       $t6, $t8, 0x1FF
/* 40AA8 8003FEA8 000E4240 */  sll        $t0, $t6, 9
/* 40AAC 8003FEAC 00402825 */  or         $a1, $v0, $zero
/* 40AB0 8003FEB0 24420008 */  addiu      $v0, $v0, 0x8
/* 40AB4 8003FEB4 010C7825 */  or         $t7, $t0, $t4
/* 40AB8 8003FEB8 0003C040 */  sll        $t8, $v1, 1
/* 40ABC 8003FEBC AC8B0000 */  sw         $t3, 0x0($a0)
/* 40AC0 8003FEC0 AC8A0004 */  sw         $t2, 0x4($a0)
/* 40AC4 8003FEC4 ACAF0000 */  sw         $t7, 0x0($a1)
/* 40AC8 8003FEC8 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 40ACC 8003FECC 00403025 */  or         $a2, $v0, $zero
/* 40AD0 8003FED0 000ECB00 */  sll        $t9, $t6, 12
/* 40AD4 8003FED4 ACAD0004 */  sw         $t5, 0x4($a1)
/* 40AD8 8003FED8 2469003F */  addiu      $t1, $v1, 0x3F
/* 40ADC 8003FEDC 0009C040 */  sll        $t8, $t1, 1
/* 40AE0 8003FEE0 03317825 */  or         $t7, $t9, $s1
/* 40AE4 8003FEE4 24420008 */  addiu      $v0, $v0, 0x8
/* 40AE8 8003FEE8 00403825 */  or         $a3, $v0, $zero
/* 40AEC 8003FEEC 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 40AF0 8003FEF0 ACC00004 */  sw         $zero, 0x4($a2)
/* 40AF4 8003FEF4 ACD00000 */  sw         $s0, 0x0($a2)
/* 40AF8 8003FEF8 ACEF0000 */  sw         $t7, 0x0($a3)
/* 40AFC 8003FEFC 000ECB00 */  sll        $t9, $t6, 12
/* 40B00 8003FF00 03327825 */  or         $t7, $t9, $s2
/* 40B04 8003FF04 35F801C8 */  ori        $t8, $t7, (0x70001C8 & 0xFFFF)
/* 40B08 8003FF08 24420008 */  addiu      $v0, $v0, 0x8
/* 40B0C 8003FF0C 00402025 */  or         $a0, $v0, $zero
/* 40B10 8003FF10 ACF80004 */  sw         $t8, 0x4($a3)
/* 40B14 8003FF14 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 40B18 8003FF18 AC8E0000 */  sw         $t6, 0x0($a0)
/* 40B1C 8003FF1C 24420008 */  addiu      $v0, $v0, 0x8
/* 40B20 8003FF20 00037880 */  sll        $t7, $v1, 2
/* 40B24 8003FF24 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 40B28 8003FF28 00402825 */  or         $a1, $v0, $zero
/* 40B2C 8003FF2C AC800004 */  sw         $zero, 0x4($a0)
/* 40B30 8003FF30 0113C825 */  or         $t9, $t0, $s3
/* 40B34 8003FF34 ACB90000 */  sw         $t9, 0x0($a1)
/* 40B38 8003FF38 00187300 */  sll        $t6, $t8, 12
/* 40B3C 8003FF3C 01D5C825 */  or         $t9, $t6, $s5
/* 40B40 8003FF40 24420008 */  addiu      $v0, $v0, 0x8
/* 40B44 8003FF44 00097880 */  sll        $t7, $t1, 2
/* 40B48 8003FF48 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 40B4C 8003FF4C 00403025 */  or         $a2, $v0, $zero
/* 40B50 8003FF50 ACB40004 */  sw         $s4, 0x4($a1)
/* 40B54 8003FF54 ACD90000 */  sw         $t9, 0x0($a2)
/* 40B58 8003FF58 00187300 */  sll        $t6, $t8, 12
/* 40B5C 8003FF5C 35D901C8 */  ori        $t9, $t6, 0x1C8
/* 40B60 8003FF60 246F0049 */  addiu      $t7, $v1, 0x49
/* 40B64 8003FF64 000FC080 */  sll        $t8, $t7, 2
/* 40B68 8003FF68 ACD90004 */  sw         $t9, 0x4($a2)
/* 40B6C 8003FF6C 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 40B70 8003FF70 000ECB00 */  sll        $t9, $t6, 12
/* 40B74 8003FF74 03367825 */  or         $t7, $t9, $s6
/* 40B78 8003FF78 24420008 */  addiu      $v0, $v0, 0x8
/* 40B7C 8003FF7C 35F8030C */  ori        $t8, $t7, (0xE400030C & 0xFFFF)
/* 40B80 8003FF80 246E0009 */  addiu      $t6, $v1, 0x9
/* 40B84 8003FF84 000EC880 */  sll        $t9, $t6, 2
/* 40B88 8003FF88 00403825 */  or         $a3, $v0, $zero
/* 40B8C 8003FF8C ACF80000 */  sw         $t8, 0x0($a3)
/* 40B90 8003FF90 332F0FFF */  andi       $t7, $t9, 0xFFF
/* 40B94 8003FF94 000FC300 */  sll        $t8, $t7, 12
/* 40B98 8003FF98 24420008 */  addiu      $v0, $v0, 0x8
/* 40B9C 8003FF9C 00402025 */  or         $a0, $v0, $zero
/* 40BA0 8003FFA0 370E016C */  ori        $t6, $t8, 0x16C
/* 40BA4 8003FFA4 ACEE0004 */  sw         $t6, 0x4($a3)
/* 40BA8 8003FFA8 24420008 */  addiu      $v0, $v0, 0x8
/* 40BAC 8003FFAC 00607825 */  or         $t7, $v1, $zero
/* 40BB0 8003FFB0 000FC540 */  sll        $t8, $t7, 21
/* 40BB4 8003FFB4 00402825 */  or         $a1, $v0, $zero
/* 40BB8 8003FFB8 24630040 */  addiu      $v1, $v1, 0x40
/* 40BBC 8003FFBC 24010080 */  addiu      $at, $zero, 0x80
/* 40BC0 8003FFC0 AC980004 */  sw         $t8, 0x4($a0)
/* 40BC4 8003FFC4 AC970000 */  sw         $s7, 0x0($a0)
/* 40BC8 8003FFC8 ACBF0004 */  sw         $ra, 0x4($a1)
/* 40BCC 8003FFCC ACBE0000 */  sw         $fp, 0x0($a1)
/* 40BD0 8003FFD0 1461FFAD */  bne        $v1, $at, .L8003FE88
/* 40BD4 8003FFD4 24420008 */   addiu     $v0, $v0, 0x8
/* 40BD8 8003FFD8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 40BDC 8003FFDC ADC20000 */  sw         $v0, 0x0($t6)
/* 40BE0 8003FFE0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 40BE4 8003FFE4 8FBE0028 */  lw         $fp, 0x28($sp)
/* 40BE8 8003FFE8 8FB70024 */  lw         $s7, 0x24($sp)
/* 40BEC 8003FFEC 8FB60020 */  lw         $s6, 0x20($sp)
/* 40BF0 8003FFF0 8FB5001C */  lw         $s5, 0x1C($sp)
/* 40BF4 8003FFF4 8FB40018 */  lw         $s4, 0x18($sp)
/* 40BF8 8003FFF8 8FB30014 */  lw         $s3, 0x14($sp)
/* 40BFC 8003FFFC 8FB20010 */  lw         $s2, 0x10($sp)
/* 40C00 80040000 8FB1000C */  lw         $s1, 0xC($sp)
/* 40C04 80040004 8FB00008 */  lw         $s0, 0x8($sp)
/* 40C08 80040008 03E00008 */  jr         $ra
/* 40C0C 8004000C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80040010
/* 40C10 80040010 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 40C14 80040014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40C18 80040018 8C8E0000 */  lw         $t6, 0x0($a0)
/* 40C1C 8004001C 3C0B8014 */  lui        $t3, %hi(D_8013FF95)
/* 40C20 80040020 916BFF95 */  lbu        $t3, %lo(D_8013FF95)($t3)
/* 40C24 80040024 240F0030 */  addiu      $t7, $zero, 0x30
/* 40C28 80040028 24180035 */  addiu      $t8, $zero, 0x35
/* 40C2C 8004002C 24190030 */  addiu      $t9, $zero, 0x30
/* 40C30 80040030 24080035 */  addiu      $t0, $zero, 0x35
/* 40C34 80040034 2409002B */  addiu      $t1, $zero, 0x2B
/* 40C38 80040038 240A007A */  addiu      $t2, $zero, 0x7A
/* 40C3C 8004003C 2D61000A */  sltiu      $at, $t3, 0xA
/* 40C40 80040040 00803025 */  or         $a2, $a0, $zero
/* 40C44 80040044 A7AA0022 */  sh         $t2, 0x22($sp)
/* 40C48 80040048 A7A90020 */  sh         $t1, 0x20($sp)
/* 40C4C 8004004C A7A8001E */  sh         $t0, 0x1E($sp)
/* 40C50 80040050 A7B9001C */  sh         $t9, 0x1C($sp)
/* 40C54 80040054 A7B8001A */  sh         $t8, 0x1A($sp)
/* 40C58 80040058 A7AF0018 */  sh         $t7, 0x18($sp)
/* 40C5C 8004005C AFA00028 */  sw         $zero, 0x28($sp)
/* 40C60 80040060 AFA00024 */  sw         $zero, 0x24($sp)
/* 40C64 80040064 10200029 */  beqz       $at, .L8004010C
/* 40C68 80040068 AFAE002C */   sw        $t6, 0x2C($sp)
/* 40C6C 8004006C 000B5880 */  sll        $t3, $t3, 2
/* 40C70 80040070 3C018009 */  lui        $at, %hi(jtbl_800976AC_main)
/* 40C74 80040074 002B0821 */  addu       $at, $at, $t3
/* 40C78 80040078 8C2B76AC */  lw         $t3, %lo(jtbl_800976AC_main)($at)
/* 40C7C 8004007C 01600008 */  jr         $t3
/* 40C80 80040080 00000000 */   nop
glabel L80040084
/* 40C84 80040084 3C0C803A */  lui        $t4, %hi(D_803A4478)
/* 40C88 80040088 3C0D803A */  lui        $t5, %hi(D_803A4978)
/* 40C8C 8004008C 258C4478 */  addiu      $t4, $t4, %lo(D_803A4478)
/* 40C90 80040090 25AD4978 */  addiu      $t5, $t5, %lo(D_803A4978)
/* 40C94 80040094 AFAC0024 */  sw         $t4, 0x24($sp)
/* 40C98 80040098 1000001C */  b          .L8004010C
/* 40C9C 8004009C AFAD0028 */   sw        $t5, 0x28($sp)
glabel L800400A0
/* 40CA0 800400A0 3C0E803A */  lui        $t6, %hi(D_803A3A28)
/* 40CA4 800400A4 3C0F803A */  lui        $t7, %hi(D_803A3F28)
/* 40CA8 800400A8 25CE3A28 */  addiu      $t6, $t6, %lo(D_803A3A28)
/* 40CAC 800400AC 25EF3F28 */  addiu      $t7, $t7, %lo(D_803A3F28)
/* 40CB0 800400B0 AFAE0024 */  sw         $t6, 0x24($sp)
/* 40CB4 800400B4 10000015 */  b          .L8004010C
/* 40CB8 800400B8 AFAF0028 */   sw        $t7, 0x28($sp)
glabel L800400BC
/* 40CBC 800400BC 3C18803A */  lui        $t8, %hi(D_803A3F50)
/* 40CC0 800400C0 3C19803A */  lui        $t9, %hi(D_803A4450)
/* 40CC4 800400C4 27183F50 */  addiu      $t8, $t8, %lo(D_803A3F50)
/* 40CC8 800400C8 27394450 */  addiu      $t9, $t9, %lo(D_803A4450)
/* 40CCC 800400CC AFB80024 */  sw         $t8, 0x24($sp)
/* 40CD0 800400D0 1000000E */  b          .L8004010C
/* 40CD4 800400D4 AFB90028 */   sw        $t9, 0x28($sp)
glabel L800400D8
/* 40CD8 800400D8 3C08803A */  lui        $t0, %hi(D_803A49A0)
/* 40CDC 800400DC 3C09803A */  lui        $t1, %hi(D_803A4EA0)
/* 40CE0 800400E0 250849A0 */  addiu      $t0, $t0, %lo(D_803A49A0)
/* 40CE4 800400E4 25294EA0 */  addiu      $t1, $t1, %lo(D_803A4EA0)
/* 40CE8 800400E8 AFA80024 */  sw         $t0, 0x24($sp)
/* 40CEC 800400EC 10000007 */  b          .L8004010C
/* 40CF0 800400F0 AFA90028 */   sw        $t1, 0x28($sp)
glabel L800400F4
/* 40CF4 800400F4 3C0A803A */  lui        $t2, %hi(D_803A4EC8)
/* 40CF8 800400F8 3C0B803A */  lui        $t3, %hi(D_803A53C8)
/* 40CFC 800400FC 254A4EC8 */  addiu      $t2, $t2, %lo(D_803A4EC8)
/* 40D00 80040100 256B53C8 */  addiu      $t3, $t3, %lo(D_803A53C8)
/* 40D04 80040104 AFAA0024 */  sw         $t2, 0x24($sp)
/* 40D08 80040108 AFAB0028 */  sw         $t3, 0x28($sp)
.L8004010C:
/* 40D0C 8004010C 27A4002C */  addiu      $a0, $sp, 0x2C
/* 40D10 80040110 27A50018 */  addiu      $a1, $sp, 0x18
/* 40D14 80040114 0C0150A4 */  jal        func_80054290
/* 40D18 80040118 AFA60030 */   sw        $a2, 0x30($sp)
/* 40D1C 8004011C 8FA60030 */  lw         $a2, 0x30($sp)
/* 40D20 80040120 8FAC002C */  lw         $t4, 0x2C($sp)
/* 40D24 80040124 ACCC0000 */  sw         $t4, 0x0($a2)
/* 40D28 80040128 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40D2C 8004012C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 40D30 80040130 03E00008 */  jr         $ra
/* 40D34 80040134 00000000 */   nop

glabel func_80040138
/* 40D38 80040138 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 40D3C 8004013C 240E0006 */  addiu      $t6, $zero, 0x6
/* 40D40 80040140 3C19801A */  lui        $t9, %hi(D_8019E6A8)
/* 40D44 80040144 9339E6A8 */  lbu        $t9, %lo(D_8019E6A8)($t9)
/* 40D48 80040148 AFBF003C */  sw         $ra, 0x3C($sp)
/* 40D4C 8004014C AFBE0038 */  sw         $fp, 0x38($sp)
/* 40D50 80040150 AFB70034 */  sw         $s7, 0x34($sp)
/* 40D54 80040154 AFB60030 */  sw         $s6, 0x30($sp)
/* 40D58 80040158 AFB5002C */  sw         $s5, 0x2C($sp)
/* 40D5C 8004015C AFB40028 */  sw         $s4, 0x28($sp)
/* 40D60 80040160 AFB30024 */  sw         $s3, 0x24($sp)
/* 40D64 80040164 AFB20020 */  sw         $s2, 0x20($sp)
/* 40D68 80040168 AFB1001C */  sw         $s1, 0x1C($sp)
/* 40D6C 8004016C AFB00018 */  sw         $s0, 0x18($sp)
/* 40D70 80040170 AFA40068 */  sw         $a0, 0x68($sp)
/* 40D74 80040174 A3AE0060 */  sb         $t6, 0x60($sp)
/* 40D78 80040178 8C980000 */  lw         $t8, 0x0($a0)
/* 40D7C 8004017C 3C028014 */  lui        $v0, %hi(D_8013FF95)
/* 40D80 80040180 1320000D */  beqz       $t9, .L800401B8
/* 40D84 80040184 AFB80064 */   sw        $t8, 0x64($sp)
/* 40D88 80040188 24080005 */  addiu      $t0, $zero, 0x5
/* 40D8C 8004018C 3C1E8009 */  lui        $fp, %hi(D_8008EED8)
/* 40D90 80040190 3C178009 */  lui        $s7, %hi(D_8008EEB0)
/* 40D94 80040194 3C168009 */  lui        $s6, %hi(D_8008EE90)
/* 40D98 80040198 3C158009 */  lui        $s5, %hi(D_8008EEA4)
/* 40D9C 8004019C 26B5EEA4 */  addiu      $s5, $s5, %lo(D_8008EEA4)
/* 40DA0 800401A0 26D6EE90 */  addiu      $s6, $s6, %lo(D_8008EE90)
/* 40DA4 800401A4 26F7EEB0 */  addiu      $s7, $s7, %lo(D_8008EEB0)
/* 40DA8 800401A8 27DEEED8 */  addiu      $fp, $fp, %lo(D_8008EED8)
/* 40DAC 800401AC A3A80060 */  sb         $t0, 0x60($sp)
/* 40DB0 800401B0 100000BB */  b          .L800404A0
/* 40DB4 800401B4 24140001 */   addiu     $s4, $zero, 0x1
.L800401B8:
/* 40DB8 800401B8 8042FF95 */  lb         $v0, %lo(D_8013FF95)($v0)
/* 40DBC 800401BC 24100009 */  addiu      $s0, $zero, 0x9
/* 40DC0 800401C0 24120002 */  addiu      $s2, $zero, 0x2
/* 40DC4 800401C4 14400041 */  bnez       $v0, .L800402CC
/* 40DC8 800401C8 24110002 */   addiu     $s1, $zero, 0x2
/* 40DCC 800401CC 3C1E8009 */  lui        $fp, %hi(D_8008EED8)
/* 40DD0 800401D0 3C178009 */  lui        $s7, %hi(D_8008EEB0)
/* 40DD4 800401D4 3C168009 */  lui        $s6, %hi(D_8008EE90)
/* 40DD8 800401D8 3C158009 */  lui        $s5, %hi(D_8008EEA4)
/* 40DDC 800401DC 26B5EEA4 */  addiu      $s5, $s5, %lo(D_8008EEA4)
/* 40DE0 800401E0 26D6EE90 */  addiu      $s6, $s6, %lo(D_8008EE90)
/* 40DE4 800401E4 26F7EEB0 */  addiu      $s7, $s7, %lo(D_8008EEB0)
/* 40DE8 800401E8 27DEEED8 */  addiu      $fp, $fp, %lo(D_8008EED8)
/* 40DEC 800401EC 24140001 */  addiu      $s4, $zero, 0x1
/* 40DF0 800401F0 02B04821 */  addu       $t1, $s5, $s0
.L800401F4:
/* 40DF4 800401F4 912A0000 */  lbu        $t2, 0x0($t1)
/* 40DF8 800401F8 568A0024 */  bnel       $s4, $t2, .L8004028C
/* 40DFC 800401FC 2610FFFF */   addiu     $s0, $s0, -0x1
/* 40E00 80040200 12200018 */  beqz       $s1, .L80040264
/* 40E04 80040204 240B0028 */   addiu     $t3, $zero, 0x28
/* 40E08 80040208 00117840 */  sll        $t7, $s1, 1
/* 40E0C 8004020C 00101080 */  sll        $v0, $s0, 2
/* 40E10 80040210 02CFC021 */  addu       $t8, $s6, $t7
/* 40E14 80040214 A7AB004C */  sh         $t3, 0x4C($sp)
/* 40E18 80040218 240C0019 */  addiu      $t4, $zero, 0x19
/* 40E1C 8004021C 97190000 */  lhu        $t9, 0x0($t8)
/* 40E20 80040220 A7AC004E */  sh         $t4, 0x4E($sp)
/* 40E24 80040224 03C25821 */  addu       $t3, $fp, $v0
/* 40E28 80040228 02E24821 */  addu       $t1, $s7, $v0
/* 40E2C 8004022C 8D2A0000 */  lw         $t2, 0x0($t1)
/* 40E30 80040230 8D6C0000 */  lw         $t4, 0x0($t3)
/* 40E34 80040234 240D0026 */  addiu      $t5, $zero, 0x26
/* 40E38 80040238 240E0019 */  addiu      $t6, $zero, 0x19
/* 40E3C 8004023C 24080091 */  addiu      $t0, $zero, 0x91
/* 40E40 80040240 A7A80056 */  sh         $t0, 0x56($sp)
/* 40E44 80040244 A7AE0052 */  sh         $t6, 0x52($sp)
/* 40E48 80040248 A7AD0050 */  sh         $t5, 0x50($sp)
/* 40E4C 8004024C 27A40064 */  addiu      $a0, $sp, 0x64
/* 40E50 80040250 27A5004C */  addiu      $a1, $sp, 0x4C
/* 40E54 80040254 A7B90054 */  sh         $t9, 0x54($sp)
/* 40E58 80040258 AFAA0058 */  sw         $t2, 0x58($sp)
/* 40E5C 8004025C 0C012961 */  jal        func_8004A584
/* 40E60 80040260 AFAC005C */   sw        $t4, 0x5C($sp)
.L80040264:
/* 40E64 80040264 3C01801A */  lui        $at, %hi(D_8019E6F0)
/* 40E68 80040268 00320821 */  addu       $at, $at, $s2
/* 40E6C 8004026C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 40E70 80040270 2652FFFF */  addiu      $s2, $s2, -0x1
/* 40E74 80040274 00116E00 */  sll        $t5, $s1, 24
/* 40E78 80040278 00127E00 */  sll        $t7, $s2, 24
/* 40E7C 8004027C 000D8E03 */  sra        $s1, $t5, 24
/* 40E80 80040280 A030E6F0 */  sb         $s0, %lo(D_8019E6F0)($at)
/* 40E84 80040284 000F9603 */  sra        $s2, $t7, 24
/* 40E88 80040288 2610FFFF */  addiu      $s0, $s0, -0x1
.L8004028C:
/* 40E8C 8004028C 0010CE00 */  sll        $t9, $s0, 24
/* 40E90 80040290 00198603 */  sra        $s0, $t9, 24
/* 40E94 80040294 06000003 */  bltz       $s0, .L800402A4
/* 40E98 80040298 00000000 */   nop
/* 40E9C 8004029C 0623FFD5 */  bgezl      $s1, .L800401F4
/* 40EA0 800402A0 02B04821 */   addu      $t1, $s5, $s0
.L800402A4:
/* 40EA4 800402A4 3C158009 */  lui        $s5, %hi(D_8008EEA4)
/* 40EA8 800402A8 3C168009 */  lui        $s6, %hi(D_8008EE90)
/* 40EAC 800402AC 3C178009 */  lui        $s7, %hi(D_8008EEB0)
/* 40EB0 800402B0 3C1E8009 */  lui        $fp, %hi(D_8008EED8)
/* 40EB4 800402B4 27DEEED8 */  addiu      $fp, $fp, %lo(D_8008EED8)
/* 40EB8 800402B8 26F7EEB0 */  addiu      $s7, $s7, %lo(D_8008EEB0)
/* 40EBC 800402BC 26D6EE90 */  addiu      $s6, $s6, %lo(D_8008EE90)
/* 40EC0 800402C0 26B5EEA4 */  addiu      $s5, $s5, %lo(D_8008EEA4)
/* 40EC4 800402C4 10000076 */  b          .L800404A0
/* 40EC8 800402C8 24140001 */   addiu     $s4, $zero, 0x1
.L800402CC:
/* 40ECC 800402CC 2450FFFF */  addiu      $s0, $v0, -0x1
/* 40ED0 800402D0 00104E00 */  sll        $t1, $s0, 24
/* 40ED4 800402D4 00098603 */  sra        $s0, $t1, 24
/* 40ED8 800402D8 24120002 */  addiu      $s2, $zero, 0x2
/* 40EDC 800402DC 06000037 */  bltz       $s0, .L800403BC
/* 40EE0 800402E0 24110002 */   addiu     $s1, $zero, 0x2
/* 40EE4 800402E4 3C1E8009 */  lui        $fp, %hi(D_8008EED8)
/* 40EE8 800402E8 3C178009 */  lui        $s7, %hi(D_8008EEB0)
/* 40EEC 800402EC 3C168009 */  lui        $s6, %hi(D_8008EE90)
/* 40EF0 800402F0 3C158009 */  lui        $s5, %hi(D_8008EEA4)
/* 40EF4 800402F4 26B5EEA4 */  addiu      $s5, $s5, %lo(D_8008EEA4)
/* 40EF8 800402F8 26D6EE90 */  addiu      $s6, $s6, %lo(D_8008EE90)
/* 40EFC 800402FC 26F7EEB0 */  addiu      $s7, $s7, %lo(D_8008EEB0)
/* 40F00 80040300 27DEEED8 */  addiu      $fp, $fp, %lo(D_8008EED8)
/* 40F04 80040304 24140001 */  addiu      $s4, $zero, 0x1
/* 40F08 80040308 02B05821 */  addu       $t3, $s5, $s0
.L8004030C:
/* 40F0C 8004030C 916C0000 */  lbu        $t4, 0x0($t3)
/* 40F10 80040310 568C0024 */  bnel       $s4, $t4, .L800403A4
/* 40F14 80040314 2610FFFF */   addiu     $s0, $s0, -0x1
/* 40F18 80040318 12200018 */  beqz       $s1, .L8004037C
/* 40F1C 8004031C 240D0028 */   addiu     $t5, $zero, 0x28
/* 40F20 80040320 0011C840 */  sll        $t9, $s1, 1
/* 40F24 80040324 00101080 */  sll        $v0, $s0, 2
/* 40F28 80040328 02D94021 */  addu       $t0, $s6, $t9
/* 40F2C 8004032C A7AD004C */  sh         $t5, 0x4C($sp)
/* 40F30 80040330 240E0019 */  addiu      $t6, $zero, 0x19
/* 40F34 80040334 95090000 */  lhu        $t1, 0x0($t0)
/* 40F38 80040338 A7AE004E */  sh         $t6, 0x4E($sp)
/* 40F3C 8004033C 03C26821 */  addu       $t5, $fp, $v0
/* 40F40 80040340 02E25821 */  addu       $t3, $s7, $v0
/* 40F44 80040344 8D6C0000 */  lw         $t4, 0x0($t3)
/* 40F48 80040348 8DAE0000 */  lw         $t6, 0x0($t5)
/* 40F4C 8004034C 240F0026 */  addiu      $t7, $zero, 0x26
/* 40F50 80040350 24180019 */  addiu      $t8, $zero, 0x19
/* 40F54 80040354 240A0091 */  addiu      $t2, $zero, 0x91
/* 40F58 80040358 A7AA0056 */  sh         $t2, 0x56($sp)
/* 40F5C 8004035C A7B80052 */  sh         $t8, 0x52($sp)
/* 40F60 80040360 A7AF0050 */  sh         $t7, 0x50($sp)
/* 40F64 80040364 27A40064 */  addiu      $a0, $sp, 0x64
/* 40F68 80040368 27A5004C */  addiu      $a1, $sp, 0x4C
/* 40F6C 8004036C A7A90054 */  sh         $t1, 0x54($sp)
/* 40F70 80040370 AFAC0058 */  sw         $t4, 0x58($sp)
/* 40F74 80040374 0C012961 */  jal        func_8004A584
/* 40F78 80040378 AFAE005C */   sw        $t6, 0x5C($sp)
.L8004037C:
/* 40F7C 8004037C 3C01801A */  lui        $at, %hi(D_8019E6F0)
/* 40F80 80040380 00320821 */  addu       $at, $at, $s2
/* 40F84 80040384 2631FFFF */  addiu      $s1, $s1, -0x1
/* 40F88 80040388 2652FFFF */  addiu      $s2, $s2, -0x1
/* 40F8C 8004038C 00117E00 */  sll        $t7, $s1, 24
/* 40F90 80040390 0012CE00 */  sll        $t9, $s2, 24
/* 40F94 80040394 000F8E03 */  sra        $s1, $t7, 24
/* 40F98 80040398 A030E6F0 */  sb         $s0, %lo(D_8019E6F0)($at)
/* 40F9C 8004039C 00199603 */  sra        $s2, $t9, 24
/* 40FA0 800403A0 2610FFFF */  addiu      $s0, $s0, -0x1
.L800403A4:
/* 40FA4 800403A4 00104E00 */  sll        $t1, $s0, 24
/* 40FA8 800403A8 00098603 */  sra        $s0, $t1, 24
/* 40FAC 800403AC 06000003 */  bltz       $s0, .L800403BC
/* 40FB0 800403B0 00000000 */   nop
/* 40FB4 800403B4 0623FFD5 */  bgezl      $s1, .L8004030C
/* 40FB8 800403B8 02B05821 */   addu      $t3, $s5, $s0
.L800403BC:
/* 40FBC 800403BC 3C158009 */  lui        $s5, %hi(D_8008EEA4)
/* 40FC0 800403C0 3C168009 */  lui        $s6, %hi(D_8008EE90)
/* 40FC4 800403C4 3C178009 */  lui        $s7, %hi(D_8008EEB0)
/* 40FC8 800403C8 3C1E8009 */  lui        $fp, %hi(D_8008EED8)
/* 40FCC 800403CC 27DEEED8 */  addiu      $fp, $fp, %lo(D_8008EED8)
/* 40FD0 800403D0 26F7EEB0 */  addiu      $s7, $s7, %lo(D_8008EEB0)
/* 40FD4 800403D4 26D6EE90 */  addiu      $s6, $s6, %lo(D_8008EE90)
/* 40FD8 800403D8 26B5EEA4 */  addiu      $s5, $s5, %lo(D_8008EEA4)
/* 40FDC 800403DC 06200030 */  bltz       $s1, .L800404A0
/* 40FE0 800403E0 24140001 */   addiu     $s4, $zero, 0x1
/* 40FE4 800403E4 0620002E */  bltz       $s1, .L800404A0
/* 40FE8 800403E8 24100009 */   addiu     $s0, $zero, 0x9
/* 40FEC 800403EC 02B05821 */  addu       $t3, $s5, $s0
.L800403F0:
/* 40FF0 800403F0 916C0000 */  lbu        $t4, 0x0($t3)
/* 40FF4 800403F4 568C0024 */  bnel       $s4, $t4, .L80040488
/* 40FF8 800403F8 2610FFFF */   addiu     $s0, $s0, -0x1
/* 40FFC 800403FC 12200018 */  beqz       $s1, .L80040460
/* 41000 80040400 240D0028 */   addiu     $t5, $zero, 0x28
/* 41004 80040404 0011C840 */  sll        $t9, $s1, 1
/* 41008 80040408 00101080 */  sll        $v0, $s0, 2
/* 4100C 8004040C 02D94021 */  addu       $t0, $s6, $t9
/* 41010 80040410 A7AD004C */  sh         $t5, 0x4C($sp)
/* 41014 80040414 240E0019 */  addiu      $t6, $zero, 0x19
/* 41018 80040418 95090000 */  lhu        $t1, 0x0($t0)
/* 4101C 8004041C A7AE004E */  sh         $t6, 0x4E($sp)
/* 41020 80040420 03C26821 */  addu       $t5, $fp, $v0
/* 41024 80040424 02E25821 */  addu       $t3, $s7, $v0
/* 41028 80040428 8D6C0000 */  lw         $t4, 0x0($t3)
/* 4102C 8004042C 8DAE0000 */  lw         $t6, 0x0($t5)
/* 41030 80040430 240F0026 */  addiu      $t7, $zero, 0x26
/* 41034 80040434 24180019 */  addiu      $t8, $zero, 0x19
/* 41038 80040438 240A0091 */  addiu      $t2, $zero, 0x91
/* 4103C 8004043C A7AA0056 */  sh         $t2, 0x56($sp)
/* 41040 80040440 A7B80052 */  sh         $t8, 0x52($sp)
/* 41044 80040444 A7AF0050 */  sh         $t7, 0x50($sp)
/* 41048 80040448 27A40064 */  addiu      $a0, $sp, 0x64
/* 4104C 8004044C 27A5004C */  addiu      $a1, $sp, 0x4C
/* 41050 80040450 A7A90054 */  sh         $t1, 0x54($sp)
/* 41054 80040454 AFAC0058 */  sw         $t4, 0x58($sp)
/* 41058 80040458 0C012961 */  jal        func_8004A584
/* 4105C 8004045C AFAE005C */   sw        $t6, 0x5C($sp)
.L80040460:
/* 41060 80040460 3C01801A */  lui        $at, %hi(D_8019E6F0)
/* 41064 80040464 00320821 */  addu       $at, $at, $s2
/* 41068 80040468 2631FFFF */  addiu      $s1, $s1, -0x1
/* 4106C 8004046C 2652FFFF */  addiu      $s2, $s2, -0x1
/* 41070 80040470 00117E00 */  sll        $t7, $s1, 24
/* 41074 80040474 0012CE00 */  sll        $t9, $s2, 24
/* 41078 80040478 000F8E03 */  sra        $s1, $t7, 24
/* 4107C 8004047C A030E6F0 */  sb         $s0, %lo(D_8019E6F0)($at)
/* 41080 80040480 00199603 */  sra        $s2, $t9, 24
/* 41084 80040484 2610FFFF */  addiu      $s0, $s0, -0x1
.L80040488:
/* 41088 80040488 00104E00 */  sll        $t1, $s0, 24
/* 4108C 8004048C 00098603 */  sra        $s0, $t1, 24
/* 41090 80040490 06000003 */  bltz       $s0, .L800404A0
/* 41094 80040494 00000000 */   nop
/* 41098 80040498 0623FFD5 */  bgezl      $s1, .L800403F0
/* 4109C 8004049C 02B05821 */   addu      $t3, $s5, $s0
.L800404A0:
/* 410A0 800404A0 3C108014 */  lui        $s0, %hi(D_8013FF95)
/* 410A4 800404A4 8210FF95 */  lb         $s0, %lo(D_8013FF95)($s0)
/* 410A8 800404A8 24120003 */  addiu      $s2, $zero, 0x3
/* 410AC 800404AC 24110003 */  addiu      $s1, $zero, 0x3
/* 410B0 800404B0 2A01000A */  slti       $at, $s0, 0xA
/* 410B4 800404B4 10200033 */  beqz       $at, .L80040584
/* 410B8 800404B8 93B30060 */   lbu       $s3, 0x60($sp)
/* 410BC 800404BC 2A610004 */  slti       $at, $s3, 0x4
/* 410C0 800404C0 14200030 */  bnez       $at, .L80040584
/* 410C4 800404C4 02B05821 */   addu      $t3, $s5, $s0
.L800404C8:
/* 410C8 800404C8 916C0000 */  lbu        $t4, 0x0($t3)
/* 410CC 800404CC 266DFFFF */  addiu      $t5, $s3, -0x1
/* 410D0 800404D0 022D082A */  slt        $at, $s1, $t5
/* 410D4 800404D4 568C0024 */  bnel       $s4, $t4, .L80040568
/* 410D8 800404D8 26100001 */   addiu     $s0, $s0, 0x1
/* 410DC 800404DC 10200018 */  beqz       $at, .L80040540
/* 410E0 800404E0 240E0028 */   addiu     $t6, $zero, 0x28
/* 410E4 800404E4 00114040 */  sll        $t0, $s1, 1
/* 410E8 800404E8 00101080 */  sll        $v0, $s0, 2
/* 410EC 800404EC 02C84821 */  addu       $t1, $s6, $t0
/* 410F0 800404F0 A7AE004C */  sh         $t6, 0x4C($sp)
/* 410F4 800404F4 240F0019 */  addiu      $t7, $zero, 0x19
/* 410F8 800404F8 952A0000 */  lhu        $t2, 0x0($t1)
/* 410FC 800404FC A7AF004E */  sh         $t7, 0x4E($sp)
/* 41100 80040500 03C27021 */  addu       $t6, $fp, $v0
/* 41104 80040504 02E26021 */  addu       $t4, $s7, $v0
/* 41108 80040508 8D8D0000 */  lw         $t5, 0x0($t4)
/* 4110C 8004050C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 41110 80040510 24180026 */  addiu      $t8, $zero, 0x26
/* 41114 80040514 24190019 */  addiu      $t9, $zero, 0x19
/* 41118 80040518 240B0091 */  addiu      $t3, $zero, 0x91
/* 4111C 8004051C A7AB0056 */  sh         $t3, 0x56($sp)
/* 41120 80040520 A7B90052 */  sh         $t9, 0x52($sp)
/* 41124 80040524 A7B80050 */  sh         $t8, 0x50($sp)
/* 41128 80040528 27A40064 */  addiu      $a0, $sp, 0x64
/* 4112C 8004052C 27A5004C */  addiu      $a1, $sp, 0x4C
/* 41130 80040530 A7AA0054 */  sh         $t2, 0x54($sp)
/* 41134 80040534 AFAD0058 */  sw         $t5, 0x58($sp)
/* 41138 80040538 0C012961 */  jal        func_8004A584
/* 4113C 8004053C AFAF005C */   sw        $t7, 0x5C($sp)
.L80040540:
/* 41140 80040540 3C01801A */  lui        $at, %hi(D_8019E6F0)
/* 41144 80040544 00320821 */  addu       $at, $at, $s2
/* 41148 80040548 26310001 */  addiu      $s1, $s1, 0x1
/* 4114C 8004054C 26520001 */  addiu      $s2, $s2, 0x1
/* 41150 80040550 0011C600 */  sll        $t8, $s1, 24
/* 41154 80040554 00124600 */  sll        $t0, $s2, 24
/* 41158 80040558 00188E03 */  sra        $s1, $t8, 24
/* 4115C 8004055C A030E6F0 */  sb         $s0, %lo(D_8019E6F0)($at)
/* 41160 80040560 00089603 */  sra        $s2, $t0, 24
/* 41164 80040564 26100001 */  addiu      $s0, $s0, 0x1
.L80040568:
/* 41168 80040568 00105600 */  sll        $t2, $s0, 24
/* 4116C 8004056C 000A8603 */  sra        $s0, $t2, 24
/* 41170 80040570 2A01000A */  slti       $at, $s0, 0xA
/* 41174 80040574 10200003 */  beqz       $at, .L80040584
/* 41178 80040578 0233082A */   slt       $at, $s1, $s3
/* 4117C 8004057C 5420FFD2 */  bnel       $at, $zero, .L800404C8
/* 41180 80040580 02B05821 */   addu      $t3, $s5, $s0
.L80040584:
/* 41184 80040584 93B30060 */  lbu        $s3, 0x60($sp)
/* 41188 80040588 0233082A */  slt        $at, $s1, $s3
/* 4118C 8004058C 10200033 */  beqz       $at, .L8004065C
/* 41190 80040590 0233082A */   slt       $at, $s1, $s3
/* 41194 80040594 10200031 */  beqz       $at, .L8004065C
/* 41198 80040598 00008025 */   or        $s0, $zero, $zero
/* 4119C 8004059C 02B06021 */  addu       $t4, $s5, $s0
.L800405A0:
/* 411A0 800405A0 918D0000 */  lbu        $t5, 0x0($t4)
/* 411A4 800405A4 266EFFFF */  addiu      $t6, $s3, -0x1
/* 411A8 800405A8 022E082A */  slt        $at, $s1, $t6
/* 411AC 800405AC 568D0024 */  bnel       $s4, $t5, .L80040640
/* 411B0 800405B0 26100001 */   addiu     $s0, $s0, 0x1
/* 411B4 800405B4 10200018 */  beqz       $at, .L80040618
/* 411B8 800405B8 240F0028 */   addiu     $t7, $zero, 0x28
/* 411BC 800405BC 00114840 */  sll        $t1, $s1, 1
/* 411C0 800405C0 00101080 */  sll        $v0, $s0, 2
/* 411C4 800405C4 02C95021 */  addu       $t2, $s6, $t1
/* 411C8 800405C8 A7AF004C */  sh         $t7, 0x4C($sp)
/* 411CC 800405CC 24180019 */  addiu      $t8, $zero, 0x19
/* 411D0 800405D0 954B0000 */  lhu        $t3, 0x0($t2)
/* 411D4 800405D4 A7B8004E */  sh         $t8, 0x4E($sp)
/* 411D8 800405D8 03C27821 */  addu       $t7, $fp, $v0
/* 411DC 800405DC 02E26821 */  addu       $t5, $s7, $v0
/* 411E0 800405E0 8DAE0000 */  lw         $t6, 0x0($t5)
/* 411E4 800405E4 8DF80000 */  lw         $t8, 0x0($t7)
/* 411E8 800405E8 24190026 */  addiu      $t9, $zero, 0x26
/* 411EC 800405EC 24080019 */  addiu      $t0, $zero, 0x19
/* 411F0 800405F0 240C0091 */  addiu      $t4, $zero, 0x91
/* 411F4 800405F4 A7AC0056 */  sh         $t4, 0x56($sp)
/* 411F8 800405F8 A7A80052 */  sh         $t0, 0x52($sp)
/* 411FC 800405FC A7B90050 */  sh         $t9, 0x50($sp)
/* 41200 80040600 27A40064 */  addiu      $a0, $sp, 0x64
/* 41204 80040604 27A5004C */  addiu      $a1, $sp, 0x4C
/* 41208 80040608 A7AB0054 */  sh         $t3, 0x54($sp)
/* 4120C 8004060C AFAE0058 */  sw         $t6, 0x58($sp)
/* 41210 80040610 0C012961 */  jal        func_8004A584
/* 41214 80040614 AFB8005C */   sw        $t8, 0x5C($sp)
.L80040618:
/* 41218 80040618 3C01801A */  lui        $at, %hi(D_8019E6F0)
/* 4121C 8004061C 00320821 */  addu       $at, $at, $s2
/* 41220 80040620 26310001 */  addiu      $s1, $s1, 0x1
/* 41224 80040624 26520001 */  addiu      $s2, $s2, 0x1
/* 41228 80040628 0011CE00 */  sll        $t9, $s1, 24
/* 4122C 8004062C 00124E00 */  sll        $t1, $s2, 24
/* 41230 80040630 00198E03 */  sra        $s1, $t9, 24
/* 41234 80040634 A030E6F0 */  sb         $s0, %lo(D_8019E6F0)($at)
/* 41238 80040638 00099603 */  sra        $s2, $t1, 24
/* 4123C 8004063C 26100001 */  addiu      $s0, $s0, 0x1
.L80040640:
/* 41240 80040640 00105E00 */  sll        $t3, $s0, 24
/* 41244 80040644 000B8603 */  sra        $s0, $t3, 24
/* 41248 80040648 2A01000A */  slti       $at, $s0, 0xA
/* 4124C 8004064C 10200003 */  beqz       $at, .L8004065C
/* 41250 80040650 0233082A */   slt       $at, $s1, $s3
/* 41254 80040654 5420FFD2 */  bnel       $at, $zero, .L800405A0
/* 41258 80040658 02B06021 */   addu      $t4, $s5, $s0
.L8004065C:
/* 4125C 8004065C 8FAD0064 */  lw         $t5, 0x64($sp)
/* 41260 80040660 8FAE0068 */  lw         $t6, 0x68($sp)
/* 41264 80040664 ADCD0000 */  sw         $t5, 0x0($t6)
/* 41268 80040668 8FBF003C */  lw         $ra, 0x3C($sp)
/* 4126C 8004066C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 41270 80040670 8FB70034 */  lw         $s7, 0x34($sp)
/* 41274 80040674 8FB60030 */  lw         $s6, 0x30($sp)
/* 41278 80040678 8FB5002C */  lw         $s5, 0x2C($sp)
/* 4127C 8004067C 8FB40028 */  lw         $s4, 0x28($sp)
/* 41280 80040680 8FB30024 */  lw         $s3, 0x24($sp)
/* 41284 80040684 8FB20020 */  lw         $s2, 0x20($sp)
/* 41288 80040688 8FB1001C */  lw         $s1, 0x1C($sp)
/* 4128C 8004068C 8FB00018 */  lw         $s0, 0x18($sp)
/* 41290 80040690 03E00008 */  jr         $ra
/* 41294 80040694 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_80040698
/* 41298 80040698 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 4129C 8004069C 3C02801A */  lui        $v0, %hi(D_8019E6A9)
/* 412A0 800406A0 8042E6A9 */  lb         $v0, %lo(D_8019E6A9)($v0)
/* 412A4 800406A4 24010001 */  addiu      $at, $zero, 0x1
/* 412A8 800406A8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 412AC 800406AC AFB70030 */  sw         $s7, 0x30($sp)
/* 412B0 800406B0 AFB6002C */  sw         $s6, 0x2C($sp)
/* 412B4 800406B4 AFB50028 */  sw         $s5, 0x28($sp)
/* 412B8 800406B8 AFB40024 */  sw         $s4, 0x24($sp)
/* 412BC 800406BC AFB30020 */  sw         $s3, 0x20($sp)
/* 412C0 800406C0 AFB2001C */  sw         $s2, 0x1C($sp)
/* 412C4 800406C4 AFB10018 */  sw         $s1, 0x18($sp)
/* 412C8 800406C8 AFB00014 */  sw         $s0, 0x14($sp)
/* 412CC 800406CC 1441000A */  bne        $v0, $at, .L800406F8
/* 412D0 800406D0 AFA40060 */   sw        $a0, 0x60($sp)
/* 412D4 800406D4 3C178009 */  lui        $s7, %hi(D_8008EE8C)
/* 412D8 800406D8 92F7EE8C */  lbu        $s7, %lo(D_8008EE8C)($s7)
/* 412DC 800406DC 00177080 */  sll        $t6, $s7, 2
/* 412E0 800406E0 01D77023 */  subu       $t6, $t6, $s7
/* 412E4 800406E4 000E7080 */  sll        $t6, $t6, 2
/* 412E8 800406E8 01D77023 */  subu       $t6, $t6, $s7
/* 412EC 800406EC 25D8000B */  addiu      $t8, $t6, 0xB
/* 412F0 800406F0 1000000C */  b          .L80040724
/* 412F4 800406F4 A7B80058 */   sh        $t8, 0x58($sp)
.L800406F8:
/* 412F8 800406F8 2401FFFF */  addiu      $at, $zero, -0x1
/* 412FC 800406FC 14410009 */  bne        $v0, $at, .L80040724
/* 41300 80040700 3C178009 */   lui       $s7, %hi(D_8008EE8C)
/* 41304 80040704 92F7EE8C */  lbu        $s7, %lo(D_8008EE8C)($s7)
/* 41308 80040708 00170823 */  negu       $at, $s7
/* 4130C 8004070C 0001C880 */  sll        $t9, $at, 2
/* 41310 80040710 0321C823 */  subu       $t9, $t9, $at
/* 41314 80040714 0019C880 */  sll        $t9, $t9, 2
/* 41318 80040718 0321C823 */  subu       $t9, $t9, $at
/* 4131C 8004071C 2729FFF5 */  addiu      $t1, $t9, -0xB
/* 41320 80040720 A7A90058 */  sh         $t1, 0x58($sp)
.L80040724:
/* 41324 80040724 8FAA0060 */  lw         $t2, 0x60($sp)
/* 41328 80040728 87B70058 */  lh         $s7, 0x58($sp)
/* 4132C 8004072C 3C0DED1F */  lui        $t5, (0xED1FC244 >> 16)
/* 41330 80040730 8D4B0000 */  lw         $t3, 0x0($t2)
/* 41334 80040734 3C0E004A */  lui        $t6, (0x4A42A8 >> 16)
/* 41338 80040738 35CE42A8 */  ori        $t6, $t6, (0x4A42A8 & 0xFFFF)
/* 4133C 8004073C AFAB005C */  sw         $t3, 0x5C($sp)
/* 41340 80040740 256C0008 */  addiu      $t4, $t3, 0x8
/* 41344 80040744 AFAC005C */  sw         $t4, 0x5C($sp)
/* 41348 80040748 35ADC244 */  ori        $t5, $t5, (0xED1FC244 & 0xFFFF)
/* 4134C 8004074C 3C148009 */  lui        $s4, %hi(D_8008EED8)
/* 41350 80040750 3C13801A */  lui        $s3, %hi(D_8019E6F0)
/* 41354 80040754 3C128009 */  lui        $s2, %hi(D_8008EEB0)
/* 41358 80040758 3C118009 */  lui        $s1, %hi(D_8008EE90)
/* 4135C 8004075C 2631EE90 */  addiu      $s1, $s1, %lo(D_8008EE90)
/* 41360 80040760 2652EEB0 */  addiu      $s2, $s2, %lo(D_8008EEB0)
/* 41364 80040764 2673E6F0 */  addiu      $s3, $s3, %lo(D_8019E6F0)
/* 41368 80040768 2694EED8 */  addiu      $s4, $s4, %lo(D_8008EED8)
/* 4136C 8004076C 00008025 */  or         $s0, $zero, $zero
/* 41370 80040770 27B60044 */  addiu      $s6, $sp, 0x44
/* 41374 80040774 27B5005C */  addiu      $s5, $sp, 0x5C
/* 41378 80040778 AD6D0000 */  sw         $t5, 0x0($t3)
/* 4137C 8004077C AD6E0004 */  sw         $t6, 0x4($t3)
/* 41380 80040780 02707021 */  addu       $t6, $s3, $s0
.L80040784:
/* 41384 80040784 91C20000 */  lbu        $v0, 0x0($t6)
/* 41388 80040788 240F0028 */  addiu      $t7, $zero, 0x28
/* 4138C 8004078C A7AF0044 */  sh         $t7, 0x44($sp)
/* 41390 80040790 00104840 */  sll        $t1, $s0, 1
/* 41394 80040794 02295021 */  addu       $t2, $s1, $t1
/* 41398 80040798 24180019 */  addiu      $t8, $zero, 0x19
/* 4139C 8004079C 24080019 */  addiu      $t0, $zero, 0x19
/* 413A0 800407A0 00027880 */  sll        $t7, $v0, 2
/* 413A4 800407A4 954B0000 */  lhu        $t3, 0x0($t2)
/* 413A8 800407A8 A7A8004A */  sh         $t0, 0x4A($sp)
/* 413AC 800407AC A7B80046 */  sh         $t8, 0x46($sp)
/* 413B0 800407B0 24190026 */  addiu      $t9, $zero, 0x26
/* 413B4 800407B4 A7B90048 */  sh         $t9, 0x48($sp)
/* 413B8 800407B8 024FC021 */  addu       $t8, $s2, $t7
/* 413BC 800407BC 028F4021 */  addu       $t0, $s4, $t7
/* 413C0 800407C0 8D090000 */  lw         $t1, 0x0($t0)
/* 413C4 800407C4 8F190000 */  lw         $t9, 0x0($t8)
/* 413C8 800407C8 240D0091 */  addiu      $t5, $zero, 0x91
/* 413CC 800407CC 01776021 */  addu       $t4, $t3, $s7
/* 413D0 800407D0 A7AC004C */  sh         $t4, 0x4C($sp)
/* 413D4 800407D4 A7AD004E */  sh         $t5, 0x4E($sp)
/* 413D8 800407D8 02A02025 */  or         $a0, $s5, $zero
/* 413DC 800407DC 02C02825 */  or         $a1, $s6, $zero
/* 413E0 800407E0 AFA90054 */  sw         $t1, 0x54($sp)
/* 413E4 800407E4 0C012961 */  jal        func_8004A584
/* 413E8 800407E8 AFB90050 */   sw        $t9, 0x50($sp)
/* 413EC 800407EC 26100001 */  addiu      $s0, $s0, 0x1
/* 413F0 800407F0 00105600 */  sll        $t2, $s0, 24
/* 413F4 800407F4 000A8603 */  sra        $s0, $t2, 24
/* 413F8 800407F8 2A010006 */  slti       $at, $s0, 0x6
/* 413FC 800407FC 5420FFE1 */  bnel       $at, $zero, .L80040784
/* 41400 80040800 02707021 */   addu      $t6, $s3, $s0
/* 41404 80040804 8FAC005C */  lw         $t4, 0x5C($sp)
/* 41408 80040808 3C0EED00 */  lui        $t6, (0xED000020 >> 16)
/* 4140C 8004080C 3C0F004F */  lui        $t7, (0x4FC39C >> 16)
/* 41410 80040810 258D0008 */  addiu      $t5, $t4, 0x8
/* 41414 80040814 AFAD005C */  sw         $t5, 0x5C($sp)
/* 41418 80040818 35EFC39C */  ori        $t7, $t7, (0x4FC39C & 0xFFFF)
/* 4141C 8004081C 35CE0020 */  ori        $t6, $t6, (0xED000020 & 0xFFFF)
/* 41420 80040820 AD8E0000 */  sw         $t6, 0x0($t4)
/* 41424 80040824 AD8F0004 */  sw         $t7, 0x4($t4)
/* 41428 80040828 8FB90060 */  lw         $t9, 0x60($sp)
/* 4142C 8004082C 8FB8005C */  lw         $t8, 0x5C($sp)
/* 41430 80040830 AF380000 */  sw         $t8, 0x0($t9)
/* 41434 80040834 8FBF0034 */  lw         $ra, 0x34($sp)
/* 41438 80040838 8FB70030 */  lw         $s7, 0x30($sp)
/* 4143C 8004083C 8FB6002C */  lw         $s6, 0x2C($sp)
/* 41440 80040840 8FB50028 */  lw         $s5, 0x28($sp)
/* 41444 80040844 8FB40024 */  lw         $s4, 0x24($sp)
/* 41448 80040848 8FB30020 */  lw         $s3, 0x20($sp)
/* 4144C 8004084C 8FB2001C */  lw         $s2, 0x1C($sp)
/* 41450 80040850 8FB10018 */  lw         $s1, 0x18($sp)
/* 41454 80040854 8FB00014 */  lw         $s0, 0x14($sp)
/* 41458 80040858 03E00008 */  jr         $ra
/* 4145C 8004085C 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_80040860
/* 41460 80040860 3C0F8014 */  lui        $t7, %hi(D_8013FF95)
/* 41464 80040864 91EFFF95 */  lbu        $t7, %lo(D_8013FF95)($t7)
/* 41468 80040868 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 4146C 8004086C AFBF0014 */  sw         $ra, 0x14($sp)
/* 41470 80040870 8C8E0000 */  lw         $t6, 0x0($a0)
/* 41474 80040874 2DE1000A */  sltiu      $at, $t7, 0xA
/* 41478 80040878 00803025 */  or         $a2, $a0, $zero
/* 4147C 8004087C 102000C4 */  beqz       $at, .L80040B90
/* 41480 80040880 AFAE002C */   sw        $t6, 0x2C($sp)
/* 41484 80040884 000F7880 */  sll        $t7, $t7, 2
/* 41488 80040888 3C018009 */  lui        $at, %hi(jtbl_800976D4_main)
/* 4148C 8004088C 002F0821 */  addu       $at, $at, $t7
/* 41490 80040890 8C2F76D4 */  lw         $t7, %lo(jtbl_800976D4_main)($at)
/* 41494 80040894 01E00008 */  jr         $t7
/* 41498 80040898 00000000 */   nop
glabel L8004089C
/* 4149C 8004089C 3C0C0100 */  lui        $t4, %hi(D_10063C8)
/* 414A0 800408A0 3C0D0100 */  lui        $t5, %hi(D_10069D0)
/* 414A4 800408A4 25AD69D0 */  addiu      $t5, $t5, %lo(D_10069D0)
/* 414A8 800408A8 258C63C8 */  addiu      $t4, $t4, %lo(D_10063C8)
/* 414AC 800408AC 241800C0 */  addiu      $t8, $zero, 0xC0
/* 414B0 800408B0 24190010 */  addiu      $t9, $zero, 0x10
/* 414B4 800408B4 240800C0 */  addiu      $t0, $zero, 0xC0
/* 414B8 800408B8 24090010 */  addiu      $t1, $zero, 0x10
/* 414BC 800408BC 240A0027 */  addiu      $t2, $zero, 0x27
/* 414C0 800408C0 240B00C8 */  addiu      $t3, $zero, 0xC8
/* 414C4 800408C4 A7AB0022 */  sh         $t3, 0x22($sp)
/* 414C8 800408C8 A7AA0020 */  sh         $t2, 0x20($sp)
/* 414CC 800408CC A7A9001E */  sh         $t1, 0x1E($sp)
/* 414D0 800408D0 A7A8001C */  sh         $t0, 0x1C($sp)
/* 414D4 800408D4 A7B9001A */  sh         $t9, 0x1A($sp)
/* 414D8 800408D8 A7B80018 */  sh         $t8, 0x18($sp)
/* 414DC 800408DC AFAC0024 */  sw         $t4, 0x24($sp)
/* 414E0 800408E0 100000AB */  b          .L80040B90
/* 414E4 800408E4 AFAD0028 */   sw        $t5, 0x28($sp)
glabel L800408E8
/* 414E8 800408E8 3C0A0100 */  lui        $t2, %hi(D_10069F8)
/* 414EC 800408EC 3C0B0100 */  lui        $t3, %hi(D_1007000)
/* 414F0 800408F0 256B7000 */  addiu      $t3, $t3, %lo(D_1007000)
/* 414F4 800408F4 254A69F8 */  addiu      $t2, $t2, %lo(D_10069F8)
/* 414F8 800408F8 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 414FC 800408FC 240F0010 */  addiu      $t7, $zero, 0x10
/* 41500 80040900 241800C0 */  addiu      $t8, $zero, 0xC0
/* 41504 80040904 24190010 */  addiu      $t9, $zero, 0x10
/* 41508 80040908 24080027 */  addiu      $t0, $zero, 0x27
/* 4150C 8004090C 240900C8 */  addiu      $t1, $zero, 0xC8
/* 41510 80040910 A7A90022 */  sh         $t1, 0x22($sp)
/* 41514 80040914 A7A80020 */  sh         $t0, 0x20($sp)
/* 41518 80040918 A7B9001E */  sh         $t9, 0x1E($sp)
/* 4151C 8004091C A7B8001C */  sh         $t8, 0x1C($sp)
/* 41520 80040920 A7AF001A */  sh         $t7, 0x1A($sp)
/* 41524 80040924 A7AE0018 */  sh         $t6, 0x18($sp)
/* 41528 80040928 AFAA0024 */  sw         $t2, 0x24($sp)
/* 4152C 8004092C 10000098 */  b          .L80040B90
/* 41530 80040930 AFAB0028 */   sw        $t3, 0x28($sp)
glabel L80040934
/* 41534 80040934 3C080100 */  lui        $t0, %hi(D_1007028)
/* 41538 80040938 3C090100 */  lui        $t1, %hi(D_1007630)
/* 4153C 8004093C 25297630 */  addiu      $t1, $t1, %lo(D_1007630)
/* 41540 80040940 25087028 */  addiu      $t0, $t0, %lo(D_1007028)
/* 41544 80040944 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 41548 80040948 240D0010 */  addiu      $t5, $zero, 0x10
/* 4154C 8004094C 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 41550 80040950 240F0010 */  addiu      $t7, $zero, 0x10
/* 41554 80040954 24180027 */  addiu      $t8, $zero, 0x27
/* 41558 80040958 241900C8 */  addiu      $t9, $zero, 0xC8
/* 4155C 8004095C A7B90022 */  sh         $t9, 0x22($sp)
/* 41560 80040960 A7B80020 */  sh         $t8, 0x20($sp)
/* 41564 80040964 A7AF001E */  sh         $t7, 0x1E($sp)
/* 41568 80040968 A7AE001C */  sh         $t6, 0x1C($sp)
/* 4156C 8004096C A7AD001A */  sh         $t5, 0x1A($sp)
/* 41570 80040970 A7AC0018 */  sh         $t4, 0x18($sp)
/* 41574 80040974 AFA80024 */  sw         $t0, 0x24($sp)
/* 41578 80040978 10000085 */  b          .L80040B90
/* 4157C 8004097C AFA90028 */   sw        $t1, 0x28($sp)
glabel L80040980
/* 41580 80040980 3C180100 */  lui        $t8, %hi(D_1007658)
/* 41584 80040984 3C190100 */  lui        $t9, %hi(D_1007C60)
/* 41588 80040988 27397C60 */  addiu      $t9, $t9, %lo(D_1007C60)
/* 4158C 8004098C 27187658 */  addiu      $t8, $t8, %lo(D_1007658)
/* 41590 80040990 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 41594 80040994 240B0010 */  addiu      $t3, $zero, 0x10
/* 41598 80040998 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 4159C 8004099C 240D0010 */  addiu      $t5, $zero, 0x10
/* 415A0 800409A0 240E0027 */  addiu      $t6, $zero, 0x27
/* 415A4 800409A4 240F00C8 */  addiu      $t7, $zero, 0xC8
/* 415A8 800409A8 A7AF0022 */  sh         $t7, 0x22($sp)
/* 415AC 800409AC A7AE0020 */  sh         $t6, 0x20($sp)
/* 415B0 800409B0 A7AD001E */  sh         $t5, 0x1E($sp)
/* 415B4 800409B4 A7AC001C */  sh         $t4, 0x1C($sp)
/* 415B8 800409B8 A7AB001A */  sh         $t3, 0x1A($sp)
/* 415BC 800409BC A7AA0018 */  sh         $t2, 0x18($sp)
/* 415C0 800409C0 AFB80024 */  sw         $t8, 0x24($sp)
/* 415C4 800409C4 10000072 */  b          .L80040B90
/* 415C8 800409C8 AFB90028 */   sw        $t9, 0x28($sp)
glabel L800409CC
/* 415CC 800409CC 3C0E0100 */  lui        $t6, %hi(D_1007C88)
/* 415D0 800409D0 3C0F0101 */  lui        $t7, %hi(D_1008290)
/* 415D4 800409D4 25EF8290 */  addiu      $t7, $t7, %lo(D_1008290)
/* 415D8 800409D8 25CE7C88 */  addiu      $t6, $t6, %lo(D_1007C88)
/* 415DC 800409DC 240800C0 */  addiu      $t0, $zero, 0xC0
/* 415E0 800409E0 24090010 */  addiu      $t1, $zero, 0x10
/* 415E4 800409E4 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 415E8 800409E8 240B0010 */  addiu      $t3, $zero, 0x10
/* 415EC 800409EC 240C0027 */  addiu      $t4, $zero, 0x27
/* 415F0 800409F0 240D00C8 */  addiu      $t5, $zero, 0xC8
/* 415F4 800409F4 A7AD0022 */  sh         $t5, 0x22($sp)
/* 415F8 800409F8 A7AC0020 */  sh         $t4, 0x20($sp)
/* 415FC 800409FC A7AB001E */  sh         $t3, 0x1E($sp)
/* 41600 80040A00 A7AA001C */  sh         $t2, 0x1C($sp)
/* 41604 80040A04 A7A9001A */  sh         $t1, 0x1A($sp)
/* 41608 80040A08 A7A80018 */  sh         $t0, 0x18($sp)
/* 4160C 80040A0C AFAE0024 */  sw         $t6, 0x24($sp)
/* 41610 80040A10 1000005F */  b          .L80040B90
/* 41614 80040A14 AFAF0028 */   sw        $t7, 0x28($sp)
glabel L80040A18
/* 41618 80040A18 3C0C0101 */  lui        $t4, %hi(D_10082B8)
/* 4161C 80040A1C 3C0D0101 */  lui        $t5, %hi(D_10088C0)
/* 41620 80040A20 25AD88C0 */  addiu      $t5, $t5, %lo(D_10088C0)
/* 41624 80040A24 258C82B8 */  addiu      $t4, $t4, %lo(D_10082B8)
/* 41628 80040A28 241800C0 */  addiu      $t8, $zero, 0xC0
/* 4162C 80040A2C 24190010 */  addiu      $t9, $zero, 0x10
/* 41630 80040A30 240800C0 */  addiu      $t0, $zero, 0xC0
/* 41634 80040A34 24090010 */  addiu      $t1, $zero, 0x10
/* 41638 80040A38 240A0027 */  addiu      $t2, $zero, 0x27
/* 4163C 80040A3C 240B00C8 */  addiu      $t3, $zero, 0xC8
/* 41640 80040A40 A7AB0022 */  sh         $t3, 0x22($sp)
/* 41644 80040A44 A7AA0020 */  sh         $t2, 0x20($sp)
/* 41648 80040A48 A7A9001E */  sh         $t1, 0x1E($sp)
/* 4164C 80040A4C A7A8001C */  sh         $t0, 0x1C($sp)
/* 41650 80040A50 A7B9001A */  sh         $t9, 0x1A($sp)
/* 41654 80040A54 A7B80018 */  sh         $t8, 0x18($sp)
/* 41658 80040A58 AFAC0024 */  sw         $t4, 0x24($sp)
/* 4165C 80040A5C 1000004C */  b          .L80040B90
/* 41660 80040A60 AFAD0028 */   sw        $t5, 0x28($sp)
glabel L80040A64
/* 41664 80040A64 3C0A0101 */  lui        $t2, %hi(D_10088E8)
/* 41668 80040A68 3C0B0101 */  lui        $t3, %hi(D_1008EF0)
/* 4166C 80040A6C 256B8EF0 */  addiu      $t3, $t3, %lo(D_1008EF0)
/* 41670 80040A70 254A88E8 */  addiu      $t2, $t2, %lo(D_10088E8)
/* 41674 80040A74 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 41678 80040A78 240F0010 */  addiu      $t7, $zero, 0x10
/* 4167C 80040A7C 241800C0 */  addiu      $t8, $zero, 0xC0
/* 41680 80040A80 24190010 */  addiu      $t9, $zero, 0x10
/* 41684 80040A84 24080027 */  addiu      $t0, $zero, 0x27
/* 41688 80040A88 240900C8 */  addiu      $t1, $zero, 0xC8
/* 4168C 80040A8C A7A90022 */  sh         $t1, 0x22($sp)
/* 41690 80040A90 A7A80020 */  sh         $t0, 0x20($sp)
/* 41694 80040A94 A7B9001E */  sh         $t9, 0x1E($sp)
/* 41698 80040A98 A7B8001C */  sh         $t8, 0x1C($sp)
/* 4169C 80040A9C A7AF001A */  sh         $t7, 0x1A($sp)
/* 416A0 80040AA0 A7AE0018 */  sh         $t6, 0x18($sp)
/* 416A4 80040AA4 AFAA0024 */  sw         $t2, 0x24($sp)
/* 416A8 80040AA8 10000039 */  b          .L80040B90
/* 416AC 80040AAC AFAB0028 */   sw        $t3, 0x28($sp)
glabel L80040AB0
/* 416B0 80040AB0 3C080101 */  lui        $t0, %hi(D_1008F18)
/* 416B4 80040AB4 3C090101 */  lui        $t1, %hi(D_1009520)
/* 416B8 80040AB8 25299520 */  addiu      $t1, $t1, %lo(D_1009520)
/* 416BC 80040ABC 25088F18 */  addiu      $t0, $t0, %lo(D_1008F18)
/* 416C0 80040AC0 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 416C4 80040AC4 240D0010 */  addiu      $t5, $zero, 0x10
/* 416C8 80040AC8 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 416CC 80040ACC 240F0010 */  addiu      $t7, $zero, 0x10
/* 416D0 80040AD0 24180027 */  addiu      $t8, $zero, 0x27
/* 416D4 80040AD4 241900C8 */  addiu      $t9, $zero, 0xC8
/* 416D8 80040AD8 A7B90022 */  sh         $t9, 0x22($sp)
/* 416DC 80040ADC A7B80020 */  sh         $t8, 0x20($sp)
/* 416E0 80040AE0 A7AF001E */  sh         $t7, 0x1E($sp)
/* 416E4 80040AE4 A7AE001C */  sh         $t6, 0x1C($sp)
/* 416E8 80040AE8 A7AD001A */  sh         $t5, 0x1A($sp)
/* 416EC 80040AEC A7AC0018 */  sh         $t4, 0x18($sp)
/* 416F0 80040AF0 AFA80024 */  sw         $t0, 0x24($sp)
/* 416F4 80040AF4 10000026 */  b          .L80040B90
/* 416F8 80040AF8 AFA90028 */   sw        $t1, 0x28($sp)
glabel L80040AFC
/* 416FC 80040AFC 3C180101 */  lui        $t8, %hi(D_1009548)
/* 41700 80040B00 3C190101 */  lui        $t9, %hi(D_1009B50)
/* 41704 80040B04 27399B50 */  addiu      $t9, $t9, %lo(D_1009B50)
/* 41708 80040B08 27189548 */  addiu      $t8, $t8, %lo(D_1009548)
/* 4170C 80040B0C 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 41710 80040B10 240B0010 */  addiu      $t3, $zero, 0x10
/* 41714 80040B14 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 41718 80040B18 240D0010 */  addiu      $t5, $zero, 0x10
/* 4171C 80040B1C 240E0027 */  addiu      $t6, $zero, 0x27
/* 41720 80040B20 240F00C8 */  addiu      $t7, $zero, 0xC8
/* 41724 80040B24 A7AF0022 */  sh         $t7, 0x22($sp)
/* 41728 80040B28 A7AE0020 */  sh         $t6, 0x20($sp)
/* 4172C 80040B2C A7AD001E */  sh         $t5, 0x1E($sp)
/* 41730 80040B30 A7AC001C */  sh         $t4, 0x1C($sp)
/* 41734 80040B34 A7AB001A */  sh         $t3, 0x1A($sp)
/* 41738 80040B38 A7AA0018 */  sh         $t2, 0x18($sp)
/* 4173C 80040B3C AFB80024 */  sw         $t8, 0x24($sp)
/* 41740 80040B40 10000013 */  b          .L80040B90
/* 41744 80040B44 AFB90028 */   sw        $t9, 0x28($sp)
glabel L80040B48
/* 41748 80040B48 3C0E0101 */  lui        $t6, %hi(D_1009B78)
/* 4174C 80040B4C 3C0F0101 */  lui        $t7, %hi(D_100A180)
/* 41750 80040B50 25EFA180 */  addiu      $t7, $t7, %lo(D_100A180)
/* 41754 80040B54 25CE9B78 */  addiu      $t6, $t6, %lo(D_1009B78)
/* 41758 80040B58 240800C0 */  addiu      $t0, $zero, 0xC0
/* 4175C 80040B5C 24090010 */  addiu      $t1, $zero, 0x10
/* 41760 80040B60 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 41764 80040B64 240B0010 */  addiu      $t3, $zero, 0x10
/* 41768 80040B68 240C0027 */  addiu      $t4, $zero, 0x27
/* 4176C 80040B6C 240D00C8 */  addiu      $t5, $zero, 0xC8
/* 41770 80040B70 A7AD0022 */  sh         $t5, 0x22($sp)
/* 41774 80040B74 A7AC0020 */  sh         $t4, 0x20($sp)
/* 41778 80040B78 A7AB001E */  sh         $t3, 0x1E($sp)
/* 4177C 80040B7C A7AA001C */  sh         $t2, 0x1C($sp)
/* 41780 80040B80 A7A9001A */  sh         $t1, 0x1A($sp)
/* 41784 80040B84 A7A80018 */  sh         $t0, 0x18($sp)
/* 41788 80040B88 AFAE0024 */  sw         $t6, 0x24($sp)
/* 4178C 80040B8C AFAF0028 */  sw         $t7, 0x28($sp)
.L80040B90:
/* 41790 80040B90 27A4002C */  addiu      $a0, $sp, 0x2C
/* 41794 80040B94 27A50018 */  addiu      $a1, $sp, 0x18
/* 41798 80040B98 0C0150A4 */  jal        func_80054290
/* 4179C 80040B9C AFA60030 */   sw        $a2, 0x30($sp)
/* 417A0 80040BA0 8FA60030 */  lw         $a2, 0x30($sp)
/* 417A4 80040BA4 8FB8002C */  lw         $t8, 0x2C($sp)
/* 417A8 80040BA8 ACD80000 */  sw         $t8, 0x0($a2)
/* 417AC 80040BAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 417B0 80040BB0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 417B4 80040BB4 03E00008 */  jr         $ra
/* 417B8 80040BB8 00000000 */   nop

glabel func_80040BBC
/* 417BC 80040BBC 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 417C0 80040BC0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 417C4 80040BC4 AFA40060 */  sw         $a0, 0x60($sp)
/* 417C8 80040BC8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 417CC 80040BCC 27A4005C */  addiu      $a0, $sp, 0x5C
/* 417D0 80040BD0 0C01556D */  jal        func_800555B4
/* 417D4 80040BD4 AFAF005C */   sw        $t7, 0x5C($sp)
/* 417D8 80040BD8 8FB8005C */  lw         $t8, 0x5C($sp)
/* 417DC 80040BDC 3C09BA00 */  lui        $t1, (0xBA000E02 >> 16)
/* 417E0 80040BE0 35290E02 */  ori        $t1, $t1, (0xBA000E02 & 0xFFFF)
/* 417E4 80040BE4 27190008 */  addiu      $t9, $t8, 0x8
/* 417E8 80040BE8 AFB9005C */  sw         $t9, 0x5C($sp)
/* 417EC 80040BEC 340A8000 */  ori        $t2, $zero, 0x8000
/* 417F0 80040BF0 AF0A0004 */  sw         $t2, 0x4($t8)
/* 417F4 80040BF4 AF090000 */  sw         $t1, 0x0($t8)
/* 417F8 80040BF8 8FAB005C */  lw         $t3, 0x5C($sp)
/* 417FC 80040BFC 3C0E803A */  lui        $t6, %hi(D_803992F8)
/* 41800 80040C00 25CE92F8 */  addiu      $t6, $t6, %lo(D_803992F8)
/* 41804 80040C04 256C0008 */  addiu      $t4, $t3, 0x8
/* 41808 80040C08 AFAC005C */  sw         $t4, 0x5C($sp)
/* 4180C 80040C0C 3C0DFD10 */  lui        $t5, (0xFD100000 >> 16)
/* 41810 80040C10 AD6D0000 */  sw         $t5, 0x0($t3)
/* 41814 80040C14 AD6E0004 */  sw         $t6, 0x4($t3)
/* 41818 80040C18 8FAF005C */  lw         $t7, 0x5C($sp)
/* 4181C 80040C1C 3C19E800 */  lui        $t9, (0xE8000000 >> 16)
/* 41820 80040C20 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* 41824 80040C24 25F80008 */  addiu      $t8, $t7, 0x8
/* 41828 80040C28 AFB8005C */  sw         $t8, 0x5C($sp)
/* 4182C 80040C2C ADE00004 */  sw         $zero, 0x4($t7)
/* 41830 80040C30 ADF90000 */  sw         $t9, 0x0($t7)
/* 41834 80040C34 8FA9005C */  lw         $t1, 0x5C($sp)
/* 41838 80040C38 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* 4183C 80040C3C 3C0C0700 */  lui        $t4, (0x7000000 >> 16)
/* 41840 80040C40 252A0008 */  addiu      $t2, $t1, 0x8
/* 41844 80040C44 AFAA005C */  sw         $t2, 0x5C($sp)
/* 41848 80040C48 AD2C0004 */  sw         $t4, 0x4($t1)
/* 4184C 80040C4C AD2B0000 */  sw         $t3, 0x0($t1)
/* 41850 80040C50 8FAD005C */  lw         $t5, 0x5C($sp)
/* 41854 80040C54 3C07E600 */  lui        $a3, (0xE6000000 >> 16)
/* 41858 80040C58 3C090703 */  lui        $t1, (0x703C000 >> 16)
/* 4185C 80040C5C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 41860 80040C60 AFAE005C */  sw         $t6, 0x5C($sp)
/* 41864 80040C64 ADA00004 */  sw         $zero, 0x4($t5)
/* 41868 80040C68 ADA70000 */  sw         $a3, 0x0($t5)
/* 4186C 80040C6C 8FAF005C */  lw         $t7, 0x5C($sp)
/* 41870 80040C70 3529C000 */  ori        $t1, $t1, (0x703C000 & 0xFFFF)
/* 41874 80040C74 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 41878 80040C78 25F80008 */  addiu      $t8, $t7, 0x8
/* 4187C 80040C7C AFB8005C */  sw         $t8, 0x5C($sp)
/* 41880 80040C80 ADE90004 */  sw         $t1, 0x4($t7)
/* 41884 80040C84 ADF90000 */  sw         $t9, 0x0($t7)
/* 41888 80040C88 8FAA005C */  lw         $t2, 0x5C($sp)
/* 4188C 80040C8C 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 41890 80040C90 3C0F803A */  lui        $t7, %hi(D_80399100)
/* 41894 80040C94 254B0008 */  addiu      $t3, $t2, 0x8
/* 41898 80040C98 AFAB005C */  sw         $t3, 0x5C($sp)
/* 4189C 80040C9C AD400004 */  sw         $zero, 0x4($t2)
/* 418A0 80040CA0 AD480000 */  sw         $t0, 0x0($t2)
/* 418A4 80040CA4 8FAC005C */  lw         $t4, 0x5C($sp)
/* 418A8 80040CA8 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 418AC 80040CAC 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 418B0 80040CB0 258D0008 */  addiu      $t5, $t4, 0x8
/* 418B4 80040CB4 AFAD005C */  sw         $t5, 0x5C($sp)
/* 418B8 80040CB8 25EF9100 */  addiu      $t7, $t7, %lo(D_80399100)
/* 418BC 80040CBC AD8F0004 */  sw         $t7, 0x4($t4)
/* 418C0 80040CC0 AD8E0000 */  sw         $t6, 0x0($t4)
/* 418C4 80040CC4 8FB8005C */  lw         $t8, 0x5C($sp)
/* 418C8 80040CC8 3C0A0708 */  lui        $t2, (0x7080040 >> 16)
/* 418CC 80040CCC 3C09F548 */  lui        $t1, (0xF5480200 >> 16)
/* 418D0 80040CD0 27190008 */  addiu      $t9, $t8, 0x8
/* 418D4 80040CD4 AFB9005C */  sw         $t9, 0x5C($sp)
/* 418D8 80040CD8 35290200 */  ori        $t1, $t1, (0xF5480200 & 0xFFFF)
/* 418DC 80040CDC 354A0040 */  ori        $t2, $t2, (0x7080040 & 0xFFFF)
/* 418E0 80040CE0 AF0A0004 */  sw         $t2, 0x4($t8)
/* 418E4 80040CE4 AF090000 */  sw         $t1, 0x0($t8)
/* 418E8 80040CE8 8FAB005C */  lw         $t3, 0x5C($sp)
/* 418EC 80040CEC 3C180701 */  lui        $t8, (0x701E0F4 >> 16)
/* 418F0 80040CF0 3718E0F4 */  ori        $t8, $t8, (0x701E0F4 & 0xFFFF)
/* 418F4 80040CF4 256C0008 */  addiu      $t4, $t3, 0x8
/* 418F8 80040CF8 AFAC005C */  sw         $t4, 0x5C($sp)
/* 418FC 80040CFC AD600004 */  sw         $zero, 0x4($t3)
/* 41900 80040D00 AD670000 */  sw         $a3, 0x0($t3)
/* 41904 80040D04 8FAD005C */  lw         $t5, 0x5C($sp)
/* 41908 80040D08 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 4190C 80040D0C 3C0CF540 */  lui        $t4, (0xF5400200 >> 16)
/* 41910 80040D10 25AE0008 */  addiu      $t6, $t5, 0x8
/* 41914 80040D14 AFAE005C */  sw         $t6, 0x5C($sp)
/* 41918 80040D18 ADB80004 */  sw         $t8, 0x4($t5)
/* 4191C 80040D1C ADAF0000 */  sw         $t7, 0x0($t5)
/* 41920 80040D20 8FB9005C */  lw         $t9, 0x5C($sp)
/* 41924 80040D24 3C0D0008 */  lui        $t5, (0x80040 >> 16)
/* 41928 80040D28 35AD0040 */  ori        $t5, $t5, (0x80040 & 0xFFFF)
/* 4192C 80040D2C 27290008 */  addiu      $t1, $t9, 0x8
/* 41930 80040D30 AFA9005C */  sw         $t1, 0x5C($sp)
/* 41934 80040D34 AF200004 */  sw         $zero, 0x4($t9)
/* 41938 80040D38 AF280000 */  sw         $t0, 0x0($t9)
/* 4193C 80040D3C 8FAA005C */  lw         $t2, 0x5C($sp)
/* 41940 80040D40 358C0200 */  ori        $t4, $t4, (0xF5400200 & 0xFFFF)
/* 41944 80040D44 3C190003 */  lui        $t9, (0x3C0F4 >> 16)
/* 41948 80040D48 254B0008 */  addiu      $t3, $t2, 0x8
/* 4194C 80040D4C AFAB005C */  sw         $t3, 0x5C($sp)
/* 41950 80040D50 AD4D0004 */  sw         $t5, 0x4($t2)
/* 41954 80040D54 AD4C0000 */  sw         $t4, 0x0($t2)
/* 41958 80040D58 8FAE005C */  lw         $t6, 0x5C($sp)
/* 4195C 80040D5C 3739C0F4 */  ori        $t9, $t9, (0x3C0F4 & 0xFFFF)
/* 41960 80040D60 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 41964 80040D64 25CF0008 */  addiu      $t7, $t6, 0x8
/* 41968 80040D68 AFAF005C */  sw         $t7, 0x5C($sp)
/* 4196C 80040D6C ADD90004 */  sw         $t9, 0x4($t6)
/* 41970 80040D70 ADD80000 */  sw         $t8, 0x0($t6)
/* 41974 80040D74 8FA9005C */  lw         $t1, 0x5C($sp)
/* 41978 80040D78 3C0C001C */  lui        $t4, (0x1CC0CC >> 16)
/* 4197C 80040D7C 3C0BE44A */  lui        $t3, (0xE44A41C4 >> 16)
/* 41980 80040D80 252A0008 */  addiu      $t2, $t1, 0x8
/* 41984 80040D84 AFAA005C */  sw         $t2, 0x5C($sp)
/* 41988 80040D88 356B41C4 */  ori        $t3, $t3, (0xE44A41C4 & 0xFFFF)
/* 4198C 80040D8C 358CC0CC */  ori        $t4, $t4, (0x1CC0CC & 0xFFFF)
/* 41990 80040D90 AD2C0004 */  sw         $t4, 0x4($t1)
/* 41994 80040D94 AD2B0000 */  sw         $t3, 0x0($t1)
/* 41998 80040D98 8FAD005C */  lw         $t5, 0x5C($sp)
/* 4199C 80040D9C 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 419A0 80040DA0 3C0A0400 */  lui        $t2, (0x4000400 >> 16)
/* 419A4 80040DA4 25AE0008 */  addiu      $t6, $t5, 0x8
/* 419A8 80040DA8 AFAE005C */  sw         $t6, 0x5C($sp)
/* 419AC 80040DAC ADA00004 */  sw         $zero, 0x4($t5)
/* 419B0 80040DB0 ADAF0000 */  sw         $t7, 0x0($t5)
/* 419B4 80040DB4 8FB8005C */  lw         $t8, 0x5C($sp)
/* 419B8 80040DB8 354A0400 */  ori        $t2, $t2, (0x4000400 & 0xFFFF)
/* 419BC 80040DBC 3C09B300 */  lui        $t1, (0xB3000000 >> 16)
/* 419C0 80040DC0 27190008 */  addiu      $t9, $t8, 0x8
/* 419C4 80040DC4 AFB9005C */  sw         $t9, 0x5C($sp)
/* 419C8 80040DC8 AF0A0004 */  sw         $t2, 0x4($t8)
/* 419CC 80040DCC AF090000 */  sw         $t1, 0x0($t8)
/* 419D0 80040DD0 8FAC0060 */  lw         $t4, 0x60($sp)
/* 419D4 80040DD4 8FAB005C */  lw         $t3, 0x5C($sp)
/* 419D8 80040DD8 AD8B0000 */  sw         $t3, 0x0($t4)
/* 419DC 80040DDC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 419E0 80040DE0 27BD0060 */  addiu      $sp, $sp, 0x60
/* 419E4 80040DE4 03E00008 */  jr         $ra
/* 419E8 80040DE8 00000000 */   nop

glabel func_80040DEC
/* 419EC 80040DEC 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 419F0 80040DF0 3C05801A */  lui        $a1, %hi(D_8019E6A9)
/* 419F4 80040DF4 24A5E6A9 */  addiu      $a1, $a1, %lo(D_8019E6A9)
/* 419F8 80040DF8 80A20000 */  lb         $v0, 0x0($a1)
/* 419FC 80040DFC AFBF0014 */  sw         $ra, 0x14($sp)
/* 41A00 80040E00 AFA40078 */  sw         $a0, 0x78($sp)
/* 41A04 80040E04 8C8F0000 */  lw         $t7, 0x0($a0)
/* 41A08 80040E08 24010001 */  addiu      $at, $zero, 0x1
/* 41A0C 80040E0C 14410035 */  bne        $v0, $at, .L80040EE4
/* 41A10 80040E10 AFAF0074 */   sw        $t7, 0x74($sp)
/* 41A14 80040E14 3C048009 */  lui        $a0, %hi(D_8008EE8C)
/* 41A18 80040E18 2484EE8C */  addiu      $a0, $a0, %lo(D_8008EE8C)
/* 41A1C 80040E1C 90830000 */  lbu        $v1, 0x0($a0)
/* 41A20 80040E20 0460000E */  bltz       $v1, .L80040E5C
/* 41A24 80040E24 00601025 */   or        $v0, $v1, $zero
/* 41A28 80040E28 28410002 */  slti       $at, $v0, 0x2
/* 41A2C 80040E2C 1020000B */  beqz       $at, .L80040E5C
/* 41A30 80040E30 3C188009 */   lui       $t8, %hi(D_8008EF44)
/* 41A34 80040E34 9718EF44 */  lhu        $t8, %lo(D_8008EF44)($t8)
/* 41A38 80040E38 3C0A8009 */  lui        $t2, %hi(D_8008EF48)
/* 41A3C 80040E3C 954AEF48 */  lhu        $t2, %lo(D_8008EF48)($t2)
/* 41A40 80040E40 3C018009 */  lui        $at, %hi(D_8008EF44)
/* 41A44 80040E44 2719FFFF */  addiu      $t9, $t8, -0x1
/* 41A48 80040E48 A439EF44 */  sh         $t9, %lo(D_8008EF44)($at)
/* 41A4C 80040E4C 3C018009 */  lui        $at, %hi(D_8008EF48)
/* 41A50 80040E50 254BFFFF */  addiu      $t3, $t2, -0x1
/* 41A54 80040E54 1000000F */  b          .L80040E94
/* 41A58 80040E58 A42BEF48 */   sh        $t3, %lo(D_8008EF48)($at)
.L80040E5C:
/* 41A5C 80040E5C 28410002 */  slti       $at, $v0, 0x2
/* 41A60 80040E60 1420000C */  bnez       $at, .L80040E94
/* 41A64 80040E64 28410004 */   slti      $at, $v0, 0x4
/* 41A68 80040E68 1020000A */  beqz       $at, .L80040E94
/* 41A6C 80040E6C 3C0C8009 */   lui       $t4, %hi(D_8008EF44)
/* 41A70 80040E70 958CEF44 */  lhu        $t4, %lo(D_8008EF44)($t4)
/* 41A74 80040E74 3C0E8009 */  lui        $t6, %hi(D_8008EF48)
/* 41A78 80040E78 95CEEF48 */  lhu        $t6, %lo(D_8008EF48)($t6)
/* 41A7C 80040E7C 3C018009 */  lui        $at, %hi(D_8008EF44)
/* 41A80 80040E80 258D0001 */  addiu      $t5, $t4, 0x1
/* 41A84 80040E84 A42DEF44 */  sh         $t5, %lo(D_8008EF44)($at)
/* 41A88 80040E88 3C018009 */  lui        $at, %hi(D_8008EF48)
/* 41A8C 80040E8C 25CF0001 */  addiu      $t7, $t6, 0x1
/* 41A90 80040E90 A42FEF48 */  sh         $t7, %lo(D_8008EF48)($at)
.L80040E94:
/* 41A94 80040E94 24780001 */  addiu      $t8, $v1, 0x1
/* 41A98 80040E98 331900FF */  andi       $t9, $t8, 0xFF
/* 41A9C 80040E9C 24010004 */  addiu      $at, $zero, 0x4
/* 41AA0 80040EA0 17210009 */  bne        $t9, $at, .L80040EC8
/* 41AA4 80040EA4 A0980000 */   sb        $t8, 0x0($a0)
/* 41AA8 80040EA8 240A00BD */  addiu      $t2, $zero, 0xBD
/* 41AAC 80040EAC 3C018009 */  lui        $at, %hi(D_8008EF44)
/* 41AB0 80040EB0 A42AEF44 */  sh         $t2, %lo(D_8008EF44)($at)
/* 41AB4 80040EB4 3C018009 */  lui        $at, %hi(D_8008EF48)
/* 41AB8 80040EB8 240B00DD */  addiu      $t3, $zero, 0xDD
/* 41ABC 80040EBC A42BEF48 */  sh         $t3, %lo(D_8008EF48)($at)
/* 41AC0 80040EC0 A0A00000 */  sb         $zero, 0x0($a1)
/* 41AC4 80040EC4 A0800000 */  sb         $zero, 0x0($a0)
.L80040EC8:
/* 41AC8 80040EC8 240C00F5 */  addiu      $t4, $zero, 0xF5
/* 41ACC 80040ECC 3C018009 */  lui        $at, %hi(D_8008EF3C)
/* 41AD0 80040ED0 A42CEF3C */  sh         $t4, %lo(D_8008EF3C)($at)
/* 41AD4 80040ED4 3C018009 */  lui        $at, %hi(D_8008EF40)
/* 41AD8 80040ED8 240D0115 */  addiu      $t5, $zero, 0x115
/* 41ADC 80040EDC 10000036 */  b          .L80040FB8
/* 41AE0 80040EE0 A42DEF40 */   sh        $t5, %lo(D_8008EF40)($at)
.L80040EE4:
/* 41AE4 80040EE4 2401FFFF */  addiu      $at, $zero, -0x1
/* 41AE8 80040EE8 14410033 */  bne        $v0, $at, .L80040FB8
/* 41AEC 80040EEC 3C048009 */   lui       $a0, %hi(D_8008EE8C)
/* 41AF0 80040EF0 2484EE8C */  addiu      $a0, $a0, %lo(D_8008EE8C)
/* 41AF4 80040EF4 90830000 */  lbu        $v1, 0x0($a0)
/* 41AF8 80040EF8 0460000E */  bltz       $v1, .L80040F34
/* 41AFC 80040EFC 00601025 */   or        $v0, $v1, $zero
/* 41B00 80040F00 28410002 */  slti       $at, $v0, 0x2
/* 41B04 80040F04 1020000B */  beqz       $at, .L80040F34
/* 41B08 80040F08 3C0E8009 */   lui       $t6, %hi(D_8008EF3C)
/* 41B0C 80040F0C 95CEEF3C */  lhu        $t6, %lo(D_8008EF3C)($t6)
/* 41B10 80040F10 3C188009 */  lui        $t8, %hi(D_8008EF40)
/* 41B14 80040F14 9718EF40 */  lhu        $t8, %lo(D_8008EF40)($t8)
/* 41B18 80040F18 3C018009 */  lui        $at, %hi(D_8008EF3C)
/* 41B1C 80040F1C 25CF0001 */  addiu      $t7, $t6, 0x1
/* 41B20 80040F20 A42FEF3C */  sh         $t7, %lo(D_8008EF3C)($at)
/* 41B24 80040F24 3C018009 */  lui        $at, %hi(D_8008EF40)
/* 41B28 80040F28 27190001 */  addiu      $t9, $t8, 0x1
/* 41B2C 80040F2C 1000000F */  b          .L80040F6C
/* 41B30 80040F30 A439EF40 */   sh        $t9, %lo(D_8008EF40)($at)
.L80040F34:
/* 41B34 80040F34 28410002 */  slti       $at, $v0, 0x2
/* 41B38 80040F38 1420000C */  bnez       $at, .L80040F6C
/* 41B3C 80040F3C 28410004 */   slti      $at, $v0, 0x4
/* 41B40 80040F40 1020000A */  beqz       $at, .L80040F6C
/* 41B44 80040F44 3C0A8009 */   lui       $t2, %hi(D_8008EF3C)
/* 41B48 80040F48 954AEF3C */  lhu        $t2, %lo(D_8008EF3C)($t2)
/* 41B4C 80040F4C 3C0C8009 */  lui        $t4, %hi(D_8008EF40)
/* 41B50 80040F50 958CEF40 */  lhu        $t4, %lo(D_8008EF40)($t4)
/* 41B54 80040F54 3C018009 */  lui        $at, %hi(D_8008EF3C)
/* 41B58 80040F58 254BFFFF */  addiu      $t3, $t2, -0x1
/* 41B5C 80040F5C A42BEF3C */  sh         $t3, %lo(D_8008EF3C)($at)
/* 41B60 80040F60 3C018009 */  lui        $at, %hi(D_8008EF40)
/* 41B64 80040F64 258DFFFF */  addiu      $t5, $t4, -0x1
/* 41B68 80040F68 A42DEF40 */  sh         $t5, %lo(D_8008EF40)($at)
.L80040F6C:
/* 41B6C 80040F6C 246E0001 */  addiu      $t6, $v1, 0x1
/* 41B70 80040F70 31CF00FF */  andi       $t7, $t6, 0xFF
/* 41B74 80040F74 24010004 */  addiu      $at, $zero, 0x4
/* 41B78 80040F78 15E10009 */  bne        $t7, $at, .L80040FA0
/* 41B7C 80040F7C A08E0000 */   sb        $t6, 0x0($a0)
/* 41B80 80040F80 241800F5 */  addiu      $t8, $zero, 0xF5
/* 41B84 80040F84 3C018009 */  lui        $at, %hi(D_8008EF3C)
/* 41B88 80040F88 A438EF3C */  sh         $t8, %lo(D_8008EF3C)($at)
/* 41B8C 80040F8C 3C018009 */  lui        $at, %hi(D_8008EF40)
/* 41B90 80040F90 24190115 */  addiu      $t9, $zero, 0x115
/* 41B94 80040F94 A439EF40 */  sh         $t9, %lo(D_8008EF40)($at)
/* 41B98 80040F98 A0A00000 */  sb         $zero, 0x0($a1)
/* 41B9C 80040F9C A0800000 */  sb         $zero, 0x0($a0)
.L80040FA0:
/* 41BA0 80040FA0 240A00BD */  addiu      $t2, $zero, 0xBD
/* 41BA4 80040FA4 3C018009 */  lui        $at, %hi(D_8008EF44)
/* 41BA8 80040FA8 A42AEF44 */  sh         $t2, %lo(D_8008EF44)($at)
/* 41BAC 80040FAC 3C018009 */  lui        $at, %hi(D_8008EF48)
/* 41BB0 80040FB0 240B00DD */  addiu      $t3, $zero, 0xDD
/* 41BB4 80040FB4 A42BEF48 */  sh         $t3, %lo(D_8008EF48)($at)
.L80040FB8:
/* 41BB8 80040FB8 0C01559D */  jal        func_80055674
/* 41BBC 80040FBC 27A40074 */   addiu     $a0, $sp, 0x74
/* 41BC0 80040FC0 8FAC0074 */  lw         $t4, 0x74($sp)
/* 41BC4 80040FC4 3C0F803A */  lui        $t7, %hi(D_8039F908)
/* 41BC8 80040FC8 25EFF908 */  addiu      $t7, $t7, %lo(D_8039F908)
/* 41BCC 80040FCC 258D0008 */  addiu      $t5, $t4, 0x8
/* 41BD0 80040FD0 AFAD0074 */  sw         $t5, 0x74($sp)
/* 41BD4 80040FD4 3C0EFD10 */  lui        $t6, (0xFD100000 >> 16)
/* 41BD8 80040FD8 AD8E0000 */  sw         $t6, 0x0($t4)
/* 41BDC 80040FDC AD8F0004 */  sw         $t7, 0x4($t4)
/* 41BE0 80040FE0 8FB80074 */  lw         $t8, 0x74($sp)
/* 41BE4 80040FE4 3C0AE800 */  lui        $t2, (0xE8000000 >> 16)
/* 41BE8 80040FE8 3C0DF500 */  lui        $t5, (0xF5000100 >> 16)
/* 41BEC 80040FEC 27190008 */  addiu      $t9, $t8, 0x8
/* 41BF0 80040FF0 AFB90074 */  sw         $t9, 0x74($sp)
/* 41BF4 80040FF4 AF000004 */  sw         $zero, 0x4($t8)
/* 41BF8 80040FF8 AF0A0000 */  sw         $t2, 0x0($t8)
/* 41BFC 80040FFC 8FAB0074 */  lw         $t3, 0x74($sp)
/* 41C00 80041000 35AD0100 */  ori        $t5, $t5, (0xF5000100 & 0xFFFF)
/* 41C04 80041004 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 41C08 80041008 256C0008 */  addiu      $t4, $t3, 0x8
/* 41C0C 8004100C AFAC0074 */  sw         $t4, 0x74($sp)
/* 41C10 80041010 AD6E0004 */  sw         $t6, 0x4($t3)
/* 41C14 80041014 AD6D0000 */  sw         $t5, 0x0($t3)
/* 41C18 80041018 8FAF0074 */  lw         $t7, 0x74($sp)
/* 41C1C 8004101C 3C07E600 */  lui        $a3, (0xE6000000 >> 16)
/* 41C20 80041020 3C0C0703 */  lui        $t4, (0x703C000 >> 16)
/* 41C24 80041024 25F80008 */  addiu      $t8, $t7, 0x8
/* 41C28 80041028 AFB80074 */  sw         $t8, 0x74($sp)
/* 41C2C 8004102C ADE00004 */  sw         $zero, 0x4($t7)
/* 41C30 80041030 ADE70000 */  sw         $a3, 0x0($t7)
/* 41C34 80041034 8FB90074 */  lw         $t9, 0x74($sp)
/* 41C38 80041038 358CC000 */  ori        $t4, $t4, (0x703C000 & 0xFFFF)
/* 41C3C 8004103C 3C0BF000 */  lui        $t3, (0xF0000000 >> 16)
/* 41C40 80041040 272A0008 */  addiu      $t2, $t9, 0x8
/* 41C44 80041044 AFAA0074 */  sw         $t2, 0x74($sp)
/* 41C48 80041048 AF2B0000 */  sw         $t3, 0x0($t9)
/* 41C4C 8004104C AF2C0004 */  sw         $t4, 0x4($t9)
/* 41C50 80041050 8FAD0074 */  lw         $t5, 0x74($sp)
/* 41C54 80041054 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 41C58 80041058 3C19BA00 */  lui        $t9, (0xBA000E02 >> 16)
/* 41C5C 8004105C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 41C60 80041060 AFAE0074 */  sw         $t6, 0x74($sp)
/* 41C64 80041064 ADA00004 */  sw         $zero, 0x4($t5)
/* 41C68 80041068 ADA80000 */  sw         $t0, 0x0($t5)
/* 41C6C 8004106C 8FAF0074 */  lw         $t7, 0x74($sp)
/* 41C70 80041070 37390E02 */  ori        $t9, $t9, (0xBA000E02 & 0xFFFF)
/* 41C74 80041074 340A8000 */  ori        $t2, $zero, 0x8000
/* 41C78 80041078 25F80008 */  addiu      $t8, $t7, 0x8
/* 41C7C 8004107C AFB80074 */  sw         $t8, 0x74($sp)
/* 41C80 80041080 ADEA0004 */  sw         $t2, 0x4($t7)
/* 41C84 80041084 ADF90000 */  sw         $t9, 0x0($t7)
/* 41C88 80041088 8FAB0074 */  lw         $t3, 0x74($sp)
/* 41C8C 8004108C 3C0DFD48 */  lui        $t5, (0xFD48000F >> 16)
/* 41C90 80041090 3C0E803A */  lui        $t6, %hi(D_8039F790)
/* 41C94 80041094 256C0008 */  addiu      $t4, $t3, 0x8
/* 41C98 80041098 AFAC0074 */  sw         $t4, 0x74($sp)
/* 41C9C 8004109C 25CEF790 */  addiu      $t6, $t6, %lo(D_8039F790)
/* 41CA0 800410A0 35AD000F */  ori        $t5, $t5, (0xFD48000F & 0xFFFF)
/* 41CA4 800410A4 AD6D0000 */  sw         $t5, 0x0($t3)
/* 41CA8 800410A8 AD6E0004 */  sw         $t6, 0x4($t3)
/* 41CAC 800410AC 8FAF0074 */  lw         $t7, 0x74($sp)
/* 41CB0 800410B0 3C19F548 */  lui        $t9, (0xF5480400 >> 16)
/* 41CB4 800410B4 3C0A0708 */  lui        $t2, (0x7080200 >> 16)
/* 41CB8 800410B8 25F80008 */  addiu      $t8, $t7, 0x8
/* 41CBC 800410BC AFB80074 */  sw         $t8, 0x74($sp)
/* 41CC0 800410C0 354A0200 */  ori        $t2, $t2, (0x7080200 & 0xFFFF)
/* 41CC4 800410C4 37390400 */  ori        $t9, $t9, (0xF5480400 & 0xFFFF)
/* 41CC8 800410C8 ADF90000 */  sw         $t9, 0x0($t7)
/* 41CCC 800410CC ADEA0004 */  sw         $t2, 0x4($t7)
/* 41CD0 800410D0 8FAB0074 */  lw         $t3, 0x74($sp)
/* 41CD4 800410D4 3C180703 */  lui        $t8, (0x703E058 >> 16)
/* 41CD8 800410D8 3718E058 */  ori        $t8, $t8, (0x703E058 & 0xFFFF)
/* 41CDC 800410DC 256C0008 */  addiu      $t4, $t3, 0x8
/* 41CE0 800410E0 AFAC0074 */  sw         $t4, 0x74($sp)
/* 41CE4 800410E4 AD600004 */  sw         $zero, 0x4($t3)
/* 41CE8 800410E8 AD670000 */  sw         $a3, 0x0($t3)
/* 41CEC 800410EC 8FAD0074 */  lw         $t5, 0x74($sp)
/* 41CF0 800410F0 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 41CF4 800410F4 3C09E400 */  lui        $t1, (0xE40002A4 >> 16)
/* 41CF8 800410F8 25AE0008 */  addiu      $t6, $t5, 0x8
/* 41CFC 800410FC AFAE0074 */  sw         $t6, 0x74($sp)
/* 41D00 80041100 ADB80004 */  sw         $t8, 0x4($t5)
/* 41D04 80041104 ADAF0000 */  sw         $t7, 0x0($t5)
/* 41D08 80041108 8FB90074 */  lw         $t9, 0x74($sp)
/* 41D0C 8004110C 3C0DF540 */  lui        $t5, (0xF5400400 >> 16)
/* 41D10 80041110 3C0E0008 */  lui        $t6, (0x80200 >> 16)
/* 41D14 80041114 272A0008 */  addiu      $t2, $t9, 0x8
/* 41D18 80041118 AFAA0074 */  sw         $t2, 0x74($sp)
/* 41D1C 8004111C AF280000 */  sw         $t0, 0x0($t9)
/* 41D20 80041120 AF200004 */  sw         $zero, 0x4($t9)
/* 41D24 80041124 8FAB0074 */  lw         $t3, 0x74($sp)
/* 41D28 80041128 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
/* 41D2C 8004112C 35AD0400 */  ori        $t5, $t5, (0xF5400400 & 0xFFFF)
/* 41D30 80041130 256C0008 */  addiu      $t4, $t3, 0x8
/* 41D34 80041134 AFAC0074 */  sw         $t4, 0x74($sp)
/* 41D38 80041138 AD6E0004 */  sw         $t6, 0x4($t3)
/* 41D3C 8004113C AD6D0000 */  sw         $t5, 0x0($t3)
/* 41D40 80041140 8FAF0074 */  lw         $t7, 0x74($sp)
/* 41D44 80041144 3C0A0007 */  lui        $t2, (0x7C058 >> 16)
/* 41D48 80041148 354AC058 */  ori        $t2, $t2, (0x7C058 & 0xFFFF)
/* 41D4C 8004114C 25F80008 */  addiu      $t8, $t7, 0x8
/* 41D50 80041150 AFB80074 */  sw         $t8, 0x74($sp)
/* 41D54 80041154 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
/* 41D58 80041158 3C0D8009 */  lui        $t5, %hi(D_8008EF48)
/* 41D5C 8004115C ADF90000 */  sw         $t9, 0x0($t7)
/* 41D60 80041160 ADEA0004 */  sw         $t2, 0x4($t7)
/* 41D64 80041164 95ADEF48 */  lhu        $t5, %lo(D_8008EF48)($t5)
/* 41D68 80041168 8FA60074 */  lw         $a2, 0x74($sp)
/* 41D6C 8004116C 3C0B8009 */  lui        $t3, %hi(D_8008EF44)
/* 41D70 80041170 000D7080 */  sll        $t6, $t5, 2
/* 41D74 80041174 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 41D78 80041178 000FC300 */  sll        $t8, $t7, 12
/* 41D7C 8004117C 0309C825 */  or         $t9, $t8, $t1
/* 41D80 80041180 24CC0008 */  addiu      $t4, $a2, 0x8
/* 41D84 80041184 AFAC0074 */  sw         $t4, 0x74($sp)
/* 41D88 80041188 372A02A4 */  ori        $t2, $t9, (0xE40002A4 & 0xFFFF)
/* 41D8C 8004118C ACCA0000 */  sw         $t2, 0x0($a2)
/* 41D90 80041190 956BEF44 */  lhu        $t3, %lo(D_8008EF44)($t3)
/* 41D94 80041194 3C07B400 */  lui        $a3, (0xB4000000 >> 16)
/* 41D98 80041198 3C08B300 */  lui        $t0, (0xB3000000 >> 16)
/* 41D9C 8004119C 000B6080 */  sll        $t4, $t3, 2
/* 41DA0 800411A0 318D0FFF */  andi       $t5, $t4, 0xFFF
/* 41DA4 800411A4 000D7300 */  sll        $t6, $t5, 12
/* 41DA8 800411A8 35CF0248 */  ori        $t7, $t6, 0x248
/* 41DAC 800411AC ACCF0004 */  sw         $t7, 0x4($a2)
/* 41DB0 800411B0 8FB80074 */  lw         $t8, 0x74($sp)
/* 41DB4 800411B4 3C0C0400 */  lui        $t4, (0x4000400 >> 16)
/* 41DB8 800411B8 358C0400 */  ori        $t4, $t4, (0x4000400 & 0xFFFF)
/* 41DBC 800411BC 27190008 */  addiu      $t9, $t8, 0x8
/* 41DC0 800411C0 AFB90074 */  sw         $t9, 0x74($sp)
/* 41DC4 800411C4 AF000004 */  sw         $zero, 0x4($t8)
/* 41DC8 800411C8 AF070000 */  sw         $a3, 0x0($t8)
/* 41DCC 800411CC 8FAA0074 */  lw         $t2, 0x74($sp)
/* 41DD0 800411D0 3C0F8009 */  lui        $t7, %hi(D_8008EF40)
/* 41DD4 800411D4 3C0D8009 */  lui        $t5, %hi(D_8008EF3C)
/* 41DD8 800411D8 254B0008 */  addiu      $t3, $t2, 0x8
/* 41DDC 800411DC AFAB0074 */  sw         $t3, 0x74($sp)
/* 41DE0 800411E0 AD4C0004 */  sw         $t4, 0x4($t2)
/* 41DE4 800411E4 AD480000 */  sw         $t0, 0x0($t2)
/* 41DE8 800411E8 95EFEF40 */  lhu        $t7, %lo(D_8008EF40)($t7)
/* 41DEC 800411EC 8FA40074 */  lw         $a0, 0x74($sp)
/* 41DF0 800411F0 000FC080 */  sll        $t8, $t7, 2
/* 41DF4 800411F4 33190FFF */  andi       $t9, $t8, 0xFFF
/* 41DF8 800411F8 00195300 */  sll        $t2, $t9, 12
/* 41DFC 800411FC 01495825 */  or         $t3, $t2, $t1
/* 41E00 80041200 248E0008 */  addiu      $t6, $a0, 0x8
/* 41E04 80041204 AFAE0074 */  sw         $t6, 0x74($sp)
/* 41E08 80041208 356C02A4 */  ori        $t4, $t3, (0xE40002A4 & 0xFFFF)
/* 41E0C 8004120C AC8C0000 */  sw         $t4, 0x0($a0)
/* 41E10 80041210 95ADEF3C */  lhu        $t5, %lo(D_8008EF3C)($t5)
/* 41E14 80041214 3C0C03E0 */  lui        $t4, (0x3E00000 >> 16)
/* 41E18 80041218 000D7080 */  sll        $t6, $t5, 2
/* 41E1C 8004121C 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 41E20 80041220 000FC300 */  sll        $t8, $t7, 12
/* 41E24 80041224 37190248 */  ori        $t9, $t8, 0x248
/* 41E28 80041228 AC990004 */  sw         $t9, 0x4($a0)
/* 41E2C 8004122C 8FAA0074 */  lw         $t2, 0x74($sp)
/* 41E30 80041230 3C0FFC00 */  lui        $t7, (0xFC000400 >> 16)
/* 41E34 80041234 35EF0400 */  ori        $t7, $t7, (0xFC000400 & 0xFFFF)
/* 41E38 80041238 254B0008 */  addiu      $t3, $t2, 0x8
/* 41E3C 8004123C AFAB0074 */  sw         $t3, 0x74($sp)
/* 41E40 80041240 AD4C0004 */  sw         $t4, 0x4($t2)
/* 41E44 80041244 AD470000 */  sw         $a3, 0x0($t2)
/* 41E48 80041248 8FAD0074 */  lw         $t5, 0x74($sp)
/* 41E4C 8004124C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 41E50 80041250 AFAE0074 */  sw         $t6, 0x74($sp)
/* 41E54 80041254 ADAF0004 */  sw         $t7, 0x4($t5)
/* 41E58 80041258 ADA80000 */  sw         $t0, 0x0($t5)
/* 41E5C 8004125C 8FB90078 */  lw         $t9, 0x78($sp)
/* 41E60 80041260 8FB80074 */  lw         $t8, 0x74($sp)
/* 41E64 80041264 AF380000 */  sw         $t8, 0x0($t9)
/* 41E68 80041268 8FBF0014 */  lw         $ra, 0x14($sp)
/* 41E6C 8004126C 27BD0078 */  addiu      $sp, $sp, 0x78
/* 41E70 80041270 03E00008 */  jr         $ra
/* 41E74 80041274 00000000 */   nop

glabel func_80041278
/* 41E78 80041278 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 41E7C 8004127C AFBF003C */  sw         $ra, 0x3C($sp)
/* 41E80 80041280 AFBE0038 */  sw         $fp, 0x38($sp)
/* 41E84 80041284 AFB70034 */  sw         $s7, 0x34($sp)
/* 41E88 80041288 AFB60030 */  sw         $s6, 0x30($sp)
/* 41E8C 8004128C AFB5002C */  sw         $s5, 0x2C($sp)
/* 41E90 80041290 AFB40028 */  sw         $s4, 0x28($sp)
/* 41E94 80041294 AFB30024 */  sw         $s3, 0x24($sp)
/* 41E98 80041298 AFB20020 */  sw         $s2, 0x20($sp)
/* 41E9C 8004129C AFB1001C */  sw         $s1, 0x1C($sp)
/* 41EA0 800412A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 41EA4 800412A4 AFA40088 */  sw         $a0, 0x88($sp)
/* 41EA8 800412A8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 41EAC 800412AC 27A40084 */  addiu      $a0, $sp, 0x84
/* 41EB0 800412B0 0C015E11 */  jal        func_80057844
/* 41EB4 800412B4 AFAF0084 */   sw        $t7, 0x84($sp)
/* 41EB8 800412B8 3C0B803B */  lui        $t3, %hi(D_803B73C8)
/* 41EBC 800412BC 3C17001C */  lui        $s7, (0x1CC000 >> 16)
/* 41EC0 800412C0 3C16E432 */  lui        $s6, (0xE4324000 >> 16)
/* 41EC4 800412C4 3C150015 */  lui        $s5, (0x15C000 >> 16)
/* 41EC8 800412C8 3C130008 */  lui        $s3, (0x80200 >> 16)
/* 41ECC 800412CC 3C120715 */  lui        $s2, (0x715C000 >> 16)
/* 41ED0 800412D0 3C1F0708 */  lui        $ra, (0x7080200 >> 16)
/* 41ED4 800412D4 3C0DFD88 */  lui        $t5, (0xFD880057 >> 16)
/* 41ED8 800412D8 3C0AF588 */  lui        $t2, (0xF5881600 >> 16)
/* 41EDC 800412DC 354A1600 */  ori        $t2, $t2, (0xF5881600 & 0xFFFF)
/* 41EE0 800412E0 35AD0057 */  ori        $t5, $t5, (0xFD880057 & 0xFFFF)
/* 41EE4 800412E4 37FF0200 */  ori        $ra, $ra, (0x7080200 & 0xFFFF)
/* 41EE8 800412E8 3652C000 */  ori        $s2, $s2, (0x715C000 & 0xFFFF)
/* 41EEC 800412EC 36730200 */  ori        $s3, $s3, (0x80200 & 0xFFFF)
/* 41EF0 800412F0 36B5C000 */  ori        $s5, $s5, (0x15C000 & 0xFFFF)
/* 41EF4 800412F4 36D64000 */  ori        $s6, $s6, (0xE4324000 & 0xFFFF)
/* 41EF8 800412F8 36F7C000 */  ori        $s7, $s7, (0x1CC000 & 0xFFFF)
/* 41EFC 800412FC 256B73C8 */  addiu      $t3, $t3, %lo(D_803B73C8)
/* 41F00 80041300 00001025 */  or         $v0, $zero, $zero
/* 41F04 80041304 3C1EB400 */  lui        $fp, (0xB4000000 >> 16)
/* 41F08 80041308 3C14F200 */  lui        $s4, (0xF2000000 >> 16)
/* 41F0C 8004130C 3C11F400 */  lui        $s1, (0xF4000000 >> 16)
/* 41F10 80041310 3C10E600 */  lui        $s0, (0xE6000000 >> 16)
/* 41F14 80041314 3C0CE700 */  lui        $t4, (0xE7000000 >> 16)
.L80041318:
/* 41F18 80041318 8FB80084 */  lw         $t8, 0x84($sp)
/* 41F1C 8004131C 00023880 */  sll        $a3, $v0, 2
/* 41F20 80041320 2448001E */  addiu      $t0, $v0, 0x1E
/* 41F24 80041324 27190008 */  addiu      $t9, $t8, 0x8
/* 41F28 80041328 AFB90084 */  sw         $t9, 0x84($sp)
/* 41F2C 8004132C AF0B0004 */  sw         $t3, 0x4($t8)
/* 41F30 80041330 AF0D0000 */  sw         $t5, 0x0($t8)
/* 41F34 80041334 8FAE0084 */  lw         $t6, 0x84($sp)
/* 41F38 80041338 2444001F */  addiu      $a0, $v0, 0x1F
/* 41F3C 8004133C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 41F40 80041340 AFAF0084 */  sw         $t7, 0x84($sp)
/* 41F44 80041344 ADDF0004 */  sw         $ra, 0x4($t6)
/* 41F48 80041348 ADCA0000 */  sw         $t2, 0x0($t6)
/* 41F4C 8004134C 8FB80084 */  lw         $t8, 0x84($sp)
/* 41F50 80041350 00087080 */  sll        $t6, $t0, 2
/* 41F54 80041354 31C80FFF */  andi       $t0, $t6, 0xFFF
/* 41F58 80041358 27190008 */  addiu      $t9, $t8, 0x8
/* 41F5C 8004135C AFB90084 */  sw         $t9, 0x84($sp)
/* 41F60 80041360 AF000004 */  sw         $zero, 0x4($t8)
/* 41F64 80041364 AF100000 */  sw         $s0, 0x0($t8)
/* 41F68 80041368 8FA60084 */  lw         $a2, 0x84($sp)
/* 41F6C 8004136C 30F80FFF */  andi       $t8, $a3, 0xFFF
/* 41F70 80041370 03003825 */  or         $a3, $t8, $zero
/* 41F74 80041374 24CF0008 */  addiu      $t7, $a2, 0x8
/* 41F78 80041378 AFAF0084 */  sw         $t7, 0x84($sp)
/* 41F7C 8004137C 0311C825 */  or         $t9, $t8, $s1
/* 41F80 80041380 0112C025 */  or         $t8, $t0, $s2
/* 41F84 80041384 ACD80004 */  sw         $t8, 0x4($a2)
/* 41F88 80041388 ACD90000 */  sw         $t9, 0x0($a2)
/* 41F8C 8004138C 8FB90084 */  lw         $t9, 0x84($sp)
/* 41F90 80041390 272E0008 */  addiu      $t6, $t9, 0x8
/* 41F94 80041394 AFAE0084 */  sw         $t6, 0x84($sp)
/* 41F98 80041398 AF200004 */  sw         $zero, 0x4($t9)
/* 41F9C 8004139C AF2C0000 */  sw         $t4, 0x0($t9)
/* 41FA0 800413A0 8FAF0084 */  lw         $t7, 0x84($sp)
/* 41FA4 800413A4 25F80008 */  addiu      $t8, $t7, 0x8
/* 41FA8 800413A8 AFB80084 */  sw         $t8, 0x84($sp)
/* 41FAC 800413AC ADF30004 */  sw         $s3, 0x4($t7)
/* 41FB0 800413B0 ADEA0000 */  sw         $t2, 0x0($t7)
/* 41FB4 800413B4 8FB90084 */  lw         $t9, 0x84($sp)
/* 41FB8 800413B8 00F47825 */  or         $t7, $a3, $s4
/* 41FBC 800413BC 0115C025 */  or         $t8, $t0, $s5
/* 41FC0 800413C0 272E0008 */  addiu      $t6, $t9, 0x8
/* 41FC4 800413C4 AFAE0084 */  sw         $t6, 0x84($sp)
/* 41FC8 800413C8 AF380004 */  sw         $t8, 0x4($t9)
/* 41FCC 800413CC AF2F0000 */  sw         $t7, 0x0($t9)
/* 41FD0 800413D0 8FA50084 */  lw         $a1, 0x84($sp)
/* 41FD4 800413D4 244F0052 */  addiu      $t7, $v0, 0x52
/* 41FD8 800413D8 000FC080 */  sll        $t8, $t7, 2
/* 41FDC 800413DC 24AE0008 */  addiu      $t6, $a1, 0x8
/* 41FE0 800413E0 AFAE0084 */  sw         $t6, 0x84($sp)
/* 41FE4 800413E4 33190FFF */  andi       $t9, $t8, 0xFFF
/* 41FE8 800413E8 03367025 */  or         $t6, $t9, $s6
/* 41FEC 800413EC 244F0033 */  addiu      $t7, $v0, 0x33
/* 41FF0 800413F0 000FC080 */  sll        $t8, $t7, 2
/* 41FF4 800413F4 33190FFF */  andi       $t9, $t8, 0xFFF
/* 41FF8 800413F8 ACAE0000 */  sw         $t6, 0x0($a1)
/* 41FFC 800413FC 03377025 */  or         $t6, $t9, $s7
/* 42000 80041400 ACAE0004 */  sw         $t6, 0x4($a1)
/* 42004 80041404 8FAF0084 */  lw         $t7, 0x84($sp)
/* 42008 80041408 0002C940 */  sll        $t9, $v0, 5
/* 4200C 8004140C 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 42010 80041410 25F80008 */  addiu      $t8, $t7, 0x8
/* 42014 80041414 AFB80084 */  sw         $t8, 0x84($sp)
/* 42018 80041418 ADEE0004 */  sw         $t6, 0x4($t7)
/* 4201C 8004141C ADFE0000 */  sw         $fp, 0x0($t7)
/* 42020 80041420 8FAF0084 */  lw         $t7, 0x84($sp)
/* 42024 80041424 308200FF */  andi       $v0, $a0, 0xFF
/* 42028 80041428 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 4202C 8004142C 25F80008 */  addiu      $t8, $t7, 0x8
/* 42030 80041430 2841003E */  slti       $at, $v0, 0x3E
/* 42034 80041434 AFB80084 */  sw         $t8, 0x84($sp)
/* 42038 80041438 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 4203C 8004143C 3C19B300 */  lui        $t9, (0xB3000000 >> 16)
/* 42040 80041440 ADF90000 */  sw         $t9, 0x0($t7)
/* 42044 80041444 1420FFB4 */  bnez       $at, .L80041318
/* 42048 80041448 ADEE0004 */   sw        $t6, 0x4($t7)
/* 4204C 8004144C 8FB80084 */  lw         $t8, 0x84($sp)
/* 42050 80041450 27190008 */  addiu      $t9, $t8, 0x8
/* 42054 80041454 AFB90084 */  sw         $t9, 0x84($sp)
/* 42058 80041458 AF000004 */  sw         $zero, 0x4($t8)
/* 4205C 8004145C AF0C0000 */  sw         $t4, 0x0($t8)
/* 42060 80041460 8FAF0088 */  lw         $t7, 0x88($sp)
/* 42064 80041464 8FAE0084 */  lw         $t6, 0x84($sp)
/* 42068 80041468 ADEE0000 */  sw         $t6, 0x0($t7)
/* 4206C 8004146C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 42070 80041470 8FBE0038 */  lw         $fp, 0x38($sp)
/* 42074 80041474 8FB70034 */  lw         $s7, 0x34($sp)
/* 42078 80041478 8FB60030 */  lw         $s6, 0x30($sp)
/* 4207C 8004147C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 42080 80041480 8FB40028 */  lw         $s4, 0x28($sp)
/* 42084 80041484 8FB30024 */  lw         $s3, 0x24($sp)
/* 42088 80041488 8FB20020 */  lw         $s2, 0x20($sp)
/* 4208C 8004148C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 42090 80041490 8FB00018 */  lw         $s0, 0x18($sp)
/* 42094 80041494 03E00008 */  jr         $ra
/* 42098 80041498 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8004149C
/* 4209C 8004149C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 420A0 800414A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 420A4 800414A4 AFA40048 */  sw         $a0, 0x48($sp)
/* 420A8 800414A8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 420AC 800414AC 27A40044 */  addiu      $a0, $sp, 0x44
/* 420B0 800414B0 0C015E11 */  jal        func_80057844
/* 420B4 800414B4 AFAF0044 */   sw        $t7, 0x44($sp)
/* 420B8 800414B8 8FB80044 */  lw         $t8, 0x44($sp)
/* 420BC 800414BC 3C09FD88 */  lui        $t1, (0xFD88005F >> 16)
/* 420C0 800414C0 3C0A803C */  lui        $t2, %hi(D_803B8920)
/* 420C4 800414C4 27190008 */  addiu      $t9, $t8, 0x8
/* 420C8 800414C8 AFB90044 */  sw         $t9, 0x44($sp)
/* 420CC 800414CC 254A8920 */  addiu      $t2, $t2, %lo(D_803B8920)
/* 420D0 800414D0 3529005F */  ori        $t1, $t1, (0xFD88005F & 0xFFFF)
/* 420D4 800414D4 AF090000 */  sw         $t1, 0x0($t8)
/* 420D8 800414D8 AF0A0004 */  sw         $t2, 0x4($t8)
/* 420DC 800414DC 8FAB0044 */  lw         $t3, 0x44($sp)
/* 420E0 800414E0 3C07F588 */  lui        $a3, (0xF5881800 >> 16)
/* 420E4 800414E4 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 420E8 800414E8 256C0008 */  addiu      $t4, $t3, 0x8
/* 420EC 800414EC AFAC0044 */  sw         $t4, 0x44($sp)
/* 420F0 800414F0 34E71800 */  ori        $a3, $a3, (0xF5881800 & 0xFFFF)
/* 420F4 800414F4 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 420F8 800414F8 AD6D0004 */  sw         $t5, 0x4($t3)
/* 420FC 800414FC AD670000 */  sw         $a3, 0x0($t3)
/* 42100 80041500 8FAE0044 */  lw         $t6, 0x44($sp)
/* 42104 80041504 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 42108 80041508 3C0B0717 */  lui        $t3, (0x717C0A4 >> 16)
/* 4210C 8004150C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 42110 80041510 AFAF0044 */  sw         $t7, 0x44($sp)
/* 42114 80041514 ADC00004 */  sw         $zero, 0x4($t6)
/* 42118 80041518 ADD80000 */  sw         $t8, 0x0($t6)
/* 4211C 8004151C 8FB90044 */  lw         $t9, 0x44($sp)
/* 42120 80041520 356BC0A4 */  ori        $t3, $t3, (0x717C0A4 & 0xFFFF)
/* 42124 80041524 3C0AF400 */  lui        $t2, (0xF4000000 >> 16)
/* 42128 80041528 27290008 */  addiu      $t1, $t9, 0x8
/* 4212C 8004152C AFA90044 */  sw         $t1, 0x44($sp)
/* 42130 80041530 AF2A0000 */  sw         $t2, 0x0($t9)
/* 42134 80041534 AF2B0004 */  sw         $t3, 0x4($t9)
/* 42138 80041538 8FAC0044 */  lw         $t4, 0x44($sp)
/* 4213C 8004153C 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 42140 80041540 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 42144 80041544 258D0008 */  addiu      $t5, $t4, 0x8
/* 42148 80041548 AFAD0044 */  sw         $t5, 0x44($sp)
/* 4214C 8004154C AD800004 */  sw         $zero, 0x4($t4)
/* 42150 80041550 AD880000 */  sw         $t0, 0x0($t4)
/* 42154 80041554 8FAE0044 */  lw         $t6, 0x44($sp)
/* 42158 80041558 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 4215C 8004155C 3C0B0017 */  lui        $t3, (0x17C0A4 >> 16)
/* 42160 80041560 25CF0008 */  addiu      $t7, $t6, 0x8
/* 42164 80041564 AFAF0044 */  sw         $t7, 0x44($sp)
/* 42168 80041568 ADD80004 */  sw         $t8, 0x4($t6)
/* 4216C 8004156C ADC70000 */  sw         $a3, 0x0($t6)
/* 42170 80041570 8FB90044 */  lw         $t9, 0x44($sp)
/* 42174 80041574 356BC0A4 */  ori        $t3, $t3, (0x17C0A4 & 0xFFFF)
/* 42178 80041578 3C0AF200 */  lui        $t2, (0xF2000000 >> 16)
/* 4217C 8004157C 27290008 */  addiu      $t1, $t9, 0x8
/* 42180 80041580 AFA90044 */  sw         $t1, 0x44($sp)
/* 42184 80041584 AF2A0000 */  sw         $t2, 0x0($t9)
/* 42188 80041588 AF2B0004 */  sw         $t3, 0x4($t9)
/* 4218C 8004158C 8FAC0044 */  lw         $t4, 0x44($sp)
/* 42190 80041590 3C0EE437 */  lui        $t6, (0xE437C2AC >> 16)
/* 42194 80041594 3C0F001F */  lui        $t7, (0x1FC204 >> 16)
/* 42198 80041598 258D0008 */  addiu      $t5, $t4, 0x8
/* 4219C 8004159C AFAD0044 */  sw         $t5, 0x44($sp)
/* 421A0 800415A0 35EFC204 */  ori        $t7, $t7, (0x1FC204 & 0xFFFF)
/* 421A4 800415A4 35CEC2AC */  ori        $t6, $t6, (0xE437C2AC & 0xFFFF)
/* 421A8 800415A8 AD8E0000 */  sw         $t6, 0x0($t4)
/* 421AC 800415AC AD8F0004 */  sw         $t7, 0x4($t4)
/* 421B0 800415B0 8FB80044 */  lw         $t8, 0x44($sp)
/* 421B4 800415B4 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 421B8 800415B8 3C0D0400 */  lui        $t5, (0x4000400 >> 16)
/* 421BC 800415BC 27190008 */  addiu      $t9, $t8, 0x8
/* 421C0 800415C0 AFB90044 */  sw         $t9, 0x44($sp)
/* 421C4 800415C4 AF000004 */  sw         $zero, 0x4($t8)
/* 421C8 800415C8 AF090000 */  sw         $t1, 0x0($t8)
/* 421CC 800415CC 8FAA0044 */  lw         $t2, 0x44($sp)
/* 421D0 800415D0 35AD0400 */  ori        $t5, $t5, (0x4000400 & 0xFFFF)
/* 421D4 800415D4 3C0CB300 */  lui        $t4, (0xB3000000 >> 16)
/* 421D8 800415D8 254B0008 */  addiu      $t3, $t2, 0x8
/* 421DC 800415DC AFAB0044 */  sw         $t3, 0x44($sp)
/* 421E0 800415E0 AD4D0004 */  sw         $t5, 0x4($t2)
/* 421E4 800415E4 AD4C0000 */  sw         $t4, 0x0($t2)
/* 421E8 800415E8 8FAE0044 */  lw         $t6, 0x44($sp)
/* 421EC 800415EC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 421F0 800415F0 AFAF0044 */  sw         $t7, 0x44($sp)
/* 421F4 800415F4 ADC00004 */  sw         $zero, 0x4($t6)
/* 421F8 800415F8 ADC80000 */  sw         $t0, 0x0($t6)
/* 421FC 800415FC 8FB90048 */  lw         $t9, 0x48($sp)
/* 42200 80041600 8FB80044 */  lw         $t8, 0x44($sp)
/* 42204 80041604 AF380000 */  sw         $t8, 0x0($t9)
/* 42208 80041608 8FBF0014 */  lw         $ra, 0x14($sp)
/* 4220C 8004160C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 42210 80041610 03E00008 */  jr         $ra
/* 42214 80041614 00000000 */   nop

glabel func_80041618
/* 42218 80041618 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 4221C 8004161C AFBF003C */  sw         $ra, 0x3C($sp)
/* 42220 80041620 AFBE0038 */  sw         $fp, 0x38($sp)
/* 42224 80041624 AFB70034 */  sw         $s7, 0x34($sp)
/* 42228 80041628 AFB60030 */  sw         $s6, 0x30($sp)
/* 4222C 8004162C AFB5002C */  sw         $s5, 0x2C($sp)
/* 42230 80041630 AFB40028 */  sw         $s4, 0x28($sp)
/* 42234 80041634 AFB30024 */  sw         $s3, 0x24($sp)
/* 42238 80041638 AFB20020 */  sw         $s2, 0x20($sp)
/* 4223C 8004163C AFB1001C */  sw         $s1, 0x1C($sp)
/* 42240 80041640 AFB00018 */  sw         $s0, 0x18($sp)
/* 42244 80041644 AFA40088 */  sw         $a0, 0x88($sp)
/* 42248 80041648 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4224C 8004164C 27A40084 */  addiu      $a0, $sp, 0x84
/* 42250 80041650 0C015E11 */  jal        func_80057844
/* 42254 80041654 AFAF0084 */   sw        $t7, 0x84($sp)
/* 42258 80041658 3C0A803C */  lui        $t2, %hi(D_803B98E8)
/* 4225C 8004165C 3C1E0400 */  lui        $fp, (0x4000400 >> 16)
/* 42260 80041660 3C130008 */  lui        $s3, (0x80200 >> 16)
/* 42264 80041664 3C1F0708 */  lui        $ra, (0x7080200 >> 16)
/* 42268 80041668 3C0CFD88 */  lui        $t4, (0xFD88003F >> 16)
/* 4226C 8004166C 358C003F */  ori        $t4, $t4, (0xFD88003F & 0xFFFF)
/* 42270 80041670 37FF0200 */  ori        $ra, $ra, (0x7080200 & 0xFFFF)
/* 42274 80041674 36730200 */  ori        $s3, $s3, (0x80200 & 0xFFFF)
/* 42278 80041678 37DE0400 */  ori        $fp, $fp, (0x4000400 & 0xFFFF)
/* 4227C 8004167C 254A98E8 */  addiu      $t2, $t2, %lo(D_803B98E8)
/* 42280 80041680 00001025 */  or         $v0, $zero, $zero
/* 42284 80041684 3C17B300 */  lui        $s7, (0xB3000000 >> 16)
/* 42288 80041688 3C16B400 */  lui        $s6, (0xB4000000 >> 16)
/* 4228C 8004168C 3C15E400 */  lui        $s5, (0xE400030C >> 16)
/* 42290 80041690 3C14F200 */  lui        $s4, (0xF2000000 >> 16)
/* 42294 80041694 3C120700 */  lui        $s2, (0x70001CC >> 16)
/* 42298 80041698 3C11F400 */  lui        $s1, (0xF4000000 >> 16)
/* 4229C 8004169C 3C10E600 */  lui        $s0, (0xE6000000 >> 16)
/* 422A0 800416A0 3C0DF588 */  lui        $t5, (0xF5880000 >> 16)
/* 422A4 800416A4 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
.L800416A8:
/* 422A8 800416A8 8FB80084 */  lw         $t8, 0x84($sp)
/* 422AC 800416AC 00024080 */  sll        $t0, $v0, 2
/* 422B0 800416B0 2449001F */  addiu      $t1, $v0, 0x1F
/* 422B4 800416B4 27190008 */  addiu      $t9, $t8, 0x8
/* 422B8 800416B8 AFB90084 */  sw         $t9, 0x84($sp)
/* 422BC 800416BC AF0A0004 */  sw         $t2, 0x4($t8)
/* 422C0 800416C0 AF0C0000 */  sw         $t4, 0x0($t8)
/* 422C4 800416C4 8FA40084 */  lw         $a0, 0x84($sp)
/* 422C8 800416C8 0042C023 */  subu       $t8, $v0, $v0
/* 422CC 800416CC 27190027 */  addiu      $t9, $t8, 0x27
/* 422D0 800416D0 248F0008 */  addiu      $t7, $a0, 0x8
/* 422D4 800416D4 AFAF0084 */  sw         $t7, 0x84($sp)
/* 422D8 800416D8 001970C3 */  sra        $t6, $t9, 3
/* 422DC 800416DC 31CF01FF */  andi       $t7, $t6, 0x1FF
/* 422E0 800416E0 000FC240 */  sll        $t8, $t7, 9
/* 422E4 800416E4 030D3825 */  or         $a3, $t8, $t5
/* 422E8 800416E8 AC870000 */  sw         $a3, 0x0($a0)
/* 422EC 800416EC AC9F0004 */  sw         $ra, 0x4($a0)
/* 422F0 800416F0 8FB90084 */  lw         $t9, 0x84($sp)
/* 422F4 800416F4 24450020 */  addiu      $a1, $v0, 0x20
/* 422F8 800416F8 272E0008 */  addiu      $t6, $t9, 0x8
/* 422FC 800416FC AFAE0084 */  sw         $t6, 0x84($sp)
/* 42300 80041700 AF200004 */  sw         $zero, 0x4($t9)
/* 42304 80041704 AF300000 */  sw         $s0, 0x0($t9)
/* 42308 80041708 8FA60084 */  lw         $a2, 0x84($sp)
/* 4230C 8004170C 31190FFF */  andi       $t9, $t0, 0xFFF
/* 42310 80041710 00194300 */  sll        $t0, $t9, 12
/* 42314 80041714 24D80008 */  addiu      $t8, $a2, 0x8
/* 42318 80041718 AFB80084 */  sw         $t8, 0x84($sp)
/* 4231C 8004171C 0009C080 */  sll        $t8, $t1, 2
/* 42320 80041720 33190FFF */  andi       $t9, $t8, 0xFFF
/* 42324 80041724 01117825 */  or         $t7, $t0, $s1
/* 42328 80041728 00194B00 */  sll        $t1, $t9, 12
/* 4232C 8004172C ACCF0000 */  sw         $t7, 0x0($a2)
/* 42330 80041730 01327825 */  or         $t7, $t1, $s2
/* 42334 80041734 35F801CC */  ori        $t8, $t7, (0x70001CC & 0xFFFF)
/* 42338 80041738 ACD80004 */  sw         $t8, 0x4($a2)
/* 4233C 8004173C 8FB90084 */  lw         $t9, 0x84($sp)
/* 42340 80041740 272E0008 */  addiu      $t6, $t9, 0x8
/* 42344 80041744 AFAE0084 */  sw         $t6, 0x84($sp)
/* 42348 80041748 AF200004 */  sw         $zero, 0x4($t9)
/* 4234C 8004174C AF2B0000 */  sw         $t3, 0x0($t9)
/* 42350 80041750 8FAF0084 */  lw         $t7, 0x84($sp)
/* 42354 80041754 25F80008 */  addiu      $t8, $t7, 0x8
/* 42358 80041758 AFB80084 */  sw         $t8, 0x84($sp)
/* 4235C 8004175C ADF30004 */  sw         $s3, 0x4($t7)
/* 42360 80041760 ADE70000 */  sw         $a3, 0x0($t7)
/* 42364 80041764 8FB90084 */  lw         $t9, 0x84($sp)
/* 42368 80041768 01147825 */  or         $t7, $t0, $s4
/* 4236C 8004176C 353801CC */  ori        $t8, $t1, 0x1CC
/* 42370 80041770 272E0008 */  addiu      $t6, $t9, 0x8
/* 42374 80041774 AFAE0084 */  sw         $t6, 0x84($sp)
/* 42378 80041778 AF380004 */  sw         $t8, 0x4($t9)
/* 4237C 8004177C AF2F0000 */  sw         $t7, 0x0($t9)
/* 42380 80041780 8FA60084 */  lw         $a2, 0x84($sp)
/* 42384 80041784 244F0029 */  addiu      $t7, $v0, 0x29
/* 42388 80041788 000FC080 */  sll        $t8, $t7, 2
/* 4238C 8004178C 24CE0008 */  addiu      $t6, $a2, 0x8
/* 42390 80041790 AFAE0084 */  sw         $t6, 0x84($sp)
/* 42394 80041794 33190FFF */  andi       $t9, $t8, 0xFFF
/* 42398 80041798 00197300 */  sll        $t6, $t9, 12
/* 4239C 8004179C 01D57825 */  or         $t7, $t6, $s5
/* 423A0 800417A0 35F8030C */  ori        $t8, $t7, (0xE400030C & 0xFFFF)
/* 423A4 800417A4 24590009 */  addiu      $t9, $v0, 0x9
/* 423A8 800417A8 00197080 */  sll        $t6, $t9, 2
/* 423AC 800417AC 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 423B0 800417B0 ACD80000 */  sw         $t8, 0x0($a2)
/* 423B4 800417B4 000FC300 */  sll        $t8, $t7, 12
/* 423B8 800417B8 3719016C */  ori        $t9, $t8, 0x16C
/* 423BC 800417BC ACD90004 */  sw         $t9, 0x4($a2)
/* 423C0 800417C0 8FA30084 */  lw         $v1, 0x84($sp)
/* 423C4 800417C4 0040C825 */  or         $t9, $v0, $zero
/* 423C8 800417C8 00197540 */  sll        $t6, $t9, 21
/* 423CC 800417CC 246F0008 */  addiu      $t7, $v1, 0x8
/* 423D0 800417D0 AFAF0084 */  sw         $t7, 0x84($sp)
/* 423D4 800417D4 AC6E0004 */  sw         $t6, 0x4($v1)
/* 423D8 800417D8 AC760000 */  sw         $s6, 0x0($v1)
/* 423DC 800417DC 8FAF0084 */  lw         $t7, 0x84($sp)
/* 423E0 800417E0 30A200FF */  andi       $v0, $a1, 0xFF
/* 423E4 800417E4 28410040 */  slti       $at, $v0, 0x40
/* 423E8 800417E8 25F80008 */  addiu      $t8, $t7, 0x8
/* 423EC 800417EC AFB80084 */  sw         $t8, 0x84($sp)
/* 423F0 800417F0 ADFE0004 */  sw         $fp, 0x4($t7)
/* 423F4 800417F4 1420FFAC */  bnez       $at, .L800416A8
/* 423F8 800417F8 ADF70000 */   sw        $s7, 0x0($t7)
/* 423FC 800417FC 8FAE0084 */  lw         $t6, 0x84($sp)
/* 42400 80041800 25CF0008 */  addiu      $t7, $t6, 0x8
/* 42404 80041804 AFAF0084 */  sw         $t7, 0x84($sp)
/* 42408 80041808 ADC00004 */  sw         $zero, 0x4($t6)
/* 4240C 8004180C ADCB0000 */  sw         $t3, 0x0($t6)
/* 42410 80041810 8FB90088 */  lw         $t9, 0x88($sp)
/* 42414 80041814 8FB80084 */  lw         $t8, 0x84($sp)
/* 42418 80041818 AF380000 */  sw         $t8, 0x0($t9)
/* 4241C 8004181C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 42420 80041820 8FBE0038 */  lw         $fp, 0x38($sp)
/* 42424 80041824 8FB70034 */  lw         $s7, 0x34($sp)
/* 42428 80041828 8FB60030 */  lw         $s6, 0x30($sp)
/* 4242C 8004182C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 42430 80041830 8FB40028 */  lw         $s4, 0x28($sp)
/* 42434 80041834 8FB30024 */  lw         $s3, 0x24($sp)
/* 42438 80041838 8FB20020 */  lw         $s2, 0x20($sp)
/* 4243C 8004183C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 42440 80041840 8FB00018 */  lw         $s0, 0x18($sp)
/* 42444 80041844 03E00008 */  jr         $ra
/* 42448 80041848 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8004184C
/* 4244C 8004184C 3C038009 */  lui        $v1, %hi(D_8008EF4C)
/* 42450 80041850 9063EF4C */  lbu        $v1, %lo(D_8008EF4C)($v1)
/* 42454 80041854 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 42458 80041858 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4245C 8004185C AFA40038 */  sw         $a0, 0x38($sp)
/* 42460 80041860 04600034 */  bltz       $v1, .L80041934
/* 42464 80041864 00601025 */   or        $v0, $v1, $zero
/* 42468 80041868 28410007 */  slti       $at, $v0, 0x7
/* 4246C 8004186C 10200031 */  beqz       $at, .L80041934
/* 42470 80041870 24180050 */   addiu     $t8, $zero, 0x50
/* 42474 80041874 8C8F0000 */  lw         $t7, 0x0($a0)
/* 42478 80041878 3C0C8039 */  lui        $t4, %hi(D_80394518)
/* 4247C 8004187C 3C0D8039 */  lui        $t5, %hi(D_80394A70)
/* 42480 80041880 25AD4A70 */  addiu      $t5, $t5, %lo(D_80394A70)
/* 42484 80041884 258C4518 */  addiu      $t4, $t4, %lo(D_80394518)
/* 42488 80041888 24190022 */  addiu      $t9, $zero, 0x22
/* 4248C 8004188C 24080050 */  addiu      $t0, $zero, 0x50
/* 42490 80041890 24090022 */  addiu      $t1, $zero, 0x22
/* 42494 80041894 240A0081 */  addiu      $t2, $zero, 0x81
/* 42498 80041898 240B0090 */  addiu      $t3, $zero, 0x90
/* 4249C 8004189C A7AB002A */  sh         $t3, 0x2A($sp)
/* 424A0 800418A0 A7AA0028 */  sh         $t2, 0x28($sp)
/* 424A4 800418A4 A7A90026 */  sh         $t1, 0x26($sp)
/* 424A8 800418A8 A7A80024 */  sh         $t0, 0x24($sp)
/* 424AC 800418AC A7B90022 */  sh         $t9, 0x22($sp)
/* 424B0 800418B0 AFAC002C */  sw         $t4, 0x2C($sp)
/* 424B4 800418B4 AFAD0030 */  sw         $t5, 0x30($sp)
/* 424B8 800418B8 A7B80020 */  sh         $t8, 0x20($sp)
/* 424BC 800418BC 27A40034 */  addiu      $a0, $sp, 0x34
/* 424C0 800418C0 27A50020 */  addiu      $a1, $sp, 0x20
/* 424C4 800418C4 0C014F9F */  jal        func_80053E7C
/* 424C8 800418C8 AFAF0034 */   sw        $t7, 0x34($sp)
/* 424CC 800418CC 3C0A8039 */  lui        $t2, %hi(D_80394A98)
/* 424D0 800418D0 3C0B8039 */  lui        $t3, %hi(D_80394DE8)
/* 424D4 800418D4 256B4DE8 */  addiu      $t3, $t3, %lo(D_80394DE8)
/* 424D8 800418D8 254A4A98 */  addiu      $t2, $t2, %lo(D_80394A98)
/* 424DC 800418DC 240E0070 */  addiu      $t6, $zero, 0x70
/* 424E0 800418E0 240F000F */  addiu      $t7, $zero, 0xF
/* 424E4 800418E4 24180069 */  addiu      $t8, $zero, 0x69
/* 424E8 800418E8 2419000F */  addiu      $t9, $zero, 0xF
/* 424EC 800418EC 24080081 */  addiu      $t0, $zero, 0x81
/* 424F0 800418F0 240900B2 */  addiu      $t1, $zero, 0xB2
/* 424F4 800418F4 A7A9002A */  sh         $t1, 0x2A($sp)
/* 424F8 800418F8 A7A80028 */  sh         $t0, 0x28($sp)
/* 424FC 800418FC A7B90026 */  sh         $t9, 0x26($sp)
/* 42500 80041900 A7B80024 */  sh         $t8, 0x24($sp)
/* 42504 80041904 A7AF0022 */  sh         $t7, 0x22($sp)
/* 42508 80041908 A7AE0020 */  sh         $t6, 0x20($sp)
/* 4250C 8004190C AFAA002C */  sw         $t2, 0x2C($sp)
/* 42510 80041910 AFAB0030 */  sw         $t3, 0x30($sp)
/* 42514 80041914 27A40034 */  addiu      $a0, $sp, 0x34
/* 42518 80041918 0C0152AE */  jal        func_80054AB8
/* 4251C 8004191C 27A50020 */   addiu     $a1, $sp, 0x20
/* 42520 80041920 8FAC0034 */  lw         $t4, 0x34($sp)
/* 42524 80041924 8FAD0038 */  lw         $t5, 0x38($sp)
/* 42528 80041928 3C038009 */  lui        $v1, %hi(D_8008EF4C)
/* 4252C 8004192C ADAC0000 */  sw         $t4, 0x0($t5)
/* 42530 80041930 9063EF4C */  lbu        $v1, %lo(D_8008EF4C)($v1)
.L80041934:
/* 42534 80041934 24630001 */  addiu      $v1, $v1, 0x1
/* 42538 80041938 306E00FF */  andi       $t6, $v1, 0xFF
/* 4253C 8004193C 3C018009 */  lui        $at, %hi(D_8008EF4C)
/* 42540 80041940 A02EEF4C */  sb         $t6, %lo(D_8008EF4C)($at)
/* 42544 80041944 2401000E */  addiu      $at, $zero, 0xE
/* 42548 80041948 15C10002 */  bne        $t6, $at, .L80041954
/* 4254C 8004194C 3C018009 */   lui       $at, %hi(D_8008EF4C)
/* 42550 80041950 A020EF4C */  sb         $zero, %lo(D_8008EF4C)($at)
.L80041954:
/* 42554 80041954 8FBF0014 */  lw         $ra, 0x14($sp)
/* 42558 80041958 27BD0038 */  addiu      $sp, $sp, 0x38
/* 4255C 8004195C 03E00008 */  jr         $ra
/* 42560 80041960 00000000 */   nop

glabel func_80041964
/* 42564 80041964 3C0E801A */  lui        $t6, %hi(D_8019E6A8)
/* 42568 80041968 91CEE6A8 */  lbu        $t6, %lo(D_8019E6A8)($t6)
/* 4256C 8004196C 3C0F801A */  lui        $t7, %hi(D_8019EE02)
/* 42570 80041970 15C00015 */  bnez       $t6, .L800419C8
/* 42574 80041974 00000000 */   nop
/* 42578 80041978 95EFEE02 */  lhu        $t7, %lo(D_8019EE02)($t7)
/* 4257C 8004197C 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 42580 80041980 2463FF90 */  addiu      $v1, $v1, %lo(D_8013FF90)
/* 42584 80041984 31F80010 */  andi       $t8, $t7, 0x10
/* 42588 80041988 1300000F */  beqz       $t8, .L800419C8
/* 4258C 8004198C 00000000 */   nop
/* 42590 80041990 80790005 */  lb         $t9, 0x5($v1)
/* 42594 80041994 5720000A */  bnel       $t9, $zero, .L800419C0
/* 42598 80041998 80690007 */   lb        $t1, 0x7($v1)
/* 4259C 8004199C 80620007 */  lb         $v0, 0x7($v1)
/* 425A0 800419A0 24010005 */  addiu      $at, $zero, 0x5
/* 425A4 800419A4 14410003 */  bne        $v0, $at, .L800419B4
/* 425A8 800419A8 24480001 */   addiu     $t0, $v0, 0x1
/* 425AC 800419AC 03E00008 */  jr         $ra
/* 425B0 800419B0 A0600007 */   sb        $zero, 0x7($v1)
.L800419B4:
/* 425B4 800419B4 03E00008 */  jr         $ra
/* 425B8 800419B8 A0680007 */   sb        $t0, 0x7($v1)
/* 425BC 800419BC 80690007 */  lb         $t1, 0x7($v1)
.L800419C0:
/* 425C0 800419C0 392A0001 */  xori       $t2, $t1, 0x1
/* 425C4 800419C4 A06A0007 */  sb         $t2, 0x7($v1)
.L800419C8:
/* 425C8 800419C8 03E00008 */  jr         $ra
/* 425CC 800419CC 00000000 */   nop

glabel func_800419D0
/* 425D0 800419D0 3C06801A */  lui        $a2, %hi(D_8019E6B0)
/* 425D4 800419D4 24C6E6B0 */  addiu      $a2, $a2, %lo(D_8019E6B0)
/* 425D8 800419D8 2402003A */  addiu      $v0, $zero, 0x3A
/* 425DC 800419DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 425E0 800419E0 240300C6 */  addiu      $v1, $zero, 0xC6
/* 425E4 800419E4 240700FA */  addiu      $a3, $zero, 0xFA
/* 425E8 800419E8 2408013F */  addiu      $t0, $zero, 0x13F
/* 425EC 800419EC 240900B6 */  addiu      $t1, $zero, 0xB6
/* 425F0 800419F0 240E0046 */  addiu      $t6, $zero, 0x46
/* 425F4 800419F4 240F001E */  addiu      $t7, $zero, 0x1E
/* 425F8 800419F8 24180021 */  addiu      $t8, $zero, 0x21
/* 425FC 800419FC 2419002E */  addiu      $t9, $zero, 0x2E
/* 42600 80041A00 240A00F0 */  addiu      $t2, $zero, 0xF0
/* 42604 80041A04 240B00C4 */  addiu      $t3, $zero, 0xC4
/* 42608 80041A08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4260C 80041A0C AFA40020 */  sw         $a0, 0x20($sp)
/* 42610 80041A10 A4CF0002 */  sh         $t7, 0x2($a2)
/* 42614 80041A14 A4CE0000 */  sh         $t6, 0x0($a2)
/* 42618 80041A18 A4C30004 */  sh         $v1, 0x4($a2)
/* 4261C 80041A1C A4C20006 */  sh         $v0, 0x6($a2)
/* 42620 80041A20 A4D8000A */  sh         $t8, 0xA($a2)
/* 42624 80041A24 A4C7000C */  sh         $a3, 0xC($a2)
/* 42628 80041A28 A4C30008 */  sh         $v1, 0x8($a2)
/* 4262C 80041A2C A4C2000E */  sh         $v0, 0xE($a2)
/* 42630 80041A30 A4D90012 */  sh         $t9, 0x12($a2)
/* 42634 80041A34 A4C80014 */  sh         $t0, 0x14($a2)
/* 42638 80041A38 A4C70010 */  sh         $a3, 0x10($a2)
/* 4263C 80041A3C A4C20016 */  sh         $v0, 0x16($a2)
/* 42640 80041A40 A4C9001E */  sh         $t1, 0x1E($a2)
/* 42644 80041A44 A4C8001C */  sh         $t0, 0x1C($a2)
/* 42648 80041A48 A4C2001A */  sh         $v0, 0x1A($a2)
/* 4264C 80041A4C A4C00018 */  sh         $zero, 0x18($a2)
/* 42650 80041A50 A4CB0026 */  sh         $t3, 0x26($a2)
/* 42654 80041A54 A4CA0024 */  sh         $t2, 0x24($a2)
/* 42658 80041A58 A4C90022 */  sh         $t1, 0x22($a2)
/* 4265C 80041A5C A4C00020 */  sh         $zero, 0x20($a2)
/* 42660 80041A60 8C8D0000 */  lw         $t5, 0x0($a0)
/* 42664 80041A64 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 42668 80041A68 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 4266C 80041A6C 27A4001C */  addiu      $a0, $sp, 0x1C
/* 42670 80041A70 0C015681 */  jal        func_80055A04
/* 42674 80041A74 AFAD001C */   sw        $t5, 0x1C($sp)
/* 42678 80041A78 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 4267C 80041A7C 3C06801A */  lui        $a2, %hi(D_8019E6B8)
/* 42680 80041A80 24C6E6B8 */  addiu      $a2, $a2, %lo(D_8019E6B8)
/* 42684 80041A84 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 42688 80041A88 0C015681 */  jal        func_80055A04
/* 4268C 80041A8C 27A4001C */   addiu     $a0, $sp, 0x1C
/* 42690 80041A90 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 42694 80041A94 3C06801A */  lui        $a2, %hi(D_8019E6C0)
/* 42698 80041A98 24C6E6C0 */  addiu      $a2, $a2, %lo(D_8019E6C0)
/* 4269C 80041A9C 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 426A0 80041AA0 0C015681 */  jal        func_80055A04
/* 426A4 80041AA4 27A4001C */   addiu     $a0, $sp, 0x1C
/* 426A8 80041AA8 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 426AC 80041AAC 3C06801A */  lui        $a2, %hi(D_8019E6C8)
/* 426B0 80041AB0 24C6E6C8 */  addiu      $a2, $a2, %lo(D_8019E6C8)
/* 426B4 80041AB4 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 426B8 80041AB8 0C015681 */  jal        func_80055A04
/* 426BC 80041ABC 27A4001C */   addiu     $a0, $sp, 0x1C
/* 426C0 80041AC0 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 426C4 80041AC4 3C06801A */  lui        $a2, %hi(D_8019E6D0)
/* 426C8 80041AC8 24C6E6D0 */  addiu      $a2, $a2, %lo(D_8019E6D0)
/* 426CC 80041ACC 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 426D0 80041AD0 0C015681 */  jal        func_80055A04
/* 426D4 80041AD4 27A4001C */   addiu     $a0, $sp, 0x1C
/* 426D8 80041AD8 8FAE001C */  lw         $t6, 0x1C($sp)
/* 426DC 80041ADC 8FAF0020 */  lw         $t7, 0x20($sp)
/* 426E0 80041AE0 ADEE0000 */  sw         $t6, 0x0($t7)
/* 426E4 80041AE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 426E8 80041AE8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 426EC 80041AEC 03E00008 */  jr         $ra
/* 426F0 80041AF0 00000000 */   nop

glabel func_80041AF4
/* 426F4 80041AF4 3C028009 */  lui        $v0, %hi(D_8008F640)
/* 426F8 80041AF8 3C0E801A */  lui        $t6, %hi(D_8019EE00)
/* 426FC 80041AFC 81CEEE00 */  lb         $t6, %lo(D_8019EE00)($t6)
/* 42700 80041B00 8042F640 */  lb         $v0, %lo(D_8008F640)($v0)
/* 42704 80041B04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 42708 80041B08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4270C 80041B0C 11C20083 */  beq        $t6, $v0, .L80041D1C
/* 42710 80041B10 24040001 */   addiu     $a0, $zero, 0x1
/* 42714 80041B14 1482003E */  bne        $a0, $v0, .L80041C10
/* 42718 80041B18 2401FFFF */   addiu     $at, $zero, -0x1
/* 4271C 80041B1C 3C068014 */  lui        $a2, %hi(D_8013FF90)
/* 42720 80041B20 24C6FF90 */  addiu      $a2, $a2, %lo(D_8013FF90)
/* 42724 80041B24 80C30005 */  lb         $v1, 0x5($a2)
/* 42728 80041B28 24050004 */  addiu      $a1, $zero, 0x4
/* 4272C 80041B2C 14600011 */  bnez       $v1, .L80041B74
/* 42730 80041B30 2462FFFF */   addiu     $v0, $v1, -0x1
/* 42734 80041B34 3C038009 */  lui        $v1, %hi(D_8008EEA4)
/* 42738 80041B38 2463EEA4 */  addiu      $v1, $v1, %lo(D_8008EEA4)
/* 4273C 80041B3C 24020009 */  addiu      $v0, $zero, 0x9
/* 42740 80041B40 00627821 */  addu       $t7, $v1, $v0
.L80041B44:
/* 42744 80041B44 91F80000 */  lbu        $t8, 0x0($t7)
/* 42748 80041B48 54980004 */  bnel       $a0, $t8, .L80041B5C
/* 4274C 80041B4C 2442FFFF */   addiu     $v0, $v0, -0x1
/* 42750 80041B50 10000027 */  b          .L80041BF0
/* 42754 80041B54 A0C20005 */   sb        $v0, 0x5($a2)
/* 42758 80041B58 2442FFFF */  addiu      $v0, $v0, -0x1
.L80041B5C:
/* 4275C 80041B5C 0002CE00 */  sll        $t9, $v0, 24
/* 42760 80041B60 00191603 */  sra        $v0, $t9, 24
/* 42764 80041B64 0443FFF7 */  bgezl      $v0, .L80041B44
/* 42768 80041B68 00627821 */   addu      $t7, $v1, $v0
/* 4276C 80041B6C 10000021 */  b          .L80041BF4
/* 42770 80041B70 A0C00007 */   sb        $zero, 0x7($a2)
.L80041B74:
/* 42774 80041B74 00024E00 */  sll        $t1, $v0, 24
/* 42778 80041B78 00091603 */  sra        $v0, $t1, 24
/* 4277C 80041B7C 0440000D */  bltz       $v0, .L80041BB4
/* 42780 80041B80 3C038009 */   lui       $v1, %hi(D_8008EEA4)
/* 42784 80041B84 2463EEA4 */  addiu      $v1, $v1, %lo(D_8008EEA4)
/* 42788 80041B88 00625821 */  addu       $t3, $v1, $v0
.L80041B8C:
/* 4278C 80041B8C 916C0000 */  lbu        $t4, 0x0($t3)
/* 42790 80041B90 548C0004 */  bnel       $a0, $t4, .L80041BA4
/* 42794 80041B94 2442FFFF */   addiu     $v0, $v0, -0x1
/* 42798 80041B98 10000006 */  b          .L80041BB4
/* 4279C 80041B9C A0C20005 */   sb        $v0, 0x5($a2)
/* 427A0 80041BA0 2442FFFF */  addiu      $v0, $v0, -0x1
.L80041BA4:
/* 427A4 80041BA4 00026E00 */  sll        $t5, $v0, 24
/* 427A8 80041BA8 000D1603 */  sra        $v0, $t5, 24
/* 427AC 80041BAC 0443FFF7 */  bgezl      $v0, .L80041B8C
/* 427B0 80041BB0 00625821 */   addu      $t3, $v1, $v0
.L80041BB4:
/* 427B4 80041BB4 3C038009 */  lui        $v1, %hi(D_8008EEA4)
/* 427B8 80041BB8 0441000D */  bgez       $v0, .L80041BF0
/* 427BC 80041BBC 2463EEA4 */   addiu     $v1, $v1, %lo(D_8008EEA4)
/* 427C0 80041BC0 24020009 */  addiu      $v0, $zero, 0x9
/* 427C4 80041BC4 00627821 */  addu       $t7, $v1, $v0
.L80041BC8:
/* 427C8 80041BC8 91F80000 */  lbu        $t8, 0x0($t7)
/* 427CC 80041BCC 54980004 */  bnel       $a0, $t8, .L80041BE0
/* 427D0 80041BD0 2442FFFF */   addiu     $v0, $v0, -0x1
/* 427D4 80041BD4 10000006 */  b          .L80041BF0
/* 427D8 80041BD8 A0C20005 */   sb        $v0, 0x5($a2)
/* 427DC 80041BDC 2442FFFF */  addiu      $v0, $v0, -0x1
.L80041BE0:
/* 427E0 80041BE0 0002CE00 */  sll        $t9, $v0, 24
/* 427E4 80041BE4 00191603 */  sra        $v0, $t9, 24
/* 427E8 80041BE8 0443FFF7 */  bgezl      $v0, .L80041BC8
/* 427EC 80041BEC 00627821 */   addu      $t7, $v1, $v0
.L80041BF0:
/* 427F0 80041BF0 A0C00007 */  sb         $zero, 0x7($a2)
.L80041BF4:
/* 427F4 80041BF4 0C0004F0 */  jal        func_800013C0
/* 427F8 80041BF8 24040028 */   addiu     $a0, $zero, 0x28
/* 427FC 80041BFC 3C098009 */  lui        $t1, %hi(D_8008F640)
/* 42800 80041C00 8129F640 */  lb         $t1, %lo(D_8008F640)($t1)
/* 42804 80041C04 3C01801A */  lui        $at, %hi(D_8019E6A9)
/* 42808 80041C08 10000044 */  b          .L80041D1C
/* 4280C 80041C0C A029E6A9 */   sb        $t1, %lo(D_8019E6A9)($at)
.L80041C10:
/* 42810 80041C10 14410042 */  bne        $v0, $at, .L80041D1C
/* 42814 80041C14 3C068014 */   lui       $a2, %hi(D_8013FF90)
/* 42818 80041C18 24C6FF90 */  addiu      $a2, $a2, %lo(D_8013FF90)
/* 4281C 80041C1C 80C30005 */  lb         $v1, 0x5($a2)
/* 42820 80041C20 24010009 */  addiu      $at, $zero, 0x9
/* 42824 80041C24 24050004 */  addiu      $a1, $zero, 0x4
/* 42828 80041C28 14610012 */  bne        $v1, $at, .L80041C74
/* 4282C 80041C2C 24620001 */   addiu     $v0, $v1, 0x1
/* 42830 80041C30 3C038009 */  lui        $v1, %hi(D_8008EEA4)
/* 42834 80041C34 2463EEA4 */  addiu      $v1, $v1, %lo(D_8008EEA4)
/* 42838 80041C38 00001025 */  or         $v0, $zero, $zero
/* 4283C 80041C3C 00625021 */  addu       $t2, $v1, $v0
.L80041C40:
/* 42840 80041C40 914B0000 */  lbu        $t3, 0x0($t2)
/* 42844 80041C44 548B0004 */  bnel       $a0, $t3, .L80041C58
/* 42848 80041C48 24420001 */   addiu     $v0, $v0, 0x1
/* 4284C 80041C4C 1000002C */  b          .L80041D00
/* 42850 80041C50 A0C20005 */   sb        $v0, 0x5($a2)
/* 42854 80041C54 24420001 */  addiu      $v0, $v0, 0x1
.L80041C58:
/* 42858 80041C58 00026600 */  sll        $t4, $v0, 24
/* 4285C 80041C5C 000C1603 */  sra        $v0, $t4, 24
/* 42860 80041C60 2841000A */  slti       $at, $v0, 0xA
/* 42864 80041C64 5420FFF6 */  bnel       $at, $zero, .L80041C40
/* 42868 80041C68 00625021 */   addu      $t2, $v1, $v0
/* 4286C 80041C6C 10000025 */  b          .L80041D04
/* 42870 80041C70 A0C00007 */   sb        $zero, 0x7($a2)
.L80041C74:
/* 42874 80041C74 00027600 */  sll        $t6, $v0, 24
/* 42878 80041C78 000E1603 */  sra        $v0, $t6, 24
/* 4287C 80041C7C 2841000A */  slti       $at, $v0, 0xA
/* 42880 80041C80 1020000E */  beqz       $at, .L80041CBC
/* 42884 80041C84 3C038009 */   lui       $v1, %hi(D_8008EEA4)
/* 42888 80041C88 2463EEA4 */  addiu      $v1, $v1, %lo(D_8008EEA4)
/* 4288C 80041C8C 0062C021 */  addu       $t8, $v1, $v0
.L80041C90:
/* 42890 80041C90 93190000 */  lbu        $t9, 0x0($t8)
/* 42894 80041C94 54990004 */  bnel       $a0, $t9, .L80041CA8
/* 42898 80041C98 24420001 */   addiu     $v0, $v0, 0x1
/* 4289C 80041C9C 10000007 */  b          .L80041CBC
/* 428A0 80041CA0 A0C20005 */   sb        $v0, 0x5($a2)
/* 428A4 80041CA4 24420001 */  addiu      $v0, $v0, 0x1
.L80041CA8:
/* 428A8 80041CA8 00024600 */  sll        $t0, $v0, 24
/* 428AC 80041CAC 00081603 */  sra        $v0, $t0, 24
/* 428B0 80041CB0 2841000A */  slti       $at, $v0, 0xA
/* 428B4 80041CB4 5420FFF6 */  bnel       $at, $zero, .L80041C90
/* 428B8 80041CB8 0062C021 */   addu      $t8, $v1, $v0
.L80041CBC:
/* 428BC 80041CBC 3C038009 */  lui        $v1, %hi(D_8008EEA4)
/* 428C0 80041CC0 2841000A */  slti       $at, $v0, 0xA
/* 428C4 80041CC4 1420000E */  bnez       $at, .L80041D00
/* 428C8 80041CC8 2463EEA4 */   addiu     $v1, $v1, %lo(D_8008EEA4)
/* 428CC 80041CCC 00001025 */  or         $v0, $zero, $zero
/* 428D0 80041CD0 00625021 */  addu       $t2, $v1, $v0
.L80041CD4:
/* 428D4 80041CD4 914B0000 */  lbu        $t3, 0x0($t2)
/* 428D8 80041CD8 548B0004 */  bnel       $a0, $t3, .L80041CEC
/* 428DC 80041CDC 24420001 */   addiu     $v0, $v0, 0x1
/* 428E0 80041CE0 10000007 */  b          .L80041D00
/* 428E4 80041CE4 A0C20005 */   sb        $v0, 0x5($a2)
/* 428E8 80041CE8 24420001 */  addiu      $v0, $v0, 0x1
.L80041CEC:
/* 428EC 80041CEC 00026600 */  sll        $t4, $v0, 24
/* 428F0 80041CF0 000C1603 */  sra        $v0, $t4, 24
/* 428F4 80041CF4 2841000A */  slti       $at, $v0, 0xA
/* 428F8 80041CF8 5420FFF6 */  bnel       $at, $zero, .L80041CD4
/* 428FC 80041CFC 00625021 */   addu      $t2, $v1, $v0
.L80041D00:
/* 42900 80041D00 A0C00007 */  sb         $zero, 0x7($a2)
.L80041D04:
/* 42904 80041D04 0C0004F0 */  jal        func_800013C0
/* 42908 80041D08 24040028 */   addiu     $a0, $zero, 0x28
/* 4290C 80041D0C 3C0E8009 */  lui        $t6, %hi(D_8008F640)
/* 42910 80041D10 81CEF640 */  lb         $t6, %lo(D_8008F640)($t6)
/* 42914 80041D14 3C01801A */  lui        $at, %hi(D_8019E6A9)
/* 42918 80041D18 A02EE6A9 */  sb         $t6, %lo(D_8019E6A9)($at)
.L80041D1C:
/* 4291C 80041D1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 42920 80041D20 27BD0018 */  addiu      $sp, $sp, 0x18
/* 42924 80041D24 03E00008 */  jr         $ra
/* 42928 80041D28 00000000 */   nop

glabel func_80041D2C
/* 4292C 80041D2C 27BDFE80 */  addiu      $sp, $sp, -0x180
/* 42930 80041D30 AFBF0064 */  sw         $ra, 0x64($sp)
/* 42934 80041D34 AFBE0060 */  sw         $fp, 0x60($sp)
/* 42938 80041D38 AFB7005C */  sw         $s7, 0x5C($sp)
/* 4293C 80041D3C AFB60058 */  sw         $s6, 0x58($sp)
/* 42940 80041D40 AFB50054 */  sw         $s5, 0x54($sp)
/* 42944 80041D44 AFB40050 */  sw         $s4, 0x50($sp)
/* 42948 80041D48 AFB3004C */  sw         $s3, 0x4C($sp)
/* 4294C 80041D4C AFB20048 */  sw         $s2, 0x48($sp)
/* 42950 80041D50 AFB10044 */  sw         $s1, 0x44($sp)
/* 42954 80041D54 AFB00040 */  sw         $s0, 0x40($sp)
/* 42958 80041D58 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 4295C 80041D5C AFA40180 */  sw         $a0, 0x180($sp)
/* 42960 80041D60 AFA50184 */  sw         $a1, 0x184($sp)
/* 42964 80041D64 AFA60188 */  sw         $a2, 0x188($sp)
/* 42968 80041D68 8C8F0000 */  lw         $t7, 0x0($a0)
/* 4296C 80041D6C 3C0A8009 */  lui        $t2, %hi(D_8008EF58)
/* 42970 80041D70 914AEF58 */  lbu        $t2, %lo(D_8008EF58)($t2)
/* 42974 80041D74 AFAF017C */  sw         $t7, 0x17C($sp)
/* 42978 80041D78 8CB90000 */  lw         $t9, 0x0($a1)
/* 4297C 80041D7C 24040027 */  addiu      $a0, $zero, 0x27
/* 42980 80041D80 AFB90178 */  sw         $t9, 0x178($sp)
/* 42984 80041D84 8CC90000 */  lw         $t1, 0x0($a2)
/* 42988 80041D88 11400005 */  beqz       $t2, .L80041DA0
/* 4298C 80041D8C AFA90174 */   sw        $t1, 0x174($sp)
/* 42990 80041D90 0C0004F0 */  jal        func_800013C0
/* 42994 80041D94 24050004 */   addiu     $a1, $zero, 0x4
/* 42998 80041D98 3C018009 */  lui        $at, %hi(D_8008EF58)
/* 4299C 80041D9C A020EF58 */  sb         $zero, %lo(D_8008EF58)($at)
.L80041DA0:
/* 429A0 80041DA0 8FAB017C */  lw         $t3, 0x17C($sp)
/* 429A4 80041DA4 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 429A8 80041DA8 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
/* 429AC 80041DAC 256C0008 */  addiu      $t4, $t3, 0x8
/* 429B0 80041DB0 AFAC017C */  sw         $t4, 0x17C($sp)
/* 429B4 80041DB4 AD600004 */  sw         $zero, 0x4($t3)
/* 429B8 80041DB8 AD6D0000 */  sw         $t5, 0x0($t3)
/* 429BC 80041DBC 8FAE017C */  lw         $t6, 0x17C($sp)
/* 429C0 80041DC0 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
/* 429C4 80041DC4 3C09BA00 */  lui        $t1, (0xBA001301 >> 16)
/* 429C8 80041DC8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 429CC 80041DCC AFAF017C */  sw         $t7, 0x17C($sp)
/* 429D0 80041DD0 ADC00004 */  sw         $zero, 0x4($t6)
/* 429D4 80041DD4 ADD80000 */  sw         $t8, 0x0($t6)
/* 429D8 80041DD8 8FB9017C */  lw         $t9, 0x17C($sp)
/* 429DC 80041DDC 35291301 */  ori        $t1, $t1, (0xBA001301 & 0xFFFF)
/* 429E0 80041DE0 3C0A0008 */  lui        $t2, (0x80000 >> 16)
/* 429E4 80041DE4 27280008 */  addiu      $t0, $t9, 0x8
/* 429E8 80041DE8 AFA8017C */  sw         $t0, 0x17C($sp)
/* 429EC 80041DEC AF2A0004 */  sw         $t2, 0x4($t9)
/* 429F0 80041DF0 AF290000 */  sw         $t1, 0x0($t9)
/* 429F4 80041DF4 8FAB017C */  lw         $t3, 0x17C($sp)
/* 429F8 80041DF8 3C0E8009 */  lui        $t6, %hi(D_8008EE70)
/* 429FC 80041DFC 3C0D0380 */  lui        $t5, (0x3800010 >> 16)
/* 42A00 80041E00 256C0008 */  addiu      $t4, $t3, 0x8
/* 42A04 80041E04 AFAC017C */  sw         $t4, 0x17C($sp)
/* 42A08 80041E08 35AD0010 */  ori        $t5, $t5, (0x3800010 & 0xFFFF)
/* 42A0C 80041E0C 25CEEE70 */  addiu      $t6, $t6, %lo(D_8008EE70)
/* 42A10 80041E10 AD6E0004 */  sw         $t6, 0x4($t3)
/* 42A14 80041E14 AD6D0000 */  sw         $t5, 0x0($t3)
/* 42A18 80041E18 8FAF017C */  lw         $t7, 0x17C($sp)
/* 42A1C 80041E1C 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 42A20 80041E20 44812000 */  mtc1       $at, $f4
/* 42A24 80041E24 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
/* 42A28 80041E28 25F80008 */  addiu      $t8, $t7, 0x8
/* 42A2C 80041E2C 44813000 */  mtc1       $at, $f6
/* 42A30 80041E30 AFB8017C */  sw         $t8, 0x17C($sp)
/* 42A34 80041E34 3C19ED00 */  lui        $t9, (0xED000020 >> 16)
/* 42A38 80041E38 3C08004F */  lui        $t0, (0x4FC39C >> 16)
/* 42A3C 80041E3C 3508C39C */  ori        $t0, $t0, (0x4FC39C & 0xFFFF)
/* 42A40 80041E40 37390020 */  ori        $t9, $t9, (0xED000020 & 0xFFFF)
/* 42A44 80041E44 3C014040 */  lui        $at, (0x40400000 >> 16)
/* 42A48 80041E48 44814000 */  mtc1       $at, $f8
/* 42A4C 80041E4C ADF90000 */  sw         $t9, 0x0($t7)
/* 42A50 80041E50 ADE80004 */  sw         $t0, 0x4($t7)
/* 42A54 80041E54 27B000F4 */  addiu      $s0, $sp, 0xF4
/* 42A58 80041E58 3C073FAA */  lui        $a3, (0x3FAAAAAB >> 16)
/* 42A5C 80041E5C 34E7AAAB */  ori        $a3, $a3, (0x3FAAAAAB & 0xFFFF)
/* 42A60 80041E60 02002025 */  or         $a0, $s0, $zero
/* 42A64 80041E64 27A500B0 */  addiu      $a1, $sp, 0xB0
/* 42A68 80041E68 3C06425C */  lui        $a2, (0x425C0000 >> 16)
/* 42A6C 80041E6C E7A40010 */  swc1       $f4, 0x10($sp)
/* 42A70 80041E70 E7A60014 */  swc1       $f6, 0x14($sp)
/* 42A74 80041E74 0C01AE98 */  jal        func_8006BA60
/* 42A78 80041E78 E7A80018 */   swc1      $f8, 0x18($sp)
/* 42A7C 80041E7C 3C014234 */  lui        $at, (0x42340000 >> 16)
/* 42A80 80041E80 44810000 */  mtc1       $at, $f0
/* 42A84 80041E84 4480A000 */  mtc1       $zero, $f20
/* 42A88 80041E88 3C01C100 */  lui        $at, (0xC1000000 >> 16)
/* 42A8C 80041E8C 44815000 */  mtc1       $at, $f10
/* 42A90 80041E90 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 42A94 80041E94 44818000 */  mtc1       $at, $f16
/* 42A98 80041E98 27B10134 */  addiu      $s1, $sp, 0x134
/* 42A9C 80041E9C 44050000 */  mfc1       $a1, $f0
/* 42AA0 80041EA0 44070000 */  mfc1       $a3, $f0
/* 42AA4 80041EA4 02202025 */  or         $a0, $s1, $zero
/* 42AA8 80041EA8 3C0641F0 */  lui        $a2, (0x41F00000 >> 16)
/* 42AAC 80041EAC E7B40010 */  swc1       $f20, 0x10($sp)
/* 42AB0 80041EB0 E7B40018 */  swc1       $f20, 0x18($sp)
/* 42AB4 80041EB4 E7B4001C */  swc1       $f20, 0x1C($sp)
/* 42AB8 80041EB8 E7B40024 */  swc1       $f20, 0x24($sp)
/* 42ABC 80041EBC E7AA0014 */  swc1       $f10, 0x14($sp)
/* 42AC0 80041EC0 0C01AF3C */  jal        func_8006BCF0
/* 42AC4 80041EC4 E7B00020 */   swc1      $f16, 0x20($sp)
/* 42AC8 80041EC8 27B200B4 */  addiu      $s2, $sp, 0xB4
/* 42ACC 80041ECC 02403025 */  or         $a2, $s2, $zero
/* 42AD0 80041ED0 02202025 */  or         $a0, $s1, $zero
/* 42AD4 80041ED4 0C01B030 */  jal        func_8006C0C0
/* 42AD8 80041ED8 02002825 */   or        $a1, $s0, $zero
/* 42ADC 80041EDC 02402025 */  or         $a0, $s2, $zero
/* 42AE0 80041EE0 0C01B08C */  jal        func_8006C230
/* 42AE4 80041EE4 8FA50178 */   lw        $a1, 0x178($sp)
/* 42AE8 80041EE8 8FA9017C */  lw         $t1, 0x17C($sp)
/* 42AEC 80041EEC 3C0BBC00 */  lui        $t3, (0xBC00000E >> 16)
/* 42AF0 80041EF0 356B000E */  ori        $t3, $t3, (0xBC00000E & 0xFFFF)
/* 42AF4 80041EF4 252A0008 */  addiu      $t2, $t1, 0x8
/* 42AF8 80041EF8 AFAA017C */  sw         $t2, 0x17C($sp)
/* 42AFC 80041EFC AD2B0000 */  sw         $t3, 0x0($t1)
/* 42B00 80041F00 97AC00B0 */  lhu        $t4, 0xB0($sp)
/* 42B04 80041F04 3C0F0103 */  lui        $t7, (0x1030040 >> 16)
/* 42B08 80041F08 35EF0040 */  ori        $t7, $t7, (0x1030040 & 0xFFFF)
/* 42B0C 80041F0C AD2C0004 */  sw         $t4, 0x4($t1)
/* 42B10 80041F10 8FAD017C */  lw         $t5, 0x17C($sp)
/* 42B14 80041F14 3C05801A */  lui        $a1, %hi(D_8019E6AC)
/* 42B18 80041F18 24A5E6AC */  addiu      $a1, $a1, %lo(D_8019E6AC)
/* 42B1C 80041F1C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 42B20 80041F20 AFAE017C */  sw         $t6, 0x17C($sp)
/* 42B24 80041F24 ADAF0000 */  sw         $t7, 0x0($t5)
/* 42B28 80041F28 8FB80178 */  lw         $t8, 0x178($sp)
/* 42B2C 80041F2C 00008025 */  or         $s0, $zero, $zero
/* 42B30 80041F30 27BE017C */  addiu      $fp, $sp, 0x17C
/* 42B34 80041F34 ADB80004 */  sw         $t8, 0x4($t5)
/* 42B38 80041F38 8FB90178 */  lw         $t9, 0x178($sp)
/* 42B3C 80041F3C 8CA40000 */  lw         $a0, 0x0($a1)
/* 42B40 80041F40 27B70098 */  addiu      $s7, $sp, 0x98
/* 42B44 80041F44 27280040 */  addiu      $t0, $t9, 0x40
/* 42B48 80041F48 10800009 */  beqz       $a0, .L80041F70
/* 42B4C 80041F4C AFA80178 */   sw        $t0, 0x178($sp)
/* 42B50 80041F50 24010001 */  addiu      $at, $zero, 0x1
/* 42B54 80041F54 10810020 */  beq        $a0, $at, .L80041FD8
/* 42B58 80041F58 3C12801A */   lui       $s2, %hi(D_8019E6D8)
/* 42B5C 80041F5C 3C01801A */  lui        $at, %hi(D_8019E6E0)
/* 42B60 80041F60 3C12801A */  lui        $s2, %hi(D_8019E6D8)
/* 42B64 80041F64 2652E6D8 */  addiu      $s2, $s2, %lo(D_8019E6D8)
/* 42B68 80041F68 10000034 */  b          .L8004203C
/* 42B6C 80041F6C C422E6E0 */   lwc1      $f2, %lo(D_8019E6E0)($at)
.L80041F70:
/* 42B70 80041F70 3C12801A */  lui        $s2, %hi(D_8019E6D8)
/* 42B74 80041F74 2652E6D8 */  addiu      $s2, $s2, %lo(D_8019E6D8)
/* 42B78 80041F78 C6420008 */  lwc1       $f2, 0x8($s2)
/* 42B7C 80041F7C 3C01BFE0 */  lui        $at, (0xBFE00000 >> 16)
/* 42B80 80041F80 44812800 */  mtc1       $at, $f5
/* 42B84 80041F84 44802000 */  mtc1       $zero, $f4
/* 42B88 80041F88 460014A1 */  cvt.d.s    $f18, $f2
/* 42B8C 80041F8C 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 42B90 80041F90 4624903C */  c.lt.d     $f18, $f4
/* 42B94 80041F94 24090001 */  addiu      $t1, $zero, 0x1
/* 42B98 80041F98 4500000D */  bc1f       .L80041FD0
/* 42B9C 80041F9C 00000000 */   nop
/* 42BA0 80041FA0 4602A03E */  c.le.s     $f20, $f2
/* 42BA4 80041FA4 44813000 */  mtc1       $at, $f6
/* 42BA8 80041FA8 45020004 */  bc1fl      .L80041FBC
/* 42BAC 80041FAC 46001007 */   neg.s     $f0, $f2
/* 42BB0 80041FB0 10000002 */  b          .L80041FBC
/* 42BB4 80041FB4 46001006 */   mov.s     $f0, $f2
/* 42BB8 80041FB8 46001007 */  neg.s      $f0, $f2
.L80041FBC:
/* 42BBC 80041FBC 46060203 */  div.s      $f8, $f0, $f6
/* 42BC0 80041FC0 46081280 */  add.s      $f10, $f2, $f8
/* 42BC4 80041FC4 E64A0008 */  swc1       $f10, 0x8($s2)
/* 42BC8 80041FC8 1000001C */  b          .L8004203C
/* 42BCC 80041FCC C6420008 */   lwc1      $f2, 0x8($s2)
.L80041FD0:
/* 42BD0 80041FD0 1000001A */  b          .L8004203C
/* 42BD4 80041FD4 ACA90000 */   sw        $t1, 0x0($a1)
.L80041FD8:
/* 42BD8 80041FD8 2652E6D8 */  addiu      $s2, $s2, %lo(D_8019E6D8)
/* 42BDC 80041FDC C6420008 */  lwc1       $f2, 0x8($s2)
/* 42BE0 80041FE0 3C018009 */  lui        $at, %hi(D_80097700)
/* 42BE4 80041FE4 D4307700 */  ldc1       $f16, %lo(D_80097700)($at)
/* 42BE8 80041FE8 46001021 */  cvt.d.s    $f0, $f2
/* 42BEC 80041FEC 44803000 */  mtc1       $zero, $f6
/* 42BF0 80041FF0 4630003C */  c.lt.d     $f0, $f16
/* 42BF4 80041FF4 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 42BF8 80041FF8 240A0001 */  addiu      $t2, $zero, 0x1
/* 42BFC 80041FFC 45020008 */  bc1fl      .L80042020
/* 42C00 80042000 3C014069 */   lui       $at, (0x40690000 >> 16)
/* 42C04 80042004 44819000 */  mtc1       $at, $f18
/* 42C08 80042008 00000000 */  nop
/* 42C0C 8004200C 46121100 */  add.s      $f4, $f2, $f18
/* 42C10 80042010 E6440008 */  swc1       $f4, 0x8($s2)
/* 42C14 80042014 C6420008 */  lwc1       $f2, 0x8($s2)
/* 42C18 80042018 46001021 */  cvt.d.s    $f0, $f2
/* 42C1C 8004201C 3C014069 */  lui        $at, (0x40690000 >> 16)
.L80042020:
/* 42C20 80042020 44813800 */  mtc1       $at, $f7
/* 42C24 80042024 3C018009 */  lui        $at, %hi(D_8008EF50)
/* 42C28 80042028 4620303C */  c.lt.d     $f6, $f0
/* 42C2C 8004202C 00000000 */  nop
/* 42C30 80042030 45020003 */  bc1fl      .L80042040
/* 42C34 80042034 C6480000 */   lwc1      $f8, 0x0($s2)
/* 42C38 80042038 A02AEF50 */  sb         $t2, %lo(D_8008EF50)($at)
.L8004203C:
/* 42C3C 8004203C C6480000 */  lwc1       $f8, 0x0($s2)
.L80042040:
/* 42C40 80042040 3C014120 */  lui        $at, (0x41200000 >> 16)
/* 42C44 80042044 44818000 */  mtc1       $at, $f16
/* 42C48 80042048 C64A0004 */  lwc1       $f10, 0x4($s2)
/* 42C4C 8004204C E7A80098 */  swc1       $f8, 0x98($sp)
/* 42C50 80042050 44814000 */  mtc1       $at, $f8
/* 42C54 80042054 C6460010 */  lwc1       $f6, 0x10($s2)
/* 42C58 80042058 46105481 */  sub.s      $f18, $f10, $f16
/* 42C5C 8004205C C6500014 */  lwc1       $f16, 0x14($s2)
/* 42C60 80042060 C644000C */  lwc1       $f4, 0xC($s2)
/* 42C64 80042064 46083281 */  sub.s      $f10, $f6, $f8
/* 42C68 80042068 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 42C6C 8004206C 3C168009 */  lui        $s6, %hi(D_80097650)
/* 42C70 80042070 3C118014 */  lui        $s1, %hi(D_8013FF90)
/* 42C74 80042074 4481A000 */  mtc1       $at, $f20
/* 42C78 80042078 E7B2009C */  swc1       $f18, 0x9C($sp)
/* 42C7C 8004207C E7A200A0 */  swc1       $f2, 0xA0($sp)
/* 42C80 80042080 E7AA00A8 */  swc1       $f10, 0xA8($sp)
/* 42C84 80042084 2631FF90 */  addiu      $s1, $s1, %lo(D_8013FF90)
/* 42C88 80042088 26D67650 */  addiu      $s6, $s6, %lo(D_80097650)
/* 42C8C 8004208C 27B50174 */  addiu      $s5, $sp, 0x174
/* 42C90 80042090 27B40178 */  addiu      $s4, $sp, 0x178
/* 42C94 80042094 2413000C */  addiu      $s3, $zero, 0xC
/* 42C98 80042098 E7B000AC */  swc1       $f16, 0xAC($sp)
/* 42C9C 8004209C E7A400A4 */  swc1       $f4, 0xA4($sp)
.L800420A0:
/* 42CA0 800420A0 3C028009 */  lui        $v0, %hi(D_8008F290)
/* 42CA4 800420A4 8C42F290 */  lw         $v0, %lo(D_8008F290)($v0)
/* 42CA8 800420A8 24010003 */  addiu      $at, $zero, 0x3
/* 42CAC 800420AC 54410037 */  bnel       $v0, $at, .L8004218C
/* 42CB0 800420B0 24010002 */   addiu     $at, $zero, 0x2
/* 42CB4 800420B4 1200001F */  beqz       $s0, .L80042134
/* 42CB8 800420B8 03C02025 */   or        $a0, $fp, $zero
/* 42CBC 800420BC 02130019 */  multu      $s0, $s3
/* 42CC0 800420C0 3A0B0001 */  xori       $t3, $s0, 0x1
/* 42CC4 800420C4 000B6080 */  sll        $t4, $t3, 2
/* 42CC8 800420C8 018B6023 */  subu       $t4, $t4, $t3
/* 42CCC 800420CC 000C6080 */  sll        $t4, $t4, 2
/* 42CD0 800420D0 024C6821 */  addu       $t5, $s2, $t4
/* 42CD4 800420D4 C5B20008 */  lwc1       $f18, 0x8($t5)
/* 42CD8 800420D8 82390008 */  lb         $t9, 0x8($s1)
/* 42CDC 800420DC 24180001 */  addiu      $t8, $zero, 0x1
/* 42CE0 800420E0 46149102 */  mul.s      $f4, $f18, $f20
/* 42CE4 800420E4 00001012 */  mflo       $v0
/* 42CE8 800420E8 02421821 */  addu       $v1, $s2, $v0
/* 42CEC 800420EC 02C27021 */  addu       $t6, $s6, $v0
/* 42CF0 800420F0 02E27821 */  addu       $t7, $s7, $v0
/* 42CF4 800420F4 24080096 */  addiu      $t0, $zero, 0x96
/* 42CF8 800420F8 AFA80028 */  sw         $t0, 0x28($sp)
/* 42CFC 800420FC E4640008 */  swc1       $f4, 0x8($v1)
/* 42D00 80042100 AFAF0018 */  sw         $t7, 0x18($sp)
/* 42D04 80042104 AFAE0014 */  sw         $t6, 0x14($sp)
/* 42D08 80042108 AFA30010 */  sw         $v1, 0x10($sp)
/* 42D0C 8004210C AFB80020 */  sw         $t8, 0x20($sp)
/* 42D10 80042110 AFA0001C */  sw         $zero, 0x1C($sp)
/* 42D14 80042114 03C02025 */  or         $a0, $fp, $zero
/* 42D18 80042118 02802825 */  or         $a1, $s4, $zero
/* 42D1C 8004211C 02A03025 */  or         $a2, $s5, $zero
/* 42D20 80042120 82270006 */  lb         $a3, 0x6($s1)
/* 42D24 80042124 0C0086CE */  jal        func_80021B38
/* 42D28 80042128 AFB90024 */   sw        $t9, 0x24($sp)
/* 42D2C 8004212C 10000071 */  b          .L800422F4
/* 42D30 80042130 26100001 */   addiu     $s0, $s0, 0x1
.L80042134:
/* 42D34 80042134 02130019 */  multu      $s0, $s3
/* 42D38 80042138 822D0007 */  lb         $t5, 0x7($s1)
/* 42D3C 8004213C 240C0001 */  addiu      $t4, $zero, 0x1
/* 42D40 80042140 240E0096 */  addiu      $t6, $zero, 0x96
/* 42D44 80042144 AFAE0028 */  sw         $t6, 0x28($sp)
/* 42D48 80042148 AFAC0020 */  sw         $t4, 0x20($sp)
/* 42D4C 8004214C 02802825 */  or         $a1, $s4, $zero
/* 42D50 80042150 02A03025 */  or         $a2, $s5, $zero
/* 42D54 80042154 82270005 */  lb         $a3, 0x5($s1)
/* 42D58 80042158 AFA0001C */  sw         $zero, 0x1C($sp)
/* 42D5C 8004215C 00001012 */  mflo       $v0
/* 42D60 80042160 02424821 */  addu       $t1, $s2, $v0
/* 42D64 80042164 02C25021 */  addu       $t2, $s6, $v0
/* 42D68 80042168 02E25821 */  addu       $t3, $s7, $v0
/* 42D6C 8004216C AFAB0018 */  sw         $t3, 0x18($sp)
/* 42D70 80042170 AFAA0014 */  sw         $t2, 0x14($sp)
/* 42D74 80042174 AFA90010 */  sw         $t1, 0x10($sp)
/* 42D78 80042178 0C0086CE */  jal        func_80021B38
/* 42D7C 8004217C AFAD0024 */   sw        $t5, 0x24($sp)
/* 42D80 80042180 1000005C */  b          .L800422F4
/* 42D84 80042184 26100001 */   addiu     $s0, $s0, 0x1
/* 42D88 80042188 24010002 */  addiu      $at, $zero, 0x2
.L8004218C:
/* 42D8C 8004218C 14410039 */  bne        $v0, $at, .L80042274
/* 42D90 80042190 03C02025 */   or        $a0, $fp, $zero
/* 42D94 80042194 922F0019 */  lbu        $t7, 0x19($s1)
/* 42D98 80042198 11E00036 */  beqz       $t7, .L80042274
/* 42D9C 8004219C 00000000 */   nop
/* 42DA0 800421A0 1200001F */  beqz       $s0, .L80042220
/* 42DA4 800421A4 03C02025 */   or        $a0, $fp, $zero
/* 42DA8 800421A8 02130019 */  multu      $s0, $s3
/* 42DAC 800421AC 3A180001 */  xori       $t8, $s0, 0x1
/* 42DB0 800421B0 0018C880 */  sll        $t9, $t8, 2
/* 42DB4 800421B4 0338C823 */  subu       $t9, $t9, $t8
/* 42DB8 800421B8 0019C880 */  sll        $t9, $t9, 2
/* 42DBC 800421BC 02594021 */  addu       $t0, $s2, $t9
/* 42DC0 800421C0 C5060008 */  lwc1       $f6, 0x8($t0)
/* 42DC4 800421C4 822C0008 */  lb         $t4, 0x8($s1)
/* 42DC8 800421C8 240B0002 */  addiu      $t3, $zero, 0x2
/* 42DCC 800421CC 46143202 */  mul.s      $f8, $f6, $f20
/* 42DD0 800421D0 00001012 */  mflo       $v0
/* 42DD4 800421D4 02421821 */  addu       $v1, $s2, $v0
/* 42DD8 800421D8 02C24821 */  addu       $t1, $s6, $v0
/* 42DDC 800421DC 02E25021 */  addu       $t2, $s7, $v0
/* 42DE0 800421E0 240D0080 */  addiu      $t5, $zero, 0x80
/* 42DE4 800421E4 AFAD0028 */  sw         $t5, 0x28($sp)
/* 42DE8 800421E8 E4680008 */  swc1       $f8, 0x8($v1)
/* 42DEC 800421EC AFAA0018 */  sw         $t2, 0x18($sp)
/* 42DF0 800421F0 AFA90014 */  sw         $t1, 0x14($sp)
/* 42DF4 800421F4 AFA30010 */  sw         $v1, 0x10($sp)
/* 42DF8 800421F8 AFAB001C */  sw         $t3, 0x1C($sp)
/* 42DFC 800421FC AFA00020 */  sw         $zero, 0x20($sp)
/* 42E00 80042200 03C02025 */  or         $a0, $fp, $zero
/* 42E04 80042204 02802825 */  or         $a1, $s4, $zero
/* 42E08 80042208 02A03025 */  or         $a2, $s5, $zero
/* 42E0C 8004220C 82270006 */  lb         $a3, 0x6($s1)
/* 42E10 80042210 0C0086CE */  jal        func_80021B38
/* 42E14 80042214 AFAC0024 */   sw        $t4, 0x24($sp)
/* 42E18 80042218 10000036 */  b          .L800422F4
/* 42E1C 8004221C 26100001 */   addiu     $s0, $s0, 0x1
.L80042220:
/* 42E20 80042220 02130019 */  multu      $s0, $s3
/* 42E24 80042224 82280007 */  lb         $t0, 0x7($s1)
/* 42E28 80042228 24190001 */  addiu      $t9, $zero, 0x1
/* 42E2C 8004222C 24090096 */  addiu      $t1, $zero, 0x96
/* 42E30 80042230 AFA90028 */  sw         $t1, 0x28($sp)
/* 42E34 80042234 AFB90020 */  sw         $t9, 0x20($sp)
/* 42E38 80042238 02802825 */  or         $a1, $s4, $zero
/* 42E3C 8004223C 02A03025 */  or         $a2, $s5, $zero
/* 42E40 80042240 82270005 */  lb         $a3, 0x5($s1)
/* 42E44 80042244 AFA0001C */  sw         $zero, 0x1C($sp)
/* 42E48 80042248 00001012 */  mflo       $v0
/* 42E4C 8004224C 02427021 */  addu       $t6, $s2, $v0
/* 42E50 80042250 02C27821 */  addu       $t7, $s6, $v0
/* 42E54 80042254 02E2C021 */  addu       $t8, $s7, $v0
/* 42E58 80042258 AFB80018 */  sw         $t8, 0x18($sp)
/* 42E5C 8004225C AFAF0014 */  sw         $t7, 0x14($sp)
/* 42E60 80042260 AFAE0010 */  sw         $t6, 0x10($sp)
/* 42E64 80042264 0C0086CE */  jal        func_80021B38
/* 42E68 80042268 AFA80024 */   sw        $t0, 0x24($sp)
/* 42E6C 8004226C 10000021 */  b          .L800422F4
/* 42E70 80042270 26100001 */   addiu     $s0, $s0, 0x1
.L80042274:
/* 42E74 80042274 1200000C */  beqz       $s0, .L800422A8
/* 42E78 80042278 02802825 */   or        $a1, $s4, $zero
/* 42E7C 8004227C 3A0A0001 */  xori       $t2, $s0, 0x1
/* 42E80 80042280 000A5880 */  sll        $t3, $t2, 2
/* 42E84 80042284 016A5823 */  subu       $t3, $t3, $t2
/* 42E88 80042288 02130019 */  multu      $s0, $s3
/* 42E8C 8004228C 000B5880 */  sll        $t3, $t3, 2
/* 42E90 80042290 024B6021 */  addu       $t4, $s2, $t3
/* 42E94 80042294 C58A0008 */  lwc1       $f10, 0x8($t4)
/* 42E98 80042298 46145402 */  mul.s      $f16, $f10, $f20
/* 42E9C 8004229C 00006812 */  mflo       $t5
/* 42EA0 800422A0 024D7021 */  addu       $t6, $s2, $t5
/* 42EA4 800422A4 E5D00008 */  swc1       $f16, 0x8($t6)
.L800422A8:
/* 42EA8 800422A8 02130019 */  multu      $s0, $s3
/* 42EAC 800422AC 82290007 */  lb         $t1, 0x7($s1)
/* 42EB0 800422B0 24080001 */  addiu      $t0, $zero, 0x1
/* 42EB4 800422B4 240A0096 */  addiu      $t2, $zero, 0x96
/* 42EB8 800422B8 AFAA0028 */  sw         $t2, 0x28($sp)
/* 42EBC 800422BC AFA80020 */  sw         $t0, 0x20($sp)
/* 42EC0 800422C0 02A03025 */  or         $a2, $s5, $zero
/* 42EC4 800422C4 82270005 */  lb         $a3, 0x5($s1)
/* 42EC8 800422C8 AFA0001C */  sw         $zero, 0x1C($sp)
/* 42ECC 800422CC AFA90024 */  sw         $t1, 0x24($sp)
/* 42ED0 800422D0 00001012 */  mflo       $v0
/* 42ED4 800422D4 02427821 */  addu       $t7, $s2, $v0
/* 42ED8 800422D8 02C2C021 */  addu       $t8, $s6, $v0
/* 42EDC 800422DC 02E2C821 */  addu       $t9, $s7, $v0
/* 42EE0 800422E0 AFB90018 */  sw         $t9, 0x18($sp)
/* 42EE4 800422E4 AFB80014 */  sw         $t8, 0x14($sp)
/* 42EE8 800422E8 0C0086CE */  jal        func_80021B38
/* 42EEC 800422EC AFAF0010 */   sw        $t7, 0x10($sp)
/* 42EF0 800422F0 26100001 */  addiu      $s0, $s0, 0x1
.L800422F4:
/* 42EF4 800422F4 320B00FF */  andi       $t3, $s0, 0xFF
/* 42EF8 800422F8 29610002 */  slti       $at, $t3, 0x2
/* 42EFC 800422FC 1420FF68 */  bnez       $at, .L800420A0
/* 42F00 80042300 01608025 */   or        $s0, $t3, $zero
/* 42F04 80042304 3C0C8009 */  lui        $t4, %hi(D_8008EF50)
/* 42F08 80042308 918CEF50 */  lbu        $t4, %lo(D_8008EF50)($t4)
/* 42F0C 8004230C 3C0D8009 */  lui        $t5, %hi(D_8008EF54)
/* 42F10 80042310 51800048 */  beql       $t4, $zero, .L80042434
/* 42F14 80042314 8FAF017C */   lw        $t7, 0x17C($sp)
/* 42F18 80042318 91ADEF54 */  lbu        $t5, %lo(D_8008EF54)($t5)
/* 42F1C 8004231C 3C018009 */  lui        $at, %hi(D_80097708)
/* 42F20 80042320 00002825 */  or         $a1, $zero, $zero
/* 42F24 80042324 15A00006 */  bnez       $t5, .L80042340
/* 42F28 80042328 00003025 */   or        $a2, $zero, $zero
/* 42F2C 8004232C C42C7708 */  lwc1       $f12, %lo(D_80097708)($at)
/* 42F30 80042330 0C00122C */  jal        func_800048B0
/* 42F34 80042334 24076E14 */   addiu     $a3, $zero, 0x6E14
/* 42F38 80042338 3C018009 */  lui        $at, %hi(D_8008EF54)
/* 42F3C 8004233C A022EF54 */  sb         $v0, %lo(D_8008EF54)($at)
.L80042340:
/* 42F40 80042340 3C10801A */  lui        $s0, %hi(D_8019EDDC)
/* 42F44 80042344 2610EDDC */  addiu      $s0, $s0, %lo(D_8019EDDC)
/* 42F48 80042348 3C053F19 */  lui        $a1, (0x3F19999A >> 16)
/* 42F4C 8004234C 34A5999A */  ori        $a1, $a1, (0x3F19999A & 0xFFFF)
/* 42F50 80042350 02002025 */  or         $a0, $s0, $zero
/* 42F54 80042354 0C014B98 */  jal        func_80052E60
/* 42F58 80042358 00003025 */   or        $a2, $zero, $zero
/* 42F5C 8004235C 3C038009 */  lui        $v1, %hi(D_8008EE9C)
/* 42F60 80042360 2463EE9C */  addiu      $v1, $v1, %lo(D_8008EE9C)
/* 42F64 80042364 1040002D */  beqz       $v0, .L8004241C
/* 42F68 80042368 AC620000 */   sw        $v0, 0x0($v1)
/* 42F6C 8004236C 240F0005 */  addiu      $t7, $zero, 0x5
/* 42F70 80042370 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 42F74 80042374 AC2FFF84 */  sw         $t7, %lo(D_8013FF84)($at)
/* 42F78 80042378 3C018009 */  lui        $at, %hi(D_8008EF54)
/* 42F7C 8004237C A020EF54 */  sb         $zero, %lo(D_8008EF54)($at)
/* 42F80 80042380 3C018009 */  lui        $at, %hi(D_8008EF50)
/* 42F84 80042384 A020EF50 */  sb         $zero, %lo(D_8008EF50)($at)
/* 42F88 80042388 3C018009 */  lui        $at, %hi(D_8008EF58)
/* 42F8C 8004238C 24180001 */  addiu      $t8, $zero, 0x1
/* 42F90 80042390 A038EF58 */  sb         $t8, %lo(D_8008EF58)($at)
/* 42F94 80042394 24190001 */  addiu      $t9, $zero, 0x1
/* 42F98 80042398 AC790000 */  sw         $t9, 0x0($v1)
/* 42F9C 8004239C 3C018009 */  lui        $at, %hi(D_8008F294)
/* 42FA0 800423A0 AC20F294 */  sw         $zero, %lo(D_8008F294)($at)
/* 42FA4 800423A4 3C088009 */  lui        $t0, %hi(D_8008F290)
/* 42FA8 800423A8 8D08F290 */  lw         $t0, %lo(D_8008F290)($t0)
/* 42FAC 800423AC 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 42FB0 800423B0 A4209BDC */  sh         $zero, %lo(D_80109BDC)($at)
/* 42FB4 800423B4 24010003 */  addiu      $at, $zero, 0x3
/* 42FB8 800423B8 5501000E */  bnel       $t0, $at, .L800423F4
/* 42FBC 800423BC 8222000B */   lb        $v0, 0xB($s1)
/* 42FC0 800423C0 8222000B */  lb         $v0, 0xB($s1)
/* 42FC4 800423C4 3C0A8008 */  lui        $t2, %hi(D_80081F48)
/* 42FC8 800423C8 3C018009 */  lui        $at, %hi(D_8008B318)
/* 42FCC 800423CC 00024880 */  sll        $t1, $v0, 2
/* 42FD0 800423D0 00025880 */  sll        $t3, $v0, 2
/* 42FD4 800423D4 01495021 */  addu       $t2, $t2, $t1
/* 42FD8 800423D8 01625821 */  addu       $t3, $t3, $v0
/* 42FDC 800423DC 8D4A1F48 */  lw         $t2, %lo(D_80081F48)($t2)
/* 42FE0 800423E0 000B5880 */  sll        $t3, $t3, 2
/* 42FE4 800423E4 002B0821 */  addu       $at, $at, $t3
/* 42FE8 800423E8 1000000C */  b          .L8004241C
/* 42FEC 800423EC AC2AB318 */   sw        $t2, %lo(D_8008B318)($at)
/* 42FF0 800423F0 8222000B */  lb         $v0, 0xB($s1)
.L800423F4:
/* 42FF4 800423F4 3C0D8008 */  lui        $t5, %hi(D_80081F30)
/* 42FF8 800423F8 3C018009 */  lui        $at, %hi(D_8008B318)
/* 42FFC 800423FC 00026080 */  sll        $t4, $v0, 2
/* 43000 80042400 01AC6821 */  addu       $t5, $t5, $t4
/* 43004 80042404 00027080 */  sll        $t6, $v0, 2
/* 43008 80042408 8DAD1F30 */  lw         $t5, %lo(D_80081F30)($t5)
/* 4300C 8004240C 01C27021 */  addu       $t6, $t6, $v0
/* 43010 80042410 000E7080 */  sll        $t6, $t6, 2
/* 43014 80042414 002E0821 */  addu       $at, $at, $t6
/* 43018 80042418 AC2DB318 */  sw         $t5, %lo(D_8008B318)($at)
.L8004241C:
/* 4301C 8004241C 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 43020 80042420 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 43024 80042424 03C02025 */  or         $a0, $fp, $zero
/* 43028 80042428 0C015681 */  jal        func_80055A04
/* 4302C 8004242C 02002825 */   or        $a1, $s0, $zero
/* 43030 80042430 8FAF017C */  lw         $t7, 0x17C($sp)
.L80042434:
/* 43034 80042434 8FB80180 */  lw         $t8, 0x180($sp)
/* 43038 80042438 AF0F0000 */  sw         $t7, 0x0($t8)
/* 4303C 8004243C 8FA80184 */  lw         $t0, 0x184($sp)
/* 43040 80042440 8FB90178 */  lw         $t9, 0x178($sp)
/* 43044 80042444 AD190000 */  sw         $t9, 0x0($t0)
/* 43048 80042448 8FAA0188 */  lw         $t2, 0x188($sp)
/* 4304C 8004244C 8FA90174 */  lw         $t1, 0x174($sp)
/* 43050 80042450 AD490000 */  sw         $t1, 0x0($t2)
/* 43054 80042454 8FBF0064 */  lw         $ra, 0x64($sp)
/* 43058 80042458 8FBE0060 */  lw         $fp, 0x60($sp)
/* 4305C 8004245C 8FB7005C */  lw         $s7, 0x5C($sp)
/* 43060 80042460 8FB60058 */  lw         $s6, 0x58($sp)
/* 43064 80042464 8FB50054 */  lw         $s5, 0x54($sp)
/* 43068 80042468 8FB40050 */  lw         $s4, 0x50($sp)
/* 4306C 8004246C 8FB3004C */  lw         $s3, 0x4C($sp)
/* 43070 80042470 8FB20048 */  lw         $s2, 0x48($sp)
/* 43074 80042474 8FB10044 */  lw         $s1, 0x44($sp)
/* 43078 80042478 8FB00040 */  lw         $s0, 0x40($sp)
/* 4307C 8004247C D7B40038 */  ldc1       $f20, 0x38($sp)
/* 43080 80042480 03E00008 */  jr         $ra
/* 43084 80042484 27BD0180 */   addiu     $sp, $sp, 0x180
/* 43088 80042488 00000000 */  nop
/* 4308C 8004248C 00000000 */  nop
