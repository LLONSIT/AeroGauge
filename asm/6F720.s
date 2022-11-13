.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006EB20
/* 6F720 8006EB20 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6F724 8006EB24 AFA50024 */  sw         $a1, 0x24($sp)
/* 6F728 8006EB28 AFA7002C */  sw         $a3, 0x2C($sp)
/* 6F72C 8006EB2C 8FB8002C */  lw         $t8, 0x2C($sp)
/* 6F730 8006EB30 8FAE0024 */  lw         $t6, 0x24($sp)
/* 6F734 8006EB34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F738 8006EB38 AFA40020 */  sw         $a0, 0x20($sp)
/* 6F73C 8006EB3C AFA60028 */  sw         $a2, 0x28($sp)
/* 6F740 8006EB40 93190000 */  lbu        $t9, 0x0($t8)
/* 6F744 8006EB44 91CF0000 */  lbu        $t7, 0x0($t6)
/* 6F748 8006EB48 11F9000E */  beq        $t7, $t9, .L8006EB84
/* 6F74C 8006EB4C 00000000 */   nop
/* 6F750 8006EB50 A1D90000 */  sb         $t9, 0x0($t6)
/* 6F754 8006EB54 8FA80024 */  lw         $t0, 0x24($sp)
/* 6F758 8006EB58 8FA50028 */  lw         $a1, 0x28($sp)
/* 6F75C 8006EB5C 8FA40020 */  lw         $a0, 0x20($sp)
/* 6F760 8006EB60 00003025 */  or         $a2, $zero, $zero
/* 6F764 8006EB64 0C01D3BF */  jal        func_80074EFC
/* 6F768 8006EB68 91070000 */   lbu       $a3, 0x0($t0)
/* 6F76C 8006EB6C AFA2001C */  sw         $v0, 0x1C($sp)
/* 6F770 8006EB70 8FA9001C */  lw         $t1, 0x1C($sp)
/* 6F774 8006EB74 11200003 */  beqz       $t1, .L8006EB84
/* 6F778 8006EB78 00000000 */   nop
/* 6F77C 8006EB7C 10000023 */  b          .L8006EC0C
/* 6F780 8006EB80 01201025 */   or        $v0, $t1, $zero
.L8006EB84:
/* 6F784 8006EB84 8FAA002C */  lw         $t2, 0x2C($sp)
/* 6F788 8006EB88 8FAB0028 */  lw         $t3, 0x28($sp)
/* 6F78C 8006EB8C 914C0001 */  lbu        $t4, 0x1($t2)
/* 6F790 8006EB90 000C6840 */  sll        $t5, $t4, 1
/* 6F794 8006EB94 016DC021 */  addu       $t8, $t3, $t5
/* 6F798 8006EB98 97010000 */  lhu        $at, 0x0($t8)
/* 6F79C 8006EB9C A5410000 */  sh         $at, 0x0($t2)
/* 6F7A0 8006EBA0 8FA90020 */  lw         $t1, 0x20($sp)
/* 6F7A4 8006EBA4 8FAE002C */  lw         $t6, 0x2C($sp)
/* 6F7A8 8006EBA8 8D2C0060 */  lw         $t4, 0x60($t1)
/* 6F7AC 8006EBAC 95C80000 */  lhu        $t0, 0x0($t6)
/* 6F7B0 8006EBB0 010C082A */  slt        $at, $t0, $t4
/* 6F7B4 8006EBB4 1420000B */  bnez       $at, .L8006EBE4
/* 6F7B8 8006EBB8 00000000 */   nop
/* 6F7BC 8006EBBC 91CB0000 */  lbu        $t3, 0x0($t6)
/* 6F7C0 8006EBC0 912D0064 */  lbu        $t5, 0x64($t1)
/* 6F7C4 8006EBC4 016D082A */  slt        $at, $t3, $t5
/* 6F7C8 8006EBC8 10200006 */  beqz       $at, .L8006EBE4
/* 6F7CC 8006EBCC 00000000 */   nop
/* 6F7D0 8006EBD0 91CF0001 */  lbu        $t7, 0x1($t6)
/* 6F7D4 8006EBD4 19E00003 */  blez       $t7, .L8006EBE4
/* 6F7D8 8006EBD8 29E10080 */   slti      $at, $t7, 0x80
/* 6F7DC 8006EBDC 1420000A */  bnez       $at, .L8006EC08
/* 6F7E0 8006EBE0 00000000 */   nop
.L8006EBE4:
/* 6F7E4 8006EBE4 8FAA002C */  lw         $t2, 0x2C($sp)
/* 6F7E8 8006EBE8 24010001 */  addiu      $at, $zero, 0x1
/* 6F7EC 8006EBEC 95580000 */  lhu        $t8, 0x0($t2)
/* 6F7F0 8006EBF0 17010003 */  bne        $t8, $at, .L8006EC00
/* 6F7F4 8006EBF4 00000000 */   nop
/* 6F7F8 8006EBF8 10000004 */  b          .L8006EC0C
/* 6F7FC 8006EBFC 24020005 */   addiu     $v0, $zero, 0x5
.L8006EC00:
/* 6F800 8006EC00 10000002 */  b          .L8006EC0C
/* 6F804 8006EC04 24020003 */   addiu     $v0, $zero, 0x3
.L8006EC08:
/* 6F808 8006EC08 00001025 */  or         $v0, $zero, $zero
.L8006EC0C:
/* 6F80C 8006EC0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F810 8006EC10 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6F814 8006EC14 03E00008 */  jr         $ra
/* 6F818 8006EC18 00000000 */   nop

glabel func_8006EC1C
/* 6F81C 8006EC1C 27BDFEA8 */  addiu      $sp, $sp, -0x158
/* 6F820 8006EC20 AFA40158 */  sw         $a0, 0x158($sp)
/* 6F824 8006EC24 8FAF0158 */  lw         $t7, 0x158($sp)
/* 6F828 8006EC28 AFA5015C */  sw         $a1, 0x15C($sp)
/* 6F82C 8006EC2C AFBF001C */  sw         $ra, 0x1C($sp)
/* 6F830 8006EC30 AFA60160 */  sw         $a2, 0x160($sp)
/* 6F834 8006EC34 AFA70164 */  sw         $a3, 0x164($sp)
/* 6F838 8006EC38 8FAE015C */  lw         $t6, 0x15C($sp)
/* 6F83C 8006EC3C 8DF80050 */  lw         $t8, 0x50($t7)
/* 6F840 8006EC40 01D8082A */  slt        $at, $t6, $t8
/* 6F844 8006EC44 10200003 */  beqz       $at, .L8006EC54
/* 6F848 8006EC48 00000000 */   nop
/* 6F84C 8006EC4C 05C10003 */  bgez       $t6, .L8006EC5C
/* 6F850 8006EC50 00000000 */   nop
.L8006EC54:
/* 6F854 8006EC54 100000F5 */  b          .L8006F02C
/* 6F858 8006EC58 24020005 */   addiu     $v0, $zero, 0x5
.L8006EC5C:
/* 6F85C 8006EC5C 8FB90168 */  lw         $t9, 0x168($sp)
/* 6F860 8006EC60 1B200004 */  blez       $t9, .L8006EC74
/* 6F864 8006EC64 00000000 */   nop
/* 6F868 8006EC68 3328001F */  andi       $t0, $t9, 0x1F
/* 6F86C 8006EC6C 11000003 */  beqz       $t0, .L8006EC7C
/* 6F870 8006EC70 00000000 */   nop
.L8006EC74:
/* 6F874 8006EC74 100000ED */  b          .L8006F02C
/* 6F878 8006EC78 24020005 */   addiu     $v0, $zero, 0x5
.L8006EC7C:
/* 6F87C 8006EC7C 8FA90164 */  lw         $t1, 0x164($sp)
/* 6F880 8006EC80 05200004 */  bltz       $t1, .L8006EC94
/* 6F884 8006EC84 00000000 */   nop
/* 6F888 8006EC88 312A001F */  andi       $t2, $t1, 0x1F
/* 6F88C 8006EC8C 11400003 */  beqz       $t2, .L8006EC9C
/* 6F890 8006EC90 00000000 */   nop
.L8006EC94:
/* 6F894 8006EC94 100000E5 */  b          .L8006F02C
/* 6F898 8006EC98 24020005 */   addiu     $v0, $zero, 0x5
.L8006EC9C:
/* 6F89C 8006EC9C 8FAB0158 */  lw         $t3, 0x158($sp)
/* 6F8A0 8006ECA0 8D6C0000 */  lw         $t4, 0x0($t3)
/* 6F8A4 8006ECA4 318D0001 */  andi       $t5, $t4, 0x1
/* 6F8A8 8006ECA8 15A00003 */  bnez       $t5, .L8006ECB8
/* 6F8AC 8006ECAC 00000000 */   nop
/* 6F8B0 8006ECB0 100000DE */  b          .L8006F02C
/* 6F8B4 8006ECB4 24020005 */   addiu     $v0, $zero, 0x5
.L8006ECB8:
/* 6F8B8 8006ECB8 0C01D380 */  jal        __osCheckId
/* 6F8BC 8006ECBC 8FA40158 */   lw        $a0, 0x158($sp)
/* 6F8C0 8006ECC0 24010002 */  addiu      $at, $zero, 0x2
/* 6F8C4 8006ECC4 14410003 */  bne        $v0, $at, .L8006ECD4
/* 6F8C8 8006ECC8 00000000 */   nop
/* 6F8CC 8006ECCC 100000D7 */  b          .L8006F02C
/* 6F8D0 8006ECD0 24020002 */   addiu     $v0, $zero, 0x2
.L8006ECD4:
/* 6F8D4 8006ECD4 8FAF0158 */  lw         $t7, 0x158($sp)
/* 6F8D8 8006ECD8 91F80065 */  lbu        $t8, 0x65($t7)
/* 6F8DC 8006ECDC 1300000A */  beqz       $t8, .L8006ED08
/* 6F8E0 8006ECE0 00000000 */   nop
/* 6F8E4 8006ECE4 A1E00065 */  sb         $zero, 0x65($t7)
/* 6F8E8 8006ECE8 0C01D487 */  jal        __osPfsSelectBank
/* 6F8EC 8006ECEC 8FA40158 */   lw        $a0, 0x158($sp)
/* 6F8F0 8006ECF0 AFA20154 */  sw         $v0, 0x154($sp)
/* 6F8F4 8006ECF4 8FAE0154 */  lw         $t6, 0x154($sp)
/* 6F8F8 8006ECF8 11C00003 */  beqz       $t6, .L8006ED08
/* 6F8FC 8006ECFC 00000000 */   nop
/* 6F900 8006ED00 100000CA */  b          .L8006F02C
/* 6F904 8006ED04 01C01025 */   or        $v0, $t6, $zero
.L8006ED08:
/* 6F908 8006ED08 8FB90158 */  lw         $t9, 0x158($sp)
/* 6F90C 8006ED0C 8FA9015C */  lw         $t1, 0x15C($sp)
/* 6F910 8006ED10 27A70134 */  addiu      $a3, $sp, 0x134
/* 6F914 8006ED14 8F28005C */  lw         $t0, 0x5C($t9)
/* 6F918 8006ED18 8F240004 */  lw         $a0, 0x4($t9)
/* 6F91C 8006ED1C 8F250008 */  lw         $a1, 0x8($t9)
/* 6F920 8006ED20 0C01D4A4 */  jal        __osContRamRead
/* 6F924 8006ED24 01093021 */   addu      $a2, $t0, $t1
/* 6F928 8006ED28 AFA20154 */  sw         $v0, 0x154($sp)
/* 6F92C 8006ED2C 8FAA0154 */  lw         $t2, 0x154($sp)
/* 6F930 8006ED30 11400003 */  beqz       $t2, .L8006ED40
/* 6F934 8006ED34 00000000 */   nop
/* 6F938 8006ED38 100000BC */  b          .L8006F02C
/* 6F93C 8006ED3C 01401025 */   or        $v0, $t2, $zero
.L8006ED40:
/* 6F940 8006ED40 97AB0138 */  lhu        $t3, 0x138($sp)
/* 6F944 8006ED44 11600004 */  beqz       $t3, .L8006ED58
/* 6F948 8006ED48 00000000 */   nop
/* 6F94C 8006ED4C 8FAC0134 */  lw         $t4, 0x134($sp)
/* 6F950 8006ED50 15800003 */  bnez       $t4, .L8006ED60
/* 6F954 8006ED54 00000000 */   nop
.L8006ED58:
/* 6F958 8006ED58 100000B4 */  b          .L8006F02C
/* 6F95C 8006ED5C 24020005 */   addiu     $v0, $zero, 0x5
.L8006ED60:
/* 6F960 8006ED60 8FB80158 */  lw         $t8, 0x158($sp)
/* 6F964 8006ED64 97AD013A */  lhu        $t5, 0x13A($sp)
/* 6F968 8006ED68 8F0F0060 */  lw         $t7, 0x60($t8)
/* 6F96C 8006ED6C 01AF082A */  slt        $at, $t5, $t7
/* 6F970 8006ED70 1420000B */  bnez       $at, .L8006EDA0
/* 6F974 8006ED74 00000000 */   nop
/* 6F978 8006ED78 93AE013A */  lbu        $t6, 0x13A($sp)
/* 6F97C 8006ED7C 93190064 */  lbu        $t9, 0x64($t8)
/* 6F980 8006ED80 01D9082A */  slt        $at, $t6, $t9
/* 6F984 8006ED84 10200006 */  beqz       $at, .L8006EDA0
/* 6F988 8006ED88 00000000 */   nop
/* 6F98C 8006ED8C 93A8013B */  lbu        $t0, 0x13B($sp)
/* 6F990 8006ED90 19000003 */  blez       $t0, .L8006EDA0
/* 6F994 8006ED94 29010080 */   slti      $at, $t0, 0x80
/* 6F998 8006ED98 14200009 */  bnez       $at, .L8006EDC0
/* 6F99C 8006ED9C 00000000 */   nop
.L8006EDA0:
/* 6F9A0 8006EDA0 97A9013A */  lhu        $t1, 0x13A($sp)
/* 6F9A4 8006EDA4 24010001 */  addiu      $at, $zero, 0x1
/* 6F9A8 8006EDA8 15210003 */  bne        $t1, $at, .L8006EDB8
/* 6F9AC 8006EDAC 00000000 */   nop
/* 6F9B0 8006EDB0 1000009E */  b          .L8006F02C
/* 6F9B4 8006EDB4 24020005 */   addiu     $v0, $zero, 0x5
.L8006EDB8:
/* 6F9B8 8006EDB8 1000009C */  b          .L8006F02C
/* 6F9BC 8006EDBC 24020003 */   addiu     $v0, $zero, 0x3
.L8006EDC0:
/* 6F9C0 8006EDC0 93AA0163 */  lbu        $t2, 0x163($sp)
/* 6F9C4 8006EDC4 15400007 */  bnez       $t2, .L8006EDE4
/* 6F9C8 8006EDC8 00000000 */   nop
/* 6F9CC 8006EDCC 93AB013C */  lbu        $t3, 0x13C($sp)
/* 6F9D0 8006EDD0 316C0002 */  andi       $t4, $t3, 0x2
/* 6F9D4 8006EDD4 15800003 */  bnez       $t4, .L8006EDE4
/* 6F9D8 8006EDD8 00000000 */   nop
/* 6F9DC 8006EDDC 10000093 */  b          .L8006F02C
/* 6F9E0 8006EDE0 24020006 */   addiu     $v0, $zero, 0x6
.L8006EDE4:
/* 6F9E4 8006EDE4 8FAF0164 */  lw         $t7, 0x164($sp)
/* 6F9E8 8006EDE8 97AE013A */  lhu        $t6, 0x13A($sp)
/* 6F9EC 8006EDEC 240D00FF */  addiu      $t5, $zero, 0xFF
/* 6F9F0 8006EDF0 A3AD0023 */  sb         $t5, 0x23($sp)
/* 6F9F4 8006EDF4 05E10003 */  bgez       $t7, .L8006EE04
/* 6F9F8 8006EDF8 000FC143 */   sra       $t8, $t7, 5
/* 6F9FC 8006EDFC 25E1001F */  addiu      $at, $t7, 0x1F
/* 6FA00 8006EE00 0001C143 */  sra        $t8, $at, 5
.L8006EE04:
/* 6FA04 8006EE04 AFB8002C */  sw         $t8, 0x2C($sp)
/* 6FA08 8006EE08 8FB9002C */  lw         $t9, 0x2C($sp)
/* 6FA0C 8006EE0C A7AE0030 */  sh         $t6, 0x30($sp)
/* 6FA10 8006EE10 2B210008 */  slti       $at, $t9, 0x8
/* 6FA14 8006EE14 14200013 */  bnez       $at, .L8006EE64
/* 6FA18 8006EE18 00000000 */   nop
.L8006EE1C:
/* 6FA1C 8006EE1C 8FA40158 */  lw         $a0, 0x158($sp)
/* 6FA20 8006EE20 27A50023 */  addiu      $a1, $sp, 0x23
/* 6FA24 8006EE24 27A60034 */  addiu      $a2, $sp, 0x34
/* 6FA28 8006EE28 0C01BAC8 */  jal        func_8006EB20
/* 6FA2C 8006EE2C 27A70030 */   addiu     $a3, $sp, 0x30
/* 6FA30 8006EE30 AFA20154 */  sw         $v0, 0x154($sp)
/* 6FA34 8006EE34 8FA80154 */  lw         $t0, 0x154($sp)
/* 6FA38 8006EE38 11000003 */  beqz       $t0, .L8006EE48
/* 6FA3C 8006EE3C 00000000 */   nop
/* 6FA40 8006EE40 1000007A */  b          .L8006F02C
/* 6FA44 8006EE44 01001025 */   or        $v0, $t0, $zero
.L8006EE48:
/* 6FA48 8006EE48 8FA9002C */  lw         $t1, 0x2C($sp)
/* 6FA4C 8006EE4C 252AFFF8 */  addiu      $t2, $t1, -0x8
/* 6FA50 8006EE50 AFAA002C */  sw         $t2, 0x2C($sp)
/* 6FA54 8006EE54 8FAB002C */  lw         $t3, 0x2C($sp)
/* 6FA58 8006EE58 29610008 */  slti       $at, $t3, 0x8
/* 6FA5C 8006EE5C 1020FFEF */  beqz       $at, .L8006EE1C
/* 6FA60 8006EE60 00000000 */   nop
.L8006EE64:
/* 6FA64 8006EE64 8FAC0168 */  lw         $t4, 0x168($sp)
/* 6FA68 8006EE68 8FAF016C */  lw         $t7, 0x16C($sp)
/* 6FA6C 8006EE6C 05810003 */  bgez       $t4, .L8006EE7C
/* 6FA70 8006EE70 000C6943 */   sra       $t5, $t4, 5
/* 6FA74 8006EE74 2581001F */  addiu      $at, $t4, 0x1F
/* 6FA78 8006EE78 00016943 */  sra        $t5, $at, 5
.L8006EE7C:
/* 6FA7C 8006EE7C AFAD0028 */  sw         $t5, 0x28($sp)
/* 6FA80 8006EE80 19A00046 */  blez       $t5, .L8006EF9C
/* 6FA84 8006EE84 AFAF0024 */   sw        $t7, 0x24($sp)
.L8006EE88:
/* 6FA88 8006EE88 8FB8002C */  lw         $t8, 0x2C($sp)
/* 6FA8C 8006EE8C 24010008 */  addiu      $at, $zero, 0x8
/* 6FA90 8006EE90 1701000D */  bne        $t8, $at, .L8006EEC8
/* 6FA94 8006EE94 00000000 */   nop
/* 6FA98 8006EE98 8FA40158 */  lw         $a0, 0x158($sp)
/* 6FA9C 8006EE9C 27A50023 */  addiu      $a1, $sp, 0x23
/* 6FAA0 8006EEA0 27A60034 */  addiu      $a2, $sp, 0x34
/* 6FAA4 8006EEA4 0C01BAC8 */  jal        func_8006EB20
/* 6FAA8 8006EEA8 27A70030 */   addiu     $a3, $sp, 0x30
/* 6FAAC 8006EEAC AFA20154 */  sw         $v0, 0x154($sp)
/* 6FAB0 8006EEB0 8FAE0154 */  lw         $t6, 0x154($sp)
/* 6FAB4 8006EEB4 11C00003 */  beqz       $t6, .L8006EEC4
/* 6FAB8 8006EEB8 00000000 */   nop
/* 6FABC 8006EEBC 1000005B */  b          .L8006F02C
/* 6FAC0 8006EEC0 01C01025 */   or        $v0, $t6, $zero
.L8006EEC4:
/* 6FAC4 8006EEC4 AFA0002C */  sw         $zero, 0x2C($sp)
.L8006EEC8:
/* 6FAC8 8006EEC8 8FB90158 */  lw         $t9, 0x158($sp)
/* 6FACC 8006EECC 93A90030 */  lbu        $t1, 0x30($sp)
/* 6FAD0 8006EED0 93280065 */  lbu        $t0, 0x65($t9)
/* 6FAD4 8006EED4 1109000A */  beq        $t0, $t1, .L8006EF00
/* 6FAD8 8006EED8 00000000 */   nop
/* 6FADC 8006EEDC A3290065 */  sb         $t1, 0x65($t9)
/* 6FAE0 8006EEE0 0C01D487 */  jal        __osPfsSelectBank
/* 6FAE4 8006EEE4 8FA40158 */   lw        $a0, 0x158($sp)
/* 6FAE8 8006EEE8 AFA20154 */  sw         $v0, 0x154($sp)
/* 6FAEC 8006EEEC 8FAA0154 */  lw         $t2, 0x154($sp)
/* 6FAF0 8006EEF0 11400003 */  beqz       $t2, .L8006EF00
/* 6FAF4 8006EEF4 00000000 */   nop
/* 6FAF8 8006EEF8 1000004C */  b          .L8006F02C
/* 6FAFC 8006EEFC 01401025 */   or        $v0, $t2, $zero
.L8006EF00:
/* 6FB00 8006EF00 93AB0031 */  lbu        $t3, 0x31($sp)
/* 6FB04 8006EF04 8FAF002C */  lw         $t7, 0x2C($sp)
/* 6FB08 8006EF08 93B80163 */  lbu        $t8, 0x163($sp)
/* 6FB0C 8006EF0C 000B60C0 */  sll        $t4, $t3, 3
/* 6FB10 8006EF10 018F6821 */  addu       $t5, $t4, $t7
/* 6FB14 8006EF14 17000009 */  bnez       $t8, .L8006EF3C
/* 6FB18 8006EF18 A7AD0020 */   sh        $t5, 0x20($sp)
/* 6FB1C 8006EF1C 8FAE0158 */  lw         $t6, 0x158($sp)
/* 6FB20 8006EF20 31A6FFFF */  andi       $a2, $t5, 0xFFFF
/* 6FB24 8006EF24 8FA70024 */  lw         $a3, 0x24($sp)
/* 6FB28 8006EF28 8DC40004 */  lw         $a0, 0x4($t6)
/* 6FB2C 8006EF2C 0C01D4A4 */  jal        __osContRamRead
/* 6FB30 8006EF30 8DC50008 */   lw        $a1, 0x8($t6)
/* 6FB34 8006EF34 10000009 */  b          .L8006EF5C
/* 6FB38 8006EF38 AFA20154 */   sw        $v0, 0x154($sp)
.L8006EF3C:
/* 6FB3C 8006EF3C 8FA80158 */  lw         $t0, 0x158($sp)
/* 6FB40 8006EF40 97A60020 */  lhu        $a2, 0x20($sp)
/* 6FB44 8006EF44 8FA70024 */  lw         $a3, 0x24($sp)
/* 6FB48 8006EF48 8D040004 */  lw         $a0, 0x4($t0)
/* 6FB4C 8006EF4C 8D050008 */  lw         $a1, 0x8($t0)
/* 6FB50 8006EF50 0C01DC98 */  jal        __osContRamWrite
/* 6FB54 8006EF54 AFA00010 */   sw        $zero, 0x10($sp)
/* 6FB58 8006EF58 AFA20154 */  sw         $v0, 0x154($sp)
.L8006EF5C:
/* 6FB5C 8006EF5C 8FA90154 */  lw         $t1, 0x154($sp)
/* 6FB60 8006EF60 11200003 */  beqz       $t1, .L8006EF70
/* 6FB64 8006EF64 00000000 */   nop
/* 6FB68 8006EF68 10000030 */  b          .L8006F02C
/* 6FB6C 8006EF6C 01201025 */   or        $v0, $t1, $zero
.L8006EF70:
/* 6FB70 8006EF70 8FAF0028 */  lw         $t7, 0x28($sp)
/* 6FB74 8006EF74 8FB90024 */  lw         $t9, 0x24($sp)
/* 6FB78 8006EF78 8FAB002C */  lw         $t3, 0x2C($sp)
/* 6FB7C 8006EF7C 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 6FB80 8006EF80 AFB80028 */  sw         $t8, 0x28($sp)
/* 6FB84 8006EF84 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6FB88 8006EF88 272A0020 */  addiu      $t2, $t9, 0x20
/* 6FB8C 8006EF8C 256C0001 */  addiu      $t4, $t3, 0x1
/* 6FB90 8006EF90 AFAA0024 */  sw         $t2, 0x24($sp)
/* 6FB94 8006EF94 1DC0FFBC */  bgtz       $t6, .L8006EE88
/* 6FB98 8006EF98 AFAC002C */   sw        $t4, 0x2C($sp)
.L8006EF9C:
/* 6FB9C 8006EF9C 93AD0163 */  lbu        $t5, 0x163($sp)
/* 6FBA0 8006EFA0 24010001 */  addiu      $at, $zero, 0x1
/* 6FBA4 8006EFA4 15A10020 */  bne        $t5, $at, .L8006F028
/* 6FBA8 8006EFA8 00000000 */   nop
/* 6FBAC 8006EFAC 93A8013C */  lbu        $t0, 0x13C($sp)
/* 6FBB0 8006EFB0 31090002 */  andi       $t1, $t0, 0x2
/* 6FBB4 8006EFB4 1520001C */  bnez       $t1, .L8006F028
/* 6FBB8 8006EFB8 00000000 */   nop
/* 6FBBC 8006EFBC 8FAA0158 */  lw         $t2, 0x158($sp)
/* 6FBC0 8006EFC0 35190002 */  ori        $t9, $t0, 0x2
/* 6FBC4 8006EFC4 A3B9013C */  sb         $t9, 0x13C($sp)
/* 6FBC8 8006EFC8 A1400065 */  sb         $zero, 0x65($t2)
/* 6FBCC 8006EFCC 0C01D487 */  jal        __osPfsSelectBank
/* 6FBD0 8006EFD0 8FA40158 */   lw        $a0, 0x158($sp)
/* 6FBD4 8006EFD4 AFA20154 */  sw         $v0, 0x154($sp)
/* 6FBD8 8006EFD8 8FAB0154 */  lw         $t3, 0x154($sp)
/* 6FBDC 8006EFDC 11600003 */  beqz       $t3, .L8006EFEC
/* 6FBE0 8006EFE0 00000000 */   nop
/* 6FBE4 8006EFE4 10000011 */  b          .L8006F02C
/* 6FBE8 8006EFE8 01601025 */   or        $v0, $t3, $zero
.L8006EFEC:
/* 6FBEC 8006EFEC 8FAC0158 */  lw         $t4, 0x158($sp)
/* 6FBF0 8006EFF0 8FB8015C */  lw         $t8, 0x15C($sp)
/* 6FBF4 8006EFF4 27A70134 */  addiu      $a3, $sp, 0x134
/* 6FBF8 8006EFF8 8D8F005C */  lw         $t7, 0x5C($t4)
/* 6FBFC 8006EFFC 8D840004 */  lw         $a0, 0x4($t4)
/* 6FC00 8006F000 8D850008 */  lw         $a1, 0x8($t4)
/* 6FC04 8006F004 AFA00010 */  sw         $zero, 0x10($sp)
/* 6FC08 8006F008 0C01DC98 */  jal        __osContRamWrite
/* 6FC0C 8006F00C 01F83021 */   addu      $a2, $t7, $t8
/* 6FC10 8006F010 AFA20154 */  sw         $v0, 0x154($sp)
/* 6FC14 8006F014 8FAE0154 */  lw         $t6, 0x154($sp)
/* 6FC18 8006F018 11C00003 */  beqz       $t6, .L8006F028
/* 6FC1C 8006F01C 00000000 */   nop
/* 6FC20 8006F020 10000002 */  b          .L8006F02C
/* 6FC24 8006F024 01C01025 */   or        $v0, $t6, $zero
.L8006F028:
/* 6FC28 8006F028 00001025 */  or         $v0, $zero, $zero
.L8006F02C:
/* 6FC2C 8006F02C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6FC30 8006F030 27BD0158 */  addiu      $sp, $sp, 0x158
/* 6FC34 8006F034 03E00008 */  jr         $ra
/* 6FC38 8006F038 00000000 */   nop
/* 6FC3C 8006F03C 00000000 */  nop
