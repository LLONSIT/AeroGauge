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
/* 6F8B8 8006ECB8 0C01D380 */  jal        func_80074E00
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
/* 6F8E8 8006ECE8 0C01D487 */  jal        func_8007521C
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
/* 6F920 8006ED20 0C01D4A4 */  jal        func_80075290
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
/* 6FAE0 8006EEE0 0C01D487 */  jal        func_8007521C
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
/* 6FB2C 8006EF2C 0C01D4A4 */  jal        func_80075290
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
/* 6FBCC 8006EFCC 0C01D487 */  jal        func_8007521C
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

glabel func_8006F040
/* 6FC40 8006F040 27BDFD88 */  addiu      $sp, $sp, -0x278
/* 6FC44 8006F044 AFA5027C */  sw         $a1, 0x27C($sp)
/* 6FC48 8006F048 97AE027E */  lhu        $t6, 0x27E($sp)
/* 6FC4C 8006F04C AFBF0024 */  sw         $ra, 0x24($sp)
/* 6FC50 8006F050 AFA40278 */  sw         $a0, 0x278($sp)
/* 6FC54 8006F054 AFA60280 */  sw         $a2, 0x280($sp)
/* 6FC58 8006F058 AFA70284 */  sw         $a3, 0x284($sp)
/* 6FC5C 8006F05C AFA00268 */  sw         $zero, 0x268($sp)
/* 6FC60 8006F060 AFA00260 */  sw         $zero, 0x260($sp)
/* 6FC64 8006F064 A3A0003A */  sb         $zero, 0x3A($sp)
/* 6FC68 8006F068 11C00004 */  beqz       $t6, .L8006F07C
/* 6FC6C 8006F06C AFA00034 */   sw        $zero, 0x34($sp)
/* 6FC70 8006F070 8FAF0280 */  lw         $t7, 0x280($sp)
/* 6FC74 8006F074 15E00003 */  bnez       $t7, .L8006F084
/* 6FC78 8006F078 00000000 */   nop
.L8006F07C:
/* 6FC7C 8006F07C 1000010D */  b          .L8006F4B4
/* 6FC80 8006F080 24020005 */   addiu     $v0, $zero, 0x5
.L8006F084:
/* 6FC84 8006F084 8FB8028C */  lw         $t8, 0x28C($sp)
/* 6FC88 8006F088 8FA90278 */  lw         $t1, 0x278($sp)
/* 6FC8C 8006F08C 271900FF */  addiu      $t9, $t8, 0xFF
/* 6FC90 8006F090 07210003 */  bgez       $t9, .L8006F0A0
/* 6FC94 8006F094 00194203 */   sra       $t0, $t9, 8
/* 6FC98 8006F098 272100FF */  addiu      $at, $t9, 0xFF
/* 6FC9C 8006F09C 00014203 */  sra        $t0, $at, 8
.L8006F0A0:
/* 6FCA0 8006F0A0 AFA8025C */  sw         $t0, 0x25C($sp)
/* 6FCA4 8006F0A4 8D2A0000 */  lw         $t2, 0x0($t1)
/* 6FCA8 8006F0A8 314B0001 */  andi       $t3, $t2, 0x1
/* 6FCAC 8006F0AC 15600003 */  bnez       $t3, .L8006F0BC
/* 6FCB0 8006F0B0 00000000 */   nop
/* 6FCB4 8006F0B4 100000FF */  b          .L8006F4B4
/* 6FCB8 8006F0B8 24020005 */   addiu     $v0, $zero, 0x5
.L8006F0BC:
/* 6FCBC 8006F0BC 0C01D380 */  jal        func_80074E00
/* 6FCC0 8006F0C0 8FA40278 */   lw        $a0, 0x278($sp)
/* 6FCC4 8006F0C4 24010002 */  addiu      $at, $zero, 0x2
/* 6FCC8 8006F0C8 14410003 */  bne        $v0, $at, .L8006F0D8
/* 6FCCC 8006F0CC 00000000 */   nop
/* 6FCD0 8006F0D0 100000F8 */  b          .L8006F4B4
/* 6FCD4 8006F0D4 24020002 */   addiu     $v0, $zero, 0x2
.L8006F0D8:
/* 6FCD8 8006F0D8 8FAC0288 */  lw         $t4, 0x288($sp)
/* 6FCDC 8006F0DC 8FAD0290 */  lw         $t5, 0x290($sp)
/* 6FCE0 8006F0E0 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FCE4 8006F0E4 97A5027E */  lhu        $a1, 0x27E($sp)
/* 6FCE8 8006F0E8 8FA60280 */  lw         $a2, 0x280($sp)
/* 6FCEC 8006F0EC 8FA70284 */  lw         $a3, 0x284($sp)
/* 6FCF0 8006F0F0 AFAC0010 */  sw         $t4, 0x10($sp)
/* 6FCF4 8006F0F4 0C01B378 */  jal        func_8006CDE0
/* 6FCF8 8006F0F8 AFAD0014 */   sw        $t5, 0x14($sp)
/* 6FCFC 8006F0FC AFA20260 */  sw         $v0, 0x260($sp)
/* 6FD00 8006F100 8FAE0260 */  lw         $t6, 0x260($sp)
/* 6FD04 8006F104 11C00005 */  beqz       $t6, .L8006F11C
/* 6FD08 8006F108 24010005 */   addiu     $at, $zero, 0x5
/* 6FD0C 8006F10C 11C10003 */  beq        $t6, $at, .L8006F11C
/* 6FD10 8006F110 00000000 */   nop
/* 6FD14 8006F114 100000E7 */  b          .L8006F4B4
/* 6FD18 8006F118 01C01025 */   or        $v0, $t6, $zero
.L8006F11C:
/* 6FD1C 8006F11C 8FAF0290 */  lw         $t7, 0x290($sp)
/* 6FD20 8006F120 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FD24 8006F124 8DF80000 */  lw         $t8, 0x0($t7)
/* 6FD28 8006F128 13010003 */  beq        $t8, $at, .L8006F138
/* 6FD2C 8006F12C 00000000 */   nop
/* 6FD30 8006F130 100000E0 */  b          .L8006F4B4
/* 6FD34 8006F134 24020009 */   addiu     $v0, $zero, 0x9
.L8006F138:
/* 6FD38 8006F138 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FD3C 8006F13C 0C01B43C */  jal        func_8006D0F0
/* 6FD40 8006F140 27A50030 */   addiu     $a1, $sp, 0x30
/* 6FD44 8006F144 8FB9028C */  lw         $t9, 0x28C($sp)
/* 6FD48 8006F148 8FA80030 */  lw         $t0, 0x30($sp)
/* 6FD4C 8006F14C AFA20260 */  sw         $v0, 0x260($sp)
/* 6FD50 8006F150 0119082A */  slt        $at, $t0, $t9
/* 6FD54 8006F154 10200003 */  beqz       $at, .L8006F164
/* 6FD58 8006F158 00000000 */   nop
/* 6FD5C 8006F15C 100000D5 */  b          .L8006F4B4
/* 6FD60 8006F160 24020007 */   addiu     $v0, $zero, 0x7
.L8006F164:
/* 6FD64 8006F164 8FA9025C */  lw         $t1, 0x25C($sp)
/* 6FD68 8006F168 112000D1 */  beqz       $t1, .L8006F4B0
/* 6FD6C 8006F16C 00000000 */   nop
/* 6FD70 8006F170 8FAA0290 */  lw         $t2, 0x290($sp)
/* 6FD74 8006F174 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FD78 8006F178 00002825 */  or         $a1, $zero, $zero
/* 6FD7C 8006F17C 00003025 */  or         $a2, $zero, $zero
/* 6FD80 8006F180 00003825 */  or         $a3, $zero, $zero
/* 6FD84 8006F184 AFA00010 */  sw         $zero, 0x10($sp)
/* 6FD88 8006F188 0C01B378 */  jal        func_8006CDE0
/* 6FD8C 8006F18C AFAA0014 */   sw        $t2, 0x14($sp)
/* 6FD90 8006F190 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FD94 8006F194 8FAB0260 */  lw         $t3, 0x260($sp)
/* 6FD98 8006F198 11600005 */  beqz       $t3, .L8006F1B0
/* 6FD9C 8006F19C 24010005 */   addiu     $at, $zero, 0x5
/* 6FDA0 8006F1A0 11610003 */  beq        $t3, $at, .L8006F1B0
/* 6FDA4 8006F1A4 00000000 */   nop
/* 6FDA8 8006F1A8 100000C2 */  b          .L8006F4B4
/* 6FDAC 8006F1AC 01601025 */   or        $v0, $t3, $zero
.L8006F1B0:
/* 6FDB0 8006F1B0 8FAC0290 */  lw         $t4, 0x290($sp)
/* 6FDB4 8006F1B4 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FDB8 8006F1B8 8D8D0000 */  lw         $t5, 0x0($t4)
/* 6FDBC 8006F1BC 15A10003 */  bne        $t5, $at, .L8006F1CC
/* 6FDC0 8006F1C0 00000000 */   nop
/* 6FDC4 8006F1C4 100000BB */  b          .L8006F4B4
/* 6FDC8 8006F1C8 24020008 */   addiu     $v0, $zero, 0x8
.L8006F1CC:
/* 6FDCC 8006F1CC 8FAE0278 */  lw         $t6, 0x278($sp)
/* 6FDD0 8006F1D0 A3A0003B */  sb         $zero, 0x3B($sp)
/* 6FDD4 8006F1D4 91CF0064 */  lbu        $t7, 0x64($t6)
/* 6FDD8 8006F1D8 19E00062 */  blez       $t7, .L8006F364
/* 6FDDC 8006F1DC 00000000 */   nop
.L8006F1E0:
/* 6FDE0 8006F1E0 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FDE4 8006F1E4 27A5015C */  addiu      $a1, $sp, 0x15C
/* 6FDE8 8006F1E8 00003025 */  or         $a2, $zero, $zero
/* 6FDEC 8006F1EC 0C01D3BF */  jal        func_80074EFC
/* 6FDF0 8006F1F0 93A7003B */   lbu       $a3, 0x3B($sp)
/* 6FDF4 8006F1F4 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FDF8 8006F1F8 8FB80260 */  lw         $t8, 0x260($sp)
/* 6FDFC 8006F1FC 13000003 */  beqz       $t8, .L8006F20C
/* 6FE00 8006F200 00000000 */   nop
/* 6FE04 8006F204 100000AB */  b          .L8006F4B4
/* 6FE08 8006F208 03001025 */   or        $v0, $t8, $zero
.L8006F20C:
/* 6FE0C 8006F20C 93B9003B */  lbu        $t9, 0x3B($sp)
/* 6FE10 8006F210 27A80270 */  addiu      $t0, $sp, 0x270
/* 6FE14 8006F214 27A9026C */  addiu      $t1, $sp, 0x26C
/* 6FE18 8006F218 AFA90018 */  sw         $t1, 0x18($sp)
/* 6FE1C 8006F21C AFA80014 */  sw         $t0, 0x14($sp)
/* 6FE20 8006F220 8FA40278 */  lw         $a0, 0x278($sp)
/* 6FE24 8006F224 27A5015C */  addiu      $a1, $sp, 0x15C
/* 6FE28 8006F228 8FA6025C */  lw         $a2, 0x25C($sp)
/* 6FE2C 8006F22C 27A70274 */  addiu      $a3, $sp, 0x274
/* 6FE30 8006F230 0C01BD31 */  jal        func_8006F4C4
/* 6FE34 8006F234 AFB90010 */   sw        $t9, 0x10($sp)
/* 6FE38 8006F238 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FE3C 8006F23C 8FAA0260 */  lw         $t2, 0x260($sp)
/* 6FE40 8006F240 11400003 */  beqz       $t2, .L8006F250
/* 6FE44 8006F244 00000000 */   nop
/* 6FE48 8006F248 1000009A */  b          .L8006F4B4
/* 6FE4C 8006F24C 01401025 */   or        $v0, $t2, $zero
.L8006F250:
/* 6FE50 8006F250 8FAB0274 */  lw         $t3, 0x274($sp)
/* 6FE54 8006F254 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FE58 8006F258 11610039 */  beq        $t3, $at, .L8006F340
/* 6FE5C 8006F25C 00000000 */   nop
/* 6FE60 8006F260 8FAC0034 */  lw         $t4, 0x34($sp)
/* 6FE64 8006F264 15800005 */  bnez       $t4, .L8006F27C
/* 6FE68 8006F268 00000000 */   nop
/* 6FE6C 8006F26C 93AD003B */  lbu        $t5, 0x3B($sp)
/* 6FE70 8006F270 A3AB002D */  sb         $t3, 0x2D($sp)
/* 6FE74 8006F274 10000016 */  b          .L8006F2D0
/* 6FE78 8006F278 A3AD002C */   sb        $t5, 0x2C($sp)
.L8006F27C:
/* 6FE7C 8006F27C 8FAF0268 */  lw         $t7, 0x268($sp)
/* 6FE80 8006F280 93AE003B */  lbu        $t6, 0x3B($sp)
/* 6FE84 8006F284 27A5005C */  addiu      $a1, $sp, 0x5C
/* 6FE88 8006F288 000FC040 */  sll        $t8, $t7, 1
/* 6FE8C 8006F28C 03B8C821 */  addu       $t9, $sp, $t8
/* 6FE90 8006F290 A32E005C */  sb         $t6, 0x5C($t9)
/* 6FE94 8006F294 8FA90268 */  lw         $t1, 0x268($sp)
/* 6FE98 8006F298 8FA80274 */  lw         $t0, 0x274($sp)
/* 6FE9C 8006F29C 24060001 */  addiu      $a2, $zero, 0x1
/* 6FEA0 8006F2A0 00095040 */  sll        $t2, $t1, 1
/* 6FEA4 8006F2A4 03AA6021 */  addu       $t4, $sp, $t2
/* 6FEA8 8006F2A8 A188005D */  sb         $t0, 0x5D($t4)
/* 6FEAC 8006F2AC 93A7003A */  lbu        $a3, 0x3A($sp)
/* 6FEB0 8006F2B0 0C01D3BF */  jal        func_80074EFC
/* 6FEB4 8006F2B4 8FA40278 */   lw        $a0, 0x278($sp)
/* 6FEB8 8006F2B8 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FEBC 8006F2BC 8FAB0260 */  lw         $t3, 0x260($sp)
/* 6FEC0 8006F2C0 11600003 */  beqz       $t3, .L8006F2D0
/* 6FEC4 8006F2C4 00000000 */   nop
/* 6FEC8 8006F2C8 1000007A */  b          .L8006F4B4
/* 6FECC 8006F2CC 01601025 */   or        $v0, $t3, $zero
.L8006F2D0:
/* 6FED0 8006F2D0 AFA00264 */  sw         $zero, 0x264($sp)
.L8006F2D4:
/* 6FED4 8006F2D4 8FAD0264 */  lw         $t5, 0x264($sp)
/* 6FED8 8006F2D8 000D7840 */  sll        $t7, $t5, 1
/* 6FEDC 8006F2DC 03AF7021 */  addu       $t6, $sp, $t7
/* 6FEE0 8006F2E0 95CE015C */  lhu        $t6, 0x15C($t6)
/* 6FEE4 8006F2E4 03AFC021 */  addu       $t8, $sp, $t7
/* 6FEE8 8006F2E8 A70E005C */  sh         $t6, 0x5C($t8)
/* 6FEEC 8006F2EC 8FB90264 */  lw         $t9, 0x264($sp)
/* 6FEF0 8006F2F0 27290001 */  addiu      $t1, $t9, 0x1
/* 6FEF4 8006F2F4 29210080 */  slti       $at, $t1, 0x80
/* 6FEF8 8006F2F8 1420FFF6 */  bnez       $at, .L8006F2D4
/* 6FEFC 8006F2FC AFA90264 */   sw        $t1, 0x264($sp)
/* 6FF00 8006F300 8FAC0034 */  lw         $t4, 0x34($sp)
/* 6FF04 8006F304 8FAD025C */  lw         $t5, 0x25C($sp)
/* 6FF08 8006F308 8FAE0270 */  lw         $t6, 0x270($sp)
/* 6FF0C 8006F30C 8FA8026C */  lw         $t0, 0x26C($sp)
/* 6FF10 8006F310 93AA003B */  lbu        $t2, 0x3B($sp)
/* 6FF14 8006F314 258B0001 */  addiu      $t3, $t4, 0x1
/* 6FF18 8006F318 01CD082A */  slt        $at, $t6, $t5
/* 6FF1C 8006F31C AFAB0034 */  sw         $t3, 0x34($sp)
/* 6FF20 8006F320 AFA80268 */  sw         $t0, 0x268($sp)
/* 6FF24 8006F324 10200004 */  beqz       $at, .L8006F338
/* 6FF28 8006F328 A3AA003A */   sb        $t2, 0x3A($sp)
/* 6FF2C 8006F32C 01AE7823 */  subu       $t7, $t5, $t6
/* 6FF30 8006F330 10000003 */  b          .L8006F340
/* 6FF34 8006F334 AFAF025C */   sw        $t7, 0x25C($sp)
.L8006F338:
/* 6FF38 8006F338 1000000A */  b          .L8006F364
/* 6FF3C 8006F33C AFA0025C */   sw        $zero, 0x25C($sp)
.L8006F340:
/* 6FF40 8006F340 93B8003B */  lbu        $t8, 0x3B($sp)
/* 6FF44 8006F344 8FA80278 */  lw         $t0, 0x278($sp)
/* 6FF48 8006F348 27190001 */  addiu      $t9, $t8, 0x1
/* 6FF4C 8006F34C A3B9003B */  sb         $t9, 0x3B($sp)
/* 6FF50 8006F350 910A0064 */  lbu        $t2, 0x64($t0)
/* 6FF54 8006F354 332900FF */  andi       $t1, $t9, 0xFF
/* 6FF58 8006F358 012A082A */  slt        $at, $t1, $t2
/* 6FF5C 8006F35C 1420FFA0 */  bnez       $at, .L8006F1E0
/* 6FF60 8006F360 00000000 */   nop
.L8006F364:
/* 6FF64 8006F364 8FAC025C */  lw         $t4, 0x25C($sp)
/* 6FF68 8006F368 1D800005 */  bgtz       $t4, .L8006F380
/* 6FF6C 8006F36C 00000000 */   nop
/* 6FF70 8006F370 8FAB0274 */  lw         $t3, 0x274($sp)
/* 6FF74 8006F374 2401FFFF */  addiu      $at, $zero, -0x1
/* 6FF78 8006F378 15610003 */  bne        $t3, $at, .L8006F388
/* 6FF7C 8006F37C 00000000 */   nop
.L8006F380:
/* 6FF80 8006F380 1000004C */  b          .L8006F4B4
/* 6FF84 8006F384 24020003 */   addiu     $v0, $zero, 0x3
.L8006F388:
/* 6FF88 8006F388 8FAE0268 */  lw         $t6, 0x268($sp)
/* 6FF8C 8006F38C 93AD003B */  lbu        $t5, 0x3B($sp)
/* 6FF90 8006F390 27A5005C */  addiu      $a1, $sp, 0x5C
/* 6FF94 8006F394 000E7840 */  sll        $t7, $t6, 1
/* 6FF98 8006F398 03AFC021 */  addu       $t8, $sp, $t7
/* 6FF9C 8006F39C A30D005C */  sb         $t5, 0x5C($t8)
/* 6FFA0 8006F3A0 8FA80268 */  lw         $t0, 0x268($sp)
/* 6FFA4 8006F3A4 8FB90274 */  lw         $t9, 0x274($sp)
/* 6FFA8 8006F3A8 24060001 */  addiu      $a2, $zero, 0x1
/* 6FFAC 8006F3AC 00084840 */  sll        $t1, $t0, 1
/* 6FFB0 8006F3B0 03A95021 */  addu       $t2, $sp, $t1
/* 6FFB4 8006F3B4 A159005D */  sb         $t9, 0x5D($t2)
/* 6FFB8 8006F3B8 93A7003A */  lbu        $a3, 0x3A($sp)
/* 6FFBC 8006F3BC 0C01D3BF */  jal        func_80074EFC
/* 6FFC0 8006F3C0 8FA40278 */   lw        $a0, 0x278($sp)
/* 6FFC4 8006F3C4 AFA20260 */  sw         $v0, 0x260($sp)
/* 6FFC8 8006F3C8 8FAC0260 */  lw         $t4, 0x260($sp)
/* 6FFCC 8006F3CC 11800003 */  beqz       $t4, .L8006F3DC
/* 6FFD0 8006F3D0 00000000 */   nop
/* 6FFD4 8006F3D4 10000037 */  b          .L8006F4B4
/* 6FFD8 8006F3D8 01801025 */   or        $v0, $t4, $zero
.L8006F3DC:
/* 6FFDC 8006F3DC 97AB002C */  lhu        $t3, 0x2C($sp)
/* 6FFE0 8006F3E0 97AE027E */  lhu        $t6, 0x27E($sp)
/* 6FFE4 8006F3E4 8FAD0280 */  lw         $t5, 0x280($sp)
/* 6FFE8 8006F3E8 A7A00046 */  sh         $zero, 0x46($sp)
/* 6FFEC 8006F3EC AFA00264 */  sw         $zero, 0x264($sp)
/* 6FFF0 8006F3F0 A7AB0042 */  sh         $t3, 0x42($sp)
/* 6FFF4 8006F3F4 A7AE0040 */  sh         $t6, 0x40($sp)
/* 6FFF8 8006F3F8 AFAD003C */  sw         $t5, 0x3C($sp)
.L8006F3FC:
/* 6FFFC 8006F3FC 8FAF0284 */  lw         $t7, 0x284($sp)
/* 70000 8006F400 8FA80264 */  lw         $t0, 0x264($sp)
/* 70004 8006F404 91F80000 */  lbu        $t8, 0x0($t7)
/* 70008 8006F408 03A8C821 */  addu       $t9, $sp, $t0
/* 7000C 8006F40C A338004C */  sb         $t8, 0x4C($t9)
/* 70010 8006F410 8FAC0264 */  lw         $t4, 0x264($sp)
/* 70014 8006F414 8FA90284 */  lw         $t1, 0x284($sp)
/* 70018 8006F418 258B0001 */  addiu      $t3, $t4, 0x1
/* 7001C 8006F41C 29610010 */  slti       $at, $t3, 0x10
/* 70020 8006F420 252A0001 */  addiu      $t2, $t1, 0x1
/* 70024 8006F424 AFAB0264 */  sw         $t3, 0x264($sp)
/* 70028 8006F428 1420FFF4 */  bnez       $at, .L8006F3FC
/* 7002C 8006F42C AFAA0284 */   sw        $t2, 0x284($sp)
/* 70030 8006F430 AFA00264 */  sw         $zero, 0x264($sp)
.L8006F434:
/* 70034 8006F434 8FAE0288 */  lw         $t6, 0x288($sp)
/* 70038 8006F438 8FAF0264 */  lw         $t7, 0x264($sp)
/* 7003C 8006F43C 91CD0000 */  lbu        $t5, 0x0($t6)
/* 70040 8006F440 03AFC021 */  addu       $t8, $sp, $t7
/* 70044 8006F444 A30D0048 */  sb         $t5, 0x48($t8)
/* 70048 8006F448 8FA90264 */  lw         $t1, 0x264($sp)
/* 7004C 8006F44C 8FA80288 */  lw         $t0, 0x288($sp)
/* 70050 8006F450 252A0001 */  addiu      $t2, $t1, 0x1
/* 70054 8006F454 29410004 */  slti       $at, $t2, 0x4
/* 70058 8006F458 25190001 */  addiu      $t9, $t0, 0x1
/* 7005C 8006F45C AFAA0264 */  sw         $t2, 0x264($sp)
/* 70060 8006F460 1420FFF4 */  bnez       $at, .L8006F434
/* 70064 8006F464 AFB90288 */   sw        $t9, 0x288($sp)
/* 70068 8006F468 8FAC0278 */  lw         $t4, 0x278($sp)
/* 7006C 8006F46C 8FAB0290 */  lw         $t3, 0x290($sp)
/* 70070 8006F470 27A7003C */  addiu      $a3, $sp, 0x3C
/* 70074 8006F474 8D8D005C */  lw         $t5, 0x5C($t4)
/* 70078 8006F478 8D6E0000 */  lw         $t6, 0x0($t3)
/* 7007C 8006F47C 8D840004 */  lw         $a0, 0x4($t4)
/* 70080 8006F480 8D850008 */  lw         $a1, 0x8($t4)
/* 70084 8006F484 AFA00010 */  sw         $zero, 0x10($sp)
/* 70088 8006F488 0C01DC98 */  jal        __osContRamWrite
/* 7008C 8006F48C 01CD3021 */   addu      $a2, $t6, $t5
/* 70090 8006F490 AFA20260 */  sw         $v0, 0x260($sp)
/* 70094 8006F494 8FAF0260 */  lw         $t7, 0x260($sp)
/* 70098 8006F498 11E00003 */  beqz       $t7, .L8006F4A8
/* 7009C 8006F49C 00000000 */   nop
/* 700A0 8006F4A0 10000004 */  b          .L8006F4B4
/* 700A4 8006F4A4 01E01025 */   or        $v0, $t7, $zero
.L8006F4A8:
/* 700A8 8006F4A8 10000002 */  b          .L8006F4B4
/* 700AC 8006F4AC 8FA20260 */   lw        $v0, 0x260($sp)
.L8006F4B0:
/* 700B0 8006F4B0 24020005 */  addiu      $v0, $zero, 0x5
.L8006F4B4:
/* 700B4 8006F4B4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 700B8 8006F4B8 27BD0278 */  addiu      $sp, $sp, 0x278
/* 700BC 8006F4BC 03E00008 */  jr         $ra
/* 700C0 8006F4C0 00000000 */   nop

glabel func_8006F4C4
/* 700C4 8006F4C4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 700C8 8006F4C8 93AE0063 */  lbu        $t6, 0x63($sp)
/* 700CC 8006F4CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 700D0 8006F4D0 AFA40050 */  sw         $a0, 0x50($sp)
/* 700D4 8006F4D4 AFA50054 */  sw         $a1, 0x54($sp)
/* 700D8 8006F4D8 AFA60058 */  sw         $a2, 0x58($sp)
/* 700DC 8006F4DC AFA7005C */  sw         $a3, 0x5C($sp)
/* 700E0 8006F4E0 19C00004 */  blez       $t6, .L8006F4F4
/* 700E4 8006F4E4 AFA0001C */   sw        $zero, 0x1C($sp)
/* 700E8 8006F4E8 240F0001 */  addiu      $t7, $zero, 0x1
/* 700EC 8006F4EC 10000004 */  b          .L8006F500
/* 700F0 8006F4F0 AFAF0018 */   sw        $t7, 0x18($sp)
.L8006F4F4:
/* 700F4 8006F4F4 8FB80050 */  lw         $t8, 0x50($sp)
/* 700F8 8006F4F8 8F190060 */  lw         $t9, 0x60($t8)
/* 700FC 8006F4FC AFB90018 */  sw         $t9, 0x18($sp)
.L8006F500:
/* 70100 8006F500 8FA80018 */  lw         $t0, 0x18($sp)
/* 70104 8006F504 29010080 */  slti       $at, $t0, 0x80
/* 70108 8006F508 1020000E */  beqz       $at, .L8006F544
/* 7010C 8006F50C AFA8004C */   sw        $t0, 0x4C($sp)
.L8006F510:
/* 70110 8006F510 8FAA004C */  lw         $t2, 0x4C($sp)
/* 70114 8006F514 8FA90054 */  lw         $t1, 0x54($sp)
/* 70118 8006F518 24010003 */  addiu      $at, $zero, 0x3
/* 7011C 8006F51C 000A5840 */  sll        $t3, $t2, 1
/* 70120 8006F520 012B6021 */  addu       $t4, $t1, $t3
/* 70124 8006F524 958D0000 */  lhu        $t5, 0x0($t4)
/* 70128 8006F528 11A10006 */  beq        $t5, $at, .L8006F544
/* 7012C 8006F52C 00000000 */   nop
/* 70130 8006F530 8FAE004C */  lw         $t6, 0x4C($sp)
/* 70134 8006F534 25CF0001 */  addiu      $t7, $t6, 0x1
/* 70138 8006F538 29E10080 */  slti       $at, $t7, 0x80
/* 7013C 8006F53C 1420FFF4 */  bnez       $at, .L8006F510
/* 70140 8006F540 AFAF004C */   sw        $t7, 0x4C($sp)
.L8006F544:
/* 70144 8006F544 8FB8004C */  lw         $t8, 0x4C($sp)
/* 70148 8006F548 24010080 */  addiu      $at, $zero, 0x80
/* 7014C 8006F54C 17010006 */  bne        $t8, $at, .L8006F568
/* 70150 8006F550 00000000 */   nop
/* 70154 8006F554 8FA8005C */  lw         $t0, 0x5C($sp)
/* 70158 8006F558 2419FFFF */  addiu      $t9, $zero, -0x1
/* 7015C 8006F55C AD190000 */  sw         $t9, 0x0($t0)
/* 70160 8006F560 1000006D */  b          .L8006F718
/* 70164 8006F564 8FA2001C */   lw        $v0, 0x1C($sp)
.L8006F568:
/* 70168 8006F568 AFA00020 */  sw         $zero, 0x20($sp)
.L8006F56C:
/* 7016C 8006F56C 8FAA0020 */  lw         $t2, 0x20($sp)
/* 70170 8006F570 03AA4821 */  addu       $t1, $sp, $t2
/* 70174 8006F574 A1200024 */  sb         $zero, 0x24($t1)
/* 70178 8006F578 8FAB0020 */  lw         $t3, 0x20($sp)
/* 7017C 8006F57C 256C0001 */  addiu      $t4, $t3, 0x1
/* 70180 8006F580 29810020 */  slti       $at, $t4, 0x20
/* 70184 8006F584 1420FFF9 */  bnez       $at, .L8006F56C
/* 70188 8006F588 AFAC0020 */   sw        $t4, 0x20($sp)
/* 7018C 8006F58C 8FAD004C */  lw         $t5, 0x4C($sp)
/* 70190 8006F590 8FAF0064 */  lw         $t7, 0x64($sp)
/* 70194 8006F594 240E0001 */  addiu      $t6, $zero, 0x1
/* 70198 8006F598 AFAD0048 */  sw         $t5, 0x48($sp)
/* 7019C 8006F59C ADEE0000 */  sw         $t6, 0x0($t7)
/* 701A0 8006F5A0 8FB8004C */  lw         $t8, 0x4C($sp)
/* 701A4 8006F5A4 8FAA0064 */  lw         $t2, 0x64($sp)
/* 701A8 8006F5A8 8FA80058 */  lw         $t0, 0x58($sp)
/* 701AC 8006F5AC 27190001 */  addiu      $t9, $t8, 0x1
/* 701B0 8006F5B0 AFB9004C */  sw         $t9, 0x4C($sp)
/* 701B4 8006F5B4 AFB80044 */  sw         $t8, 0x44($sp)
/* 701B8 8006F5B8 8D490000 */  lw         $t1, 0x0($t2)
/* 701BC 8006F5BC 0128082A */  slt        $at, $t1, $t0
/* 701C0 8006F5C0 10200034 */  beqz       $at, .L8006F694
/* 701C4 8006F5C4 2B210080 */   slti      $at, $t9, 0x80
/* 701C8 8006F5C8 10200032 */  beqz       $at, .L8006F694
/* 701CC 8006F5CC 00000000 */   nop
.L8006F5D0:
/* 701D0 8006F5D0 8FAC004C */  lw         $t4, 0x4C($sp)
/* 701D4 8006F5D4 8FAB0054 */  lw         $t3, 0x54($sp)
/* 701D8 8006F5D8 24010003 */  addiu      $at, $zero, 0x3
/* 701DC 8006F5DC 000C6840 */  sll        $t5, $t4, 1
/* 701E0 8006F5E0 016D7021 */  addu       $t6, $t3, $t5
/* 701E4 8006F5E4 95CF0000 */  lhu        $t7, 0x0($t6)
/* 701E8 8006F5E8 15E1001D */  bne        $t7, $at, .L8006F660
/* 701EC 8006F5EC 00000000 */   nop
/* 701F0 8006F5F0 8FAA0044 */  lw         $t2, 0x44($sp)
/* 701F4 8006F5F4 93B80063 */  lbu        $t8, 0x63($sp)
/* 701F8 8006F5F8 27A60024 */  addiu      $a2, $sp, 0x24
/* 701FC 8006F5FC 000A4040 */  sll        $t0, $t2, 1
/* 70200 8006F600 01684821 */  addu       $t1, $t3, $t0
/* 70204 8006F604 A1380000 */  sb         $t8, 0x0($t1)
/* 70208 8006F608 8FAD0044 */  lw         $t5, 0x44($sp)
/* 7020C 8006F60C 8FAC0054 */  lw         $t4, 0x54($sp)
/* 70210 8006F610 8FB9004C */  lw         $t9, 0x4C($sp)
/* 70214 8006F614 000D7040 */  sll        $t6, $t5, 1
/* 70218 8006F618 018E7821 */  addu       $t7, $t4, $t6
/* 7021C 8006F61C A1F90001 */  sb         $t9, 0x1($t7)
/* 70220 8006F620 93A70063 */  lbu        $a3, 0x63($sp)
/* 70224 8006F624 8FA50044 */  lw         $a1, 0x44($sp)
/* 70228 8006F628 0C01BDCA */  jal        func_8006F728
/* 7022C 8006F62C 8FA40050 */   lw        $a0, 0x50($sp)
/* 70230 8006F630 AFA2001C */  sw         $v0, 0x1C($sp)
/* 70234 8006F634 8FAA001C */  lw         $t2, 0x1C($sp)
/* 70238 8006F638 11400003 */  beqz       $t2, .L8006F648
/* 7023C 8006F63C 00000000 */   nop
/* 70240 8006F640 10000035 */  b          .L8006F718
/* 70244 8006F644 01401025 */   or        $v0, $t2, $zero
.L8006F648:
/* 70248 8006F648 8FAB004C */  lw         $t3, 0x4C($sp)
/* 7024C 8006F64C 8FA80064 */  lw         $t0, 0x64($sp)
/* 70250 8006F650 AFAB0044 */  sw         $t3, 0x44($sp)
/* 70254 8006F654 8D180000 */  lw         $t8, 0x0($t0)
/* 70258 8006F658 27090001 */  addiu      $t1, $t8, 0x1
/* 7025C 8006F65C AD090000 */  sw         $t1, 0x0($t0)
.L8006F660:
/* 70260 8006F660 8FAD004C */  lw         $t5, 0x4C($sp)
/* 70264 8006F664 8FB90064 */  lw         $t9, 0x64($sp)
/* 70268 8006F668 8FAE0058 */  lw         $t6, 0x58($sp)
/* 7026C 8006F66C 25AC0001 */  addiu      $t4, $t5, 0x1
/* 70270 8006F670 AFAC004C */  sw         $t4, 0x4C($sp)
/* 70274 8006F674 8F2F0000 */  lw         $t7, 0x0($t9)
/* 70278 8006F678 01EE082A */  slt        $at, $t7, $t6
/* 7027C 8006F67C 10200005 */  beqz       $at, .L8006F694
/* 70280 8006F680 00000000 */   nop
/* 70284 8006F684 8FAA004C */  lw         $t2, 0x4C($sp)
/* 70288 8006F688 29410080 */  slti       $at, $t2, 0x80
/* 7028C 8006F68C 1420FFD0 */  bnez       $at, .L8006F5D0
/* 70290 8006F690 00000000 */   nop
.L8006F694:
/* 70294 8006F694 8FAB0048 */  lw         $t3, 0x48($sp)
/* 70298 8006F698 8FB8005C */  lw         $t8, 0x5C($sp)
/* 7029C 8006F69C 24010080 */  addiu      $at, $zero, 0x80
/* 702A0 8006F6A0 AF0B0000 */  sw         $t3, 0x0($t8)
/* 702A4 8006F6A4 8FA9004C */  lw         $t1, 0x4C($sp)
/* 702A8 8006F6A8 1521000C */  bne        $t1, $at, .L8006F6DC
/* 702AC 8006F6AC 00000000 */   nop
/* 702B0 8006F6B0 8FAD0064 */  lw         $t5, 0x64($sp)
/* 702B4 8006F6B4 8FA80058 */  lw         $t0, 0x58($sp)
/* 702B8 8006F6B8 8DAC0000 */  lw         $t4, 0x0($t5)
/* 702BC 8006F6BC 0188082A */  slt        $at, $t4, $t0
/* 702C0 8006F6C0 10200006 */  beqz       $at, .L8006F6DC
/* 702C4 8006F6C4 00000000 */   nop
/* 702C8 8006F6C8 8FB90044 */  lw         $t9, 0x44($sp)
/* 702CC 8006F6CC 8FAE0068 */  lw         $t6, 0x68($sp)
/* 702D0 8006F6D0 ADD90000 */  sw         $t9, 0x0($t6)
/* 702D4 8006F6D4 10000010 */  b          .L8006F718
/* 702D8 8006F6D8 8FA2001C */   lw        $v0, 0x1C($sp)
.L8006F6DC:
/* 702DC 8006F6DC 8FAB0044 */  lw         $t3, 0x44($sp)
/* 702E0 8006F6E0 8FAA0054 */  lw         $t2, 0x54($sp)
/* 702E4 8006F6E4 240F0001 */  addiu      $t7, $zero, 0x1
/* 702E8 8006F6E8 000BC040 */  sll        $t8, $t3, 1
/* 702EC 8006F6EC 01584821 */  addu       $t1, $t2, $t8
/* 702F0 8006F6F0 A52F0000 */  sh         $t7, 0x0($t1)
/* 702F4 8006F6F4 93A70063 */  lbu        $a3, 0x63($sp)
/* 702F8 8006F6F8 8FA50044 */  lw         $a1, 0x44($sp)
/* 702FC 8006F6FC 8FA40050 */  lw         $a0, 0x50($sp)
/* 70300 8006F700 0C01BDCA */  jal        func_8006F728
/* 70304 8006F704 27A60024 */   addiu     $a2, $sp, 0x24
/* 70308 8006F708 8FAD0068 */  lw         $t5, 0x68($sp)
/* 7030C 8006F70C AFA2001C */  sw         $v0, 0x1C($sp)
/* 70310 8006F710 ADA00000 */  sw         $zero, 0x0($t5)
/* 70314 8006F714 8FA2001C */  lw         $v0, 0x1C($sp)
.L8006F718:
/* 70318 8006F718 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7031C 8006F71C 27BD0050 */  addiu      $sp, $sp, 0x50
/* 70320 8006F720 03E00008 */  jr         $ra
/* 70324 8006F724 00000000 */   nop

glabel func_8006F728
/* 70328 8006F728 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7032C 8006F72C AFA40028 */  sw         $a0, 0x28($sp)
/* 70330 8006F730 AFA70034 */  sw         $a3, 0x34($sp)
/* 70334 8006F734 93AE0037 */  lbu        $t6, 0x37($sp)
/* 70338 8006F738 8FAF0028 */  lw         $t7, 0x28($sp)
/* 7033C 8006F73C AFBF001C */  sw         $ra, 0x1C($sp)
/* 70340 8006F740 AFA5002C */  sw         $a1, 0x2C($sp)
/* 70344 8006F744 AFA60030 */  sw         $a2, 0x30($sp)
/* 70348 8006F748 AFA00020 */  sw         $zero, 0x20($sp)
/* 7034C 8006F74C A1EE0065 */  sb         $t6, 0x65($t7)
/* 70350 8006F750 0C01D487 */  jal        func_8007521C
/* 70354 8006F754 8FA40028 */   lw        $a0, 0x28($sp)
/* 70358 8006F758 AFA20020 */  sw         $v0, 0x20($sp)
/* 7035C 8006F75C 8FB80020 */  lw         $t8, 0x20($sp)
/* 70360 8006F760 13000003 */  beqz       $t8, .L8006F770
/* 70364 8006F764 00000000 */   nop
/* 70368 8006F768 1000001B */  b          .L8006F7D8
/* 7036C 8006F76C 03001025 */   or        $v0, $t8, $zero
.L8006F770:
/* 70370 8006F770 AFA00024 */  sw         $zero, 0x24($sp)
.L8006F774:
/* 70374 8006F774 8FB90028 */  lw         $t9, 0x28($sp)
/* 70378 8006F778 8FA8002C */  lw         $t0, 0x2C($sp)
/* 7037C 8006F77C 8FAA0024 */  lw         $t2, 0x24($sp)
/* 70380 8006F780 8F240004 */  lw         $a0, 0x4($t9)
/* 70384 8006F784 8F250008 */  lw         $a1, 0x8($t9)
/* 70388 8006F788 000848C0 */  sll        $t1, $t0, 3
/* 7038C 8006F78C AFA00010 */  sw         $zero, 0x10($sp)
/* 70390 8006F790 8FA70030 */  lw         $a3, 0x30($sp)
/* 70394 8006F794 0C01DC98 */  jal        __osContRamWrite
/* 70398 8006F798 012A3021 */   addu      $a2, $t1, $t2
/* 7039C 8006F79C AFA20020 */  sw         $v0, 0x20($sp)
/* 703A0 8006F7A0 8FAB0020 */  lw         $t3, 0x20($sp)
/* 703A4 8006F7A4 15600006 */  bnez       $t3, .L8006F7C0
/* 703A8 8006F7A8 00000000 */   nop
/* 703AC 8006F7AC 8FAC0024 */  lw         $t4, 0x24($sp)
/* 703B0 8006F7B0 258D0001 */  addiu      $t5, $t4, 0x1
/* 703B4 8006F7B4 29A10008 */  slti       $at, $t5, 0x8
/* 703B8 8006F7B8 1420FFEE */  bnez       $at, .L8006F774
/* 703BC 8006F7BC AFAD0024 */   sw        $t5, 0x24($sp)
.L8006F7C0:
/* 703C0 8006F7C0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 703C4 8006F7C4 A1C00065 */  sb         $zero, 0x65($t6)
/* 703C8 8006F7C8 0C01D487 */  jal        func_8007521C
/* 703CC 8006F7CC 8FA40028 */   lw        $a0, 0x28($sp)
/* 703D0 8006F7D0 AFA20020 */  sw         $v0, 0x20($sp)
/* 703D4 8006F7D4 8FA20020 */  lw         $v0, 0x20($sp)
.L8006F7D8:
/* 703D8 8006F7D8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 703DC 8006F7DC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 703E0 8006F7E0 03E00008 */  jr         $ra
/* 703E4 8006F7E4 00000000 */   nop
/* 703E8 8006F7E8 00000000 */  nop
/* 703EC 8006F7EC 00000000 */  nop

glabel func_8006F7F0
/* 703F0 8006F7F0 3C0E8009 */  lui        $t6, %hi(D_80093680)
/* 703F4 8006F7F4 8DCE3680 */  lw         $t6, %lo(D_80093680)($t6)
/* 703F8 8006F7F8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 703FC 8006F7FC AFBF001C */  sw         $ra, 0x1C($sp)
/* 70400 8006F800 15C0005B */  bnez       $t6, .L8006F970
/* 70404 8006F804 AFA40030 */   sw        $a0, 0x30($sp)
/* 70408 8006F808 0C01DB48 */  jal        func_80076D20
/* 7040C 8006F80C 00000000 */   nop
/* 70410 8006F810 3C018009 */  lui        $at, %hi(D_8009369C)
/* 70414 8006F814 3C04801B */  lui        $a0, %hi(D_801AC060)
/* 70418 8006F818 3C05801B */  lui        $a1, %hi(D_801AC078)
/* 7041C 8006F81C AC20369C */  sw         $zero, %lo(D_8009369C)($at)
/* 70420 8006F820 24A5C078 */  addiu      $a1, $a1, %lo(D_801AC078)
/* 70424 8006F824 2484C060 */  addiu      $a0, $a0, %lo(D_801AC060)
/* 70428 8006F828 0C01978C */  jal        func_80065E30
/* 7042C 8006F82C 24060005 */   addiu     $a2, $zero, 0x5
/* 70430 8006F830 3C01801B */  lui        $at, %hi(D_801AC090)
/* 70434 8006F834 240F000D */  addiu      $t7, $zero, 0xD
/* 70438 8006F838 A42FC090 */  sh         $t7, %lo(D_801AC090)($at)
/* 7043C 8006F83C A020C092 */  sb         $zero, %lo(D_801AC092)($at)
/* 70440 8006F840 AC20C094 */  sw         $zero, %lo(D_801AC094)($at)
/* 70444 8006F844 3C01801B */  lui        $at, %hi(D_801AC0A8)
/* 70448 8006F848 2418000E */  addiu      $t8, $zero, 0xE
/* 7044C 8006F84C 3C05801B */  lui        $a1, %hi(D_801AC060)
/* 70450 8006F850 3C06801B */  lui        $a2, %hi(D_801AC090)
/* 70454 8006F854 A438C0A8 */  sh         $t8, %lo(D_801AC0A8)($at)
/* 70458 8006F858 A020C0AA */  sb         $zero, %lo(D_801AC0AA)($at)
/* 7045C 8006F85C AC20C0AC */  sw         $zero, %lo(D_801AC0AC)($at)
/* 70460 8006F860 24C6C090 */  addiu      $a2, $a2, %lo(D_801AC090)
/* 70464 8006F864 24A5C060 */  addiu      $a1, $a1, %lo(D_801AC060)
/* 70468 8006F868 0C01AB80 */  jal        func_8006AE00
/* 7046C 8006F86C 24040007 */   addiu     $a0, $zero, 0x7
/* 70470 8006F870 3C05801B */  lui        $a1, %hi(D_801AC060)
/* 70474 8006F874 3C06801B */  lui        $a2, %hi(D_801AC0A8)
/* 70478 8006F878 24C6C0A8 */  addiu      $a2, $a2, %lo(D_801AC0A8)
/* 7047C 8006F87C 24A5C060 */  addiu      $a1, $a1, %lo(D_801AC060)
/* 70480 8006F880 0C01AB80 */  jal        func_8006AE00
/* 70484 8006F884 24040003 */   addiu     $a0, $zero, 0x3
/* 70488 8006F888 2419FFFF */  addiu      $t9, $zero, -0x1
/* 7048C 8006F88C AFB90028 */  sw         $t9, 0x28($sp)
/* 70490 8006F890 0C01DFE8 */  jal        osGetThreadPri
/* 70494 8006F894 00002025 */   or        $a0, $zero, $zero
/* 70498 8006F898 AFA20024 */  sw         $v0, 0x24($sp)
/* 7049C 8006F89C 8FA80024 */  lw         $t0, 0x24($sp)
/* 704A0 8006F8A0 8FA90030 */  lw         $t1, 0x30($sp)
/* 704A4 8006F8A4 0109082A */  slt        $at, $t0, $t1
/* 704A8 8006F8A8 10200005 */  beqz       $at, .L8006F8C0
/* 704AC 8006F8AC 00000000 */   nop
/* 704B0 8006F8B0 AFA80028 */  sw         $t0, 0x28($sp)
/* 704B4 8006F8B4 00002025 */  or         $a0, $zero, $zero
/* 704B8 8006F8B8 0C01C148 */  jal        func_80070520
/* 704BC 8006F8BC 01202825 */   or        $a1, $t1, $zero
.L8006F8C0:
/* 704C0 8006F8C0 0C01C218 */  jal        __osDisableInt
/* 704C4 8006F8C4 00000000 */   nop
/* 704C8 8006F8C8 3C018009 */  lui        $at, %hi(D_80093680)
/* 704CC 8006F8CC 3C0C801B */  lui        $t4, %hi(D_801AC060)
/* 704D0 8006F8D0 3C0B801B */  lui        $t3, %hi(D_801AAEB0)
/* 704D4 8006F8D4 258CC060 */  addiu      $t4, $t4, %lo(D_801AC060)
/* 704D8 8006F8D8 240A0001 */  addiu      $t2, $zero, 0x1
/* 704DC 8006F8DC 256BAEB0 */  addiu      $t3, $t3, %lo(D_801AAEB0)
/* 704E0 8006F8E0 AC2A3680 */  sw         $t2, %lo(D_80093680)($at)
/* 704E4 8006F8E4 AC2B3684 */  sw         $t3, %lo(D_80093684)($at)
/* 704E8 8006F8E8 AC2C3688 */  sw         $t4, %lo(D_80093688)($at)
/* 704EC 8006F8EC AC2C368C */  sw         $t4, %lo(D_8009368C)($at)
/* 704F0 8006F8F0 3C0D801B */  lui        $t5, %hi(D_801AB060)
/* 704F4 8006F8F4 8FAF0030 */  lw         $t7, 0x30($sp)
/* 704F8 8006F8F8 3C018009 */  lui        $at, %hi(D_80093690)
/* 704FC 8006F8FC 25ADB060 */  addiu      $t5, $t5, %lo(D_801AB060)
/* 70500 8006F900 25AE1000 */  addiu      $t6, $t5, 0x1000
/* 70504 8006F904 3C068007 */  lui        $a2, %hi(func_8006F980)
/* 70508 8006F908 3C078009 */  lui        $a3, %hi(D_80093680)
/* 7050C 8006F90C AFA2002C */  sw         $v0, 0x2C($sp)
/* 70510 8006F910 AC203690 */  sw         $zero, %lo(D_80093690)($at)
/* 70514 8006F914 AC203694 */  sw         $zero, %lo(D_80093694)($at)
/* 70518 8006F918 AC203698 */  sw         $zero, %lo(D_80093698)($at)
/* 7051C 8006F91C 24E73680 */  addiu      $a3, $a3, %lo(D_80093680)
/* 70520 8006F920 24C6F980 */  addiu      $a2, $a2, %lo(func_8006F980)
/* 70524 8006F924 AFAE0010 */  sw         $t6, 0x10($sp)
/* 70528 8006F928 01602025 */  or         $a0, $t3, $zero
/* 7052C 8006F92C 00002825 */  or         $a1, $zero, $zero
/* 70530 8006F930 0C019EEC */  jal        osCreateThread
/* 70534 8006F934 AFAF0014 */   sw        $t7, 0x14($sp)
/* 70538 8006F938 0C01DC48 */  jal        __osViInit
/* 7053C 8006F93C 00000000 */   nop
/* 70540 8006F940 3C04801B */  lui        $a0, %hi(D_801AAEB0)
/* 70544 8006F944 0C019F40 */  jal        func_80067D00
/* 70548 8006F948 2484AEB0 */   addiu     $a0, $a0, %lo(D_801AAEB0)
/* 7054C 8006F94C 0C01C220 */  jal        __osRestoreInt
/* 70550 8006F950 8FA4002C */   lw        $a0, 0x2C($sp)
/* 70554 8006F954 8FB80028 */  lw         $t8, 0x28($sp)
/* 70558 8006F958 2401FFFF */  addiu      $at, $zero, -0x1
/* 7055C 8006F95C 13010004 */  beq        $t8, $at, .L8006F970
/* 70560 8006F960 00000000 */   nop
/* 70564 8006F964 00002025 */  or         $a0, $zero, $zero
/* 70568 8006F968 0C01C148 */  jal        func_80070520
/* 7056C 8006F96C 03002825 */   or        $a1, $t8, $zero
.L8006F970:
/* 70570 8006F970 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70574 8006F974 27BD0030 */  addiu      $sp, $sp, 0x30
/* 70578 8006F978 03E00008 */  jr         $ra
/* 7057C 8006F97C 00000000 */   nop

glabel func_8006F980
/* 70580 8006F980 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 70584 8006F984 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70588 8006F988 AFA40038 */  sw         $a0, 0x38($sp)
/* 7058C 8006F98C AFB00018 */  sw         $s0, 0x18($sp)
/* 70590 8006F990 AFA0002C */  sw         $zero, 0x2C($sp)
/* 70594 8006F994 0C01DFF0 */  jal        func_80077FC0
/* 70598 8006F998 AFA00028 */   sw        $zero, 0x28($sp)
/* 7059C 8006F99C AFA20034 */  sw         $v0, 0x34($sp)
/* 705A0 8006F9A0 8FAE0034 */  lw         $t6, 0x34($sp)
/* 705A4 8006F9A4 3C01801B */  lui        $at, %hi(D_801AC0C0)
/* 705A8 8006F9A8 95CF0002 */  lhu        $t7, 0x2($t6)
/* 705AC 8006F9AC 15E00004 */  bnez       $t7, .L8006F9C0
/* 705B0 8006F9B0 A42FC0C0 */   sh        $t7, %lo(D_801AC0C0)($at)
/* 705B4 8006F9B4 24180001 */  addiu      $t8, $zero, 0x1
/* 705B8 8006F9B8 3C01801B */  lui        $at, %hi(D_801AC0C0)
/* 705BC 8006F9BC A438C0C0 */  sh         $t8, %lo(D_801AC0C0)($at)
.L8006F9C0:
/* 705C0 8006F9C0 8FB90038 */  lw         $t9, 0x38($sp)
/* 705C4 8006F9C4 AFB90030 */  sw         $t9, 0x30($sp)
.L8006F9C8:
/* 705C8 8006F9C8 8FA80030 */  lw         $t0, 0x30($sp)
/* 705CC 8006F9CC 27A5002C */  addiu      $a1, $sp, 0x2C
/* 705D0 8006F9D0 24060001 */  addiu      $a2, $zero, 0x1
/* 705D4 8006F9D4 0C019824 */  jal        func_80066090
/* 705D8 8006F9D8 8D04000C */   lw        $a0, 0xC($t0)
/* 705DC 8006F9DC 8FA9002C */  lw         $t1, 0x2C($sp)
/* 705E0 8006F9E0 2401000D */  addiu      $at, $zero, 0xD
/* 705E4 8006F9E4 95300000 */  lhu        $s0, 0x0($t1)
/* 705E8 8006F9E8 12010005 */  beq        $s0, $at, .L8006FA00
/* 705EC 8006F9EC 2401000E */   addiu     $at, $zero, 0xE
/* 705F0 8006F9F0 12010047 */  beq        $s0, $at, .L8006FB10
/* 705F4 8006F9F4 00000000 */   nop
/* 705F8 8006F9F8 1000FFF3 */  b          .L8006F9C8
/* 705FC 8006F9FC 00000000 */   nop
.L8006FA00:
/* 70600 8006FA00 0C01DFF4 */  jal        func_80077FD0
/* 70604 8006FA04 00000000 */   nop
/* 70608 8006FA08 3C0A801B */  lui        $t2, %hi(D_801AC0C0)
/* 7060C 8006FA0C 954AC0C0 */  lhu        $t2, %lo(D_801AC0C0)($t2)
/* 70610 8006FA10 3C01801B */  lui        $at, %hi(D_801AC0C0)
/* 70614 8006FA14 254BFFFF */  addiu      $t3, $t2, -0x1
/* 70618 8006FA18 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 7061C 8006FA1C 15800010 */  bnez       $t4, .L8006FA60
/* 70620 8006FA20 A42BC0C0 */   sh        $t3, %lo(D_801AC0C0)($at)
/* 70624 8006FA24 0C01DFF0 */  jal        func_80077FC0
/* 70628 8006FA28 00000000 */   nop
/* 7062C 8006FA2C AFA20034 */  sw         $v0, 0x34($sp)
/* 70630 8006FA30 8FAD0034 */  lw         $t5, 0x34($sp)
/* 70634 8006FA34 8DAE0010 */  lw         $t6, 0x10($t5)
/* 70638 8006FA38 11C00005 */  beqz       $t6, .L8006FA50
/* 7063C 8006FA3C 00000000 */   nop
/* 70640 8006FA40 01C02025 */  or         $a0, $t6, $zero
/* 70644 8006FA44 8DA50014 */  lw         $a1, 0x14($t5)
/* 70648 8006FA48 0C01A1B4 */  jal        func_800686D0
/* 7064C 8006FA4C 00003025 */   or        $a2, $zero, $zero
.L8006FA50:
/* 70650 8006FA50 8FAF0034 */  lw         $t7, 0x34($sp)
/* 70654 8006FA54 3C01801B */  lui        $at, %hi(D_801AC0C0)
/* 70658 8006FA58 95F80002 */  lhu        $t8, 0x2($t7)
/* 7065C 8006FA5C A438C0C0 */  sh         $t8, %lo(D_801AC0C0)($at)
.L8006FA60:
/* 70660 8006FA60 3C19801B */  lui        $t9, %hi(D_801AD33C)
/* 70664 8006FA64 8F39D33C */  lw         $t9, %lo(D_801AD33C)($t9)
/* 70668 8006FA68 8FA90028 */  lw         $t1, 0x28($sp)
/* 7066C 8006FA6C 3C01801B */  lui        $at, %hi(D_801AD33C)
/* 70670 8006FA70 27280001 */  addiu      $t0, $t9, 0x1
/* 70674 8006FA74 1120000C */  beqz       $t1, .L8006FAA8
/* 70678 8006FA78 AC28D33C */   sw        $t0, %lo(D_801AD33C)($at)
/* 7067C 8006FA7C 0C01DB44 */  jal        func_80076D10
/* 70680 8006FA80 00000000 */   nop
/* 70684 8006FA84 AFA20024 */  sw         $v0, 0x24($sp)
/* 70688 8006FA88 8FAA0024 */  lw         $t2, 0x24($sp)
/* 7068C 8006FA8C 240C0000 */  addiu      $t4, $zero, 0x0
/* 70690 8006FA90 3C01801B */  lui        $at, %hi(D_801AD330)
/* 70694 8006FA94 AC2CD330 */  sw         $t4, %lo(D_801AD330)($at)
/* 70698 8006FA98 3C01801B */  lui        $at, %hi(D_801AD334)
/* 7069C 8006FA9C 01406825 */  or         $t5, $t2, $zero
/* 706A0 8006FAA0 AC2DD334 */  sw         $t5, %lo(D_801AD334)($at)
/* 706A4 8006FAA4 AFA00028 */  sw         $zero, 0x28($sp)
.L8006FAA8:
/* 706A8 8006FAA8 3C0B801B */  lui        $t3, %hi(D_801AD338)
/* 706AC 8006FAAC 8D6BD338 */  lw         $t3, %lo(D_801AD338)($t3)
/* 706B0 8006FAB0 0C01DB44 */  jal        func_80076D10
/* 706B4 8006FAB4 AFAB0024 */   sw        $t3, 0x24($sp)
/* 706B8 8006FAB8 3C01801B */  lui        $at, %hi(D_801AD338)
/* 706BC 8006FABC AC22D338 */  sw         $v0, %lo(D_801AD338)($at)
/* 706C0 8006FAC0 3C0E801B */  lui        $t6, %hi(D_801AD338)
/* 706C4 8006FAC4 8DCED338 */  lw         $t6, %lo(D_801AD338)($t6)
/* 706C8 8006FAC8 8FAF0024 */  lw         $t7, 0x24($sp)
/* 706CC 8006FACC 3C0B801B */  lui        $t3, %hi(D_801AD334)
/* 706D0 8006FAD0 8D6BD334 */  lw         $t3, %lo(D_801AD334)($t3)
/* 706D4 8006FAD4 01CFC023 */  subu       $t8, $t6, $t7
/* 706D8 8006FAD8 03004825 */  or         $t1, $t8, $zero
/* 706DC 8006FADC 3C0A801B */  lui        $t2, %hi(D_801AD330)
/* 706E0 8006FAE0 012B6821 */  addu       $t5, $t1, $t3
/* 706E4 8006FAE4 8D4AD330 */  lw         $t2, %lo(D_801AD330)($t2)
/* 706E8 8006FAE8 24080000 */  addiu      $t0, $zero, 0x0
/* 706EC 8006FAEC 01AB082B */  sltu       $at, $t5, $t3
/* 706F0 8006FAF0 00286021 */  addu       $t4, $at, $t0
/* 706F4 8006FAF4 3C01801B */  lui        $at, %hi(D_801AD330)
/* 706F8 8006FAF8 018A6021 */  addu       $t4, $t4, $t2
/* 706FC 8006FAFC AC2CD330 */  sw         $t4, %lo(D_801AD330)($at)
/* 70700 8006FB00 3C01801B */  lui        $at, %hi(D_801AD334)
/* 70704 8006FB04 AFB80024 */  sw         $t8, 0x24($sp)
/* 70708 8006FB08 1000FFAF */  b          .L8006F9C8
/* 7070C 8006FB0C AC2DD334 */   sw        $t5, %lo(D_801AD334)($at)
.L8006FB10:
/* 70710 8006FB10 0C01DB6B */  jal        __osTimerInterrupt
/* 70714 8006FB14 00000000 */   nop
/* 70718 8006FB18 1000FFAB */  b          .L8006F9C8
/* 7071C 8006FB1C 00000000 */   nop
/* 70720 8006FB20 00000000 */  nop
/* 70724 8006FB24 00000000 */  nop
/* 70728 8006FB28 00000000 */  nop
/* 7072C 8006FB2C 00000000 */  nop
/* 70730 8006FB30 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70734 8006FB34 8FB00018 */  lw         $s0, 0x18($sp)
/* 70738 8006FB38 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7073C 8006FB3C 03E00008 */  jr         $ra
/* 70740 8006FB40 00000000 */   nop
/* 70744 8006FB44 00000000 */  nop
/* 70748 8006FB48 00000000 */  nop
/* 7074C 8006FB4C 00000000 */  nop

glabel func_8006FB50
/* 70750 8006FB50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 70754 8006FB54 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70758 8006FB58 AFA40028 */  sw         $a0, 0x28($sp)
/* 7075C 8006FB5C 0C01C218 */  jal        __osDisableInt
/* 70760 8006FB60 AFB00018 */   sw        $s0, 0x18($sp)
/* 70764 8006FB64 3C0F8009 */  lui        $t7, %hi(D_80094C54)
/* 70768 8006FB68 8DEF4C54 */  lw         $t7, %lo(D_80094C54)($t7)
/* 7076C 8006FB6C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 70770 8006FB70 3C198009 */  lui        $t9, %hi(D_80094C54)
/* 70774 8006FB74 24180001 */  addiu      $t8, $zero, 0x1
/* 70778 8006FB78 ADEE0008 */  sw         $t6, 0x8($t7)
/* 7077C 8006FB7C 8F394C54 */  lw         $t9, %lo(D_80094C54)($t9)
/* 70780 8006FB80 3C088009 */  lui        $t0, %hi(D_80094C54)
/* 70784 8006FB84 00408025 */  or         $s0, $v0, $zero
/* 70788 8006FB88 A7380000 */  sh         $t8, 0x0($t9)
/* 7078C 8006FB8C 8D084C54 */  lw         $t0, %lo(D_80094C54)($t0)
/* 70790 8006FB90 02002025 */  or         $a0, $s0, $zero
/* 70794 8006FB94 8D090008 */  lw         $t1, 0x8($t0)
/* 70798 8006FB98 8D2A0004 */  lw         $t2, 0x4($t1)
/* 7079C 8006FB9C 0C01C220 */  jal        __osRestoreInt
/* 707A0 8006FBA0 AD0A000C */   sw        $t2, 0xC($t0)
/* 707A4 8006FBA4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 707A8 8006FBA8 8FB00018 */  lw         $s0, 0x18($sp)
/* 707AC 8006FBAC 27BD0028 */  addiu      $sp, $sp, 0x28
/* 707B0 8006FBB0 03E00008 */  jr         $ra
/* 707B4 8006FBB4 00000000 */   nop
/* 707B8 8006FBB8 00000000 */  nop
/* 707BC 8006FBBC 00000000 */  nop

glabel func_8006FBC0
/* 707C0 8006FBC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 707C4 8006FBC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 707C8 8006FBC8 AFA40028 */  sw         $a0, 0x28($sp)
/* 707CC 8006FBCC AFA5002C */  sw         $a1, 0x2C($sp)
/* 707D0 8006FBD0 AFA60030 */  sw         $a2, 0x30($sp)
/* 707D4 8006FBD4 0C01C218 */  jal        __osDisableInt
/* 707D8 8006FBD8 AFB00018 */   sw        $s0, 0x18($sp)
/* 707DC 8006FBDC 3C0F8009 */  lui        $t7, %hi(D_80094C54)
/* 707E0 8006FBE0 8DEF4C54 */  lw         $t7, %lo(D_80094C54)($t7)
/* 707E4 8006FBE4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 707E8 8006FBE8 3C198009 */  lui        $t9, %hi(D_80094C54)
/* 707EC 8006FBEC 3C098009 */  lui        $t1, %hi(D_80094C54)
/* 707F0 8006FBF0 ADEE0010 */  sw         $t6, 0x10($t7)
/* 707F4 8006FBF4 8F394C54 */  lw         $t9, %lo(D_80094C54)($t9)
/* 707F8 8006FBF8 8FB8002C */  lw         $t8, 0x2C($sp)
/* 707FC 8006FBFC 00408025 */  or         $s0, $v0, $zero
/* 70800 8006FC00 02002025 */  or         $a0, $s0, $zero
/* 70804 8006FC04 AF380014 */  sw         $t8, 0x14($t9)
/* 70808 8006FC08 8D294C54 */  lw         $t1, %lo(D_80094C54)($t1)
/* 7080C 8006FC0C 8FA80030 */  lw         $t0, 0x30($sp)
/* 70810 8006FC10 0C01C220 */  jal        __osRestoreInt
/* 70814 8006FC14 A5280002 */   sh        $t0, 0x2($t1)
/* 70818 8006FC18 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7081C 8006FC1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 70820 8006FC20 27BD0028 */  addiu      $sp, $sp, 0x28
/* 70824 8006FC24 03E00008 */  jr         $ra
/* 70828 8006FC28 00000000 */   nop
/* 7082C 8006FC2C 00000000 */  nop

glabel func_8006FC30
/* 70830 8006FC30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70834 8006FC34 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70838 8006FC38 0C01E0D4 */  jal        func_80078350
/* 7083C 8006FC3C AFA40020 */   sw        $a0, 0x20($sp)
/* 70840 8006FC40 AFA2001C */  sw         $v0, 0x1C($sp)
/* 70844 8006FC44 8FAE001C */  lw         $t6, 0x1C($sp)
/* 70848 8006FC48 31CF0100 */  andi       $t7, $t6, 0x100
/* 7084C 8006FC4C 11E00004 */  beqz       $t7, .L8006FC60
/* 70850 8006FC50 00000000 */   nop
/* 70854 8006FC54 24180001 */  addiu      $t8, $zero, 0x1
/* 70858 8006FC58 10000002 */  b          .L8006FC64
/* 7085C 8006FC5C AFB80018 */   sw        $t8, 0x18($sp)
.L8006FC60:
/* 70860 8006FC60 AFA00018 */  sw         $zero, 0x18($sp)
.L8006FC64:
/* 70864 8006FC64 8FB9001C */  lw         $t9, 0x1C($sp)
/* 70868 8006FC68 33280080 */  andi       $t0, $t9, 0x80
/* 7086C 8006FC6C 1100000B */  beqz       $t0, .L8006FC9C
/* 70870 8006FC70 00000000 */   nop
/* 70874 8006FC74 8FA90020 */  lw         $t1, 0x20($sp)
/* 70878 8006FC78 8FAB0018 */  lw         $t3, 0x18($sp)
/* 7087C 8006FC7C 2401FFFD */  addiu      $at, $zero, -0x3
/* 70880 8006FC80 8D2A0004 */  lw         $t2, 0x4($t1)
/* 70884 8006FC84 014B6025 */  or         $t4, $t2, $t3
/* 70888 8006FC88 AD2C0004 */  sw         $t4, 0x4($t1)
/* 7088C 8006FC8C 8FAD0020 */  lw         $t5, 0x20($sp)
/* 70890 8006FC90 8DAE0004 */  lw         $t6, 0x4($t5)
/* 70894 8006FC94 01C17824 */  and        $t7, $t6, $at
/* 70898 8006FC98 ADAF0004 */  sw         $t7, 0x4($t5)
.L8006FC9C:
/* 7089C 8006FC9C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 708A0 8006FCA0 8FA20018 */  lw         $v0, 0x18($sp)
/* 708A4 8006FCA4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 708A8 8006FCA8 03E00008 */  jr         $ra
/* 708AC 8006FCAC 00000000 */   nop

glabel func_8006FCB0
/* 708B0 8006FCB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 708B4 8006FCB4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 708B8 8006FCB8 0C01C218 */  jal        __osDisableInt
/* 708BC 8006FCBC AFB00018 */   sw        $s0, 0x18($sp)
/* 708C0 8006FCC0 3C0E8009 */  lui        $t6, %hi(D_80094C50)
/* 708C4 8006FCC4 8DCE4C50 */  lw         $t6, %lo(D_80094C50)($t6)
/* 708C8 8006FCC8 00408025 */  or         $s0, $v0, $zero
/* 708CC 8006FCCC 02002025 */  or         $a0, $s0, $zero
/* 708D0 8006FCD0 8DCF0004 */  lw         $t7, 0x4($t6)
/* 708D4 8006FCD4 0C01C220 */  jal        __osRestoreInt
/* 708D8 8006FCD8 AFAF0020 */   sw        $t7, 0x20($sp)
/* 708DC 8006FCDC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 708E0 8006FCE0 8FA20020 */  lw         $v0, 0x20($sp)
/* 708E4 8006FCE4 8FB00018 */  lw         $s0, 0x18($sp)
/* 708E8 8006FCE8 03E00008 */  jr         $ra
/* 708EC 8006FCEC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006FCF0
/* 708F0 8006FCF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 708F4 8006FCF4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 708F8 8006FCF8 0C01C218 */  jal        __osDisableInt
/* 708FC 8006FCFC AFB00018 */   sw        $s0, 0x18($sp)
/* 70900 8006FD00 3C0E8009 */  lui        $t6, %hi(D_80094C54)
/* 70904 8006FD04 8DCE4C54 */  lw         $t6, %lo(D_80094C54)($t6)
/* 70908 8006FD08 00408025 */  or         $s0, $v0, $zero
/* 7090C 8006FD0C 02002025 */  or         $a0, $s0, $zero
/* 70910 8006FD10 8DCF0004 */  lw         $t7, 0x4($t6)
/* 70914 8006FD14 0C01C220 */  jal        __osRestoreInt
/* 70918 8006FD18 AFAF0020 */   sw        $t7, 0x20($sp)
/* 7091C 8006FD1C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70920 8006FD20 8FA20020 */  lw         $v0, 0x20($sp)
/* 70924 8006FD24 8FB00018 */  lw         $s0, 0x18($sp)
/* 70928 8006FD28 03E00008 */  jr         $ra
/* 7092C 8006FD2C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006FD30
/* 70930 8006FD30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 70934 8006FD34 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70938 8006FD38 AFA40028 */  sw         $a0, 0x28($sp)
/* 7093C 8006FD3C AFA5002C */  sw         $a1, 0x2C($sp)
/* 70940 8006FD40 AFA60030 */  sw         $a2, 0x30($sp)
/* 70944 8006FD44 AFB10018 */  sw         $s1, 0x18($sp)
/* 70948 8006FD48 0C01C218 */  jal        __osDisableInt
/* 7094C 8006FD4C AFB00014 */   sw        $s0, 0x14($sp)
/* 70950 8006FD50 8FAE0028 */  lw         $t6, 0x28($sp)
/* 70954 8006FD54 00408025 */  or         $s0, $v0, $zero
/* 70958 8006FD58 8DCF0008 */  lw         $t7, 0x8($t6)
/* 7095C 8006FD5C 8DD80010 */  lw         $t8, 0x10($t6)
/* 70960 8006FD60 01F8082A */  slt        $at, $t7, $t8
/* 70964 8006FD64 14200018 */  bnez       $at, .L8006FDC8
/* 70968 8006FD68 00000000 */   nop
.L8006FD6C:
/* 7096C 8006FD6C 8FB90030 */  lw         $t9, 0x30($sp)
/* 70970 8006FD70 24010001 */  addiu      $at, $zero, 0x1
/* 70974 8006FD74 1721000A */  bne        $t9, $at, .L8006FDA0
/* 70978 8006FD78 00000000 */   nop
/* 7097C 8006FD7C 3C098009 */  lui        $t1, %hi(D_80094880)
/* 70980 8006FD80 8D294880 */  lw         $t1, %lo(D_80094880)($t1)
/* 70984 8006FD84 24080008 */  addiu      $t0, $zero, 0x8
/* 70988 8006FD88 A5280010 */  sh         $t0, 0x10($t1)
/* 7098C 8006FD8C 8FA40028 */  lw         $a0, 0x28($sp)
/* 70990 8006FD90 0C01C3B3 */  jal        func_80070ECC
/* 70994 8006FD94 24840004 */   addiu     $a0, $a0, 0x4
/* 70998 8006FD98 10000005 */  b          .L8006FDB0
/* 7099C 8006FD9C 00000000 */   nop
.L8006FDA0:
/* 709A0 8006FDA0 0C01C220 */  jal        __osRestoreInt
/* 709A4 8006FDA4 02002025 */   or        $a0, $s0, $zero
/* 709A8 8006FDA8 10000030 */  b          .L8006FE6C
/* 709AC 8006FDAC 2402FFFF */   addiu     $v0, $zero, -0x1
.L8006FDB0:
/* 709B0 8006FDB0 8FAA0028 */  lw         $t2, 0x28($sp)
/* 709B4 8006FDB4 8D4B0008 */  lw         $t3, 0x8($t2)
/* 709B8 8006FDB8 8D4C0010 */  lw         $t4, 0x10($t2)
/* 709BC 8006FDBC 016C082A */  slt        $at, $t3, $t4
/* 709C0 8006FDC0 1020FFEA */  beqz       $at, .L8006FD6C
/* 709C4 8006FDC4 00000000 */   nop
.L8006FDC8:
/* 709C8 8006FDC8 8FAD0028 */  lw         $t5, 0x28($sp)
/* 709CC 8006FDCC 8DAE000C */  lw         $t6, 0xC($t5)
/* 709D0 8006FDD0 8DAF0010 */  lw         $t7, 0x10($t5)
/* 709D4 8006FDD4 01CFC021 */  addu       $t8, $t6, $t7
/* 709D8 8006FDD8 2719FFFF */  addiu      $t9, $t8, -0x1
/* 709DC 8006FDDC 032F001A */  div        $zero, $t9, $t7
/* 709E0 8006FDE0 00004010 */  mfhi       $t0
/* 709E4 8006FDE4 ADA8000C */  sw         $t0, 0xC($t5)
/* 709E8 8006FDE8 8FAA0028 */  lw         $t2, 0x28($sp)
/* 709EC 8006FDEC 8FA9002C */  lw         $t1, 0x2C($sp)
/* 709F0 8006FDF0 15E00002 */  bnez       $t7, .L8006FDFC
/* 709F4 8006FDF4 00000000 */   nop
/* 709F8 8006FDF8 0007000D */  break      7
.L8006FDFC:
/* 709FC 8006FDFC 2401FFFF */  addiu      $at, $zero, -0x1
/* 70A00 8006FE00 15E10004 */  bne        $t7, $at, .L8006FE14
/* 70A04 8006FE04 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 70A08 8006FE08 17210002 */  bne        $t9, $at, .L8006FE14
/* 70A0C 8006FE0C 00000000 */   nop
/* 70A10 8006FE10 0006000D */  break      6
.L8006FE14:
/* 70A14 8006FE14 8D4C000C */  lw         $t4, 0xC($t2)
/* 70A18 8006FE18 8D4B0014 */  lw         $t3, 0x14($t2)
/* 70A1C 8006FE1C 000C7080 */  sll        $t6, $t4, 2
/* 70A20 8006FE20 016EC021 */  addu       $t8, $t3, $t6
/* 70A24 8006FE24 AF090000 */  sw         $t1, 0x0($t8)
/* 70A28 8006FE28 8FB90028 */  lw         $t9, 0x28($sp)
/* 70A2C 8006FE2C 8F2F0008 */  lw         $t7, 0x8($t9)
/* 70A30 8006FE30 25E80001 */  addiu      $t0, $t7, 0x1
/* 70A34 8006FE34 AF280008 */  sw         $t0, 0x8($t9)
/* 70A38 8006FE38 8FAD0028 */  lw         $t5, 0x28($sp)
/* 70A3C 8006FE3C 8DAA0000 */  lw         $t2, 0x0($t5)
/* 70A40 8006FE40 8D4C0000 */  lw         $t4, 0x0($t2)
/* 70A44 8006FE44 11800006 */  beqz       $t4, .L8006FE60
/* 70A48 8006FE48 00000000 */   nop
/* 70A4C 8006FE4C 0C01C405 */  jal        func_80071014
/* 70A50 8006FE50 01A02025 */   or        $a0, $t5, $zero
/* 70A54 8006FE54 00408825 */  or         $s1, $v0, $zero
/* 70A58 8006FE58 0C019F40 */  jal        func_80067D00
/* 70A5C 8006FE5C 02202025 */   or        $a0, $s1, $zero
.L8006FE60:
/* 70A60 8006FE60 0C01C220 */  jal        __osRestoreInt
/* 70A64 8006FE64 02002025 */   or        $a0, $s0, $zero
/* 70A68 8006FE68 00001025 */  or         $v0, $zero, $zero
.L8006FE6C:
/* 70A6C 8006FE6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70A70 8006FE70 8FB00014 */  lw         $s0, 0x14($sp)
/* 70A74 8006FE74 8FB10018 */  lw         $s1, 0x18($sp)
/* 70A78 8006FE78 03E00008 */  jr         $ra
/* 70A7C 8006FE7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8006FE80
/* 70A80 8006FE80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70A84 8006FE84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70A88 8006FE88 0C01C218 */  jal        __osDisableInt
/* 70A8C 8006FE8C AFA40020 */   sw        $a0, 0x20($sp)
/* 70A90 8006FE90 3C0F8009 */  lui        $t7, %hi(D_80094C54)
/* 70A94 8006FE94 8DEF4C54 */  lw         $t7, %lo(D_80094C54)($t7)
/* 70A98 8006FE98 8FAE0020 */  lw         $t6, 0x20($sp)
/* 70A9C 8006FE9C AFA2001C */  sw         $v0, 0x1C($sp)
/* 70AA0 8006FEA0 3C188009 */  lui        $t8, %hi(D_80094C54)
/* 70AA4 8006FEA4 ADEE0004 */  sw         $t6, 0x4($t7)
/* 70AA8 8006FEA8 8F184C54 */  lw         $t8, %lo(D_80094C54)($t8)
/* 70AAC 8006FEAC 97190000 */  lhu        $t9, 0x0($t8)
/* 70AB0 8006FEB0 37280010 */  ori        $t0, $t9, 0x10
/* 70AB4 8006FEB4 A7080000 */  sh         $t0, 0x0($t8)
/* 70AB8 8006FEB8 0C01C220 */  jal        __osRestoreInt
/* 70ABC 8006FEBC 8FA4001C */   lw        $a0, 0x1C($sp)
/* 70AC0 8006FEC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70AC4 8006FEC4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70AC8 8006FEC8 03E00008 */  jr         $ra
/* 70ACC 8006FECC 00000000 */   nop

glabel func_8006FED0
/* 70AD0 8006FED0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70AD4 8006FED4 3C0E801B */  lui        $t6, %hi(D_801AC0D0)
/* 70AD8 8006FED8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70ADC 8006FEDC AFA40020 */  sw         $a0, 0x20($sp)
/* 70AE0 8006FEE0 25CEC0D0 */  addiu      $t6, $t6, %lo(D_801AC0D0)
/* 70AE4 8006FEE4 AFAE001C */  sw         $t6, 0x1C($sp)
/* 70AE8 8006FEE8 01C02825 */  or         $a1, $t6, $zero
/* 70AEC 8006FEEC 8FA40020 */  lw         $a0, 0x20($sp)
/* 70AF0 8006FEF0 0C01E0D8 */  jal        func_80078360
/* 70AF4 8006FEF4 24060040 */   addiu     $a2, $zero, 0x40
/* 70AF8 8006FEF8 8FAF001C */  lw         $t7, 0x1C($sp)
/* 70AFC 8006FEFC 8DF80010 */  lw         $t8, 0x10($t7)
/* 70B00 8006FF00 13000005 */  beqz       $t8, .L8006FF18
/* 70B04 8006FF04 00000000 */   nop
/* 70B08 8006FF08 0C019FAC */  jal        func_80067EB0
/* 70B0C 8006FF0C 03002025 */   or        $a0, $t8, $zero
/* 70B10 8006FF10 8FB9001C */  lw         $t9, 0x1C($sp)
/* 70B14 8006FF14 AF220010 */  sw         $v0, 0x10($t9)
.L8006FF18:
/* 70B18 8006FF18 8FA8001C */  lw         $t0, 0x1C($sp)
/* 70B1C 8006FF1C 8D090018 */  lw         $t1, 0x18($t0)
/* 70B20 8006FF20 11200005 */  beqz       $t1, .L8006FF38
/* 70B24 8006FF24 00000000 */   nop
/* 70B28 8006FF28 0C019FAC */  jal        func_80067EB0
/* 70B2C 8006FF2C 01202025 */   or        $a0, $t1, $zero
/* 70B30 8006FF30 8FAA001C */  lw         $t2, 0x1C($sp)
/* 70B34 8006FF34 AD420018 */  sw         $v0, 0x18($t2)
.L8006FF38:
/* 70B38 8006FF38 8FAB001C */  lw         $t3, 0x1C($sp)
/* 70B3C 8006FF3C 8D6C0020 */  lw         $t4, 0x20($t3)
/* 70B40 8006FF40 11800005 */  beqz       $t4, .L8006FF58
/* 70B44 8006FF44 00000000 */   nop
/* 70B48 8006FF48 0C019FAC */  jal        func_80067EB0
/* 70B4C 8006FF4C 01802025 */   or        $a0, $t4, $zero
/* 70B50 8006FF50 8FAD001C */  lw         $t5, 0x1C($sp)
/* 70B54 8006FF54 ADA20020 */  sw         $v0, 0x20($t5)
.L8006FF58:
/* 70B58 8006FF58 8FAE001C */  lw         $t6, 0x1C($sp)
/* 70B5C 8006FF5C 8DCF0028 */  lw         $t7, 0x28($t6)
/* 70B60 8006FF60 11E00005 */  beqz       $t7, .L8006FF78
/* 70B64 8006FF64 00000000 */   nop
/* 70B68 8006FF68 0C019FAC */  jal        func_80067EB0
/* 70B6C 8006FF6C 01E02025 */   or        $a0, $t7, $zero
/* 70B70 8006FF70 8FB8001C */  lw         $t8, 0x1C($sp)
/* 70B74 8006FF74 AF020028 */  sw         $v0, 0x28($t8)
.L8006FF78:
/* 70B78 8006FF78 8FB9001C */  lw         $t9, 0x1C($sp)
/* 70B7C 8006FF7C 8F28002C */  lw         $t0, 0x2C($t9)
/* 70B80 8006FF80 11000005 */  beqz       $t0, .L8006FF98
/* 70B84 8006FF84 00000000 */   nop
/* 70B88 8006FF88 0C019FAC */  jal        func_80067EB0
/* 70B8C 8006FF8C 01002025 */   or        $a0, $t0, $zero
/* 70B90 8006FF90 8FA9001C */  lw         $t1, 0x1C($sp)
/* 70B94 8006FF94 AD22002C */  sw         $v0, 0x2C($t1)
.L8006FF98:
/* 70B98 8006FF98 8FAA001C */  lw         $t2, 0x1C($sp)
/* 70B9C 8006FF9C 8D4B0030 */  lw         $t3, 0x30($t2)
/* 70BA0 8006FFA0 11600005 */  beqz       $t3, .L8006FFB8
/* 70BA4 8006FFA4 00000000 */   nop
/* 70BA8 8006FFA8 0C019FAC */  jal        func_80067EB0
/* 70BAC 8006FFAC 01602025 */   or        $a0, $t3, $zero
/* 70BB0 8006FFB0 8FAC001C */  lw         $t4, 0x1C($sp)
/* 70BB4 8006FFB4 AD820030 */  sw         $v0, 0x30($t4)
.L8006FFB8:
/* 70BB8 8006FFB8 8FAD001C */  lw         $t5, 0x1C($sp)
/* 70BBC 8006FFBC 8DAE0038 */  lw         $t6, 0x38($t5)
/* 70BC0 8006FFC0 11C00005 */  beqz       $t6, .L8006FFD8
/* 70BC4 8006FFC4 00000000 */   nop
/* 70BC8 8006FFC8 0C019FAC */  jal        func_80067EB0
/* 70BCC 8006FFCC 01C02025 */   or        $a0, $t6, $zero
/* 70BD0 8006FFD0 8FAF001C */  lw         $t7, 0x1C($sp)
/* 70BD4 8006FFD4 ADE20038 */  sw         $v0, 0x38($t7)
.L8006FFD8:
/* 70BD8 8006FFD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70BDC 8006FFDC 8FA2001C */  lw         $v0, 0x1C($sp)
/* 70BE0 8006FFE0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70BE4 8006FFE4 03E00008 */  jr         $ra
/* 70BE8 8006FFE8 00000000 */   nop

glabel func_8006FFEC
/* 70BEC 8006FFEC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 70BF0 8006FFF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70BF4 8006FFF4 AFA40020 */  sw         $a0, 0x20($sp)
/* 70BF8 8006FFF8 0C01BFB4 */  jal        func_8006FED0
/* 70BFC 8006FFFC 8FA40020 */   lw        $a0, 0x20($sp)
/* 70C00 80070000 AFA2001C */  sw         $v0, 0x1C($sp)
/* 70C04 80070004 8FAE001C */  lw         $t6, 0x1C($sp)
/* 70C08 80070008 8DCF0004 */  lw         $t7, 0x4($t6)
/* 70C0C 8007000C 31F80001 */  andi       $t8, $t7, 0x1
/* 70C10 80070010 13000017 */  beqz       $t8, .L80070070
/* 70C14 80070014 00000000 */   nop
/* 70C18 80070018 8DD90038 */  lw         $t9, 0x38($t6)
/* 70C1C 8007001C 2401FFFE */  addiu      $at, $zero, -0x2
/* 70C20 80070020 ADD90018 */  sw         $t9, 0x18($t6)
/* 70C24 80070024 8FA8001C */  lw         $t0, 0x1C($sp)
/* 70C28 80070028 8D09003C */  lw         $t1, 0x3C($t0)
/* 70C2C 8007002C AD09001C */  sw         $t1, 0x1C($t0)
/* 70C30 80070030 8FAA0020 */  lw         $t2, 0x20($sp)
/* 70C34 80070034 8D4B0004 */  lw         $t3, 0x4($t2)
/* 70C38 80070038 01616024 */  and        $t4, $t3, $at
/* 70C3C 8007003C AD4C0004 */  sw         $t4, 0x4($t2)
/* 70C40 80070040 8FAD001C */  lw         $t5, 0x1C($sp)
/* 70C44 80070044 8DAF0004 */  lw         $t7, 0x4($t5)
/* 70C48 80070048 31F80004 */  andi       $t8, $t7, 0x4
/* 70C4C 8007004C 13000008 */  beqz       $t8, .L80070070
/* 70C50 80070050 00000000 */   nop
/* 70C54 80070054 8FB90020 */  lw         $t9, 0x20($sp)
/* 70C58 80070058 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 70C5C 8007005C 8F2E0038 */  lw         $t6, 0x38($t9)
/* 70C60 80070060 25C90BFC */  addiu      $t1, $t6, 0xBFC
/* 70C64 80070064 01214025 */  or         $t0, $t1, $at
/* 70C68 80070068 8D0B0000 */  lw         $t3, %lo(D_A0000000)($t0)
/* 70C6C 8007006C ADAB0010 */  sw         $t3, 0x10($t5)
.L80070070:
/* 70C70 80070070 8FA4001C */  lw         $a0, 0x1C($sp)
/* 70C74 80070074 0C01E19C */  jal        func_80078670
/* 70C78 80070078 24050040 */   addiu     $a1, $zero, 0x40
/* 70C7C 8007007C 0C01E1BC */  jal        func_800786F0
/* 70C80 80070080 24042B00 */   addiu     $a0, $zero, 0x2B00
/* 70C84 80070084 3C040400 */  lui        $a0, (0x4001000 >> 16)
/* 70C88 80070088 0C01E1C0 */  jal        func_80078700
/* 70C8C 8007008C 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 70C90 80070090 2401FFFF */  addiu      $at, $zero, -0x1
/* 70C94 80070094 14410007 */  bne        $v0, $at, .L800700B4
/* 70C98 80070098 00000000 */   nop
.L8007009C:
/* 70C9C 8007009C 3C040400 */  lui        $a0, (0x4001000 >> 16)
/* 70CA0 800700A0 0C01E1C0 */  jal        func_80078700
/* 70CA4 800700A4 34841000 */   ori       $a0, $a0, (0x4001000 & 0xFFFF)
/* 70CA8 800700A8 2401FFFF */  addiu      $at, $zero, -0x1
/* 70CAC 800700AC 1041FFFB */  beq        $v0, $at, .L8007009C
/* 70CB0 800700B0 00000000 */   nop
.L800700B4:
/* 70CB4 800700B4 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 70CB8 800700B8 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 70CBC 800700BC 24040001 */  addiu      $a0, $zero, 0x1
/* 70CC0 800700C0 8FA6001C */  lw         $a2, 0x1C($sp)
/* 70CC4 800700C4 0C01E1D0 */  jal        __osSpRawStartDma
/* 70CC8 800700C8 24070040 */   addiu     $a3, $zero, 0x40
/* 70CCC 800700CC 2401FFFF */  addiu      $at, $zero, -0x1
/* 70CD0 800700D0 1441000A */  bne        $v0, $at, .L800700FC
/* 70CD4 800700D4 00000000 */   nop
.L800700D8:
/* 70CD8 800700D8 3C050400 */  lui        $a1, (0x4000FC0 >> 16)
/* 70CDC 800700DC 34A50FC0 */  ori        $a1, $a1, (0x4000FC0 & 0xFFFF)
/* 70CE0 800700E0 24040001 */  addiu      $a0, $zero, 0x1
/* 70CE4 800700E4 8FA6001C */  lw         $a2, 0x1C($sp)
/* 70CE8 800700E8 0C01E1D0 */  jal        __osSpRawStartDma
/* 70CEC 800700EC 24070040 */   addiu     $a3, $zero, 0x40
/* 70CF0 800700F0 2401FFFF */  addiu      $at, $zero, -0x1
/* 70CF4 800700F4 1041FFF8 */  beq        $v0, $at, .L800700D8
/* 70CF8 800700F8 00000000 */   nop
.L800700FC:
/* 70CFC 800700FC 0C01E1F4 */  jal        func_800787D0
/* 70D00 80070100 00000000 */   nop
/* 70D04 80070104 10400005 */  beqz       $v0, .L8007011C
/* 70D08 80070108 00000000 */   nop
.L8007010C:
/* 70D0C 8007010C 0C01E1F4 */  jal        func_800787D0
/* 70D10 80070110 00000000 */   nop
/* 70D14 80070114 1440FFFD */  bnez       $v0, .L8007010C
/* 70D18 80070118 00000000 */   nop
.L8007011C:
/* 70D1C 8007011C 8FAC001C */  lw         $t4, 0x1C($sp)
/* 70D20 80070120 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 70D24 80070124 34A51000 */  ori        $a1, $a1, (0x4001000 & 0xFFFF)
/* 70D28 80070128 24040001 */  addiu      $a0, $zero, 0x1
/* 70D2C 8007012C 8D860008 */  lw         $a2, 0x8($t4)
/* 70D30 80070130 0C01E1D0 */  jal        __osSpRawStartDma
/* 70D34 80070134 8D87000C */   lw        $a3, 0xC($t4)
/* 70D38 80070138 2401FFFF */  addiu      $at, $zero, -0x1
/* 70D3C 8007013C 1441000B */  bne        $v0, $at, .L8007016C
/* 70D40 80070140 00000000 */   nop
.L80070144:
/* 70D44 80070144 8FAA001C */  lw         $t2, 0x1C($sp)
/* 70D48 80070148 3C050400 */  lui        $a1, (0x4001000 >> 16)
/* 70D4C 8007014C 34A51000 */  ori        $a1, $a1, (0x4001000 & 0xFFFF)
/* 70D50 80070150 24040001 */  addiu      $a0, $zero, 0x1
/* 70D54 80070154 8D460008 */  lw         $a2, 0x8($t2)
/* 70D58 80070158 0C01E1D0 */  jal        __osSpRawStartDma
/* 70D5C 8007015C 8D47000C */   lw        $a3, 0xC($t2)
/* 70D60 80070160 2401FFFF */  addiu      $at, $zero, -0x1
/* 70D64 80070164 1041FFF7 */  beq        $v0, $at, .L80070144
/* 70D68 80070168 00000000 */   nop
.L8007016C:
/* 70D6C 8007016C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70D70 80070170 27BD0020 */  addiu      $sp, $sp, 0x20
/* 70D74 80070174 03E00008 */  jr         $ra
/* 70D78 80070178 00000000 */   nop

glabel func_8007017C
/* 70D7C 8007017C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 70D80 80070180 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70D84 80070184 0C01E1F4 */  jal        func_800787D0
/* 70D88 80070188 AFA40018 */   sw        $a0, 0x18($sp)
/* 70D8C 8007018C 10400005 */  beqz       $v0, .L800701A4
/* 70D90 80070190 00000000 */   nop
.L80070194:
/* 70D94 80070194 0C01E1F4 */  jal        func_800787D0
/* 70D98 80070198 00000000 */   nop
/* 70D9C 8007019C 1440FFFD */  bnez       $v0, .L80070194
/* 70DA0 800701A0 00000000 */   nop
.L800701A4:
/* 70DA4 800701A4 0C01E1BC */  jal        func_800786F0
/* 70DA8 800701A8 24040125 */   addiu     $a0, $zero, 0x125
/* 70DAC 800701AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70DB0 800701B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 70DB4 800701B4 03E00008 */  jr         $ra
/* 70DB8 800701B8 00000000 */   nop
/* 70DBC 800701BC 00000000 */  nop

glabel func_800701C0
/* 70DC0 800701C0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 70DC4 800701C4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70DC8 800701C8 AFA40028 */  sw         $a0, 0x28($sp)
/* 70DCC 800701CC AFA60030 */  sw         $a2, 0x30($sp)
/* 70DD0 800701D0 AFA70034 */  sw         $a3, 0x34($sp)
/* 70DD4 800701D4 0C01E200 */  jal        func_80078800
/* 70DD8 800701D8 AFB00018 */   sw        $s0, 0x18($sp)
/* 70DDC 800701DC 10400003 */  beqz       $v0, .L800701EC
/* 70DE0 800701E0 00000000 */   nop
/* 70DE4 800701E4 1000001B */  b          .L80070254
/* 70DE8 800701E8 2402FFFF */   addiu     $v0, $zero, -0x1
.L800701EC:
/* 70DEC 800701EC 240E0001 */  addiu      $t6, $zero, 0x1
/* 70DF0 800701F0 3C0FA410 */  lui        $t7, %hi(D_A410000C)
/* 70DF4 800701F4 ADEE000C */  sw         $t6, %lo(D_A410000C)($t7)
.L800701F8:
/* 70DF8 800701F8 3C18A410 */  lui        $t8, %hi(D_A410000C)
/* 70DFC 800701FC 8F10000C */  lw         $s0, %lo(D_A410000C)($t8)
/* 70E00 80070200 32190001 */  andi       $t9, $s0, 0x1
/* 70E04 80070204 1720FFFC */  bnez       $t9, .L800701F8
/* 70E08 80070208 00000000 */   nop
/* 70E0C 8007020C 0C019FAC */  jal        func_80067EB0
/* 70E10 80070210 8FA40028 */   lw        $a0, 0x28($sp)
/* 70E14 80070214 3C08A410 */  lui        $t0, %hi(D_A4100000)
/* 70E18 80070218 AD020000 */  sw         $v0, %lo(D_A4100000)($t0)
/* 70E1C 8007021C 0C019FAC */  jal        func_80067EB0
/* 70E20 80070220 8FA40028 */   lw        $a0, 0x28($sp)
/* 70E24 80070224 8FAD0034 */  lw         $t5, 0x34($sp)
/* 70E28 80070228 00405825 */  or         $t3, $v0, $zero
/* 70E2C 8007022C 8FAC0030 */  lw         $t4, 0x30($sp)
/* 70E30 80070230 016D7821 */  addu       $t7, $t3, $t5
/* 70E34 80070234 240A0000 */  addiu      $t2, $zero, 0x0
/* 70E38 80070238 01ED082B */  sltu       $at, $t7, $t5
/* 70E3C 8007023C 002A7021 */  addu       $t6, $at, $t2
/* 70E40 80070240 01E04825 */  or         $t1, $t7, $zero
/* 70E44 80070244 3C18A410 */  lui        $t8, %hi(D_A4100004)
/* 70E48 80070248 AF090004 */  sw         $t1, %lo(D_A4100004)($t8)
/* 70E4C 8007024C 00001025 */  or         $v0, $zero, $zero
/* 70E50 80070250 01CC7021 */  addu       $t6, $t6, $t4
.L80070254:
/* 70E54 80070254 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70E58 80070258 8FB00018 */  lw         $s0, 0x18($sp)
/* 70E5C 8007025C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 70E60 80070260 03E00008 */  jr         $ra
/* 70E64 80070264 00000000 */   nop
/* 70E68 80070268 00000000 */  nop
/* 70E6C 8007026C 00000000 */  nop

glabel func_80070270
/* 70E70 80070270 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 70E74 80070274 AFBF0014 */  sw         $ra, 0x14($sp)
/* 70E78 80070278 0C01E1BC */  jal        func_800786F0
/* 70E7C 8007027C 24040400 */   addiu     $a0, $zero, 0x400
/* 70E80 80070280 8FBF0014 */  lw         $ra, 0x14($sp)
/* 70E84 80070284 27BD0018 */  addiu      $sp, $sp, 0x18
/* 70E88 80070288 03E00008 */  jr         $ra
/* 70E8C 8007028C 00000000 */   nop

glabel func_80070290
/* 70E90 80070290 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 70E94 80070294 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70E98 80070298 240E0001 */  addiu      $t6, $zero, 0x1
/* 70E9C 8007029C 3C01801B */  lui        $at, %hi(D_801AC110)
/* 70EA0 800702A0 AFB00018 */  sw         $s0, 0x18($sp)
/* 70EA4 800702A4 AFA00030 */  sw         $zero, 0x30($sp)
/* 70EA8 800702A8 0C01E210 */  jal        __osGetSR
/* 70EAC 800702AC AC2EC110 */   sw        $t6, %lo(D_801AC110)($at)
/* 70EB0 800702B0 00408025 */  or         $s0, $v0, $zero
/* 70EB4 800702B4 3C012000 */  lui        $at, (0x20000000 >> 16)
/* 70EB8 800702B8 0C01E20C */  jal        func_80078830
/* 70EBC 800702BC 02012025 */   or        $a0, $s0, $at
/* 70EC0 800702C0 3C040100 */  lui        $a0, (0x1000800 >> 16)
/* 70EC4 800702C4 0C01E214 */  jal        func_80078850
/* 70EC8 800702C8 34840800 */   ori       $a0, $a0, (0x1000800 & 0xFFFF)
/* 70ECC 800702CC 3C041FC0 */  lui        $a0, (0x1FC007FC >> 16)
/* 70ED0 800702D0 348407FC */  ori        $a0, $a0, (0x1FC007FC & 0xFFFF)
/* 70ED4 800702D4 0C01E218 */  jal        __osSpRawReadIo
/* 70ED8 800702D8 27A50034 */   addiu     $a1, $sp, 0x34
/* 70EDC 800702DC 10400007 */  beqz       $v0, .L800702FC
/* 70EE0 800702E0 00000000 */   nop
.L800702E4:
/* 70EE4 800702E4 3C041FC0 */  lui        $a0, (0x1FC007FC >> 16)
/* 70EE8 800702E8 348407FC */  ori        $a0, $a0, (0x1FC007FC & 0xFFFF)
/* 70EEC 800702EC 0C01E218 */  jal        __osSpRawReadIo
/* 70EF0 800702F0 27A50034 */   addiu     $a1, $sp, 0x34
/* 70EF4 800702F4 1440FFFB */  bnez       $v0, .L800702E4
/* 70EF8 800702F8 00000000 */   nop
.L800702FC:
/* 70EFC 800702FC 8FA50034 */  lw         $a1, 0x34($sp)
/* 70F00 80070300 3C041FC0 */  lui        $a0, (0x1FC007FC >> 16)
/* 70F04 80070304 348407FC */  ori        $a0, $a0, (0x1FC007FC & 0xFFFF)
/* 70F08 80070308 34AF0008 */  ori        $t7, $a1, 0x8
/* 70F0C 8007030C 0C01E22C */  jal        __osSpRawWriteIo
/* 70F10 80070310 01E02825 */   or        $a1, $t7, $zero
/* 70F14 80070314 10400009 */  beqz       $v0, .L8007033C
/* 70F18 80070318 00000000 */   nop
.L8007031C:
/* 70F1C 8007031C 8FA50034 */  lw         $a1, 0x34($sp)
/* 70F20 80070320 3C041FC0 */  lui        $a0, (0x1FC007FC >> 16)
/* 70F24 80070324 348407FC */  ori        $a0, $a0, (0x1FC007FC & 0xFFFF)
/* 70F28 80070328 34B80008 */  ori        $t8, $a1, 0x8
/* 70F2C 8007032C 0C01E22C */  jal        __osSpRawWriteIo
/* 70F30 80070330 03002825 */   or        $a1, $t8, $zero
/* 70F34 80070334 1440FFF9 */  bnez       $v0, .L8007031C
/* 70F38 80070338 00000000 */   nop
.L8007033C:
/* 70F3C 8007033C 3C088007 */  lui        $t0, %hi(func_800708A0)
/* 70F40 80070340 250808A0 */  addiu      $t0, $t0, %lo(func_800708A0)
/* 70F44 80070344 8D010000 */  lw         $at, 0x0($t0)
/* 70F48 80070348 3C198000 */  lui        $t9, %hi(D_80000000)
/* 70F4C 8007034C 3C0D8007 */  lui        $t5, %hi(func_800708A0)
/* 70F50 80070350 AF210000 */  sw         $at, %lo(D_80000000)($t9)
/* 70F54 80070354 8D0B0004 */  lw         $t3, 0x4($t0)
/* 70F58 80070358 25AD08A0 */  addiu      $t5, $t5, %lo(func_800708A0)
/* 70F5C 8007035C 3C0C8000 */  lui        $t4, (0x80000080 >> 16)
/* 70F60 80070360 AF2B0004 */  sw         $t3, %lo(D_80000004)($t9)
/* 70F64 80070364 8D010008 */  lw         $at, 0x8($t0)
/* 70F68 80070368 358C0080 */  ori        $t4, $t4, (0x80000080 & 0xFFFF)
/* 70F6C 8007036C 3C098007 */  lui        $t1, %hi(func_800708A0)
/* 70F70 80070370 AF210008 */  sw         $at, %lo(D_80000008)($t9)
/* 70F74 80070374 8D0B000C */  lw         $t3, 0xC($t0)
/* 70F78 80070378 252908A0 */  addiu      $t1, $t1, %lo(func_800708A0)
/* 70F7C 8007037C 3C0A8000 */  lui        $t2, (0x80000100 >> 16)
/* 70F80 80070380 AF2B000C */  sw         $t3, %lo(D_8000000C)($t9)
/* 70F84 80070384 8DA10000 */  lw         $at, 0x0($t5)
/* 70F88 80070388 354A0100 */  ori        $t2, $t2, (0x80000100 & 0xFFFF)
/* 70F8C 8007038C 3C0E8007 */  lui        $t6, %hi(func_800708A0)
/* 70F90 80070390 AD810000 */  sw         $at, 0x0($t4)
/* 70F94 80070394 8DB80004 */  lw         $t8, 0x4($t5)
/* 70F98 80070398 25CE08A0 */  addiu      $t6, $t6, %lo(func_800708A0)
/* 70F9C 8007039C 3C0F8000 */  lui        $t7, (0x80000180 >> 16)
/* 70FA0 800703A0 AD980004 */  sw         $t8, 0x4($t4)
/* 70FA4 800703A4 8DA10008 */  lw         $at, 0x8($t5)
/* 70FA8 800703A8 35EF0180 */  ori        $t7, $t7, (0x80000180 & 0xFFFF)
/* 70FAC 800703AC 3C048000 */  lui        $a0, (0x80000000 >> 16)
/* 70FB0 800703B0 AD810008 */  sw         $at, 0x8($t4)
/* 70FB4 800703B4 8DB8000C */  lw         $t8, 0xC($t5)
/* 70FB8 800703B8 24050190 */  addiu      $a1, $zero, 0x190
/* 70FBC 800703BC AD98000C */  sw         $t8, 0xC($t4)
/* 70FC0 800703C0 8D210000 */  lw         $at, 0x0($t1)
/* 70FC4 800703C4 AD410000 */  sw         $at, 0x0($t2)
/* 70FC8 800703C8 8D2B0004 */  lw         $t3, 0x4($t1)
/* 70FCC 800703CC AD4B0004 */  sw         $t3, 0x4($t2)
/* 70FD0 800703D0 8D210008 */  lw         $at, 0x8($t1)
/* 70FD4 800703D4 AD410008 */  sw         $at, 0x8($t2)
/* 70FD8 800703D8 8D2B000C */  lw         $t3, 0xC($t1)
/* 70FDC 800703DC AD4B000C */  sw         $t3, 0xC($t2)
/* 70FE0 800703E0 8DC10000 */  lw         $at, 0x0($t6)
/* 70FE4 800703E4 ADE10000 */  sw         $at, 0x0($t7)
/* 70FE8 800703E8 8DD80004 */  lw         $t8, 0x4($t6)
/* 70FEC 800703EC ADF80004 */  sw         $t8, 0x4($t7)
/* 70FF0 800703F0 8DC10008 */  lw         $at, 0x8($t6)
/* 70FF4 800703F4 ADE10008 */  sw         $at, 0x8($t7)
/* 70FF8 800703F8 8DD8000C */  lw         $t8, 0xC($t6)
/* 70FFC 800703FC 0C01E19C */  jal        func_80078670
/* 71000 80070400 ADF8000C */   sw        $t8, 0xC($t7)
/* 71004 80070404 3C048000 */  lui        $a0, (0x80000000 >> 16)
/* 71008 80070408 0C01E240 */  jal        func_80078900
/* 7100C 8007040C 24050190 */   addiu     $a1, $zero, 0x190
/* 71010 80070410 0C01E260 */  jal        func_80078980
/* 71014 80070414 00000000 */   nop
/* 71018 80070418 24040004 */  addiu      $a0, $zero, 0x4
/* 7101C 8007041C 0C01E278 */  jal        func_800789E0
/* 71020 80070420 27A50030 */   addiu     $a1, $sp, 0x30
/* 71024 80070424 8FA80030 */  lw         $t0, 0x30($sp)
/* 71028 80070428 2401FFF0 */  addiu      $at, $zero, -0x10
/* 7102C 8007042C 0101C824 */  and        $t9, $t0, $at
/* 71030 80070430 13200006 */  beqz       $t9, .L8007044C
/* 71034 80070434 AFB90030 */   sw        $t9, 0x30($sp)
/* 71038 80070438 3C018009 */  lui        $at, %hi(D_80094820)
/* 7103C 8007043C 03205825 */  or         $t3, $t9, $zero
/* 71040 80070440 240A0000 */  addiu      $t2, $zero, 0x0
/* 71044 80070444 AC2A4820 */  sw         $t2, %lo(D_80094820)($at)
/* 71048 80070448 AC2B4824 */  sw         $t3, %lo(D_80094824)($at)
.L8007044C:
/* 7104C 8007044C 3C048009 */  lui        $a0, %hi(D_80094820)
/* 71050 80070450 3C058009 */  lui        $a1, %hi(D_80094824)
/* 71054 80070454 8CA54824 */  lw         $a1, %lo(D_80094824)($a1)
/* 71058 80070458 8C844820 */  lw         $a0, %lo(D_80094820)($a0)
/* 7105C 8007045C 24060000 */  addiu      $a2, $zero, 0x0
/* 71060 80070460 0C01B1AA */  jal        func_8006C6A8
/* 71064 80070464 24070003 */   addiu     $a3, $zero, 0x3
/* 71068 80070468 AFA20020 */  sw         $v0, 0x20($sp)
/* 7106C 8007046C AFA30024 */  sw         $v1, 0x24($sp)
/* 71070 80070470 8FA50024 */  lw         $a1, 0x24($sp)
/* 71074 80070474 8FA40020 */  lw         $a0, 0x20($sp)
/* 71078 80070478 24060000 */  addiu      $a2, $zero, 0x0
/* 7107C 8007047C 0C01B16A */  jal        func_8006C5A8
/* 71080 80070480 24070004 */   addiu     $a3, $zero, 0x4
/* 71084 80070484 3C098000 */  lui        $t1, %hi(osResetType)
/* 71088 80070488 8D29030C */  lw         $t1, %lo(osResetType)($t1)
/* 7108C 8007048C 3C018009 */  lui        $at, %hi(D_80094820)
/* 71090 80070490 AC224820 */  sw         $v0, %lo(D_80094820)($at)
/* 71094 80070494 15200005 */  bnez       $t1, .L800704AC
/* 71098 80070498 AC234824 */   sw        $v1, %lo(D_80094824)($at)
/* 7109C 8007049C 3C048000 */  lui        $a0, %hi(osAppNmiBuffer)
/* 710A0 800704A0 2484031C */  addiu      $a0, $a0, %lo(osAppNmiBuffer)
/* 710A4 800704A4 0C01B128 */  jal        bzero
/* 710A8 800704A8 24050040 */   addiu     $a1, $zero, 0x40
.L800704AC:
/* 710AC 800704AC 3C0D8000 */  lui        $t5, %hi(osTvType)
/* 710B0 800704B0 8DAD0300 */  lw         $t5, %lo(osTvType)($t5)
/* 710B4 800704B4 15A00006 */  bnez       $t5, .L800704D0
/* 710B8 800704B8 00000000 */   nop
/* 710BC 800704BC 3C0C02F5 */  lui        $t4, (0x2F5B2D2 >> 16)
/* 710C0 800704C0 358CB2D2 */  ori        $t4, $t4, (0x2F5B2D2 & 0xFFFF)
/* 710C4 800704C4 3C018009 */  lui        $at, %hi(osViClock)
/* 710C8 800704C8 1000000F */  b          .L80070508
/* 710CC 800704CC AC2C4828 */   sw        $t4, %lo(osViClock)($at)
.L800704D0:
/* 710D0 800704D0 3C0F8000 */  lui        $t7, %hi(osTvType)
/* 710D4 800704D4 8DEF0300 */  lw         $t7, %lo(osTvType)($t7)
/* 710D8 800704D8 24010002 */  addiu      $at, $zero, 0x2
/* 710DC 800704DC 15E10006 */  bne        $t7, $at, .L800704F8
/* 710E0 800704E0 00000000 */   nop
/* 710E4 800704E4 3C0E02E6 */  lui        $t6, (0x2E6025C >> 16)
/* 710E8 800704E8 35CE025C */  ori        $t6, $t6, (0x2E6025C & 0xFFFF)
/* 710EC 800704EC 3C018009 */  lui        $at, %hi(osViClock)
/* 710F0 800704F0 10000005 */  b          .L80070508
/* 710F4 800704F4 AC2E4828 */   sw        $t6, %lo(osViClock)($at)
.L800704F8:
/* 710F8 800704F8 3C1802E6 */  lui        $t8, (0x2E6D354 >> 16)
/* 710FC 800704FC 3718D354 */  ori        $t8, $t8, (0x2E6D354 & 0xFFFF)
/* 71100 80070500 3C018009 */  lui        $at, %hi(osViClock)
/* 71104 80070504 AC384828 */  sw         $t8, %lo(osViClock)($at)
.L80070508:
/* 71108 80070508 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7110C 8007050C 8FB00018 */  lw         $s0, 0x18($sp)
/* 71110 80070510 27BD0038 */  addiu      $sp, $sp, 0x38
/* 71114 80070514 03E00008 */  jr         $ra
/* 71118 80070518 00000000 */   nop
/* 7111C 8007051C 00000000 */  nop

glabel func_80070520
/* 71120 80070520 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 71124 80070524 AFBF001C */  sw         $ra, 0x1C($sp)
/* 71128 80070528 AFA40028 */  sw         $a0, 0x28($sp)
/* 7112C 8007052C AFA5002C */  sw         $a1, 0x2C($sp)
/* 71130 80070530 0C01C218 */  jal        __osDisableInt
/* 71134 80070534 AFB00018 */   sw        $s0, 0x18($sp)
/* 71138 80070538 8FAE0028 */  lw         $t6, 0x28($sp)
/* 7113C 8007053C 00408025 */  or         $s0, $v0, $zero
/* 71140 80070540 15C00004 */  bnez       $t6, .L80070554
/* 71144 80070544 00000000 */   nop
/* 71148 80070548 3C0F8009 */  lui        $t7, %hi(D_80094880)
/* 7114C 8007054C 8DEF4880 */  lw         $t7, %lo(D_80094880)($t7)
/* 71150 80070550 AFAF0028 */  sw         $t7, 0x28($sp)
.L80070554:
/* 71154 80070554 8FB80028 */  lw         $t8, 0x28($sp)
/* 71158 80070558 8FA8002C */  lw         $t0, 0x2C($sp)
/* 7115C 8007055C 8F190004 */  lw         $t9, 0x4($t8)
/* 71160 80070560 13280020 */  beq        $t9, $t0, .L800705E4
/* 71164 80070564 00000000 */   nop
/* 71168 80070568 AF080004 */  sw         $t0, 0x4($t8)
/* 7116C 8007056C 3C0A8009 */  lui        $t2, %hi(D_80094880)
/* 71170 80070570 8D4A4880 */  lw         $t2, %lo(D_80094880)($t2)
/* 71174 80070574 8FA90028 */  lw         $t1, 0x28($sp)
/* 71178 80070578 112A000C */  beq        $t1, $t2, .L800705AC
/* 7117C 8007057C 00000000 */   nop
/* 71180 80070580 952B0010 */  lhu        $t3, 0x10($t1)
/* 71184 80070584 24010001 */  addiu      $at, $zero, 0x1
/* 71188 80070588 11610008 */  beq        $t3, $at, .L800705AC
/* 7118C 8007058C 00000000 */   nop
/* 71190 80070590 8D240008 */  lw         $a0, 0x8($t1)
/* 71194 80070594 0C01C1FC */  jal        func_800707F0
/* 71198 80070598 01202825 */   or        $a1, $t1, $zero
/* 7119C 8007059C 8FAC0028 */  lw         $t4, 0x28($sp)
/* 711A0 800705A0 8D840008 */  lw         $a0, 0x8($t4)
/* 711A4 800705A4 0C01C3F3 */  jal        func_80070FCC
/* 711A8 800705A8 01802825 */   or        $a1, $t4, $zero
.L800705AC:
/* 711AC 800705AC 3C0D8009 */  lui        $t5, %hi(D_80094880)
/* 711B0 800705B0 3C0F8009 */  lui        $t7, %hi(D_80094878)
/* 711B4 800705B4 8DEF4878 */  lw         $t7, %lo(D_80094878)($t7)
/* 711B8 800705B8 8DAD4880 */  lw         $t5, %lo(D_80094880)($t5)
/* 711BC 800705BC 8DF90004 */  lw         $t9, 0x4($t7)
/* 711C0 800705C0 8DAE0004 */  lw         $t6, 0x4($t5)
/* 711C4 800705C4 01D9082A */  slt        $at, $t6, $t9
/* 711C8 800705C8 10200006 */  beqz       $at, .L800705E4
/* 711CC 800705CC 00000000 */   nop
/* 711D0 800705D0 24080002 */  addiu      $t0, $zero, 0x2
/* 711D4 800705D4 3C048009 */  lui        $a0, %hi(D_80094878)
/* 711D8 800705D8 A5A80010 */  sh         $t0, 0x10($t5)
/* 711DC 800705DC 0C01C3B3 */  jal        func_80070ECC
/* 711E0 800705E0 24844878 */   addiu     $a0, $a0, %lo(D_80094878)
.L800705E4:
/* 711E4 800705E4 0C01C220 */  jal        __osRestoreInt
/* 711E8 800705E8 02002025 */   or        $a0, $s0, $zero
/* 711EC 800705EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 711F0 800705F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 711F4 800705F4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 711F8 800705F8 03E00008 */  jr         $ra
/* 711FC 800705FC 00000000 */   nop

glabel func_80070600
/* 71200 80070600 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 71204 80070604 3C0E8009 */  lui        $t6, %hi(__osPiDevMgr)
/* 71208 80070608 8DCE4840 */  lw         $t6, %lo(__osPiDevMgr)($t6)
/* 7120C 8007060C AFBF001C */  sw         $ra, 0x1C($sp)
/* 71210 80070610 AFA40030 */  sw         $a0, 0x30($sp)
/* 71214 80070614 AFA50034 */  sw         $a1, 0x34($sp)
/* 71218 80070618 AFA60038 */  sw         $a2, 0x38($sp)
/* 7121C 8007061C 15C00056 */  bnez       $t6, .L80070778
/* 71220 80070620 AFA7003C */   sw        $a3, 0x3C($sp)
/* 71224 80070624 8FA40034 */  lw         $a0, 0x34($sp)
/* 71228 80070628 8FA50038 */  lw         $a1, 0x38($sp)
/* 7122C 8007062C 0C01978C */  jal        func_80065E30
/* 71230 80070630 8FA6003C */   lw        $a2, 0x3C($sp)
/* 71234 80070634 3C04801B */  lui        $a0, %hi(D_801AD2D0)
/* 71238 80070638 3C05801B */  lui        $a1, %hi(D_801AD2E8)
/* 7123C 8007063C 24A5D2E8 */  addiu      $a1, $a1, %lo(D_801AD2E8)
/* 71240 80070640 2484D2D0 */  addiu      $a0, $a0, %lo(D_801AD2D0)
/* 71244 80070644 0C01978C */  jal        func_80065E30
/* 71248 80070648 24060001 */   addiu     $a2, $zero, 0x1
/* 7124C 8007064C 3C0F8009 */  lui        $t7, %hi(D_80094C60)
/* 71250 80070650 8DEF4C60 */  lw         $t7, %lo(D_80094C60)($t7)
/* 71254 80070654 15E00003 */  bnez       $t7, .L80070664
/* 71258 80070658 00000000 */   nop
/* 7125C 8007065C 0C01E310 */  jal        func_80078C40
/* 71260 80070660 00000000 */   nop
.L80070664:
/* 71264 80070664 3C05801B */  lui        $a1, %hi(D_801AD2D0)
/* 71268 80070668 3C062222 */  lui        $a2, (0x22222222 >> 16)
/* 7126C 8007066C 34C62222 */  ori        $a2, $a2, (0x22222222 & 0xFFFF)
/* 71270 80070670 24A5D2D0 */  addiu      $a1, $a1, %lo(D_801AD2D0)
/* 71274 80070674 0C01AB80 */  jal        func_8006AE00
/* 71278 80070678 24040008 */   addiu     $a0, $zero, 0x8
/* 7127C 8007067C 2418FFFF */  addiu      $t8, $zero, -0x1
/* 71280 80070680 AFB80028 */  sw         $t8, 0x28($sp)
/* 71284 80070684 0C01DFE8 */  jal        osGetThreadPri
/* 71288 80070688 00002025 */   or        $a0, $zero, $zero
/* 7128C 8007068C AFA20024 */  sw         $v0, 0x24($sp)
/* 71290 80070690 8FB90024 */  lw         $t9, 0x24($sp)
/* 71294 80070694 8FA80030 */  lw         $t0, 0x30($sp)
/* 71298 80070698 0328082A */  slt        $at, $t9, $t0
/* 7129C 8007069C 10200005 */  beqz       $at, .L800706B4
/* 712A0 800706A0 00000000 */   nop
/* 712A4 800706A4 AFB90028 */  sw         $t9, 0x28($sp)
/* 712A8 800706A8 00002025 */  or         $a0, $zero, $zero
/* 712AC 800706AC 0C01C148 */  jal        func_80070520
/* 712B0 800706B0 01002825 */   or        $a1, $t0, $zero
.L800706B4:
/* 712B4 800706B4 0C01C218 */  jal        __osDisableInt
/* 712B8 800706B8 00000000 */   nop
/* 712BC 800706BC 3C018009 */  lui        $at, %hi(__osPiDevMgr)
/* 712C0 800706C0 8FAB0034 */  lw         $t3, 0x34($sp)
/* 712C4 800706C4 3C0A801B */  lui        $t2, %hi(D_801AC120)
/* 712C8 800706C8 3C0C801B */  lui        $t4, %hi(D_801AD2D0)
/* 712CC 800706CC 24090001 */  addiu      $t1, $zero, 0x1
/* 712D0 800706D0 254AC120 */  addiu      $t2, $t2, %lo(D_801AC120)
/* 712D4 800706D4 258CD2D0 */  addiu      $t4, $t4, %lo(D_801AD2D0)
/* 712D8 800706D8 AC294840 */  sw         $t1, %lo(__osPiDevMgr)($at)
/* 712DC 800706DC AC2A4844 */  sw         $t2, %lo(D_80094844)($at)
/* 712E0 800706E0 AC2C484C */  sw         $t4, %lo(D_8009484C)($at)
/* 712E4 800706E4 3C18801B */  lui        $t8, %hi(D_801AC2D0)
/* 712E8 800706E8 AC2B4848 */  sw         $t3, %lo(player_bss_003C)($at)
/* 712EC 800706EC 8FA80030 */  lw         $t0, 0x30($sp)
/* 712F0 800706F0 3C018009 */  lui        $at, %hi(D_80094850)
/* 712F4 800706F4 3C0D801B */  lui        $t5, %hi(D_801AD498)
/* 712F8 800706F8 3C0E8008 */  lui        $t6, %hi(osPiRawStartDma)
/* 712FC 800706FC 3C0F8008 */  lui        $t7, %hi(osEPiRawStartDma)
/* 71300 80070700 2718C2D0 */  addiu      $t8, $t8, %lo(D_801AC2D0)
/* 71304 80070704 25ADD498 */  addiu      $t5, $t5, %lo(D_801AD498)
/* 71308 80070708 25CE8D00 */  addiu      $t6, $t6, %lo(osPiRawStartDma)
/* 7130C 8007070C 25EF8DE0 */  addiu      $t7, $t7, %lo(osEPiRawStartDma)
/* 71310 80070710 27191000 */  addiu      $t9, $t8, 0x1000
/* 71314 80070714 3C068008 */  lui        $a2, %hi(__osDevMgrMain)
/* 71318 80070718 3C078009 */  lui        $a3, %hi(__osPiDevMgr)
/* 7131C 8007071C AFA2002C */  sw         $v0, 0x2C($sp)
/* 71320 80070720 AC2D4850 */  sw         $t5, %lo(D_80094850)($at)
/* 71324 80070724 AC2E4854 */  sw         $t6, %lo(D_80094854)($at)
/* 71328 80070728 AC2F4858 */  sw         $t7, %lo(D_80094858)($at)
/* 7132C 8007072C 24E74840 */  addiu      $a3, $a3, %lo(__osPiDevMgr)
/* 71330 80070730 24C69010 */  addiu      $a2, $a2, %lo(__osDevMgrMain)
/* 71334 80070734 AFB90010 */  sw         $t9, 0x10($sp)
/* 71338 80070738 01402025 */  or         $a0, $t2, $zero
/* 7133C 8007073C 00002825 */  or         $a1, $zero, $zero
/* 71340 80070740 0C019EEC */  jal        osCreateThread
/* 71344 80070744 AFA80014 */   sw        $t0, 0x14($sp)
/* 71348 80070748 3C04801B */  lui        $a0, %hi(D_801AC120)
/* 7134C 8007074C 0C019F40 */  jal        func_80067D00
/* 71350 80070750 2484C120 */   addiu     $a0, $a0, %lo(D_801AC120)
/* 71354 80070754 0C01C220 */  jal        __osRestoreInt
/* 71358 80070758 8FA4002C */   lw        $a0, 0x2C($sp)
/* 7135C 8007075C 8FA90028 */  lw         $t1, 0x28($sp)
/* 71360 80070760 2401FFFF */  addiu      $at, $zero, -0x1
/* 71364 80070764 11210004 */  beq        $t1, $at, .L80070778
/* 71368 80070768 00000000 */   nop
/* 7136C 8007076C 00002025 */  or         $a0, $zero, $zero
/* 71370 80070770 0C01C148 */  jal        func_80070520
/* 71374 80070774 01202825 */   or        $a1, $t1, $zero
.L80070778:
/* 71378 80070778 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7137C 8007077C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 71380 80070780 03E00008 */  jr         $ra
/* 71384 80070784 00000000 */   nop
/* 71388 80070788 00000000 */  nop
/* 7138C 8007078C 00000000 */  nop
/* 71390 80070790 00000000 */  nop
/* 71394 80070794 00000000 */  nop
/* 71398 80070798 00000000 */  nop
/* 7139C 8007079C 00000000 */  nop
/* 713A0 800707A0 00000000 */  nop
/* 713A4 800707A4 00000000 */  nop
/* 713A8 800707A8 00000000 */  nop
/* 713AC 800707AC 00000000 */  nop
/* 713B0 800707B0 00000000 */  nop
/* 713B4 800707B4 00000000 */  nop
/* 713B8 800707B8 00000000 */  nop
/* 713BC 800707BC 00000000 */  nop
/* 713C0 800707C0 00000000 */  nop
/* 713C4 800707C4 00000000 */  nop
/* 713C8 800707C8 00000000 */  nop
/* 713CC 800707CC 00000000 */  nop
/* 713D0 800707D0 00000000 */  nop
/* 713D4 800707D4 00000000 */  nop
/* 713D8 800707D8 00000000 */  nop
/* 713DC 800707DC 00000000 */  nop
/* 713E0 800707E0 00000000 */  nop
/* 713E4 800707E4 00000000 */  nop
/* 713E8 800707E8 00000000 */  nop
/* 713EC 800707EC 00000000 */  nop

glabel func_800707F0
/* 713F0 800707F0 00803025 */  or         $a2, $a0, $zero
/* 713F4 800707F4 8CC70000 */  lw         $a3, 0x0($a2)
/* 713F8 800707F8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 713FC 800707FC 10E0000A */  beqz       $a3, .L80070828
/* 71400 80070800 00000000 */   nop
.L80070804:
/* 71404 80070804 14E50004 */  bne        $a3, $a1, .L80070818
/* 71408 80070808 00000000 */   nop
/* 7140C 8007080C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 71410 80070810 10000005 */  b          .L80070828
/* 71414 80070814 ACCE0000 */   sw        $t6, 0x0($a2)
.L80070818:
/* 71418 80070818 00E03025 */  or         $a2, $a3, $zero
/* 7141C 8007081C 8CC70000 */  lw         $a3, 0x0($a2)
/* 71420 80070820 14E0FFF8 */  bnez       $a3, .L80070804
/* 71424 80070824 00000000 */   nop
.L80070828:
/* 71428 80070828 03E00008 */  jr         $ra
/* 7142C 8007082C 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_80070830
/* 71430 80070830 3C0E8009 */  lui        $t6, %hi(__osPiDevMgr)
/* 71434 80070834 8DCE4840 */  lw         $t6, %lo(__osPiDevMgr)($t6)
/* 71438 80070838 15C00003 */  bnez       $t6, .L80070848
/* 7143C 8007083C 00000000 */   nop
/* 71440 80070840 03E00008 */  jr         $ra
/* 71444 80070844 00001025 */   or        $v0, $zero, $zero
.L80070848:
/* 71448 80070848 3C028009 */  lui        $v0, %hi(player_bss_003C)
/* 7144C 8007084C 8C424848 */  lw         $v0, %lo(player_bss_003C)($v0)
/* 71450 80070850 03E00008 */  jr         $ra
/* 71454 80070854 00000000 */   nop
/* 71458 80070858 00000000 */  nop
/* 7145C 8007085C 00000000 */  nop

# Handwritten function
glabel __osDisableInt
/* 71460 80070860 40086000 */  mfc0       $t0, $12
/* 71464 80070864 2401FFFE */  addiu      $at, $zero, -0x2
/* 71468 80070868 01014824 */  and        $t1, $t0, $at
/* 7146C 8007086C 40896000 */  mtc0       $t1, $12
/* 71470 80070870 31020001 */  andi       $v0, $t0, 0x1
/* 71474 80070874 00000000 */  nop
/* 71478 80070878 03E00008 */  jr         $ra
/* 7147C 8007087C 00000000 */   nop

# Handwritten function
glabel __osRestoreInt
/* 71480 80070880 40086000 */  mfc0       $t0, $12
/* 71484 80070884 01044025 */  or         $t0, $t0, $a0
/* 71488 80070888 40886000 */  mtc0       $t0, $12
/* 7148C 8007088C 00000000 */  nop
/* 71490 80070890 00000000 */  nop
/* 71494 80070894 03E00008 */  jr         $ra
/* 71498 80070898 00000000 */   nop
/* 7149C 8007089C 00000000 */  nop

# Handwritten function
glabel func_800708A0
/* 714A0 800708A0 3C1A8007 */  lui        $k0, %hi(D_800708B0)
/* 714A4 800708A4 275A08B0 */  addiu      $k0, $k0, %lo(D_800708B0)
/* 714A8 800708A8 03400008 */  jr         $k0
/* 714AC 800708AC 00000000 */   nop
D_800708B0:
/* 714B0 800708B0 3C1A801B */  lui        $k0, %hi(D_801AD4B0)
/* 714B4 800708B4 275AD4B0 */  addiu      $k0, $k0, %lo(D_801AD4B0)
/* 714B8 800708B8 FF410020 */  sd         $at, 0x20($k0)
/* 714BC 800708BC 401B6000 */  mfc0       $k1, $12
/* 714C0 800708C0 AF5B0118 */  sw         $k1, 0x118($k0)
/* 714C4 800708C4 2401FFFC */  addiu      $at, $zero, -0x4
/* 714C8 800708C8 0361D824 */  and        $k1, $k1, $at
/* 714CC 800708CC 409B6000 */  mtc0       $k1, $12
/* 714D0 800708D0 FF480058 */  sd         $t0, 0x58($k0)
/* 714D4 800708D4 FF490060 */  sd         $t1, 0x60($k0)
/* 714D8 800708D8 FF4A0068 */  sd         $t2, 0x68($k0)
/* 714DC 800708DC AF400018 */  sw         $zero, 0x18($k0)
/* 714E0 800708E0 40086800 */  mfc0       $t0, $13
/* 714E4 800708E4 03404025 */  or         $t0, $k0, $zero
/* 714E8 800708E8 3C1A8009 */  lui        $k0, %hi(D_80094880)
/* 714EC 800708EC 8F5A4880 */  lw         $k0, %lo(D_80094880)($k0)
/* 714F0 800708F0 DD090020 */  ld         $t1, 0x20($t0)
/* 714F4 800708F4 FF490020 */  sd         $t1, 0x20($k0)
/* 714F8 800708F8 DD090118 */  ld         $t1, 0x118($t0)
/* 714FC 800708FC FF490118 */  sd         $t1, 0x118($k0)
/* 71500 80070900 DD090058 */  ld         $t1, 0x58($t0)
/* 71504 80070904 FF490058 */  sd         $t1, 0x58($k0)
/* 71508 80070908 DD090060 */  ld         $t1, 0x60($t0)
/* 7150C 8007090C FF490060 */  sd         $t1, 0x60($k0)
/* 71510 80070910 DD090068 */  ld         $t1, 0x68($t0)
/* 71514 80070914 FF490068 */  sd         $t1, 0x68($k0)
/* 71518 80070918 8F5B0118 */  lw         $k1, 0x118($k0)
/* 7151C 8007091C 00004012 */  mflo       $t0
/* 71520 80070920 FF480108 */  sd         $t0, 0x108($k0)
/* 71524 80070924 00004010 */  mfhi       $t0
/* 71528 80070928 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 7152C 8007092C FF420028 */  sd         $v0, 0x28($k0)
/* 71530 80070930 FF430030 */  sd         $v1, 0x30($k0)
/* 71534 80070934 FF440038 */  sd         $a0, 0x38($k0)
/* 71538 80070938 FF450040 */  sd         $a1, 0x40($k0)
/* 7153C 8007093C FF460048 */  sd         $a2, 0x48($k0)
/* 71540 80070940 FF470050 */  sd         $a3, 0x50($k0)
/* 71544 80070944 FF4B0070 */  sd         $t3, 0x70($k0)
/* 71548 80070948 FF4C0078 */  sd         $t4, 0x78($k0)
/* 7154C 8007094C FF4D0080 */  sd         $t5, 0x80($k0)
/* 71550 80070950 FF4E0088 */  sd         $t6, 0x88($k0)
/* 71554 80070954 FF4F0090 */  sd         $t7, 0x90($k0)
/* 71558 80070958 FF500098 */  sd         $s0, 0x98($k0)
/* 7155C 8007095C FF5100A0 */  sd         $s1, 0xA0($k0)
/* 71560 80070960 FF5200A8 */  sd         $s2, 0xA8($k0)
/* 71564 80070964 FF5300B0 */  sd         $s3, 0xB0($k0)
/* 71568 80070968 FF5400B8 */  sd         $s4, 0xB8($k0)
/* 7156C 8007096C FF5500C0 */  sd         $s5, 0xC0($k0)
/* 71570 80070970 FF5600C8 */  sd         $s6, 0xC8($k0)
/* 71574 80070974 FF5700D0 */  sd         $s7, 0xD0($k0)
/* 71578 80070978 FF5800D8 */  sd         $t8, 0xD8($k0)
/* 7157C 8007097C FF5900E0 */  sd         $t9, 0xE0($k0)
/* 71580 80070980 FF5C00E8 */  sd         $gp, 0xE8($k0)
/* 71584 80070984 FF5D00F0 */  sd         $sp, 0xF0($k0)
/* 71588 80070988 FF5E00F8 */  sd         $fp, 0xF8($k0)
/* 7158C 8007098C FF5F0100 */  sd         $ra, 0x100($k0)
/* 71590 80070990 11200011 */  beqz       $t1, .L800709D8
/* 71594 80070994 FF480110 */   sd        $t0, 0x110($k0)
/* 71598 80070998 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 7159C 8007099C 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 715A0 800709A0 8D080000 */  lw         $t0, 0x0($t0)
/* 715A4 800709A4 2401FFFF */  addiu      $at, $zero, -0x1
/* 715A8 800709A8 01015026 */  xor        $t2, $t0, $at
/* 715AC 800709AC 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 715B0 800709B0 314AFF00 */  andi       $t2, $t2, 0xFF00
/* 715B4 800709B4 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 715B8 800709B8 012A6025 */  or         $t4, $t1, $t2
/* 715BC 800709BC 03615824 */  and        $t3, $k1, $at
/* 715C0 800709C0 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 715C4 800709C4 016C5825 */  or         $t3, $t3, $t4
/* 715C8 800709C8 01284824 */  and        $t1, $t1, $t0
/* 715CC 800709CC 0361D824 */  and        $k1, $k1, $at
/* 715D0 800709D0 AF4B0118 */  sw         $t3, 0x118($k0)
/* 715D4 800709D4 0369D825 */  or         $k1, $k1, $t1
.L800709D8:
/* 715D8 800709D8 3C09A430 */  lui        $t1, %hi(D_A430000C)
/* 715DC 800709DC 8D29000C */  lw         $t1, %lo(D_A430000C)($t1)
/* 715E0 800709E0 1120000B */  beqz       $t1, .L80070A10
/* 715E4 800709E4 00000000 */   nop
/* 715E8 800709E8 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 715EC 800709EC 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 715F0 800709F0 8D080000 */  lw         $t0, 0x0($t0)
/* 715F4 800709F4 8F4C0128 */  lw         $t4, 0x128($k0)
/* 715F8 800709F8 2401FFFF */  addiu      $at, $zero, -0x1
/* 715FC 800709FC 00084402 */  srl        $t0, $t0, 16
/* 71600 80070A00 01014026 */  xor        $t0, $t0, $at
/* 71604 80070A04 3108003F */  andi       $t0, $t0, 0x3F
/* 71608 80070A08 010C4024 */  and        $t0, $t0, $t4
/* 7160C 80070A0C 01284825 */  or         $t1, $t1, $t0
.L80070A10:
/* 71610 80070A10 AF490128 */  sw         $t1, 0x128($k0)
/* 71614 80070A14 40087000 */  mfc0       $t0, $14
/* 71618 80070A18 AF48011C */  sw         $t0, 0x11C($k0)
/* 7161C 80070A1C 8F480018 */  lw         $t0, 0x18($k0)
/* 71620 80070A20 11000014 */  beqz       $t0, .L80070A74
/* 71624 80070A24 00000000 */   nop
/* 71628 80070A28 4448F800 */  cfc1       $t0, $31
/* 7162C 80070A2C 00000000 */  nop
/* 71630 80070A30 AF48012C */  sw         $t0, 0x12C($k0)
/* 71634 80070A34 F7400130 */  sdc1       $f0, 0x130($k0)
/* 71638 80070A38 F7420138 */  sdc1       $f2, 0x138($k0)
/* 7163C 80070A3C F7440140 */  sdc1       $f4, 0x140($k0)
/* 71640 80070A40 F7460148 */  sdc1       $f6, 0x148($k0)
/* 71644 80070A44 F7480150 */  sdc1       $f8, 0x150($k0)
/* 71648 80070A48 F74A0158 */  sdc1       $f10, 0x158($k0)
/* 7164C 80070A4C F74C0160 */  sdc1       $f12, 0x160($k0)
/* 71650 80070A50 F74E0168 */  sdc1       $f14, 0x168($k0)
/* 71654 80070A54 F7500170 */  sdc1       $f16, 0x170($k0)
/* 71658 80070A58 F7520178 */  sdc1       $f18, 0x178($k0)
/* 7165C 80070A5C F7540180 */  sdc1       $f20, 0x180($k0)
/* 71660 80070A60 F7560188 */  sdc1       $f22, 0x188($k0)
/* 71664 80070A64 F7580190 */  sdc1       $f24, 0x190($k0)
/* 71668 80070A68 F75A0198 */  sdc1       $f26, 0x198($k0)
/* 7166C 80070A6C F75C01A0 */  sdc1       $f28, 0x1A0($k0)
/* 71670 80070A70 F75E01A8 */  sdc1       $f30, 0x1A8($k0)
.L80070A74:
/* 71674 80070A74 40086800 */  mfc0       $t0, $13
/* 71678 80070A78 AF480120 */  sw         $t0, 0x120($k0)
/* 7167C 80070A7C 24090002 */  addiu      $t1, $zero, 0x2
/* 71680 80070A80 A7490010 */  sh         $t1, 0x10($k0)
/* 71684 80070A84 3109007C */  andi       $t1, $t0, 0x7C
/* 71688 80070A88 240A0024 */  addiu      $t2, $zero, 0x24
/* 7168C 80070A8C 112A00B0 */  beq        $t1, $t2, .L80070D50
/* 71690 80070A90 00000000 */   nop
/* 71694 80070A94 240A002C */  addiu      $t2, $zero, 0x2C
/* 71698 80070A98 112A00FF */  beq        $t1, $t2, .L80070E98
/* 7169C 80070A9C 00000000 */   nop
/* 716A0 80070AA0 240A0000 */  addiu      $t2, $zero, 0x0
/* 716A4 80070AA4 152A00C3 */  bne        $t1, $t2, .L80070DB4
/* 716A8 80070AA8 00000000 */   nop
/* 716AC 80070AAC 03688024 */  and        $s0, $k1, $t0
.L80070AB0:
/* 716B0 80070AB0 3209FF00 */  andi       $t1, $s0, 0xFF00
/* 716B4 80070AB4 00095302 */  srl        $t2, $t1, 12
/* 716B8 80070AB8 15400003 */  bnez       $t2, .L80070AC8
/* 716BC 80070ABC 00000000 */   nop
/* 716C0 80070AC0 00095202 */  srl        $t2, $t1, 8
/* 716C4 80070AC4 214A0010 */  addi       $t2, $t2, 0x10
.L80070AC8:
/* 716C8 80070AC8 3C01800A */  lui        $at, %hi(D_80098D40)
/* 716CC 80070ACC 002A0821 */  addu       $at, $at, $t2
/* 716D0 80070AD0 902A8D40 */  lbu        $t2, %lo(D_80098D40)($at)
/* 716D4 80070AD4 3C01800A */  lui        $at, %hi(jtbl_80098D60_main)
/* 716D8 80070AD8 002A0821 */  addu       $at, $at, $t2
/* 716DC 80070ADC 8C2A8D60 */  lw         $t2, %lo(jtbl_80098D60_main)($at)
/* 716E0 80070AE0 01400008 */  jr         $t2
/* 716E4 80070AE4 00000000 */   nop
glabel L80070AE8
/* 716E8 80070AE8 2401DFFF */  addiu      $at, $zero, -0x2001
/* 716EC 80070AEC 1000FFF0 */  b          .L80070AB0
/* 716F0 80070AF0 02018024 */   and       $s0, $s0, $at
glabel L80070AF4
/* 716F4 80070AF4 2401BFFF */  addiu      $at, $zero, -0x4001
/* 716F8 80070AF8 1000FFED */  b          .L80070AB0
/* 716FC 80070AFC 02018024 */   and       $s0, $s0, $at
glabel L80070B00
/* 71700 80070B00 40095800 */  mfc0       $t1, $11
/* 71704 80070B04 40895800 */  mtc0       $t1, $11
/* 71708 80070B08 0C01C379 */  jal        func_80070DE4
/* 7170C 80070B0C 24040018 */   addiu     $a0, $zero, 0x18
/* 71710 80070B10 3C01FFFF */  lui        $at, (0xFFFF7FFF >> 16)
/* 71714 80070B14 34217FFF */  ori        $at, $at, (0xFFFF7FFF & 0xFFFF)
/* 71718 80070B18 1000FFE5 */  b          .L80070AB0
/* 7171C 80070B1C 02018024 */   and       $s0, $s0, $at
glabel L80070B20
/* 71720 80070B20 2401F7FF */  addiu      $at, $zero, -0x801
/* 71724 80070B24 02018024 */  and        $s0, $s0, $at
/* 71728 80070B28 240A0004 */  addiu      $t2, $zero, 0x4
/* 7172C 80070B2C 3C018009 */  lui        $at, %hi(D_80094890)
/* 71730 80070B30 002A0821 */  addu       $at, $at, $t2
/* 71734 80070B34 8C2A4890 */  lw         $t2, %lo(D_80094890)($at)
/* 71738 80070B38 3C1D801B */  lui        $sp, %hi(D_801AD660)
/* 7173C 80070B3C 27BDD660 */  addiu      $sp, $sp, %lo(D_801AD660)
/* 71740 80070B40 24040010 */  addiu      $a0, $zero, 0x10
/* 71744 80070B44 11400007 */  beqz       $t2, .L80070B64
/* 71748 80070B48 27BD0FF0 */   addiu     $sp, $sp, 0xFF0
/* 7174C 80070B4C 0140F809 */  jalr       $t2
/* 71750 80070B50 00000000 */   nop
/* 71754 80070B54 10400003 */  beqz       $v0, .L80070B64
/* 71758 80070B58 24040010 */   addiu     $a0, $zero, 0x10
/* 7175C 80070B5C 10000082 */  b          L80070D68
/* 71760 80070B60 00000000 */   nop
.L80070B64:
/* 71764 80070B64 0C01C379 */  jal        func_80070DE4
/* 71768 80070B68 00000000 */   nop
/* 7176C 80070B6C 1000FFD0 */  b          .L80070AB0
/* 71770 80070B70 00000000 */   nop
glabel L80070B74
/* 71774 80070B74 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 71778 80070B78 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 7177C 80070B7C 8D080000 */  lw         $t0, 0x0($t0)
/* 71780 80070B80 3C11A430 */  lui        $s1, %hi(D_A4300008)
/* 71784 80070B84 8E310008 */  lw         $s1, %lo(D_A4300008)($s1)
/* 71788 80070B88 00084402 */  srl        $t0, $t0, 16
/* 7178C 80070B8C 02288824 */  and        $s1, $s1, $t0
/* 71790 80070B90 32290001 */  andi       $t1, $s1, 0x1
/* 71794 80070B94 11200013 */  beqz       $t1, .L80070BE4
/* 71798 80070B98 00000000 */   nop
/* 7179C 80070B9C 3C0CA404 */  lui        $t4, %hi(D_A4040010)
/* 717A0 80070BA0 8D8C0010 */  lw         $t4, %lo(D_A4040010)($t4)
/* 717A4 80070BA4 34098008 */  ori        $t1, $zero, 0x8008
/* 717A8 80070BA8 3C01A404 */  lui        $at, %hi(D_A4040010)
/* 717AC 80070BAC 318C0300 */  andi       $t4, $t4, 0x300
/* 717B0 80070BB0 3231003E */  andi       $s1, $s1, 0x3E
/* 717B4 80070BB4 11800007 */  beqz       $t4, .L80070BD4
/* 717B8 80070BB8 AC290010 */   sw        $t1, %lo(D_A4040010)($at)
/* 717BC 80070BBC 0C01C379 */  jal        func_80070DE4
/* 717C0 80070BC0 24040020 */   addiu     $a0, $zero, 0x20
/* 717C4 80070BC4 12200038 */  beqz       $s1, .L80070CA8
/* 717C8 80070BC8 00000000 */   nop
/* 717CC 80070BCC 10000005 */  b          .L80070BE4
/* 717D0 80070BD0 00000000 */   nop
.L80070BD4:
/* 717D4 80070BD4 0C01C379 */  jal        func_80070DE4
/* 717D8 80070BD8 24040058 */   addiu     $a0, $zero, 0x58
/* 717DC 80070BDC 12200032 */  beqz       $s1, .L80070CA8
/* 717E0 80070BE0 00000000 */   nop
.L80070BE4:
/* 717E4 80070BE4 32290008 */  andi       $t1, $s1, 0x8
/* 717E8 80070BE8 11200007 */  beqz       $t1, .L80070C08
/* 717EC 80070BEC 3C01A440 */   lui       $at, %hi(D_A4400010)
/* 717F0 80070BF0 32310037 */  andi       $s1, $s1, 0x37
/* 717F4 80070BF4 AC200010 */  sw         $zero, %lo(D_A4400010)($at)
/* 717F8 80070BF8 0C01C379 */  jal        func_80070DE4
/* 717FC 80070BFC 24040038 */   addiu     $a0, $zero, 0x38
/* 71800 80070C00 12200029 */  beqz       $s1, .L80070CA8
/* 71804 80070C04 00000000 */   nop
.L80070C08:
/* 71808 80070C08 32290004 */  andi       $t1, $s1, 0x4
/* 7180C 80070C0C 11200009 */  beqz       $t1, .L80070C34
/* 71810 80070C10 00000000 */   nop
/* 71814 80070C14 24090001 */  addiu      $t1, $zero, 0x1
/* 71818 80070C18 3C01A450 */  lui        $at, %hi(D_A450000C)
/* 7181C 80070C1C 3231003B */  andi       $s1, $s1, 0x3B
/* 71820 80070C20 AC29000C */  sw         $t1, %lo(D_A450000C)($at)
/* 71824 80070C24 0C01C379 */  jal        func_80070DE4
/* 71828 80070C28 24040030 */   addiu     $a0, $zero, 0x30
/* 7182C 80070C2C 1220001E */  beqz       $s1, .L80070CA8
/* 71830 80070C30 00000000 */   nop
.L80070C34:
/* 71834 80070C34 32290002 */  andi       $t1, $s1, 0x2
/* 71838 80070C38 11200007 */  beqz       $t1, .L80070C58
/* 7183C 80070C3C 3C01A480 */   lui       $at, %hi(D_A4800018)
/* 71840 80070C40 3231003D */  andi       $s1, $s1, 0x3D
/* 71844 80070C44 AC200018 */  sw         $zero, %lo(D_A4800018)($at)
/* 71848 80070C48 0C01C379 */  jal        func_80070DE4
/* 7184C 80070C4C 24040028 */   addiu     $a0, $zero, 0x28
/* 71850 80070C50 12200015 */  beqz       $s1, .L80070CA8
/* 71854 80070C54 00000000 */   nop
.L80070C58:
/* 71858 80070C58 32290010 */  andi       $t1, $s1, 0x10
/* 7185C 80070C5C 11200009 */  beqz       $t1, .L80070C84
/* 71860 80070C60 00000000 */   nop
/* 71864 80070C64 24090002 */  addiu      $t1, $zero, 0x2
/* 71868 80070C68 3C01A460 */  lui        $at, %hi(D_A4600010)
/* 7186C 80070C6C 3231002F */  andi       $s1, $s1, 0x2F
/* 71870 80070C70 AC290010 */  sw         $t1, %lo(D_A4600010)($at)
/* 71874 80070C74 0C01C379 */  jal        func_80070DE4
/* 71878 80070C78 24040040 */   addiu     $a0, $zero, 0x40
/* 7187C 80070C7C 1220000A */  beqz       $s1, .L80070CA8
/* 71880 80070C80 00000000 */   nop
.L80070C84:
/* 71884 80070C84 32290020 */  andi       $t1, $s1, 0x20
/* 71888 80070C88 11200007 */  beqz       $t1, .L80070CA8
/* 7188C 80070C8C 00000000 */   nop
/* 71890 80070C90 24090800 */  addiu      $t1, $zero, 0x800
/* 71894 80070C94 3C01A430 */  lui        $at, %hi(D_A4300000)
/* 71898 80070C98 3231001F */  andi       $s1, $s1, 0x1F
/* 7189C 80070C9C AC290000 */  sw         $t1, %lo(D_A4300000)($at)
/* 718A0 80070CA0 0C01C379 */  jal        func_80070DE4
/* 718A4 80070CA4 24040048 */   addiu     $a0, $zero, 0x48
.L80070CA8:
/* 718A8 80070CA8 2401FBFF */  addiu      $at, $zero, -0x401
/* 718AC 80070CAC 1000FF80 */  b          .L80070AB0
/* 718B0 80070CB0 02018024 */   and       $s0, $s0, $at
glabel L80070CB4
/* 718B4 80070CB4 8F5B0118 */  lw         $k1, 0x118($k0)
/* 718B8 80070CB8 2401EFFF */  addiu      $at, $zero, -0x1001
/* 718BC 80070CBC 3C098009 */  lui        $t1, %hi(D_8009482C)
/* 718C0 80070CC0 0361D824 */  and        $k1, $k1, $at
/* 718C4 80070CC4 AF5B0118 */  sw         $k1, 0x118($k0)
/* 718C8 80070CC8 2529482C */  addiu      $t1, $t1, %lo(D_8009482C)
/* 718CC 80070CCC 8D2A0000 */  lw         $t2, 0x0($t1)
/* 718D0 80070CD0 11400003 */  beqz       $t2, .L80070CE0
/* 718D4 80070CD4 2401EFFF */   addiu     $at, $zero, -0x1001
/* 718D8 80070CD8 10000023 */  b          L80070D68
/* 718DC 80070CDC 02018024 */   and       $s0, $s0, $at
.L80070CE0:
/* 718E0 80070CE0 240A0001 */  addiu      $t2, $zero, 0x1
/* 718E4 80070CE4 AD2A0000 */  sw         $t2, 0x0($t1)
/* 718E8 80070CE8 0C01C379 */  jal        func_80070DE4
/* 718EC 80070CEC 24040070 */   addiu     $a0, $zero, 0x70
/* 718F0 80070CF0 3C0A8009 */  lui        $t2, %hi(D_80094878)
/* 718F4 80070CF4 8D4A4878 */  lw         $t2, %lo(D_80094878)($t2)
/* 718F8 80070CF8 2401EFFF */  addiu      $at, $zero, -0x1001
/* 718FC 80070CFC 02018024 */  and        $s0, $s0, $at
/* 71900 80070D00 8D5B0118 */  lw         $k1, 0x118($t2)
/* 71904 80070D04 0361D824 */  and        $k1, $k1, $at
/* 71908 80070D08 10000017 */  b          L80070D68
/* 7190C 80070D0C AD5B0118 */   sw        $k1, 0x118($t2)
glabel L80070D10
/* 71910 80070D10 2401FDFF */  addiu      $at, $zero, -0x201
/* 71914 80070D14 01014024 */  and        $t0, $t0, $at
/* 71918 80070D18 40886800 */  mtc0       $t0, $13
/* 7191C 80070D1C 0C01C379 */  jal        func_80070DE4
/* 71920 80070D20 24040008 */   addiu     $a0, $zero, 0x8
/* 71924 80070D24 2401FDFF */  addiu      $at, $zero, -0x201
/* 71928 80070D28 1000FF61 */  b          .L80070AB0
/* 7192C 80070D2C 02018024 */   and       $s0, $s0, $at
glabel L80070D30
/* 71930 80070D30 2401FEFF */  addiu      $at, $zero, -0x101
/* 71934 80070D34 01014024 */  and        $t0, $t0, $at
/* 71938 80070D38 40886800 */  mtc0       $t0, $13
/* 7193C 80070D3C 0C01C379 */  jal        func_80070DE4
/* 71940 80070D40 24040000 */   addiu     $a0, $zero, 0x0
/* 71944 80070D44 2401FEFF */  addiu      $at, $zero, -0x101
/* 71948 80070D48 1000FF59 */  b          .L80070AB0
/* 7194C 80070D4C 02018024 */   and       $s0, $s0, $at
.L80070D50:
/* 71950 80070D50 24090001 */  addiu      $t1, $zero, 0x1
/* 71954 80070D54 A7490012 */  sh         $t1, 0x12($k0)
/* 71958 80070D58 0C01C379 */  jal        func_80070DE4
/* 7195C 80070D5C 24040050 */   addiu     $a0, $zero, 0x50
/* 71960 80070D60 10000001 */  b          L80070D68
/* 71964 80070D64 00000000 */   nop
glabel L80070D68
/* 71968 80070D68 3C0A8009 */  lui        $t2, %hi(D_80094878)
/* 7196C 80070D6C 8D4A4878 */  lw         $t2, %lo(D_80094878)($t2)
/* 71970 80070D70 8F490004 */  lw         $t1, 0x4($k0)
/* 71974 80070D74 8D4B0004 */  lw         $t3, 0x4($t2)
/* 71978 80070D78 012B082A */  slt        $at, $t1, $t3
/* 7197C 80070D7C 10200007 */  beqz       $at, .L80070D9C
/* 71980 80070D80 00000000 */   nop
/* 71984 80070D84 3C048009 */  lui        $a0, %hi(D_80094878)
/* 71988 80070D88 03402825 */  or         $a1, $k0, $zero
/* 7198C 80070D8C 0C01C3F3 */  jal        func_80070FCC
/* 71990 80070D90 24844878 */   addiu     $a0, $a0, %lo(D_80094878)
/* 71994 80070D94 0801C409 */  j          func_80071024
/* 71998 80070D98 00000000 */   nop
.L80070D9C:
/* 7199C 80070D9C 3C098009 */  lui        $t1, %hi(D_80094878)
/* 719A0 80070DA0 25294878 */  addiu      $t1, $t1, %lo(D_80094878)
/* 719A4 80070DA4 8D2A0000 */  lw         $t2, 0x0($t1)
/* 719A8 80070DA8 AF4A0000 */  sw         $t2, 0x0($k0)
/* 719AC 80070DAC 0801C409 */  j          func_80071024
/* 719B0 80070DB0 AD3A0000 */   sw        $k0, 0x0($t1)
.L80070DB4:
/* 719B4 80070DB4 3C018009 */  lui        $at, %hi(D_80094884)
/* 719B8 80070DB8 AC3A4884 */  sw         $k0, %lo(D_80094884)($at)
/* 719BC 80070DBC 24090001 */  addiu      $t1, $zero, 0x1
/* 719C0 80070DC0 A7490010 */  sh         $t1, 0x10($k0)
/* 719C4 80070DC4 24090002 */  addiu      $t1, $zero, 0x2
/* 719C8 80070DC8 A7490012 */  sh         $t1, 0x12($k0)
/* 719CC 80070DCC 400A4000 */  mfc0       $t2, $8
/* 719D0 80070DD0 AF4A0124 */  sw         $t2, 0x124($k0)
/* 719D4 80070DD4 0C01C379 */  jal        func_80070DE4
/* 719D8 80070DD8 24040060 */   addiu     $a0, $zero, 0x60
/* 719DC 80070DDC 0801C409 */  j          func_80071024
/* 719E0 80070DE0 00000000 */   nop

# Handwritten function
glabel func_80070DE4
/* 719E4 80070DE4 3C0A801B */  lui        $t2, %hi(D_801AAB10)
/* 719E8 80070DE8 254AAB10 */  addiu      $t2, $t2, %lo(D_801AAB10)
/* 719EC 80070DEC 01445021 */  addu       $t2, $t2, $a0
/* 719F0 80070DF0 8D490000 */  lw         $t1, 0x0($t2)
/* 719F4 80070DF4 03E09025 */  or         $s2, $ra, $zero
/* 719F8 80070DF8 11200025 */  beqz       $t1, .L80070E90
/* 719FC 80070DFC 00000000 */   nop
/* 71A00 80070E00 8D2B0008 */  lw         $t3, 0x8($t1)
/* 71A04 80070E04 8D2C0010 */  lw         $t4, 0x10($t1)
/* 71A08 80070E08 016C082A */  slt        $at, $t3, $t4
/* 71A0C 80070E0C 10200020 */  beqz       $at, .L80070E90
/* 71A10 80070E10 00000000 */   nop
/* 71A14 80070E14 8D2D000C */  lw         $t5, 0xC($t1)
/* 71A18 80070E18 01AB6821 */  addu       $t5, $t5, $t3
/* 71A1C 80070E1C 01AC001A */  div        $zero, $t5, $t4
/* 71A20 80070E20 15800002 */  bnez       $t4, .L80070E2C
/* 71A24 80070E24 00000000 */   nop
/* 71A28 80070E28 0007000D */  break      7
.L80070E2C:
/* 71A2C 80070E2C 2401FFFF */  addiu      $at, $zero, -0x1
/* 71A30 80070E30 15810004 */  bne        $t4, $at, .L80070E44
/* 71A34 80070E34 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 71A38 80070E38 15A10002 */  bne        $t5, $at, .L80070E44
/* 71A3C 80070E3C 00000000 */   nop
/* 71A40 80070E40 0006000D */  break      6
.L80070E44:
/* 71A44 80070E44 8D2C0014 */  lw         $t4, 0x14($t1)
/* 71A48 80070E48 00006810 */  mfhi       $t5
/* 71A4C 80070E4C 000D6880 */  sll        $t5, $t5, 2
/* 71A50 80070E50 018D6021 */  addu       $t4, $t4, $t5
/* 71A54 80070E54 8D4D0004 */  lw         $t5, 0x4($t2)
/* 71A58 80070E58 256A0001 */  addiu      $t2, $t3, 0x1
/* 71A5C 80070E5C AD8D0000 */  sw         $t5, 0x0($t4)
/* 71A60 80070E60 AD2A0008 */  sw         $t2, 0x8($t1)
/* 71A64 80070E64 8D2A0000 */  lw         $t2, 0x0($t1)
/* 71A68 80070E68 8D4B0000 */  lw         $t3, 0x0($t2)
/* 71A6C 80070E6C 11600008 */  beqz       $t3, .L80070E90
/* 71A70 80070E70 00000000 */   nop
/* 71A74 80070E74 0C01C405 */  jal        func_80071014
/* 71A78 80070E78 01202025 */   or        $a0, $t1, $zero
/* 71A7C 80070E7C 00405025 */  or         $t2, $v0, $zero
/* 71A80 80070E80 3C048009 */  lui        $a0, %hi(D_80094878)
/* 71A84 80070E84 01402825 */  or         $a1, $t2, $zero
/* 71A88 80070E88 0C01C3F3 */  jal        func_80070FCC
/* 71A8C 80070E8C 24844878 */   addiu     $a0, $a0, %lo(D_80094878)
.L80070E90:
/* 71A90 80070E90 02400008 */  jr         $s2
/* 71A94 80070E94 00000000 */   nop
.L80070E98:
/* 71A98 80070E98 3C013000 */  lui        $at, (0x30000000 >> 16)
/* 71A9C 80070E9C 01014824 */  and        $t1, $t0, $at
/* 71AA0 80070EA0 00094F02 */  srl        $t1, $t1, 28
/* 71AA4 80070EA4 240A0001 */  addiu      $t2, $zero, 0x1
/* 71AA8 80070EA8 152AFFC2 */  bne        $t1, $t2, .L80070DB4
/* 71AAC 80070EAC 00000000 */   nop
/* 71AB0 80070EB0 8F5B0118 */  lw         $k1, 0x118($k0)
/* 71AB4 80070EB4 3C012000 */  lui        $at, (0x20000000 >> 16)
/* 71AB8 80070EB8 24090001 */  addiu      $t1, $zero, 0x1
/* 71ABC 80070EBC 0361D825 */  or         $k1, $k1, $at
/* 71AC0 80070EC0 AF490018 */  sw         $t1, 0x18($k0)
/* 71AC4 80070EC4 1000FFB5 */  b          .L80070D9C
/* 71AC8 80070EC8 AF5B0118 */   sw        $k1, 0x118($k0)

# Handwritten function
glabel func_80070ECC
/* 71ACC 80070ECC 3C058009 */  lui        $a1, %hi(D_80094880)
/* 71AD0 80070ED0 8CA54880 */  lw         $a1, %lo(D_80094880)($a1)
/* 71AD4 80070ED4 40086000 */  mfc0       $t0, $12
/* 71AD8 80070ED8 8CBB0018 */  lw         $k1, 0x18($a1)
/* 71ADC 80070EDC 35080002 */  ori        $t0, $t0, 0x2
/* 71AE0 80070EE0 ACA80118 */  sw         $t0, 0x118($a1)
/* 71AE4 80070EE4 FCB00098 */  sd         $s0, 0x98($a1)
/* 71AE8 80070EE8 FCB100A0 */  sd         $s1, 0xA0($a1)
/* 71AEC 80070EEC FCB200A8 */  sd         $s2, 0xA8($a1)
/* 71AF0 80070EF0 FCB300B0 */  sd         $s3, 0xB0($a1)
/* 71AF4 80070EF4 FCB400B8 */  sd         $s4, 0xB8($a1)
/* 71AF8 80070EF8 FCB500C0 */  sd         $s5, 0xC0($a1)
/* 71AFC 80070EFC FCB600C8 */  sd         $s6, 0xC8($a1)
/* 71B00 80070F00 FCB700D0 */  sd         $s7, 0xD0($a1)
/* 71B04 80070F04 FCBC00E8 */  sd         $gp, 0xE8($a1)
/* 71B08 80070F08 FCBD00F0 */  sd         $sp, 0xF0($a1)
/* 71B0C 80070F0C FCBE00F8 */  sd         $fp, 0xF8($a1)
/* 71B10 80070F10 FCBF0100 */  sd         $ra, 0x100($a1)
/* 71B14 80070F14 13600009 */  beqz       $k1, .L80070F3C
/* 71B18 80070F18 ACBF011C */   sw        $ra, 0x11C($a1)
/* 71B1C 80070F1C 445BF800 */  cfc1       $k1, $31
/* 71B20 80070F20 F4B40180 */  sdc1       $f20, 0x180($a1)
/* 71B24 80070F24 F4B60188 */  sdc1       $f22, 0x188($a1)
/* 71B28 80070F28 F4B80190 */  sdc1       $f24, 0x190($a1)
/* 71B2C 80070F2C F4BA0198 */  sdc1       $f26, 0x198($a1)
/* 71B30 80070F30 F4BC01A0 */  sdc1       $f28, 0x1A0($a1)
/* 71B34 80070F34 F4BE01A8 */  sdc1       $f30, 0x1A8($a1)
/* 71B38 80070F38 ACBB012C */  sw         $k1, 0x12C($a1)
.L80070F3C:
/* 71B3C 80070F3C 8CBB0118 */  lw         $k1, 0x118($a1)
/* 71B40 80070F40 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 71B44 80070F44 1120000D */  beqz       $t1, .L80070F7C
/* 71B48 80070F48 00000000 */   nop
/* 71B4C 80070F4C 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 71B50 80070F50 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 71B54 80070F54 8D080000 */  lw         $t0, 0x0($t0)
/* 71B58 80070F58 2401FFFF */  addiu      $at, $zero, -0x1
/* 71B5C 80070F5C 01014026 */  xor        $t0, $t0, $at
/* 71B60 80070F60 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 71B64 80070F64 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 71B68 80070F68 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 71B6C 80070F6C 01284825 */  or         $t1, $t1, $t0
/* 71B70 80070F70 0361D824 */  and        $k1, $k1, $at
/* 71B74 80070F74 0369D825 */  or         $k1, $k1, $t1
/* 71B78 80070F78 ACBB0118 */  sw         $k1, 0x118($a1)
.L80070F7C:
/* 71B7C 80070F7C 3C1BA430 */  lui        $k1, %hi(D_A430000C)
/* 71B80 80070F80 8F7B000C */  lw         $k1, %lo(D_A430000C)($k1)
/* 71B84 80070F84 1360000B */  beqz       $k1, .L80070FB4
/* 71B88 80070F88 00000000 */   nop
/* 71B8C 80070F8C 3C1A8009 */  lui        $k0, %hi(__OSGlobalIntMask)
/* 71B90 80070F90 275A4830 */  addiu      $k0, $k0, %lo(__OSGlobalIntMask)
/* 71B94 80070F94 8F5A0000 */  lw         $k0, 0x0($k0)
/* 71B98 80070F98 8CA80128 */  lw         $t0, 0x128($a1)
/* 71B9C 80070F9C 2401FFFF */  addiu      $at, $zero, -0x1
/* 71BA0 80070FA0 001AD402 */  srl        $k0, $k0, 16
/* 71BA4 80070FA4 0341D026 */  xor        $k0, $k0, $at
/* 71BA8 80070FA8 335A003F */  andi       $k0, $k0, 0x3F
/* 71BAC 80070FAC 0348D024 */  and        $k0, $k0, $t0
/* 71BB0 80070FB0 037AD825 */  or         $k1, $k1, $k0
.L80070FB4:
/* 71BB4 80070FB4 10800003 */  beqz       $a0, .L80070FC4
/* 71BB8 80070FB8 ACBB0128 */   sw        $k1, 0x128($a1)
/* 71BBC 80070FBC 0C01C3F3 */  jal        func_80070FCC
/* 71BC0 80070FC0 00000000 */   nop
.L80070FC4:
/* 71BC4 80070FC4 0801C409 */  j          func_80071024
/* 71BC8 80070FC8 00000000 */   nop

glabel func_80070FCC
/* 71BCC 80070FCC 8C980000 */  lw         $t8, 0x0($a0)
/* 71BD0 80070FD0 8CAF0004 */  lw         $t7, 0x4($a1)
/* 71BD4 80070FD4 0080C825 */  or         $t9, $a0, $zero
/* 71BD8 80070FD8 8F0E0004 */  lw         $t6, 0x4($t8)
/* 71BDC 80070FDC 01CF082A */  slt        $at, $t6, $t7
/* 71BE0 80070FE0 14200007 */  bnez       $at, .L80071000
/* 71BE4 80070FE4 00000000 */   nop
.L80070FE8:
/* 71BE8 80070FE8 0300C825 */  or         $t9, $t8, $zero
/* 71BEC 80070FEC 8F180000 */  lw         $t8, 0x0($t8)
/* 71BF0 80070FF0 8F0E0004 */  lw         $t6, 0x4($t8)
/* 71BF4 80070FF4 01CF082A */  slt        $at, $t6, $t7
/* 71BF8 80070FF8 1020FFFB */  beqz       $at, .L80070FE8
/* 71BFC 80070FFC 00000000 */   nop
.L80071000:
/* 71C00 80071000 8F380000 */  lw         $t8, 0x0($t9)
/* 71C04 80071004 ACB80000 */  sw         $t8, 0x0($a1)
/* 71C08 80071008 AF250000 */  sw         $a1, 0x0($t9)
/* 71C0C 8007100C 03E00008 */  jr         $ra
/* 71C10 80071010 ACA40008 */   sw        $a0, 0x8($a1)

glabel func_80071014
/* 71C14 80071014 8C820000 */  lw         $v0, 0x0($a0)
/* 71C18 80071018 8C590000 */  lw         $t9, 0x0($v0)
/* 71C1C 8007101C 03E00008 */  jr         $ra
/* 71C20 80071020 AC990000 */   sw        $t9, 0x0($a0)

# Handwritten function
glabel func_80071024
/* 71C24 80071024 3C048009 */  lui        $a0, %hi(D_80094878)
/* 71C28 80071028 0C01C405 */  jal        func_80071014
/* 71C2C 8007102C 24844878 */   addiu     $a0, $a0, %lo(D_80094878)
/* 71C30 80071030 3C018009 */  lui        $at, %hi(D_80094880)
/* 71C34 80071034 AC224880 */  sw         $v0, %lo(D_80094880)($at)
/* 71C38 80071038 24080004 */  addiu      $t0, $zero, 0x4
/* 71C3C 8007103C A4480010 */  sh         $t0, 0x10($v0)
/* 71C40 80071040 0040D025 */  or         $k0, $v0, $zero
/* 71C44 80071044 3C088009 */  lui        $t0, %hi(__OSGlobalIntMask)
/* 71C48 80071048 8F5B0118 */  lw         $k1, 0x118($k0)
/* 71C4C 8007104C 25084830 */  addiu      $t0, $t0, %lo(__OSGlobalIntMask)
/* 71C50 80071050 8D080000 */  lw         $t0, 0x0($t0)
/* 71C54 80071054 3C01FFFF */  lui        $at, (0xFFFF00FF >> 16)
/* 71C58 80071058 3369FF00 */  andi       $t1, $k1, 0xFF00
/* 71C5C 8007105C 342100FF */  ori        $at, $at, (0xFFFF00FF & 0xFFFF)
/* 71C60 80071060 3108FF00 */  andi       $t0, $t0, 0xFF00
/* 71C64 80071064 01284824 */  and        $t1, $t1, $t0
/* 71C68 80071068 0361D824 */  and        $k1, $k1, $at
/* 71C6C 8007106C 0369D825 */  or         $k1, $k1, $t1
/* 71C70 80071070 409B6000 */  mtc0       $k1, $12
/* 71C74 80071074 DF5B0108 */  ld         $k1, 0x108($k0)
/* 71C78 80071078 DF410020 */  ld         $at, 0x20($k0)
/* 71C7C 8007107C DF420028 */  ld         $v0, 0x28($k0)
/* 71C80 80071080 03600013 */  mtlo       $k1
/* 71C84 80071084 DF5B0110 */  ld         $k1, 0x110($k0)
/* 71C88 80071088 DF430030 */  ld         $v1, 0x30($k0)
/* 71C8C 8007108C DF440038 */  ld         $a0, 0x38($k0)
/* 71C90 80071090 DF450040 */  ld         $a1, 0x40($k0)
/* 71C94 80071094 DF460048 */  ld         $a2, 0x48($k0)
/* 71C98 80071098 DF470050 */  ld         $a3, 0x50($k0)
/* 71C9C 8007109C DF480058 */  ld         $t0, 0x58($k0)
/* 71CA0 800710A0 DF490060 */  ld         $t1, 0x60($k0)
/* 71CA4 800710A4 DF4A0068 */  ld         $t2, 0x68($k0)
/* 71CA8 800710A8 DF4B0070 */  ld         $t3, 0x70($k0)
/* 71CAC 800710AC DF4C0078 */  ld         $t4, 0x78($k0)
/* 71CB0 800710B0 DF4D0080 */  ld         $t5, 0x80($k0)
/* 71CB4 800710B4 DF4E0088 */  ld         $t6, 0x88($k0)
/* 71CB8 800710B8 DF4F0090 */  ld         $t7, 0x90($k0)
/* 71CBC 800710BC DF500098 */  ld         $s0, 0x98($k0)
/* 71CC0 800710C0 DF5100A0 */  ld         $s1, 0xA0($k0)
/* 71CC4 800710C4 DF5200A8 */  ld         $s2, 0xA8($k0)
/* 71CC8 800710C8 DF5300B0 */  ld         $s3, 0xB0($k0)
/* 71CCC 800710CC DF5400B8 */  ld         $s4, 0xB8($k0)
/* 71CD0 800710D0 DF5500C0 */  ld         $s5, 0xC0($k0)
/* 71CD4 800710D4 DF5600C8 */  ld         $s6, 0xC8($k0)
/* 71CD8 800710D8 DF5700D0 */  ld         $s7, 0xD0($k0)
/* 71CDC 800710DC DF5800D8 */  ld         $t8, 0xD8($k0)
/* 71CE0 800710E0 DF5900E0 */  ld         $t9, 0xE0($k0)
/* 71CE4 800710E4 DF5C00E8 */  ld         $gp, 0xE8($k0)
/* 71CE8 800710E8 03600011 */  mthi       $k1
/* 71CEC 800710EC DF5D00F0 */  ld         $sp, 0xF0($k0)
/* 71CF0 800710F0 DF5E00F8 */  ld         $fp, 0xF8($k0)
/* 71CF4 800710F4 DF5F0100 */  ld         $ra, 0x100($k0)
/* 71CF8 800710F8 8F5B011C */  lw         $k1, 0x11C($k0)
/* 71CFC 800710FC 409B7000 */  mtc0       $k1, $14
/* 71D00 80071100 8F5B0018 */  lw         $k1, 0x18($k0)
/* 71D04 80071104 13600013 */  beqz       $k1, .L80071154
/* 71D08 80071108 00000000 */   nop
/* 71D0C 8007110C 8F5B012C */  lw         $k1, 0x12C($k0)
/* 71D10 80071110 44DBF800 */  ctc1       $k1, $31
/* 71D14 80071114 D7400130 */  ldc1       $f0, 0x130($k0)
/* 71D18 80071118 D7420138 */  ldc1       $f2, 0x138($k0)
/* 71D1C 8007111C D7440140 */  ldc1       $f4, 0x140($k0)
/* 71D20 80071120 D7460148 */  ldc1       $f6, 0x148($k0)
/* 71D24 80071124 D7480150 */  ldc1       $f8, 0x150($k0)
/* 71D28 80071128 D74A0158 */  ldc1       $f10, 0x158($k0)
/* 71D2C 8007112C D74C0160 */  ldc1       $f12, 0x160($k0)
/* 71D30 80071130 D74E0168 */  ldc1       $f14, 0x168($k0)
/* 71D34 80071134 D7500170 */  ldc1       $f16, 0x170($k0)
/* 71D38 80071138 D7520178 */  ldc1       $f18, 0x178($k0)
/* 71D3C 8007113C D7540180 */  ldc1       $f20, 0x180($k0)
/* 71D40 80071140 D7560188 */  ldc1       $f22, 0x188($k0)
/* 71D44 80071144 D7580190 */  ldc1       $f24, 0x190($k0)
/* 71D48 80071148 D75A0198 */  ldc1       $f26, 0x198($k0)
/* 71D4C 8007114C D75C01A0 */  ldc1       $f28, 0x1A0($k0)
/* 71D50 80071150 D75E01A8 */  ldc1       $f30, 0x1A8($k0)
.L80071154:
/* 71D54 80071154 8F5B0128 */  lw         $k1, 0x128($k0)
/* 71D58 80071158 3C1A8009 */  lui        $k0, %hi(__OSGlobalIntMask)
/* 71D5C 8007115C 275A4830 */  addiu      $k0, $k0, %lo(__OSGlobalIntMask)
/* 71D60 80071160 8F5A0000 */  lw         $k0, 0x0($k0)
/* 71D64 80071164 001AD402 */  srl        $k0, $k0, 16
/* 71D68 80071168 037AD824 */  and        $k1, $k1, $k0
/* 71D6C 8007116C 001BD840 */  sll        $k1, $k1, 1
/* 71D70 80071170 3C1A800A */  lui        $k0, %hi(D_80098C40)
/* 71D74 80071174 275A8C40 */  addiu      $k0, $k0, %lo(D_80098C40)
/* 71D78 80071178 037AD821 */  addu       $k1, $k1, $k0
/* 71D7C 8007117C 977B0000 */  lhu        $k1, 0x0($k1)
/* 71D80 80071180 3C1AA430 */  lui        $k0, %hi(D_A430000C)
/* 71D84 80071184 275A000C */  addiu      $k0, $k0, %lo(D_A430000C)
/* 71D88 80071188 AF5B0000 */  sw         $k1, 0x0($k0)
/* 71D8C 8007118C 00000000 */  nop
/* 71D90 80071190 00000000 */  nop
/* 71D94 80071194 00000000 */  nop
/* 71D98 80071198 00000000 */  nop
/* 71D9C 8007119C 42000018 */  eret

glabel __osCleanupThread
/* 71DA0 800711A0 0C01E748 */  jal        osDestroyThread
/* 71DA4 800711A4 00002025 */   or        $a0, $zero, $zero
/* 71DA8 800711A8 00000000 */  nop
/* 71DAC 800711AC 00000000 */  nop

glabel func_800711B0
/* 71DB0 800711B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 71DB4 800711B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 71DB8 800711B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 71DBC 800711BC AFA60020 */  sw         $a2, 0x20($sp)
/* 71DC0 800711C0 8CAE0008 */  lw         $t6, 0x8($a1)
/* 71DC4 800711C4 51C0001A */  beql       $t6, $zero, .L80071230
/* 71DC8 800711C8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 71DCC 800711CC 0C01A040 */  jal        func_80068100
/* 71DD0 800711D0 AFA5001C */   sw        $a1, 0x1C($sp)
/* 71DD4 800711D4 8FA7001C */  lw         $a3, 0x1C($sp)
/* 71DD8 800711D8 10400014 */  beqz       $v0, .L8007122C
/* 71DDC 800711DC 00403025 */   or        $a2, $v0, $zero
/* 71DE0 800711E0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 71DE4 800711E4 8CF90008 */  lw         $t9, 0x8($a3)
/* 71DE8 800711E8 240A000E */  addiu      $t2, $zero, 0xE
/* 71DEC 800711EC 8DF8001C */  lw         $t8, 0x1C($t7)
/* 71DF0 800711F0 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 71DF4 800711F4 A44A0008 */  sh         $t2, 0x8($v0)
/* 71DF8 800711F8 24050003 */  addiu      $a1, $zero, 0x3
/* 71DFC 800711FC 03084821 */  addu       $t1, $t8, $t0
/* 71E00 80071200 AC490004 */  sw         $t1, 0x4($v0)
/* 71E04 80071204 8FAB0020 */  lw         $t3, 0x20($sp)
/* 71E08 80071208 AC400000 */  sw         $zero, 0x0($v0)
/* 71E0C 8007120C AC4B000C */  sw         $t3, 0xC($v0)
/* 71E10 80071210 84EC001A */  lh         $t4, 0x1A($a3)
/* 71E14 80071214 A44C000A */  sh         $t4, 0xA($v0)
/* 71E18 80071218 8CED0008 */  lw         $t5, 0x8($a3)
/* 71E1C 8007121C 8DA4000C */  lw         $a0, 0xC($t5)
/* 71E20 80071220 8C990008 */  lw         $t9, 0x8($a0)
/* 71E24 80071224 0320F809 */  jalr       $t9
/* 71E28 80071228 00000000 */   nop
.L8007122C:
/* 71E2C 8007122C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80071230:
/* 71E30 80071230 27BD0018 */  addiu      $sp, $sp, 0x18
/* 71E34 80071234 03E00008 */  jr         $ra
/* 71E38 80071238 00000000 */   nop
/* 71E3C 8007123C 00000000 */  nop

glabel func_80071240
/* 71E40 80071240 03E00008 */  jr         $ra
/* 71E44 80071244 AC800000 */   sw        $zero, 0x0($a0)
/* 71E48 80071248 00000000 */  nop
/* 71E4C 8007124C 00000000 */  nop

glabel func_80071250
/* 71E50 80071250 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 71E54 80071254 AFBF0014 */  sw         $ra, 0x14($sp)
/* 71E58 80071258 8C8E0000 */  lw         $t6, 0x0($a0)
/* 71E5C 8007125C 00803825 */  or         $a3, $a0, $zero
/* 71E60 80071260 24040001 */  addiu      $a0, $zero, 0x1
/* 71E64 80071264 51C0001E */  beql       $t6, $zero, .L800712E0
/* 71E68 80071268 8FBF0014 */   lw        $ra, 0x14($sp)
/* 71E6C 8007126C AFA50024 */  sw         $a1, 0x24($sp)
/* 71E70 80071270 AFA00018 */  sw         $zero, 0x18($sp)
/* 71E74 80071274 0C01AAC4 */  jal        func_8006AB10
/* 71E78 80071278 AFA70020 */   sw        $a3, 0x20($sp)
/* 71E7C 8007127C 8FA70020 */  lw         $a3, 0x20($sp)
/* 71E80 80071280 8FA50024 */  lw         $a1, 0x24($sp)
/* 71E84 80071284 8FA60018 */  lw         $a2, 0x18($sp)
/* 71E88 80071288 8CE30000 */  lw         $v1, 0x0($a3)
/* 71E8C 8007128C 00402025 */  or         $a0, $v0, $zero
/* 71E90 80071290 10600010 */  beqz       $v1, .L800712D4
/* 71E94 80071294 00000000 */   nop
.L80071298:
/* 71E98 80071298 5465000B */  bnel       $v1, $a1, .L800712C8
/* 71E9C 8007129C 00603025 */   or        $a2, $v1, $zero
/* 71EA0 800712A0 50C00005 */  beql       $a2, $zero, .L800712B8
/* 71EA4 800712A4 8C780000 */   lw        $t8, 0x0($v1)
/* 71EA8 800712A8 8C6F0000 */  lw         $t7, 0x0($v1)
/* 71EAC 800712AC 10000003 */  b          .L800712BC
/* 71EB0 800712B0 ACCF0000 */   sw        $t7, 0x0($a2)
/* 71EB4 800712B4 8C780000 */  lw         $t8, 0x0($v1)
.L800712B8:
/* 71EB8 800712B8 ACF80000 */  sw         $t8, 0x0($a3)
.L800712BC:
/* 71EBC 800712BC 10000005 */  b          .L800712D4
/* 71EC0 800712C0 ACA00000 */   sw        $zero, 0x0($a1)
/* 71EC4 800712C4 00603025 */  or         $a2, $v1, $zero
.L800712C8:
/* 71EC8 800712C8 8C630000 */  lw         $v1, 0x0($v1)
/* 71ECC 800712CC 1460FFF2 */  bnez       $v1, .L80071298
/* 71ED0 800712D0 00000000 */   nop
.L800712D4:
/* 71ED4 800712D4 0C01AAC4 */  jal        func_8006AB10
/* 71ED8 800712D8 00000000 */   nop
/* 71EDC 800712DC 8FBF0014 */  lw         $ra, 0x14($sp)
.L800712E0:
/* 71EE0 800712E0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 71EE4 800712E4 03E00008 */  jr         $ra
/* 71EE8 800712E8 00000000 */   nop
/* 71EEC 800712EC 00000000 */  nop

# Handwritten function
glabel func_800712F0
/* 71EF0 800712F0 40085000 */  mfc0       $t0, $10
/* 71EF4 800712F4 310900FF */  andi       $t1, $t0, 0xFF
/* 71EF8 800712F8 2401E000 */  addiu      $at, $zero, -0x2000
/* 71EFC 800712FC 00815024 */  and        $t2, $a0, $at
/* 71F00 80071300 012A4825 */  or         $t1, $t1, $t2
/* 71F04 80071304 40895000 */  mtc0       $t1, $10
/* 71F08 80071308 00000000 */  nop
/* 71F0C 8007130C 00000000 */  nop
/* 71F10 80071310 00000000 */  nop
/* 71F14 80071314 42000008 */  tlbp
/* 71F18 80071318 00000000 */  nop
/* 71F1C 8007131C 00000000 */  nop
/* 71F20 80071320 400B0000 */  mfc0       $t3, $0
/* 71F24 80071324 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 71F28 80071328 01615824 */  and        $t3, $t3, $at
/* 71F2C 8007132C 1560001A */  bnez       $t3, .L80071398
/* 71F30 80071330 00000000 */   nop
/* 71F34 80071334 42000001 */  tlbr
/* 71F38 80071338 00000000 */  nop
/* 71F3C 8007133C 00000000 */  nop
/* 71F40 80071340 00000000 */  nop
/* 71F44 80071344 400B2800 */  mfc0       $t3, $5
/* 71F48 80071348 216B2000 */  addi       $t3, $t3, 0x2000
/* 71F4C 8007134C 000B5842 */  srl        $t3, $t3, 1
/* 71F50 80071350 01646024 */  and        $t4, $t3, $a0
/* 71F54 80071354 15800004 */  bnez       $t4, .L80071368
/* 71F58 80071358 216BFFFF */   addi      $t3, $t3, -0x1
/* 71F5C 8007135C 40021000 */  mfc0       $v0, $2
/* 71F60 80071360 10000002 */  b          .L8007136C
/* 71F64 80071364 00000000 */   nop
.L80071368:
/* 71F68 80071368 40021800 */  mfc0       $v0, $3
.L8007136C:
/* 71F6C 8007136C 304D0002 */  andi       $t5, $v0, 0x2
/* 71F70 80071370 11A00009 */  beqz       $t5, .L80071398
/* 71F74 80071374 00000000 */   nop
/* 71F78 80071378 3C013FFF */  lui        $at, (0x3FFFFFC0 >> 16)
/* 71F7C 8007137C 3421FFC0 */  ori        $at, $at, (0x3FFFFFC0 & 0xFFFF)
/* 71F80 80071380 00411024 */  and        $v0, $v0, $at
/* 71F84 80071384 00021180 */  sll        $v0, $v0, 6
/* 71F88 80071388 008B6824 */  and        $t5, $a0, $t3
/* 71F8C 8007138C 004D1020 */  add        $v0, $v0, $t5
/* 71F90 80071390 10000002 */  b          .L8007139C
/* 71F94 80071394 00000000 */   nop
.L80071398:
/* 71F98 80071398 2402FFFF */  addiu      $v0, $zero, -0x1
.L8007139C:
/* 71F9C 8007139C 40885000 */  mtc0       $t0, $10
/* 71FA0 800713A0 03E00008 */  jr         $ra
/* 71FA4 800713A4 00000000 */   nop
/* 71FA8 800713A8 00000000 */  nop
/* 71FAC 800713AC 00000000 */  nop

glabel func_800713B0
/* 71FB0 800713B0 3C0EA450 */  lui        $t6, %hi(D_A450000C)
/* 71FB4 800713B4 8DC4000C */  lw         $a0, %lo(D_A450000C)($t6)
/* 71FB8 800713B8 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 71FBC 800713BC 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 71FC0 800713C0 00817824 */  and        $t7, $a0, $at
/* 71FC4 800713C4 11E00003 */  beqz       $t7, .L800713D4
/* 71FC8 800713C8 00000000 */   nop
/* 71FCC 800713CC 10000002 */  b          .L800713D8
/* 71FD0 800713D0 24020001 */   addiu     $v0, $zero, 0x1
.L800713D4:
/* 71FD4 800713D4 00001025 */  or         $v0, $zero, $zero
.L800713D8:
/* 71FD8 800713D8 03E00008 */  jr         $ra
/* 71FDC 800713DC 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_800713E0
/* 71FE0 800713E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 71FE4 800713E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 71FE8 800713E8 3C058007 */  lui        $a1, %hi(func_80073964)
/* 71FEC 800713EC 3C068007 */  lui        $a2, %hi(func_80073930)
/* 71FF0 800713F0 24C63930 */  addiu      $a2, $a2, %lo(func_80073930)
/* 71FF4 800713F4 24A53964 */  addiu      $a1, $a1, %lo(func_80073964)
/* 71FF8 800713F8 AFA40018 */  sw         $a0, 0x18($sp)
/* 71FFC 800713FC 0C01E78C */  jal        func_80079E30
/* 72000 80071400 24070003 */   addiu     $a3, $zero, 0x3
/* 72004 80071404 8FA40018 */  lw         $a0, 0x18($sp)
/* 72008 80071408 240E0001 */  addiu      $t6, $zero, 0x1
/* 7200C 8007140C AC800014 */  sw         $zero, 0x14($a0)
/* 72010 80071410 AC8E0018 */  sw         $t6, 0x18($a0)
/* 72014 80071414 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72018 80071418 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7201C 8007141C 03E00008 */  jr         $ra
/* 72020 80071420 00000000 */   nop

glabel func_80071424
/* 72024 80071424 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72028 80071428 AFA5001C */  sw         $a1, 0x1C($sp)
/* 7202C 8007142C AFA60020 */  sw         $a2, 0x20($sp)
/* 72030 80071430 AFBF0014 */  sw         $ra, 0x14($sp)
/* 72034 80071434 3C068007 */  lui        $a2, %hi(func_80071C20)
/* 72038 80071438 3C058007 */  lui        $a1, %hi(func_80071C50)
/* 7203C 8007143C 24A51C50 */  addiu      $a1, $a1, %lo(func_80071C50)
/* 72040 80071440 24C61C20 */  addiu      $a2, $a2, %lo(func_80071C20)
/* 72044 80071444 AFA40018 */  sw         $a0, 0x18($sp)
/* 72048 80071448 0C01E78C */  jal        func_80079E30
/* 7204C 8007144C 24070007 */   addiu     $a3, $zero, 0x7
/* 72050 80071450 8FA40018 */  lw         $a0, 0x18($sp)
/* 72054 80071454 AC800014 */  sw         $zero, 0x14($a0)
/* 72058 80071458 8FAE0020 */  lw         $t6, 0x20($sp)
/* 7205C 8007145C AC8E0018 */  sw         $t6, 0x18($a0)
/* 72060 80071460 8FAF001C */  lw         $t7, 0x1C($sp)
/* 72064 80071464 AC8F001C */  sw         $t7, 0x1C($a0)
/* 72068 80071468 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7206C 8007146C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 72070 80071470 03E00008 */  jr         $ra
/* 72074 80071474 00000000 */   nop

glabel func_80071478
/* 72078 80071478 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7207C 8007147C AFA5001C */  sw         $a1, 0x1C($sp)
/* 72080 80071480 AFA60020 */  sw         $a2, 0x20($sp)
/* 72084 80071484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 72088 80071488 3C068007 */  lui        $a2, %hi(func_80073820)
/* 7208C 8007148C 3C058007 */  lui        $a1, %hi(func_80073850)
/* 72090 80071490 24A53850 */  addiu      $a1, $a1, %lo(func_80073850)
/* 72094 80071494 24C63820 */  addiu      $a2, $a2, %lo(func_80073820)
/* 72098 80071498 AFA40018 */  sw         $a0, 0x18($sp)
/* 7209C 8007149C 0C01E78C */  jal        func_80079E30
/* 720A0 800714A0 24070006 */   addiu     $a3, $zero, 0x6
/* 720A4 800714A4 8FA40018 */  lw         $a0, 0x18($sp)
/* 720A8 800714A8 AC800014 */  sw         $zero, 0x14($a0)
/* 720AC 800714AC 8FAE0020 */  lw         $t6, 0x20($sp)
/* 720B0 800714B0 AC8E0018 */  sw         $t6, 0x18($a0)
/* 720B4 800714B4 8FAF001C */  lw         $t7, 0x1C($sp)
/* 720B8 800714B8 AC8F001C */  sw         $t7, 0x1C($a0)
/* 720BC 800714BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 720C0 800714C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 720C4 800714C4 03E00008 */  jr         $ra
/* 720C8 800714C8 00000000 */   nop

glabel func_800714CC
/* 720CC 800714CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 720D0 800714D0 AFA50024 */  sw         $a1, 0x24($sp)
/* 720D4 800714D4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 720D8 800714D8 3C058007 */  lui        $a1, %hi(func_800729AC)
/* 720DC 800714DC 3C068007 */  lui        $a2, %hi(func_800728C0)
/* 720E0 800714E0 24C628C0 */  addiu      $a2, $a2, %lo(func_800728C0)
/* 720E4 800714E4 24A529AC */  addiu      $a1, $a1, %lo(func_800729AC)
/* 720E8 800714E8 AFA40020 */  sw         $a0, 0x20($sp)
/* 720EC 800714EC 0C01E78C */  jal        func_80079E30
/* 720F0 800714F0 24070001 */   addiu     $a3, $zero, 0x1
/* 720F4 800714F4 240E0020 */  addiu      $t6, $zero, 0x20
/* 720F8 800714F8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 720FC 800714FC 00002025 */  or         $a0, $zero, $zero
/* 72100 80071500 00002825 */  or         $a1, $zero, $zero
/* 72104 80071504 8FA60024 */  lw         $a2, 0x24($sp)
/* 72108 80071508 0C0196D0 */  jal        func_80065B40
/* 7210C 8007150C 24070001 */   addiu     $a3, $zero, 0x1
/* 72110 80071510 8FA80020 */  lw         $t0, 0x20($sp)
/* 72114 80071514 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 72118 80071518 44802000 */  mtc1       $zero, $f4
/* 7211C 8007151C 44813000 */  mtc1       $at, $f6
/* 72120 80071520 240F0001 */  addiu      $t7, $zero, 0x1
/* 72124 80071524 AD020014 */  sw         $v0, 0x14($t0)
/* 72128 80071528 AD0F0024 */  sw         $t7, 0x24($t0)
/* 7212C 8007152C AD000030 */  sw         $zero, 0x30($t0)
/* 72130 80071530 AD00001C */  sw         $zero, 0x1C($t0)
/* 72134 80071534 AD000028 */  sw         $zero, 0x28($t0)
/* 72138 80071538 AD00002C */  sw         $zero, 0x2C($t0)
/* 7213C 8007153C E5040020 */  swc1       $f4, 0x20($t0)
/* 72140 80071540 E5060018 */  swc1       $f6, 0x18($t0)
/* 72144 80071544 8FBF001C */  lw         $ra, 0x1C($sp)
/* 72148 80071548 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7214C 8007154C 03E00008 */  jr         $ra
/* 72150 80071550 00000000 */   nop

glabel func_80071554
/* 72154 80071554 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 72158 80071558 AFA5002C */  sw         $a1, 0x2C($sp)
/* 7215C 8007155C AFA60030 */  sw         $a2, 0x30($sp)
/* 72160 80071560 AFBF0024 */  sw         $ra, 0x24($sp)
/* 72164 80071564 AFB00020 */  sw         $s0, 0x20($sp)
/* 72168 80071568 3C068007 */  lui        $a2, %hi(func_80071D70)
/* 7216C 8007156C 3C058007 */  lui        $a1, %hi(func_8007241C)
/* 72170 80071570 00808025 */  or         $s0, $a0, $zero
/* 72174 80071574 24A5241C */  addiu      $a1, $a1, %lo(func_8007241C)
/* 72178 80071578 24C61D70 */  addiu      $a2, $a2, %lo(func_80071D70)
/* 7217C 8007157C 0C01E78C */  jal        func_80079E30
/* 72180 80071580 00003825 */   or        $a3, $zero, $zero
/* 72184 80071584 240E0020 */  addiu      $t6, $zero, 0x20
/* 72188 80071588 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7218C 8007158C 00002025 */  or         $a0, $zero, $zero
/* 72190 80071590 00002825 */  or         $a1, $zero, $zero
/* 72194 80071594 8FA60030 */  lw         $a2, 0x30($sp)
/* 72198 80071598 0C0196D0 */  jal        func_80065B40
/* 7219C 8007159C 24070001 */   addiu     $a3, $zero, 0x1
/* 721A0 800715A0 AE020014 */  sw         $v0, 0x14($s0)
/* 721A4 800715A4 240F0020 */  addiu      $t7, $zero, 0x20
/* 721A8 800715A8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 721AC 800715AC 8FA60030 */  lw         $a2, 0x30($sp)
/* 721B0 800715B0 00002025 */  or         $a0, $zero, $zero
/* 721B4 800715B4 00002825 */  or         $a1, $zero, $zero
/* 721B8 800715B8 0C0196D0 */  jal        func_80065B40
/* 721BC 800715BC 24070001 */   addiu     $a3, $zero, 0x1
/* 721C0 800715C0 AE020018 */  sw         $v0, 0x18($s0)
/* 721C4 800715C4 8FB9002C */  lw         $t9, 0x2C($sp)
/* 721C8 800715C8 26040034 */  addiu      $a0, $s0, 0x34
/* 721CC 800715CC 0320F809 */  jalr       $t9
/* 721D0 800715D0 00000000 */   nop
/* 721D4 800715D4 24180001 */  addiu      $t8, $zero, 0x1
/* 721D8 800715D8 AE020030 */  sw         $v0, 0x30($s0)
/* 721DC 800715DC AE00003C */  sw         $zero, 0x3C($s0)
/* 721E0 800715E0 AE180040 */  sw         $t8, 0x40($s0)
/* 721E4 800715E4 AE000044 */  sw         $zero, 0x44($s0)
/* 721E8 800715E8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 721EC 800715EC 8FB00020 */  lw         $s0, 0x20($sp)
/* 721F0 800715F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 721F4 800715F4 03E00008 */  jr         $ra
/* 721F8 800715F8 00000000 */   nop

glabel func_800715FC
/* 721FC 800715FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72200 80071600 AFA50024 */  sw         $a1, 0x24($sp)
/* 72204 80071604 AFBF001C */  sw         $ra, 0x1C($sp)
/* 72208 80071608 3C058007 */  lui        $a1, %hi(func_800732CC)
/* 7220C 8007160C 3C068007 */  lui        $a2, %hi(func_80072CD4)
/* 72210 80071610 24C62CD4 */  addiu      $a2, $a2, %lo(func_80072CD4)
/* 72214 80071614 24A532CC */  addiu      $a1, $a1, %lo(func_800732CC)
/* 72218 80071618 AFA40020 */  sw         $a0, 0x20($sp)
/* 7221C 8007161C 0C01E78C */  jal        func_80079E30
/* 72220 80071620 24070004 */   addiu     $a3, $zero, 0x4
/* 72224 80071624 240E0050 */  addiu      $t6, $zero, 0x50
/* 72228 80071628 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7222C 8007162C 00002025 */  or         $a0, $zero, $zero
/* 72230 80071630 00002825 */  or         $a1, $zero, $zero
/* 72234 80071634 8FA60024 */  lw         $a2, 0x24($sp)
/* 72238 80071638 0C0196D0 */  jal        func_80065B40
/* 7223C 8007163C 24070001 */   addiu     $a3, $zero, 0x1
/* 72240 80071640 8FA80020 */  lw         $t0, 0x20($sp)
/* 72244 80071644 24030001 */  addiu      $v1, $zero, 0x1
/* 72248 80071648 AD020014 */  sw         $v0, 0x14($t0)
/* 7224C 8007164C AD030038 */  sw         $v1, 0x38($t0)
/* 72250 80071650 AD000048 */  sw         $zero, 0x48($t0)
/* 72254 80071654 A503001A */  sh         $v1, 0x1A($t0)
/* 72258 80071658 A5030028 */  sh         $v1, 0x28($t0)
/* 7225C 8007165C A503002E */  sh         $v1, 0x2E($t0)
/* 72260 80071660 A503001C */  sh         $v1, 0x1C($t0)
/* 72264 80071664 A503001E */  sh         $v1, 0x1E($t0)
/* 72268 80071668 A5000020 */  sh         $zero, 0x20($t0)
/* 7226C 8007166C A5000022 */  sh         $zero, 0x22($t0)
/* 72270 80071670 A5030026 */  sh         $v1, 0x26($t0)
/* 72274 80071674 A5000024 */  sh         $zero, 0x24($t0)
/* 72278 80071678 AD000030 */  sw         $zero, 0x30($t0)
/* 7227C 8007167C AD000034 */  sw         $zero, 0x34($t0)
/* 72280 80071680 A5000018 */  sh         $zero, 0x18($t0)
/* 72284 80071684 AD00003C */  sw         $zero, 0x3C($t0)
/* 72288 80071688 AD000040 */  sw         $zero, 0x40($t0)
/* 7228C 8007168C AD000044 */  sw         $zero, 0x44($t0)
/* 72290 80071690 8FBF001C */  lw         $ra, 0x1C($sp)
/* 72294 80071694 27BD0020 */  addiu      $sp, $sp, 0x20
/* 72298 80071698 03E00008 */  jr         $ra
/* 7229C 8007169C 00000000 */   nop

glabel func_800716A0
/* 722A0 800716A0 84820000 */  lh         $v0, 0x0($a0)
/* 722A4 800716A4 24194000 */  addiu      $t9, $zero, 0x4000
/* 722A8 800716A8 24090001 */  addiu      $t1, $zero, 0x1
/* 722AC 800716AC 00027380 */  sll        $t6, $v0, 14
/* 722B0 800716B0 000E1BC3 */  sra        $v1, $t6, 15
/* 722B4 800716B4 00037C00 */  sll        $t7, $v1, 16
/* 722B8 800716B8 000F1C03 */  sra        $v1, $t7, 16
/* 722BC 800716BC 03234023 */  subu       $t0, $t9, $v1
/* 722C0 800716C0 A4880002 */  sh         $t0, 0x2($a0)
/* 722C4 800716C4 AC89002C */  sw         $t1, 0x2C($a0)
/* 722C8 800716C8 00002825 */  or         $a1, $zero, $zero
/* 722CC 800716CC 00803025 */  or         $a2, $a0, $zero
.L800716D0:
/* 722D0 800716D0 24A50001 */  addiu      $a1, $a1, 0x1
/* 722D4 800716D4 28A10008 */  slti       $at, $a1, 0x8
/* 722D8 800716D8 24C60002 */  addiu      $a2, $a2, 0x2
/* 722DC 800716DC 1420FFFC */  bnez       $at, .L800716D0
/* 722E0 800716E0 A4C00006 */   sh        $zero, 0x6($a2)
/* 722E4 800716E4 44832000 */  mtc1       $v1, $f4
/* 722E8 800716E8 3C0140D0 */  lui        $at, (0x40D00000 >> 16)
/* 722EC 800716EC 44816800 */  mtc1       $at, $f13
/* 722F0 800716F0 468021A1 */  cvt.d.w    $f6, $f4
/* 722F4 800716F4 44806000 */  mtc1       $zero, $f12
/* 722F8 800716F8 24A50001 */  addiu      $a1, $a1, 0x1
/* 722FC 800716FC 28A10010 */  slti       $at, $a1, 0x10
/* 72300 80071700 A4C30008 */  sh         $v1, 0x8($a2)
/* 72304 80071704 462C3083 */  div.d      $f2, $f6, $f12
/* 72308 80071708 24C60002 */  addiu      $a2, $a2, 0x2
/* 7230C 8007170C 1020000A */  beqz       $at, .L80071738
/* 72310 80071710 46201006 */   mov.d     $f0, $f2
.L80071714:
/* 72314 80071714 46220002 */  mul.d      $f0, $f0, $f2
/* 72318 80071718 24A50001 */  addiu      $a1, $a1, 0x1
/* 7231C 8007171C 28A10010 */  slti       $at, $a1, 0x10
/* 72320 80071720 24C60002 */  addiu      $a2, $a2, 0x2
/* 72324 80071724 462C0202 */  mul.d      $f8, $f0, $f12
/* 72328 80071728 4620428D */  trunc.w.d  $f10, $f8
/* 7232C 8007172C 440B5000 */  mfc1       $t3, $f10
/* 72330 80071730 1420FFF8 */  bnez       $at, .L80071714
/* 72334 80071734 A4CB0006 */   sh        $t3, 0x6($a2)
.L80071738:
/* 72338 80071738 03E00008 */  jr         $ra
/* 7233C 8007173C 00000000 */   nop

glabel func_80071740
/* 72340 80071740 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 72344 80071744 AFB60058 */  sw         $s6, 0x58($sp)
/* 72348 80071748 00C0B025 */  or         $s6, $a2, $zero
/* 7234C 8007174C AFBF0064 */  sw         $ra, 0x64($sp)
/* 72350 80071750 AFB50054 */  sw         $s5, 0x54($sp)
/* 72354 80071754 AFA5006C */  sw         $a1, 0x6C($sp)
/* 72358 80071758 3C068008 */  lui        $a2, %hi(alFxParam)
/* 7235C 8007175C 0080A825 */  or         $s5, $a0, $zero
/* 72360 80071760 AFBE0060 */  sw         $fp, 0x60($sp)
/* 72364 80071764 AFB7005C */  sw         $s7, 0x5C($sp)
/* 72368 80071768 AFB40050 */  sw         $s4, 0x50($sp)
/* 7236C 8007176C AFB3004C */  sw         $s3, 0x4C($sp)
/* 72370 80071770 AFB20048 */  sw         $s2, 0x48($sp)
/* 72374 80071774 AFB10044 */  sw         $s1, 0x44($sp)
/* 72378 80071778 AFB00040 */  sw         $s0, 0x40($sp)
/* 7237C 8007177C F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 72380 80071780 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 72384 80071784 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 72388 80071788 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7238C 8007178C 24C6A744 */  addiu      $a2, $a2, %lo(alFxParam)
/* 72390 80071790 00002825 */  or         $a1, $zero, $zero
/* 72394 80071794 0C01E78C */  jal        func_80079E30
/* 72398 80071798 24070005 */   addiu     $a3, $zero, 0x5
/* 7239C 8007179C 8FA2006C */  lw         $v0, 0x6C($sp)
/* 723A0 800717A0 3C0E8008 */  lui        $t6, %hi(alFxPull)
/* 723A4 800717A4 3C0F8008 */  lui        $t7, %hi(alFxParamHdl)
/* 723A8 800717A8 25CEA75C */  addiu      $t6, $t6, %lo(alFxPull)
/* 723AC 800717AC 25EFA4E8 */  addiu      $t7, $t7, %lo(alFxParamHdl)
/* 723B0 800717B0 AEAE0004 */  sw         $t6, 0x4($s5)
/* 723B4 800717B4 AEAF0028 */  sw         $t7, 0x28($s5)
/* 723B8 800717B8 9058001C */  lbu        $t8, 0x1C($v0)
/* 723BC 800717BC 3C138009 */  lui        $s3, %hi(D_80094A18)
/* 723C0 800717C0 26734A18 */  addiu      $s3, $s3, %lo(D_80094A18)
/* 723C4 800717C4 2719FFFF */  addiu      $t9, $t8, -0x1
/* 723C8 800717C8 2F210006 */  sltiu      $at, $t9, 0x6
/* 723CC 800717CC 10200017 */  beqz       $at, .L8007182C
/* 723D0 800717D0 0019C880 */   sll       $t9, $t9, 2
/* 723D4 800717D4 3C01800A */  lui        $at, %hi(jtbl_80098DA0_main)
/* 723D8 800717D8 00390821 */  addu       $at, $at, $t9
/* 723DC 800717DC 8C398DA0 */  lw         $t9, %lo(jtbl_80098DA0_main)($at)
/* 723E0 800717E0 03200008 */  jr         $t9
/* 723E4 800717E4 00000000 */   nop
glabel L800717E8
/* 723E8 800717E8 3C138009 */  lui        $s3, %hi(D_800948B0)
/* 723EC 800717EC 1000000F */  b          .L8007182C
/* 723F0 800717F0 267348B0 */   addiu     $s3, $s3, %lo(D_800948B0)
glabel L800717F4
/* 723F4 800717F4 3C138009 */  lui        $s3, %hi(D_80094918)
/* 723F8 800717F8 1000000C */  b          .L8007182C
/* 723FC 800717FC 26734918 */   addiu     $s3, $s3, %lo(D_80094918)
glabel L80071800
/* 72400 80071800 3C138009 */  lui        $s3, %hi(D_800949A0)
/* 72404 80071804 10000009 */  b          .L8007182C
/* 72408 80071808 267349A0 */   addiu     $s3, $s3, %lo(D_800949A0)
glabel L8007180C
/* 7240C 8007180C 3C138009 */  lui        $s3, %hi(D_800949C8)
/* 72410 80071810 10000006 */  b          .L8007182C
/* 72414 80071814 267349C8 */   addiu     $s3, $s3, %lo(D_800949C8)
glabel L80071818
/* 72418 80071818 3C138009 */  lui        $s3, %hi(D_800949F0)
/* 7241C 8007181C 10000003 */  b          .L8007182C
/* 72420 80071820 267349F0 */   addiu     $s3, $s3, %lo(D_800949F0)
glabel L80071824
/* 72424 80071824 10000001 */  b          .L8007182C
/* 72428 80071828 8C530020 */   lw        $s3, 0x20($v0)
.L8007182C:
/* 7242C 8007182C 8E680000 */  lw         $t0, 0x0($s3)
/* 72430 80071830 240A0028 */  addiu      $t2, $zero, 0x28
/* 72434 80071834 24110002 */  addiu      $s1, $zero, 0x2
/* 72438 80071838 A2A80024 */  sb         $t0, 0x24($s5)
/* 7243C 8007183C 8E690004 */  lw         $t1, 0x4($s3)
/* 72440 80071840 00002025 */  or         $a0, $zero, $zero
/* 72444 80071844 00002825 */  or         $a1, $zero, $zero
/* 72448 80071848 AEA9001C */  sw         $t1, 0x1C($s5)
/* 7244C 8007184C AFAA0010 */  sw         $t2, 0x10($sp)
/* 72450 80071850 02C03025 */  or         $a2, $s6, $zero
/* 72454 80071854 0C0196D0 */  jal        func_80065B40
/* 72458 80071858 310700FF */   andi      $a3, $t0, 0xFF
/* 7245C 8007185C AEA20020 */  sw         $v0, 0x20($s5)
/* 72460 80071860 8EA7001C */  lw         $a3, 0x1C($s5)
/* 72464 80071864 240B0002 */  addiu      $t3, $zero, 0x2
/* 72468 80071868 AFAB0010 */  sw         $t3, 0x10($sp)
/* 7246C 8007186C 00002025 */  or         $a0, $zero, $zero
/* 72470 80071870 00002825 */  or         $a1, $zero, $zero
/* 72474 80071874 0C0196D0 */  jal        func_80065B40
/* 72478 80071878 02C03025 */   or        $a2, $s6, $zero
/* 7247C 8007187C 8EAC001C */  lw         $t4, 0x1C($s5)
/* 72480 80071880 AEA20014 */  sw         $v0, 0x14($s5)
/* 72484 80071884 AEA20018 */  sw         $v0, 0x18($s5)
/* 72488 80071888 1180000C */  beqz       $t4, .L800718BC
/* 7248C 8007188C 00001825 */   or        $v1, $zero, $zero
/* 72490 80071890 8EAD0014 */  lw         $t5, 0x14($s5)
.L80071894:
/* 72494 80071894 00037040 */  sll        $t6, $v1, 1
/* 72498 80071898 24630001 */  addiu      $v1, $v1, 0x1
/* 7249C 8007189C 01AE7821 */  addu       $t7, $t5, $t6
/* 724A0 800718A0 A5E00000 */  sh         $zero, 0x0($t7)
/* 724A4 800718A4 8EB9001C */  lw         $t9, 0x1C($s5)
/* 724A8 800718A8 3078FFFF */  andi       $t8, $v1, 0xFFFF
/* 724AC 800718AC 03001825 */  or         $v1, $t8, $zero
/* 724B0 800718B0 0319082B */  sltu       $at, $t8, $t9
/* 724B4 800718B4 5420FFF7 */  bnel       $at, $zero, .L80071894
/* 724B8 800718B8 8EAD0014 */   lw        $t5, 0x14($s5)
.L800718BC:
/* 724BC 800718BC 92A80024 */  lbu        $t0, 0x24($s5)
/* 724C0 800718C0 0000A025 */  or         $s4, $zero, $zero
/* 724C4 800718C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 724C8 800718C8 1900009C */  blez       $t0, .L80071B3C
/* 724CC 800718CC 241E0001 */   addiu     $fp, $zero, 0x1
/* 724D0 800718D0 4481C000 */  mtc1       $at, $f24
/* 724D4 800718D4 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 724D8 800718D8 4481B000 */  mtc1       $at, $f22
/* 724DC 800718DC 3C01800A */  lui        $at, %hi(D_80098DB8)
/* 724E0 800718E0 4480D000 */  mtc1       $zero, $f26
/* 724E4 800718E4 D4348DB8 */  ldc1       $f20, %lo(D_80098DB8)($at)
/* 724E8 800718E8 24170028 */  addiu      $s7, $zero, 0x28
.L800718EC:
/* 724EC 800718EC 02970019 */  multu      $s4, $s7
/* 724F0 800718F0 00115880 */  sll        $t3, $s1, 2
/* 724F4 800718F4 8EA90020 */  lw         $t1, 0x20($s5)
/* 724F8 800718F8 026B6021 */  addu       $t4, $s3, $t3
/* 724FC 800718FC 8D8D0000 */  lw         $t5, 0x0($t4)
/* 72500 80071900 26310001 */  addiu      $s1, $s1, 0x1
/* 72504 80071904 322EFFFF */  andi       $t6, $s1, 0xFFFF
/* 72508 80071908 000E7880 */  sll        $t7, $t6, 2
/* 7250C 8007190C 026FC021 */  addu       $t8, $s3, $t7
/* 72510 80071910 25D10001 */  addiu      $s1, $t6, 0x1
/* 72514 80071914 00005012 */  mflo       $t2
/* 72518 80071918 012A8021 */  addu       $s0, $t1, $t2
/* 7251C 8007191C AE0D0000 */  sw         $t5, 0x0($s0)
/* 72520 80071920 8F190000 */  lw         $t9, 0x0($t8)
/* 72524 80071924 3228FFFF */  andi       $t0, $s1, 0xFFFF
/* 72528 80071928 00084880 */  sll        $t1, $t0, 2
/* 7252C 8007192C 02695021 */  addu       $t2, $s3, $t1
/* 72530 80071930 AE190004 */  sw         $t9, 0x4($s0)
/* 72534 80071934 8D4B0000 */  lw         $t3, 0x0($t2)
/* 72538 80071938 25110001 */  addiu      $s1, $t0, 0x1
/* 7253C 8007193C 322CFFFF */  andi       $t4, $s1, 0xFFFF
/* 72540 80071940 000C6880 */  sll        $t5, $t4, 2
/* 72544 80071944 026D7021 */  addu       $t6, $s3, $t5
/* 72548 80071948 A60B000A */  sh         $t3, 0xA($s0)
/* 7254C 8007194C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 72550 80071950 25910001 */  addiu      $s1, $t4, 0x1
/* 72554 80071954 3238FFFF */  andi       $t8, $s1, 0xFFFF
/* 72558 80071958 0018C880 */  sll        $t9, $t8, 2
/* 7255C 8007195C 02794021 */  addu       $t0, $s3, $t9
/* 72560 80071960 A60F0008 */  sh         $t7, 0x8($s0)
/* 72564 80071964 8D090000 */  lw         $t1, 0x0($t0)
/* 72568 80071968 27110001 */  addiu      $s1, $t8, 0x1
/* 7256C 8007196C 322AFFFF */  andi       $t2, $s1, 0xFFFF
/* 72570 80071970 000A5880 */  sll        $t3, $t2, 2
/* 72574 80071974 026B6021 */  addu       $t4, $s3, $t3
/* 72578 80071978 A609000C */  sh         $t1, 0xC($s0)
/* 7257C 8007197C 8D820000 */  lw         $v0, 0x0($t4)
/* 72580 80071980 01408825 */  or         $s1, $t2, $zero
/* 72584 80071984 02204025 */  or         $t0, $s1, $zero
/* 72588 80071988 10400040 */  beqz       $v0, .L80071A8C
/* 7258C 8007198C 25110002 */   addiu     $s1, $t0, 0x2
/* 72590 80071990 44822000 */  mtc1       $v0, $f4
/* 72594 80071994 8FAD006C */  lw         $t5, 0x6C($sp)
/* 72598 80071998 8E180004 */  lw         $t8, 0x4($s0)
/* 7259C 8007199C 468021A0 */  cvt.s.w    $f6, $f4
/* 725A0 800719A0 8DAE0018 */  lw         $t6, 0x18($t5)
/* 725A4 800719A4 8E190000 */  lw         $t9, 0x0($s0)
/* 725A8 800719A8 25510001 */  addiu      $s1, $t2, 0x1
/* 725AC 800719AC 448E8000 */  mtc1       $t6, $f16
/* 725B0 800719B0 322FFFFF */  andi       $t7, $s1, 0xFFFF
/* 725B4 800719B4 46163203 */  div.s      $f8, $f6, $f22
/* 725B8 800719B8 03194023 */  subu       $t0, $t8, $t9
/* 725BC 800719BC 01E08825 */  or         $s1, $t7, $zero
/* 725C0 800719C0 00114880 */  sll        $t1, $s1, 2
/* 725C4 800719C4 468084A1 */  cvt.d.w    $f18, $f16
/* 725C8 800719C8 02695021 */  addu       $t2, $s3, $t1
/* 725CC 800719CC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 725D0 800719D0 46004021 */  cvt.d.s    $f0, $f8
/* 725D4 800719D4 44884000 */  mtc1       $t0, $f8
/* 725D8 800719D8 46200280 */  add.d      $f10, $f0, $f0
/* 725DC 800719DC 46804421 */  cvt.d.w    $f16, $f8
/* 725E0 800719E0 46325103 */  div.d      $f4, $f10, $f18
/* 725E4 800719E4 462021A0 */  cvt.s.d    $f6, $f4
/* 725E8 800719E8 05010005 */  bgez       $t0, .L80071A00
/* 725EC 800719EC E6060010 */   swc1      $f6, 0x10($s0)
/* 725F0 800719F0 44815800 */  mtc1       $at, $f11
/* 725F4 800719F4 44805000 */  mtc1       $zero, $f10
/* 725F8 800719F8 00000000 */  nop
/* 725FC 800719FC 462A8400 */  add.d      $f16, $f16, $f10
.L80071A00:
/* 72600 80071A00 8D4B0000 */  lw         $t3, 0x0($t2)
/* 72604 80071A04 26310001 */  addiu      $s1, $s1, 0x1
/* 72608 80071A08 322CFFFF */  andi       $t4, $s1, 0xFFFF
/* 7260C 80071A0C 448B9000 */  mtc1       $t3, $f18
/* 72610 80071A10 E6180014 */  swc1       $f24, 0x14($s0)
/* 72614 80071A14 AE000018 */  sw         $zero, 0x18($s0)
/* 72618 80071A18 46809120 */  cvt.s.w    $f4, $f18
/* 7261C 80071A1C 240D0034 */  addiu      $t5, $zero, 0x34
/* 72620 80071A20 01808825 */  or         $s1, $t4, $zero
/* 72624 80071A24 00002025 */  or         $a0, $zero, $zero
/* 72628 80071A28 00002825 */  or         $a1, $zero, $zero
/* 7262C 80071A2C 02C03025 */  or         $a2, $s6, $zero
/* 72630 80071A30 460021A1 */  cvt.d.s    $f6, $f4
/* 72634 80071A34 03C03825 */  or         $a3, $fp, $zero
/* 72638 80071A38 46343203 */  div.d      $f8, $f6, $f20
/* 7263C 80071A3C 46304282 */  mul.d      $f10, $f8, $f16
/* 72640 80071A40 462054A0 */  cvt.s.d    $f18, $f10
/* 72644 80071A44 E612001C */  swc1       $f18, 0x1C($s0)
/* 72648 80071A48 0C0196D0 */  jal        func_80065B40
/* 7264C 80071A4C AFAD0010 */   sw        $t5, 0x10($sp)
/* 72650 80071A50 AE020024 */  sw         $v0, 0x24($s0)
/* 72654 80071A54 240E0020 */  addiu      $t6, $zero, 0x20
/* 72658 80071A58 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7265C 80071A5C 00002025 */  or         $a0, $zero, $zero
/* 72660 80071A60 00002825 */  or         $a1, $zero, $zero
/* 72664 80071A64 02C03025 */  or         $a2, $s6, $zero
/* 72668 80071A68 0C0196D0 */  jal        func_80065B40
/* 7266C 80071A6C 03C03825 */   or        $a3, $fp, $zero
/* 72670 80071A70 8E0F0024 */  lw         $t7, 0x24($s0)
/* 72674 80071A74 ADE20014 */  sw         $v0, 0x14($t7)
/* 72678 80071A78 8E180024 */  lw         $t8, 0x24($s0)
/* 7267C 80071A7C E71A0020 */  swc1       $f26, 0x20($t8)
/* 72680 80071A80 8E190024 */  lw         $t9, 0x24($s0)
/* 72684 80071A84 10000004 */  b          .L80071A98
/* 72688 80071A88 AF3E0024 */   sw        $fp, 0x24($t9)
.L80071A8C:
/* 7268C 80071A8C 3229FFFF */  andi       $t1, $s1, 0xFFFF
/* 72690 80071A90 AE000024 */  sw         $zero, 0x24($s0)
/* 72694 80071A94 01208825 */  or         $s1, $t1, $zero
.L80071A98:
/* 72698 80071A98 00115080 */  sll        $t2, $s1, 2
/* 7269C 80071A9C 026A9021 */  addu       $s2, $s3, $t2
/* 726A0 80071AA0 8E4B0000 */  lw         $t3, %lo(D_80090000)($s2)
/* 726A4 80071AA4 00002025 */  or         $a0, $zero, $zero
/* 726A8 80071AA8 00002825 */  or         $a1, $zero, $zero
/* 726AC 80071AAC 11600019 */  beqz       $t3, .L80071B14
/* 726B0 80071AB0 02C03025 */   or        $a2, $s6, $zero
/* 726B4 80071AB4 240C0030 */  addiu      $t4, $zero, 0x30
/* 726B8 80071AB8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 726BC 80071ABC 0C0196D0 */  jal        func_80065B40
/* 726C0 80071AC0 03C03825 */   or        $a3, $fp, $zero
/* 726C4 80071AC4 AE020020 */  sw         $v0, 0x20($s0)
/* 726C8 80071AC8 240D0008 */  addiu      $t5, $zero, 0x8
/* 726CC 80071ACC AFAD0010 */  sw         $t5, 0x10($sp)
/* 726D0 80071AD0 00002025 */  or         $a0, $zero, $zero
/* 726D4 80071AD4 00002825 */  or         $a1, $zero, $zero
/* 726D8 80071AD8 02C03025 */  or         $a2, $s6, $zero
/* 726DC 80071ADC 0C0196D0 */  jal        func_80065B40
/* 726E0 80071AE0 03C03825 */   or        $a3, $fp, $zero
/* 726E4 80071AE4 8E0E0020 */  lw         $t6, 0x20($s0)
/* 726E8 80071AE8 26310001 */  addiu      $s1, $s1, 0x1
/* 726EC 80071AEC 3239FFFF */  andi       $t9, $s1, 0xFFFF
/* 726F0 80071AF0 ADC20028 */  sw         $v0, 0x28($t6)
/* 726F4 80071AF4 8E180020 */  lw         $t8, 0x20($s0)
/* 726F8 80071AF8 8E4F0000 */  lw         $t7, %lo(D_80090000)($s2)
/* 726FC 80071AFC 03208825 */  or         $s1, $t9, $zero
/* 72700 80071B00 A70F0000 */  sh         $t7, 0x0($t8)
/* 72704 80071B04 0C01C5A8 */  jal        func_800716A0
/* 72708 80071B08 8E040020 */   lw        $a0, 0x20($s0)
/* 7270C 80071B0C 10000006 */  b          .L80071B28
/* 72710 80071B10 92AA0024 */   lbu       $t2, 0x24($s5)
.L80071B14:
/* 72714 80071B14 26310001 */  addiu      $s1, $s1, 0x1
/* 72718 80071B18 3228FFFF */  andi       $t0, $s1, 0xFFFF
/* 7271C 80071B1C AE000020 */  sw         $zero, 0x20($s0)
/* 72720 80071B20 01008825 */  or         $s1, $t0, $zero
/* 72724 80071B24 92AA0024 */  lbu        $t2, 0x24($s5)
.L80071B28:
/* 72728 80071B28 26940001 */  addiu      $s4, $s4, 0x1
/* 7272C 80071B2C 3289FFFF */  andi       $t1, $s4, 0xFFFF
/* 72730 80071B30 012A082A */  slt        $at, $t1, $t2
/* 72734 80071B34 1420FF6D */  bnez       $at, .L800718EC
/* 72738 80071B38 0120A025 */   or        $s4, $t1, $zero
.L80071B3C:
/* 7273C 80071B3C 8FBF0064 */  lw         $ra, 0x64($sp)
/* 72740 80071B40 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 72744 80071B44 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 72748 80071B48 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 7274C 80071B4C D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 72750 80071B50 8FB00040 */  lw         $s0, 0x40($sp)
/* 72754 80071B54 8FB10044 */  lw         $s1, 0x44($sp)
/* 72758 80071B58 8FB20048 */  lw         $s2, 0x48($sp)
/* 7275C 80071B5C 8FB3004C */  lw         $s3, 0x4C($sp)
/* 72760 80071B60 8FB40050 */  lw         $s4, 0x50($sp)
/* 72764 80071B64 8FB50054 */  lw         $s5, 0x54($sp)
/* 72768 80071B68 8FB60058 */  lw         $s6, 0x58($sp)
/* 7276C 80071B6C 8FB7005C */  lw         $s7, 0x5C($sp)
/* 72770 80071B70 8FBE0060 */  lw         $fp, 0x60($sp)
/* 72774 80071B74 03E00008 */  jr         $ra
/* 72778 80071B78 27BD0068 */   addiu     $sp, $sp, 0x68
/* 7277C 80071B7C 00000000 */  nop

glabel func_80071B80
/* 72780 80071B80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72784 80071B84 00054400 */  sll        $t0, $a1, 16
/* 72788 80071B88 00087403 */  sra        $t6, $t0, 16
/* 7278C 80071B8C AFB10018 */  sw         $s1, 0x18($sp)
/* 72790 80071B90 000E8880 */  sll        $s1, $t6, 2
/* 72794 80071B94 AFBF001C */  sw         $ra, 0x1C($sp)
/* 72798 80071B98 AFB00014 */  sw         $s0, 0x14($sp)
/* 7279C 80071B9C AFA50024 */  sw         $a1, 0x24($sp)
/* 727A0 80071BA0 022E8821 */  addu       $s1, $s1, $t6
/* 727A4 80071BA4 8C8F0034 */  lw         $t7, 0x34($a0)
/* 727A8 80071BA8 00118880 */  sll        $s1, $s1, 2
/* 727AC 80071BAC 022E8823 */  subu       $s1, $s1, $t6
/* 727B0 80071BB0 00808025 */  or         $s0, $a0, $zero
/* 727B4 80071BB4 00118880 */  sll        $s1, $s1, 2
/* 727B8 80071BB8 00C02825 */  or         $a1, $a2, $zero
/* 727BC 80071BBC 01F12021 */  addu       $a0, $t7, $s1
/* 727C0 80071BC0 24840020 */  addiu      $a0, $a0, 0x20
/* 727C4 80071BC4 0C01C5D0 */  jal        func_80071740
/* 727C8 80071BC8 00E03025 */   or        $a2, $a3, $zero
/* 727CC 80071BCC 8E180034 */  lw         $t8, 0x34($s0)
/* 727D0 80071BD0 24050001 */  addiu      $a1, $zero, 0x1
/* 727D4 80071BD4 03113021 */  addu       $a2, $t8, $s1
/* 727D8 80071BD8 0C01E9D1 */  jal        alFxParam
/* 727DC 80071BDC 24C40020 */   addiu     $a0, $a2, 0x20
/* 727E0 80071BE0 8E190034 */  lw         $t9, 0x34($s0)
/* 727E4 80071BE4 8E040030 */  lw         $a0, 0x30($s0)
/* 727E8 80071BE8 24050002 */  addiu      $a1, $zero, 0x2
/* 727EC 80071BEC 03313021 */  addu       $a2, $t9, $s1
/* 727F0 80071BF0 0C01C708 */  jal        func_80071C20
/* 727F4 80071BF4 24C60020 */   addiu     $a2, $a2, 0x20
/* 727F8 80071BF8 8E0A0034 */  lw         $t2, 0x34($s0)
/* 727FC 80071BFC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 72800 80071C00 8FB00014 */  lw         $s0, 0x14($sp)
/* 72804 80071C04 01511021 */  addu       $v0, $t2, $s1
/* 72808 80071C08 8FB10018 */  lw         $s1, 0x18($sp)
/* 7280C 80071C0C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 72810 80071C10 03E00008 */  jr         $ra
/* 72814 80071C14 24420020 */   addiu     $v0, $v0, 0x20
/* 72818 80071C18 00000000 */  nop
/* 7281C 80071C1C 00000000 */  nop

glabel func_80071C20
/* 72820 80071C20 24010002 */  addiu      $at, $zero, 0x2
/* 72824 80071C24 14A10008 */  bne        $a1, $at, .L80071C48
/* 72828 80071C28 8C82001C */   lw        $v0, 0x1C($a0)
/* 7282C 80071C2C 8C8E0014 */  lw         $t6, 0x14($a0)
/* 72830 80071C30 000E7880 */  sll        $t7, $t6, 2
/* 72834 80071C34 004FC021 */  addu       $t8, $v0, $t7
/* 72838 80071C38 AF060000 */  sw         $a2, 0x0($t8)
/* 7283C 80071C3C 8C990014 */  lw         $t9, 0x14($a0)
/* 72840 80071C40 27280001 */  addiu      $t0, $t9, 0x1
/* 72844 80071C44 AC880014 */  sw         $t0, 0x14($a0)
.L80071C48:
/* 72848 80071C48 03E00008 */  jr         $ra
/* 7284C 80071C4C 00001025 */   or        $v0, $zero, $zero

glabel func_80071C50
/* 72850 80071C50 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 72854 80071C54 8FA80058 */  lw         $t0, 0x58($sp)
/* 72858 80071C58 AFBF0044 */  sw         $ra, 0x44($sp)
/* 7285C 80071C5C AFBE0040 */  sw         $fp, 0x40($sp)
/* 72860 80071C60 AFB7003C */  sw         $s7, 0x3C($sp)
/* 72864 80071C64 AFB60038 */  sw         $s6, 0x38($sp)
/* 72868 80071C68 AFB50034 */  sw         $s5, 0x34($sp)
/* 7286C 80071C6C AFB40030 */  sw         $s4, 0x30($sp)
/* 72870 80071C70 AFB3002C */  sw         $s3, 0x2C($sp)
/* 72874 80071C74 AFB20028 */  sw         $s2, 0x28($sp)
/* 72878 80071C78 AFB10024 */  sw         $s1, 0x24($sp)
/* 7287C 80071C7C AFB00020 */  sw         $s0, 0x20($sp)
/* 72880 80071C80 8C83001C */  lw         $v1, 0x1C($a0)
/* 72884 80071C84 3C0E0200 */  lui        $t6, (0x2000440 >> 16)
/* 72888 80071C88 00061040 */  sll        $v0, $a2, 1
/* 7288C 80071C8C 3C0F0200 */  lui        $t7, (0x2000580 >> 16)
/* 72890 80071C90 35CE0440 */  ori        $t6, $t6, (0x2000440 & 0xFFFF)
/* 72894 80071C94 35EF0580 */  ori        $t7, $t7, (0x2000580 & 0xFFFF)
/* 72898 80071C98 AD0E0000 */  sw         $t6, 0x0($t0)
/* 7289C 80071C9C AD020004 */  sw         $v0, 0x4($t0)
/* 728A0 80071CA0 AD0F0008 */  sw         $t7, 0x8($t0)
/* 728A4 80071CA4 AD02000C */  sw         $v0, 0xC($t0)
/* 728A8 80071CA8 8C980014 */  lw         $t8, 0x14($a0)
/* 728AC 80071CAC 00C0A825 */  or         $s5, $a2, $zero
/* 728B0 80071CB0 00A0B825 */  or         $s7, $a1, $zero
/* 728B4 80071CB4 00E0F025 */  or         $fp, $a3, $zero
/* 728B8 80071CB8 0080A025 */  or         $s4, $a0, $zero
/* 728BC 80071CBC 00008025 */  or         $s0, $zero, $zero
/* 728C0 80071CC0 1B00001E */  blez       $t8, .L80071D3C
/* 728C4 80071CC4 25130010 */   addiu     $s3, $t0, 0x10
/* 728C8 80071CC8 3C120C00 */  lui        $s2, (0xC007FFF >> 16)
/* 728CC 80071CCC 36527FFF */  ori        $s2, $s2, (0xC007FFF & 0xFFFF)
/* 728D0 80071CD0 00608825 */  or         $s1, $v1, $zero
/* 728D4 80071CD4 3056FFFF */  andi       $s6, $v0, 0xFFFF
.L80071CD8:
/* 728D8 80071CD8 8E240000 */  lw         $a0, 0x0($s1)
/* 728DC 80071CDC AFB30010 */  sw         $s3, 0x10($sp)
/* 728E0 80071CE0 02E02825 */  or         $a1, $s7, $zero
/* 728E4 80071CE4 8C990004 */  lw         $t9, 0x4($a0)
/* 728E8 80071CE8 02A03025 */  or         $a2, $s5, $zero
/* 728EC 80071CEC 03C03825 */  or         $a3, $fp, $zero
/* 728F0 80071CF0 0320F809 */  jalr       $t9
/* 728F4 80071CF4 00000000 */   nop
/* 728F8 80071CF8 3C0A06C0 */  lui        $t2, (0x6C00440 >> 16)
/* 728FC 80071CFC 3C0B0800 */  lui        $t3, (0x8000580 >> 16)
/* 72900 80071D00 3C090800 */  lui        $t1, (0x8000000 >> 16)
/* 72904 80071D04 354A0440 */  ori        $t2, $t2, (0x6C00440 & 0xFFFF)
/* 72908 80071D08 356B0580 */  ori        $t3, $t3, (0x8000580 & 0xFFFF)
/* 7290C 80071D0C AC490000 */  sw         $t1, 0x0($v0)
/* 72910 80071D10 AC560004 */  sw         $s6, 0x4($v0)
/* 72914 80071D14 AC4A000C */  sw         $t2, 0xC($v0)
/* 72918 80071D18 AC520008 */  sw         $s2, 0x8($v0)
/* 7291C 80071D1C AC4B0014 */  sw         $t3, 0x14($v0)
/* 72920 80071D20 AC520010 */  sw         $s2, 0x10($v0)
/* 72924 80071D24 8E8C0014 */  lw         $t4, 0x14($s4)
/* 72928 80071D28 26100001 */  addiu      $s0, $s0, 0x1
/* 7292C 80071D2C 26310004 */  addiu      $s1, $s1, 0x4
/* 72930 80071D30 020C082A */  slt        $at, $s0, $t4
/* 72934 80071D34 1420FFE8 */  bnez       $at, .L80071CD8
/* 72938 80071D38 24530018 */   addiu     $s3, $v0, 0x18
.L80071D3C:
/* 7293C 80071D3C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 72940 80071D40 02601025 */  or         $v0, $s3, $zero
/* 72944 80071D44 8FB3002C */  lw         $s3, 0x2C($sp)
/* 72948 80071D48 8FB00020 */  lw         $s0, 0x20($sp)
/* 7294C 80071D4C 8FB10024 */  lw         $s1, 0x24($sp)
/* 72950 80071D50 8FB20028 */  lw         $s2, 0x28($sp)
/* 72954 80071D54 8FB40030 */  lw         $s4, 0x30($sp)
/* 72958 80071D58 8FB50034 */  lw         $s5, 0x34($sp)
/* 7295C 80071D5C 8FB60038 */  lw         $s6, 0x38($sp)
/* 72960 80071D60 8FB7003C */  lw         $s7, 0x3C($sp)
/* 72964 80071D64 8FBE0040 */  lw         $fp, 0x40($sp)
/* 72968 80071D68 03E00008 */  jr         $ra
/* 7296C 80071D6C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80071D70
/* 72970 80071D70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72974 80071D74 24010004 */  addiu      $at, $zero, 0x4
/* 72978 80071D78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7297C 80071D7C 10A10055 */  beq        $a1, $at, .L80071ED4
/* 72980 80071D80 00803825 */   or        $a3, $a0, $zero
/* 72984 80071D84 24010005 */  addiu      $at, $zero, 0x5
/* 72988 80071D88 54A1006B */  bnel       $a1, $at, .L80071F38
/* 7298C 80071D8C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 72990 80071D90 AC860028 */  sw         $a2, 0x28($a0)
/* 72994 80071D94 8CCE0000 */  lw         $t6, 0x0($a2)
/* 72998 80071D98 AC800038 */  sw         $zero, 0x38($a0)
/* 7299C 80071D9C 3C0F8007 */  lui        $t7, %hi(func_8007241C)
/* 729A0 80071DA0 AC8E0044 */  sw         $t6, 0x44($a0)
/* 729A4 80071DA4 90C20008 */  lbu        $v0, 0x8($a2)
/* 729A8 80071DA8 50400007 */  beql       $v0, $zero, .L80071DC8
/* 729AC 80071DAC 8CE20028 */   lw        $v0, 0x28($a3)
/* 729B0 80071DB0 24040001 */  addiu      $a0, $zero, 0x1
/* 729B4 80071DB4 10440034 */  beq        $v0, $a0, .L80071E88
/* 729B8 80071DB8 3C088007 */   lui       $t0, %hi(func_80071F44)
/* 729BC 80071DBC 1000005E */  b          .L80071F38
/* 729C0 80071DC0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 729C4 80071DC4 8CE20028 */  lw         $v0, 0x28($a3)
.L80071DC8:
/* 729C8 80071DC8 25EF241C */  addiu      $t7, $t7, %lo(func_8007241C)
/* 729CC 80071DCC ACEF0004 */  sw         $t7, 0x4($a3)
/* 729D0 80071DD0 8C580004 */  lw         $t8, 0x4($v0)
/* 729D4 80071DD4 24050009 */  addiu      $a1, $zero, 0x9
/* 729D8 80071DD8 0305001A */  div        $zero, $t8, $a1
/* 729DC 80071DDC 0000C812 */  mflo       $t9
/* 729E0 80071DE0 14A00002 */  bnez       $a1, .L80071DEC
/* 729E4 80071DE4 00000000 */   nop
/* 729E8 80071DE8 0007000D */  break      7
.L80071DEC:
/* 729EC 80071DEC 2401FFFF */  addiu      $at, $zero, -0x1
/* 729F0 80071DF0 14A10004 */  bne        $a1, $at, .L80071E04
/* 729F4 80071DF4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 729F8 80071DF8 17010002 */  bne        $t8, $at, .L80071E04
/* 729FC 80071DFC 00000000 */   nop
/* 72A00 80071E00 0006000D */  break      6
.L80071E04:
/* 72A04 80071E04 03250019 */  multu      $t9, $a1
/* 72A08 80071E08 00004012 */  mflo       $t0
/* 72A0C 80071E0C AC480004 */  sw         $t0, 0x4($v0)
/* 72A10 80071E10 8CE20028 */  lw         $v0, 0x28($a3)
/* 72A14 80071E14 8C440010 */  lw         $a0, 0x10($v0)
/* 72A18 80071E18 8C890000 */  lw         $t1, 0x0($a0)
/* 72A1C 80071E1C 8C8B0004 */  lw         $t3, 0x4($a0)
/* 72A20 80071E20 00095100 */  sll        $t2, $t1, 4
/* 72A24 80071E24 014B0019 */  multu      $t2, $t3
/* 72A28 80071E28 00006012 */  mflo       $t4
/* 72A2C 80071E2C ACEC002C */  sw         $t4, 0x2C($a3)
/* 72A30 80071E30 8C43000C */  lw         $v1, 0xC($v0)
/* 72A34 80071E34 50600011 */  beql       $v1, $zero, .L80071E7C
/* 72A38 80071E38 ACE00024 */   sw        $zero, 0x24($a3)
/* 72A3C 80071E3C 8C6D0000 */  lw         $t5, 0x0($v1)
/* 72A40 80071E40 8CE50018 */  lw         $a1, 0x18($a3)
/* 72A44 80071E44 24060020 */  addiu      $a2, $zero, 0x20
/* 72A48 80071E48 ACED001C */  sw         $t5, 0x1C($a3)
/* 72A4C 80071E4C 8C4E000C */  lw         $t6, 0xC($v0)
/* 72A50 80071E50 8DCF0004 */  lw         $t7, 0x4($t6)
/* 72A54 80071E54 ACEF0020 */  sw         $t7, 0x20($a3)
/* 72A58 80071E58 8C58000C */  lw         $t8, 0xC($v0)
/* 72A5C 80071E5C 8F190008 */  lw         $t9, 0x8($t8)
/* 72A60 80071E60 ACF90024 */  sw         $t9, 0x24($a3)
/* 72A64 80071E64 8C44000C */  lw         $a0, 0xC($v0)
/* 72A68 80071E68 0C01D008 */  jal        func_80074020
/* 72A6C 80071E6C 2484000C */   addiu     $a0, $a0, 0xC
/* 72A70 80071E70 10000031 */  b          .L80071F38
/* 72A74 80071E74 8FBF0014 */   lw        $ra, 0x14($sp)
/* 72A78 80071E78 ACE00024 */  sw         $zero, 0x24($a3)
.L80071E7C:
/* 72A7C 80071E7C ACE00020 */  sw         $zero, 0x20($a3)
/* 72A80 80071E80 1000002C */  b          .L80071F34
/* 72A84 80071E84 ACE0001C */   sw        $zero, 0x1C($a3)
.L80071E88:
/* 72A88 80071E88 8CE20028 */  lw         $v0, 0x28($a3)
/* 72A8C 80071E8C 25081F44 */  addiu      $t0, $t0, %lo(func_80071F44)
/* 72A90 80071E90 ACE80004 */  sw         $t0, 0x4($a3)
/* 72A94 80071E94 8C43000C */  lw         $v1, 0xC($v0)
/* 72A98 80071E98 5060000B */  beql       $v1, $zero, .L80071EC8
/* 72A9C 80071E9C ACE00024 */   sw        $zero, 0x24($a3)
/* 72AA0 80071EA0 8C690000 */  lw         $t1, 0x0($v1)
/* 72AA4 80071EA4 ACE9001C */  sw         $t1, 0x1C($a3)
/* 72AA8 80071EA8 8C4A000C */  lw         $t2, 0xC($v0)
/* 72AAC 80071EAC 8D4B0004 */  lw         $t3, 0x4($t2)
/* 72AB0 80071EB0 ACEB0020 */  sw         $t3, 0x20($a3)
/* 72AB4 80071EB4 8C4C000C */  lw         $t4, 0xC($v0)
/* 72AB8 80071EB8 8D8D0008 */  lw         $t5, 0x8($t4)
/* 72ABC 80071EBC 1000001D */  b          .L80071F34
/* 72AC0 80071EC0 ACED0024 */   sw        $t5, 0x24($a3)
/* 72AC4 80071EC4 ACE00024 */  sw         $zero, 0x24($a3)
.L80071EC8:
/* 72AC8 80071EC8 ACE00020 */  sw         $zero, 0x20($a3)
/* 72ACC 80071ECC 10000019 */  b          .L80071F34
/* 72AD0 80071ED0 ACE0001C */   sw        $zero, 0x1C($a3)
.L80071ED4:
/* 72AD4 80071ED4 8CE20028 */  lw         $v0, 0x28($a3)
/* 72AD8 80071ED8 24040001 */  addiu      $a0, $zero, 0x1
/* 72ADC 80071EDC ACE0003C */  sw         $zero, 0x3C($a3)
/* 72AE0 80071EE0 ACE40040 */  sw         $a0, 0x40($a3)
/* 72AE4 80071EE4 10400013 */  beqz       $v0, .L80071F34
/* 72AE8 80071EE8 ACE00038 */   sw        $zero, 0x38($a3)
/* 72AEC 80071EEC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 72AF0 80071EF0 ACEE0044 */  sw         $t6, 0x44($a3)
/* 72AF4 80071EF4 90430008 */  lbu        $v1, 0x8($v0)
/* 72AF8 80071EF8 14600007 */  bnez       $v1, .L80071F18
/* 72AFC 80071EFC 00000000 */   nop
/* 72B00 80071F00 8C43000C */  lw         $v1, 0xC($v0)
/* 72B04 80071F04 5060000C */  beql       $v1, $zero, .L80071F38
/* 72B08 80071F08 8FBF0014 */   lw        $ra, 0x14($sp)
/* 72B0C 80071F0C 8C6F0008 */  lw         $t7, 0x8($v1)
/* 72B10 80071F10 10000008 */  b          .L80071F34
/* 72B14 80071F14 ACEF0024 */   sw        $t7, 0x24($a3)
.L80071F18:
/* 72B18 80071F18 54830007 */  bnel       $a0, $v1, .L80071F38
/* 72B1C 80071F1C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 72B20 80071F20 8C43000C */  lw         $v1, 0xC($v0)
/* 72B24 80071F24 50600004 */  beql       $v1, $zero, .L80071F38
/* 72B28 80071F28 8FBF0014 */   lw        $ra, 0x14($sp)
/* 72B2C 80071F2C 8C780008 */  lw         $t8, 0x8($v1)
/* 72B30 80071F30 ACF80024 */  sw         $t8, 0x24($a3)
.L80071F34:
/* 72B34 80071F34 8FBF0014 */  lw         $ra, 0x14($sp)
.L80071F38:
/* 72B38 80071F38 27BD0018 */  addiu      $sp, $sp, 0x18
/* 72B3C 80071F3C 03E00008 */  jr         $ra
/* 72B40 80071F40 00000000 */   nop

glabel func_80071F44
/* 72B44 80071F44 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 72B48 80071F48 8FA80060 */  lw         $t0, 0x60($sp)
/* 72B4C 80071F4C AFB30020 */  sw         $s3, 0x20($sp)
/* 72B50 80071F50 AFB00014 */  sw         $s0, 0x14($sp)
/* 72B54 80071F54 00808025 */  or         $s0, $a0, $zero
/* 72B58 80071F58 00C09825 */  or         $s3, $a2, $zero
/* 72B5C 80071F5C AFBF0024 */  sw         $ra, 0x24($sp)
/* 72B60 80071F60 AFB2001C */  sw         $s2, 0x1C($sp)
/* 72B64 80071F64 AFB10018 */  sw         $s1, 0x18($sp)
/* 72B68 80071F68 AFA7005C */  sw         $a3, 0x5C($sp)
/* 72B6C 80071F6C 00A05025 */  or         $t2, $a1, $zero
/* 72B70 80071F70 14C00003 */  bnez       $a2, .L80071F80
/* 72B74 80071F74 01004825 */   or        $t1, $t0, $zero
/* 72B78 80071F78 100000D6 */  b          .L800722D4
/* 72B7C 80071F7C 01001025 */   or        $v0, $t0, $zero
.L80071F80:
/* 72B80 80071F80 8E020038 */  lw         $v0, 0x38($s0)
/* 72B84 80071F84 8E030020 */  lw         $v1, 0x20($s0)
/* 72B88 80071F88 00537021 */  addu       $t6, $v0, $s3
/* 72B8C 80071F8C 006E082B */  sltu       $at, $v1, $t6
/* 72B90 80071F90 50200084 */  beql       $at, $zero, .L800721A4
/* 72B94 80071F94 8E020028 */   lw        $v0, 0x28($s0)
/* 72B98 80071F98 8E0F0024 */  lw         $t7, 0x24($s0)
/* 72B9C 80071F9C 00629023 */  subu       $s2, $v1, $v0
/* 72BA0 80071FA0 51E00080 */  beql       $t7, $zero, .L800721A4
/* 72BA4 80071FA4 8E020028 */   lw        $v0, 0x28($s0)
/* 72BA8 80071FA8 1A40001E */  blez       $s2, .L80072024
/* 72BAC 80071FAC 00128840 */   sll       $s1, $s2, 1
/* 72BB0 80071FB0 8E040044 */  lw         $a0, 0x44($s0)
/* 72BB4 80071FB4 8E060034 */  lw         $a2, 0x34($s0)
/* 72BB8 80071FB8 AFAA0054 */  sw         $t2, 0x54($sp)
/* 72BBC 80071FBC 8E190030 */  lw         $t9, 0x30($s0)
/* 72BC0 80071FC0 02202825 */  or         $a1, $s1, $zero
/* 72BC4 80071FC4 0320F809 */  jalr       $t9
/* 72BC8 80071FC8 00000000 */   nop
/* 72BCC 80071FCC 8FAA0054 */  lw         $t2, 0x54($sp)
/* 72BD0 80071FD0 30460007 */  andi       $a2, $v0, 0x7
/* 72BD4 80071FD4 8FA80060 */  lw         $t0, 0x60($sp)
/* 72BD8 80071FD8 85580000 */  lh         $t8, 0x0($t2)
/* 72BDC 80071FDC 02263821 */  addu       $a3, $s1, $a2
/* 72BE0 80071FE0 30ED0007 */  andi       $t5, $a3, 0x7
/* 72BE4 80071FE4 00ED7023 */  subu       $t6, $a3, $t5
/* 72BE8 80071FE8 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 72BEC 80071FEC 330BFFFF */  andi       $t3, $t8, 0xFFFF
/* 72BF0 80071FF0 01616025 */  or         $t4, $t3, $at
/* 72BF4 80071FF4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 72BF8 80071FF8 25090008 */  addiu      $t1, $t0, 0x8
/* 72BFC 80071FFC 31F9FFFF */  andi       $t9, $t7, 0xFFFF
/* 72C00 80072000 01202025 */  or         $a0, $t1, $zero
/* 72C04 80072004 00465823 */  subu       $t3, $v0, $a2
/* 72C08 80072008 3C180400 */  lui        $t8, (0x4000000 >> 16)
/* 72C0C 8007200C AD190004 */  sw         $t9, 0x4($t0)
/* 72C10 80072010 AD0C0000 */  sw         $t4, 0x0($t0)
/* 72C14 80072014 AC8B0004 */  sw         $t3, 0x4($a0)
/* 72C18 80072018 AC980000 */  sw         $t8, 0x0($a0)
/* 72C1C 8007201C 10000002 */  b          .L80072028
/* 72C20 80072020 25290008 */   addiu     $t1, $t1, 0x8
.L80072024:
/* 72C24 80072024 00003025 */  or         $a2, $zero, $zero
.L80072028:
/* 72C28 80072028 854C0000 */  lh         $t4, 0x0($t2)
/* 72C2C 8007202C 0253082A */  slt        $at, $s2, $s3
/* 72C30 80072030 01866821 */  addu       $t5, $t4, $a2
/* 72C34 80072034 A54D0000 */  sh         $t5, 0x0($t2)
/* 72C38 80072038 8E0E0028 */  lw         $t6, 0x28($s0)
/* 72C3C 8007203C 8E02001C */  lw         $v0, 0x1C($s0)
/* 72C40 80072040 8DCF0000 */  lw         $t7, 0x0($t6)
/* 72C44 80072044 0002C840 */  sll        $t9, $v0, 1
/* 72C48 80072048 AE020038 */  sw         $v0, 0x38($s0)
/* 72C4C 8007204C 01F9C021 */  addu       $t8, $t7, $t9
/* 72C50 80072050 AE180044 */  sw         $t8, 0x44($s0)
/* 72C54 80072054 10200049 */  beqz       $at, .L8007217C
/* 72C58 80072058 85480000 */   lh        $t0, 0x0($t2)
/* 72C5C 8007205C 8E020024 */  lw         $v0, 0x24($s0)
.L80072060:
/* 72C60 80072060 2401FFFF */  addiu      $at, $zero, -0x1
/* 72C64 80072064 01114021 */  addu       $t0, $t0, $s1
/* 72C68 80072068 10410004 */  beq        $v0, $at, .L8007207C
/* 72C6C 8007206C 02729823 */   subu      $s3, $s3, $s2
/* 72C70 80072070 10400002 */  beqz       $v0, .L8007207C
/* 72C74 80072074 244BFFFF */   addiu     $t3, $v0, -0x1
/* 72C78 80072078 AE0B0024 */  sw         $t3, 0x24($s0)
.L8007207C:
/* 72C7C 8007207C 8E0C0020 */  lw         $t4, 0x20($s0)
/* 72C80 80072080 8E0D001C */  lw         $t5, 0x1C($s0)
/* 72C84 80072084 018D1023 */  subu       $v0, $t4, $t5
/* 72C88 80072088 0262082B */  sltu       $at, $s3, $v0
/* 72C8C 8007208C 10200003 */  beqz       $at, .L8007209C
/* 72C90 80072090 00409025 */   or        $s2, $v0, $zero
/* 72C94 80072094 10000001 */  b          .L8007209C
/* 72C98 80072098 02609025 */   or        $s2, $s3, $zero
.L8007209C:
/* 72C9C 8007209C 8E040044 */  lw         $a0, 0x44($s0)
/* 72CA0 800720A0 8E060034 */  lw         $a2, 0x34($s0)
/* 72CA4 800720A4 AFA9004C */  sw         $t1, 0x4C($sp)
/* 72CA8 800720A8 AFA8002C */  sw         $t0, 0x2C($sp)
/* 72CAC 800720AC 8E190030 */  lw         $t9, 0x30($s0)
/* 72CB0 800720B0 00128840 */  sll        $s1, $s2, 1
/* 72CB4 800720B4 02202825 */  or         $a1, $s1, $zero
/* 72CB8 800720B8 0320F809 */  jalr       $t9
/* 72CBC 800720BC 00000000 */   nop
/* 72CC0 800720C0 8FA8002C */  lw         $t0, 0x2C($sp)
/* 72CC4 800720C4 30450007 */  andi       $a1, $v0, 0x7
/* 72CC8 800720C8 8FA9004C */  lw         $t1, 0x4C($sp)
/* 72CCC 800720CC 31030007 */  andi       $v1, $t0, 0x7
/* 72CD0 800720D0 10600004 */  beqz       $v1, .L800720E4
/* 72CD4 800720D4 02253821 */   addu      $a3, $s1, $a1
/* 72CD8 800720D8 240E0008 */  addiu      $t6, $zero, 0x8
/* 72CDC 800720DC 10000002 */  b          .L800720E8
/* 72CE0 800720E0 01C33023 */   subu      $a2, $t6, $v1
.L800720E4:
/* 72CE4 800720E4 00003025 */  or         $a2, $zero, $zero
.L800720E8:
/* 72CE8 800720E8 01067821 */  addu       $t7, $t0, $a2
/* 72CEC 800720EC 30EC0007 */  andi       $t4, $a3, 0x7
/* 72CF0 800720F0 00EC6823 */  subu       $t5, $a3, $t4
/* 72CF4 800720F4 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 72CF8 800720F8 01201825 */  or         $v1, $t1, $zero
/* 72CFC 800720FC 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 72D00 80072100 03015825 */  or         $t3, $t8, $at
/* 72D04 80072104 25290008 */  addiu      $t1, $t1, 0x8
/* 72D08 80072108 25B90008 */  addiu      $t9, $t5, 0x8
/* 72D0C 8007210C 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 72D10 80072110 01202025 */  or         $a0, $t1, $zero
/* 72D14 80072114 AC6E0004 */  sw         $t6, 0x4($v1)
/* 72D18 80072118 AC6B0000 */  sw         $t3, 0x0($v1)
/* 72D1C 8007211C 0045C023 */  subu       $t8, $v0, $a1
/* 72D20 80072120 3C0F0400 */  lui        $t7, (0x4000000 >> 16)
/* 72D24 80072124 AC8F0000 */  sw         $t7, 0x0($a0)
/* 72D28 80072128 AC980004 */  sw         $t8, 0x4($a0)
/* 72D2C 8007212C 14A00002 */  bnez       $a1, .L80072138
/* 72D30 80072130 25290008 */   addiu     $t1, $t1, 0x8
/* 72D34 80072134 10C0000E */  beqz       $a2, .L80072170
.L80072138:
/* 72D38 80072138 01055821 */   addu      $t3, $t0, $a1
/* 72D3C 8007213C 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 72D40 80072140 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 72D44 80072144 01666021 */  addu       $t4, $t3, $a2
/* 72D48 80072148 01816824 */  and        $t5, $t4, $at
/* 72D4C 8007214C 01201025 */  or         $v0, $t1, $zero
/* 72D50 80072150 3C010A00 */  lui        $at, (0xA000000 >> 16)
/* 72D54 80072154 00087C00 */  sll        $t7, $t0, 16
/* 72D58 80072158 3238FFFF */  andi       $t8, $s1, 0xFFFF
/* 72D5C 8007215C 01F85825 */  or         $t3, $t7, $t8
/* 72D60 80072160 01A1C825 */  or         $t9, $t5, $at
/* 72D64 80072164 AC590000 */  sw         $t9, 0x0($v0)
/* 72D68 80072168 AC4B0004 */  sw         $t3, 0x4($v0)
/* 72D6C 8007216C 25290008 */  addiu      $t1, $t1, 0x8
.L80072170:
/* 72D70 80072170 0253082A */  slt        $at, $s2, $s3
/* 72D74 80072174 5420FFBA */  bnel       $at, $zero, .L80072060
/* 72D78 80072178 8E020024 */   lw        $v0, 0x24($s0)
.L8007217C:
/* 72D7C 8007217C 8E0C0038 */  lw         $t4, 0x38($s0)
/* 72D80 80072180 8E190044 */  lw         $t9, 0x44($s0)
/* 72D84 80072184 00137040 */  sll        $t6, $s3, 1
/* 72D88 80072188 01936821 */  addu       $t5, $t4, $s3
/* 72D8C 8007218C 032E7821 */  addu       $t7, $t9, $t6
/* 72D90 80072190 AE0D0038 */  sw         $t5, 0x38($s0)
/* 72D94 80072194 AE0F0044 */  sw         $t7, 0x44($s0)
/* 72D98 80072198 1000004E */  b          .L800722D4
/* 72D9C 8007219C 01201025 */   or        $v0, $t1, $zero
/* 72DA0 800721A0 8E020028 */  lw         $v0, 0x28($s0)
.L800721A4:
/* 72DA4 800721A4 8E040044 */  lw         $a0, 0x44($s0)
/* 72DA8 800721A8 00138840 */  sll        $s1, $s3, 1
/* 72DAC 800721AC 8C580000 */  lw         $t8, 0x0($v0)
/* 72DB0 800721B0 8C4C0004 */  lw         $t4, 0x4($v0)
/* 72DB4 800721B4 00911821 */  addu       $v1, $a0, $s1
/* 72DB8 800721B8 00785823 */  subu       $t3, $v1, $t8
/* 72DBC 800721BC 016C9023 */  subu       $s2, $t3, $t4
/* 72DC0 800721C0 06430003 */  bgezl      $s2, .L800721D0
/* 72DC4 800721C4 0232082A */   slt       $at, $s1, $s2
/* 72DC8 800721C8 00009025 */  or         $s2, $zero, $zero
/* 72DCC 800721CC 0232082A */  slt        $at, $s1, $s2
.L800721D0:
/* 72DD0 800721D0 50200003 */  beql       $at, $zero, .L800721E0
/* 72DD4 800721D4 0251082A */   slt       $at, $s2, $s1
/* 72DD8 800721D8 02209025 */  or         $s2, $s1, $zero
/* 72DDC 800721DC 0251082A */  slt        $at, $s2, $s1
.L800721E0:
/* 72DE0 800721E0 5020002C */  beql       $at, $zero, .L80072294
/* 72DE4 800721E4 AE030044 */   sw        $v1, 0x44($s0)
/* 72DE8 800721E8 1A60001F */  blez       $s3, .L80072268
/* 72DEC 800721EC 00003025 */   or        $a2, $zero, $zero
/* 72DF0 800721F0 8E060034 */  lw         $a2, 0x34($s0)
/* 72DF4 800721F4 02322823 */  subu       $a1, $s1, $s2
/* 72DF8 800721F8 AFA50048 */  sw         $a1, 0x48($sp)
/* 72DFC 800721FC AFAA0054 */  sw         $t2, 0x54($sp)
/* 72E00 80072200 8E190030 */  lw         $t9, 0x30($s0)
/* 72E04 80072204 0320F809 */  jalr       $t9
/* 72E08 80072208 00000000 */   nop
/* 72E0C 8007220C 8FAA0054 */  lw         $t2, 0x54($sp)
/* 72E10 80072210 8FA70048 */  lw         $a3, 0x48($sp)
/* 72E14 80072214 30460007 */  andi       $a2, $v0, 0x7
/* 72E18 80072218 854D0000 */  lh         $t5, 0x0($t2)
/* 72E1C 8007221C 8FA80060 */  lw         $t0, 0x60($sp)
/* 72E20 80072220 00E63821 */  addu       $a3, $a3, $a2
/* 72E24 80072224 30F80007 */  andi       $t8, $a3, 0x7
/* 72E28 80072228 00F85823 */  subu       $t3, $a3, $t8
/* 72E2C 8007222C 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 72E30 80072230 31AEFFFF */  andi       $t6, $t5, 0xFFFF
/* 72E34 80072234 01C17825 */  or         $t7, $t6, $at
/* 72E38 80072238 256C0008 */  addiu      $t4, $t3, 0x8
/* 72E3C 8007223C 25090008 */  addiu      $t1, $t0, 0x8
/* 72E40 80072240 3199FFFF */  andi       $t9, $t4, 0xFFFF
/* 72E44 80072244 01202025 */  or         $a0, $t1, $zero
/* 72E48 80072248 00467023 */  subu       $t6, $v0, $a2
/* 72E4C 8007224C 3C0D0400 */  lui        $t5, (0x4000000 >> 16)
/* 72E50 80072250 AD190004 */  sw         $t9, 0x4($t0)
/* 72E54 80072254 AD0F0000 */  sw         $t7, 0x0($t0)
/* 72E58 80072258 AC8E0004 */  sw         $t6, 0x4($a0)
/* 72E5C 8007225C AC8D0000 */  sw         $t5, 0x0($a0)
/* 72E60 80072260 10000001 */  b          .L80072268
/* 72E64 80072264 25290008 */   addiu     $t1, $t1, 0x8
.L80072268:
/* 72E68 80072268 854F0000 */  lh         $t7, 0x0($t2)
/* 72E6C 8007226C 01E6C021 */  addu       $t8, $t7, $a2
/* 72E70 80072270 A5580000 */  sh         $t8, 0x0($t2)
/* 72E74 80072274 8E0B0038 */  lw         $t3, 0x38($s0)
/* 72E78 80072278 8E190044 */  lw         $t9, 0x44($s0)
/* 72E7C 8007227C 01736021 */  addu       $t4, $t3, $s3
/* 72E80 80072280 03316821 */  addu       $t5, $t9, $s1
/* 72E84 80072284 AE0C0038 */  sw         $t4, 0x38($s0)
/* 72E88 80072288 10000002 */  b          .L80072294
/* 72E8C 8007228C AE0D0044 */   sw        $t5, 0x44($s0)
/* 72E90 80072290 AE030044 */  sw         $v1, 0x44($s0)
.L80072294:
/* 72E94 80072294 1240000E */  beqz       $s2, .L800722D0
/* 72E98 80072298 02321823 */   subu      $v1, $s1, $s2
/* 72E9C 8007229C 04610002 */  bgez       $v1, .L800722A8
/* 72EA0 800722A0 01201025 */   or        $v0, $t1, $zero
/* 72EA4 800722A4 00001825 */  or         $v1, $zero, $zero
.L800722A8:
/* 72EA8 800722A8 854E0000 */  lh         $t6, 0x0($t2)
/* 72EAC 800722AC 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 72EB0 800722B0 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 72EB4 800722B4 01C37821 */  addu       $t7, $t6, $v1
/* 72EB8 800722B8 01E1C024 */  and        $t8, $t7, $at
/* 72EBC 800722BC 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 72EC0 800722C0 03015825 */  or         $t3, $t8, $at
/* 72EC4 800722C4 AC4B0000 */  sw         $t3, 0x0($v0)
/* 72EC8 800722C8 AC520004 */  sw         $s2, 0x4($v0)
/* 72ECC 800722CC 25290008 */  addiu      $t1, $t1, 0x8
.L800722D0:
/* 72ED0 800722D0 01201025 */  or         $v0, $t1, $zero
.L800722D4:
/* 72ED4 800722D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 72ED8 800722D8 8FB00014 */  lw         $s0, 0x14($sp)
/* 72EDC 800722DC 8FB10018 */  lw         $s1, 0x18($sp)
/* 72EE0 800722E0 8FB2001C */  lw         $s2, 0x1C($sp)
/* 72EE4 800722E4 8FB30020 */  lw         $s3, 0x20($sp)
/* 72EE8 800722E8 03E00008 */  jr         $ra
/* 72EEC 800722EC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_800722F0
/* 72EF0 800722F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72EF4 800722F4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 72EF8 800722F8 AFB50028 */  sw         $s5, 0x28($sp)
/* 72EFC 800722FC 00137400 */  sll        $t6, $s3, 16
/* 72F00 80072300 0015C400 */  sll        $t8, $s5, 16
/* 72F04 80072304 0018AC03 */  sra        $s5, $t8, 16
/* 72F08 80072308 000E9C03 */  sra        $s3, $t6, 16
/* 72F0C 8007230C 1A20001A */  blez       $s1, .L80072378
/* 72F10 80072310 AFBF0014 */   sw        $ra, 0x14($sp)
/* 72F14 80072314 8E590030 */  lw         $t9, 0x30($s2)
/* 72F18 80072318 8E440044 */  lw         $a0, 0x44($s2)
/* 72F1C 8007231C 02202825 */  or         $a1, $s1, $zero
/* 72F20 80072320 0320F809 */  jalr       $t9
/* 72F24 80072324 8E460034 */   lw        $a2, 0x34($s2)
/* 72F28 80072328 30460007 */  andi       $a2, $v0, 0x7
/* 72F2C 8007232C 02268821 */  addu       $s1, $s1, $a2
/* 72F30 80072330 326EFFFF */  andi       $t6, $s3, 0xFFFF
/* 72F34 80072334 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 72F38 80072338 01C17825 */  or         $t7, $t6, $at
/* 72F3C 8007233C 32380007 */  andi       $t8, $s1, 0x7
/* 72F40 80072340 02002025 */  or         $a0, $s0, $zero
/* 72F44 80072344 0238C823 */  subu       $t9, $s1, $t8
/* 72F48 80072348 272E0008 */  addiu      $t6, $t9, 0x8
/* 72F4C 8007234C AC8F0000 */  sw         $t7, 0x0($a0)
/* 72F50 80072350 26100008 */  addiu      $s0, $s0, 0x8
/* 72F54 80072354 31CFFFFF */  andi       $t7, $t6, 0xFFFF
/* 72F58 80072358 02002825 */  or         $a1, $s0, $zero
/* 72F5C 8007235C AC8F0004 */  sw         $t7, 0x4($a0)
/* 72F60 80072360 0046C823 */  subu       $t9, $v0, $a2
/* 72F64 80072364 3C180400 */  lui        $t8, (0x4000000 >> 16)
/* 72F68 80072368 ACB80000 */  sw         $t8, 0x0($a1)
/* 72F6C 8007236C ACB90004 */  sw         $t9, 0x4($a1)
/* 72F70 80072370 10000002 */  b          .L8007237C
/* 72F74 80072374 26100008 */   addiu     $s0, $s0, 0x8
.L80072378:
/* 72F78 80072378 00003025 */  or         $a2, $zero, $zero
.L8007237C:
/* 72F7C 8007237C 328E0002 */  andi       $t6, $s4, 0x2
/* 72F80 80072380 11C00009 */  beqz       $t6, .L800723A8
/* 72F84 80072384 02001025 */   or        $v0, $s0, $zero
/* 72F88 80072388 3C0F0F00 */  lui        $t7, (0xF000000 >> 16)
/* 72F8C 8007238C AC4F0000 */  sw         $t7, 0x0($v0)
/* 72F90 80072390 8E580018 */  lw         $t8, 0x18($s2)
/* 72F94 80072394 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 72F98 80072398 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 72F9C 8007239C 0301C824 */  and        $t9, $t8, $at
/* 72FA0 800723A0 AC590004 */  sw         $t9, 0x4($v0)
/* 72FA4 800723A4 26100008 */  addiu      $s0, $s0, 0x8
.L800723A8:
/* 72FA8 800723A8 02667021 */  addu       $t6, $s3, $a2
/* 72FAC 800723AC 31CFFFFF */  andi       $t7, $t6, 0xFFFF
/* 72FB0 800723B0 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 72FB4 800723B4 01E1C025 */  or         $t8, $t7, $at
/* 72FB8 800723B8 02001825 */  or         $v1, $s0, $zero
/* 72FBC 800723BC AC780000 */  sw         $t8, 0x0($v1)
/* 72FC0 800723C0 00167840 */  sll        $t7, $s6, 1
/* 72FC4 800723C4 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 72FC8 800723C8 00157400 */  sll        $t6, $s5, 16
/* 72FCC 800723CC 01D8C825 */  or         $t9, $t6, $t8
/* 72FD0 800723D0 328F00FF */  andi       $t7, $s4, 0xFF
/* 72FD4 800723D4 26100008 */  addiu      $s0, $s0, 0x8
/* 72FD8 800723D8 000F7400 */  sll        $t6, $t7, 16
/* 72FDC 800723DC 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 72FE0 800723E0 AC790004 */  sw         $t9, 0x4($v1)
/* 72FE4 800723E4 01C1C025 */  or         $t8, $t6, $at
/* 72FE8 800723E8 02002025 */  or         $a0, $s0, $zero
/* 72FEC 800723EC AC980000 */  sw         $t8, 0x0($a0)
/* 72FF0 800723F0 8E590014 */  lw         $t9, 0x14($s2)
/* 72FF4 800723F4 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 72FF8 800723F8 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 72FFC 800723FC 03217824 */  and        $t7, $t9, $at
/* 73000 80072400 AC8F0004 */  sw         $t7, 0x4($a0)
/* 73004 80072404 AE400040 */  sw         $zero, 0x40($s2)
/* 73008 80072408 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7300C 8007240C 26100008 */  addiu      $s0, $s0, 0x8
/* 73010 80072410 02001025 */  or         $v0, $s0, $zero
/* 73014 80072414 03E00008 */  jr         $ra
/* 73018 80072418 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8007241C
/* 7301C 8007241C 27BDFF50 */  addiu      $sp, $sp, -0xB0
/* 73020 80072420 AFB70044 */  sw         $s7, 0x44($sp)
/* 73024 80072424 AFA700BC */  sw         $a3, 0xBC($sp)
/* 73028 80072428 00A03825 */  or         $a3, $a1, $zero
/* 7302C 8007242C 0080B825 */  or         $s7, $a0, $zero
/* 73030 80072430 AFBF004C */  sw         $ra, 0x4C($sp)
/* 73034 80072434 AFBE0048 */  sw         $fp, 0x48($sp)
/* 73038 80072438 AFB60040 */  sw         $s6, 0x40($sp)
/* 7303C 8007243C AFB5003C */  sw         $s5, 0x3C($sp)
/* 73040 80072440 AFB40038 */  sw         $s4, 0x38($sp)
/* 73044 80072444 AFB30034 */  sw         $s3, 0x34($sp)
/* 73048 80072448 AFB20030 */  sw         $s2, 0x30($sp)
/* 7304C 8007244C AFB1002C */  sw         $s1, 0x2C($sp)
/* 73050 80072450 AFB00028 */  sw         $s0, 0x28($sp)
/* 73054 80072454 AFA500B4 */  sw         $a1, 0xB4($sp)
/* 73058 80072458 00C04025 */  or         $t0, $a2, $zero
/* 7305C 8007245C 14C00003 */  bnez       $a2, .L8007246C
/* 73060 80072460 00006825 */   or        $t5, $zero, $zero
/* 73064 80072464 10000109 */  b          .L8007288C
/* 73068 80072468 8FA200C0 */   lw        $v0, 0xC0($sp)
.L8007246C:
/* 7306C 8007246C 8EEE002C */  lw         $t6, 0x2C($s7)
/* 73070 80072470 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 73074 80072474 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 73078 80072478 8FA500C0 */  lw         $a1, 0xC0($sp)
/* 7307C 8007247C 01C17824 */  and        $t7, $t6, $at
/* 73080 80072480 3C010B00 */  lui        $at, (0xB000000 >> 16)
/* 73084 80072484 01E1C025 */  or         $t8, $t7, $at
/* 73088 80072488 ACB80000 */  sw         $t8, 0x0($a1)
/* 7308C 8007248C 8EF90028 */  lw         $t9, 0x28($s7)
/* 73090 80072490 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 73094 80072494 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 73098 80072498 8F2E0010 */  lw         $t6, 0x10($t9)
/* 7309C 8007249C 24AA0008 */  addiu      $t2, $a1, 0x8
/* 730A0 800724A0 00003025 */  or         $a2, $zero, $zero
/* 730A4 800724A4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 730A8 800724A8 01E1C024 */  and        $t8, $t7, $at
/* 730AC 800724AC ACB80004 */  sw         $t8, 0x4($a1)
/* 730B0 800724B0 8EE30038 */  lw         $v1, 0x38($s7)
/* 730B4 800724B4 8EE40020 */  lw         $a0, 0x20($s7)
/* 730B8 800724B8 01002825 */  or         $a1, $t0, $zero
/* 730BC 800724BC 0068C821 */  addu       $t9, $v1, $t0
/* 730C0 800724C0 0099482B */  sltu       $t1, $a0, $t9
/* 730C4 800724C4 11200004 */  beqz       $t1, .L800724D8
/* 730C8 800724C8 240F0010 */   addiu     $t7, $zero, 0x10
/* 730CC 800724CC 8EE90024 */  lw         $t1, 0x24($s7)
/* 730D0 800724D0 0009702B */  sltu       $t6, $zero, $t1
/* 730D4 800724D4 01C04825 */  or         $t1, $t6, $zero
.L800724D8:
/* 730D8 800724D8 11200003 */  beqz       $t1, .L800724E8
/* 730DC 800724DC 24010009 */   addiu     $at, $zero, 0x9
/* 730E0 800724E0 10000001 */  b          .L800724E8
/* 730E4 800724E4 00832823 */   subu      $a1, $a0, $v1
.L800724E8:
/* 730E8 800724E8 8EE3003C */  lw         $v1, 0x3C($s7)
/* 730EC 800724EC 01408025 */  or         $s0, $t2, $zero
/* 730F0 800724F0 02E09025 */  or         $s2, $s7, $zero
/* 730F4 800724F4 10600003 */  beqz       $v1, .L80072504
/* 730F8 800724F8 00009825 */   or        $s3, $zero, $zero
/* 730FC 800724FC 10000001 */  b          .L80072504
/* 73100 80072500 01E33023 */   subu      $a2, $t7, $v1
.L80072504:
/* 73104 80072504 00A62023 */  subu       $a0, $a1, $a2
/* 73108 80072508 04810002 */  bgez       $a0, .L80072514
/* 7310C 8007250C 00000000 */   nop
/* 73110 80072510 00002025 */  or         $a0, $zero, $zero
.L80072514:
/* 73114 80072514 11200081 */  beqz       $t1, .L8007271C
/* 73118 80072518 249E000F */   addiu     $fp, $a0, 0xF
/* 7311C 8007251C 249E000F */  addiu      $fp, $a0, 0xF
/* 73120 80072520 001EC103 */  sra        $t8, $fp, 4
/* 73124 80072524 84F50000 */  lh         $s5, 0x0($a3)
/* 73128 80072528 8EF40040 */  lw         $s4, 0x40($s7)
/* 7312C 8007252C 001848C0 */  sll        $t1, $t8, 3
/* 73130 80072530 01384821 */  addu       $t1, $t1, $t8
/* 73134 80072534 01208825 */  or         $s1, $t1, $zero
/* 73138 80072538 AFA9005C */  sw         $t1, 0x5C($sp)
/* 7313C 8007253C AFA800B8 */  sw         $t0, 0xB8($sp)
/* 73140 80072540 AFA700B4 */  sw         $a3, 0xB4($sp)
/* 73144 80072544 AFA5008C */  sw         $a1, 0x8C($sp)
/* 73148 80072548 0300F025 */  or         $fp, $t8, $zero
/* 7314C 8007254C 0C01C8BC */  jal        func_800722F0
/* 73150 80072550 0080B025 */   or        $s6, $a0, $zero
/* 73154 80072554 8EE3003C */  lw         $v1, 0x3C($s7)
/* 73158 80072558 8FA5008C */  lw         $a1, 0x8C($sp)
/* 7315C 8007255C 8FA700B4 */  lw         $a3, 0xB4($sp)
/* 73160 80072560 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 73164 80072564 8FA9005C */  lw         $t1, 0x5C($sp)
/* 73168 80072568 10600006 */  beqz       $v1, .L80072584
/* 7316C 8007256C 00405025 */   or        $t2, $v0, $zero
/* 73170 80072570 84F90000 */  lh         $t9, 0x0($a3)
/* 73174 80072574 00037040 */  sll        $t6, $v1, 1
/* 73178 80072578 032E7821 */  addu       $t7, $t9, $t6
/* 7317C 8007257C 10000004 */  b          .L80072590
/* 73180 80072580 A4EF0000 */   sh        $t7, 0x0($a3)
.L80072584:
/* 73184 80072584 84F80000 */  lh         $t8, 0x0($a3)
/* 73188 80072588 27190020 */  addiu      $t9, $t8, 0x20
/* 7318C 8007258C A4F90000 */  sh         $t9, 0x0($a3)
.L80072590:
/* 73190 80072590 8EE2001C */  lw         $v0, 0x1C($s7)
/* 73194 80072594 8EEF0028 */  lw         $t7, 0x28($s7)
/* 73198 80072598 00A8082A */  slt        $at, $a1, $t0
/* 7319C 8007259C 304E000F */  andi       $t6, $v0, 0xF
/* 731A0 800725A0 AEEE003C */  sw         $t6, 0x3C($s7)
/* 731A4 800725A4 8DF80000 */  lw         $t8, 0x0($t7)
/* 731A8 800725A8 0002C902 */  srl        $t9, $v0, 4
/* 731AC 800725AC 001970C0 */  sll        $t6, $t9, 3
/* 731B0 800725B0 01D97021 */  addu       $t6, $t6, $t9
/* 731B4 800725B4 030E7821 */  addu       $t7, $t8, $t6
/* 731B8 800725B8 25F90009 */  addiu      $t9, $t7, 0x9
/* 731BC 800725BC AEF90044 */  sw         $t9, 0x44($s7)
/* 731C0 800725C0 AEE20038 */  sw         $v0, 0x38($s7)
/* 731C4 800725C4 10200049 */  beqz       $at, .L800726EC
/* 731C8 800725C8 84E60000 */   lh        $a2, 0x0($a3)
/* 731CC 800725CC 00051840 */  sll        $v1, $a1, 1
.L800725D0:
/* 731D0 800725D0 27D80001 */  addiu      $t8, $fp, 0x1
/* 731D4 800725D4 00187140 */  sll        $t6, $t8, 5
/* 731D8 800725D8 8EE20024 */  lw         $v0, 0x24($s7)
/* 731DC 800725DC 01C63821 */  addu       $a3, $t6, $a2
/* 731E0 800725E0 2401FFE0 */  addiu      $at, $zero, -0x20
/* 731E4 800725E4 00E17824 */  and        $t7, $a3, $at
/* 731E8 800725E8 2401FFFF */  addiu      $at, $zero, -0x1
/* 731EC 800725EC 01054023 */  subu       $t0, $t0, $a1
/* 731F0 800725F0 01E03825 */  or         $a3, $t7, $zero
/* 731F4 800725F4 10410004 */  beq        $v0, $at, .L80072608
/* 731F8 800725F8 00C33021 */   addu      $a2, $a2, $v1
/* 731FC 800725FC 10400002 */  beqz       $v0, .L80072608
/* 73200 80072600 2459FFFF */   addiu     $t9, $v0, -0x1
/* 73204 80072604 AEF90024 */  sw         $t9, 0x24($s7)
.L80072608:
/* 73208 80072608 8EF80020 */  lw         $t8, 0x20($s7)
/* 7320C 8007260C 8EEE001C */  lw         $t6, 0x1C($s7)
/* 73210 80072610 01408025 */  or         $s0, $t2, $zero
/* 73214 80072614 02E09025 */  or         $s2, $s7, $zero
/* 73218 80072618 030E1023 */  subu       $v0, $t8, $t6
/* 7321C 8007261C 0102082B */  sltu       $at, $t0, $v0
/* 73220 80072620 10200003 */  beqz       $at, .L80072630
/* 73224 80072624 0007AC00 */   sll       $s5, $a3, 16
/* 73228 80072628 10000002 */  b          .L80072634
/* 7322C 8007262C 01002825 */   or        $a1, $t0, $zero
.L80072630:
/* 73230 80072630 00402825 */  or         $a1, $v0, $zero
.L80072634:
/* 73234 80072634 8EEF003C */  lw         $t7, 0x3C($s7)
/* 73238 80072638 0015C403 */  sra        $t8, $s5, 16
/* 7323C 8007263C 0300A825 */  or         $s5, $t8, $zero
/* 73240 80072640 00AF2021 */  addu       $a0, $a1, $t7
/* 73244 80072644 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 73248 80072648 04810002 */  bgez       $a0, .L80072654
/* 7324C 8007264C 00009825 */   or        $s3, $zero, $zero
/* 73250 80072650 00002025 */  or         $a0, $zero, $zero
.L80072654:
/* 73254 80072654 8EF40040 */  lw         $s4, 0x40($s7)
/* 73258 80072658 249E000F */  addiu      $fp, $a0, 0xF
/* 7325C 8007265C 001EC903 */  sra        $t9, $fp, 4
/* 73260 80072660 001948C0 */  sll        $t1, $t9, 3
/* 73264 80072664 01394821 */  addu       $t1, $t1, $t9
/* 73268 80072668 368E0002 */  ori        $t6, $s4, 0x2
/* 7326C 8007266C 01C0A025 */  or         $s4, $t6, $zero
/* 73270 80072670 01208825 */  or         $s1, $t1, $zero
/* 73274 80072674 AFA9005C */  sw         $t1, 0x5C($sp)
/* 73278 80072678 0320F025 */  or         $fp, $t9, $zero
/* 7327C 8007267C AFA800B8 */  sw         $t0, 0xB8($sp)
/* 73280 80072680 AFA70088 */  sw         $a3, 0x88($sp)
/* 73284 80072684 AFA60080 */  sw         $a2, 0x80($sp)
/* 73288 80072688 AFA5008C */  sw         $a1, 0x8C($sp)
/* 7328C 8007268C 0C01C8BC */  jal        func_800722F0
/* 73290 80072690 0080B025 */   or        $s6, $a0, $zero
/* 73294 80072694 8EEF003C */  lw         $t7, 0x3C($s7)
/* 73298 80072698 8FA70088 */  lw         $a3, 0x88($sp)
/* 7329C 8007269C 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 732A0 800726A0 000FC840 */  sll        $t9, $t7, 1
/* 732A4 800726A4 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 732A8 800726A8 0327C021 */  addu       $t8, $t9, $a3
/* 732AC 800726AC 03017024 */  and        $t6, $t8, $at
/* 732B0 800726B0 8FA5008C */  lw         $a1, 0x8C($sp)
/* 732B4 800726B4 3C010A00 */  lui        $at, (0xA000000 >> 16)
/* 732B8 800726B8 8FA60080 */  lw         $a2, 0x80($sp)
/* 732BC 800726BC 01C17825 */  or         $t7, $t6, $at
/* 732C0 800726C0 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 732C4 800726C4 8FA9005C */  lw         $t1, 0x5C($sp)
/* 732C8 800726C8 00051840 */  sll        $v1, $a1, 1
/* 732CC 800726CC 306EFFFF */  andi       $t6, $v1, 0xFFFF
/* 732D0 800726D0 AC4F0000 */  sw         $t7, 0x0($v0)
/* 732D4 800726D4 0006C400 */  sll        $t8, $a2, 16
/* 732D8 800726D8 030E7825 */  or         $t7, $t8, $t6
/* 732DC 800726DC 00A8082A */  slt        $at, $a1, $t0
/* 732E0 800726E0 AC4F0004 */  sw         $t7, 0x4($v0)
/* 732E4 800726E4 1420FFBA */  bnez       $at, .L800725D0
/* 732E8 800726E8 244A0008 */   addiu     $t2, $v0, 0x8
.L800726EC:
/* 732EC 800726EC 8EF9003C */  lw         $t9, 0x3C($s7)
/* 732F0 800726F0 8EEF0038 */  lw         $t7, 0x38($s7)
/* 732F4 800726F4 01401025 */  or         $v0, $t2, $zero
/* 732F8 800726F8 0328C021 */  addu       $t8, $t9, $t0
/* 732FC 800726FC 330E000F */  andi       $t6, $t8, 0xF
/* 73300 80072700 8EF80044 */  lw         $t8, 0x44($s7)
/* 73304 80072704 AEEE003C */  sw         $t6, 0x3C($s7)
/* 73308 80072708 01E8C821 */  addu       $t9, $t7, $t0
/* 7330C 8007270C 03097021 */  addu       $t6, $t8, $t1
/* 73310 80072710 AEF90038 */  sw         $t9, 0x38($s7)
/* 73314 80072714 1000005D */  b          .L8007288C
/* 73318 80072718 AEEE0044 */   sw        $t6, 0x44($s7)
.L8007271C:
/* 7331C 8007271C 8EE20028 */  lw         $v0, 0x28($s7)
/* 73320 80072720 001E7903 */  sra        $t7, $fp, 4
/* 73324 80072724 8EF90044 */  lw         $t9, 0x44($s7)
/* 73328 80072728 000F48C0 */  sll        $t1, $t7, 3
/* 7332C 8007272C 8C580000 */  lw         $t8, 0x0($v0)
/* 73330 80072730 012F4821 */  addu       $t1, $t1, $t7
/* 73334 80072734 01E0F025 */  or         $fp, $t7, $zero
/* 73338 80072738 8C4F0004 */  lw         $t7, 0x4($v0)
/* 7333C 8007273C 03295821 */  addu       $t3, $t9, $t1
/* 73340 80072740 01787023 */  subu       $t6, $t3, $t8
/* 73344 80072744 01CF1823 */  subu       $v1, $t6, $t7
/* 73348 80072748 04610002 */  bgez       $v1, .L80072754
/* 7334C 8007274C 001E2900 */   sll       $a1, $fp, 4
/* 73350 80072750 00001825 */  or         $v1, $zero, $zero
.L80072754:
/* 73354 80072754 0061001A */  div        $zero, $v1, $at
/* 73358 80072758 00001012 */  mflo       $v0
/* 7335C 8007275C 00022100 */  sll        $a0, $v0, 4
/* 73360 80072760 00A66021 */  addu       $t4, $a1, $a2
/* 73364 80072764 0184082A */  slt        $at, $t4, $a0
/* 73368 80072768 10200002 */  beqz       $at, .L80072774
/* 7336C 8007276C 01408025 */   or        $s0, $t2, $zero
/* 73370 80072770 01802025 */  or         $a0, $t4, $zero
.L80072774:
/* 73374 80072774 3098000F */  andi       $t8, $a0, 0xF
/* 73378 80072778 00987023 */  subu       $t6, $a0, $t8
/* 7337C 8007277C 01C8082A */  slt        $at, $t6, $t0
/* 73380 80072780 1020002B */  beqz       $at, .L80072830
/* 73384 80072784 01233023 */   subu      $a2, $t1, $v1
/* 73388 80072788 84F50000 */  lh         $s5, 0x0($a3)
/* 7338C 8007278C 8EF40040 */  lw         $s4, 0x40($s7)
/* 73390 80072790 240D0001 */  addiu      $t5, $zero, 0x1
/* 73394 80072794 AFAD007C */  sw         $t5, 0x7C($sp)
/* 73398 80072798 AFAC0050 */  sw         $t4, 0x50($sp)
/* 7339C 8007279C AFA9005C */  sw         $t1, 0x5C($sp)
/* 733A0 800727A0 AFA800B8 */  sw         $t0, 0xB8($sp)
/* 733A4 800727A4 AFA700B4 */  sw         $a3, 0xB4($sp)
/* 733A8 800727A8 AFA40090 */  sw         $a0, 0x90($sp)
/* 733AC 800727AC 02E09025 */  or         $s2, $s7, $zero
/* 733B0 800727B0 00A4B023 */  subu       $s6, $a1, $a0
/* 733B4 800727B4 00C08825 */  or         $s1, $a2, $zero
/* 733B8 800727B8 0C01C8BC */  jal        func_800722F0
/* 733BC 800727BC 00009825 */   or        $s3, $zero, $zero
/* 733C0 800727C0 8EE3003C */  lw         $v1, 0x3C($s7)
/* 733C4 800727C4 8FA40090 */  lw         $a0, 0x90($sp)
/* 733C8 800727C8 8FA700B4 */  lw         $a3, 0xB4($sp)
/* 733CC 800727CC 8FA800B8 */  lw         $t0, 0xB8($sp)
/* 733D0 800727D0 8FA9005C */  lw         $t1, 0x5C($sp)
/* 733D4 800727D4 8FAC0050 */  lw         $t4, 0x50($sp)
/* 733D8 800727D8 8FAD007C */  lw         $t5, 0x7C($sp)
/* 733DC 800727DC 10600006 */  beqz       $v1, .L800727F8
/* 733E0 800727E0 00405025 */   or        $t2, $v0, $zero
/* 733E4 800727E4 84EF0000 */  lh         $t7, 0x0($a3)
/* 733E8 800727E8 0003C840 */  sll        $t9, $v1, 1
/* 733EC 800727EC 01F9C021 */  addu       $t8, $t7, $t9
/* 733F0 800727F0 10000004 */  b          .L80072804
/* 733F4 800727F4 A4F80000 */   sh        $t8, 0x0($a3)
.L800727F8:
/* 733F8 800727F8 84EE0000 */  lh         $t6, 0x0($a3)
/* 733FC 800727FC 25CF0020 */  addiu      $t7, $t6, 0x20
/* 73400 80072800 A4EF0000 */  sh         $t7, 0x0($a3)
.L80072804:
/* 73404 80072804 8EF9003C */  lw         $t9, 0x3C($s7)
/* 73408 80072808 8EEF0038 */  lw         $t7, 0x38($s7)
/* 7340C 8007280C 0328C021 */  addu       $t8, $t9, $t0
/* 73410 80072810 330E000F */  andi       $t6, $t8, 0xF
/* 73414 80072814 8EF80044 */  lw         $t8, 0x44($s7)
/* 73418 80072818 AEEE003C */  sw         $t6, 0x3C($s7)
/* 7341C 8007281C 01E8C821 */  addu       $t9, $t7, $t0
/* 73420 80072820 03097021 */  addu       $t6, $t8, $t1
/* 73424 80072824 AEF90038 */  sw         $t9, 0x38($s7)
/* 73428 80072828 10000003 */  b          .L80072838
/* 7342C 8007282C AEEE0044 */   sw        $t6, 0x44($s7)
.L80072830:
/* 73430 80072830 AEE0003C */  sw         $zero, 0x3C($s7)
/* 73434 80072834 AEEB0044 */  sw         $t3, 0x44($s7)
.L80072838:
/* 73438 80072838 10800013 */  beqz       $a0, .L80072888
/* 7343C 8007283C 01401025 */   or        $v0, $t2, $zero
/* 73440 80072840 11A00005 */  beqz       $t5, .L80072858
/* 73444 80072844 AEE0003C */   sw        $zero, 0x3C($s7)
/* 73448 80072848 01841823 */  subu       $v1, $t4, $a0
/* 7344C 8007284C 00037840 */  sll        $t7, $v1, 1
/* 73450 80072850 10000002 */  b          .L8007285C
/* 73454 80072854 01E01825 */   or        $v1, $t7, $zero
.L80072858:
/* 73458 80072858 00001825 */  or         $v1, $zero, $zero
.L8007285C:
/* 7345C 8007285C 84F90000 */  lh         $t9, 0x0($a3)
/* 73460 80072860 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 73464 80072864 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 73468 80072868 0323C021 */  addu       $t8, $t9, $v1
/* 7346C 8007286C 03017024 */  and        $t6, $t8, $at
/* 73470 80072870 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 73474 80072874 01C17825 */  or         $t7, $t6, $at
/* 73478 80072878 0004C840 */  sll        $t9, $a0, 1
/* 7347C 8007287C AC590004 */  sw         $t9, 0x4($v0)
/* 73480 80072880 AC4F0000 */  sw         $t7, 0x0($v0)
/* 73484 80072884 254A0008 */  addiu      $t2, $t2, 0x8
.L80072888:
/* 73488 80072888 01401025 */  or         $v0, $t2, $zero
.L8007288C:
/* 7348C 8007288C 8FBF004C */  lw         $ra, 0x4C($sp)
/* 73490 80072890 8FB00028 */  lw         $s0, 0x28($sp)
/* 73494 80072894 8FB1002C */  lw         $s1, 0x2C($sp)
/* 73498 80072898 8FB20030 */  lw         $s2, 0x30($sp)
/* 7349C 8007289C 8FB30034 */  lw         $s3, 0x34($sp)
/* 734A0 800728A0 8FB40038 */  lw         $s4, 0x38($sp)
/* 734A4 800728A4 8FB5003C */  lw         $s5, 0x3C($sp)
/* 734A8 800728A8 8FB60040 */  lw         $s6, 0x40($sp)
/* 734AC 800728AC 8FB70044 */  lw         $s7, 0x44($sp)
/* 734B0 800728B0 8FBE0048 */  lw         $fp, 0x48($sp)
/* 734B4 800728B4 03E00008 */  jr         $ra
/* 734B8 800728B8 27BD00B0 */   addiu     $sp, $sp, 0xB0
/* 734BC 800728BC 00000000 */  nop

glabel func_800728C0
/* 734C0 800728C0 24AEFFFF */  addiu      $t6, $a1, -0x1
/* 734C4 800728C4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 734C8 800728C8 2DC10009 */  sltiu      $at, $t6, 0x9
/* 734CC 800728CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 734D0 800728D0 1020002B */  beqz       $at, L80072980
/* 734D4 800728D4 00803825 */   or        $a3, $a0, $zero
/* 734D8 800728D8 000E7080 */  sll        $t6, $t6, 2
/* 734DC 800728DC 3C01800A */  lui        $at, %hi(jtbl_80098DC0_main)
/* 734E0 800728E0 002E0821 */  addu       $at, $at, $t6
/* 734E4 800728E4 8C2E8DC0 */  lw         $t6, %lo(jtbl_80098DC0_main)($at)
/* 734E8 800728E8 01C00008 */  jr         $t6
/* 734EC 800728EC 00000000 */   nop
glabel L800728F0
/* 734F0 800728F0 10000029 */  b          .L80072998
/* 734F4 800728F4 ACE60000 */   sw        $a2, 0x0($a3)
glabel L800728F8
/* 734F8 800728F8 8CE40000 */  lw         $a0, 0x0($a3)
/* 734FC 800728FC 44802000 */  mtc1       $zero, $f4
/* 73500 80072900 240F0001 */  addiu      $t7, $zero, 0x1
/* 73504 80072904 ACEF0024 */  sw         $t7, 0x24($a3)
/* 73508 80072908 ACE00030 */  sw         $zero, 0x30($a3)
/* 7350C 8007290C ACE0001C */  sw         $zero, 0x1C($a3)
/* 73510 80072910 10800021 */  beqz       $a0, .L80072998
/* 73514 80072914 E4E40020 */   swc1      $f4, 0x20($a3)
/* 73518 80072918 8C990008 */  lw         $t9, 0x8($a0)
/* 7351C 8007291C 24050004 */  addiu      $a1, $zero, 0x4
/* 73520 80072920 00003025 */  or         $a2, $zero, $zero
/* 73524 80072924 0320F809 */  jalr       $t9
/* 73528 80072928 00000000 */   nop
/* 7352C 8007292C 1000001B */  b          .L8007299C
/* 73530 80072930 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80072934
/* 73534 80072934 8CE40000 */  lw         $a0, 0x0($a3)
/* 73538 80072938 24180001 */  addiu      $t8, $zero, 0x1
/* 7353C 8007293C ACF80030 */  sw         $t8, 0x30($a3)
/* 73540 80072940 50800016 */  beql       $a0, $zero, .L8007299C
/* 73544 80072944 8FBF0014 */   lw        $ra, 0x14($sp)
/* 73548 80072948 8C990008 */  lw         $t9, 0x8($a0)
/* 7354C 8007294C 24050009 */  addiu      $a1, $zero, 0x9
/* 73550 80072950 00003025 */  or         $a2, $zero, $zero
/* 73554 80072954 0320F809 */  jalr       $t9
/* 73558 80072958 00000000 */   nop
/* 7355C 8007295C 1000000F */  b          .L8007299C
/* 73560 80072960 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80072964
/* 73564 80072964 AFA6001C */  sw         $a2, 0x1C($sp)
/* 73568 80072968 C7A6001C */  lwc1       $f6, 0x1C($sp)
/* 7356C 8007296C 1000000A */  b          .L80072998
/* 73570 80072970 E4E60018 */   swc1      $f6, 0x18($a3)
glabel L80072974
/* 73574 80072974 24080001 */  addiu      $t0, $zero, 0x1
/* 73578 80072978 10000007 */  b          .L80072998
/* 7357C 8007297C ACE8001C */   sw        $t0, 0x1C($a3)
glabel L80072980
/* 73580 80072980 8CE40000 */  lw         $a0, 0x0($a3)
/* 73584 80072984 50800005 */  beql       $a0, $zero, .L8007299C
/* 73588 80072988 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7358C 8007298C 8C990008 */  lw         $t9, 0x8($a0)
/* 73590 80072990 0320F809 */  jalr       $t9
/* 73594 80072994 00000000 */   nop
.L80072998:
/* 73598 80072998 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007299C:
/* 7359C 8007299C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 735A0 800729A0 00001025 */  or         $v0, $zero, $zero
/* 735A4 800729A4 03E00008 */  jr         $ra
/* 735A8 800729A8 00000000 */   nop

glabel func_800729AC
/* 735AC 800729AC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 735B0 800729B0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 735B4 800729B4 AFA50054 */  sw         $a1, 0x54($sp)
/* 735B8 800729B8 8C890000 */  lw         $t1, 0x0($a0)
/* 735BC 800729BC 240E0140 */  addiu      $t6, $zero, 0x140
/* 735C0 800729C0 00804025 */  or         $t0, $a0, $zero
/* 735C4 800729C4 00C05025 */  or         $t2, $a2, $zero
/* 735C8 800729C8 14C00003 */  bnez       $a2, .L800729D8
/* 735CC 800729CC A7AE0046 */   sh        $t6, 0x46($sp)
/* 735D0 800729D0 10000074 */  b          .L80072BA4
/* 735D4 800729D4 8FA20060 */   lw        $v0, 0x60($sp)
.L800729D8:
/* 735D8 800729D8 8D0F001C */  lw         $t7, 0x1C($t0)
/* 735DC 800729DC 8FB80060 */  lw         $t8, 0x60($sp)
/* 735E0 800729E0 51E0001A */  beql       $t7, $zero, .L80072A4C
/* 735E4 800729E4 C5020018 */   lwc1      $f2, 0x18($t0)
/* 735E8 800729E8 AFB80010 */  sw         $t8, 0x10($sp)
/* 735EC 800729EC AFAA0058 */  sw         $t2, 0x58($sp)
/* 735F0 800729F0 8D390004 */  lw         $t9, 0x4($t1)
/* 735F4 800729F4 01202025 */  or         $a0, $t1, $zero
/* 735F8 800729F8 27A50046 */  addiu      $a1, $sp, 0x46
/* 735FC 800729FC 0320F809 */  jalr       $t9
/* 73600 80072A00 01403025 */   or        $a2, $t2, $zero
/* 73604 80072A04 87AB0046 */  lh         $t3, 0x46($sp)
/* 73608 80072A08 3C0100FF */  lui        $at, (0xFFFFFF >> 16)
/* 7360C 80072A0C 3421FFFF */  ori        $at, $at, (0xFFFFFF & 0xFFFF)
/* 73610 80072A10 01616024 */  and        $t4, $t3, $at
/* 73614 80072A14 3C010A00 */  lui        $at, (0xA000000 >> 16)
/* 73618 80072A18 8FAA0058 */  lw         $t2, 0x58($sp)
/* 7361C 80072A1C 01816825 */  or         $t5, $t4, $at
/* 73620 80072A20 AC4D0000 */  sw         $t5, 0x0($v0)
/* 73624 80072A24 8FAE0054 */  lw         $t6, 0x54($sp)
/* 73628 80072A28 000A5840 */  sll        $t3, $t2, 1
/* 7362C 80072A2C 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 73630 80072A30 85D80000 */  lh         $t8, 0x0($t6)
/* 73634 80072A34 24450008 */  addiu      $a1, $v0, 0x8
/* 73638 80072A38 0018CC00 */  sll        $t9, $t8, 16
/* 7363C 80072A3C 032C6825 */  or         $t5, $t9, $t4
/* 73640 80072A40 10000057 */  b          .L80072BA0
/* 73644 80072A44 AC4D0004 */   sw        $t5, 0x4($v0)
/* 73648 80072A48 C5020018 */  lwc1       $f2, 0x18($t0)
.L80072A4C:
/* 7364C 80072A4C 3C01800A */  lui        $at, %hi(D_80098DE8)
/* 73650 80072A50 D4248DE8 */  ldc1       $f4, %lo(D_80098DE8)($at)
/* 73654 80072A54 460011A1 */  cvt.d.s    $f6, $f2
/* 73658 80072A58 3C01800A */  lui        $at, %hi(D_80098DF0)
/* 7365C 80072A5C 4626203C */  c.lt.d     $f4, $f6
/* 73660 80072A60 00000000 */  nop
/* 73664 80072A64 45020005 */  bc1fl      .L80072A7C
/* 73668 80072A68 3C014700 */   lui       $at, (0x47000000 >> 16)
/* 7366C 80072A6C C4288DF0 */  lwc1       $f8, %lo(D_80098DF0)($at)
/* 73670 80072A70 E5080018 */  swc1       $f8, 0x18($t0)
/* 73674 80072A74 C5020018 */  lwc1       $f2, 0x18($t0)
/* 73678 80072A78 3C014700 */  lui        $at, (0x47000000 >> 16)
.L80072A7C:
/* 7367C 80072A7C 44816000 */  mtc1       $at, $f12
/* 73680 80072A80 01202025 */  or         $a0, $t1, $zero
/* 73684 80072A84 27A50046 */  addiu      $a1, $sp, 0x46
/* 73688 80072A88 460C1282 */  mul.s      $f10, $f2, $f12
/* 7368C 80072A8C 4600540D */  trunc.w.s  $f16, $f10
/* 73690 80072A90 440F8000 */  mfc1       $t7, $f16
/* 73694 80072A94 448A8000 */  mtc1       $t2, $f16
/* 73698 80072A98 448F9000 */  mtc1       $t7, $f18
/* 7369C 80072A9C 00000000 */  nop
/* 736A0 80072AA0 46809120 */  cvt.s.w    $f4, $f18
/* 736A4 80072AA4 468084A0 */  cvt.s.w    $f18, $f16
/* 736A8 80072AA8 E5040018 */  swc1       $f4, 0x18($t0)
/* 736AC 80072AAC C5060018 */  lwc1       $f6, 0x18($t0)
/* 736B0 80072AB0 460C3203 */  div.s      $f8, $f6, $f12
/* 736B4 80072AB4 C5060020 */  lwc1       $f6, 0x20($t0)
/* 736B8 80072AB8 E5080018 */  swc1       $f8, 0x18($t0)
/* 736BC 80072ABC C50A0018 */  lwc1       $f10, 0x18($t0)
/* 736C0 80072AC0 46125102 */  mul.s      $f4, $f10, $f18
/* 736C4 80072AC4 46043000 */  add.s      $f0, $f6, $f4
/* 736C8 80072AC8 4600020D */  trunc.w.s  $f8, $f0
/* 736CC 80072ACC 44064000 */  mfc1       $a2, $f8
/* 736D0 80072AD0 00000000 */  nop
/* 736D4 80072AD4 44868000 */  mtc1       $a2, $f16
/* 736D8 80072AD8 00000000 */  nop
/* 736DC 80072ADC 468082A0 */  cvt.s.w    $f10, $f16
/* 736E0 80072AE0 460A0481 */  sub.s      $f18, $f0, $f10
/* 736E4 80072AE4 E5120020 */  swc1       $f18, 0x20($t0)
/* 736E8 80072AE8 8FAB0060 */  lw         $t3, 0x60($sp)
/* 736EC 80072AEC AFAA0058 */  sw         $t2, 0x58($sp)
/* 736F0 80072AF0 AFA80050 */  sw         $t0, 0x50($sp)
/* 736F4 80072AF4 AFAB0010 */  sw         $t3, 0x10($sp)
/* 736F8 80072AF8 8D390004 */  lw         $t9, 0x4($t1)
/* 736FC 80072AFC 0320F809 */  jalr       $t9
/* 73700 80072B00 00000000 */   nop
/* 73704 80072B04 8FA80050 */  lw         $t0, 0x50($sp)
/* 73708 80072B08 87AD0046 */  lh         $t5, 0x46($sp)
/* 7370C 80072B0C 3C014700 */  lui        $at, (0x47000000 >> 16)
/* 73710 80072B10 44812000 */  mtc1       $at, $f4
/* 73714 80072B14 C5060018 */  lwc1       $f6, 0x18($t0)
/* 73718 80072B18 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7371C 80072B1C 31AEFFFF */  andi       $t6, $t5, 0xFFFF
/* 73720 80072B20 8FAA0058 */  lw         $t2, 0x58($sp)
/* 73724 80072B24 01C17825 */  or         $t7, $t6, $at
/* 73728 80072B28 AC4F0000 */  sw         $t7, 0x0($v0)
/* 7372C 80072B2C 8FB80054 */  lw         $t8, 0x54($sp)
/* 73730 80072B30 46043202 */  mul.s      $f8, $f6, $f4
/* 73734 80072B34 000A6840 */  sll        $t5, $t2, 1
/* 73738 80072B38 87190000 */  lh         $t9, 0x0($t8)
/* 7373C 80072B3C 31AEFFFF */  andi       $t6, $t5, 0xFFFF
/* 73740 80072B40 24580008 */  addiu      $t8, $v0, 0x8
/* 73744 80072B44 00196400 */  sll        $t4, $t9, 16
/* 73748 80072B48 018E7825 */  or         $t7, $t4, $t6
/* 7374C 80072B4C 4600440D */  trunc.w.s  $f16, $f8
/* 73750 80072B50 AC4F0004 */  sw         $t7, 0x4($v0)
/* 73754 80072B54 AFB80028 */  sw         $t8, 0x28($sp)
/* 73758 80072B58 8D0B0024 */  lw         $t3, 0x24($t0)
/* 7375C 80072B5C 44038000 */  mfc1       $v1, $f16
/* 73760 80072B60 3C010500 */  lui        $at, (0x5000000 >> 16)
/* 73764 80072B64 317900FF */  andi       $t9, $t3, 0xFF
/* 73768 80072B68 00196C00 */  sll        $t5, $t9, 16
/* 7376C 80072B6C 01A16025 */  or         $t4, $t5, $at
/* 73770 80072B70 306EFFFF */  andi       $t6, $v1, 0xFFFF
/* 73774 80072B74 018E7825 */  or         $t7, $t4, $t6
/* 73778 80072B78 AC4F0008 */  sw         $t7, 0x8($v0)
/* 7377C 80072B7C 24450010 */  addiu      $a1, $v0, 0x10
/* 73780 80072B80 8D040014 */  lw         $a0, 0x14($t0)
/* 73784 80072B84 0C019FAC */  jal        func_80067EB0
/* 73788 80072B88 AFA50048 */   sw        $a1, 0x48($sp)
/* 7378C 80072B8C 8FB80028 */  lw         $t8, 0x28($sp)
/* 73790 80072B90 8FA80050 */  lw         $t0, 0x50($sp)
/* 73794 80072B94 8FA50048 */  lw         $a1, 0x48($sp)
/* 73798 80072B98 AF020004 */  sw         $v0, 0x4($t8)
/* 7379C 80072B9C AD000024 */  sw         $zero, 0x24($t0)
.L80072BA0:
/* 737A0 80072BA0 00A01025 */  or         $v0, $a1, $zero
.L80072BA4:
/* 737A4 80072BA4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 737A8 80072BA8 27BD0050 */  addiu      $sp, $sp, 0x50
/* 737AC 80072BAC 03E00008 */  jr         $ra
/* 737B0 80072BB0 00000000 */   nop
/* 737B4 80072BB4 00000000 */  nop
/* 737B8 80072BB8 00000000 */  nop
/* 737BC 80072BBC 00000000 */  nop

glabel func_80072BC0
/* 737C0 80072BC0 10C00007 */  beqz       $a2, .L80072BE0
/* 737C4 80072BC4 240E0001 */   addiu     $t6, $zero, 0x1
/* 737C8 80072BC8 00CE7804 */  sllv       $t7, $t6, $a2
/* 737CC 80072BCC 448F2000 */  mtc1       $t7, $f4
/* 737D0 80072BD0 00000000 */  nop
/* 737D4 80072BD4 468021A1 */  cvt.d.w    $f6, $f4
/* 737D8 80072BD8 46266302 */  mul.d      $f12, $f12, $f6
/* 737DC 80072BDC 00000000 */  nop
.L80072BE0:
/* 737E0 80072BE0 03E00008 */  jr         $ra
/* 737E4 80072BE4 46206006 */   mov.d     $f0, $f12

glabel func_80072BE8
/* 737E8 80072BE8 44801800 */  mtc1       $zero, $f3
/* 737EC 80072BEC 44801000 */  mtc1       $zero, $f2
/* 737F0 80072BF0 ACC00000 */  sw         $zero, 0x0($a2)
/* 737F4 80072BF4 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 737F8 80072BF8 46226032 */  c.eq.d     $f12, $f2
/* 737FC 80072BFC 00000000 */  nop
/* 73800 80072C00 45020004 */  bc1fl      .L80072C14
/* 73804 80072C04 462C103C */   c.lt.d    $f2, $f12
/* 73808 80072C08 03E00008 */  jr         $ra
/* 7380C 80072C0C 46206006 */   mov.d     $f0, $f12
/* 73810 80072C10 462C103C */  c.lt.d     $f2, $f12
.L80072C14:
/* 73814 80072C14 44817800 */  mtc1       $at, $f15
/* 73818 80072C18 44807000 */  mtc1       $zero, $f14
/* 7381C 80072C1C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 73820 80072C20 45020004 */  bc1fl      .L80072C34
/* 73824 80072C24 46206007 */   neg.d     $f0, $f12
/* 73828 80072C28 10000002 */  b          .L80072C34
/* 7382C 80072C2C 46206006 */   mov.d     $f0, $f12
/* 73830 80072C30 46206007 */  neg.d      $f0, $f12
.L80072C34:
/* 73834 80072C34 4620703E */  c.le.d     $f14, $f0
/* 73838 80072C38 00000000 */  nop
/* 7383C 80072C3C 4502000D */  bc1fl      .L80072C74
/* 73840 80072C40 3C013FE0 */   lui       $at, (0x3FE00000 >> 16)
/* 73844 80072C44 44818800 */  mtc1       $at, $f17
/* 73848 80072C48 44808000 */  mtc1       $zero, $f16
/* 7384C 80072C4C 00000000 */  nop
.L80072C50:
/* 73850 80072C50 46300002 */  mul.d      $f0, $f0, $f16
/* 73854 80072C54 8CCE0000 */  lw         $t6, 0x0($a2)
/* 73858 80072C58 25CF0001 */  addiu      $t7, $t6, 0x1
/* 7385C 80072C5C ACCF0000 */  sw         $t7, 0x0($a2)
/* 73860 80072C60 4620703E */  c.le.d     $f14, $f0
/* 73864 80072C64 00000000 */  nop
/* 73868 80072C68 4501FFF9 */  bc1t       .L80072C50
/* 7386C 80072C6C 00000000 */   nop
/* 73870 80072C70 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
.L80072C74:
/* 73874 80072C74 44818800 */  mtc1       $at, $f17
/* 73878 80072C78 44808000 */  mtc1       $zero, $f16
/* 7387C 80072C7C 00000000 */  nop
/* 73880 80072C80 4630003C */  c.lt.d     $f0, $f16
/* 73884 80072C84 00000000 */  nop
/* 73888 80072C88 45020009 */  bc1fl      .L80072CB0
/* 7388C 80072C8C 462C103C */   c.lt.d    $f2, $f12
/* 73890 80072C90 46200000 */  add.d      $f0, $f0, $f0
.L80072C94:
/* 73894 80072C94 8CD80000 */  lw         $t8, 0x0($a2)
/* 73898 80072C98 4630003C */  c.lt.d     $f0, $f16
/* 7389C 80072C9C 2719FFFF */  addiu      $t9, $t8, -0x1
/* 738A0 80072CA0 ACD90000 */  sw         $t9, 0x0($a2)
/* 738A4 80072CA4 4503FFFB */  bc1tl      .L80072C94
/* 738A8 80072CA8 46200000 */   add.d     $f0, $f0, $f0
/* 738AC 80072CAC 462C103C */  c.lt.d     $f2, $f12
.L80072CB0:
/* 738B0 80072CB0 00000000 */  nop
/* 738B4 80072CB4 45020004 */  bc1fl      .L80072CC8
/* 738B8 80072CB8 46200087 */   neg.d     $f2, $f0
/* 738BC 80072CBC 10000002 */  b          .L80072CC8
/* 738C0 80072CC0 46200086 */   mov.d     $f2, $f0
/* 738C4 80072CC4 46200087 */  neg.d      $f2, $f0
.L80072CC8:
/* 738C8 80072CC8 46201006 */  mov.d      $f0, $f2
/* 738CC 80072CCC 03E00008 */  jr         $ra
/* 738D0 80072CD0 00000000 */   nop

glabel func_80072CD4
/* 738D4 80072CD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 738D8 80072CD8 24020001 */  addiu      $v0, $zero, 0x1
/* 738DC 80072CDC AFBF0014 */  sw         $ra, 0x14($sp)
/* 738E0 80072CE0 10A20027 */  beq        $a1, $v0, .L80072D80
/* 738E4 80072CE4 00803825 */   or        $a3, $a0, $zero
/* 738E8 80072CE8 24010003 */  addiu      $at, $zero, 0x3
/* 738EC 80072CEC 10A10007 */  beq        $a1, $at, .L80072D0C
/* 738F0 80072CF0 24010004 */   addiu     $at, $zero, 0x4
/* 738F4 80072CF4 10A1000D */  beq        $a1, $at, .L80072D2C
/* 738F8 80072CF8 24010009 */   addiu     $at, $zero, 0x9
/* 738FC 80072CFC 50A10017 */  beql       $a1, $at, .L80072D5C
/* 73900 80072D00 8CE40000 */   lw        $a0, 0x0($a3)
/* 73904 80072D04 10000021 */  b          .L80072D8C
/* 73908 80072D08 8CE40000 */   lw        $a0, 0x0($a3)
.L80072D0C:
/* 7390C 80072D0C 8CE20040 */  lw         $v0, 0x40($a3)
/* 73910 80072D10 50400004 */  beql       $v0, $zero, .L80072D24
/* 73914 80072D14 ACE6003C */   sw        $a2, 0x3C($a3)
/* 73918 80072D18 10000002 */  b          .L80072D24
/* 7391C 80072D1C AC460000 */   sw        $a2, 0x0($v0)
/* 73920 80072D20 ACE6003C */  sw         $a2, 0x3C($a3)
.L80072D24:
/* 73924 80072D24 1000001E */  b          .L80072DA0
/* 73928 80072D28 ACE60040 */   sw        $a2, 0x40($a3)
.L80072D2C:
/* 7392C 80072D2C 8CE40000 */  lw         $a0, 0x0($a3)
/* 73930 80072D30 ACE20038 */  sw         $v0, 0x38($a3)
/* 73934 80072D34 ACE00048 */  sw         $zero, 0x48($a3)
/* 73938 80072D38 10800019 */  beqz       $a0, .L80072DA0
/* 7393C 80072D3C A4E2001A */   sh        $v0, 0x1A($a3)
/* 73940 80072D40 8C990008 */  lw         $t9, 0x8($a0)
/* 73944 80072D44 24050004 */  addiu      $a1, $zero, 0x4
/* 73948 80072D48 0320F809 */  jalr       $t9
/* 7394C 80072D4C 00000000 */   nop
/* 73950 80072D50 10000014 */  b          .L80072DA4
/* 73954 80072D54 8FBF0014 */   lw        $ra, 0x14($sp)
/* 73958 80072D58 8CE40000 */  lw         $a0, 0x0($a3)
.L80072D5C:
/* 7395C 80072D5C ACE20048 */  sw         $v0, 0x48($a3)
/* 73960 80072D60 50800010 */  beql       $a0, $zero, .L80072DA4
/* 73964 80072D64 8FBF0014 */   lw        $ra, 0x14($sp)
/* 73968 80072D68 8C990008 */  lw         $t9, 0x8($a0)
/* 7396C 80072D6C 24050009 */  addiu      $a1, $zero, 0x9
/* 73970 80072D70 0320F809 */  jalr       $t9
/* 73974 80072D74 00000000 */   nop
/* 73978 80072D78 1000000A */  b          .L80072DA4
/* 7397C 80072D7C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80072D80:
/* 73980 80072D80 10000007 */  b          .L80072DA0
/* 73984 80072D84 ACE60000 */   sw        $a2, 0x0($a3)
/* 73988 80072D88 8CE40000 */  lw         $a0, 0x0($a3)
.L80072D8C:
/* 7398C 80072D8C 50800005 */  beql       $a0, $zero, .L80072DA4
/* 73990 80072D90 8FBF0014 */   lw        $ra, 0x14($sp)
/* 73994 80072D94 8C990008 */  lw         $t9, 0x8($a0)
/* 73998 80072D98 0320F809 */  jalr       $t9
/* 7399C 80072D9C 00000000 */   nop
.L80072DA0:
/* 739A0 80072DA0 8FBF0014 */  lw         $ra, 0x14($sp)
.L80072DA4:
/* 739A4 80072DA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 739A8 80072DA8 00001025 */  or         $v0, $zero, $zero
/* 739AC 80072DAC 03E00008 */  jr         $ra
/* 739B0 80072DB0 00000000 */   nop

glabel func_80072DB4
/* 739B4 80072DB4 27BDFF18 */  addiu      $sp, $sp, -0xE8
/* 739B8 80072DB8 1480000B */  bnez       $a0, .L80072DE8
/* 739BC 80072DBC AFBF0014 */   sw        $ra, 0x14($sp)
/* 739C0 80072DC0 462E803E */  c.le.d     $f16, $f14
/* 739C4 80072DC4 340EFFFF */  ori        $t6, $zero, 0xFFFF
/* 739C8 80072DC8 00001025 */  or         $v0, $zero, $zero
/* 739CC 80072DCC 45000004 */  bc1f       .L80072DE0
/* 739D0 80072DD0 00000000 */   nop
/* 739D4 80072DD4 A62E0000 */  sh         $t6, 0x0($s1)
/* 739D8 80072DD8 10000066 */  b          .L80072F74
/* 739DC 80072DDC 24027FFF */   addiu     $v0, $zero, 0x7FFF
.L80072DE0:
/* 739E0 80072DE0 10000064 */  b          .L80072F74
/* 739E4 80072DE4 A6200000 */   sh        $zero, 0x0($s1)
.L80072DE8:
/* 739E8 80072DE8 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 739EC 80072DEC 4481B800 */  mtc1       $at, $f23
/* 739F0 80072DF0 4480B000 */  mtc1       $zero, $f22
/* 739F4 80072DF4 44802800 */  mtc1       $zero, $f5
/* 739F8 80072DF8 44802000 */  mtc1       $zero, $f4
/* 739FC 80072DFC 4636703C */  c.lt.d     $f14, $f22
/* 73A00 80072E00 27B20068 */  addiu      $s2, $sp, 0x68
/* 73A04 80072E04 3C0F8009 */  lui        $t7, %hi(D_80094B40)
/* 73A08 80072E08 25EF4B40 */  addiu      $t7, $t7, %lo(D_80094B40)
/* 73A0C 80072E0C 45000002 */  bc1f       .L80072E18
/* 73A10 80072E10 02407025 */   or        $t6, $s2, $zero
/* 73A14 80072E14 4620B386 */  mov.d      $f14, $f22
.L80072E18:
/* 73A18 80072E18 4624803E */  c.le.d     $f16, $f4
/* 73A1C 80072E1C 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 73A20 80072E20 25F9003C */  addiu      $t9, $t7, 0x3C
/* 73A24 80072E24 45000004 */  bc1f       .L80072E38
/* 73A28 80072E28 00000000 */   nop
/* 73A2C 80072E2C 44818800 */  mtc1       $at, $f17
/* 73A30 80072E30 44808000 */  mtc1       $zero, $f16
/* 73A34 80072E34 00000000 */  nop
.L80072E38:
/* 73A38 80072E38 8DE10000 */  lw         $at, 0x0($t7)
/* 73A3C 80072E3C 25EF000C */  addiu      $t7, $t7, 0xC
/* 73A40 80072E40 25CE000C */  addiu      $t6, $t6, 0xC
/* 73A44 80072E44 ADC1FFF4 */  sw         $at, -0xC($t6)
/* 73A48 80072E48 8DE1FFF8 */  lw         $at, -0x8($t7)
/* 73A4C 80072E4C ADC1FFF8 */  sw         $at, -0x8($t6)
/* 73A50 80072E50 8DE1FFFC */  lw         $at, -0x4($t7)
/* 73A54 80072E54 15F9FFF8 */  bne        $t7, $t9, .L80072E38
/* 73A58 80072E58 ADC1FFFC */   sw        $at, -0x4($t6)
/* 73A5C 80072E5C 44844000 */  mtc1       $a0, $f8
/* 73A60 80072E60 3C184000 */  lui        $t8, (0x40000000 >> 16)
/* 73A64 80072E64 44983000 */  mtc1       $t8, $f6
/* 73A68 80072E68 468042A1 */  cvt.d.w    $f10, $f8
/* 73A6C 80072E6C 8DE10000 */  lw         $at, 0x0($t7)
/* 73A70 80072E70 27A600B0 */  addiu      $a2, $sp, 0xB0
/* 73A74 80072E74 46803521 */  cvt.d.w    $f20, $f6
/* 73A78 80072E78 ADC10000 */  sw         $at, 0x0($t6)
/* 73A7C 80072E7C 462AB103 */  div.d      $f4, $f22, $f10
/* 73A80 80072E80 46307303 */  div.d      $f12, $f14, $f16
/* 73A84 80072E84 46342082 */  mul.d      $f2, $f4, $f20
/* 73A88 80072E88 4620118D */  trunc.w.d  $f6, $f2
/* 73A8C 80072E8C 44103000 */  mfc1       $s0, $f6
/* 73A90 80072E90 0C01CAFA */  jal        func_80072BE8
/* 73A94 80072E94 00000000 */   nop
/* 73A98 80072E98 240F0010 */  addiu      $t7, $zero, 0x10
/* 73A9C 80072E9C 448F4000 */  mtc1       $t7, $f8
/* 73AA0 80072EA0 8FAE00B0 */  lw         $t6, 0xB0($sp)
/* 73AA4 80072EA4 3C01800A */  lui        $at, %hi(D_80098E00)
/* 73AA8 80072EA8 468042A1 */  cvt.d.w    $f10, $f8
/* 73AAC 80072EAC 448E4000 */  mtc1       $t6, $f8
/* 73AB0 80072EB0 462A0082 */  mul.d      $f2, $f0, $f10
/* 73AB4 80072EB4 468042A1 */  cvt.d.w    $f10, $f8
/* 73AB8 80072EB8 D4288E00 */  ldc1       $f8, %lo(D_80098E00)($at)
/* 73ABC 80072EBC 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 73AC0 80072EC0 4620110D */  trunc.w.d  $f4, $f2
/* 73AC4 80072EC4 4620B086 */  mov.d      $f2, $f22
/* 73AC8 80072EC8 44182000 */  mfc1       $t8, $f4
/* 73ACC 80072ECC 00000000 */  nop
/* 73AD0 80072ED0 0018C8C0 */  sll        $t9, $t8, 3
/* 73AD4 80072ED4 02597821 */  addu       $t7, $s2, $t9
/* 73AD8 80072ED8 D5E6FFC0 */  ldc1       $f6, -0x40($t7)
/* 73ADC 80072EDC 462A3100 */  add.d      $f4, $f6, $f10
/* 73AE0 80072EE0 44803000 */  mtc1       $zero, $f6
/* 73AE4 80072EE4 44813800 */  mtc1       $at, $f7
/* 73AE8 80072EE8 46282302 */  mul.d      $f12, $f4, $f8
/* 73AEC 80072EEC 00000000 */  nop
/* 73AF0 80072EF0 46343382 */  mul.d      $f14, $f6, $f20
/* 73AF4 80072EF4 462E6303 */  div.d      $f12, $f12, $f14
/* 73AF8 80072EF8 12000009 */  beqz       $s0, .L80072F20
/* 73AFC 80072EFC 462CB000 */   add.d     $f0, $f22, $f12
.L80072F00:
/* 73B00 80072F00 32180001 */  andi       $t8, $s0, 0x1
/* 73B04 80072F04 13000003 */  beqz       $t8, .L80072F14
/* 73B08 80072F08 0010C843 */   sra       $t9, $s0, 1
/* 73B0C 80072F0C 46201082 */  mul.d      $f2, $f2, $f0
/* 73B10 80072F10 00000000 */  nop
.L80072F14:
/* 73B14 80072F14 46200002 */  mul.d      $f0, $f0, $f0
/* 73B18 80072F18 1720FFF9 */  bnez       $t9, .L80072F00
/* 73B1C 80072F1C 03208025 */   or        $s0, $t9, $zero
.L80072F20:
/* 73B20 80072F20 46221002 */  mul.d      $f0, $f2, $f2
/* 73B24 80072F24 3C01800A */  lui        $at, %hi(D_80098E08)
/* 73B28 80072F28 46200302 */  mul.d      $f12, $f0, $f0
/* 73B2C 80072F2C 00000000 */  nop
/* 73B30 80072F30 462C6082 */  mul.d      $f2, $f12, $f12
/* 73B34 80072F34 4620128D */  trunc.w.d  $f10, $f2
/* 73B38 80072F38 44035000 */  mfc1       $v1, $f10
/* 73B3C 80072F3C 00000000 */  nop
/* 73B40 80072F40 00037400 */  sll        $t6, $v1, 16
/* 73B44 80072F44 000E1403 */  sra        $v0, $t6, 16
/* 73B48 80072F48 44822000 */  mtc1       $v0, $f4
/* 73B4C 80072F4C 00000000 */  nop
/* 73B50 80072F50 46802220 */  cvt.s.w    $f8, $f4
/* 73B54 80072F54 D4248E08 */  ldc1       $f4, %lo(D_80098E08)($at)
/* 73B58 80072F58 460041A1 */  cvt.d.s    $f6, $f8
/* 73B5C 80072F5C 46261281 */  sub.d      $f10, $f2, $f6
/* 73B60 80072F60 46245202 */  mul.d      $f8, $f10, $f4
/* 73B64 80072F64 4620418D */  trunc.w.d  $f6, $f8
/* 73B68 80072F68 440F3000 */  mfc1       $t7, $f6
/* 73B6C 80072F6C 00000000 */  nop
/* 73B70 80072F70 A62F0000 */  sh         $t7, 0x0($s1)
.L80072F74:
/* 73B74 80072F74 8FBF0014 */  lw         $ra, 0x14($sp)
/* 73B78 80072F78 27BD00E8 */  addiu      $sp, $sp, 0xE8
/* 73B7C 80072F7C 03E00008 */  jr         $ra
/* 73B80 80072F80 00000000 */   nop

glabel func_80072F84
/* 73B84 80072F84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 73B88 80072F88 AFBF001C */  sw         $ra, 0x1C($sp)
/* 73B8C 80072F8C 8E6E0048 */  lw         $t6, 0x48($s3)
/* 73B90 80072F90 24010001 */  addiu      $at, $zero, 0x1
/* 73B94 80072F94 8E640000 */  lw         $a0, 0x0($s3)
/* 73B98 80072F98 15C10003 */  bne        $t6, $at, .L80072FA8
/* 73B9C 80072F9C 00000000 */   nop
/* 73BA0 80072FA0 56A00004 */  bnel       $s5, $zero, .L80072FB4
/* 73BA4 80072FA4 AFA80010 */   sw        $t0, 0x10($sp)
.L80072FA8:
/* 73BA8 80072FA8 10000098 */  b          .L8007320C
/* 73BAC 80072FAC 01001025 */   or        $v0, $t0, $zero
/* 73BB0 80072FB0 AFA80010 */  sw         $t0, 0x10($sp)
.L80072FB4:
/* 73BB4 80072FB4 8C990004 */  lw         $t9, 0x4($a0)
/* 73BB8 80072FB8 02C02825 */  or         $a1, $s6, $zero
/* 73BBC 80072FBC 02A03025 */  or         $a2, $s5, $zero
/* 73BC0 80072FC0 0320F809 */  jalr       $t9
/* 73BC4 80072FC4 00000000 */   nop
/* 73BC8 80072FC8 86CF0000 */  lh         $t7, 0x0($s6)
/* 73BCC 80072FCC 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 73BD0 80072FD0 0015B840 */  sll        $s7, $s5, 1
/* 73BD4 80072FD4 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 73BD8 80072FD8 03017025 */  or         $t6, $t8, $at
/* 73BDC 80072FDC AC4E0000 */  sw         $t6, 0x0($v0)
/* 73BE0 80072FE0 86190000 */  lh         $t9, 0x0($s0)
/* 73BE4 80072FE4 3C010808 */  lui        $at, (0x8080000 >> 16)
/* 73BE8 80072FE8 24540010 */  addiu      $s4, $v0, 0x10
/* 73BEC 80072FEC 27380440 */  addiu      $t8, $t9, 0x440
/* 73BF0 80072FF0 00187400 */  sll        $t6, $t8, 16
/* 73BF4 80072FF4 32F9FFFF */  andi       $t9, $s7, 0xFFFF
/* 73BF8 80072FF8 01D97825 */  or         $t7, $t6, $t9
/* 73BFC 80072FFC AC4F0004 */  sw         $t7, 0x4($v0)
/* 73C00 80073000 86180000 */  lh         $t8, 0x0($s0)
/* 73C04 80073004 270E0580 */  addiu      $t6, $t8, 0x580
/* 73C08 80073008 31D9FFFF */  andi       $t9, $t6, 0xFFFF
/* 73C0C 8007300C 03217825 */  or         $t7, $t9, $at
/* 73C10 80073010 AC4F0008 */  sw         $t7, 0x8($v0)
/* 73C14 80073014 86030000 */  lh         $v1, 0x0($s0)
/* 73C18 80073018 02808025 */  or         $s0, $s4, $zero
/* 73C1C 8007301C 24780800 */  addiu      $t8, $v1, 0x800
/* 73C20 80073020 330EFFFF */  andi       $t6, $t8, 0xFFFF
/* 73C24 80073024 246F06C0 */  addiu      $t7, $v1, 0x6C0
/* 73C28 80073028 000FC400 */  sll        $t8, $t7, 16
/* 73C2C 8007302C 01D8C825 */  or         $t9, $t6, $t8
/* 73C30 80073030 AC59000C */  sw         $t9, 0xC($v0)
/* 73C34 80073034 8E6F0038 */  lw         $t7, 0x38($s3)
/* 73C38 80073038 3C198009 */  lui        $t9, %hi(D_80094A40)
/* 73C3C 8007303C 51E00067 */  beql       $t7, $zero, .L800731DC
/* 73C40 80073040 3C0F0308 */   lui       $t7, (0x3080000 >> 16)
/* 73C44 80073044 866E0018 */  lh         $t6, 0x18($s3)
/* 73C48 80073048 AE600038 */  sw         $zero, 0x38($s3)
/* 73C4C 8007304C 866F001A */  lh         $t7, 0x1A($s3)
/* 73C50 80073050 000EC040 */  sll        $t8, $t6, 1
/* 73C54 80073054 0338C821 */  addu       $t9, $t9, $t8
/* 73C58 80073058 87394A40 */  lh         $t9, %lo(D_80094A40)($t9)
/* 73C5C 8007305C 8E640034 */  lw         $a0, 0x34($s3)
/* 73C60 80073060 26710024 */  addiu      $s1, $s3, 0x24
/* 73C64 80073064 032F0019 */  multu      $t9, $t7
/* 73C68 80073068 8679001C */  lh         $t9, 0x1C($s3)
/* 73C6C 8007306C 44992000 */  mtc1       $t9, $f4
/* 73C70 80073070 00000000 */  nop
/* 73C74 80073074 46802421 */  cvt.d.w    $f16, $f4
/* 73C78 80073078 00007012 */  mflo       $t6
/* 73C7C 8007307C 000EC3C3 */  sra        $t8, $t6, 15
/* 73C80 80073080 A6780028 */  sh         $t8, 0x28($s3)
/* 73C84 80073084 866F0028 */  lh         $t7, 0x28($s3)
/* 73C88 80073088 448F3000 */  mtc1       $t7, $f6
/* 73C8C 8007308C 0C01CB6D */  jal        func_80072DB4
/* 73C90 80073090 468033A1 */   cvt.d.w   $f14, $f6
/* 73C94 80073094 866E0018 */  lh         $t6, 0x18($s3)
/* 73C98 80073098 3C0F8009 */  lui        $t7, %hi(D_80094B3E)
/* 73C9C 8007309C A6620026 */  sh         $v0, 0x26($s3)
/* 73CA0 800730A0 000EC040 */  sll        $t8, $t6, 1
/* 73CA4 800730A4 0018C823 */  negu       $t9, $t8
/* 73CA8 800730A8 01F97821 */  addu       $t7, $t7, $t9
/* 73CAC 800730AC 85EF4B3E */  lh         $t7, %lo(D_80094B3E)($t7)
/* 73CB0 800730B0 866E001A */  lh         $t6, 0x1A($s3)
/* 73CB4 800730B4 8E640034 */  lw         $a0, 0x34($s3)
/* 73CB8 800730B8 2671002A */  addiu      $s1, $s3, 0x2A
/* 73CBC 800730BC 01EE0019 */  multu      $t7, $t6
/* 73CC0 800730C0 866F001E */  lh         $t7, 0x1E($s3)
/* 73CC4 800730C4 448F4000 */  mtc1       $t7, $f8
/* 73CC8 800730C8 00000000 */  nop
/* 73CCC 800730CC 46804421 */  cvt.d.w    $f16, $f8
/* 73CD0 800730D0 0000C012 */  mflo       $t8
/* 73CD4 800730D4 0018CBC3 */  sra        $t9, $t8, 15
/* 73CD8 800730D8 A679002E */  sh         $t9, 0x2E($s3)
/* 73CDC 800730DC 866E002E */  lh         $t6, 0x2E($s3)
/* 73CE0 800730E0 448E5000 */  mtc1       $t6, $f10
/* 73CE4 800730E4 0C01CB6D */  jal        func_80072DB4
/* 73CE8 800730E8 468053A1 */   cvt.d.w   $f14, $f10
/* 73CEC 800730EC 8678001C */  lh         $t8, 0x1C($s3)
/* 73CF0 800730F0 A662002C */  sh         $v0, 0x2C($s3)
/* 73CF4 800730F4 02801825 */  or         $v1, $s4, $zero
/* 73CF8 800730F8 3C010906 */  lui        $at, (0x9060000 >> 16)
/* 73CFC 800730FC 3319FFFF */  andi       $t9, $t8, 0xFFFF
/* 73D00 80073100 03217825 */  or         $t7, $t9, $at
/* 73D04 80073104 AC6F0000 */  sw         $t7, 0x0($v1)
/* 73D08 80073108 AC600004 */  sw         $zero, 0x4($v1)
/* 73D0C 8007310C 866E001E */  lh         $t6, 0x1E($s3)
/* 73D10 80073110 26940008 */  addiu      $s4, $s4, 0x8
/* 73D14 80073114 02802025 */  or         $a0, $s4, $zero
/* 73D18 80073118 3C010904 */  lui        $at, (0x9040000 >> 16)
/* 73D1C 8007311C 31D8FFFF */  andi       $t8, $t6, 0xFFFF
/* 73D20 80073120 0301C825 */  or         $t9, $t8, $at
/* 73D24 80073124 AC990000 */  sw         $t9, 0x0($a0)
/* 73D28 80073128 AC800004 */  sw         $zero, 0x4($a0)
/* 73D2C 8007312C 866F0028 */  lh         $t7, 0x28($s3)
/* 73D30 80073130 26940008 */  addiu      $s4, $s4, 0x8
/* 73D34 80073134 3C010902 */  lui        $at, (0x9020000 >> 16)
/* 73D38 80073138 31EEFFFF */  andi       $t6, $t7, 0xFFFF
/* 73D3C 8007313C 01C1C025 */  or         $t8, $t6, $at
/* 73D40 80073140 02802825 */  or         $a1, $s4, $zero
/* 73D44 80073144 ACB80000 */  sw         $t8, 0x0($a1)
/* 73D48 80073148 866F0026 */  lh         $t7, 0x26($s3)
/* 73D4C 8007314C 96790024 */  lhu        $t9, 0x24($s3)
/* 73D50 80073150 26940008 */  addiu      $s4, $s4, 0x8
/* 73D54 80073154 000F7400 */  sll        $t6, $t7, 16
/* 73D58 80073158 01D97825 */  or         $t7, $t6, $t9
/* 73D5C 8007315C ACAF0004 */  sw         $t7, 0x4($a1)
/* 73D60 80073160 8678002E */  lh         $t8, 0x2E($s3)
/* 73D64 80073164 3C010900 */  lui        $at, (0x9000000 >> 16)
/* 73D68 80073168 02803025 */  or         $a2, $s4, $zero
/* 73D6C 8007316C 330EFFFF */  andi       $t6, $t8, 0xFFFF
/* 73D70 80073170 01C1C825 */  or         $t9, $t6, $at
/* 73D74 80073174 ACD90000 */  sw         $t9, 0x0($a2)
/* 73D78 80073178 8678002C */  lh         $t8, 0x2C($s3)
/* 73D7C 8007317C 966F002A */  lhu        $t7, 0x2A($s3)
/* 73D80 80073180 26940008 */  addiu      $s4, $s4, 0x8
/* 73D84 80073184 00187400 */  sll        $t6, $t8, 16
/* 73D88 80073188 01CFC025 */  or         $t8, $t6, $t7
/* 73D8C 8007318C ACD80004 */  sw         $t8, 0x4($a2)
/* 73D90 80073190 86790020 */  lh         $t9, 0x20($s3)
/* 73D94 80073194 3C010908 */  lui        $at, (0x9080000 >> 16)
/* 73D98 80073198 02801025 */  or         $v0, $s4, $zero
/* 73D9C 8007319C 332EFFFF */  andi       $t6, $t9, 0xFFFF
/* 73DA0 800731A0 01C17825 */  or         $t7, $t6, $at
/* 73DA4 800731A4 AC4F0000 */  sw         $t7, 0x0($v0)
/* 73DA8 800731A8 86780022 */  lh         $t8, 0x22($s3)
/* 73DAC 800731AC 26940008 */  addiu      $s4, $s4, 0x8
/* 73DB0 800731B0 02808025 */  or         $s0, $s4, $zero
/* 73DB4 800731B4 3319FFFF */  andi       $t9, $t8, 0xFFFF
/* 73DB8 800731B8 AC590004 */  sw         $t9, 0x4($v0)
/* 73DBC 800731BC 3C0E0309 */  lui        $t6, (0x3090000 >> 16)
/* 73DC0 800731C0 AE0E0000 */  sw         $t6, 0x0($s0)
/* 73DC4 800731C4 8E640014 */  lw         $a0, 0x14($s3)
/* 73DC8 800731C8 0C019FAC */  jal        func_80067EB0
/* 73DCC 800731CC 26940008 */   addiu     $s4, $s4, 0x8
/* 73DD0 800731D0 10000007 */  b          .L800731F0
/* 73DD4 800731D4 AE020004 */   sw        $v0, 0x4($s0)
/* 73DD8 800731D8 3C0F0308 */  lui        $t7, (0x3080000 >> 16)
.L800731DC:
/* 73DDC 800731DC AE0F0000 */  sw         $t7, 0x0($s0)
/* 73DE0 800731E0 8E640014 */  lw         $a0, 0x14($s3)
/* 73DE4 800731E4 0C019FAC */  jal        func_80067EB0
/* 73DE8 800731E8 26940008 */   addiu     $s4, $s4, 0x8
/* 73DEC 800731EC AE020004 */  sw         $v0, 0x4($s0)
.L800731F0:
/* 73DF0 800731F0 86D80000 */  lh         $t8, 0x0($s6)
/* 73DF4 800731F4 02801025 */  or         $v0, $s4, $zero
/* 73DF8 800731F8 0317C821 */  addu       $t9, $t8, $s7
/* 73DFC 800731FC A6D90000 */  sh         $t9, 0x0($s6)
/* 73E00 80073200 8E6E0030 */  lw         $t6, 0x30($s3)
/* 73E04 80073204 01D57821 */  addu       $t7, $t6, $s5
/* 73E08 80073208 AE6F0030 */  sw         $t7, 0x30($s3)
.L8007320C:
/* 73E0C 8007320C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 73E10 80073210 27BD0020 */  addiu      $sp, $sp, 0x20
/* 73E14 80073214 03E00008 */  jr         $ra
/* 73E18 80073218 00000000 */   nop

glabel func_8007321C
/* 73E1C 8007321C AFA50008 */  sw         $a1, 0x8($sp)
/* 73E20 80073220 00057400 */  sll        $t6, $a1, 16
/* 73E24 80073224 AFA6000C */  sw         $a2, 0xC($sp)
/* 73E28 80073228 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 73E2C 8007322C 0004C8C3 */  sra        $t9, $a0, 3
/* 73E30 80073230 03003025 */  or         $a2, $t8, $zero
/* 73E34 80073234 000E2C03 */  sra        $a1, $t6, 16
/* 73E38 80073238 17200003 */  bnez       $t9, .L80073248
/* 73E3C 8007323C 03202025 */   or        $a0, $t9, $zero
/* 73E40 80073240 03E00008 */  jr         $ra
/* 73E44 80073244 46006006 */   mov.s     $f0, $f12
.L80073248:
/* 73E48 80073248 00057400 */  sll        $t6, $a1, 16
/* 73E4C 8007324C 448E2000 */  mtc1       $t6, $f4
/* 73E50 80073250 44864000 */  mtc1       $a2, $f8
/* 73E54 80073254 00001025 */  or         $v0, $zero, $zero
/* 73E58 80073258 468021A0 */  cvt.s.w    $f6, $f4
/* 73E5C 8007325C 04C10005 */  bgez       $a2, .L80073274
/* 73E60 80073260 468042A0 */   cvt.s.w   $f10, $f8
/* 73E64 80073264 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 73E68 80073268 44812000 */  mtc1       $at, $f4
/* 73E6C 8007326C 00000000 */  nop
/* 73E70 80073270 46045280 */  add.s      $f10, $f10, $f4
.L80073274:
/* 73E74 80073274 3C014780 */  lui        $at, (0x47800000 >> 16)
/* 73E78 80073278 460A3200 */  add.s      $f8, $f6, $f10
/* 73E7C 8007327C 44812000 */  mtc1       $at, $f4
/* 73E80 80073280 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 73E84 80073284 44811000 */  mtc1       $at, $f2
/* 73E88 80073288 24030020 */  addiu      $v1, $zero, 0x20
/* 73E8C 8007328C 46044003 */  div.s      $f0, $f8, $f4
/* 73E90 80073290 308F0001 */  andi       $t7, $a0, 0x1
.L80073294:
/* 73E94 80073294 11E00003 */  beqz       $t7, .L800732A4
/* 73E98 80073298 0004C043 */   sra       $t8, $a0, 1
/* 73E9C 8007329C 46001082 */  mul.s      $f2, $f2, $f0
/* 73EA0 800732A0 00000000 */  nop
.L800732A4:
/* 73EA4 800732A4 13000005 */  beqz       $t8, .L800732BC
/* 73EA8 800732A8 03002025 */   or        $a0, $t8, $zero
/* 73EAC 800732AC 24420001 */  addiu      $v0, $v0, 0x1
/* 73EB0 800732B0 46000002 */  mul.s      $f0, $f0, $f0
/* 73EB4 800732B4 5443FFF7 */  bnel       $v0, $v1, .L80073294
/* 73EB8 800732B8 308F0001 */   andi      $t7, $a0, 0x1
.L800732BC:
/* 73EBC 800732BC 46026002 */  mul.s      $f0, $f12, $f2
/* 73EC0 800732C0 00000000 */  nop
/* 73EC4 800732C4 03E00008 */  jr         $ra
/* 73EC8 800732C8 00000000 */   nop

glabel func_800732CC
/* 73ECC 800732CC 27BDFF58 */  addiu      $sp, $sp, -0xA8
/* 73ED0 800732D0 8FAE00B8 */  lw         $t6, 0xB8($sp)
/* 73ED4 800732D4 AFBF0054 */  sw         $ra, 0x54($sp)
/* 73ED8 800732D8 AFBE0050 */  sw         $fp, 0x50($sp)
/* 73EDC 800732DC AFB7004C */  sw         $s7, 0x4C($sp)
/* 73EE0 800732E0 AFB60048 */  sw         $s6, 0x48($sp)
/* 73EE4 800732E4 AFB50044 */  sw         $s5, 0x44($sp)
/* 73EE8 800732E8 AFB40040 */  sw         $s4, 0x40($sp)
/* 73EEC 800732EC AFB3003C */  sw         $s3, 0x3C($sp)
/* 73EF0 800732F0 AFB20038 */  sw         $s2, 0x38($sp)
/* 73EF4 800732F4 AFB10034 */  sw         $s1, 0x34($sp)
/* 73EF8 800732F8 AFB00030 */  sw         $s0, 0x30($sp)
/* 73EFC 800732FC F7B60028 */  sdc1       $f22, 0x28($sp)
/* 73F00 80073300 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 73F04 80073304 AFA500AC */  sw         $a1, 0xAC($sp)
/* 73F08 80073308 AFA600B0 */  sw         $a2, 0xB0($sp)
/* 73F0C 8007330C AFA700B4 */  sw         $a3, 0xB4($sp)
/* 73F10 80073310 AFA400A0 */  sw         $a0, 0xA0($sp)
/* 73F14 80073314 AFA70094 */  sw         $a3, 0x94($sp)
/* 73F18 80073318 A7A0008E */  sh         $zero, 0x8E($sp)
/* 73F1C 8007331C A7A0009E */  sh         $zero, 0x9E($sp)
/* 73F20 80073320 AFAE00A4 */  sw         $t6, 0xA4($sp)
/* 73F24 80073324 8C98003C */  lw         $t8, 0x3C($a0)
/* 73F28 80073328 0080F025 */  or         $fp, $a0, $zero
/* 73F2C 8007332C 24110001 */  addiu      $s1, $zero, 0x1
/* 73F30 80073330 5300011C */  beql       $t8, $zero, .L800737A4
/* 73F34 80073334 03C09825 */   or        $s3, $fp, $zero
/* 73F38 80073338 8FC3003C */  lw         $v1, 0x3C($fp)
.L8007333C:
/* 73F3C 8007333C 8FA20094 */  lw         $v0, 0x94($sp)
/* 73F40 80073340 8FB800B0 */  lw         $t8, 0xB0($sp)
/* 73F44 80073344 8C790004 */  lw         $t9, 0x4($v1)
/* 73F48 80073348 03227823 */  subu       $t7, $t9, $v0
/* 73F4C 8007334C 030F082A */  slt        $at, $t8, $t7
/* 73F50 80073350 AFAF0060 */  sw         $t7, 0x60($sp)
/* 73F54 80073354 14200112 */  bnez       $at, .L800737A0
/* 73F58 80073358 AFB90094 */   sw        $t9, 0x94($sp)
/* 73F5C 8007335C 94790008 */  lhu        $t9, 0x8($v1)
/* 73F60 80073360 2F210011 */  sltiu      $at, $t9, 0x11
/* 73F64 80073364 102000EC */  beqz       $at, L80073718
/* 73F68 80073368 0019C880 */   sll       $t9, $t9, 2
/* 73F6C 8007336C 3C01800A */  lui        $at, %hi(jtbl_80098E10_main)
/* 73F70 80073370 00390821 */  addu       $at, $at, $t9
/* 73F74 80073374 8C398E10 */  lw         $t9, %lo(jtbl_80098E10_main)($at)
/* 73F78 80073378 03200008 */  jr         $t9
/* 73F7C 8007337C 00000000 */   nop
glabel L80073380
/* 73F80 80073380 846E000A */  lh         $t6, 0xA($v1)
/* 73F84 80073384 00608025 */  or         $s0, $v1, $zero
/* 73F88 80073388 51C00007 */  beql       $t6, $zero, .L800733A8
/* 73F8C 8007338C 8FD90008 */   lw        $t9, 0x8($fp)
/* 73F90 80073390 8FD90008 */  lw         $t9, 0x8($fp)
/* 73F94 80073394 03C02025 */  or         $a0, $fp, $zero
/* 73F98 80073398 24050008 */  addiu      $a1, $zero, 0x8
/* 73F9C 8007339C 0320F809 */  jalr       $t9
/* 73FA0 800733A0 00003025 */   or        $a2, $zero, $zero
/* 73FA4 800733A4 8FD90008 */  lw         $t9, 0x8($fp)
.L800733A8:
/* 73FA8 800733A8 03C02025 */  or         $a0, $fp, $zero
/* 73FAC 800733AC 24050005 */  addiu      $a1, $zero, 0x5
/* 73FB0 800733B0 0320F809 */  jalr       $t9
/* 73FB4 800733B4 8E060018 */   lw        $a2, 0x18($s0)
/* 73FB8 800733B8 8FD90008 */  lw         $t9, 0x8($fp)
/* 73FBC 800733BC 03C02025 */  or         $a0, $fp, $zero
/* 73FC0 800733C0 24050009 */  addiu      $a1, $zero, 0x9
/* 73FC4 800733C4 0320F809 */  jalr       $t9
/* 73FC8 800733C8 00003025 */   or        $a2, $zero, $zero
/* 73FCC 800733CC AFD10038 */  sw         $s1, 0x38($fp)
/* 73FD0 800733D0 AFC00030 */  sw         $zero, 0x30($fp)
/* 73FD4 800733D4 8E180014 */  lw         $t8, 0x14($s0)
/* 73FD8 800733D8 AFD80034 */  sw         $t8, 0x34($fp)
/* 73FDC 800733DC 86030010 */  lh         $v1, 0x10($s0)
/* 73FE0 800733E0 00630019 */  multu      $v1, $v1
/* 73FE4 800733E4 00002012 */  mflo       $a0
/* 73FE8 800733E8 00047BC3 */  sra        $t7, $a0, 15
/* 73FEC 800733EC A7CF001A */  sh         $t7, 0x1A($fp)
/* 73FF0 800733F0 920E0012 */  lbu        $t6, 0x12($s0)
/* 73FF4 800733F4 3C0F8009 */  lui        $t7, %hi(D_80094A40)
/* 73FF8 800733F8 A7CE0018 */  sh         $t6, 0x18($fp)
/* 73FFC 800733FC 92190013 */  lbu        $t9, 0x13($s0)
/* 74000 80073400 0019C040 */  sll        $t8, $t9, 1
/* 74004 80073404 01F87821 */  addu       $t7, $t7, $t8
/* 74008 80073408 85EF4A40 */  lh         $t7, %lo(D_80094A40)($t7)
/* 7400C 8007340C A7CF0020 */  sh         $t7, 0x20($fp)
/* 74010 80073410 920E0013 */  lbu        $t6, 0x13($s0)
/* 74014 80073414 3C0F8009 */  lui        $t7, %hi(D_80094B3E)
/* 74018 80073418 000EC840 */  sll        $t9, $t6, 1
/* 7401C 8007341C 0019C023 */  negu       $t8, $t9
/* 74020 80073420 01F87821 */  addu       $t7, $t7, $t8
/* 74024 80073424 85EF4B3E */  lh         $t7, %lo(D_80094B3E)($t7)
/* 74028 80073428 A7CF0022 */  sh         $t7, 0x22($fp)
/* 7402C 8007342C 8E0E0014 */  lw         $t6, 0x14($s0)
/* 74030 80073430 51C00005 */  beql       $t6, $zero, .L80073448
/* 74034 80073434 87C20018 */   lh        $v0, 0x18($fp)
/* 74038 80073438 A7D1001C */  sh         $s1, 0x1C($fp)
/* 7403C 8007343C 10000013 */  b          .L8007348C
/* 74040 80073440 A7D1001E */   sh        $s1, 0x1E($fp)
/* 74044 80073444 87C20018 */  lh         $v0, 0x18($fp)
.L80073448:
/* 74048 80073448 3C188009 */  lui        $t8, %hi(D_80094A40)
/* 7404C 8007344C 87C3001A */  lh         $v1, 0x1A($fp)
/* 74050 80073450 0002C840 */  sll        $t9, $v0, 1
/* 74054 80073454 0319C021 */  addu       $t8, $t8, $t9
/* 74058 80073458 87184A40 */  lh         $t8, %lo(D_80094A40)($t8)
/* 7405C 8007345C 0019C823 */  negu       $t9, $t9
/* 74060 80073460 03030019 */  multu      $t8, $v1
/* 74064 80073464 3C188009 */  lui        $t8, %hi(D_80094B3E)
/* 74068 80073468 0319C021 */  addu       $t8, $t8, $t9
/* 7406C 8007346C 00007812 */  mflo       $t7
/* 74070 80073470 000F73C3 */  sra        $t6, $t7, 15
/* 74074 80073474 A7CE001C */  sh         $t6, 0x1C($fp)
/* 74078 80073478 87184B3E */  lh         $t8, %lo(D_80094B3E)($t8)
/* 7407C 8007347C 03030019 */  multu      $t8, $v1
/* 74080 80073480 00007812 */  mflo       $t7
/* 74084 80073484 000F73C3 */  sra        $t6, $t7, 15
/* 74088 80073488 A7CE001E */  sh         $t6, 0x1E($fp)
.L8007348C:
/* 7408C 8007348C 8FD90000 */  lw         $t9, 0x0($fp)
/* 74090 80073490 532000B1 */  beql       $t9, $zero, .L80073758
/* 74094 80073494 8FB80060 */   lw        $t8, 0x60($sp)
/* 74098 80073498 C604000C */  lwc1       $f4, 0xC($s0)
/* 7409C 8007349C 24050007 */  addiu      $a1, $zero, 0x7
/* 740A0 800734A0 E7A40074 */  swc1       $f4, 0x74($sp)
/* 740A4 800734A4 8FC40000 */  lw         $a0, 0x0($fp)
/* 740A8 800734A8 8FA60074 */  lw         $a2, 0x74($sp)
/* 740AC 800734AC 8C990008 */  lw         $t9, 0x8($a0)
/* 740B0 800734B0 0320F809 */  jalr       $t9
/* 740B4 800734B4 00000000 */   nop
/* 740B8 800734B8 100000A7 */  b          .L80073758
/* 740BC 800734BC 8FB80060 */   lw        $t8, 0x60($sp)
glabel L800734C0
/* 740C0 800734C0 03C09825 */  or         $s3, $fp, $zero
/* 740C4 800734C4 27B6009E */  addiu      $s6, $sp, 0x9E
/* 740C8 800734C8 27B0008E */  addiu      $s0, $sp, 0x8E
/* 740CC 800734CC 8FB50060 */  lw         $s5, 0x60($sp)
/* 740D0 800734D0 8FA700B4 */  lw         $a3, 0xB4($sp)
/* 740D4 800734D4 0C01CBE1 */  jal        func_80072F84
/* 740D8 800734D8 8FA800A4 */   lw        $t0, 0xA4($sp)
/* 740DC 800734DC AFA200A4 */  sw         $v0, 0xA4($sp)
/* 740E0 800734E0 8FC40034 */  lw         $a0, 0x34($fp)
/* 740E4 800734E4 8FC70030 */  lw         $a3, 0x30($fp)
/* 740E8 800734E8 24110001 */  addiu      $s1, $zero, 0x1
/* 740EC 800734EC 00E4082A */  slt        $at, $a3, $a0
/* 740F0 800734F0 5420001A */  bnel       $at, $zero, .L8007355C
/* 740F4 800734F4 87CE001C */   lh        $t6, 0x1C($fp)
/* 740F8 800734F8 87C20018 */  lh         $v0, 0x18($fp)
/* 740FC 800734FC 3C0F8009 */  lui        $t7, %hi(D_80094A40)
/* 74100 80073500 87C3001A */  lh         $v1, 0x1A($fp)
/* 74104 80073504 0002C040 */  sll        $t8, $v0, 1
/* 74108 80073508 01F87821 */  addu       $t7, $t7, $t8
/* 7410C 8007350C 85EF4A40 */  lh         $t7, %lo(D_80094A40)($t7)
/* 74110 80073510 0018C023 */  negu       $t8, $t8
/* 74114 80073514 01E30019 */  multu      $t7, $v1
/* 74118 80073518 3C0F8009 */  lui        $t7, %hi(D_80094B3E)
/* 7411C 8007351C 01F87821 */  addu       $t7, $t7, $t8
/* 74120 80073520 00007012 */  mflo       $t6
/* 74124 80073524 000ECBC3 */  sra        $t9, $t6, 15
/* 74128 80073528 A7D90028 */  sh         $t9, 0x28($fp)
/* 7412C 8007352C 85EF4B3E */  lh         $t7, %lo(D_80094B3E)($t7)
/* 74130 80073530 87D80028 */  lh         $t8, 0x28($fp)
/* 74134 80073534 AFC40030 */  sw         $a0, 0x30($fp)
/* 74138 80073538 01E30019 */  multu      $t7, $v1
/* 7413C 8007353C A7D8001C */  sh         $t8, 0x1C($fp)
/* 74140 80073540 00007012 */  mflo       $t6
/* 74144 80073544 000ECBC3 */  sra        $t9, $t6, 15
/* 74148 80073548 A7D9002E */  sh         $t9, 0x2E($fp)
/* 7414C 8007354C 87CF002E */  lh         $t7, 0x2E($fp)
/* 74150 80073550 10000016 */  b          .L800735AC
/* 74154 80073554 A7CF001E */   sh        $t7, 0x1E($fp)
/* 74158 80073558 87CE001C */  lh         $t6, 0x1C($fp)
.L8007355C:
/* 7415C 8007355C 00E02025 */  or         $a0, $a3, $zero
/* 74160 80073560 87C50026 */  lh         $a1, 0x26($fp)
/* 74164 80073564 448E3000 */  mtc1       $t6, $f6
/* 74168 80073568 97C60024 */  lhu        $a2, 0x24($fp)
/* 7416C 8007356C 0C01CC87 */  jal        func_8007321C
/* 74170 80073570 46803320 */   cvt.s.w   $f12, $f6
/* 74174 80073574 4600020D */  trunc.w.s  $f8, $f0
/* 74178 80073578 87CF001E */  lh         $t7, 0x1E($fp)
/* 7417C 8007357C 8FC40030 */  lw         $a0, 0x30($fp)
/* 74180 80073580 87C5002C */  lh         $a1, 0x2C($fp)
/* 74184 80073584 44184000 */  mfc1       $t8, $f8
/* 74188 80073588 448F5000 */  mtc1       $t7, $f10
/* 7418C 8007358C 97C6002A */  lhu        $a2, 0x2A($fp)
/* 74190 80073590 A7D8001C */  sh         $t8, 0x1C($fp)
/* 74194 80073594 0C01CC87 */  jal        func_8007321C
/* 74198 80073598 46805320 */   cvt.s.w   $f12, $f10
/* 7419C 8007359C 4600010D */  trunc.w.s  $f4, $f0
/* 741A0 800735A0 44192000 */  mfc1       $t9, $f4
/* 741A4 800735A4 00000000 */  nop
/* 741A8 800735A8 A7D9001E */  sh         $t9, 0x1E($fp)
.L800735AC:
/* 741AC 800735AC 87D8001C */  lh         $t8, 0x1C($fp)
/* 741B0 800735B0 57000003 */  bnel       $t8, $zero, .L800735C0
/* 741B4 800735B4 87CF001E */   lh        $t7, 0x1E($fp)
/* 741B8 800735B8 A7D1001C */  sh         $s1, 0x1C($fp)
/* 741BC 800735BC 87CF001E */  lh         $t7, 0x1E($fp)
.L800735C0:
/* 741C0 800735C0 55E00003 */  bnel       $t7, $zero, .L800735D0
/* 741C4 800735C4 8FC3003C */   lw        $v1, 0x3C($fp)
/* 741C8 800735C8 A7D1001E */  sh         $s1, 0x1E($fp)
/* 741CC 800735CC 8FC3003C */  lw         $v1, 0x3C($fp)
.L800735D0:
/* 741D0 800735D0 2401000C */  addiu      $at, $zero, 0xC
/* 741D4 800735D4 84640008 */  lh         $a0, 0x8($v1)
/* 741D8 800735D8 54810005 */  bnel       $a0, $at, .L800735F0
/* 741DC 800735DC 2401000B */   addiu     $at, $zero, 0xB
/* 741E0 800735E0 8C6E000C */  lw         $t6, 0xC($v1)
/* 741E4 800735E4 A7CE0018 */  sh         $t6, 0x18($fp)
/* 741E8 800735E8 84640008 */  lh         $a0, 0x8($v1)
/* 741EC 800735EC 2401000B */  addiu      $at, $zero, 0xB
.L800735F0:
/* 741F0 800735F0 5481000B */  bnel       $a0, $at, .L80073620
/* 741F4 800735F4 24010010 */   addiu     $at, $zero, 0x10
/* 741F8 800735F8 AFC00030 */  sw         $zero, 0x30($fp)
/* 741FC 800735FC 8C62000C */  lw         $v0, 0xC($v1)
/* 74200 80073600 00420019 */  multu      $v0, $v0
/* 74204 80073604 00001012 */  mflo       $v0
/* 74208 80073608 0002CBC3 */  sra        $t9, $v0, 15
/* 7420C 8007360C A7D9001A */  sh         $t9, 0x1A($fp)
/* 74210 80073610 8C780010 */  lw         $t8, 0x10($v1)
/* 74214 80073614 AFD80034 */  sw         $t8, 0x34($fp)
/* 74218 80073618 84640008 */  lh         $a0, 0x8($v1)
/* 7421C 8007361C 24010010 */  addiu      $at, $zero, 0x10
.L80073620:
/* 74220 80073620 1481000E */  bne        $a0, $at, .L8007365C
/* 74224 80073624 00000000 */   nop
/* 74228 80073628 8C6F000C */  lw         $t7, 0xC($v1)
/* 7422C 8007362C 3C198009 */  lui        $t9, %hi(D_80094A40)
/* 74230 80073630 000F7040 */  sll        $t6, $t7, 1
/* 74234 80073634 032EC821 */  addu       $t9, $t9, $t6
/* 74238 80073638 87394A40 */  lh         $t9, %lo(D_80094A40)($t9)
/* 7423C 8007363C A7D90020 */  sh         $t9, 0x20($fp)
/* 74240 80073640 8C78000C */  lw         $t8, 0xC($v1)
/* 74244 80073644 3C198009 */  lui        $t9, %hi(D_80094B3E)
/* 74248 80073648 00187840 */  sll        $t7, $t8, 1
/* 7424C 8007364C 000F7023 */  negu       $t6, $t7
/* 74250 80073650 032EC821 */  addu       $t9, $t9, $t6
/* 74254 80073654 87394B3E */  lh         $t9, %lo(D_80094B3E)($t9)
/* 74258 80073658 A7D90022 */  sh         $t9, 0x22($fp)
.L8007365C:
/* 7425C 8007365C 1000003D */  b          .L80073754
/* 74260 80073660 AFD10038 */   sw        $s1, 0x38($fp)
glabel L80073664
/* 74264 80073664 8478000A */  lh         $t8, 0xA($v1)
/* 74268 80073668 00608025 */  or         $s0, $v1, $zero
/* 7426C 8007366C 53000007 */  beql       $t8, $zero, .L8007368C
/* 74270 80073670 8FD90008 */   lw        $t9, 0x8($fp)
/* 74274 80073674 8FD90008 */  lw         $t9, 0x8($fp)
/* 74278 80073678 03C02025 */  or         $a0, $fp, $zero
/* 7427C 8007367C 24050008 */  addiu      $a1, $zero, 0x8
/* 74280 80073680 0320F809 */  jalr       $t9
/* 74284 80073684 00003025 */   or        $a2, $zero, $zero
/* 74288 80073688 8FD90008 */  lw         $t9, 0x8($fp)
.L8007368C:
/* 7428C 8007368C 03C02025 */  or         $a0, $fp, $zero
/* 74290 80073690 24050005 */  addiu      $a1, $zero, 0x5
/* 74294 80073694 0320F809 */  jalr       $t9
/* 74298 80073698 8E06000C */   lw        $a2, 0xC($s0)
/* 7429C 8007369C 8FD90008 */  lw         $t9, 0x8($fp)
/* 742A0 800736A0 03C02025 */  or         $a0, $fp, $zero
/* 742A4 800736A4 24050009 */  addiu      $a1, $zero, 0x9
/* 742A8 800736A8 0320F809 */  jalr       $t9
/* 742AC 800736AC 00003025 */   or        $a2, $zero, $zero
/* 742B0 800736B0 10000029 */  b          .L80073758
/* 742B4 800736B4 8FB80060 */   lw        $t8, 0x60($sp)
glabel L800736B8
/* 742B8 800736B8 03C09825 */  or         $s3, $fp, $zero
/* 742BC 800736BC 27B6009E */  addiu      $s6, $sp, 0x9E
/* 742C0 800736C0 27B0008E */  addiu      $s0, $sp, 0x8E
/* 742C4 800736C4 8FB50060 */  lw         $s5, 0x60($sp)
/* 742C8 800736C8 8FA700B4 */  lw         $a3, 0xB4($sp)
/* 742CC 800736CC 0C01CBE1 */  jal        func_80072F84
/* 742D0 800736D0 8FA800A4 */   lw        $t0, 0xA4($sp)
/* 742D4 800736D4 AFA200A4 */  sw         $v0, 0xA4($sp)
/* 742D8 800736D8 8FD90008 */  lw         $t9, 0x8($fp)
/* 742DC 800736DC 24110001 */  addiu      $s1, $zero, 0x1
/* 742E0 800736E0 03C02025 */  or         $a0, $fp, $zero
/* 742E4 800736E4 24050004 */  addiu      $a1, $zero, 0x4
/* 742E8 800736E8 0320F809 */  jalr       $t9
/* 742EC 800736EC 00003025 */   or        $a2, $zero, $zero
/* 742F0 800736F0 10000019 */  b          .L80073758
/* 742F4 800736F4 8FB80060 */   lw        $t8, 0x60($sp)
glabel L800736F8
/* 742F8 800736F8 8C6F000C */  lw         $t7, 0xC($v1)
/* 742FC 800736FC 3C048009 */  lui        $a0, %hi(alGlobals)
/* 74300 80073700 8C842E40 */  lw         $a0, %lo(alGlobals)($a0)
/* 74304 80073704 ADE000D8 */  sw         $zero, 0xD8($t7)
/* 74308 80073708 0C01A014 */  jal        func_80068050
/* 7430C 8007370C 8C65000C */   lw        $a1, 0xC($v1)
/* 74310 80073710 10000011 */  b          .L80073758
/* 74314 80073714 8FB80060 */   lw        $t8, 0x60($sp)
glabel L80073718
/* 74318 80073718 03C09825 */  or         $s3, $fp, $zero
/* 7431C 8007371C 27B6009E */  addiu      $s6, $sp, 0x9E
/* 74320 80073720 27B0008E */  addiu      $s0, $sp, 0x8E
/* 74324 80073724 8FB50060 */  lw         $s5, 0x60($sp)
/* 74328 80073728 8FA700B4 */  lw         $a3, 0xB4($sp)
/* 7432C 8007372C 0C01CBE1 */  jal        func_80072F84
/* 74330 80073730 8FA800A4 */   lw        $t0, 0xA4($sp)
/* 74334 80073734 AFA200A4 */  sw         $v0, 0xA4($sp)
/* 74338 80073738 8FD90008 */  lw         $t9, 0x8($fp)
/* 7433C 8007373C 8FC3003C */  lw         $v1, 0x3C($fp)
/* 74340 80073740 24110001 */  addiu      $s1, $zero, 0x1
/* 74344 80073744 03C02025 */  or         $a0, $fp, $zero
/* 74348 80073748 84650008 */  lh         $a1, 0x8($v1)
/* 7434C 8007374C 0320F809 */  jalr       $t9
/* 74350 80073750 8C66000C */   lw        $a2, 0xC($v1)
.L80073754:
/* 74354 80073754 8FB80060 */  lw         $t8, 0x60($sp)
.L80073758:
/* 74358 80073758 87AE008E */  lh         $t6, 0x8E($sp)
/* 7435C 8007375C 00187840 */  sll        $t7, $t8, 1
/* 74360 80073760 01CFC821 */  addu       $t9, $t6, $t7
/* 74364 80073764 8FAE00B0 */  lw         $t6, 0xB0($sp)
/* 74368 80073768 A7B9008E */  sh         $t9, 0x8E($sp)
/* 7436C 8007376C 01D87823 */  subu       $t7, $t6, $t8
/* 74370 80073770 AFAF00B0 */  sw         $t7, 0xB0($sp)
/* 74374 80073774 8FC4003C */  lw         $a0, 0x3C($fp)
/* 74378 80073778 8C990000 */  lw         $t9, 0x0($a0)
/* 7437C 8007377C 17200002 */  bnez       $t9, .L80073788
/* 74380 80073780 AFD9003C */   sw        $t9, 0x3C($fp)
/* 74384 80073784 AFC00040 */  sw         $zero, 0x40($fp)
.L80073788:
/* 74388 80073788 0C01A03A */  jal        func_800680E8
/* 7438C 8007378C 00000000 */   nop
/* 74390 80073790 8FB800A0 */  lw         $t8, 0xA0($sp)
/* 74394 80073794 8F0F003C */  lw         $t7, 0x3C($t8)
/* 74398 80073798 55E0FEE8 */  bnel       $t7, $zero, .L8007333C
/* 7439C 8007379C 8FC3003C */   lw        $v1, 0x3C($fp)
.L800737A0:
/* 743A0 800737A0 03C09825 */  or         $s3, $fp, $zero
.L800737A4:
/* 743A4 800737A4 27B6009E */  addiu      $s6, $sp, 0x9E
/* 743A8 800737A8 27B0008E */  addiu      $s0, $sp, 0x8E
/* 743AC 800737AC 8FB500B0 */  lw         $s5, 0xB0($sp)
/* 743B0 800737B0 8FA700B4 */  lw         $a3, 0xB4($sp)
/* 743B4 800737B4 0C01CBE1 */  jal        func_80072F84
/* 743B8 800737B8 8FA800A4 */   lw        $t0, 0xA4($sp)
/* 743BC 800737BC AFA200A4 */  sw         $v0, 0xA4($sp)
/* 743C0 800737C0 8FD90030 */  lw         $t9, 0x30($fp)
/* 743C4 800737C4 8FC40034 */  lw         $a0, 0x34($fp)
/* 743C8 800737C8 0099082A */  slt        $at, $a0, $t9
/* 743CC 800737CC 50200003 */  beql       $at, $zero, .L800737DC
/* 743D0 800737D0 8FBF0054 */   lw        $ra, 0x54($sp)
/* 743D4 800737D4 AFC40030 */  sw         $a0, 0x30($fp)
/* 743D8 800737D8 8FBF0054 */  lw         $ra, 0x54($sp)
.L800737DC:
/* 743DC 800737DC 8FA200A4 */  lw         $v0, 0xA4($sp)
/* 743E0 800737E0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 743E4 800737E4 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 743E8 800737E8 8FB00030 */  lw         $s0, 0x30($sp)
/* 743EC 800737EC 8FB10034 */  lw         $s1, 0x34($sp)
/* 743F0 800737F0 8FB20038 */  lw         $s2, 0x38($sp)
/* 743F4 800737F4 8FB3003C */  lw         $s3, 0x3C($sp)
/* 743F8 800737F8 8FB40040 */  lw         $s4, 0x40($sp)
/* 743FC 800737FC 8FB50044 */  lw         $s5, 0x44($sp)
/* 74400 80073800 8FB60048 */  lw         $s6, 0x48($sp)
/* 74404 80073804 8FB7004C */  lw         $s7, 0x4C($sp)
/* 74408 80073808 8FBE0050 */  lw         $fp, 0x50($sp)
/* 7440C 8007380C 03E00008 */  jr         $ra
/* 74410 80073810 27BD00A8 */   addiu     $sp, $sp, 0xA8
/* 74414 80073814 00000000 */  nop
/* 74418 80073818 00000000 */  nop
/* 7441C 8007381C 00000000 */  nop

glabel func_80073820
/* 74420 80073820 24010002 */  addiu      $at, $zero, 0x2
/* 74424 80073824 14A10008 */  bne        $a1, $at, .L80073848
/* 74428 80073828 8C82001C */   lw        $v0, 0x1C($a0)
/* 7442C 8007382C 8C8E0014 */  lw         $t6, 0x14($a0)
/* 74430 80073830 000E7880 */  sll        $t7, $t6, 2
/* 74434 80073834 004FC021 */  addu       $t8, $v0, $t7
/* 74438 80073838 AF060000 */  sw         $a2, 0x0($t8)
/* 7443C 8007383C 8C990014 */  lw         $t9, 0x14($a0)
/* 74440 80073840 27280001 */  addiu      $t0, $t9, 0x1
/* 74444 80073844 AC880014 */  sw         $t0, 0x14($a0)
.L80073848:
/* 74448 80073848 03E00008 */  jr         $ra
/* 7444C 8007384C 00001025 */   or        $v0, $zero, $zero

glabel func_80073850
/* 74450 80073850 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 74454 80073854 8FA80050 */  lw         $t0, 0x50($sp)
/* 74458 80073858 AFBF003C */  sw         $ra, 0x3C($sp)
/* 7445C 8007385C AFB60038 */  sw         $s6, 0x38($sp)
/* 74460 80073860 AFB50034 */  sw         $s5, 0x34($sp)
/* 74464 80073864 AFB40030 */  sw         $s4, 0x30($sp)
/* 74468 80073868 AFB3002C */  sw         $s3, 0x2C($sp)
/* 7446C 8007386C AFB20028 */  sw         $s2, 0x28($sp)
/* 74470 80073870 AFB10024 */  sw         $s1, 0x24($sp)
/* 74474 80073874 AFB00020 */  sw         $s0, 0x20($sp)
/* 74478 80073878 8C83001C */  lw         $v1, 0x1C($a0)
/* 7447C 8007387C 3C0E0200 */  lui        $t6, (0x20006C0 >> 16)
/* 74480 80073880 00061040 */  sll        $v0, $a2, 1
/* 74484 80073884 3C0F0200 */  lui        $t7, (0x2000800 >> 16)
/* 74488 80073888 35CE06C0 */  ori        $t6, $t6, (0x20006C0 & 0xFFFF)
/* 7448C 8007388C 35EF0800 */  ori        $t7, $t7, (0x2000800 & 0xFFFF)
/* 74490 80073890 AD0E0000 */  sw         $t6, 0x0($t0)
/* 74494 80073894 AD020004 */  sw         $v0, 0x4($t0)
/* 74498 80073898 AD0F0008 */  sw         $t7, 0x8($t0)
/* 7449C 8007389C AD02000C */  sw         $v0, 0xC($t0)
/* 744A0 800738A0 8C980014 */  lw         $t8, 0x14($a0)
/* 744A4 800738A4 00C0A025 */  or         $s4, $a2, $zero
/* 744A8 800738A8 00A0A825 */  or         $s5, $a1, $zero
/* 744AC 800738AC 00E0B025 */  or         $s6, $a3, $zero
/* 744B0 800738B0 00809825 */  or         $s3, $a0, $zero
/* 744B4 800738B4 00008025 */  or         $s0, $zero, $zero
/* 744B8 800738B8 1B000010 */  blez       $t8, .L800738FC
/* 744BC 800738BC 25120010 */   addiu     $s2, $t0, 0x10
/* 744C0 800738C0 00608825 */  or         $s1, $v1, $zero
.L800738C4:
/* 744C4 800738C4 8E240000 */  lw         $a0, 0x0($s1)
/* 744C8 800738C8 AFB20010 */  sw         $s2, 0x10($sp)
/* 744CC 800738CC 02A02825 */  or         $a1, $s5, $zero
/* 744D0 800738D0 8C990004 */  lw         $t9, 0x4($a0)
/* 744D4 800738D4 02803025 */  or         $a2, $s4, $zero
/* 744D8 800738D8 02C03825 */  or         $a3, $s6, $zero
/* 744DC 800738DC 0320F809 */  jalr       $t9
/* 744E0 800738E0 00000000 */   nop
/* 744E4 800738E4 8E690014 */  lw         $t1, 0x14($s3)
/* 744E8 800738E8 26100001 */  addiu      $s0, $s0, 0x1
/* 744EC 800738EC 26310004 */  addiu      $s1, $s1, 0x4
/* 744F0 800738F0 0209082A */  slt        $at, $s0, $t1
/* 744F4 800738F4 1420FFF3 */  bnez       $at, .L800738C4
/* 744F8 800738F8 00409025 */   or        $s2, $v0, $zero
.L800738FC:
/* 744FC 800738FC 8FBF003C */  lw         $ra, 0x3C($sp)
/* 74500 80073900 02401025 */  or         $v0, $s2, $zero
/* 74504 80073904 8FB20028 */  lw         $s2, 0x28($sp)
/* 74508 80073908 8FB00020 */  lw         $s0, 0x20($sp)
/* 7450C 8007390C 8FB10024 */  lw         $s1, 0x24($sp)
/* 74510 80073910 8FB3002C */  lw         $s3, 0x2C($sp)
/* 74514 80073914 8FB40030 */  lw         $s4, 0x30($sp)
/* 74518 80073918 8FB50034 */  lw         $s5, 0x34($sp)
/* 7451C 8007391C 8FB60038 */  lw         $s6, 0x38($sp)
/* 74520 80073920 03E00008 */  jr         $ra
/* 74524 80073924 27BD0040 */   addiu     $sp, $sp, 0x40
/* 74528 80073928 00000000 */  nop
/* 7452C 8007392C 00000000 */  nop

glabel func_80073930
/* 74530 80073930 24010001 */  addiu      $at, $zero, 0x1
/* 74534 80073934 10A10006 */  beq        $a1, $at, .L80073950
/* 74538 80073938 00001025 */   or        $v0, $zero, $zero
/* 7453C 8007393C 24010006 */  addiu      $at, $zero, 0x6
/* 74540 80073940 50A10006 */  beql       $a1, $at, .L8007395C
/* 74544 80073944 AC860014 */   sw        $a2, 0x14($a0)
/* 74548 80073948 03E00008 */  jr         $ra
/* 7454C 8007394C 00001025 */   or        $v0, $zero, $zero
.L80073950:
/* 74550 80073950 03E00008 */  jr         $ra
/* 74554 80073954 AC860000 */   sw        $a2, 0x0($a0)
/* 74558 80073958 AC860014 */  sw         $a2, 0x14($a0)
.L8007395C:
/* 7455C 8007395C 03E00008 */  jr         $ra
/* 74560 80073960 00001025 */   or        $v0, $zero, $zero

glabel func_80073964
/* 74564 80073964 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74568 80073968 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7456C 8007396C AFA40020 */  sw         $a0, 0x20($sp)
/* 74570 80073970 8C840000 */  lw         $a0, 0x0($a0)
/* 74574 80073974 8FAF0030 */  lw         $t7, 0x30($sp)
/* 74578 80073978 AFA60028 */  sw         $a2, 0x28($sp)
/* 7457C 8007397C AFAF0010 */  sw         $t7, 0x10($sp)
/* 74580 80073980 8C990004 */  lw         $t9, 0x4($a0)
/* 74584 80073984 0320F809 */  jalr       $t9
/* 74588 80073988 00000000 */   nop
/* 7458C 8007398C 8FA60028 */  lw         $a2, 0x28($sp)
/* 74590 80073990 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 74594 80073994 3C0A0440 */  lui        $t2, (0x4400580 >> 16)
/* 74598 80073998 0006C040 */  sll        $t8, $a2, 1
/* 7459C 8007399C 00065880 */  sll        $t3, $a2, 2
/* 745A0 800739A0 3308FFFF */  andi       $t0, $t8, 0xFFFF
/* 745A4 800739A4 354A0580 */  ori        $t2, $t2, (0x4400580 & 0xFFFF)
/* 745A8 800739A8 3C090D00 */  lui        $t1, (0xD000000 >> 16)
/* 745AC 800739AC 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 745B0 800739B0 3C0D0600 */  lui        $t5, (0x6000000 >> 16)
/* 745B4 800739B4 AC480004 */  sw         $t0, 0x4($v0)
/* 745B8 800739B8 AC430000 */  sw         $v1, 0x0($v0)
/* 745BC 800739BC AC490008 */  sw         $t1, 0x8($v0)
/* 745C0 800739C0 AC4A000C */  sw         $t2, 0xC($v0)
/* 745C4 800739C4 AC4C0014 */  sw         $t4, 0x14($v0)
/* 745C8 800739C8 AC430010 */  sw         $v1, 0x10($v0)
/* 745CC 800739CC AC4D0018 */  sw         $t5, 0x18($v0)
/* 745D0 800739D0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 745D4 800739D4 24420020 */  addiu      $v0, $v0, 0x20
/* 745D8 800739D8 8DCF0014 */  lw         $t7, 0x14($t6)
/* 745DC 800739DC AC4FFFFC */  sw         $t7, -0x4($v0)
/* 745E0 800739E0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 745E4 800739E4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 745E8 800739E8 03E00008 */  jr         $ra
/* 745EC 800739EC 00000000 */   nop

glabel func_800739F0
/* 745F0 800739F0 8C8E0008 */  lw         $t6, 0x8($a0)
/* 745F4 800739F4 ACAE0000 */  sw         $t6, 0x0($a1)
/* 745F8 800739F8 848F001A */  lh         $t7, 0x1A($a0)
/* 745FC 800739FC A4AF000C */  sh         $t7, 0xC($a1)
/* 74600 80073A00 8C98000C */  lw         $t8, 0xC($a0)
/* 74604 80073A04 03E00008 */  jr         $ra
/* 74608 80073A08 ACB80004 */   sw        $t8, 0x4($a1)

glabel func_80073A0C
/* 7460C 80073A0C 8CAE0000 */  lw         $t6, 0x0($a1)
/* 74610 80073A10 AC8E0008 */  sw         $t6, 0x8($a0)
/* 74614 80073A14 84AF000C */  lh         $t7, 0xC($a1)
/* 74618 80073A18 A48F001A */  sh         $t7, 0x1A($a0)
/* 7461C 80073A1C 8CB80004 */  lw         $t8, 0x4($a1)
/* 74620 80073A20 03E00008 */  jr         $ra
/* 74624 80073A24 AC98000C */   sw        $t8, 0xC($a0)

glabel func_80073A28
/* 74628 80073A28 03E00008 */  jr         $ra
/* 7462C 80073A2C 8C82000C */   lw        $v0, 0xC($a0)

glabel func_80073A30
/* 74630 80073A30 03E00008 */  jr         $ra
/* 74634 80073A34 00000000 */   nop

glabel func_80073A38
/* 74638 80073A38 8C830008 */  lw         $v1, 0x8($a0)
/* 7463C 80073A3C 90620000 */  lbu        $v0, 0x0($v1)
/* 74640 80073A40 246E0001 */  addiu      $t6, $v1, 0x1
/* 74644 80073A44 AC8E0008 */  sw         $t6, 0x8($a0)
/* 74648 80073A48 304F0080 */  andi       $t7, $v0, 0x80
/* 7464C 80073A4C 11E0000B */  beqz       $t7, .L80073A7C
/* 74650 80073A50 00402825 */   or        $a1, $v0, $zero
/* 74654 80073A54 3045007F */  andi       $a1, $v0, 0x7F
.L80073A58:
/* 74658 80073A58 8C830008 */  lw         $v1, 0x8($a0)
/* 7465C 80073A5C 0005C9C0 */  sll        $t9, $a1, 7
/* 74660 80073A60 90620000 */  lbu        $v0, 0x0($v1)
/* 74664 80073A64 24780001 */  addiu      $t8, $v1, 0x1
/* 74668 80073A68 AC980008 */  sw         $t8, 0x8($a0)
/* 7466C 80073A6C 304E007F */  andi       $t6, $v0, 0x7F
/* 74670 80073A70 304F0080 */  andi       $t7, $v0, 0x80
/* 74674 80073A74 15E0FFF8 */  bnez       $t7, .L80073A58
/* 74678 80073A78 032E2821 */   addu      $a1, $t9, $t6
.L80073A7C:
/* 7467C 80073A7C 03E00008 */  jr         $ra
/* 74680 80073A80 00A01025 */   or        $v0, $a1, $zero

glabel func_80073A84
/* 74684 80073A84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74688 80073A88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7468C 80073A8C 00803025 */  or         $a2, $a0, $zero
/* 74690 80073A90 0C01CE8E */  jal        func_80073A38
/* 74694 80073A94 00A03825 */   or        $a3, $a1, $zero
/* 74698 80073A98 8CCE000C */  lw         $t6, 0xC($a2)
/* 7469C 80073A9C 8CC30008 */  lw         $v1, 0x8($a2)
/* 746A0 80073AA0 00404825 */  or         $t1, $v0, $zero
/* 746A4 80073AA4 01C27821 */  addu       $t7, $t6, $v0
/* 746A8 80073AA8 ACCF000C */  sw         $t7, 0xC($a2)
/* 746AC 80073AAC 90640000 */  lbu        $a0, 0x0($v1)
/* 746B0 80073AB0 240100FF */  addiu      $at, $zero, 0xFF
/* 746B4 80073AB4 24780001 */  addiu      $t8, $v1, 0x1
/* 746B8 80073AB8 ACD80008 */  sw         $t8, 0x8($a2)
/* 746BC 80073ABC 00801025 */  or         $v0, $a0, $zero
/* 746C0 80073AC0 1481002F */  bne        $a0, $at, .L80073B80
/* 746C4 80073AC4 308500FF */   andi      $a1, $a0, 0xFF
/* 746C8 80073AC8 93020000 */  lbu        $v0, 0x0($t8)
/* 746CC 80073ACC 27190001 */  addiu      $t9, $t8, 0x1
/* 746D0 80073AD0 24010051 */  addiu      $at, $zero, 0x51
/* 746D4 80073AD4 ACD90008 */  sw         $t9, 0x8($a2)
/* 746D8 80073AD8 1441001B */  bne        $v0, $at, .L80073B48
/* 746DC 80073ADC 00404025 */   or        $t0, $v0, $zero
/* 746E0 80073AE0 240E0003 */  addiu      $t6, $zero, 0x3
/* 746E4 80073AE4 A4EE0000 */  sh         $t6, 0x0($a3)
/* 746E8 80073AE8 ACE90004 */  sw         $t1, 0x4($a3)
/* 746EC 80073AEC A0E50008 */  sb         $a1, 0x8($a3)
/* 746F0 80073AF0 A0E80009 */  sb         $t0, 0x9($a3)
/* 746F4 80073AF4 8CC30008 */  lw         $v1, 0x8($a2)
/* 746F8 80073AF8 90620000 */  lbu        $v0, 0x0($v1)
/* 746FC 80073AFC 246F0001 */  addiu      $t7, $v1, 0x1
/* 74700 80073B00 ACCF0008 */  sw         $t7, 0x8($a2)
/* 74704 80073B04 A0E2000A */  sb         $v0, 0xA($a3)
/* 74708 80073B08 8CC30008 */  lw         $v1, 0x8($a2)
/* 7470C 80073B0C 90640000 */  lbu        $a0, 0x0($v1)
/* 74710 80073B10 24780001 */  addiu      $t8, $v1, 0x1
/* 74714 80073B14 ACD80008 */  sw         $t8, 0x8($a2)
/* 74718 80073B18 A0E4000B */  sb         $a0, 0xB($a3)
/* 7471C 80073B1C 8CC30008 */  lw         $v1, 0x8($a2)
/* 74720 80073B20 90650000 */  lbu        $a1, 0x0($v1)
/* 74724 80073B24 24790001 */  addiu      $t9, $v1, 0x1
/* 74728 80073B28 ACD90008 */  sw         $t9, 0x8($a2)
/* 7472C 80073B2C A0E5000C */  sb         $a1, 0xC($a3)
/* 74730 80073B30 8CC30008 */  lw         $v1, 0x8($a2)
/* 74734 80073B34 90640000 */  lbu        $a0, 0x0($v1)
/* 74738 80073B38 246E0001 */  addiu      $t6, $v1, 0x1
/* 7473C 80073B3C ACCE0008 */  sw         $t6, 0x8($a2)
/* 74740 80073B40 1000000D */  b          .L80073B78
/* 74744 80073B44 A0E4000D */   sb        $a0, 0xD($a3)
.L80073B48:
/* 74748 80073B48 2401002F */  addiu      $at, $zero, 0x2F
/* 7474C 80073B4C 1441000A */  bne        $v0, $at, .L80073B78
/* 74750 80073B50 240F0004 */   addiu     $t7, $zero, 0x4
/* 74754 80073B54 A4EF0000 */  sh         $t7, 0x0($a3)
/* 74758 80073B58 ACE90004 */  sw         $t1, 0x4($a3)
/* 7475C 80073B5C A0E50008 */  sb         $a1, 0x8($a3)
/* 74760 80073B60 A0E80009 */  sb         $t0, 0x9($a3)
/* 74764 80073B64 8CC30008 */  lw         $v1, 0x8($a2)
/* 74768 80073B68 90640000 */  lbu        $a0, 0x0($v1)
/* 7476C 80073B6C 24780001 */  addiu      $t8, $v1, 0x1
/* 74770 80073B70 ACD80008 */  sw         $t8, 0x8($a2)
/* 74774 80073B74 A0E4000A */  sb         $a0, 0xA($a3)
.L80073B78:
/* 74778 80073B78 1000001F */  b          .L80073BF8
/* 7477C 80073B7C A4C0001A */   sh        $zero, 0x1A($a2)
.L80073B80:
/* 74780 80073B80 24190001 */  addiu      $t9, $zero, 0x1
/* 74784 80073B84 304E0080 */  andi       $t6, $v0, 0x80
/* 74788 80073B88 A4F90000 */  sh         $t9, 0x0($a3)
/* 7478C 80073B8C 11C00009 */  beqz       $t6, .L80073BB4
/* 74790 80073B90 ACE90004 */   sw        $t1, 0x4($a3)
/* 74794 80073B94 A0E50008 */  sb         $a1, 0x8($a3)
/* 74798 80073B98 8CC30008 */  lw         $v1, 0x8($a2)
/* 7479C 80073B9C 90640000 */  lbu        $a0, 0x0($v1)
/* 747A0 80073BA0 246F0001 */  addiu      $t7, $v1, 0x1
/* 747A4 80073BA4 ACCF0008 */  sw         $t7, 0x8($a2)
/* 747A8 80073BA8 A0E40009 */  sb         $a0, 0x9($a3)
/* 747AC 80073BAC 10000004 */  b          .L80073BC0
/* 747B0 80073BB0 A4C5001A */   sh        $a1, 0x1A($a2)
.L80073BB4:
/* 747B4 80073BB4 84D8001A */  lh         $t8, 0x1A($a2)
/* 747B8 80073BB8 A0E40009 */  sb         $a0, 0x9($a3)
/* 747BC 80073BBC A0F80008 */  sb         $t8, 0x8($a3)
.L80073BC0:
/* 747C0 80073BC0 90E20008 */  lbu        $v0, 0x8($a3)
/* 747C4 80073BC4 240100C0 */  addiu      $at, $zero, 0xC0
/* 747C8 80073BC8 305900F0 */  andi       $t9, $v0, 0xF0
/* 747CC 80073BCC 13210009 */  beq        $t9, $at, .L80073BF4
/* 747D0 80073BD0 240100D0 */   addiu     $at, $zero, 0xD0
/* 747D4 80073BD4 53210008 */  beql       $t9, $at, .L80073BF8
/* 747D8 80073BD8 A0E0000A */   sb        $zero, 0xA($a3)
/* 747DC 80073BDC 8CC30008 */  lw         $v1, 0x8($a2)
/* 747E0 80073BE0 90640000 */  lbu        $a0, 0x0($v1)
/* 747E4 80073BE4 246E0001 */  addiu      $t6, $v1, 0x1
/* 747E8 80073BE8 ACCE0008 */  sw         $t6, 0x8($a2)
/* 747EC 80073BEC 10000002 */  b          .L80073BF8
/* 747F0 80073BF0 A0E4000A */   sb        $a0, 0xA($a3)
.L80073BF4:
/* 747F4 80073BF4 A0E0000A */  sb         $zero, 0xA($a3)
.L80073BF8:
/* 747F8 80073BF8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 747FC 80073BFC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74800 80073C00 03E00008 */  jr         $ra
/* 74804 80073C04 00000000 */   nop

glabel func_80073C08
/* 74808 80073C08 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 7480C 80073C0C AFB70030 */  sw         $s7, 0x30($sp)
/* 74810 80073C10 AFB10018 */  sw         $s1, 0x18($sp)
/* 74814 80073C14 AFB00014 */  sw         $s0, 0x14($sp)
/* 74818 80073C18 00808025 */  or         $s0, $a0, $zero
/* 7481C 80073C1C 00C08825 */  or         $s1, $a2, $zero
/* 74820 80073C20 00A0B825 */  or         $s7, $a1, $zero
/* 74824 80073C24 AFBF0034 */  sw         $ra, 0x34($sp)
/* 74828 80073C28 AFB6002C */  sw         $s6, 0x2C($sp)
/* 7482C 80073C2C AFB50028 */  sw         $s5, 0x28($sp)
/* 74830 80073C30 AFB40024 */  sw         $s4, 0x24($sp)
/* 74834 80073C34 AFB30020 */  sw         $s3, 0x20($sp)
/* 74838 80073C38 14C00007 */  bnez       $a2, .L80073C58
/* 7483C 80073C3C AFB2001C */   sw        $s2, 0x1C($sp)
/* 74840 80073C40 8C8E0004 */  lw         $t6, 0x4($a0)
/* 74844 80073C44 A4A0000C */  sh         $zero, 0xC($a1)
/* 74848 80073C48 ACA00004 */  sw         $zero, 0x4($a1)
/* 7484C 80073C4C ACA00008 */  sw         $zero, 0x8($a1)
/* 74850 80073C50 1000002A */  b          .L80073CFC
/* 74854 80073C54 ACAE0000 */   sw        $t6, 0x0($a1)
.L80073C58:
/* 74858 80073C58 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7485C 80073C5C 00001025 */  or         $v0, $zero, $zero
/* 74860 80073C60 24130004 */  addiu      $s3, $zero, 0x4
/* 74864 80073C64 AFAF004C */  sw         $t7, 0x4C($sp)
/* 74868 80073C68 8618001A */  lh         $t8, 0x1A($s0)
/* 7486C 80073C6C 27B20050 */  addiu      $s2, $sp, 0x50
/* 74870 80073C70 A7B8003E */  sh         $t8, 0x3E($sp)
/* 74874 80073C74 8E19000C */  lw         $t9, 0xC($s0)
/* 74878 80073C78 AFB90044 */  sw         $t9, 0x44($sp)
/* 7487C 80073C7C 8E080004 */  lw         $t0, 0x4($s0)
/* 74880 80073C80 A600001A */  sh         $zero, 0x1A($s0)
/* 74884 80073C84 AE00000C */  sw         $zero, 0xC($s0)
/* 74888 80073C88 AE080008 */  sw         $t0, 0x8($s0)
/* 7488C 80073C8C 8E140008 */  lw         $s4, 0x8($s0)
.L80073C90:
/* 74890 80073C90 8615001A */  lh         $s5, 0x1A($s0)
/* 74894 80073C94 0040B025 */  or         $s6, $v0, $zero
/* 74898 80073C98 02002025 */  or         $a0, $s0, $zero
/* 7489C 80073C9C 0C01CEA1 */  jal        func_80073A84
/* 748A0 80073CA0 02402825 */   or        $a1, $s2, $zero
/* 748A4 80073CA4 87A90050 */  lh         $t1, 0x50($sp)
/* 748A8 80073CA8 55330006 */  bnel       $t1, $s3, .L80073CC4
/* 748AC 80073CAC 8E02000C */   lw        $v0, 0xC($s0)
/* 748B0 80073CB0 8E140008 */  lw         $s4, 0x8($s0)
/* 748B4 80073CB4 8615001A */  lh         $s5, 0x1A($s0)
/* 748B8 80073CB8 10000005 */  b          .L80073CD0
/* 748BC 80073CBC 8E16000C */   lw        $s6, 0xC($s0)
/* 748C0 80073CC0 8E02000C */  lw         $v0, 0xC($s0)
.L80073CC4:
/* 748C4 80073CC4 0051082B */  sltu       $at, $v0, $s1
/* 748C8 80073CC8 5420FFF1 */  bnel       $at, $zero, .L80073C90
/* 748CC 80073CCC 8E140008 */   lw        $s4, 0x8($s0)
.L80073CD0:
/* 748D0 80073CD0 AEF40000 */  sw         $s4, 0x0($s7)
/* 748D4 80073CD4 A6F5000C */  sh         $s5, 0xC($s7)
/* 748D8 80073CD8 AEF60004 */  sw         $s6, 0x4($s7)
/* 748DC 80073CDC 8E0A000C */  lw         $t2, 0xC($s0)
/* 748E0 80073CE0 AEEA0008 */  sw         $t2, 0x8($s7)
/* 748E4 80073CE4 8FAB004C */  lw         $t3, 0x4C($sp)
/* 748E8 80073CE8 AE0B0008 */  sw         $t3, 0x8($s0)
/* 748EC 80073CEC 87AC003E */  lh         $t4, 0x3E($sp)
/* 748F0 80073CF0 A60C001A */  sh         $t4, 0x1A($s0)
/* 748F4 80073CF4 8FAD0044 */  lw         $t5, 0x44($sp)
/* 748F8 80073CF8 AE0D000C */  sw         $t5, 0xC($s0)
.L80073CFC:
/* 748FC 80073CFC 8FBF0034 */  lw         $ra, 0x34($sp)
/* 74900 80073D00 8FB00014 */  lw         $s0, 0x14($sp)
/* 74904 80073D04 8FB10018 */  lw         $s1, 0x18($sp)
/* 74908 80073D08 8FB2001C */  lw         $s2, 0x1C($sp)
/* 7490C 80073D0C 8FB30020 */  lw         $s3, 0x20($sp)
/* 74910 80073D10 8FB40024 */  lw         $s4, 0x24($sp)
/* 74914 80073D14 8FB50028 */  lw         $s5, 0x28($sp)
/* 74918 80073D18 8FB6002C */  lw         $s6, 0x2C($sp)
/* 7491C 80073D1C 8FB70030 */  lw         $s7, 0x30($sp)
/* 74920 80073D20 03E00008 */  jr         $ra
/* 74924 80073D24 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_80073D28
/* 74928 80073D28 44856000 */  mtc1       $a1, $f12
/* 7492C 80073D2C 3C01800A */  lui        $at, %hi(D_80098E60)
/* 74930 80073D30 D4268E60 */  ldc1       $f6, %lo(D_80098E60)($at)
/* 74934 80073D34 848E0018 */  lh         $t6, 0x18($a0)
/* 74938 80073D38 46006121 */  cvt.d.s    $f4, $f12
/* 7493C 80073D3C 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 74940 80073D40 46262202 */  mul.d      $f8, $f4, $f6
/* 74944 80073D44 448E5000 */  mtc1       $t6, $f10
/* 74948 80073D48 44862000 */  mtc1       $a2, $f4
/* 7494C 80073D4C 46805421 */  cvt.d.w    $f16, $f10
/* 74950 80073D50 468021A1 */  cvt.d.w    $f6, $f4
/* 74954 80073D54 46304482 */  mul.d      $f18, $f8, $f16
/* 74958 80073D58 04C30006 */  bgezl      $a2, .L80073D74
/* 7495C 80073D5C 46269203 */   div.d     $f8, $f18, $f6
/* 74960 80073D60 44815800 */  mtc1       $at, $f11
/* 74964 80073D64 44805000 */  mtc1       $zero, $f10
/* 74968 80073D68 00000000 */  nop
/* 7496C 80073D6C 462A3180 */  add.d      $f6, $f6, $f10
/* 74970 80073D70 46269203 */  div.d      $f8, $f18, $f6
.L80073D74:
/* 74974 80073D74 24020001 */  addiu      $v0, $zero, 0x1
/* 74978 80073D78 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 7497C 80073D7C 444FF800 */  cfc1       $t7, $31
/* 74980 80073D80 44C2F800 */  ctc1       $v0, $31
/* 74984 80073D84 00000000 */  nop
/* 74988 80073D88 46204424 */  cvt.w.d    $f16, $f8
/* 7498C 80073D8C 4442F800 */  cfc1       $v0, $31
/* 74990 80073D90 00000000 */  nop
/* 74994 80073D94 30420078 */  andi       $v0, $v0, 0x78
/* 74998 80073D98 50400016 */  beql       $v0, $zero, .L80073DF4
/* 7499C 80073D9C 44028000 */   mfc1      $v0, $f16
/* 749A0 80073DA0 44818800 */  mtc1       $at, $f17
/* 749A4 80073DA4 44808000 */  mtc1       $zero, $f16
/* 749A8 80073DA8 24020001 */  addiu      $v0, $zero, 0x1
/* 749AC 80073DAC 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 749B0 80073DB0 46304401 */  sub.d      $f16, $f8, $f16
/* 749B4 80073DB4 44C2F800 */  ctc1       $v0, $31
/* 749B8 80073DB8 00000000 */  nop
/* 749BC 80073DBC 46208424 */  cvt.w.d    $f16, $f16
/* 749C0 80073DC0 4442F800 */  cfc1       $v0, $31
/* 749C4 80073DC4 00000000 */  nop
/* 749C8 80073DC8 30420078 */  andi       $v0, $v0, 0x78
/* 749CC 80073DCC 54400006 */  bnel       $v0, $zero, .L80073DE8
/* 749D0 80073DD0 44CFF800 */   ctc1      $t7, $31
/* 749D4 80073DD4 44028000 */  mfc1       $v0, $f16
/* 749D8 80073DD8 44CFF800 */  ctc1       $t7, $31
/* 749DC 80073DDC 03E00008 */  jr         $ra
/* 749E0 80073DE0 00411025 */   or        $v0, $v0, $at
/* 749E4 80073DE4 44CFF800 */  ctc1       $t7, $31
.L80073DE8:
/* 749E8 80073DE8 03E00008 */  jr         $ra
/* 749EC 80073DEC 2402FFFF */   addiu     $v0, $zero, -0x1
/* 749F0 80073DF0 44028000 */  mfc1       $v0, $f16
.L80073DF4:
/* 749F4 80073DF4 00000000 */  nop
/* 749F8 80073DF8 0442FFFB */  bltzl      $v0, .L80073DE8
/* 749FC 80073DFC 44CFF800 */   ctc1      $t7, $31
/* 74A00 80073E00 44CFF800 */  ctc1       $t7, $31
/* 74A04 80073E04 03E00008 */  jr         $ra
/* 74A08 80073E08 00000000 */   nop

glabel func_80073E0C
/* 74A0C 80073E0C 44852000 */  mtc1       $a1, $f4
/* 74A10 80073E10 44864000 */  mtc1       $a2, $f8
/* 74A14 80073E14 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 74A18 80073E18 468021A0 */  cvt.s.w    $f6, $f4
/* 74A1C 80073E1C 04C10004 */  bgez       $a2, .L80073E30
/* 74A20 80073E20 468042A0 */   cvt.s.w   $f10, $f8
/* 74A24 80073E24 44818000 */  mtc1       $at, $f16
/* 74A28 80073E28 00000000 */  nop
/* 74A2C 80073E2C 46105280 */  add.s      $f10, $f10, $f16
.L80073E30:
/* 74A30 80073E30 848E0018 */  lh         $t6, 0x18($a0)
/* 74A34 80073E34 460A3482 */  mul.s      $f18, $f6, $f10
/* 74A38 80073E38 3C01800A */  lui        $at, %hi(D_80098E68)
/* 74A3C 80073E3C 448E4000 */  mtc1       $t6, $f8
/* 74A40 80073E40 D42A8E68 */  ldc1       $f10, %lo(D_80098E68)($at)
/* 74A44 80073E44 46804420 */  cvt.s.w    $f16, $f8
/* 74A48 80073E48 46009121 */  cvt.d.s    $f4, $f18
/* 74A4C 80073E4C 460081A1 */  cvt.d.s    $f6, $f16
/* 74A50 80073E50 462A3482 */  mul.d      $f18, $f6, $f10
/* 74A54 80073E54 46322203 */  div.d      $f8, $f4, $f18
/* 74A58 80073E58 03E00008 */  jr         $ra
/* 74A5C 80073E5C 46204020 */   cvt.s.d   $f0, $f8

glabel func_80073E60
/* 74A60 80073E60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74A64 80073E64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74A68 80073E68 8C8F0010 */  lw         $t7, 0x10($a0)
/* 74A6C 80073E6C 8C8E0000 */  lw         $t6, 0x0($a0)
/* 74A70 80073E70 8C820008 */  lw         $v0, 0x8($a0)
/* 74A74 80073E74 00803025 */  or         $a2, $a0, $zero
/* 74A78 80073E78 01CFC021 */  addu       $t8, $t6, $t7
/* 74A7C 80073E7C 0058082B */  sltu       $at, $v0, $t8
/* 74A80 80073E80 14200003 */  bnez       $at, .L80073E90
/* 74A84 80073E84 00A04025 */   or        $t0, $a1, $zero
/* 74A88 80073E88 10000007 */  b          .L80073EA8
/* 74A8C 80073E8C 00001025 */   or        $v0, $zero, $zero
.L80073E90:
/* 74A90 80073E90 00403825 */  or         $a3, $v0, $zero
/* 74A94 80073E94 0C01CE8E */  jal        func_80073A38
/* 74A98 80073E98 00C02025 */   or        $a0, $a2, $zero
/* 74A9C 80073E9C AD020000 */  sw         $v0, 0x0($t0)
/* 74AA0 80073EA0 ACC70008 */  sw         $a3, 0x8($a2)
/* 74AA4 80073EA4 24020001 */  addiu      $v0, $zero, 0x1
.L80073EA8:
/* 74AA8 80073EA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74AAC 80073EAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74AB0 80073EB0 03E00008 */  jr         $ra
/* 74AB4 80073EB4 00000000 */   nop

glabel func_80073EB8
/* 74AB8 80073EB8 8C850008 */  lw         $a1, 0x8($a0)
/* 74ABC 80073EBC 90A30000 */  lbu        $v1, 0x0($a1)
/* 74AC0 80073EC0 24AF0001 */  addiu      $t7, $a1, 0x1
/* 74AC4 80073EC4 AC8F0008 */  sw         $t7, 0x8($a0)
/* 74AC8 80073EC8 91F80000 */  lbu        $t8, 0x0($t7)
/* 74ACC 80073ECC 00037600 */  sll        $t6, $v1, 24
/* 74AD0 80073ED0 0018CC00 */  sll        $t9, $t8, 16
/* 74AD4 80073ED4 01D91825 */  or         $v1, $t6, $t9
/* 74AD8 80073ED8 25EE0001 */  addiu      $t6, $t7, 0x1
/* 74ADC 80073EDC AC8E0008 */  sw         $t6, 0x8($a0)
/* 74AE0 80073EE0 91CF0000 */  lbu        $t7, 0x0($t6)
/* 74AE4 80073EE4 25D90001 */  addiu      $t9, $t6, 0x1
/* 74AE8 80073EE8 AC990008 */  sw         $t9, 0x8($a0)
/* 74AEC 80073EEC 000FC200 */  sll        $t8, $t7, 8
/* 74AF0 80073EF0 932E0000 */  lbu        $t6, 0x0($t9)
/* 74AF4 80073EF4 00781825 */  or         $v1, $v1, $t8
/* 74AF8 80073EF8 272F0001 */  addiu      $t7, $t9, 0x1
/* 74AFC 80073EFC AC8F0008 */  sw         $t7, 0x8($a0)
/* 74B00 80073F00 03E00008 */  jr         $ra
/* 74B04 80073F04 006E1025 */   or        $v0, $v1, $t6

glabel func_80073F08
/* 74B08 80073F08 8C850008 */  lw         $a1, 0x8($a0)
/* 74B0C 80073F0C 90A30000 */  lbu        $v1, 0x0($a1)
/* 74B10 80073F10 24B90001 */  addiu      $t9, $a1, 0x1
/* 74B14 80073F14 AC990008 */  sw         $t9, 0x8($a0)
/* 74B18 80073F18 932E0000 */  lbu        $t6, 0x0($t9)
/* 74B1C 80073F1C 0003C200 */  sll        $t8, $v1, 8
/* 74B20 80073F20 27390001 */  addiu      $t9, $t9, 0x1
/* 74B24 80073F24 030E1825 */  or         $v1, $t8, $t6
/* 74B28 80073F28 00037C00 */  sll        $t7, $v1, 16
/* 74B2C 80073F2C 000F1403 */  sra        $v0, $t7, 16
/* 74B30 80073F30 03E00008 */  jr         $ra
/* 74B34 80073F34 AC990008 */   sw        $t9, 0x8($a0)

glabel func_80073F38
/* 74B38 80073F38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74B3C 80073F3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 74B40 80073F40 00803825 */  or         $a3, $a0, $zero
/* 74B44 80073F44 AC850000 */  sw         $a1, 0x0($a0)
/* 74B48 80073F48 AC860010 */  sw         $a2, 0x10($a0)
/* 74B4C 80073F4C A480001A */  sh         $zero, 0x1A($a0)
/* 74B50 80073F50 AC80000C */  sw         $zero, 0xC($a0)
/* 74B54 80073F54 0C01CFAE */  jal        func_80073EB8
/* 74B58 80073F58 AC850008 */   sw        $a1, 0x8($a0)
/* 74B5C 80073F5C 3C014D54 */  lui        $at, (0x4D546864 >> 16)
/* 74B60 80073F60 34216864 */  ori        $at, $at, (0x4D546864 & 0xFFFF)
/* 74B64 80073F64 54410027 */  bnel       $v0, $at, .L80074004
/* 74B68 80073F68 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74B6C 80073F6C 0C01CFAE */  jal        func_80073EB8
/* 74B70 80073F70 00E02025 */   or        $a0, $a3, $zero
/* 74B74 80073F74 0C01CFC2 */  jal        func_80073F08
/* 74B78 80073F78 00E02025 */   or        $a0, $a3, $zero
/* 74B7C 80073F7C 54400021 */  bnel       $v0, $zero, .L80074004
/* 74B80 80073F80 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74B84 80073F84 0C01CFC2 */  jal        func_80073F08
/* 74B88 80073F88 00E02025 */   or        $a0, $a3, $zero
/* 74B8C 80073F8C 24010001 */  addiu      $at, $zero, 0x1
/* 74B90 80073F90 5441001C */  bnel       $v0, $at, .L80074004
/* 74B94 80073F94 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74B98 80073F98 0C01CFC2 */  jal        func_80073F08
/* 74B9C 80073F9C 00E02025 */   or        $a0, $a3, $zero
/* 74BA0 80073FA0 A4E20018 */  sh         $v0, 0x18($a3)
/* 74BA4 80073FA4 84E30018 */  lh         $v1, 0x18($a3)
/* 74BA8 80073FA8 306E8000 */  andi       $t6, $v1, 0x8000
/* 74BAC 80073FAC 55C00015 */  bnel       $t6, $zero, .L80074004
/* 74BB0 80073FB0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74BB4 80073FB4 44833000 */  mtc1       $v1, $f6
/* 74BB8 80073FB8 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 74BBC 80073FBC 44812800 */  mtc1       $at, $f5
/* 74BC0 80073FC0 46803220 */  cvt.s.w    $f8, $f6
/* 74BC4 80073FC4 44802000 */  mtc1       $zero, $f4
/* 74BC8 80073FC8 00E02025 */  or         $a0, $a3, $zero
/* 74BCC 80073FCC 460042A1 */  cvt.d.s    $f10, $f8
/* 74BD0 80073FD0 462A2183 */  div.d      $f6, $f4, $f10
/* 74BD4 80073FD4 46203220 */  cvt.s.d    $f8, $f6
/* 74BD8 80073FD8 0C01CFAE */  jal        func_80073EB8
/* 74BDC 80073FDC E4E80014 */   swc1      $f8, 0x14($a3)
/* 74BE0 80073FE0 3C014D54 */  lui        $at, (0x4D54726B >> 16)
/* 74BE4 80073FE4 3421726B */  ori        $at, $at, (0x4D54726B & 0xFFFF)
/* 74BE8 80073FE8 54410006 */  bnel       $v0, $at, .L80074004
/* 74BEC 80073FEC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74BF0 80073FF0 0C01CFAE */  jal        func_80073EB8
/* 74BF4 80073FF4 00E02025 */   or        $a0, $a3, $zero
/* 74BF8 80073FF8 8CEF0008 */  lw         $t7, 0x8($a3)
/* 74BFC 80073FFC ACEF0004 */  sw         $t7, 0x4($a3)
/* 74C00 80074000 8FBF0014 */  lw         $ra, 0x14($sp)
.L80074004:
/* 74C04 80074004 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74C08 80074008 03E00008 */  jr         $ra
/* 74C0C 8007400C 00000000 */   nop

glabel func_80074010
/* 74C10 80074010 AFA40000 */  sw         $a0, 0x0($sp)
/* 74C14 80074014 AFA60008 */  sw         $a2, 0x8($sp)
/* 74C18 80074018 03E00008 */  jr         $ra
/* 74C1C 8007401C A4A60016 */   sh        $a2, 0x16($a1)

glabel func_80074020
/* 74C20 80074020 00801025 */  or         $v0, $a0, $zero
/* 74C24 80074024 00A01825 */  or         $v1, $a1, $zero
/* 74C28 80074028 18C00018 */  blez       $a2, .L8007408C
/* 74C2C 8007402C 00003825 */   or        $a3, $zero, $zero
/* 74C30 80074030 30C50003 */  andi       $a1, $a2, 0x3
/* 74C34 80074034 10A00009 */  beqz       $a1, .L8007405C
/* 74C38 80074038 00A02025 */   or        $a0, $a1, $zero
.L8007403C:
/* 74C3C 8007403C 904E0000 */  lbu        $t6, 0x0($v0)
/* 74C40 80074040 24E70001 */  addiu      $a3, $a3, 0x1
/* 74C44 80074044 24630001 */  addiu      $v1, $v1, 0x1
/* 74C48 80074048 24420001 */  addiu      $v0, $v0, 0x1
/* 74C4C 8007404C 1487FFFB */  bne        $a0, $a3, .L8007403C
/* 74C50 80074050 A06EFFFF */   sb        $t6, -0x1($v1)
/* 74C54 80074054 10E6000D */  beq        $a3, $a2, .L8007408C
/* 74C58 80074058 00000000 */   nop
.L8007405C:
/* 74C5C 8007405C 904F0000 */  lbu        $t7, 0x0($v0)
/* 74C60 80074060 24E70004 */  addiu      $a3, $a3, 0x4
/* 74C64 80074064 24630004 */  addiu      $v1, $v1, 0x4
/* 74C68 80074068 A06FFFFC */  sb         $t7, -0x4($v1)
/* 74C6C 8007406C 90580001 */  lbu        $t8, 0x1($v0)
/* 74C70 80074070 24420004 */  addiu      $v0, $v0, 0x4
/* 74C74 80074074 A078FFFD */  sb         $t8, -0x3($v1)
/* 74C78 80074078 9059FFFE */  lbu        $t9, -0x2($v0)
/* 74C7C 8007407C A079FFFE */  sb         $t9, -0x2($v1)
/* 74C80 80074080 9048FFFF */  lbu        $t0, -0x1($v0)
/* 74C84 80074084 14E6FFF5 */  bne        $a3, $a2, .L8007405C
/* 74C88 80074088 A068FFFF */   sb        $t0, -0x1($v1)
.L8007408C:
/* 74C8C 8007408C 03E00008 */  jr         $ra
/* 74C90 80074090 00000000 */   nop
/* 74C94 80074094 00000000 */  nop
/* 74C98 80074098 00000000 */  nop
/* 74C9C 8007409C 00000000 */  nop

glabel func_800740A0
/* 74CA0 800740A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74CA4 800740A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74CA8 800740A8 240E0001 */  addiu      $t6, $zero, 0x1
/* 74CAC 800740AC 3C018009 */  lui        $at, %hi(D_80094B80)
/* 74CB0 800740B0 3C04801B */  lui        $a0, %hi(D_801AD2F8)
/* 74CB4 800740B4 3C05801B */  lui        $a1, %hi(D_801AD2F0)
/* 74CB8 800740B8 AC2E4B80 */  sw         $t6, %lo(D_80094B80)($at)
/* 74CBC 800740BC 24A5D2F0 */  addiu      $a1, $a1, %lo(D_801AD2F0)
/* 74CC0 800740C0 2484D2F8 */  addiu      $a0, $a0, %lo(D_801AD2F8)
/* 74CC4 800740C4 0C01978C */  jal        func_80065E30
/* 74CC8 800740C8 24060001 */   addiu     $a2, $zero, 0x1
/* 74CCC 800740CC 3C04801B */  lui        $a0, %hi(D_801AD2F8)
/* 74CD0 800740D0 2484D2F8 */  addiu      $a0, $a0, %lo(D_801AD2F8)
/* 74CD4 800740D4 00002825 */  or         $a1, $zero, $zero
/* 74CD8 800740D8 0C01A1B4 */  jal        func_800686D0
/* 74CDC 800740DC 00003025 */   or        $a2, $zero, $zero
/* 74CE0 800740E0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74CE4 800740E4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74CE8 800740E8 03E00008 */  jr         $ra
/* 74CEC 800740EC 00000000 */   nop

glabel func_800740F0
/* 74CF0 800740F0 3C0E8009 */  lui        $t6, %hi(D_80094B80)
/* 74CF4 800740F4 8DCE4B80 */  lw         $t6, %lo(D_80094B80)($t6)
/* 74CF8 800740F8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74CFC 800740FC AFBF0014 */  sw         $ra, 0x14($sp)
/* 74D00 80074100 15C00003 */  bnez       $t6, .L80074110
/* 74D04 80074104 00000000 */   nop
/* 74D08 80074108 0C01D028 */  jal        func_800740A0
/* 74D0C 8007410C 00000000 */   nop
.L80074110:
/* 74D10 80074110 3C04801B */  lui        $a0, %hi(D_801AD2F8)
/* 74D14 80074114 2484D2F8 */  addiu      $a0, $a0, %lo(D_801AD2F8)
/* 74D18 80074118 27A5001C */  addiu      $a1, $sp, 0x1C
/* 74D1C 8007411C 0C019824 */  jal        func_80066090
/* 74D20 80074120 24060001 */   addiu     $a2, $zero, 0x1
/* 74D24 80074124 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74D28 80074128 27BD0020 */  addiu      $sp, $sp, 0x20
/* 74D2C 8007412C 03E00008 */  jr         $ra
/* 74D30 80074130 00000000 */   nop

glabel func_80074134
/* 74D34 80074134 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74D38 80074138 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74D3C 8007413C 3C04801B */  lui        $a0, %hi(D_801AD2F8)
/* 74D40 80074140 2484D2F8 */  addiu      $a0, $a0, %lo(D_801AD2F8)
/* 74D44 80074144 00002825 */  or         $a1, $zero, $zero
/* 74D48 80074148 0C01A1B4 */  jal        func_800686D0
/* 74D4C 8007414C 00003025 */   or        $a2, $zero, $zero
/* 74D50 80074150 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74D54 80074154 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74D58 80074158 03E00008 */  jr         $ra
/* 74D5C 8007415C 00000000 */   nop

glabel func_80074160
/* 74D60 80074160 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74D64 80074164 AFA40020 */  sw         $a0, 0x20($sp)
/* 74D68 80074168 8FAE0020 */  lw         $t6, 0x20($sp)
/* 74D6C 8007416C AFBF0014 */  sw         $ra, 0x14($sp)
/* 74D70 80074170 AFA60028 */  sw         $a2, 0x28($sp)
/* 74D74 80074174 AFA7002C */  sw         $a3, 0x2C($sp)
/* 74D78 80074178 ADC00000 */  sw         $zero, 0x0($t6)
/* 74D7C 8007417C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 74D80 80074180 ADE00004 */  sw         $zero, 0x4($t7)
/* 74D84 80074184 8FA80020 */  lw         $t0, 0x20($sp)
/* 74D88 80074188 8FB90034 */  lw         $t9, 0x34($sp)
/* 74D8C 8007418C 8FB80030 */  lw         $t8, 0x30($sp)
/* 74D90 80074190 AD19000C */  sw         $t9, 0xC($t0)
/* 74D94 80074194 AD180008 */  sw         $t8, 0x8($t0)
/* 74D98 80074198 8FAA0028 */  lw         $t2, 0x28($sp)
/* 74D9C 8007419C 8FAB002C */  lw         $t3, 0x2C($sp)
/* 74DA0 800741A0 15400003 */  bnez       $t2, .L800741B0
/* 74DA4 800741A4 00000000 */   nop
/* 74DA8 800741A8 11600005 */  beqz       $t3, .L800741C0
/* 74DAC 800741AC 00000000 */   nop
.L800741B0:
/* 74DB0 800741B0 8FA90020 */  lw         $t1, 0x20($sp)
/* 74DB4 800741B4 AD2A0010 */  sw         $t2, 0x10($t1)
/* 74DB8 800741B8 10000006 */  b          .L800741D4
/* 74DBC 800741BC AD2B0014 */   sw        $t3, 0x14($t1)
.L800741C0:
/* 74DC0 800741C0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 74DC4 800741C4 8FAC0030 */  lw         $t4, 0x30($sp)
/* 74DC8 800741C8 8FAD0034 */  lw         $t5, 0x34($sp)
/* 74DCC 800741CC ADCC0010 */  sw         $t4, 0x10($t6)
/* 74DD0 800741D0 ADCD0014 */  sw         $t5, 0x14($t6)
.L800741D4:
/* 74DD4 800741D4 8FAF0038 */  lw         $t7, 0x38($sp)
/* 74DD8 800741D8 8FB80020 */  lw         $t8, 0x20($sp)
/* 74DDC 800741DC AF0F0018 */  sw         $t7, 0x18($t8)
/* 74DE0 800741E0 8FA80020 */  lw         $t0, 0x20($sp)
/* 74DE4 800741E4 8FB9003C */  lw         $t9, 0x3C($sp)
/* 74DE8 800741E8 AD19001C */  sw         $t9, 0x1C($t0)
/* 74DEC 800741EC 0C01DBE6 */  jal        __osInsertTimer
/* 74DF0 800741F0 8FA40020 */   lw        $a0, 0x20($sp)
/* 74DF4 800741F4 3C0A8009 */  lui        $t2, %hi(D_80094BE0)
/* 74DF8 800741F8 8D4A4BE0 */  lw         $t2, %lo(D_80094BE0)($t2)
/* 74DFC 800741FC AFA20018 */  sw         $v0, 0x18($sp)
/* 74E00 80074200 AFA3001C */  sw         $v1, 0x1C($sp)
/* 74E04 80074204 8FA90020 */  lw         $t1, 0x20($sp)
/* 74E08 80074208 8D4B0000 */  lw         $t3, 0x0($t2)
/* 74E0C 8007420C 15690004 */  bne        $t3, $t1, .L80074220
/* 74E10 80074210 00000000 */   nop
/* 74E14 80074214 8FA40018 */  lw         $a0, 0x18($sp)
/* 74E18 80074218 0C01DBC9 */  jal        __osSetTimerIntr
/* 74E1C 8007421C 8FA5001C */   lw        $a1, 0x1C($sp)
.L80074220:
/* 74E20 80074220 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74E24 80074224 27BD0020 */  addiu      $sp, $sp, 0x20
/* 74E28 80074228 00001025 */  or         $v0, $zero, $zero
/* 74E2C 8007422C 03E00008 */  jr         $ra
/* 74E30 80074230 00000000 */   nop
/* 74E34 80074234 00000000 */  nop
/* 74E38 80074238 00000000 */  nop
/* 74E3C 8007423C 00000000 */  nop

glabel func_80074240
/* 74E40 80074240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74E44 80074244 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74E48 80074248 AFA40018 */  sw         $a0, 0x18($sp)
/* 74E4C 8007424C 0C01EAA8 */  jal        func_8007AAA0
/* 74E50 80074250 AFA5001C */   sw        $a1, 0x1C($sp)
/* 74E54 80074254 10400003 */  beqz       $v0, .L80074264
/* 74E58 80074258 00000000 */   nop
/* 74E5C 8007425C 1000001F */  b          .L800742DC
/* 74E60 80074260 2402FFFF */   addiu     $v0, $zero, -0x1
.L80074264:
/* 74E64 80074264 8FAE0018 */  lw         $t6, 0x18($sp)
/* 74E68 80074268 24010001 */  addiu      $at, $zero, 0x1
/* 74E6C 8007426C 15C10004 */  bne        $t6, $at, .L80074280
/* 74E70 80074270 00000000 */   nop
/* 74E74 80074274 8FA4001C */  lw         $a0, 0x1C($sp)
/* 74E78 80074278 0C01E19C */  jal        func_80078670
/* 74E7C 8007427C 24050040 */   addiu     $a1, $zero, 0x40
.L80074280:
/* 74E80 80074280 0C019FAC */  jal        func_80067EB0
/* 74E84 80074284 8FA4001C */   lw        $a0, 0x1C($sp)
/* 74E88 80074288 3C0FA480 */  lui        $t7, %hi(D_A4800000)
/* 74E8C 8007428C ADE20000 */  sw         $v0, %lo(D_A4800000)($t7)
/* 74E90 80074290 8FB80018 */  lw         $t8, 0x18($sp)
/* 74E94 80074294 17000006 */  bnez       $t8, .L800742B0
/* 74E98 80074298 00000000 */   nop
/* 74E9C 8007429C 3C191FC0 */  lui        $t9, (0x1FC007C0 >> 16)
/* 74EA0 800742A0 373907C0 */  ori        $t9, $t9, (0x1FC007C0 & 0xFFFF)
/* 74EA4 800742A4 3C08A480 */  lui        $t0, %hi(D_A4800004)
/* 74EA8 800742A8 10000005 */  b          .L800742C0
/* 74EAC 800742AC AD190004 */   sw        $t9, %lo(D_A4800004)($t0)
.L800742B0:
/* 74EB0 800742B0 3C091FC0 */  lui        $t1, (0x1FC007C0 >> 16)
/* 74EB4 800742B4 352907C0 */  ori        $t1, $t1, (0x1FC007C0 & 0xFFFF)
/* 74EB8 800742B8 3C0AA480 */  lui        $t2, %hi(D_A4800010)
/* 74EBC 800742BC AD490010 */  sw         $t1, %lo(D_A4800010)($t2)
.L800742C0:
/* 74EC0 800742C0 8FAB0018 */  lw         $t3, 0x18($sp)
/* 74EC4 800742C4 15600004 */  bnez       $t3, .L800742D8
/* 74EC8 800742C8 00000000 */   nop
/* 74ECC 800742CC 8FA4001C */  lw         $a0, 0x1C($sp)
/* 74ED0 800742D0 0C019798 */  jal        func_80065E60
/* 74ED4 800742D4 24050040 */   addiu     $a1, $zero, 0x40
.L800742D8:
/* 74ED8 800742D8 00001025 */  or         $v0, $zero, $zero
.L800742DC:
/* 74EDC 800742DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74EE0 800742E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74EE4 800742E4 03E00008 */  jr         $ra
/* 74EE8 800742E8 00000000 */   nop
/* 74EEC 800742EC 00000000 */  nop

glabel func_800742F0
/* 74EF0 800742F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 74EF4 800742F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74EF8 800742F8 AFA40028 */  sw         $a0, 0x28($sp)
/* 74EFC 800742FC AFA5002C */  sw         $a1, 0x2C($sp)
/* 74F00 80074300 AFA00024 */  sw         $zero, 0x24($sp)
/* 74F04 80074304 0C01D0F5 */  jal        func_800743D4
/* 74F08 80074308 8FA4002C */   lw        $a0, 0x2C($sp)
/* 74F0C 8007430C 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 74F10 80074310 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 74F14 80074314 0C01D090 */  jal        func_80074240
/* 74F18 80074318 24040001 */   addiu     $a0, $zero, 0x1
/* 74F1C 8007431C AFA20024 */  sw         $v0, 0x24($sp)
/* 74F20 80074320 8FA40028 */  lw         $a0, 0x28($sp)
/* 74F24 80074324 27A50020 */  addiu      $a1, $sp, 0x20
/* 74F28 80074328 0C019824 */  jal        func_80066090
/* 74F2C 8007432C 24060001 */   addiu     $a2, $zero, 0x1
/* 74F30 80074330 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 74F34 80074334 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 74F38 80074338 0C01D090 */  jal        func_80074240
/* 74F3C 8007433C 00002025 */   or        $a0, $zero, $zero
/* 74F40 80074340 AFA20024 */  sw         $v0, 0x24($sp)
/* 74F44 80074344 8FA40028 */  lw         $a0, 0x28($sp)
/* 74F48 80074348 27A50020 */  addiu      $a1, $sp, 0x20
/* 74F4C 8007434C 0C019824 */  jal        func_80066090
/* 74F50 80074350 24060001 */   addiu     $a2, $zero, 0x1
/* 74F54 80074354 8FA4002C */  lw         $a0, 0x2C($sp)
/* 74F58 80074358 0C01D125 */  jal        func_80074494
/* 74F5C 8007435C 27A5001C */   addiu     $a1, $sp, 0x1C
/* 74F60 80074360 93AE001E */  lbu        $t6, 0x1E($sp)
/* 74F64 80074364 31CF0001 */  andi       $t7, $t6, 0x1
/* 74F68 80074368 11E00006 */  beqz       $t7, .L80074384
/* 74F6C 8007436C 00000000 */   nop
/* 74F70 80074370 31D80002 */  andi       $t8, $t6, 0x2
/* 74F74 80074374 13000003 */  beqz       $t8, .L80074384
/* 74F78 80074378 00000000 */   nop
/* 74F7C 8007437C 10000011 */  b          .L800743C4
/* 74F80 80074380 24020002 */   addiu     $v0, $zero, 0x2
.L80074384:
/* 74F84 80074384 93B9001F */  lbu        $t9, 0x1F($sp)
/* 74F88 80074388 17200005 */  bnez       $t9, .L800743A0
/* 74F8C 8007438C 00000000 */   nop
/* 74F90 80074390 93A8001E */  lbu        $t0, 0x1E($sp)
/* 74F94 80074394 31090001 */  andi       $t1, $t0, 0x1
/* 74F98 80074398 15200003 */  bnez       $t1, .L800743A8
/* 74F9C 8007439C 00000000 */   nop
.L800743A0:
/* 74FA0 800743A0 10000008 */  b          .L800743C4
/* 74FA4 800743A4 24020001 */   addiu     $v0, $zero, 0x1
.L800743A8:
/* 74FA8 800743A8 93AA001E */  lbu        $t2, 0x1E($sp)
/* 74FAC 800743AC 314B0004 */  andi       $t3, $t2, 0x4
/* 74FB0 800743B0 11600003 */  beqz       $t3, .L800743C0
/* 74FB4 800743B4 00000000 */   nop
/* 74FB8 800743B8 10000002 */  b          .L800743C4
/* 74FBC 800743BC 24020004 */   addiu     $v0, $zero, 0x4
.L800743C0:
/* 74FC0 800743C0 8FA20024 */  lw         $v0, 0x24($sp)
.L800743C4:
/* 74FC4 800743C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74FC8 800743C8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 74FCC 800743CC 03E00008 */  jr         $ra
/* 74FD0 800743D0 00000000 */   nop

glabel func_800743D4
/* 74FD4 800743D4 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 74FD8 800743D8 3C01801B */  lui        $at, %hi(D_801AABD0)
/* 74FDC 800743DC A020ABD0 */  sb         $zero, %lo(D_801AABD0)($at)
/* 74FE0 800743E0 3C0F801B */  lui        $t7, %hi(D_801AD350)
/* 74FE4 800743E4 3C01801B */  lui        $at, %hi(D_801AD38C)
/* 74FE8 800743E8 240E0001 */  addiu      $t6, $zero, 0x1
/* 74FEC 800743EC 25EFD350 */  addiu      $t7, $t7, %lo(D_801AD350)
/* 74FF0 800743F0 24180001 */  addiu      $t8, $zero, 0x1
/* 74FF4 800743F4 24190003 */  addiu      $t9, $zero, 0x3
/* 74FF8 800743F8 240800FF */  addiu      $t0, $zero, 0xFF
/* 74FFC 800743FC 240900FF */  addiu      $t1, $zero, 0xFF
/* 75000 80074400 240A00FF */  addiu      $t2, $zero, 0xFF
/* 75004 80074404 AC2ED38C */  sw         $t6, %lo(D_801AD38C)($at)
/* 75008 80074408 AFAF000C */  sw         $t7, 0xC($sp)
/* 7500C 8007440C A3B80004 */  sb         $t8, 0x4($sp)
/* 75010 80074410 A3B90005 */  sb         $t9, 0x5($sp)
/* 75014 80074414 A3A00006 */  sb         $zero, 0x6($sp)
/* 75018 80074418 A3A80007 */  sb         $t0, 0x7($sp)
/* 7501C 8007441C A3A90008 */  sb         $t1, 0x8($sp)
/* 75020 80074420 A3AA0009 */  sb         $t2, 0x9($sp)
/* 75024 80074424 1880000B */  blez       $a0, .L80074454
/* 75028 80074428 AFA00000 */   sw        $zero, 0x0($sp)
.L8007442C:
/* 7502C 8007442C 8FAB000C */  lw         $t3, 0xC($sp)
/* 75030 80074430 A1600000 */  sb         $zero, 0x0($t3)
/* 75034 80074434 8FAE0000 */  lw         $t6, 0x0($sp)
/* 75038 80074438 8FAC000C */  lw         $t4, 0xC($sp)
/* 7503C 8007443C 25CF0001 */  addiu      $t7, $t6, 0x1
/* 75040 80074440 01E4082A */  slt        $at, $t7, $a0
/* 75044 80074444 258D0001 */  addiu      $t5, $t4, 0x1
/* 75048 80074448 AFAF0000 */  sw         $t7, 0x0($sp)
/* 7504C 8007444C 1420FFF7 */  bnez       $at, .L8007442C
/* 75050 80074450 AFAD000C */   sw        $t5, 0xC($sp)
.L80074454:
/* 75054 80074454 27B90004 */  addiu      $t9, $sp, 0x4
/* 75058 80074458 8F210000 */  lw         $at, 0x0($t9)
/* 7505C 8007445C 8FB8000C */  lw         $t8, 0xC($sp)
/* 75060 80074460 240C00FE */  addiu      $t4, $zero, 0xFE
/* 75064 80074464 AB010000 */  swl        $at, 0x0($t8)
/* 75068 80074468 BB010003 */  swr        $at, 0x3($t8)
/* 7506C 8007446C 93210004 */  lbu        $at, 0x4($t9)
/* 75070 80074470 A3010004 */  sb         $at, 0x4($t8)
/* 75074 80074474 93290005 */  lbu        $t1, 0x5($t9)
/* 75078 80074478 A3090005 */  sb         $t1, 0x5($t8)
/* 7507C 8007447C 8FAA000C */  lw         $t2, 0xC($sp)
/* 75080 80074480 254B0006 */  addiu      $t3, $t2, 0x6
/* 75084 80074484 AFAB000C */  sw         $t3, 0xC($sp)
/* 75088 80074488 A16C0000 */  sb         $t4, 0x0($t3)
/* 7508C 8007448C 03E00008 */  jr         $ra
/* 75090 80074490 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80074494
/* 75094 80074494 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 75098 80074498 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 7509C 8007449C 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 750A0 800744A0 AFAE000C */  sw         $t6, 0xC($sp)
/* 750A4 800744A4 18800009 */  blez       $a0, .L800744CC
/* 750A8 800744A8 AFA00000 */   sw        $zero, 0x0($sp)
.L800744AC:
/* 750AC 800744AC 8FB90000 */  lw         $t9, 0x0($sp)
/* 750B0 800744B0 8FAF000C */  lw         $t7, 0xC($sp)
/* 750B4 800744B4 27280001 */  addiu      $t0, $t9, 0x1
/* 750B8 800744B8 0104082A */  slt        $at, $t0, $a0
/* 750BC 800744BC 25F80001 */  addiu      $t8, $t7, 0x1
/* 750C0 800744C0 AFA80000 */  sw         $t0, 0x0($sp)
/* 750C4 800744C4 1420FFF9 */  bnez       $at, .L800744AC
/* 750C8 800744C8 AFB8000C */   sw        $t8, 0xC($sp)
.L800744CC:
/* 750CC 800744CC 8FAA000C */  lw         $t2, 0xC($sp)
/* 750D0 800744D0 27A90004 */  addiu      $t1, $sp, 0x4
/* 750D4 800744D4 89410000 */  lwl        $at, 0x0($t2)
/* 750D8 800744D8 99410003 */  lwr        $at, 0x3($t2)
/* 750DC 800744DC AD210000 */  sw         $at, 0x0($t1)
/* 750E0 800744E0 91410004 */  lbu        $at, 0x4($t2)
/* 750E4 800744E4 A1210004 */  sb         $at, 0x4($t1)
/* 750E8 800744E8 914C0005 */  lbu        $t4, 0x5($t2)
/* 750EC 800744EC A12C0005 */  sb         $t4, 0x5($t1)
/* 750F0 800744F0 93AD0005 */  lbu        $t5, 0x5($sp)
/* 750F4 800744F4 31AE00C0 */  andi       $t6, $t5, 0xC0
/* 750F8 800744F8 000E7903 */  sra        $t7, $t6, 4
/* 750FC 800744FC A0AF0003 */  sb         $t7, 0x3($a1)
/* 75100 80074500 90B80003 */  lbu        $t8, 0x3($a1)
/* 75104 80074504 17000008 */  bnez       $t8, .L80074528
/* 75108 80074508 00000000 */   nop
/* 7510C 8007450C 93B90008 */  lbu        $t9, 0x8($sp)
/* 75110 80074510 93AB0007 */  lbu        $t3, 0x7($sp)
/* 75114 80074514 00194200 */  sll        $t0, $t9, 8
/* 75118 80074518 010B4825 */  or         $t1, $t0, $t3
/* 7511C 8007451C A4A90000 */  sh         $t1, 0x0($a1)
/* 75120 80074520 93AA0009 */  lbu        $t2, 0x9($sp)
/* 75124 80074524 A0AA0002 */  sb         $t2, 0x2($a1)
.L80074528:
/* 75128 80074528 03E00008 */  jr         $ra
/* 7512C 8007452C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80074530
/* 75130 80074530 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 75134 80074534 AFA00008 */  sw         $zero, 0x8($sp)
/* 75138 80074538 AFA40004 */  sw         $a0, 0x4($sp)
/* 7513C 8007453C 18A00010 */  blez       $a1, .L80074580
/* 75140 80074540 AFA0000C */   sw        $zero, 0xC($sp)
.L80074544:
/* 75144 80074544 8FAF0004 */  lw         $t7, 0x4($sp)
/* 75148 80074548 8FAE0008 */  lw         $t6, 0x8($sp)
/* 7514C 8007454C 8FAB000C */  lw         $t3, 0xC($sp)
/* 75150 80074550 91F80000 */  lbu        $t8, 0x0($t7)
/* 75154 80074554 25E80001 */  addiu      $t0, $t7, 0x1
/* 75158 80074558 256C0001 */  addiu      $t4, $t3, 0x1
/* 7515C 8007455C 01D8C821 */  addu       $t9, $t6, $t8
/* 75160 80074560 AFB90008 */  sw         $t9, 0x8($sp)
/* 75164 80074564 8FA90008 */  lw         $t1, 0x8($sp)
/* 75168 80074568 0185082A */  slt        $at, $t4, $a1
/* 7516C 8007456C AFAC000C */  sw         $t4, 0xC($sp)
/* 75170 80074570 312AFFFF */  andi       $t2, $t1, 0xFFFF
/* 75174 80074574 AFA80004 */  sw         $t0, 0x4($sp)
/* 75178 80074578 1420FFF2 */  bnez       $at, .L80074544
/* 7517C 8007457C AFAA0008 */   sw        $t2, 0x8($sp)
.L80074580:
/* 75180 80074580 97A2000A */  lhu        $v0, 0xA($sp)
/* 75184 80074584 03E00008 */  jr         $ra
/* 75188 80074588 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_8007458C
/* 7518C 8007458C 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 75190 80074590 A7A00006 */  sh         $zero, 0x6($sp)
/* 75194 80074594 A4C00000 */  sh         $zero, 0x0($a2)
/* 75198 80074598 94CE0000 */  lhu        $t6, 0x0($a2)
/* 7519C 8007459C A4AE0000 */  sh         $t6, 0x0($a1)
/* 751A0 800745A0 AFA00000 */  sw         $zero, 0x0($sp)
.L800745A4:
/* 751A4 800745A4 8FAF0000 */  lw         $t7, 0x0($sp)
/* 751A8 800745A8 008FC021 */  addu       $t8, $a0, $t7
/* 751AC 800745AC 97190000 */  lhu        $t9, 0x0($t8)
/* 751B0 800745B0 A7B90006 */  sh         $t9, 0x6($sp)
/* 751B4 800745B4 94A80000 */  lhu        $t0, 0x0($a1)
/* 751B8 800745B8 01194821 */  addu       $t1, $t0, $t9
/* 751BC 800745BC A4A90000 */  sh         $t1, 0x0($a1)
/* 751C0 800745C0 97AB0006 */  lhu        $t3, 0x6($sp)
/* 751C4 800745C4 94CA0000 */  lhu        $t2, 0x0($a2)
/* 751C8 800745C8 01606027 */  not        $t4, $t3
/* 751CC 800745CC 014C6821 */  addu       $t5, $t2, $t4
/* 751D0 800745D0 A4CD0000 */  sh         $t5, 0x0($a2)
/* 751D4 800745D4 8FAE0000 */  lw         $t6, 0x0($sp)
/* 751D8 800745D8 25CF0002 */  addiu      $t7, $t6, 0x2
/* 751DC 800745DC 2DE1001C */  sltiu      $at, $t7, 0x1C
/* 751E0 800745E0 1420FFF0 */  bnez       $at, .L800745A4
/* 751E4 800745E4 AFAF0000 */   sw        $t7, 0x0($sp)
/* 751E8 800745E8 00001025 */  or         $v0, $zero, $zero
/* 751EC 800745EC 03E00008 */  jr         $ra
/* 751F0 800745F0 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_800745F4
/* 751F4 800745F4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 751F8 800745F8 AFA40078 */  sw         $a0, 0x78($sp)
/* 751FC 800745FC 8FAE0078 */  lw         $t6, 0x78($sp)
/* 75200 80074600 AFBF001C */  sw         $ra, 0x1C($sp)
/* 75204 80074604 AFA5007C */  sw         $a1, 0x7C($sp)
/* 75208 80074608 AFA60080 */  sw         $a2, 0x80($sp)
/* 7520C 8007460C AFA00074 */  sw         $zero, 0x74($sp)
/* 75210 80074610 A3A00033 */  sb         $zero, 0x33($sp)
/* 75214 80074614 91CF0065 */  lbu        $t7, 0x65($t6)
/* 75218 80074618 11E0000A */  beqz       $t7, .L80074644
/* 7521C 8007461C 00000000 */   nop
/* 75220 80074620 A1C00065 */  sb         $zero, 0x65($t6)
/* 75224 80074624 0C01D487 */  jal        func_8007521C
/* 75228 80074628 8FA40078 */   lw        $a0, 0x78($sp)
/* 7522C 8007462C AFA20074 */  sw         $v0, 0x74($sp)
/* 75230 80074630 8FB80074 */  lw         $t8, 0x74($sp)
/* 75234 80074634 13000003 */  beqz       $t8, .L80074644
/* 75238 80074638 00000000 */   nop
/* 7523C 8007463C 100000EF */  b          .L800749FC
/* 75240 80074640 03001025 */   or        $v0, $t8, $zero
.L80074644:
/* 75244 80074644 8FA80080 */  lw         $t0, 0x80($sp)
/* 75248 80074648 2419FFFF */  addiu      $t9, $zero, -0x1
/* 7524C 8007464C 0C01DB44 */  jal        func_80076D10
/* 75250 80074650 AD190000 */   sw        $t9, 0x0($t0)
/* 75254 80074654 8FA90080 */  lw         $t1, 0x80($sp)
/* 75258 80074658 AD220004 */  sw         $v0, 0x4($t1)
/* 7525C 8007465C 8FAA007C */  lw         $t2, 0x7C($sp)
/* 75260 80074660 8FAB0080 */  lw         $t3, 0x80($sp)
/* 75264 80074664 8D4C0008 */  lw         $t4, 0x8($t2)
/* 75268 80074668 8D4D000C */  lw         $t5, 0xC($t2)
/* 7526C 8007466C AD6C0008 */  sw         $t4, 0x8($t3)
/* 75270 80074670 AD6D000C */  sw         $t5, 0xC($t3)
/* 75274 80074674 8FAF007C */  lw         $t7, 0x7C($sp)
/* 75278 80074678 8FB80080 */  lw         $t8, 0x80($sp)
/* 7527C 8007467C 8DEE0010 */  lw         $t6, 0x10($t7)
/* 75280 80074680 8DEF0014 */  lw         $t7, 0x14($t7)
/* 75284 80074684 AF0E0010 */  sw         $t6, 0x10($t8)
/* 75288 80074688 AF0F0014 */  sw         $t7, 0x14($t8)
/* 7528C 8007468C AFA00028 */  sw         $zero, 0x28($sp)
.L80074690:
/* 75290 80074690 8FB90028 */  lw         $t9, 0x28($sp)
/* 75294 80074694 8FA80078 */  lw         $t0, 0x78($sp)
/* 75298 80074698 A1190065 */  sb         $t9, 0x65($t0)
/* 7529C 8007469C 0C01D487 */  jal        func_8007521C
/* 752A0 800746A0 8FA40078 */   lw        $a0, 0x78($sp)
/* 752A4 800746A4 AFA20074 */  sw         $v0, 0x74($sp)
/* 752A8 800746A8 8FA90074 */  lw         $t1, 0x74($sp)
/* 752AC 800746AC 11200003 */  beqz       $t1, .L800746BC
/* 752B0 800746B0 00000000 */   nop
/* 752B4 800746B4 100000D1 */  b          .L800749FC
/* 752B8 800746B8 01201025 */   or        $v0, $t1, $zero
.L800746BC:
/* 752BC 800746BC 8FAA0078 */  lw         $t2, 0x78($sp)
/* 752C0 800746C0 00003025 */  or         $a2, $zero, $zero
/* 752C4 800746C4 27A70054 */  addiu      $a3, $sp, 0x54
/* 752C8 800746C8 8D440004 */  lw         $a0, 0x4($t2)
/* 752CC 800746CC 0C01D4A4 */  jal        func_80075290
/* 752D0 800746D0 8D450008 */   lw        $a1, 0x8($t2)
/* 752D4 800746D4 AFA20074 */  sw         $v0, 0x74($sp)
/* 752D8 800746D8 8FAC0074 */  lw         $t4, 0x74($sp)
/* 752DC 800746DC 11800003 */  beqz       $t4, .L800746EC
/* 752E0 800746E0 00000000 */   nop
/* 752E4 800746E4 100000C5 */  b          .L800749FC
/* 752E8 800746E8 01801025 */   or        $v0, $t4, $zero
.L800746EC:
/* 752EC 800746EC 8FAD0028 */  lw         $t5, 0x28($sp)
/* 752F0 800746F0 27AE0054 */  addiu      $t6, $sp, 0x54
/* 752F4 800746F4 240F0001 */  addiu      $t7, $zero, 0x1
/* 752F8 800746F8 35AB0080 */  ori        $t3, $t5, 0x80
/* 752FC 800746FC A1CB0000 */  sb         $t3, 0x0($t6)
/* 75300 80074700 AFAF002C */  sw         $t7, 0x2C($sp)
.L80074704:
/* 75304 80074704 8FB8002C */  lw         $t8, 0x2C($sp)
/* 75308 80074708 27B90054 */  addiu      $t9, $sp, 0x54
/* 7530C 8007470C 03194021 */  addu       $t0, $t8, $t9
/* 75310 80074710 91090000 */  lbu        $t1, 0x0($t0)
/* 75314 80074714 01205027 */  not        $t2, $t1
/* 75318 80074718 A10A0000 */  sb         $t2, 0x0($t0)
/* 7531C 8007471C 8FAC002C */  lw         $t4, 0x2C($sp)
/* 75320 80074720 258D0001 */  addiu      $t5, $t4, 0x1
/* 75324 80074724 29A10020 */  slti       $at, $t5, 0x20
/* 75328 80074728 1420FFF6 */  bnez       $at, .L80074704
/* 7532C 8007472C AFAD002C */   sw        $t5, 0x2C($sp)
/* 75330 80074730 8FAB0078 */  lw         $t3, 0x78($sp)
/* 75334 80074734 00003025 */  or         $a2, $zero, $zero
/* 75338 80074738 27A70054 */  addiu      $a3, $sp, 0x54
/* 7533C 8007473C 8D640004 */  lw         $a0, 0x4($t3)
/* 75340 80074740 8D650008 */  lw         $a1, 0x8($t3)
/* 75344 80074744 0C01DC98 */  jal        __osContRamWrite
/* 75348 80074748 AFA00010 */   sw        $zero, 0x10($sp)
/* 7534C 8007474C AFA20074 */  sw         $v0, 0x74($sp)
/* 75350 80074750 8FAE0074 */  lw         $t6, 0x74($sp)
/* 75354 80074754 11C00003 */  beqz       $t6, .L80074764
/* 75358 80074758 00000000 */   nop
/* 7535C 8007475C 100000A7 */  b          .L800749FC
/* 75360 80074760 01C01025 */   or        $v0, $t6, $zero
.L80074764:
/* 75364 80074764 8FAF0078 */  lw         $t7, 0x78($sp)
/* 75368 80074768 00003025 */  or         $a2, $zero, $zero
/* 7536C 8007476C 27A70034 */  addiu      $a3, $sp, 0x34
/* 75370 80074770 8DE40004 */  lw         $a0, 0x4($t7)
/* 75374 80074774 0C01D4A4 */  jal        func_80075290
/* 75378 80074778 8DE50008 */   lw        $a1, 0x8($t7)
/* 7537C 8007477C AFA20074 */  sw         $v0, 0x74($sp)
/* 75380 80074780 8FB80074 */  lw         $t8, 0x74($sp)
/* 75384 80074784 13000003 */  beqz       $t8, .L80074794
/* 75388 80074788 00000000 */   nop
/* 7538C 8007478C 1000009B */  b          .L800749FC
/* 75390 80074790 03001025 */   or        $v0, $t8, $zero
.L80074794:
/* 75394 80074794 AFA0002C */  sw         $zero, 0x2C($sp)
.L80074798:
/* 75398 80074798 8FB9002C */  lw         $t9, 0x2C($sp)
/* 7539C 8007479C 03B94821 */  addu       $t1, $sp, $t9
/* 753A0 800747A0 03B95021 */  addu       $t2, $sp, $t9
/* 753A4 800747A4 914A0034 */  lbu        $t2, 0x34($t2)
/* 753A8 800747A8 91290054 */  lbu        $t1, 0x54($t1)
/* 753AC 800747AC 152A0006 */  bne        $t1, $t2, .L800747C8
/* 753B0 800747B0 00000000 */   nop
/* 753B4 800747B4 8FA8002C */  lw         $t0, 0x2C($sp)
/* 753B8 800747B8 250C0001 */  addiu      $t4, $t0, 0x1
/* 753BC 800747BC 29810020 */  slti       $at, $t4, 0x20
/* 753C0 800747C0 1420FFF5 */  bnez       $at, .L80074798
/* 753C4 800747C4 AFAC002C */   sw        $t4, 0x2C($sp)
.L800747C8:
/* 753C8 800747C8 8FAD002C */  lw         $t5, 0x2C($sp)
/* 753CC 800747CC 24010020 */  addiu      $at, $zero, 0x20
/* 753D0 800747D0 15A10026 */  bne        $t5, $at, .L8007486C
/* 753D4 800747D4 00000000 */   nop
/* 753D8 800747D8 8FAB0028 */  lw         $t3, 0x28($sp)
/* 753DC 800747DC 1960001C */  blez       $t3, .L80074850
/* 753E0 800747E0 00000000 */   nop
/* 753E4 800747E4 8FAE0078 */  lw         $t6, 0x78($sp)
/* 753E8 800747E8 A1C00065 */  sb         $zero, 0x65($t6)
/* 753EC 800747EC 0C01D487 */  jal        func_8007521C
/* 753F0 800747F0 8FA40078 */   lw        $a0, 0x78($sp)
/* 753F4 800747F4 AFA20074 */  sw         $v0, 0x74($sp)
/* 753F8 800747F8 8FAF0074 */  lw         $t7, 0x74($sp)
/* 753FC 800747FC 11E00003 */  beqz       $t7, .L8007480C
/* 75400 80074800 00000000 */   nop
/* 75404 80074804 1000007D */  b          .L800749FC
/* 75408 80074808 01E01025 */   or        $v0, $t7, $zero
.L8007480C:
/* 7540C 8007480C 8FB80078 */  lw         $t8, 0x78($sp)
/* 75410 80074810 00003025 */  or         $a2, $zero, $zero
/* 75414 80074814 27A70054 */  addiu      $a3, $sp, 0x54
/* 75418 80074818 8F040004 */  lw         $a0, 0x4($t8)
/* 7541C 8007481C 0C01D4A4 */  jal        func_80075290
/* 75420 80074820 8F050008 */   lw        $a1, 0x8($t8)
/* 75424 80074824 AFA20074 */  sw         $v0, 0x74($sp)
/* 75428 80074828 8FB90074 */  lw         $t9, 0x74($sp)
/* 7542C 8007482C 13200003 */  beqz       $t9, .L8007483C
/* 75430 80074830 00000000 */   nop
/* 75434 80074834 10000071 */  b          .L800749FC
/* 75438 80074838 03201025 */   or        $v0, $t9, $zero
.L8007483C:
/* 7543C 8007483C 27A90054 */  addiu      $t1, $sp, 0x54
/* 75440 80074840 912A0000 */  lbu        $t2, 0x0($t1)
/* 75444 80074844 24010080 */  addiu      $at, $zero, 0x80
/* 75448 80074848 15410008 */  bne        $t2, $at, .L8007486C
/* 7544C 8007484C 00000000 */   nop
.L80074850:
/* 75450 80074850 8FA80028 */  lw         $t0, 0x28($sp)
/* 75454 80074854 250C0001 */  addiu      $t4, $t0, 0x1
/* 75458 80074858 AFAC0028 */  sw         $t4, 0x28($sp)
/* 7545C 8007485C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 75460 80074860 29A1003E */  slti       $at, $t5, 0x3E
/* 75464 80074864 1420FF8A */  bnez       $at, .L80074690
/* 75468 80074868 00000000 */   nop
.L8007486C:
/* 7546C 8007486C 8FAB0078 */  lw         $t3, 0x78($sp)
/* 75470 80074870 A1600065 */  sb         $zero, 0x65($t3)
/* 75474 80074874 0C01D487 */  jal        func_8007521C
/* 75478 80074878 8FA40078 */   lw        $a0, 0x78($sp)
/* 7547C 8007487C AFA20074 */  sw         $v0, 0x74($sp)
/* 75480 80074880 8FAE0074 */  lw         $t6, 0x74($sp)
/* 75484 80074884 11C00003 */  beqz       $t6, .L80074894
/* 75488 80074888 00000000 */   nop
/* 7548C 8007488C 1000005B */  b          .L800749FC
/* 75490 80074890 01C01025 */   or        $v0, $t6, $zero
.L80074894:
/* 75494 80074894 8FAF0028 */  lw         $t7, 0x28($sp)
/* 75498 80074898 19E00004 */  blez       $t7, .L800748AC
/* 7549C 8007489C 00000000 */   nop
/* 754A0 800748A0 24180001 */  addiu      $t8, $zero, 0x1
/* 754A4 800748A4 10000002 */  b          .L800748B0
/* 754A8 800748A8 A3B80033 */   sb        $t8, 0x33($sp)
.L800748AC:
/* 754AC 800748AC A3A00033 */  sb         $zero, 0x33($sp)
.L800748B0:
/* 754B0 800748B0 8FB9007C */  lw         $t9, 0x7C($sp)
/* 754B4 800748B4 93A80033 */  lbu        $t0, 0x33($sp)
/* 754B8 800748B8 8FAD0080 */  lw         $t5, 0x80($sp)
/* 754BC 800748BC 97290018 */  lhu        $t1, 0x18($t9)
/* 754C0 800748C0 312AFFFE */  andi       $t2, $t1, 0xFFFE
/* 754C4 800748C4 01486025 */  or         $t4, $t2, $t0
/* 754C8 800748C8 A5AC0018 */  sh         $t4, 0x18($t5)
/* 754CC 800748CC 8FAE0080 */  lw         $t6, 0x80($sp)
/* 754D0 800748D0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 754D4 800748D4 A1CB001A */  sb         $t3, 0x1A($t6)
/* 754D8 800748D8 8FAF007C */  lw         $t7, 0x7C($sp)
/* 754DC 800748DC 8FB90080 */  lw         $t9, 0x80($sp)
/* 754E0 800748E0 91F8001B */  lbu        $t8, 0x1B($t7)
/* 754E4 800748E4 A338001B */  sb         $t8, 0x1B($t9)
/* 754E8 800748E8 8FA90080 */  lw         $t1, 0x80($sp)
/* 754EC 800748EC 01202025 */  or         $a0, $t1, $zero
/* 754F0 800748F0 2525001C */  addiu      $a1, $t1, 0x1C
/* 754F4 800748F4 0C01D163 */  jal        func_8007458C
/* 754F8 800748F8 2526001E */   addiu     $a2, $t1, 0x1E
/* 754FC 800748FC 240A0001 */  addiu      $t2, $zero, 0x1
/* 75500 80074900 27A80020 */  addiu      $t0, $sp, 0x20
/* 75504 80074904 A50A0000 */  sh         $t2, 0x0($t0)
/* 75508 80074908 240C0003 */  addiu      $t4, $zero, 0x3
/* 7550C 8007490C 27AD0020 */  addiu      $t5, $sp, 0x20
/* 75510 80074910 A5AC0002 */  sh         $t4, 0x2($t5)
/* 75514 80074914 240B0004 */  addiu      $t3, $zero, 0x4
/* 75518 80074918 27AE0020 */  addiu      $t6, $sp, 0x20
/* 7551C 8007491C A5CB0004 */  sh         $t3, 0x4($t6)
/* 75520 80074920 240F0006 */  addiu      $t7, $zero, 0x6
/* 75524 80074924 27B80020 */  addiu      $t8, $sp, 0x20
/* 75528 80074928 A70F0006 */  sh         $t7, 0x6($t8)
/* 7552C 8007492C AFA0002C */  sw         $zero, 0x2C($sp)
.L80074930:
/* 75530 80074930 8FA9002C */  lw         $t1, 0x2C($sp)
/* 75534 80074934 8FB90078 */  lw         $t9, 0x78($sp)
/* 75538 80074938 24080001 */  addiu      $t0, $zero, 0x1
/* 7553C 8007493C 00095040 */  sll        $t2, $t1, 1
/* 75540 80074940 03AA3021 */  addu       $a2, $sp, $t2
/* 75544 80074944 94C60020 */  lhu        $a2, 0x20($a2)
/* 75548 80074948 8F240004 */  lw         $a0, 0x4($t9)
/* 7554C 8007494C 8F250008 */  lw         $a1, 0x8($t9)
/* 75550 80074950 AFA80010 */  sw         $t0, 0x10($sp)
/* 75554 80074954 0C01DC98 */  jal        __osContRamWrite
/* 75558 80074958 8FA70080 */   lw        $a3, 0x80($sp)
/* 7555C 8007495C AFA20074 */  sw         $v0, 0x74($sp)
/* 75560 80074960 8FAC0074 */  lw         $t4, 0x74($sp)
/* 75564 80074964 11800003 */  beqz       $t4, .L80074974
/* 75568 80074968 00000000 */   nop
/* 7556C 8007496C 10000023 */  b          .L800749FC
/* 75570 80074970 01801025 */   or        $v0, $t4, $zero
.L80074974:
/* 75574 80074974 8FAD002C */  lw         $t5, 0x2C($sp)
/* 75578 80074978 25AB0001 */  addiu      $t3, $t5, 0x1
/* 7557C 8007497C 29610004 */  slti       $at, $t3, 0x4
/* 75580 80074980 1420FFEB */  bnez       $at, .L80074930
/* 75584 80074984 AFAB002C */   sw        $t3, 0x2C($sp)
/* 75588 80074988 8FAE0078 */  lw         $t6, 0x78($sp)
/* 7558C 8007498C 24060001 */  addiu      $a2, $zero, 0x1
/* 75590 80074990 27A70054 */  addiu      $a3, $sp, 0x54
/* 75594 80074994 8DC40004 */  lw         $a0, 0x4($t6)
/* 75598 80074998 0C01D4A4 */  jal        func_80075290
/* 7559C 8007499C 8DC50008 */   lw        $a1, 0x8($t6)
/* 755A0 800749A0 AFA20074 */  sw         $v0, 0x74($sp)
/* 755A4 800749A4 8FAF0074 */  lw         $t7, 0x74($sp)
/* 755A8 800749A8 11E00003 */  beqz       $t7, .L800749B8
/* 755AC 800749AC 00000000 */   nop
/* 755B0 800749B0 10000012 */  b          .L800749FC
/* 755B4 800749B4 01E01025 */   or        $v0, $t7, $zero
.L800749B8:
/* 755B8 800749B8 AFA0002C */  sw         $zero, 0x2C($sp)
.L800749BC:
/* 755BC 800749BC 8FB9002C */  lw         $t9, 0x2C($sp)
/* 755C0 800749C0 8FB80080 */  lw         $t8, 0x80($sp)
/* 755C4 800749C4 03B94021 */  addu       $t0, $sp, $t9
/* 755C8 800749C8 03194821 */  addu       $t1, $t8, $t9
/* 755CC 800749CC 912A0000 */  lbu        $t2, 0x0($t1)
/* 755D0 800749D0 91080054 */  lbu        $t0, 0x54($t0)
/* 755D4 800749D4 11480003 */  beq        $t2, $t0, .L800749E4
/* 755D8 800749D8 00000000 */   nop
/* 755DC 800749DC 10000007 */  b          .L800749FC
/* 755E0 800749E0 2402000A */   addiu     $v0, $zero, 0xA
.L800749E4:
/* 755E4 800749E4 8FAC002C */  lw         $t4, 0x2C($sp)
/* 755E8 800749E8 258D0001 */  addiu      $t5, $t4, 0x1
/* 755EC 800749EC 29A10020 */  slti       $at, $t5, 0x20
/* 755F0 800749F0 1420FFF2 */  bnez       $at, .L800749BC
/* 755F4 800749F4 AFAD002C */   sw        $t5, 0x2C($sp)
/* 755F8 800749F8 00001025 */  or         $v0, $zero, $zero
.L800749FC:
/* 755FC 800749FC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 75600 80074A00 27BD0078 */  addiu      $sp, $sp, 0x78
/* 75604 80074A04 03E00008 */  jr         $ra
/* 75608 80074A08 00000000 */   nop

glabel func_80074A0C
/* 7560C 80074A0C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 75610 80074A10 AFA40038 */  sw         $a0, 0x38($sp)
/* 75614 80074A14 8FAE0038 */  lw         $t6, 0x38($sp)
/* 75618 80074A18 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7561C 80074A1C AFA5003C */  sw         $a1, 0x3C($sp)
/* 75620 80074A20 AFA0002C */  sw         $zero, 0x2C($sp)
/* 75624 80074A24 91CF0065 */  lbu        $t7, 0x65($t6)
/* 75628 80074A28 11E0000A */  beqz       $t7, .L80074A54
/* 7562C 80074A2C 00000000 */   nop
/* 75630 80074A30 A1C00065 */  sb         $zero, 0x65($t6)
/* 75634 80074A34 0C01D487 */  jal        func_8007521C
/* 75638 80074A38 8FA40038 */   lw        $a0, 0x38($sp)
/* 7563C 80074A3C AFA2002C */  sw         $v0, 0x2C($sp)
/* 75640 80074A40 8FB8002C */  lw         $t8, 0x2C($sp)
/* 75644 80074A44 13000003 */  beqz       $t8, .L80074A54
/* 75648 80074A48 00000000 */   nop
/* 7564C 80074A4C 10000051 */  b          .L80074B94
/* 75650 80074A50 03001025 */   or        $v0, $t8, $zero
.L80074A54:
/* 75654 80074A54 24190001 */  addiu      $t9, $zero, 0x1
/* 75658 80074A58 27A80030 */  addiu      $t0, $sp, 0x30
/* 7565C 80074A5C A5190000 */  sh         $t9, 0x0($t0)
/* 75660 80074A60 24090003 */  addiu      $t1, $zero, 0x3
/* 75664 80074A64 27AA0030 */  addiu      $t2, $sp, 0x30
/* 75668 80074A68 A5490002 */  sh         $t1, 0x2($t2)
/* 7566C 80074A6C 240B0004 */  addiu      $t3, $zero, 0x4
/* 75670 80074A70 27AC0030 */  addiu      $t4, $sp, 0x30
/* 75674 80074A74 A58B0004 */  sh         $t3, 0x4($t4)
/* 75678 80074A78 240D0006 */  addiu      $t5, $zero, 0x6
/* 7567C 80074A7C 27AF0030 */  addiu      $t7, $sp, 0x30
/* 75680 80074A80 A5ED0006 */  sh         $t5, 0x6($t7)
/* 75684 80074A84 240E0001 */  addiu      $t6, $zero, 0x1
/* 75688 80074A88 AFAE0024 */  sw         $t6, 0x24($sp)
.L80074A8C:
/* 7568C 80074A8C 8FB90024 */  lw         $t9, 0x24($sp)
/* 75690 80074A90 8FB80038 */  lw         $t8, 0x38($sp)
/* 75694 80074A94 8FA7003C */  lw         $a3, 0x3C($sp)
/* 75698 80074A98 00194040 */  sll        $t0, $t9, 1
/* 7569C 80074A9C 03A83021 */  addu       $a2, $sp, $t0
/* 756A0 80074AA0 94C60030 */  lhu        $a2, 0x30($a2)
/* 756A4 80074AA4 8F040004 */  lw         $a0, 0x4($t8)
/* 756A8 80074AA8 0C01D4A4 */  jal        func_80075290
/* 756AC 80074AAC 8F050008 */   lw        $a1, 0x8($t8)
/* 756B0 80074AB0 AFA2002C */  sw         $v0, 0x2C($sp)
/* 756B4 80074AB4 8FA9002C */  lw         $t1, 0x2C($sp)
/* 756B8 80074AB8 11200003 */  beqz       $t1, .L80074AC8
/* 756BC 80074ABC 00000000 */   nop
/* 756C0 80074AC0 10000034 */  b          .L80074B94
/* 756C4 80074AC4 01201025 */   or        $v0, $t1, $zero
.L80074AC8:
/* 756C8 80074AC8 8FA4003C */  lw         $a0, 0x3C($sp)
/* 756CC 80074ACC 27A5002A */  addiu      $a1, $sp, 0x2A
/* 756D0 80074AD0 0C01D163 */  jal        func_8007458C
/* 756D4 80074AD4 27A60028 */   addiu     $a2, $sp, 0x28
/* 756D8 80074AD8 8FAA003C */  lw         $t2, 0x3C($sp)
/* 756DC 80074ADC 97AC002A */  lhu        $t4, 0x2A($sp)
/* 756E0 80074AE0 954B001C */  lhu        $t3, 0x1C($t2)
/* 756E4 80074AE4 156C0005 */  bne        $t3, $t4, .L80074AFC
/* 756E8 80074AE8 00000000 */   nop
/* 756EC 80074AEC 954D001E */  lhu        $t5, 0x1E($t2)
/* 756F0 80074AF0 97AF0028 */  lhu        $t7, 0x28($sp)
/* 756F4 80074AF4 11AF0006 */  beq        $t5, $t7, .L80074B10
/* 756F8 80074AF8 00000000 */   nop
.L80074AFC:
/* 756FC 80074AFC 8FAE0024 */  lw         $t6, 0x24($sp)
/* 75700 80074B00 25D80001 */  addiu      $t8, $t6, 0x1
/* 75704 80074B04 2B010004 */  slti       $at, $t8, 0x4
/* 75708 80074B08 1420FFE0 */  bnez       $at, .L80074A8C
/* 7570C 80074B0C AFB80024 */   sw        $t8, 0x24($sp)
.L80074B10:
/* 75710 80074B10 8FB90024 */  lw         $t9, 0x24($sp)
/* 75714 80074B14 24010004 */  addiu      $at, $zero, 0x4
/* 75718 80074B18 17210003 */  bne        $t9, $at, .L80074B28
/* 7571C 80074B1C 00000000 */   nop
/* 75720 80074B20 1000001C */  b          .L80074B94
/* 75724 80074B24 2402000A */   addiu     $v0, $zero, 0xA
.L80074B28:
/* 75728 80074B28 AFA00020 */  sw         $zero, 0x20($sp)
.L80074B2C:
/* 7572C 80074B2C 8FA80020 */  lw         $t0, 0x20($sp)
/* 75730 80074B30 8FA90024 */  lw         $t1, 0x24($sp)
/* 75734 80074B34 11090011 */  beq        $t0, $t1, .L80074B7C
/* 75738 80074B38 00000000 */   nop
/* 7573C 80074B3C 8FAB0038 */  lw         $t3, 0x38($sp)
/* 75740 80074B40 00086040 */  sll        $t4, $t0, 1
/* 75744 80074B44 03AC3021 */  addu       $a2, $sp, $t4
/* 75748 80074B48 94C60030 */  lhu        $a2, 0x30($a2)
/* 7574C 80074B4C 240A0001 */  addiu      $t2, $zero, 0x1
/* 75750 80074B50 8D640004 */  lw         $a0, 0x4($t3)
/* 75754 80074B54 8D650008 */  lw         $a1, 0x8($t3)
/* 75758 80074B58 AFAA0010 */  sw         $t2, 0x10($sp)
/* 7575C 80074B5C 0C01DC98 */  jal        __osContRamWrite
/* 75760 80074B60 8FA7003C */   lw        $a3, 0x3C($sp)
/* 75764 80074B64 AFA2002C */  sw         $v0, 0x2C($sp)
/* 75768 80074B68 8FAD002C */  lw         $t5, 0x2C($sp)
/* 7576C 80074B6C 11A00003 */  beqz       $t5, .L80074B7C
/* 75770 80074B70 00000000 */   nop
/* 75774 80074B74 10000007 */  b          .L80074B94
/* 75778 80074B78 01A01025 */   or        $v0, $t5, $zero
.L80074B7C:
/* 7577C 80074B7C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 75780 80074B80 25EE0001 */  addiu      $t6, $t7, 0x1
/* 75784 80074B84 29C10004 */  slti       $at, $t6, 0x4
/* 75788 80074B88 1420FFE8 */  bnez       $at, .L80074B2C
/* 7578C 80074B8C AFAE0020 */   sw        $t6, 0x20($sp)
/* 75790 80074B90 00001025 */  or         $v0, $zero, $zero
.L80074B94:
/* 75794 80074B94 8FBF001C */  lw         $ra, 0x1C($sp)
/* 75798 80074B98 27BD0038 */  addiu      $sp, $sp, 0x38
/* 7579C 80074B9C 03E00008 */  jr         $ra
/* 757A0 80074BA0 00000000 */   nop

glabel func_80074BA4
/* 757A4 80074BA4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 757A8 80074BA8 AFA40068 */  sw         $a0, 0x68($sp)
/* 757AC 80074BAC 8FAE0068 */  lw         $t6, 0x68($sp)
/* 757B0 80074BB0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 757B4 80074BB4 91CF0065 */  lbu        $t7, 0x65($t6)
/* 757B8 80074BB8 11E0000A */  beqz       $t7, .L80074BE4
/* 757BC 80074BBC 00000000 */   nop
/* 757C0 80074BC0 A1C00065 */  sb         $zero, 0x65($t6)
/* 757C4 80074BC4 0C01D487 */  jal        func_8007521C
/* 757C8 80074BC8 8FA40068 */   lw        $a0, 0x68($sp)
/* 757CC 80074BCC AFA2001C */  sw         $v0, 0x1C($sp)
/* 757D0 80074BD0 8FB8001C */  lw         $t8, 0x1C($sp)
/* 757D4 80074BD4 13000003 */  beqz       $t8, .L80074BE4
/* 757D8 80074BD8 00000000 */   nop
/* 757DC 80074BDC 10000084 */  b          .L80074DF0
/* 757E0 80074BE0 03001025 */   or        $v0, $t8, $zero
.L80074BE4:
/* 757E4 80074BE4 8FB90068 */  lw         $t9, 0x68($sp)
/* 757E8 80074BE8 24060001 */  addiu      $a2, $zero, 0x1
/* 757EC 80074BEC 27A70040 */  addiu      $a3, $sp, 0x40
/* 757F0 80074BF0 8F240004 */  lw         $a0, 0x4($t9)
/* 757F4 80074BF4 0C01D4A4 */  jal        func_80075290
/* 757F8 80074BF8 8F250008 */   lw        $a1, 0x8($t9)
/* 757FC 80074BFC AFA2001C */  sw         $v0, 0x1C($sp)
/* 75800 80074C00 8FA8001C */  lw         $t0, 0x1C($sp)
/* 75804 80074C04 11000003 */  beqz       $t0, .L80074C14
/* 75808 80074C08 00000000 */   nop
/* 7580C 80074C0C 10000078 */  b          .L80074DF0
/* 75810 80074C10 01001025 */   or        $v0, $t0, $zero
.L80074C14:
/* 75814 80074C14 27A40040 */  addiu      $a0, $sp, 0x40
/* 75818 80074C18 27A50062 */  addiu      $a1, $sp, 0x62
/* 7581C 80074C1C 0C01D163 */  jal        func_8007458C
/* 75820 80074C20 27A60060 */   addiu     $a2, $sp, 0x60
/* 75824 80074C24 27A90040 */  addiu      $t1, $sp, 0x40
/* 75828 80074C28 AFA90018 */  sw         $t1, 0x18($sp)
/* 7582C 80074C2C 952A001C */  lhu        $t2, 0x1C($t1)
/* 75830 80074C30 97AB0062 */  lhu        $t3, 0x62($sp)
/* 75834 80074C34 154B0005 */  bne        $t2, $t3, .L80074C4C
/* 75838 80074C38 00000000 */   nop
/* 7583C 80074C3C 952C001E */  lhu        $t4, 0x1E($t1)
/* 75840 80074C40 97AD0060 */  lhu        $t5, 0x60($sp)
/* 75844 80074C44 118D001B */  beq        $t4, $t5, .L80074CB4
/* 75848 80074C48 00000000 */   nop
.L80074C4C:
/* 7584C 80074C4C 8FA40068 */  lw         $a0, 0x68($sp)
/* 75850 80074C50 0C01D283 */  jal        func_80074A0C
/* 75854 80074C54 8FA50018 */   lw        $a1, 0x18($sp)
/* 75858 80074C58 AFA2001C */  sw         $v0, 0x1C($sp)
/* 7585C 80074C5C 8FAF001C */  lw         $t7, 0x1C($sp)
/* 75860 80074C60 2401000A */  addiu      $at, $zero, 0xA
/* 75864 80074C64 15E1000E */  bne        $t7, $at, .L80074CA0
/* 75868 80074C68 00000000 */   nop
/* 7586C 80074C6C 8FA40068 */  lw         $a0, 0x68($sp)
/* 75870 80074C70 8FA50018 */  lw         $a1, 0x18($sp)
/* 75874 80074C74 0C01D17D */  jal        func_800745F4
/* 75878 80074C78 27A60020 */   addiu     $a2, $sp, 0x20
/* 7587C 80074C7C AFA2001C */  sw         $v0, 0x1C($sp)
/* 75880 80074C80 8FAE001C */  lw         $t6, 0x1C($sp)
/* 75884 80074C84 11C00003 */  beqz       $t6, .L80074C94
/* 75888 80074C88 00000000 */   nop
/* 7588C 80074C8C 10000058 */  b          .L80074DF0
/* 75890 80074C90 01C01025 */   or        $v0, $t6, $zero
.L80074C94:
/* 75894 80074C94 27B80020 */  addiu      $t8, $sp, 0x20
/* 75898 80074C98 10000006 */  b          .L80074CB4
/* 7589C 80074C9C AFB80018 */   sw        $t8, 0x18($sp)
.L80074CA0:
/* 758A0 80074CA0 8FB9001C */  lw         $t9, 0x1C($sp)
/* 758A4 80074CA4 13200003 */  beqz       $t9, .L80074CB4
/* 758A8 80074CA8 00000000 */   nop
/* 758AC 80074CAC 10000050 */  b          .L80074DF0
/* 758B0 80074CB0 03201025 */   or        $v0, $t9, $zero
.L80074CB4:
/* 758B4 80074CB4 8FA80018 */  lw         $t0, 0x18($sp)
/* 758B8 80074CB8 950A0018 */  lhu        $t2, 0x18($t0)
/* 758BC 80074CBC 314B0001 */  andi       $t3, $t2, 0x1
/* 758C0 80074CC0 15600013 */  bnez       $t3, .L80074D10
/* 758C4 80074CC4 00000000 */   nop
/* 758C8 80074CC8 8FA40068 */  lw         $a0, 0x68($sp)
/* 758CC 80074CCC 01002825 */  or         $a1, $t0, $zero
/* 758D0 80074CD0 0C01D17D */  jal        func_800745F4
/* 758D4 80074CD4 27A60020 */   addiu     $a2, $sp, 0x20
/* 758D8 80074CD8 AFA2001C */  sw         $v0, 0x1C($sp)
/* 758DC 80074CDC 8FA9001C */  lw         $t1, 0x1C($sp)
/* 758E0 80074CE0 11200003 */  beqz       $t1, .L80074CF0
/* 758E4 80074CE4 00000000 */   nop
/* 758E8 80074CE8 10000041 */  b          .L80074DF0
/* 758EC 80074CEC 01201025 */   or        $v0, $t1, $zero
.L80074CF0:
/* 758F0 80074CF0 27AC0020 */  addiu      $t4, $sp, 0x20
/* 758F4 80074CF4 AFAC0018 */  sw         $t4, 0x18($sp)
/* 758F8 80074CF8 958D0018 */  lhu        $t5, 0x18($t4)
/* 758FC 80074CFC 31AF0001 */  andi       $t7, $t5, 0x1
/* 75900 80074D00 15E00003 */  bnez       $t7, .L80074D10
/* 75904 80074D04 00000000 */   nop
/* 75908 80074D08 10000039 */  b          .L80074DF0
/* 7590C 80074D0C 2402000B */   addiu     $v0, $zero, 0xB
.L80074D10:
/* 75910 80074D10 AFA00064 */  sw         $zero, 0x64($sp)
.L80074D14:
/* 75914 80074D14 8FAE0018 */  lw         $t6, 0x18($sp)
/* 75918 80074D18 8FB80064 */  lw         $t8, 0x64($sp)
/* 7591C 80074D1C 8FAB0068 */  lw         $t3, 0x68($sp)
/* 75920 80074D20 01D8C821 */  addu       $t9, $t6, $t8
/* 75924 80074D24 932A0000 */  lbu        $t2, 0x0($t9)
/* 75928 80074D28 01784021 */  addu       $t0, $t3, $t8
/* 7592C 80074D2C A10A000C */  sb         $t2, 0xC($t0)
/* 75930 80074D30 8FA90064 */  lw         $t1, 0x64($sp)
/* 75934 80074D34 252C0001 */  addiu      $t4, $t1, 0x1
/* 75938 80074D38 29810020 */  slti       $at, $t4, 0x20
/* 7593C 80074D3C 1420FFF5 */  bnez       $at, .L80074D14
/* 75940 80074D40 AFAC0064 */   sw        $t4, 0x64($sp)
/* 75944 80074D44 8FAD0018 */  lw         $t5, 0x18($sp)
/* 75948 80074D48 8FAE0068 */  lw         $t6, 0x68($sp)
/* 7594C 80074D4C 24060007 */  addiu      $a2, $zero, 0x7
/* 75950 80074D50 91AF001B */  lbu        $t7, 0x1B($t5)
/* 75954 80074D54 240D0010 */  addiu      $t5, $zero, 0x10
/* 75958 80074D58 ADCF004C */  sw         $t7, 0x4C($t6)
/* 7595C 80074D5C 8FB90018 */  lw         $t9, 0x18($sp)
/* 75960 80074D60 8FB80068 */  lw         $t8, 0x68($sp)
/* 75964 80074D64 240E0008 */  addiu      $t6, $zero, 0x8
/* 75968 80074D68 932B001A */  lbu        $t3, 0x1A($t9)
/* 7596C 80074D6C A30B0064 */  sb         $t3, 0x64($t8)
/* 75970 80074D70 8FAA0068 */  lw         $t2, 0x68($sp)
/* 75974 80074D74 91480064 */  lbu        $t0, 0x64($t2)
/* 75978 80074D78 00084840 */  sll        $t1, $t0, 1
/* 7597C 80074D7C 252C0003 */  addiu      $t4, $t1, 0x3
/* 75980 80074D80 AD4C0060 */  sw         $t4, 0x60($t2)
/* 75984 80074D84 8FAF0068 */  lw         $t7, 0x68($sp)
/* 75988 80074D88 ADED0050 */  sw         $t5, 0x50($t7)
/* 7598C 80074D8C 8FB90068 */  lw         $t9, 0x68($sp)
/* 75990 80074D90 AF2E0054 */  sw         $t6, 0x54($t9)
/* 75994 80074D94 8FAB0068 */  lw         $t3, 0x68($sp)
/* 75998 80074D98 91780064 */  lbu        $t8, 0x64($t3)
/* 7599C 80074D9C 001840C0 */  sll        $t0, $t8, 3
/* 759A0 80074DA0 25090008 */  addiu      $t1, $t0, 0x8
/* 759A4 80074DA4 AD690058 */  sw         $t1, 0x58($t3)
/* 759A8 80074DA8 8FAC0068 */  lw         $t4, 0x68($sp)
/* 759AC 80074DAC 918D0064 */  lbu        $t5, 0x64($t4)
/* 759B0 80074DB0 8D8A0058 */  lw         $t2, 0x58($t4)
/* 759B4 80074DB4 000D78C0 */  sll        $t7, $t5, 3
/* 759B8 80074DB8 014F7021 */  addu       $t6, $t2, $t7
/* 759BC 80074DBC AD8E005C */  sw         $t6, 0x5C($t4)
/* 759C0 80074DC0 8FB90068 */  lw         $t9, 0x68($sp)
/* 759C4 80074DC4 8F240004 */  lw         $a0, 0x4($t9)
/* 759C8 80074DC8 8F250008 */  lw         $a1, 0x8($t9)
/* 759CC 80074DCC 0C01D4A4 */  jal        func_80075290
/* 759D0 80074DD0 2727002C */   addiu     $a3, $t9, 0x2C
/* 759D4 80074DD4 AFA2001C */  sw         $v0, 0x1C($sp)
/* 759D8 80074DD8 8FB8001C */  lw         $t8, 0x1C($sp)
/* 759DC 80074DDC 13000003 */  beqz       $t8, .L80074DEC
/* 759E0 80074DE0 00000000 */   nop
/* 759E4 80074DE4 10000002 */  b          .L80074DF0
/* 759E8 80074DE8 03001025 */   or        $v0, $t8, $zero
.L80074DEC:
/* 759EC 80074DEC 00001025 */  or         $v0, $zero, $zero
.L80074DF0:
/* 759F0 80074DF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 759F4 80074DF4 27BD0068 */  addiu      $sp, $sp, 0x68
/* 759F8 80074DF8 03E00008 */  jr         $ra
/* 759FC 80074DFC 00000000 */   nop

glabel func_80074E00
/* 75A00 80074E00 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 75A04 80074E04 AFA40040 */  sw         $a0, 0x40($sp)
/* 75A08 80074E08 8FAE0040 */  lw         $t6, 0x40($sp)
/* 75A0C 80074E0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 75A10 80074E10 91CF0065 */  lbu        $t7, 0x65($t6)
/* 75A14 80074E14 11E0000A */  beqz       $t7, .L80074E40
/* 75A18 80074E18 00000000 */   nop
/* 75A1C 80074E1C A1C00065 */  sb         $zero, 0x65($t6)
/* 75A20 80074E20 0C01D487 */  jal        func_8007521C
/* 75A24 80074E24 8FA40040 */   lw        $a0, 0x40($sp)
/* 75A28 80074E28 AFA20018 */  sw         $v0, 0x18($sp)
/* 75A2C 80074E2C 8FB80018 */  lw         $t8, 0x18($sp)
/* 75A30 80074E30 13000003 */  beqz       $t8, .L80074E40
/* 75A34 80074E34 00000000 */   nop
/* 75A38 80074E38 1000002C */  b          .L80074EEC
/* 75A3C 80074E3C 03001025 */   or        $v0, $t8, $zero
.L80074E40:
/* 75A40 80074E40 8FB90040 */  lw         $t9, 0x40($sp)
/* 75A44 80074E44 24060001 */  addiu      $a2, $zero, 0x1
/* 75A48 80074E48 27A7001C */  addiu      $a3, $sp, 0x1C
/* 75A4C 80074E4C 8F240004 */  lw         $a0, 0x4($t9)
/* 75A50 80074E50 0C01D4A4 */  jal        func_80075290
/* 75A54 80074E54 8F250008 */   lw        $a1, 0x8($t9)
/* 75A58 80074E58 AFA20018 */  sw         $v0, 0x18($sp)
/* 75A5C 80074E5C 8FA80018 */  lw         $t0, 0x18($sp)
/* 75A60 80074E60 11000011 */  beqz       $t0, .L80074EA8
/* 75A64 80074E64 24010002 */   addiu     $at, $zero, 0x2
/* 75A68 80074E68 11010003 */  beq        $t0, $at, .L80074E78
/* 75A6C 80074E6C 00000000 */   nop
/* 75A70 80074E70 1000001E */  b          .L80074EEC
/* 75A74 80074E74 01001025 */   or        $v0, $t0, $zero
.L80074E78:
/* 75A78 80074E78 8FA90040 */  lw         $t1, 0x40($sp)
/* 75A7C 80074E7C 24060001 */  addiu      $a2, $zero, 0x1
/* 75A80 80074E80 27A7001C */  addiu      $a3, $sp, 0x1C
/* 75A84 80074E84 8D240004 */  lw         $a0, 0x4($t1)
/* 75A88 80074E88 0C01D4A4 */  jal        func_80075290
/* 75A8C 80074E8C 8D250008 */   lw        $a1, 0x8($t1)
/* 75A90 80074E90 AFA20018 */  sw         $v0, 0x18($sp)
/* 75A94 80074E94 8FAA0018 */  lw         $t2, 0x18($sp)
/* 75A98 80074E98 11400003 */  beqz       $t2, .L80074EA8
/* 75A9C 80074E9C 00000000 */   nop
/* 75AA0 80074EA0 10000012 */  b          .L80074EEC
/* 75AA4 80074EA4 01401025 */   or        $v0, $t2, $zero
.L80074EA8:
/* 75AA8 80074EA8 AFA0003C */  sw         $zero, 0x3C($sp)
.L80074EAC:
/* 75AAC 80074EAC 8FAB003C */  lw         $t3, 0x3C($sp)
/* 75AB0 80074EB0 8FAD0040 */  lw         $t5, 0x40($sp)
/* 75AB4 80074EB4 03AB6021 */  addu       $t4, $sp, $t3
/* 75AB8 80074EB8 01AB7821 */  addu       $t7, $t5, $t3
/* 75ABC 80074EBC 91EE000C */  lbu        $t6, 0xC($t7)
/* 75AC0 80074EC0 918C001C */  lbu        $t4, 0x1C($t4)
/* 75AC4 80074EC4 118E0003 */  beq        $t4, $t6, .L80074ED4
/* 75AC8 80074EC8 00000000 */   nop
/* 75ACC 80074ECC 10000007 */  b          .L80074EEC
/* 75AD0 80074ED0 24020002 */   addiu     $v0, $zero, 0x2
.L80074ED4:
/* 75AD4 80074ED4 8FB8003C */  lw         $t8, 0x3C($sp)
/* 75AD8 80074ED8 27190001 */  addiu      $t9, $t8, 0x1
/* 75ADC 80074EDC 2B210020 */  slti       $at, $t9, 0x20
/* 75AE0 80074EE0 1420FFF2 */  bnez       $at, .L80074EAC
/* 75AE4 80074EE4 AFB9003C */   sw        $t9, 0x3C($sp)
/* 75AE8 80074EE8 00001025 */  or         $v0, $zero, $zero
.L80074EEC:
/* 75AEC 80074EEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 75AF0 80074EF0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 75AF4 80074EF4 03E00008 */  jr         $ra
/* 75AF8 80074EF8 00000000 */   nop

glabel func_80074EFC
/* 75AFC 80074EFC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 75B00 80074F00 AFA40038 */  sw         $a0, 0x38($sp)
/* 75B04 80074F04 8FAE0038 */  lw         $t6, 0x38($sp)
/* 75B08 80074F08 AFBF001C */  sw         $ra, 0x1C($sp)
/* 75B0C 80074F0C AFA5003C */  sw         $a1, 0x3C($sp)
/* 75B10 80074F10 AFA60040 */  sw         $a2, 0x40($sp)
/* 75B14 80074F14 AFA70044 */  sw         $a3, 0x44($sp)
/* 75B18 80074F18 91CF0065 */  lbu        $t7, 0x65($t6)
/* 75B1C 80074F1C 11E0000A */  beqz       $t7, .L80074F48
/* 75B20 80074F20 00000000 */   nop
/* 75B24 80074F24 A1C00065 */  sb         $zero, 0x65($t6)
/* 75B28 80074F28 0C01D487 */  jal        func_8007521C
/* 75B2C 80074F2C 8FA40038 */   lw        $a0, 0x38($sp)
/* 75B30 80074F30 AFA2002C */  sw         $v0, 0x2C($sp)
/* 75B34 80074F34 8FB8002C */  lw         $t8, 0x2C($sp)
/* 75B38 80074F38 13000003 */  beqz       $t8, .L80074F48
/* 75B3C 80074F3C 00000000 */   nop
/* 75B40 80074F40 100000B2 */  b          .L8007520C
/* 75B44 80074F44 03001025 */   or        $v0, $t8, $zero
.L80074F48:
/* 75B48 80074F48 93B90047 */  lbu        $t9, 0x47($sp)
/* 75B4C 80074F4C 1B200004 */  blez       $t9, .L80074F60
/* 75B50 80074F50 00000000 */   nop
/* 75B54 80074F54 24080001 */  addiu      $t0, $zero, 0x1
/* 75B58 80074F58 10000004 */  b          .L80074F6C
/* 75B5C 80074F5C AFA80028 */   sw        $t0, 0x28($sp)
.L80074F60:
/* 75B60 80074F60 8FA90038 */  lw         $t1, 0x38($sp)
/* 75B64 80074F64 8D2A0060 */  lw         $t2, 0x60($t1)
/* 75B68 80074F68 AFAA0028 */  sw         $t2, 0x28($sp)
.L80074F6C:
/* 75B6C 80074F6C 93AB0043 */  lbu        $t3, 0x43($sp)
/* 75B70 80074F70 24010001 */  addiu      $at, $zero, 0x1
/* 75B74 80074F74 1561000C */  bne        $t3, $at, .L80074FA8
/* 75B78 80074F78 00000000 */   nop
/* 75B7C 80074F7C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 75B80 80074F80 8FAC003C */  lw         $t4, 0x3C($sp)
/* 75B84 80074F84 000D2823 */  negu       $a1, $t5
/* 75B88 80074F88 00057040 */  sll        $t6, $a1, 1
/* 75B8C 80074F8C 01C02825 */  or         $a1, $t6, $zero
/* 75B90 80074F90 000D7840 */  sll        $t7, $t5, 1
/* 75B94 80074F94 24A50100 */  addiu      $a1, $a1, 0x100
/* 75B98 80074F98 0C01D14C */  jal        func_80074530
/* 75B9C 80074F9C 018F2021 */   addu      $a0, $t4, $t7
/* 75BA0 80074FA0 8FB8003C */  lw         $t8, 0x3C($sp)
/* 75BA4 80074FA4 A3020001 */  sb         $v0, 0x1($t8)
.L80074FA8:
/* 75BA8 80074FA8 AFA00030 */  sw         $zero, 0x30($sp)
.L80074FAC:
/* 75BAC 80074FAC 8FA80030 */  lw         $t0, 0x30($sp)
/* 75BB0 80074FB0 8FB9003C */  lw         $t9, 0x3C($sp)
/* 75BB4 80074FB4 93AB0043 */  lbu        $t3, 0x43($sp)
/* 75BB8 80074FB8 00084940 */  sll        $t1, $t0, 5
/* 75BBC 80074FBC 24010001 */  addiu      $at, $zero, 0x1
/* 75BC0 80074FC0 03295021 */  addu       $t2, $t9, $t1
/* 75BC4 80074FC4 1561001B */  bne        $t3, $at, .L80075034
/* 75BC8 80074FC8 AFAA0024 */   sw        $t2, 0x24($sp)
/* 75BCC 80074FCC 8FAC0038 */  lw         $t4, 0x38($sp)
/* 75BD0 80074FD0 93AD0047 */  lbu        $t5, 0x47($sp)
/* 75BD4 80074FD4 01403825 */  or         $a3, $t2, $zero
/* 75BD8 80074FD8 8D8F0054 */  lw         $t7, 0x54($t4)
/* 75BDC 80074FDC 000D70C0 */  sll        $t6, $t5, 3
/* 75BE0 80074FE0 8D840004 */  lw         $a0, 0x4($t4)
/* 75BE4 80074FE4 8D850008 */  lw         $a1, 0x8($t4)
/* 75BE8 80074FE8 01EEC021 */  addu       $t8, $t7, $t6
/* 75BEC 80074FEC 03083021 */  addu       $a2, $t8, $t0
/* 75BF0 80074FF0 0C01DC98 */  jal        __osContRamWrite
/* 75BF4 80074FF4 AFA00010 */   sw        $zero, 0x10($sp)
/* 75BF8 80074FF8 8FB90038 */  lw         $t9, 0x38($sp)
/* 75BFC 80074FFC 93AB0047 */  lbu        $t3, 0x47($sp)
/* 75C00 80075000 AFA2002C */  sw         $v0, 0x2C($sp)
/* 75C04 80075004 8F290058 */  lw         $t1, 0x58($t9)
/* 75C08 80075008 8FAF0030 */  lw         $t7, 0x30($sp)
/* 75C0C 8007500C 000B60C0 */  sll        $t4, $t3, 3
/* 75C10 80075010 8F250008 */  lw         $a1, 0x8($t9)
/* 75C14 80075014 8F240004 */  lw         $a0, 0x4($t9)
/* 75C18 80075018 012C6821 */  addu       $t5, $t1, $t4
/* 75C1C 8007501C AFA00010 */  sw         $zero, 0x10($sp)
/* 75C20 80075020 8FA70024 */  lw         $a3, 0x24($sp)
/* 75C24 80075024 0C01DC98 */  jal        __osContRamWrite
/* 75C28 80075028 01AF3021 */   addu      $a2, $t5, $t7
/* 75C2C 8007502C 1000000D */  b          .L80075064
/* 75C30 80075030 AFA2002C */   sw        $v0, 0x2C($sp)
.L80075034:
/* 75C34 80075034 8FAE0038 */  lw         $t6, 0x38($sp)
/* 75C38 80075038 93A80047 */  lbu        $t0, 0x47($sp)
/* 75C3C 8007503C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 75C40 80075040 8DD80054 */  lw         $t8, 0x54($t6)
/* 75C44 80075044 000850C0 */  sll        $t2, $t0, 3
/* 75C48 80075048 8FA70024 */  lw         $a3, 0x24($sp)
/* 75C4C 8007504C 030AC821 */  addu       $t9, $t8, $t2
/* 75C50 80075050 8DC40004 */  lw         $a0, 0x4($t6)
/* 75C54 80075054 8DC50008 */  lw         $a1, 0x8($t6)
/* 75C58 80075058 0C01D4A4 */  jal        func_80075290
/* 75C5C 8007505C 032B3021 */   addu      $a2, $t9, $t3
/* 75C60 80075060 AFA2002C */  sw         $v0, 0x2C($sp)
.L80075064:
/* 75C64 80075064 8FA9002C */  lw         $t1, 0x2C($sp)
/* 75C68 80075068 11200003 */  beqz       $t1, .L80075078
/* 75C6C 8007506C 00000000 */   nop
/* 75C70 80075070 10000066 */  b          .L8007520C
/* 75C74 80075074 01201025 */   or        $v0, $t1, $zero
.L80075078:
/* 75C78 80075078 8FAC0030 */  lw         $t4, 0x30($sp)
/* 75C7C 8007507C 258D0001 */  addiu      $t5, $t4, 0x1
/* 75C80 80075080 29A10008 */  slti       $at, $t5, 0x8
/* 75C84 80075084 1420FFC9 */  bnez       $at, .L80074FAC
/* 75C88 80075088 AFAD0030 */   sw        $t5, 0x30($sp)
/* 75C8C 8007508C 93AF0043 */  lbu        $t7, 0x43($sp)
/* 75C90 80075090 15E0005D */  bnez       $t7, .L80075208
/* 75C94 80075094 00000000 */   nop
/* 75C98 80075098 8FA80028 */  lw         $t0, 0x28($sp)
/* 75C9C 8007509C 8FAE003C */  lw         $t6, 0x3C($sp)
/* 75CA0 800750A0 00082823 */  negu       $a1, $t0
/* 75CA4 800750A4 00055040 */  sll        $t2, $a1, 1
/* 75CA8 800750A8 01402825 */  or         $a1, $t2, $zero
/* 75CAC 800750AC 0008C040 */  sll        $t8, $t0, 1
/* 75CB0 800750B0 24A50100 */  addiu      $a1, $a1, 0x100
/* 75CB4 800750B4 0C01D14C */  jal        func_80074530
/* 75CB8 800750B8 01D82021 */   addu      $a0, $t6, $t8
/* 75CBC 800750BC 8FB9003C */  lw         $t9, 0x3C($sp)
/* 75CC0 800750C0 A3A20037 */  sb         $v0, 0x37($sp)
/* 75CC4 800750C4 93A90037 */  lbu        $t1, 0x37($sp)
/* 75CC8 800750C8 932B0001 */  lbu        $t3, 0x1($t9)
/* 75CCC 800750CC 11690037 */  beq        $t3, $t1, .L800751AC
/* 75CD0 800750D0 00000000 */   nop
/* 75CD4 800750D4 AFA00030 */  sw         $zero, 0x30($sp)
.L800750D8:
/* 75CD8 800750D8 8FAD0030 */  lw         $t5, 0x30($sp)
/* 75CDC 800750DC 8FAC003C */  lw         $t4, 0x3C($sp)
/* 75CE0 800750E0 8FB80038 */  lw         $t8, 0x38($sp)
/* 75CE4 800750E4 000D7940 */  sll        $t7, $t5, 5
/* 75CE8 800750E8 018F7021 */  addu       $t6, $t4, $t7
/* 75CEC 800750EC 93AA0047 */  lbu        $t2, 0x47($sp)
/* 75CF0 800750F0 AFAE0024 */  sw         $t6, 0x24($sp)
/* 75CF4 800750F4 8F080058 */  lw         $t0, 0x58($t8)
/* 75CF8 800750F8 000AC8C0 */  sll        $t9, $t2, 3
/* 75CFC 800750FC 01C03825 */  or         $a3, $t6, $zero
/* 75D00 80075100 01195821 */  addu       $t3, $t0, $t9
/* 75D04 80075104 016D3021 */  addu       $a2, $t3, $t5
/* 75D08 80075108 8F050008 */  lw         $a1, 0x8($t8)
/* 75D0C 8007510C 0C01D4A4 */  jal        func_80075290
/* 75D10 80075110 8F040004 */   lw        $a0, 0x4($t8)
/* 75D14 80075114 8FA90030 */  lw         $t1, 0x30($sp)
/* 75D18 80075118 AFA2002C */  sw         $v0, 0x2C($sp)
/* 75D1C 8007511C 252C0001 */  addiu      $t4, $t1, 0x1
/* 75D20 80075120 29810008 */  slti       $at, $t4, 0x8
/* 75D24 80075124 1420FFEC */  bnez       $at, .L800750D8
/* 75D28 80075128 AFAC0030 */   sw        $t4, 0x30($sp)
/* 75D2C 8007512C 8FAF003C */  lw         $t7, 0x3C($sp)
/* 75D30 80075130 93AA0037 */  lbu        $t2, 0x37($sp)
/* 75D34 80075134 91F80001 */  lbu        $t8, 0x1($t7)
/* 75D38 80075138 130A0003 */  beq        $t8, $t2, .L80075148
/* 75D3C 8007513C 00000000 */   nop
/* 75D40 80075140 10000032 */  b          .L8007520C
/* 75D44 80075144 24020003 */   addiu     $v0, $zero, 0x3
.L80075148:
/* 75D48 80075148 AFA00030 */  sw         $zero, 0x30($sp)
.L8007514C:
/* 75D4C 8007514C 8FB90030 */  lw         $t9, 0x30($sp)
/* 75D50 80075150 8FA8003C */  lw         $t0, 0x3C($sp)
/* 75D54 80075154 8FAE0038 */  lw         $t6, 0x38($sp)
/* 75D58 80075158 00195940 */  sll        $t3, $t9, 5
/* 75D5C 8007515C 010B6821 */  addu       $t5, $t0, $t3
/* 75D60 80075160 93AC0047 */  lbu        $t4, 0x47($sp)
/* 75D64 80075164 AFAD0024 */  sw         $t5, 0x24($sp)
/* 75D68 80075168 8DC90054 */  lw         $t1, 0x54($t6)
/* 75D6C 8007516C 000C78C0 */  sll        $t7, $t4, 3
/* 75D70 80075170 8DC50008 */  lw         $a1, 0x8($t6)
/* 75D74 80075174 8DC40004 */  lw         $a0, 0x4($t6)
/* 75D78 80075178 012FC021 */  addu       $t8, $t1, $t7
/* 75D7C 8007517C AFA00010 */  sw         $zero, 0x10($sp)
/* 75D80 80075180 01A03825 */  or         $a3, $t5, $zero
/* 75D84 80075184 0C01DC98 */  jal        __osContRamWrite
/* 75D88 80075188 03193021 */   addu      $a2, $t8, $t9
/* 75D8C 8007518C 8FAA0030 */  lw         $t2, 0x30($sp)
/* 75D90 80075190 AFA2002C */  sw         $v0, 0x2C($sp)
/* 75D94 80075194 25480001 */  addiu      $t0, $t2, 0x1
/* 75D98 80075198 29010008 */  slti       $at, $t0, 0x8
/* 75D9C 8007519C 1420FFEB */  bnez       $at, .L8007514C
/* 75DA0 800751A0 AFA80030 */   sw        $t0, 0x30($sp)
/* 75DA4 800751A4 10000018 */  b          .L80075208
/* 75DA8 800751A8 00000000 */   nop
.L800751AC:
/* 75DAC 800751AC AFA00030 */  sw         $zero, 0x30($sp)
.L800751B0:
/* 75DB0 800751B0 8FAE0030 */  lw         $t6, 0x30($sp)
/* 75DB4 800751B4 8FAB003C */  lw         $t3, 0x3C($sp)
/* 75DB8 800751B8 8FAF0038 */  lw         $t7, 0x38($sp)
/* 75DBC 800751BC 000E6140 */  sll        $t4, $t6, 5
/* 75DC0 800751C0 016C4821 */  addu       $t1, $t3, $t4
/* 75DC4 800751C4 93B90047 */  lbu        $t9, 0x47($sp)
/* 75DC8 800751C8 AFA90024 */  sw         $t1, 0x24($sp)
/* 75DCC 800751CC 8DF80058 */  lw         $t8, 0x58($t7)
/* 75DD0 800751D0 001968C0 */  sll        $t5, $t9, 3
/* 75DD4 800751D4 8DE50008 */  lw         $a1, 0x8($t7)
/* 75DD8 800751D8 8DE40004 */  lw         $a0, 0x4($t7)
/* 75DDC 800751DC 030D5021 */  addu       $t2, $t8, $t5
/* 75DE0 800751E0 AFA00010 */  sw         $zero, 0x10($sp)
/* 75DE4 800751E4 01203825 */  or         $a3, $t1, $zero
/* 75DE8 800751E8 0C01DC98 */  jal        __osContRamWrite
/* 75DEC 800751EC 014E3021 */   addu      $a2, $t2, $t6
/* 75DF0 800751F0 8FA80030 */  lw         $t0, 0x30($sp)
/* 75DF4 800751F4 AFA2002C */  sw         $v0, 0x2C($sp)
/* 75DF8 800751F8 250B0001 */  addiu      $t3, $t0, 0x1
/* 75DFC 800751FC 29610008 */  slti       $at, $t3, 0x8
/* 75E00 80075200 1420FFEB */  bnez       $at, .L800751B0
/* 75E04 80075204 AFAB0030 */   sw        $t3, 0x30($sp)
.L80075208:
/* 75E08 80075208 00001025 */  or         $v0, $zero, $zero
.L8007520C:
/* 75E0C 8007520C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 75E10 80075210 27BD0038 */  addiu      $sp, $sp, 0x38
/* 75E14 80075214 03E00008 */  jr         $ra
/* 75E18 80075218 00000000 */   nop

glabel func_8007521C
/* 75E1C 8007521C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 75E20 80075220 AFBF001C */  sw         $ra, 0x1C($sp)
/* 75E24 80075224 AFA40048 */  sw         $a0, 0x48($sp)
/* 75E28 80075228 AFA00020 */  sw         $zero, 0x20($sp)
/* 75E2C 8007522C AFA00024 */  sw         $zero, 0x24($sp)
.L80075230:
/* 75E30 80075230 8FAE0048 */  lw         $t6, 0x48($sp)
/* 75E34 80075234 8FB80024 */  lw         $t8, 0x24($sp)
/* 75E38 80075238 91CF0065 */  lbu        $t7, 0x65($t6)
/* 75E3C 8007523C 03B8C821 */  addu       $t9, $sp, $t8
/* 75E40 80075240 A32F0028 */  sb         $t7, 0x28($t9)
/* 75E44 80075244 8FA80024 */  lw         $t0, 0x24($sp)
/* 75E48 80075248 25090001 */  addiu      $t1, $t0, 0x1
/* 75E4C 8007524C 29210020 */  slti       $at, $t1, 0x20
/* 75E50 80075250 1420FFF7 */  bnez       $at, .L80075230
/* 75E54 80075254 AFA90024 */   sw        $t1, 0x24($sp)
/* 75E58 80075258 8FAA0048 */  lw         $t2, 0x48($sp)
/* 75E5C 8007525C 24060400 */  addiu      $a2, $zero, 0x400
/* 75E60 80075260 27A70028 */  addiu      $a3, $sp, 0x28
/* 75E64 80075264 8D440004 */  lw         $a0, 0x4($t2)
/* 75E68 80075268 8D450008 */  lw         $a1, 0x8($t2)
/* 75E6C 8007526C 0C01DC98 */  jal        __osContRamWrite
/* 75E70 80075270 AFA00010 */   sw        $zero, 0x10($sp)
/* 75E74 80075274 8FBF001C */  lw         $ra, 0x1C($sp)
/* 75E78 80075278 AFA20020 */  sw         $v0, 0x20($sp)
/* 75E7C 8007527C 8FA20020 */  lw         $v0, 0x20($sp)
/* 75E80 80075280 03E00008 */  jr         $ra
/* 75E84 80075284 27BD0048 */   addiu     $sp, $sp, 0x48
/* 75E88 80075288 00000000 */  nop
/* 75E8C 8007528C 00000000 */  nop

glabel func_80075290
/* 75E90 80075290 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 75E94 80075294 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 75E98 80075298 AFBF001C */  sw         $ra, 0x1C($sp)
/* 75E9C 8007529C 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 75EA0 800752A0 240F0002 */  addiu      $t7, $zero, 0x2
/* 75EA4 800752A4 AFA40060 */  sw         $a0, 0x60($sp)
/* 75EA8 800752A8 AFA50064 */  sw         $a1, 0x64($sp)
/* 75EAC 800752AC AFA60068 */  sw         $a2, 0x68($sp)
/* 75EB0 800752B0 AFA7006C */  sw         $a3, 0x6C($sp)
/* 75EB4 800752B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 75EB8 800752B8 AFA0005C */  sw         $zero, 0x5C($sp)
/* 75EBC 800752BC AFAE0054 */  sw         $t6, 0x54($sp)
/* 75EC0 800752C0 0C01D03C */  jal        func_800740F0
/* 75EC4 800752C4 AFAF0028 */   sw        $t7, 0x28($sp)
/* 75EC8 800752C8 24180002 */  addiu      $t8, $zero, 0x2
/* 75ECC 800752CC 3C01801B */  lui        $at, %hi(D_801AABD0)
/* 75ED0 800752D0 A038ABD0 */  sb         $t8, %lo(D_801AABD0)($at)
/* 75ED4 800752D4 8FA40064 */  lw         $a0, 0x64($sp)
/* 75ED8 800752D8 0C01D52B */  jal        func_800754AC
/* 75EDC 800752DC 97A5006A */   lhu       $a1, 0x6A($sp)
/* 75EE0 800752E0 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 75EE4 800752E4 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 75EE8 800752E8 0C01D090 */  jal        func_80074240
/* 75EEC 800752EC 24040001 */   addiu     $a0, $zero, 0x1
/* 75EF0 800752F0 AFA2005C */  sw         $v0, 0x5C($sp)
/* 75EF4 800752F4 8FA40060 */  lw         $a0, 0x60($sp)
/* 75EF8 800752F8 00002825 */  or         $a1, $zero, $zero
/* 75EFC 800752FC 0C019824 */  jal        func_80066090
/* 75F00 80075300 24060001 */   addiu     $a2, $zero, 0x1
.L80075304:
/* 75F04 80075304 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 75F08 80075308 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 75F0C 8007530C 0C01D090 */  jal        func_80074240
/* 75F10 80075310 00002025 */   or        $a0, $zero, $zero
/* 75F14 80075314 AFA2005C */  sw         $v0, 0x5C($sp)
/* 75F18 80075318 8FA40060 */  lw         $a0, 0x60($sp)
/* 75F1C 8007531C 00002825 */  or         $a1, $zero, $zero
/* 75F20 80075320 0C019824 */  jal        func_80066090
/* 75F24 80075324 24060001 */   addiu     $a2, $zero, 0x1
/* 75F28 80075328 8FA80064 */  lw         $t0, 0x64($sp)
/* 75F2C 8007532C 3C19801B */  lui        $t9, %hi(D_801AD350)
/* 75F30 80075330 2739D350 */  addiu      $t9, $t9, %lo(D_801AD350)
/* 75F34 80075334 1100000C */  beqz       $t0, .L80075368
/* 75F38 80075338 AFB90054 */   sw        $t9, 0x54($sp)
/* 75F3C 8007533C 1900000A */  blez       $t0, .L80075368
/* 75F40 80075340 AFA00058 */   sw        $zero, 0x58($sp)
.L80075344:
/* 75F44 80075344 8FAB0058 */  lw         $t3, 0x58($sp)
/* 75F48 80075348 8FAD0064 */  lw         $t5, 0x64($sp)
/* 75F4C 8007534C 8FA90054 */  lw         $t1, 0x54($sp)
/* 75F50 80075350 256C0001 */  addiu      $t4, $t3, 0x1
/* 75F54 80075354 018D082A */  slt        $at, $t4, $t5
/* 75F58 80075358 252A0001 */  addiu      $t2, $t1, 0x1
/* 75F5C 8007535C AFAC0058 */  sw         $t4, 0x58($sp)
/* 75F60 80075360 1420FFF8 */  bnez       $at, .L80075344
/* 75F64 80075364 AFAA0054 */   sw        $t2, 0x54($sp)
.L80075368:
/* 75F68 80075368 8FAF0054 */  lw         $t7, 0x54($sp)
/* 75F6C 8007536C 27AE002C */  addiu      $t6, $sp, 0x2C
/* 75F70 80075370 25F90024 */  addiu      $t9, $t7, 0x24
.L80075374:
/* 75F74 80075374 89E10000 */  lwl        $at, 0x0($t7)
/* 75F78 80075378 99E10003 */  lwr        $at, 0x3($t7)
/* 75F7C 8007537C 25EF000C */  addiu      $t7, $t7, 0xC
/* 75F80 80075380 25CE000C */  addiu      $t6, $t6, 0xC
/* 75F84 80075384 ADC1FFF4 */  sw         $at, -0xC($t6)
/* 75F88 80075388 89E1FFF8 */  lwl        $at, -0x8($t7)
/* 75F8C 8007538C 99E1FFFB */  lwr        $at, -0x5($t7)
/* 75F90 80075390 ADC1FFF8 */  sw         $at, -0x8($t6)
/* 75F94 80075394 89E1FFFC */  lwl        $at, -0x4($t7)
/* 75F98 80075398 99E1FFFF */  lwr        $at, -0x1($t7)
/* 75F9C 8007539C 15F9FFF5 */  bne        $t7, $t9, .L80075374
/* 75FA0 800753A0 ADC1FFFC */   sw        $at, -0x4($t6)
/* 75FA4 800753A4 89E10000 */  lwl        $at, 0x0($t7)
/* 75FA8 800753A8 99E10003 */  lwr        $at, 0x3($t7)
/* 75FAC 800753AC ADC10000 */  sw         $at, 0x0($t6)
/* 75FB0 800753B0 93A8002E */  lbu        $t0, 0x2E($sp)
/* 75FB4 800753B4 310900C0 */  andi       $t1, $t0, 0xC0
/* 75FB8 800753B8 00095103 */  sra        $t2, $t1, 4
/* 75FBC 800753BC 15400027 */  bnez       $t2, .L8007545C
/* 75FC0 800753C0 AFAA005C */   sw        $t2, 0x5C($sp)
/* 75FC4 800753C4 27A4002C */  addiu      $a0, $sp, 0x2C
/* 75FC8 800753C8 0C01DFB4 */  jal        __osContDataCrc
/* 75FCC 800753CC 24840006 */   addiu     $a0, $a0, 0x6
/* 75FD0 800753D0 A3A20027 */  sb         $v0, 0x27($sp)
/* 75FD4 800753D4 93AB0027 */  lbu        $t3, 0x27($sp)
/* 75FD8 800753D8 93AC0052 */  lbu        $t4, 0x52($sp)
/* 75FDC 800753DC 116C000F */  beq        $t3, $t4, .L8007541C
/* 75FE0 800753E0 00000000 */   nop
/* 75FE4 800753E4 8FA40060 */  lw         $a0, 0x60($sp)
/* 75FE8 800753E8 0C01D0BC */  jal        func_800742F0
/* 75FEC 800753EC 8FA50064 */   lw        $a1, 0x64($sp)
/* 75FF0 800753F0 AFA2005C */  sw         $v0, 0x5C($sp)
/* 75FF4 800753F4 8FAD005C */  lw         $t5, 0x5C($sp)
/* 75FF8 800753F8 11A00005 */  beqz       $t5, .L80075410
/* 75FFC 800753FC 00000000 */   nop
/* 76000 80075400 0C01D04D */  jal        func_80074134
/* 76004 80075404 00000000 */   nop
/* 76008 80075408 10000023 */  b          .L80075498
/* 7600C 8007540C 8FA2005C */   lw        $v0, 0x5C($sp)
.L80075410:
/* 76010 80075410 24180004 */  addiu      $t8, $zero, 0x4
/* 76014 80075414 10000013 */  b          .L80075464
/* 76018 80075418 AFB8005C */   sw        $t8, 0x5C($sp)
.L8007541C:
/* 7601C 8007541C AFA00058 */  sw         $zero, 0x58($sp)
.L80075420:
/* 76020 80075420 8FB90058 */  lw         $t9, 0x58($sp)
/* 76024 80075424 8FAE006C */  lw         $t6, 0x6C($sp)
/* 76028 80075428 03B97821 */  addu       $t7, $sp, $t9
/* 7602C 8007542C 91EF0032 */  lbu        $t7, 0x32($t7)
/* 76030 80075430 A1CF0000 */  sb         $t7, 0x0($t6)
/* 76034 80075434 8FAA0058 */  lw         $t2, 0x58($sp)
/* 76038 80075438 8FA8006C */  lw         $t0, 0x6C($sp)
/* 7603C 8007543C 254B0001 */  addiu      $t3, $t2, 0x1
/* 76040 80075440 29610020 */  slti       $at, $t3, 0x20
/* 76044 80075444 25090001 */  addiu      $t1, $t0, 0x1
/* 76048 80075448 AFAB0058 */  sw         $t3, 0x58($sp)
/* 7604C 8007544C 1420FFF4 */  bnez       $at, .L80075420
/* 76050 80075450 AFA9006C */   sw        $t1, 0x6C($sp)
/* 76054 80075454 10000003 */  b          .L80075464
/* 76058 80075458 00000000 */   nop
.L8007545C:
/* 7605C 8007545C 240C0001 */  addiu      $t4, $zero, 0x1
/* 76060 80075460 AFAC005C */  sw         $t4, 0x5C($sp)
.L80075464:
/* 76064 80075464 8FAD005C */  lw         $t5, 0x5C($sp)
/* 76068 80075468 24010004 */  addiu      $at, $zero, 0x4
/* 7606C 8007546C 15A10007 */  bne        $t5, $at, .L8007548C
/* 76070 80075470 00000000 */   nop
/* 76074 80075474 8FB80028 */  lw         $t8, 0x28($sp)
/* 76078 80075478 2B100000 */  slti       $s0, $t8, 0x0
/* 7607C 8007547C 3A100001 */  xori       $s0, $s0, 0x1
/* 76080 80075480 2719FFFF */  addiu      $t9, $t8, -0x1
/* 76084 80075484 1600FF9F */  bnez       $s0, .L80075304
/* 76088 80075488 AFB90028 */   sw        $t9, 0x28($sp)
.L8007548C:
/* 7608C 8007548C 0C01D04D */  jal        func_80074134
/* 76090 80075490 00000000 */   nop
/* 76094 80075494 8FA2005C */  lw         $v0, 0x5C($sp)
.L80075498:
/* 76098 80075498 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7609C 8007549C 8FB00018 */  lw         $s0, 0x18($sp)
/* 760A0 800754A0 27BD0060 */  addiu      $sp, $sp, 0x60
/* 760A4 800754A4 03E00008 */  jr         $ra
/* 760A8 800754A8 00000000 */   nop

glabel func_800754AC
/* 760AC 800754AC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 760B0 800754B0 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 760B4 800754B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 760B8 800754B8 AFA40048 */  sw         $a0, 0x48($sp)
/* 760BC 800754BC AFA5004C */  sw         $a1, 0x4C($sp)
/* 760C0 800754C0 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 760C4 800754C4 240F0001 */  addiu      $t7, $zero, 0x1
/* 760C8 800754C8 3C01801B */  lui        $at, %hi(D_801AD38C)
/* 760CC 800754CC 241800FF */  addiu      $t8, $zero, 0xFF
/* 760D0 800754D0 24190003 */  addiu      $t9, $zero, 0x3
/* 760D4 800754D4 24080021 */  addiu      $t0, $zero, 0x21
/* 760D8 800754D8 24090002 */  addiu      $t1, $zero, 0x2
/* 760DC 800754DC AFAE0044 */  sw         $t6, 0x44($sp)
/* 760E0 800754E0 AC2FD38C */  sw         $t7, %lo(D_801AD38C)($at)
/* 760E4 800754E4 A3B8001C */  sb         $t8, 0x1C($sp)
/* 760E8 800754E8 A3B9001D */  sb         $t9, 0x1D($sp)
/* 760EC 800754EC A3A8001E */  sb         $t0, 0x1E($sp)
/* 760F0 800754F0 A3A9001F */  sb         $t1, 0x1F($sp)
/* 760F4 800754F4 0C01DF88 */  jal        __osContAddressCrc
/* 760F8 800754F8 97A4004E */   lhu       $a0, 0x4E($sp)
/* 760FC 800754FC 97AA004E */  lhu        $t2, 0x4E($sp)
/* 76100 80075500 240D00FF */  addiu      $t5, $zero, 0xFF
/* 76104 80075504 A3AD0042 */  sb         $t5, 0x42($sp)
/* 76108 80075508 000A5940 */  sll        $t3, $t2, 5
/* 7610C 8007550C 004B6025 */  or         $t4, $v0, $t3
/* 76110 80075510 A7AC0020 */  sh         $t4, 0x20($sp)
/* 76114 80075514 AFA00018 */  sw         $zero, 0x18($sp)
.L80075518:
/* 76118 80075518 8FAF0018 */  lw         $t7, 0x18($sp)
/* 7611C 8007551C 240E00FF */  addiu      $t6, $zero, 0xFF
/* 76120 80075520 03AFC021 */  addu       $t8, $sp, $t7
/* 76124 80075524 A30E0022 */  sb         $t6, 0x22($t8)
/* 76128 80075528 8FB90018 */  lw         $t9, 0x18($sp)
/* 7612C 8007552C 27280001 */  addiu      $t0, $t9, 0x1
/* 76130 80075530 29010020 */  slti       $at, $t0, 0x20
/* 76134 80075534 1420FFF8 */  bnez       $at, .L80075518
/* 76138 80075538 AFA80018 */   sw        $t0, 0x18($sp)
/* 7613C 8007553C 8FA90048 */  lw         $t1, 0x48($sp)
/* 76140 80075540 1120000E */  beqz       $t1, .L8007557C
/* 76144 80075544 00000000 */   nop
/* 76148 80075548 1920000C */  blez       $t1, .L8007557C
/* 7614C 8007554C AFA00018 */   sw        $zero, 0x18($sp)
.L80075550:
/* 76150 80075550 8FAA0044 */  lw         $t2, 0x44($sp)
/* 76154 80075554 A1400000 */  sb         $zero, 0x0($t2)
/* 76158 80075558 8FAD0018 */  lw         $t5, 0x18($sp)
/* 7615C 8007555C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 76160 80075560 8FAB0044 */  lw         $t3, 0x44($sp)
/* 76164 80075564 25AE0001 */  addiu      $t6, $t5, 0x1
/* 76168 80075568 01CF082A */  slt        $at, $t6, $t7
/* 7616C 8007556C 256C0001 */  addiu      $t4, $t3, 0x1
/* 76170 80075570 AFAE0018 */  sw         $t6, 0x18($sp)
/* 76174 80075574 1420FFF6 */  bnez       $at, .L80075550
/* 76178 80075578 AFAC0044 */   sw        $t4, 0x44($sp)
.L8007557C:
/* 7617C 8007557C 27B9001C */  addiu      $t9, $sp, 0x1C
/* 76180 80075580 27290024 */  addiu      $t1, $t9, 0x24
/* 76184 80075584 8FB80044 */  lw         $t8, 0x44($sp)
.L80075588:
/* 76188 80075588 8F210000 */  lw         $at, 0x0($t9)
/* 7618C 8007558C 2739000C */  addiu      $t9, $t9, 0xC
/* 76190 80075590 2718000C */  addiu      $t8, $t8, 0xC
/* 76194 80075594 AB01FFF4 */  swl        $at, -0xC($t8)
/* 76198 80075598 BB01FFF7 */  swr        $at, -0x9($t8)
/* 7619C 8007559C 8F21FFF8 */  lw         $at, -0x8($t9)
/* 761A0 800755A0 AB01FFF8 */  swl        $at, -0x8($t8)
/* 761A4 800755A4 BB01FFFB */  swr        $at, -0x5($t8)
/* 761A8 800755A8 8F21FFFC */  lw         $at, -0x4($t9)
/* 761AC 800755AC AB01FFFC */  swl        $at, -0x4($t8)
/* 761B0 800755B0 1729FFF5 */  bne        $t9, $t1, .L80075588
/* 761B4 800755B4 BB01FFFF */   swr       $at, -0x1($t8)
/* 761B8 800755B8 8F210000 */  lw         $at, 0x0($t9)
/* 761BC 800755BC 240C00FE */  addiu      $t4, $zero, 0xFE
/* 761C0 800755C0 AB010000 */  swl        $at, 0x0($t8)
/* 761C4 800755C4 BB010003 */  swr        $at, 0x3($t8)
/* 761C8 800755C8 8FAA0044 */  lw         $t2, 0x44($sp)
/* 761CC 800755CC 254B0028 */  addiu      $t3, $t2, 0x28
/* 761D0 800755D0 AFAB0044 */  sw         $t3, 0x44($sp)
/* 761D4 800755D4 A16C0000 */  sb         $t4, 0x0($t3)
/* 761D8 800755D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 761DC 800755DC 27BD0048 */  addiu      $sp, $sp, 0x48
/* 761E0 800755E0 03E00008 */  jr         $ra
/* 761E4 800755E4 00000000 */   nop
/* 761E8 800755E8 00000000 */  nop
/* 761EC 800755EC 00000000 */  nop

glabel func_800755F0
/* 761F0 800755F0 27BDFB78 */  addiu      $sp, $sp, -0x488
/* 761F4 800755F4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 761F8 800755F8 AFA40488 */  sw         $a0, 0x488($sp)
/* 761FC 800755FC AFA00034 */  sw         $zero, 0x34($sp)
/* 76200 80075600 0C01D380 */  jal        func_80074E00
/* 76204 80075604 8FA40488 */   lw        $a0, 0x488($sp)
/* 76208 80075608 AFA20480 */  sw         $v0, 0x480($sp)
/* 7620C 8007560C 8FAE0480 */  lw         $t6, 0x480($sp)
/* 76210 80075610 24010002 */  addiu      $at, $zero, 0x2
/* 76214 80075614 15C10004 */  bne        $t6, $at, .L80075628
/* 76218 80075618 00000000 */   nop
/* 7621C 8007561C 0C01D2E9 */  jal        func_80074BA4
/* 76220 80075620 8FA40488 */   lw        $a0, 0x488($sp)
/* 76224 80075624 AFA20480 */  sw         $v0, 0x480($sp)
.L80075628:
/* 76228 80075628 8FAF0480 */  lw         $t7, 0x480($sp)
/* 7622C 8007562C 11E00003 */  beqz       $t7, .L8007563C
/* 76230 80075630 00000000 */   nop
/* 76234 80075634 1000019B */  b          .L80075CA4
/* 76238 80075638 01E01025 */   or        $v0, $t7, $zero
.L8007563C:
/* 7623C 8007563C 8FA40488 */  lw         $a0, 0x488($sp)
/* 76240 80075640 0C01D72D */  jal        func_80075CB4
/* 76244 80075644 27A50038 */   addiu     $a1, $sp, 0x38
/* 76248 80075648 AFA20480 */  sw         $v0, 0x480($sp)
/* 7624C 8007564C 8FB80480 */  lw         $t8, 0x480($sp)
/* 76250 80075650 13000003 */  beqz       $t8, .L80075660
/* 76254 80075654 00000000 */   nop
/* 76258 80075658 10000192 */  b          .L80075CA4
/* 7625C 8007565C 03001025 */   or        $v0, $t8, $zero
.L80075660:
/* 76260 80075660 8FB90488 */  lw         $t9, 0x488($sp)
/* 76264 80075664 AFA00484 */  sw         $zero, 0x484($sp)
/* 76268 80075668 8F280050 */  lw         $t0, 0x50($t9)
/* 7626C 8007566C 190000C0 */  blez       $t0, .L80075970
/* 76270 80075670 00000000 */   nop
.L80075674:
/* 76274 80075674 8FA90488 */  lw         $t1, 0x488($sp)
/* 76278 80075678 8FAB0484 */  lw         $t3, 0x484($sp)
/* 7627C 8007567C 27A7025C */  addiu      $a3, $sp, 0x25C
/* 76280 80075680 8D2A005C */  lw         $t2, 0x5C($t1)
/* 76284 80075684 8D240004 */  lw         $a0, 0x4($t1)
/* 76288 80075688 8D250008 */  lw         $a1, 0x8($t1)
/* 7628C 8007568C 0C01D4A4 */  jal        func_80075290
/* 76290 80075690 014B3021 */   addu      $a2, $t2, $t3
/* 76294 80075694 AFA20480 */  sw         $v0, 0x480($sp)
/* 76298 80075698 8FAC0480 */  lw         $t4, 0x480($sp)
/* 7629C 8007569C 11800003 */  beqz       $t4, .L800756AC
/* 762A0 800756A0 00000000 */   nop
/* 762A4 800756A4 1000017F */  b          .L80075CA4
/* 762A8 800756A8 01801025 */   or        $v0, $t4, $zero
.L800756AC:
/* 762AC 800756AC 97AD0260 */  lhu        $t5, 0x260($sp)
/* 762B0 800756B0 11A0007D */  beqz       $t5, .L800758A8
/* 762B4 800756B4 00000000 */   nop
/* 762B8 800756B8 8FAE025C */  lw         $t6, 0x25C($sp)
/* 762BC 800756BC 11C0007A */  beqz       $t6, .L800758A8
/* 762C0 800756C0 00000000 */   nop
/* 762C4 800756C4 97AF0262 */  lhu        $t7, 0x262($sp)
/* 762C8 800756C8 8FA80488 */  lw         $t0, 0x488($sp)
/* 762CC 800756CC 241800FF */  addiu      $t8, $zero, 0xFF
/* 762D0 800756D0 A7AF047C */  sh         $t7, 0x47C($sp)
/* 762D4 800756D4 AFA0002C */  sw         $zero, 0x2C($sp)
/* 762D8 800756D8 AFA00028 */  sw         $zero, 0x28($sp)
/* 762DC 800756DC A3B80033 */  sb         $t8, 0x33($sp)
/* 762E0 800756E0 97B9047C */  lhu        $t9, 0x47C($sp)
/* 762E4 800756E4 8D090060 */  lw         $t1, 0x60($t0)
/* 762E8 800756E8 0329082A */  slt        $at, $t9, $t1
/* 762EC 800756EC 14200042 */  bnez       $at, .L800757F8
/* 762F0 800756F0 00000000 */   nop
/* 762F4 800756F4 93AA047C */  lbu        $t2, 0x47C($sp)
/* 762F8 800756F8 910B0064 */  lbu        $t3, 0x64($t0)
/* 762FC 800756FC 014B082A */  slt        $at, $t2, $t3
/* 76300 80075700 1020003D */  beqz       $at, .L800757F8
/* 76304 80075704 00000000 */   nop
/* 76308 80075708 93AC047D */  lbu        $t4, 0x47D($sp)
/* 7630C 8007570C 1980003A */  blez       $t4, .L800757F8
/* 76310 80075710 29810080 */   slti      $at, $t4, 0x80
/* 76314 80075714 10200038 */  beqz       $at, .L800757F8
/* 76318 80075718 00000000 */   nop
.L8007571C:
/* 7631C 8007571C 93AD0033 */  lbu        $t5, 0x33($sp)
/* 76320 80075720 93AE047C */  lbu        $t6, 0x47C($sp)
/* 76324 80075724 11AE000F */  beq        $t5, $t6, .L80075764
/* 76328 80075728 00000000 */   nop
/* 7632C 8007572C A3AE0033 */  sb         $t6, 0x33($sp)
/* 76330 80075730 8FA40488 */  lw         $a0, 0x488($sp)
/* 76334 80075734 27A5027C */  addiu      $a1, $sp, 0x27C
/* 76338 80075738 00003025 */  or         $a2, $zero, $zero
/* 7633C 8007573C 0C01D3BF */  jal        func_80074EFC
/* 76340 80075740 01C03825 */   or        $a3, $t6, $zero
/* 76344 80075744 AFA20480 */  sw         $v0, 0x480($sp)
/* 76348 80075748 8FAF0480 */  lw         $t7, 0x480($sp)
/* 7634C 8007574C 11E00005 */  beqz       $t7, .L80075764
/* 76350 80075750 24010003 */   addiu     $at, $zero, 0x3
/* 76354 80075754 11E10003 */  beq        $t7, $at, .L80075764
/* 76358 80075758 00000000 */   nop
/* 7635C 8007575C 10000151 */  b          .L80075CA4
/* 76360 80075760 01E01025 */   or        $v0, $t7, $zero
.L80075764:
/* 76364 80075764 97B8047C */  lhu        $t8, 0x47C($sp)
/* 76368 80075768 8FA40488 */  lw         $a0, 0x488($sp)
/* 7636C 8007576C 27A60038 */  addiu      $a2, $sp, 0x38
/* 76370 80075770 A7B80004 */  sh         $t8, 0x4($sp)
/* 76374 80075774 0C01D79A */  jal        func_80075E68
/* 76378 80075778 8FA50004 */   lw        $a1, 0x4($sp)
/* 7637C 8007577C 8FB90028 */  lw         $t9, 0x28($sp)
/* 76380 80075780 00594823 */  subu       $t1, $v0, $t9
/* 76384 80075784 AFA9002C */  sw         $t1, 0x2C($sp)
/* 76388 80075788 8FA8002C */  lw         $t0, 0x2C($sp)
/* 7638C 8007578C 1500001A */  bnez       $t0, .L800757F8
/* 76390 80075790 00000000 */   nop
/* 76394 80075794 93AC047D */  lbu        $t4, 0x47D($sp)
/* 76398 80075798 240A0001 */  addiu      $t2, $zero, 0x1
/* 7639C 8007579C 27AE027C */  addiu      $t6, $sp, 0x27C
/* 763A0 800757A0 000C6840 */  sll        $t5, $t4, 1
/* 763A4 800757A4 AFAA0028 */  sw         $t2, 0x28($sp)
/* 763A8 800757A8 01AE7821 */  addu       $t7, $t5, $t6
/* 763AC 800757AC 95E10000 */  lhu        $at, 0x0($t7)
/* 763B0 800757B0 27AB047C */  addiu      $t3, $sp, 0x47C
/* 763B4 800757B4 A5610000 */  sh         $at, 0x0($t3)
/* 763B8 800757B8 8FAA0488 */  lw         $t2, 0x488($sp)
/* 763BC 800757BC 97A8047C */  lhu        $t0, 0x47C($sp)
/* 763C0 800757C0 8D4C0060 */  lw         $t4, 0x60($t2)
/* 763C4 800757C4 010C082A */  slt        $at, $t0, $t4
/* 763C8 800757C8 1420000B */  bnez       $at, .L800757F8
/* 763CC 800757CC 00000000 */   nop
/* 763D0 800757D0 93AD047C */  lbu        $t5, 0x47C($sp)
/* 763D4 800757D4 914E0064 */  lbu        $t6, 0x64($t2)
/* 763D8 800757D8 01AE082A */  slt        $at, $t5, $t6
/* 763DC 800757DC 10200006 */  beqz       $at, .L800757F8
/* 763E0 800757E0 00000000 */   nop
/* 763E4 800757E4 93B9047D */  lbu        $t9, 0x47D($sp)
/* 763E8 800757E8 1B200003 */  blez       $t9, .L800757F8
/* 763EC 800757EC 2B210080 */   slti      $at, $t9, 0x80
/* 763F0 800757F0 1420FFCA */  bnez       $at, .L8007571C
/* 763F4 800757F4 00000000 */   nop
.L800757F8:
/* 763F8 800757F8 8FB8002C */  lw         $t8, 0x2C($sp)
/* 763FC 800757FC 17000005 */  bnez       $t8, .L80075814
/* 76400 80075800 00000000 */   nop
/* 76404 80075804 97AB047C */  lhu        $t3, 0x47C($sp)
/* 76408 80075808 24010001 */  addiu      $at, $zero, 0x1
/* 7640C 8007580C 11610050 */  beq        $t3, $at, .L80075950
/* 76410 80075810 00000000 */   nop
.L80075814:
/* 76414 80075814 8FAF0488 */  lw         $t7, 0x488($sp)
/* 76418 80075818 A7A00260 */  sh         $zero, 0x260($sp)
/* 7641C 8007581C AFA0025C */  sw         $zero, 0x25C($sp)
/* 76420 80075820 A7A00262 */  sh         $zero, 0x262($sp)
/* 76424 80075824 A3A00264 */  sb         $zero, 0x264($sp)
/* 76428 80075828 A7A00266 */  sh         $zero, 0x266($sp)
/* 7642C 8007582C 91E90065 */  lbu        $t1, 0x65($t7)
/* 76430 80075830 1120000A */  beqz       $t1, .L8007585C
/* 76434 80075834 00000000 */   nop
/* 76438 80075838 A1E00065 */  sb         $zero, 0x65($t7)
/* 7643C 8007583C 0C01D487 */  jal        func_8007521C
/* 76440 80075840 8FA40488 */   lw        $a0, 0x488($sp)
/* 76444 80075844 AFA20480 */  sw         $v0, 0x480($sp)
/* 76448 80075848 8FA80480 */  lw         $t0, 0x480($sp)
/* 7644C 8007584C 11000003 */  beqz       $t0, .L8007585C
/* 76450 80075850 00000000 */   nop
/* 76454 80075854 10000113 */  b          .L80075CA4
/* 76458 80075858 01001025 */   or        $v0, $t0, $zero
.L8007585C:
/* 7645C 8007585C 8FAC0488 */  lw         $t4, 0x488($sp)
/* 76460 80075860 8FAD0484 */  lw         $t5, 0x484($sp)
/* 76464 80075864 27A7025C */  addiu      $a3, $sp, 0x25C
/* 76468 80075868 8D8A005C */  lw         $t2, 0x5C($t4)
/* 7646C 8007586C 8D840004 */  lw         $a0, 0x4($t4)
/* 76470 80075870 8D850008 */  lw         $a1, 0x8($t4)
/* 76474 80075874 AFA00010 */  sw         $zero, 0x10($sp)
/* 76478 80075878 0C01DC98 */  jal        __osContRamWrite
/* 7647C 8007587C 014D3021 */   addu      $a2, $t2, $t5
/* 76480 80075880 AFA20480 */  sw         $v0, 0x480($sp)
/* 76484 80075884 8FAE0480 */  lw         $t6, 0x480($sp)
/* 76488 80075888 11C00003 */  beqz       $t6, .L80075898
/* 7648C 8007588C 00000000 */   nop
/* 76490 80075890 10000104 */  b          .L80075CA4
/* 76494 80075894 01C01025 */   or        $v0, $t6, $zero
.L80075898:
/* 76498 80075898 8FB90034 */  lw         $t9, 0x34($sp)
/* 7649C 8007589C 27380001 */  addiu      $t8, $t9, 0x1
/* 764A0 800758A0 1000002B */  b          .L80075950
/* 764A4 800758A4 AFB80034 */   sw        $t8, 0x34($sp)
.L800758A8:
/* 764A8 800758A8 97AB0260 */  lhu        $t3, 0x260($sp)
/* 764AC 800758AC 15600004 */  bnez       $t3, .L800758C0
/* 764B0 800758B0 00000000 */   nop
/* 764B4 800758B4 8FA9025C */  lw         $t1, 0x25C($sp)
/* 764B8 800758B8 11200025 */  beqz       $t1, .L80075950
/* 764BC 800758BC 00000000 */   nop
.L800758C0:
/* 764C0 800758C0 8FAF0488 */  lw         $t7, 0x488($sp)
/* 764C4 800758C4 A7A00260 */  sh         $zero, 0x260($sp)
/* 764C8 800758C8 AFA0025C */  sw         $zero, 0x25C($sp)
/* 764CC 800758CC A7A00262 */  sh         $zero, 0x262($sp)
/* 764D0 800758D0 A3A00264 */  sb         $zero, 0x264($sp)
/* 764D4 800758D4 A7A00266 */  sh         $zero, 0x266($sp)
/* 764D8 800758D8 91E80065 */  lbu        $t0, 0x65($t7)
/* 764DC 800758DC 1100000A */  beqz       $t0, .L80075908
/* 764E0 800758E0 00000000 */   nop
/* 764E4 800758E4 A1E00065 */  sb         $zero, 0x65($t7)
/* 764E8 800758E8 0C01D487 */  jal        func_8007521C
/* 764EC 800758EC 8FA40488 */   lw        $a0, 0x488($sp)
/* 764F0 800758F0 AFA20480 */  sw         $v0, 0x480($sp)
/* 764F4 800758F4 8FAC0480 */  lw         $t4, 0x480($sp)
/* 764F8 800758F8 11800003 */  beqz       $t4, .L80075908
/* 764FC 800758FC 00000000 */   nop
/* 76500 80075900 100000E8 */  b          .L80075CA4
/* 76504 80075904 01801025 */   or        $v0, $t4, $zero
.L80075908:
/* 76508 80075908 8FAA0488 */  lw         $t2, 0x488($sp)
/* 7650C 8007590C 8FAE0484 */  lw         $t6, 0x484($sp)
/* 76510 80075910 27A7025C */  addiu      $a3, $sp, 0x25C
/* 76514 80075914 8D4D005C */  lw         $t5, 0x5C($t2)
/* 76518 80075918 8D440004 */  lw         $a0, 0x4($t2)
/* 7651C 8007591C 8D450008 */  lw         $a1, 0x8($t2)
/* 76520 80075920 AFA00010 */  sw         $zero, 0x10($sp)
/* 76524 80075924 0C01DC98 */  jal        __osContRamWrite
/* 76528 80075928 01AE3021 */   addu      $a2, $t5, $t6
/* 7652C 8007592C AFA20480 */  sw         $v0, 0x480($sp)
/* 76530 80075930 8FB90480 */  lw         $t9, 0x480($sp)
/* 76534 80075934 13200003 */  beqz       $t9, .L80075944
/* 76538 80075938 00000000 */   nop
/* 7653C 8007593C 100000D9 */  b          .L80075CA4
/* 76540 80075940 03201025 */   or        $v0, $t9, $zero
.L80075944:
/* 76544 80075944 8FB80034 */  lw         $t8, 0x34($sp)
/* 76548 80075948 270B0001 */  addiu      $t3, $t8, 0x1
/* 7654C 8007594C AFAB0034 */  sw         $t3, 0x34($sp)
.L80075950:
/* 76550 80075950 8FA90484 */  lw         $t1, 0x484($sp)
/* 76554 80075954 8FAF0488 */  lw         $t7, 0x488($sp)
/* 76558 80075958 25280001 */  addiu      $t0, $t1, 0x1
/* 7655C 8007595C AFA80484 */  sw         $t0, 0x484($sp)
/* 76560 80075960 8DEC0050 */  lw         $t4, 0x50($t7)
/* 76564 80075964 010C082A */  slt        $at, $t0, $t4
/* 76568 80075968 1420FF42 */  bnez       $at, .L80075674
/* 7656C 8007596C 00000000 */   nop
.L80075970:
/* 76570 80075970 8FAA0488 */  lw         $t2, 0x488($sp)
/* 76574 80075974 AFA00484 */  sw         $zero, 0x484($sp)
/* 76578 80075978 8D4D0050 */  lw         $t5, 0x50($t2)
/* 7657C 8007597C 19A0002C */  blez       $t5, .L80075A30
/* 76580 80075980 00000000 */   nop
.L80075984:
/* 76584 80075984 8FAE0488 */  lw         $t6, 0x488($sp)
/* 76588 80075988 8FB80484 */  lw         $t8, 0x484($sp)
/* 7658C 8007598C 27A7025C */  addiu      $a3, $sp, 0x25C
/* 76590 80075990 8DD9005C */  lw         $t9, 0x5C($t6)
/* 76594 80075994 8DC40004 */  lw         $a0, 0x4($t6)
/* 76598 80075998 8DC50008 */  lw         $a1, 0x8($t6)
/* 7659C 8007599C 0C01D4A4 */  jal        func_80075290
/* 765A0 800759A0 03383021 */   addu      $a2, $t9, $t8
/* 765A4 800759A4 AFA20480 */  sw         $v0, 0x480($sp)
/* 765A8 800759A8 8FAB0480 */  lw         $t3, 0x480($sp)
/* 765AC 800759AC 11600003 */  beqz       $t3, .L800759BC
/* 765B0 800759B0 00000000 */   nop
/* 765B4 800759B4 100000BB */  b          .L80075CA4
/* 765B8 800759B8 01601025 */   or        $v0, $t3, $zero
.L800759BC:
/* 765BC 800759BC 97A90260 */  lhu        $t1, 0x260($sp)
/* 765C0 800759C0 1120000F */  beqz       $t1, .L80075A00
/* 765C4 800759C4 00000000 */   nop
/* 765C8 800759C8 8FAF025C */  lw         $t7, 0x25C($sp)
/* 765CC 800759CC 11E0000C */  beqz       $t7, .L80075A00
/* 765D0 800759D0 00000000 */   nop
/* 765D4 800759D4 8FAC0488 */  lw         $t4, 0x488($sp)
/* 765D8 800759D8 97A80262 */  lhu        $t0, 0x262($sp)
/* 765DC 800759DC 958A0062 */  lhu        $t2, 0x62($t4)
/* 765E0 800759E0 010A082A */  slt        $at, $t0, $t2
/* 765E4 800759E4 14200006 */  bnez       $at, .L80075A00
/* 765E8 800759E8 00000000 */   nop
/* 765EC 800759EC 8FAD0484 */  lw         $t5, 0x484($sp)
/* 765F0 800759F0 000D7040 */  sll        $t6, $t5, 1
/* 765F4 800759F4 03AEC821 */  addu       $t9, $sp, $t6
/* 765F8 800759F8 10000005 */  b          .L80075A10
/* 765FC 800759FC A728023C */   sh        $t0, 0x23C($t9)
.L80075A00:
/* 76600 80075A00 8FB80484 */  lw         $t8, 0x484($sp)
/* 76604 80075A04 00185840 */  sll        $t3, $t8, 1
/* 76608 80075A08 03AB4821 */  addu       $t1, $sp, $t3
/* 7660C 80075A0C A520023C */  sh         $zero, 0x23C($t1)
.L80075A10:
/* 76610 80075A10 8FAF0484 */  lw         $t7, 0x484($sp)
/* 76614 80075A14 8FAA0488 */  lw         $t2, 0x488($sp)
/* 76618 80075A18 25EC0001 */  addiu      $t4, $t7, 0x1
/* 7661C 80075A1C AFAC0484 */  sw         $t4, 0x484($sp)
/* 76620 80075A20 8D4D0050 */  lw         $t5, 0x50($t2)
/* 76624 80075A24 018D082A */  slt        $at, $t4, $t5
/* 76628 80075A28 1420FFD6 */  bnez       $at, .L80075984
/* 7662C 80075A2C 00000000 */   nop
.L80075A30:
/* 76630 80075A30 8FA80488 */  lw         $t0, 0x488($sp)
/* 76634 80075A34 A3A00033 */  sb         $zero, 0x33($sp)
/* 76638 80075A38 910E0064 */  lbu        $t6, 0x64($t0)
/* 7663C 80075A3C 19C0008B */  blez       $t6, .L80075C6C
/* 76640 80075A40 00000000 */   nop
.L80075A44:
/* 76644 80075A44 8FA40488 */  lw         $a0, 0x488($sp)
/* 76648 80075A48 27A5027C */  addiu      $a1, $sp, 0x27C
/* 7664C 80075A4C 00003025 */  or         $a2, $zero, $zero
/* 76650 80075A50 0C01D3BF */  jal        func_80074EFC
/* 76654 80075A54 93A70033 */   lbu       $a3, 0x33($sp)
/* 76658 80075A58 AFA20480 */  sw         $v0, 0x480($sp)
/* 7665C 80075A5C 8FB90480 */  lw         $t9, 0x480($sp)
/* 76660 80075A60 13200005 */  beqz       $t9, .L80075A78
/* 76664 80075A64 24010003 */   addiu     $at, $zero, 0x3
/* 76668 80075A68 13210003 */  beq        $t9, $at, .L80075A78
/* 7666C 80075A6C 00000000 */   nop
/* 76670 80075A70 1000008C */  b          .L80075CA4
/* 76674 80075A74 03201025 */   or        $v0, $t9, $zero
.L80075A78:
/* 76678 80075A78 93B80033 */  lbu        $t8, 0x33($sp)
/* 7667C 80075A7C 1B000004 */  blez       $t8, .L80075A90
/* 76680 80075A80 00000000 */   nop
/* 76684 80075A84 240B0001 */  addiu      $t3, $zero, 0x1
/* 76688 80075A88 10000004 */  b          .L80075A9C
/* 7668C 80075A8C AFAB0024 */   sw        $t3, 0x24($sp)
.L80075A90:
/* 76690 80075A90 8FA90488 */  lw         $t1, 0x488($sp)
/* 76694 80075A94 8D2F0060 */  lw         $t7, 0x60($t1)
/* 76698 80075A98 AFAF0024 */  sw         $t7, 0x24($sp)
.L80075A9C:
/* 7669C 80075A9C 8FAA0024 */  lw         $t2, 0x24($sp)
/* 766A0 80075AA0 AFA00484 */  sw         $zero, 0x484($sp)
/* 766A4 80075AA4 1940000D */  blez       $t2, .L80075ADC
/* 766A8 80075AA8 00000000 */   nop
.L80075AAC:
/* 766AC 80075AAC 8FAC0484 */  lw         $t4, 0x484($sp)
/* 766B0 80075AB0 000C6840 */  sll        $t5, $t4, 1
/* 766B4 80075AB4 03AD4021 */  addu       $t0, $sp, $t5
/* 766B8 80075AB8 9508027C */  lhu        $t0, 0x27C($t0)
/* 766BC 80075ABC 03AD7021 */  addu       $t6, $sp, $t5
/* 766C0 80075AC0 A5C8037C */  sh         $t0, 0x37C($t6)
/* 766C4 80075AC4 8FB90484 */  lw         $t9, 0x484($sp)
/* 766C8 80075AC8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 766CC 80075ACC 27380001 */  addiu      $t8, $t9, 0x1
/* 766D0 80075AD0 030B082A */  slt        $at, $t8, $t3
/* 766D4 80075AD4 1420FFF5 */  bnez       $at, .L80075AAC
/* 766D8 80075AD8 AFB80484 */   sw        $t8, 0x484($sp)
.L80075ADC:
/* 766DC 80075ADC 8FA90484 */  lw         $t1, 0x484($sp)
/* 766E0 80075AE0 29210080 */  slti       $at, $t1, 0x80
/* 766E4 80075AE4 1020000B */  beqz       $at, .L80075B14
/* 766E8 80075AE8 00000000 */   nop
.L80075AEC:
/* 766EC 80075AEC 8FAA0484 */  lw         $t2, 0x484($sp)
/* 766F0 80075AF0 240F0003 */  addiu      $t7, $zero, 0x3
/* 766F4 80075AF4 000A6040 */  sll        $t4, $t2, 1
/* 766F8 80075AF8 03AC4021 */  addu       $t0, $sp, $t4
/* 766FC 80075AFC A50F037C */  sh         $t7, 0x37C($t0)
/* 76700 80075B00 8FAD0484 */  lw         $t5, 0x484($sp)
/* 76704 80075B04 25AE0001 */  addiu      $t6, $t5, 0x1
/* 76708 80075B08 29C10080 */  slti       $at, $t6, 0x80
/* 7670C 80075B0C 1420FFF7 */  bnez       $at, .L80075AEC
/* 76710 80075B10 AFAE0484 */   sw        $t6, 0x484($sp)
.L80075B14:
/* 76714 80075B14 8FB90488 */  lw         $t9, 0x488($sp)
/* 76718 80075B18 AFA00484 */  sw         $zero, 0x484($sp)
/* 7671C 80075B1C 8F380050 */  lw         $t8, 0x50($t9)
/* 76720 80075B20 1B00003E */  blez       $t8, .L80075C1C
/* 76724 80075B24 00000000 */   nop
.L80075B28:
/* 76728 80075B28 8FAB0484 */  lw         $t3, 0x484($sp)
/* 7672C 80075B2C 27AA023C */  addiu      $t2, $sp, 0x23C
/* 76730 80075B30 93A80033 */  lbu        $t0, 0x33($sp)
/* 76734 80075B34 000B4840 */  sll        $t1, $t3, 1
/* 76738 80075B38 012A7821 */  addu       $t7, $t1, $t2
/* 7673C 80075B3C 91EC0000 */  lbu        $t4, 0x0($t7)
/* 76740 80075B40 1588002E */  bne        $t4, $t0, .L80075BFC
/* 76744 80075B44 00000000 */   nop
/* 76748 80075B48 8FAE0488 */  lw         $t6, 0x488($sp)
/* 7674C 80075B4C 95ED0000 */  lhu        $t5, 0x0($t7)
/* 76750 80075B50 95D90062 */  lhu        $t9, 0x62($t6)
/* 76754 80075B54 01B9082A */  slt        $at, $t5, $t9
/* 76758 80075B58 14200028 */  bnez       $at, .L80075BFC
/* 7675C 80075B5C 00000000 */   nop
.L80075B60:
/* 76760 80075B60 8FB80484 */  lw         $t8, 0x484($sp)
/* 76764 80075B64 27A8027C */  addiu      $t0, $sp, 0x27C
/* 76768 80075B68 27AA0020 */  addiu      $t2, $sp, 0x20
/* 7676C 80075B6C 00185840 */  sll        $t3, $t8, 1
/* 76770 80075B70 03AB4821 */  addu       $t1, $sp, $t3
/* 76774 80075B74 9129023D */  lbu        $t1, 0x23D($t1)
/* 76778 80075B78 00096040 */  sll        $t4, $t1, 1
/* 7677C 80075B7C 01887821 */  addu       $t7, $t4, $t0
/* 76780 80075B80 A3A90023 */  sb         $t1, 0x23($sp)
/* 76784 80075B84 95E10000 */  lhu        $at, 0x0($t7)
/* 76788 80075B88 27A80020 */  addiu      $t0, $sp, 0x20
/* 7678C 80075B8C 27A9037C */  addiu      $t1, $sp, 0x37C
/* 76790 80075B90 A5410000 */  sh         $at, 0x0($t2)
/* 76794 80075B94 93B80023 */  lbu        $t8, 0x23($sp)
/* 76798 80075B98 95010000 */  lhu        $at, 0x0($t0)
/* 7679C 80075B9C 00185840 */  sll        $t3, $t8, 1
/* 767A0 80075BA0 01696021 */  addu       $t4, $t3, $t1
/* 767A4 80075BA4 A5810000 */  sh         $at, 0x0($t4)
/* 767A8 80075BA8 8FAF0484 */  lw         $t7, 0x484($sp)
/* 767AC 80075BAC 27A90020 */  addiu      $t1, $sp, 0x20
/* 767B0 80075BB0 95210000 */  lhu        $at, 0x0($t1)
/* 767B4 80075BB4 27B8023C */  addiu      $t8, $sp, 0x23C
/* 767B8 80075BB8 000FC840 */  sll        $t9, $t7, 1
/* 767BC 80075BBC 03385821 */  addu       $t3, $t9, $t8
/* 767C0 80075BC0 A5610000 */  sh         $at, 0x0($t3)
/* 767C4 80075BC4 8FA80484 */  lw         $t0, 0x484($sp)
/* 767C8 80075BC8 27AF023C */  addiu      $t7, $sp, 0x23C
/* 767CC 80075BCC 93AD0033 */  lbu        $t5, 0x33($sp)
/* 767D0 80075BD0 00085040 */  sll        $t2, $t0, 1
/* 767D4 80075BD4 014FC821 */  addu       $t9, $t2, $t7
/* 767D8 80075BD8 93380000 */  lbu        $t8, 0x0($t9)
/* 767DC 80075BDC 170D0007 */  bne        $t8, $t5, .L80075BFC
/* 767E0 80075BE0 00000000 */   nop
/* 767E4 80075BE4 8FAB0488 */  lw         $t3, 0x488($sp)
/* 767E8 80075BE8 972E0000 */  lhu        $t6, 0x0($t9)
/* 767EC 80075BEC 95690062 */  lhu        $t1, 0x62($t3)
/* 767F0 80075BF0 01C9082A */  slt        $at, $t6, $t1
/* 767F4 80075BF4 1020FFDA */  beqz       $at, .L80075B60
/* 767F8 80075BF8 00000000 */   nop
.L80075BFC:
/* 767FC 80075BFC 8FAC0484 */  lw         $t4, 0x484($sp)
/* 76800 80075C00 8FAA0488 */  lw         $t2, 0x488($sp)
/* 76804 80075C04 25880001 */  addiu      $t0, $t4, 0x1
/* 76808 80075C08 AFA80484 */  sw         $t0, 0x484($sp)
/* 7680C 80075C0C 8D4F0050 */  lw         $t7, 0x50($t2)
/* 76810 80075C10 010F082A */  slt        $at, $t0, $t7
/* 76814 80075C14 1420FFC4 */  bnez       $at, .L80075B28
/* 76818 80075C18 00000000 */   nop
.L80075C1C:
/* 7681C 80075C1C 8FA40488 */  lw         $a0, 0x488($sp)
/* 76820 80075C20 27A5037C */  addiu      $a1, $sp, 0x37C
/* 76824 80075C24 24060001 */  addiu      $a2, $zero, 0x1
/* 76828 80075C28 0C01D3BF */  jal        func_80074EFC
/* 7682C 80075C2C 93A70033 */   lbu       $a3, 0x33($sp)
/* 76830 80075C30 AFA20480 */  sw         $v0, 0x480($sp)
/* 76834 80075C34 8FB80480 */  lw         $t8, 0x480($sp)
/* 76838 80075C38 13000003 */  beqz       $t8, .L80075C48
/* 7683C 80075C3C 00000000 */   nop
/* 76840 80075C40 10000018 */  b          .L80075CA4
/* 76844 80075C44 03001025 */   or        $v0, $t8, $zero
.L80075C48:
/* 76848 80075C48 93AD0033 */  lbu        $t5, 0x33($sp)
/* 7684C 80075C4C 8FAE0488 */  lw         $t6, 0x488($sp)
/* 76850 80075C50 25B90001 */  addiu      $t9, $t5, 0x1
/* 76854 80075C54 A3B90033 */  sb         $t9, 0x33($sp)
/* 76858 80075C58 91C90064 */  lbu        $t1, 0x64($t6)
/* 7685C 80075C5C 332B00FF */  andi       $t3, $t9, 0xFF
/* 76860 80075C60 0169082A */  slt        $at, $t3, $t1
/* 76864 80075C64 1420FF77 */  bnez       $at, .L80075A44
/* 76868 80075C68 00000000 */   nop
.L80075C6C:
/* 7686C 80075C6C 8FAC0034 */  lw         $t4, 0x34($sp)
/* 76870 80075C70 11800006 */  beqz       $t4, .L80075C8C
/* 76874 80075C74 00000000 */   nop
/* 76878 80075C78 8FAA0488 */  lw         $t2, 0x488($sp)
/* 7687C 80075C7C 8D480000 */  lw         $t0, 0x0($t2)
/* 76880 80075C80 350F0002 */  ori        $t7, $t0, 0x2
/* 76884 80075C84 10000006 */  b          .L80075CA0
/* 76888 80075C88 AD4F0000 */   sw        $t7, 0x0($t2)
.L80075C8C:
/* 7688C 80075C8C 8FB80488 */  lw         $t8, 0x488($sp)
/* 76890 80075C90 2401FFFD */  addiu      $at, $zero, -0x3
/* 76894 80075C94 8F0D0000 */  lw         $t5, 0x0($t8)
/* 76898 80075C98 01A1C824 */  and        $t9, $t5, $at
/* 7689C 80075C9C AF190000 */  sw         $t9, 0x0($t8)
.L80075CA0:
/* 768A0 80075CA0 00001025 */  or         $v0, $zero, $zero
.L80075CA4:
/* 768A4 80075CA4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 768A8 80075CA8 27BD0488 */  addiu      $sp, $sp, 0x488
/* 768AC 80075CAC 03E00008 */  jr         $ra
/* 768B0 80075CB0 00000000 */   nop

glabel func_80075CB4
/* 768B4 80075CB4 27BDFED0 */  addiu      $sp, $sp, -0x130
/* 768B8 80075CB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 768BC 80075CBC AFA40130 */  sw         $a0, 0x130($sp)
/* 768C0 80075CC0 AFA50134 */  sw         $a1, 0x134($sp)
/* 768C4 80075CC4 AFA0012C */  sw         $zero, 0x12C($sp)
.L80075CC8:
/* 768C8 80075CC8 8FAE0134 */  lw         $t6, 0x134($sp)
/* 768CC 80075CCC 8FAF012C */  lw         $t7, 0x12C($sp)
/* 768D0 80075CD0 01CFC021 */  addu       $t8, $t6, $t7
/* 768D4 80075CD4 A3000101 */  sb         $zero, 0x101($t8)
/* 768D8 80075CD8 8FB9012C */  lw         $t9, 0x12C($sp)
/* 768DC 80075CDC 27280001 */  addiu      $t0, $t9, 0x1
/* 768E0 80075CE0 29010100 */  slti       $at, $t0, 0x100
/* 768E4 80075CE4 1420FFF8 */  bnez       $at, .L80075CC8
/* 768E8 80075CE8 AFA8012C */   sw        $t0, 0x12C($sp)
/* 768EC 80075CEC 8FAA0134 */  lw         $t2, 0x134($sp)
/* 768F0 80075CF0 240900FF */  addiu      $t1, $zero, 0xFF
/* 768F4 80075CF4 A1490100 */  sb         $t1, 0x100($t2)
/* 768F8 80075CF8 8FAB0130 */  lw         $t3, 0x130($sp)
/* 768FC 80075CFC A3A00123 */  sb         $zero, 0x123($sp)
/* 76900 80075D00 916C0064 */  lbu        $t4, 0x64($t3)
/* 76904 80075D04 19800053 */  blez       $t4, .L80075E54
/* 76908 80075D08 00000000 */   nop
.L80075D0C:
/* 7690C 80075D0C 93AD0123 */  lbu        $t5, 0x123($sp)
/* 76910 80075D10 19A00004 */  blez       $t5, .L80075D24
/* 76914 80075D14 00000000 */   nop
/* 76918 80075D18 240E0001 */  addiu      $t6, $zero, 0x1
/* 7691C 80075D1C 10000004 */  b          .L80075D30
/* 76920 80075D20 AFAE0124 */   sw        $t6, 0x124($sp)
.L80075D24:
/* 76924 80075D24 8FAF0130 */  lw         $t7, 0x130($sp)
/* 76928 80075D28 8DF80060 */  lw         $t8, 0x60($t7)
/* 7692C 80075D2C AFB80124 */  sw         $t8, 0x124($sp)
.L80075D30:
/* 76930 80075D30 8FA40130 */  lw         $a0, 0x130($sp)
/* 76934 80075D34 27A50020 */  addiu      $a1, $sp, 0x20
/* 76938 80075D38 00003025 */  or         $a2, $zero, $zero
/* 7693C 80075D3C 0C01D3BF */  jal        func_80074EFC
/* 76940 80075D40 93A70123 */   lbu       $a3, 0x123($sp)
/* 76944 80075D44 AFA2001C */  sw         $v0, 0x1C($sp)
/* 76948 80075D48 8FB9001C */  lw         $t9, 0x1C($sp)
/* 7694C 80075D4C 13200005 */  beqz       $t9, .L80075D64
/* 76950 80075D50 24010003 */   addiu     $at, $zero, 0x3
/* 76954 80075D54 13210003 */  beq        $t9, $at, .L80075D64
/* 76958 80075D58 00000000 */   nop
/* 7695C 80075D5C 1000003E */  b          .L80075E58
/* 76960 80075D60 03201025 */   or        $v0, $t9, $zero
.L80075D64:
/* 76964 80075D64 8FA80124 */  lw         $t0, 0x124($sp)
/* 76968 80075D68 29010080 */  slti       $at, $t0, 0x80
/* 7696C 80075D6C 10200030 */  beqz       $at, .L80075E30
/* 76970 80075D70 AFA8012C */   sw        $t0, 0x12C($sp)
.L80075D74:
/* 76974 80075D74 8FAA012C */  lw         $t2, 0x12C($sp)
/* 76978 80075D78 27AC0020 */  addiu      $t4, $sp, 0x20
/* 7697C 80075D7C 27A90120 */  addiu      $t1, $sp, 0x120
/* 76980 80075D80 000A5840 */  sll        $t3, $t2, 1
/* 76984 80075D84 016C6821 */  addu       $t5, $t3, $t4
/* 76988 80075D88 95A10000 */  lhu        $at, 0x0($t5)
/* 7698C 80075D8C A5210000 */  sh         $at, 0x0($t1)
/* 76990 80075D90 8FB90130 */  lw         $t9, 0x130($sp)
/* 76994 80075D94 97B80120 */  lhu        $t8, 0x120($sp)
/* 76998 80075D98 8F280060 */  lw         $t0, 0x60($t9)
/* 7699C 80075D9C 0308082A */  slt        $at, $t8, $t0
/* 769A0 80075DA0 1420001E */  bnez       $at, .L80075E1C
/* 769A4 80075DA4 00000000 */   nop
/* 769A8 80075DA8 93AA0120 */  lbu        $t2, 0x120($sp)
/* 769AC 80075DAC 93AB0123 */  lbu        $t3, 0x123($sp)
/* 769B0 80075DB0 114B001A */  beq        $t2, $t3, .L80075E1C
/* 769B4 80075DB4 00000000 */   nop
/* 769B8 80075DB8 93AC0121 */  lbu        $t4, 0x121($sp)
/* 769BC 80075DBC 8FB90134 */  lw         $t9, 0x134($sp)
/* 769C0 80075DC0 05810003 */  bgez       $t4, .L80075DD0
/* 769C4 80075DC4 000C7083 */   sra       $t6, $t4, 2
/* 769C8 80075DC8 25810003 */  addiu      $at, $t4, 0x3
/* 769CC 80075DCC 00017083 */  sra        $t6, $at, 2
.L80075DD0:
/* 769D0 80075DD0 05410004 */  bgez       $t2, .L80075DE4
/* 769D4 80075DD4 31490007 */   andi      $t1, $t2, 0x7
/* 769D8 80075DD8 11200002 */  beqz       $t1, .L80075DE4
/* 769DC 80075DDC 00000000 */   nop
/* 769E0 80075DE0 2529FFF8 */  addiu      $t1, $t1, -0x8
.L80075DE4:
/* 769E4 80075DE4 00096940 */  sll        $t5, $t1, 5
/* 769E8 80075DE8 01CD7821 */  addu       $t7, $t6, $t5
/* 769EC 80075DEC AFAF0128 */  sw         $t7, 0x128($sp)
/* 769F0 80075DF0 032FC021 */  addu       $t8, $t9, $t7
/* 769F4 80075DF4 93080101 */  lbu        $t0, 0x101($t8)
/* 769F8 80075DF8 05610004 */  bgez       $t3, .L80075E0C
/* 769FC 80075DFC 316C0007 */   andi      $t4, $t3, 0x7
/* 76A00 80075E00 11800002 */  beqz       $t4, .L80075E0C
/* 76A04 80075E04 00000000 */   nop
/* 76A08 80075E08 258CFFF8 */  addiu      $t4, $t4, -0x8
.L80075E0C:
/* 76A0C 80075E0C 240A0001 */  addiu      $t2, $zero, 0x1
/* 76A10 80075E10 018A4804 */  sllv       $t1, $t2, $t4
/* 76A14 80075E14 01097025 */  or         $t6, $t0, $t1
/* 76A18 80075E18 A30E0101 */  sb         $t6, 0x101($t8)
.L80075E1C:
/* 76A1C 80075E1C 8FAD012C */  lw         $t5, 0x12C($sp)
/* 76A20 80075E20 25B90001 */  addiu      $t9, $t5, 0x1
/* 76A24 80075E24 2B210080 */  slti       $at, $t9, 0x80
/* 76A28 80075E28 1420FFD2 */  bnez       $at, .L80075D74
/* 76A2C 80075E2C AFB9012C */   sw        $t9, 0x12C($sp)
.L80075E30:
/* 76A30 80075E30 93AF0123 */  lbu        $t7, 0x123($sp)
/* 76A34 80075E34 8FAC0130 */  lw         $t4, 0x130($sp)
/* 76A38 80075E38 25EB0001 */  addiu      $t3, $t7, 0x1
/* 76A3C 80075E3C A3AB0123 */  sb         $t3, 0x123($sp)
/* 76A40 80075E40 91880064 */  lbu        $t0, 0x64($t4)
/* 76A44 80075E44 316A00FF */  andi       $t2, $t3, 0xFF
/* 76A48 80075E48 0148082A */  slt        $at, $t2, $t0
/* 76A4C 80075E4C 1420FFAF */  bnez       $at, .L80075D0C
/* 76A50 80075E50 00000000 */   nop
.L80075E54:
/* 76A54 80075E54 00001025 */  or         $v0, $zero, $zero
.L80075E58:
/* 76A58 80075E58 8FBF0014 */  lw         $ra, 0x14($sp)
/* 76A5C 80075E5C 27BD0130 */  addiu      $sp, $sp, 0x130
/* 76A60 80075E60 03E00008 */  jr         $ra
/* 76A64 80075E64 00000000 */   nop

glabel func_80075E68
/* 76A68 80075E68 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 76A6C 80075E6C AFA50034 */  sw         $a1, 0x34($sp)
/* 76A70 80075E70 93B80034 */  lbu        $t8, 0x34($sp)
/* 76A74 80075E74 93AE0035 */  lbu        $t6, 0x35($sp)
/* 76A78 80075E78 AFA40030 */  sw         $a0, 0x30($sp)
/* 76A7C 80075E7C 8FAA0030 */  lw         $t2, 0x30($sp)
/* 76A80 80075E80 AFBF0014 */  sw         $ra, 0x14($sp)
/* 76A84 80075E84 AFA60038 */  sw         $a2, 0x38($sp)
/* 76A88 80075E88 AFA00024 */  sw         $zero, 0x24($sp)
/* 76A8C 80075E8C AFA00018 */  sw         $zero, 0x18($sp)
/* 76A90 80075E90 05C10003 */  bgez       $t6, .L80075EA0
/* 76A94 80075E94 000E7883 */   sra       $t7, $t6, 2
/* 76A98 80075E98 25C10003 */  addiu      $at, $t6, 0x3
/* 76A9C 80075E9C 00017883 */  sra        $t7, $at, 2
.L80075EA0:
/* 76AA0 80075EA0 07010004 */  bgez       $t8, .L80075EB4
/* 76AA4 80075EA4 33190007 */   andi      $t9, $t8, 0x7
/* 76AA8 80075EA8 13200002 */  beqz       $t9, .L80075EB4
/* 76AAC 80075EAC 00000000 */   nop
/* 76AB0 80075EB0 2739FFF8 */  addiu      $t9, $t9, -0x8
.L80075EB4:
/* 76AB4 80075EB4 00194140 */  sll        $t0, $t9, 5
/* 76AB8 80075EB8 01E84821 */  addu       $t1, $t7, $t0
/* 76ABC 80075EBC AFA90028 */  sw         $t1, 0x28($sp)
/* 76AC0 80075EC0 A3A00023 */  sb         $zero, 0x23($sp)
/* 76AC4 80075EC4 914B0064 */  lbu        $t3, 0x64($t2)
/* 76AC8 80075EC8 1960005C */  blez       $t3, .L8007603C
/* 76ACC 80075ECC 00000000 */   nop
.L80075ED0:
/* 76AD0 80075ED0 93AC0023 */  lbu        $t4, 0x23($sp)
/* 76AD4 80075ED4 19800004 */  blez       $t4, .L80075EE8
/* 76AD8 80075ED8 00000000 */   nop
/* 76ADC 80075EDC 240D0001 */  addiu      $t5, $zero, 0x1
/* 76AE0 80075EE0 10000004 */  b          .L80075EF4
/* 76AE4 80075EE4 AFAD001C */   sw        $t5, 0x1C($sp)
.L80075EE8:
/* 76AE8 80075EE8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 76AEC 80075EEC 8DD80060 */  lw         $t8, 0x60($t6)
/* 76AF0 80075EF0 AFB8001C */  sw         $t8, 0x1C($sp)
.L80075EF4:
/* 76AF4 80075EF4 93B90023 */  lbu        $t9, 0x23($sp)
/* 76AF8 80075EF8 93AF0034 */  lbu        $t7, 0x34($sp)
/* 76AFC 80075EFC 132F000F */  beq        $t9, $t7, .L80075F3C
/* 76B00 80075F00 00000000 */   nop
/* 76B04 80075F04 8FA80038 */  lw         $t0, 0x38($sp)
/* 76B08 80075F08 8FA90028 */  lw         $t1, 0x28($sp)
/* 76B0C 80075F0C 240D0001 */  addiu      $t5, $zero, 0x1
/* 76B10 80075F10 01095021 */  addu       $t2, $t0, $t1
/* 76B14 80075F14 914B0101 */  lbu        $t3, 0x101($t2)
/* 76B18 80075F18 07210004 */  bgez       $t9, .L80075F2C
/* 76B1C 80075F1C 332C0007 */   andi      $t4, $t9, 0x7
/* 76B20 80075F20 11800002 */  beqz       $t4, .L80075F2C
/* 76B24 80075F24 00000000 */   nop
/* 76B28 80075F28 258CFFF8 */  addiu      $t4, $t4, -0x8
.L80075F2C:
/* 76B2C 80075F2C 018D7004 */  sllv       $t6, $t5, $t4
/* 76B30 80075F30 016EC024 */  and        $t8, $t3, $t6
/* 76B34 80075F34 13000038 */  beqz       $t8, .L80076018
/* 76B38 80075F38 00000000 */   nop
.L80075F3C:
/* 76B3C 80075F3C 8FA80038 */  lw         $t0, 0x38($sp)
/* 76B40 80075F40 93AF0023 */  lbu        $t7, 0x23($sp)
/* 76B44 80075F44 91090100 */  lbu        $t1, 0x100($t0)
/* 76B48 80075F48 11E90011 */  beq        $t7, $t1, .L80075F90
/* 76B4C 80075F4C 00000000 */   nop
/* 76B50 80075F50 8FA40030 */  lw         $a0, 0x30($sp)
/* 76B54 80075F54 01002825 */  or         $a1, $t0, $zero
/* 76B58 80075F58 00003025 */  or         $a2, $zero, $zero
/* 76B5C 80075F5C 0C01D3BF */  jal        func_80074EFC
/* 76B60 80075F60 01E03825 */   or        $a3, $t7, $zero
/* 76B64 80075F64 AFA20018 */  sw         $v0, 0x18($sp)
/* 76B68 80075F68 8FAA0018 */  lw         $t2, 0x18($sp)
/* 76B6C 80075F6C 11400005 */  beqz       $t2, .L80075F84
/* 76B70 80075F70 24010003 */   addiu     $at, $zero, 0x3
/* 76B74 80075F74 11410003 */  beq        $t2, $at, .L80075F84
/* 76B78 80075F78 00000000 */   nop
/* 76B7C 80075F7C 10000030 */  b          .L80076040
/* 76B80 80075F80 01401025 */   or        $v0, $t2, $zero
.L80075F84:
/* 76B84 80075F84 93B90023 */  lbu        $t9, 0x23($sp)
/* 76B88 80075F88 8FAD0038 */  lw         $t5, 0x38($sp)
/* 76B8C 80075F8C A1B90100 */  sb         $t9, 0x100($t5)
.L80075F90:
/* 76B90 80075F90 8FAB0024 */  lw         $t3, 0x24($sp)
/* 76B94 80075F94 8FAC001C */  lw         $t4, 0x1C($sp)
/* 76B98 80075F98 29610002 */  slti       $at, $t3, 0x2
/* 76B9C 80075F9C 10200018 */  beqz       $at, .L80076000
/* 76BA0 80075FA0 AFAC002C */   sw        $t4, 0x2C($sp)
/* 76BA4 80075FA4 29810080 */  slti       $at, $t4, 0x80
/* 76BA8 80075FA8 10200015 */  beqz       $at, .L80076000
/* 76BAC 80075FAC 00000000 */   nop
.L80075FB0:
/* 76BB0 80075FB0 8FB8002C */  lw         $t8, 0x2C($sp)
/* 76BB4 80075FB4 8FAE0038 */  lw         $t6, 0x38($sp)
/* 76BB8 80075FB8 97AA0034 */  lhu        $t2, 0x34($sp)
/* 76BBC 80075FBC 00184840 */  sll        $t1, $t8, 1
/* 76BC0 80075FC0 01C94021 */  addu       $t0, $t6, $t1
/* 76BC4 80075FC4 950F0000 */  lhu        $t7, 0x0($t0)
/* 76BC8 80075FC8 15EA0004 */  bne        $t7, $t2, .L80075FDC
/* 76BCC 80075FCC 00000000 */   nop
/* 76BD0 80075FD0 8FB90024 */  lw         $t9, 0x24($sp)
/* 76BD4 80075FD4 272D0001 */  addiu      $t5, $t9, 0x1
/* 76BD8 80075FD8 AFAD0024 */  sw         $t5, 0x24($sp)
.L80075FDC:
/* 76BDC 80075FDC 8FAB002C */  lw         $t3, 0x2C($sp)
/* 76BE0 80075FE0 8FB80024 */  lw         $t8, 0x24($sp)
/* 76BE4 80075FE4 256C0001 */  addiu      $t4, $t3, 0x1
/* 76BE8 80075FE8 2B010002 */  slti       $at, $t8, 0x2
/* 76BEC 80075FEC 10200004 */  beqz       $at, .L80076000
/* 76BF0 80075FF0 AFAC002C */   sw        $t4, 0x2C($sp)
/* 76BF4 80075FF4 29810080 */  slti       $at, $t4, 0x80
/* 76BF8 80075FF8 1420FFED */  bnez       $at, .L80075FB0
/* 76BFC 80075FFC 00000000 */   nop
.L80076000:
/* 76C00 80076000 8FAE0024 */  lw         $t6, 0x24($sp)
/* 76C04 80076004 29C10002 */  slti       $at, $t6, 0x2
/* 76C08 80076008 14200003 */  bnez       $at, .L80076018
/* 76C0C 8007600C 00000000 */   nop
/* 76C10 80076010 1000000B */  b          .L80076040
/* 76C14 80076014 24020002 */   addiu     $v0, $zero, 0x2
.L80076018:
/* 76C18 80076018 93A90023 */  lbu        $t1, 0x23($sp)
/* 76C1C 8007601C 8FAA0030 */  lw         $t2, 0x30($sp)
/* 76C20 80076020 25280001 */  addiu      $t0, $t1, 0x1
/* 76C24 80076024 A3A80023 */  sb         $t0, 0x23($sp)
/* 76C28 80076028 91590064 */  lbu        $t9, 0x64($t2)
/* 76C2C 8007602C 310F00FF */  andi       $t7, $t0, 0xFF
/* 76C30 80076030 01F9082A */  slt        $at, $t7, $t9
/* 76C34 80076034 1420FFA6 */  bnez       $at, .L80075ED0
/* 76C38 80076038 00000000 */   nop
.L8007603C:
/* 76C3C 8007603C 8FA20024 */  lw         $v0, 0x24($sp)
.L80076040:
/* 76C40 80076040 8FBF0014 */  lw         $ra, 0x14($sp)
/* 76C44 80076044 27BD0030 */  addiu      $sp, $sp, 0x30
/* 76C48 80076048 03E00008 */  jr         $ra
/* 76C4C 8007604C 00000000 */   nop

glabel func_80076050
/* 76C50 80076050 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 76C54 80076054 AFA50020 */  sw         $a1, 0x20($sp)
/* 76C58 80076058 AFBF0014 */  sw         $ra, 0x14($sp)
/* 76C5C 8007605C 30AE00FF */  andi       $t6, $a1, 0xFF
/* 76C60 80076060 29C10026 */  slti       $at, $t6, 0x26
/* 76C64 80076064 01C02825 */  or         $a1, $t6, $zero
/* 76C68 80076068 AE00000C */  sw         $zero, 0xC($s0)
/* 76C6C 8007606C AE000010 */  sw         $zero, 0x10($s0)
/* 76C70 80076070 AE000014 */  sw         $zero, 0x14($s0)
/* 76C74 80076074 AE000018 */  sw         $zero, 0x18($s0)
/* 76C78 80076078 AE00001C */  sw         $zero, 0x1C($s0)
/* 76C7C 8007607C AE000020 */  sw         $zero, 0x20($s0)
/* 76C80 80076080 1420000A */  bnez       $at, .L800760AC
/* 76C84 80076084 01C01825 */   or        $v1, $t6, $zero
/* 76C88 80076088 25CFFFBB */  addiu      $t7, $t6, -0x45
/* 76C8C 8007608C 2DE10034 */  sltiu      $at, $t7, 0x34
/* 76C90 80076090 10200181 */  beqz       $at, L80076698
/* 76C94 80076094 000F7880 */   sll       $t7, $t7, 2
/* 76C98 80076098 3C01800A */  lui        $at, %hi(jtbl_80098E94_main)
/* 76C9C 8007609C 002F0821 */  addu       $at, $at, $t7
/* 76CA0 800760A0 8C2F8E94 */  lw         $t7, %lo(jtbl_80098E94_main)($at)
/* 76CA4 800760A4 01E00008 */  jr         $t7
/* 76CA8 800760A8 00000000 */   nop
.L800760AC:
/* 76CAC 800760AC 24010025 */  addiu      $at, $zero, 0x25
/* 76CB0 800760B0 50610172 */  beql       $v1, $at, .L8007667C
/* 76CB4 800760B4 8E18000C */   lw        $t8, 0xC($s0)
/* 76CB8 800760B8 10000178 */  b          .L8007669C
/* 76CBC 800760BC 8E0E000C */   lw        $t6, 0xC($s0)
glabel L800760C0
/* 76CC0 800760C0 8CD80000 */  lw         $t8, 0x0($a2)
/* 76CC4 800760C4 2401FFFC */  addiu      $at, $zero, -0x4
/* 76CC8 800760C8 27190003 */  addiu      $t9, $t8, 0x3
/* 76CCC 800760CC 03217024 */  and        $t6, $t9, $at
/* 76CD0 800760D0 25CF0004 */  addiu      $t7, $t6, 0x4
/* 76CD4 800760D4 ACCF0000 */  sw         $t7, 0x0($a2)
/* 76CD8 800760D8 8E0E000C */  lw         $t6, 0xC($s0)
/* 76CDC 800760DC 8DF9FFFC */  lw         $t9, -0x4($t7)
/* 76CE0 800760E0 00EE7821 */  addu       $t7, $a3, $t6
/* 76CE4 800760E4 A1F90000 */  sb         $t9, 0x0($t7)
/* 76CE8 800760E8 8E18000C */  lw         $t8, 0xC($s0)
/* 76CEC 800760EC 270E0001 */  addiu      $t6, $t8, 0x1
/* 76CF0 800760F0 1000016F */  b          .L800766B0
/* 76CF4 800760F4 AE0E000C */   sw        $t6, 0xC($s0)
glabel L800760F8
/* 76CF8 800760F8 92020034 */  lbu        $v0, 0x34($s0)
/* 76CFC 800760FC 2401006C */  addiu      $at, $zero, 0x6C
/* 76D00 80076100 5441000D */  bnel       $v0, $at, .L80076138
/* 76D04 80076104 2401004C */   addiu     $at, $zero, 0x4C
/* 76D08 80076108 8CD90000 */  lw         $t9, 0x0($a2)
/* 76D0C 8007610C 2401FFFC */  addiu      $at, $zero, -0x4
/* 76D10 80076110 272F0003 */  addiu      $t7, $t9, 0x3
/* 76D14 80076114 01E1C024 */  and        $t8, $t7, $at
/* 76D18 80076118 270E0004 */  addiu      $t6, $t8, 0x4
/* 76D1C 8007611C ACCE0000 */  sw         $t6, 0x0($a2)
/* 76D20 80076120 8DCFFFFC */  lw         $t7, -0x4($t6)
/* 76D24 80076124 000FC7C3 */  sra        $t8, $t7, 31
/* 76D28 80076128 AE180000 */  sw         $t8, 0x0($s0)
/* 76D2C 8007612C 10000019 */  b          .L80076194
/* 76D30 80076130 AE0F0004 */   sw        $t7, 0x4($s0)
/* 76D34 80076134 2401004C */  addiu      $at, $zero, 0x4C
.L80076138:
/* 76D38 80076138 5441000D */  bnel       $v0, $at, .L80076170
/* 76D3C 8007613C 8CCF0000 */   lw        $t7, 0x0($a2)
/* 76D40 80076140 8CCE0000 */  lw         $t6, 0x0($a2)
/* 76D44 80076144 2401FFF8 */  addiu      $at, $zero, -0x8
/* 76D48 80076148 25CF0007 */  addiu      $t7, $t6, 0x7
/* 76D4C 8007614C 01E1C024 */  and        $t8, $t7, $at
/* 76D50 80076150 27190008 */  addiu      $t9, $t8, 0x8
/* 76D54 80076154 ACD90000 */  sw         $t9, 0x0($a2)
/* 76D58 80076158 8F38FFF8 */  lw         $t8, -0x8($t9)
/* 76D5C 8007615C 8F39FFFC */  lw         $t9, -0x4($t9)
/* 76D60 80076160 AE180000 */  sw         $t8, 0x0($s0)
/* 76D64 80076164 1000000B */  b          .L80076194
/* 76D68 80076168 AE190004 */   sw        $t9, 0x4($s0)
/* 76D6C 8007616C 8CCF0000 */  lw         $t7, 0x0($a2)
.L80076170:
/* 76D70 80076170 2401FFFC */  addiu      $at, $zero, -0x4
/* 76D74 80076174 25EE0003 */  addiu      $t6, $t7, 0x3
/* 76D78 80076178 01C1C024 */  and        $t8, $t6, $at
/* 76D7C 8007617C 27190004 */  addiu      $t9, $t8, 0x4
/* 76D80 80076180 ACD90000 */  sw         $t9, 0x0($a2)
/* 76D84 80076184 8F2EFFFC */  lw         $t6, -0x4($t9)
/* 76D88 80076188 000EC7C3 */  sra        $t8, $t6, 31
/* 76D8C 8007618C AE180000 */  sw         $t8, 0x0($s0)
/* 76D90 80076190 AE0E0004 */  sw         $t6, 0x4($s0)
.L80076194:
/* 76D94 80076194 920F0034 */  lbu        $t7, 0x34($s0)
/* 76D98 80076198 24010068 */  addiu      $at, $zero, 0x68
/* 76D9C 8007619C 55E10008 */  bnel       $t7, $at, .L800761C0
/* 76DA0 800761A0 8E0E0000 */   lw        $t6, 0x0($s0)
/* 76DA4 800761A4 8E0F0004 */  lw         $t7, 0x4($s0)
/* 76DA8 800761A8 000FCC00 */  sll        $t9, $t7, 16
/* 76DAC 800761AC 00197403 */  sra        $t6, $t9, 16
/* 76DB0 800761B0 000EC7C3 */  sra        $t8, $t6, 31
/* 76DB4 800761B4 AE180000 */  sw         $t8, 0x0($s0)
/* 76DB8 800761B8 AE0E0004 */  sw         $t6, 0x4($s0)
/* 76DBC 800761BC 8E0E0000 */  lw         $t6, 0x0($s0)
.L800761C0:
/* 76DC0 800761C0 5DC0000E */  bgtzl      $t6, .L800761FC
/* 76DC4 800761C4 8E020030 */   lw        $v0, 0x30($s0)
/* 76DC8 800761C8 05C20004 */  bltzl      $t6, .L800761DC
/* 76DCC 800761CC 8E19000C */   lw        $t9, 0xC($s0)
/* 76DD0 800761D0 1000000A */  b          .L800761FC
/* 76DD4 800761D4 8E020030 */   lw        $v0, 0x30($s0)
/* 76DD8 800761D8 8E19000C */  lw         $t9, 0xC($s0)
.L800761DC:
/* 76DDC 800761DC 2418002D */  addiu      $t8, $zero, 0x2D
/* 76DE0 800761E0 00F97021 */  addu       $t6, $a3, $t9
/* 76DE4 800761E4 A1D80000 */  sb         $t8, 0x0($t6)
/* 76DE8 800761E8 8E0F000C */  lw         $t7, 0xC($s0)
/* 76DEC 800761EC 25F90001 */  addiu      $t9, $t7, 0x1
/* 76DF0 800761F0 10000016 */  b          .L8007624C
/* 76DF4 800761F4 AE19000C */   sw        $t9, 0xC($s0)
/* 76DF8 800761F8 8E020030 */  lw         $v0, 0x30($s0)
.L800761FC:
/* 76DFC 800761FC 30580002 */  andi       $t8, $v0, 0x2
/* 76E00 80076200 13000009 */  beqz       $t8, .L80076228
/* 76E04 80076204 304E0001 */   andi      $t6, $v0, 0x1
/* 76E08 80076208 8E0F000C */  lw         $t7, 0xC($s0)
/* 76E0C 8007620C 240E002B */  addiu      $t6, $zero, 0x2B
/* 76E10 80076210 00EFC821 */  addu       $t9, $a3, $t7
/* 76E14 80076214 A32E0000 */  sb         $t6, 0x0($t9)
/* 76E18 80076218 8E18000C */  lw         $t8, 0xC($s0)
/* 76E1C 8007621C 270F0001 */  addiu      $t7, $t8, 0x1
/* 76E20 80076220 1000000A */  b          .L8007624C
/* 76E24 80076224 AE0F000C */   sw        $t7, 0xC($s0)
.L80076228:
/* 76E28 80076228 51C00009 */  beql       $t6, $zero, .L80076250
/* 76E2C 8007622C 8E19000C */   lw        $t9, 0xC($s0)
/* 76E30 80076230 8E18000C */  lw         $t8, 0xC($s0)
/* 76E34 80076234 24190020 */  addiu      $t9, $zero, 0x20
/* 76E38 80076238 00F87821 */  addu       $t7, $a3, $t8
/* 76E3C 8007623C A1F90000 */  sb         $t9, 0x0($t7)
/* 76E40 80076240 8E0E000C */  lw         $t6, 0xC($s0)
/* 76E44 80076244 25D80001 */  addiu      $t8, $t6, 0x1
/* 76E48 80076248 AE18000C */  sw         $t8, 0xC($s0)
.L8007624C:
/* 76E4C 8007624C 8E19000C */  lw         $t9, 0xC($s0)
.L80076250:
/* 76E50 80076250 02002025 */  or         $a0, $s0, $zero
/* 76E54 80076254 03277821 */  addu       $t7, $t9, $a3
/* 76E58 80076258 0C01EAB4 */  jal        _Litob
/* 76E5C 8007625C AE0F0008 */   sw        $t7, 0x8($s0)
/* 76E60 80076260 10000114 */  b          .L800766B4
/* 76E64 80076264 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80076268
/* 76E68 80076268 92020034 */  lbu        $v0, 0x34($s0)
/* 76E6C 8007626C 2401006C */  addiu      $at, $zero, 0x6C
/* 76E70 80076270 5441000D */  bnel       $v0, $at, .L800762A8
/* 76E74 80076274 2401004C */   addiu     $at, $zero, 0x4C
/* 76E78 80076278 8CCE0000 */  lw         $t6, 0x0($a2)
/* 76E7C 8007627C 2401FFFC */  addiu      $at, $zero, -0x4
/* 76E80 80076280 25D80003 */  addiu      $t8, $t6, 0x3
/* 76E84 80076284 0301C824 */  and        $t9, $t8, $at
/* 76E88 80076288 272F0004 */  addiu      $t7, $t9, 0x4
/* 76E8C 8007628C ACCF0000 */  sw         $t7, 0x0($a2)
/* 76E90 80076290 8DF8FFFC */  lw         $t8, -0x4($t7)
/* 76E94 80076294 001877C3 */  sra        $t6, $t8, 31
/* 76E98 80076298 AE0E0000 */  sw         $t6, 0x0($s0)
/* 76E9C 8007629C 10000019 */  b          .L80076304
/* 76EA0 800762A0 AE180004 */   sw        $t8, 0x4($s0)
/* 76EA4 800762A4 2401004C */  addiu      $at, $zero, 0x4C
.L800762A8:
/* 76EA8 800762A8 5441000D */  bnel       $v0, $at, .L800762E0
/* 76EAC 800762AC 8CCE0000 */   lw        $t6, 0x0($a2)
/* 76EB0 800762B0 8CD90000 */  lw         $t9, 0x0($a2)
/* 76EB4 800762B4 2401FFF8 */  addiu      $at, $zero, -0x8
/* 76EB8 800762B8 27380007 */  addiu      $t8, $t9, 0x7
/* 76EBC 800762BC 03017024 */  and        $t6, $t8, $at
/* 76EC0 800762C0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 76EC4 800762C4 ACCF0000 */  sw         $t7, 0x0($a2)
/* 76EC8 800762C8 8DF9FFFC */  lw         $t9, -0x4($t7)
/* 76ECC 800762CC 8DF8FFF8 */  lw         $t8, -0x8($t7)
/* 76ED0 800762D0 AE190004 */  sw         $t9, 0x4($s0)
/* 76ED4 800762D4 1000000B */  b          .L80076304
/* 76ED8 800762D8 AE180000 */   sw        $t8, 0x0($s0)
/* 76EDC 800762DC 8CCE0000 */  lw         $t6, 0x0($a2)
.L800762E0:
/* 76EE0 800762E0 2401FFFC */  addiu      $at, $zero, -0x4
/* 76EE4 800762E4 25CF0003 */  addiu      $t7, $t6, 0x3
/* 76EE8 800762E8 01E1C024 */  and        $t8, $t7, $at
/* 76EEC 800762EC 27190004 */  addiu      $t9, $t8, 0x4
/* 76EF0 800762F0 ACD90000 */  sw         $t9, 0x0($a2)
/* 76EF4 800762F4 8F2FFFFC */  lw         $t7, -0x4($t9)
/* 76EF8 800762F8 000FC7C3 */  sra        $t8, $t7, 31
/* 76EFC 800762FC AE180000 */  sw         $t8, 0x0($s0)
/* 76F00 80076300 AE0F0004 */  sw         $t7, 0x4($s0)
.L80076304:
/* 76F04 80076304 92020034 */  lbu        $v0, 0x34($s0)
/* 76F08 80076308 24010068 */  addiu      $at, $zero, 0x68
/* 76F0C 8007630C 14410007 */  bne        $v0, $at, .L8007632C
/* 76F10 80076310 00000000 */   nop
/* 76F14 80076314 8E0F0004 */  lw         $t7, 0x4($s0)
/* 76F18 80076318 240E0000 */  addiu      $t6, $zero, 0x0
/* 76F1C 8007631C AE0E0000 */  sw         $t6, 0x0($s0)
/* 76F20 80076320 31F9FFFF */  andi       $t9, $t7, 0xFFFF
/* 76F24 80076324 10000007 */  b          .L80076344
/* 76F28 80076328 AE190004 */   sw        $t9, 0x4($s0)
.L8007632C:
/* 76F2C 8007632C 54400006 */  bnel       $v0, $zero, .L80076348
/* 76F30 80076330 8E0F0030 */   lw        $t7, 0x30($s0)
/* 76F34 80076334 8E190004 */  lw         $t9, 0x4($s0)
/* 76F38 80076338 24180000 */  addiu      $t8, $zero, 0x0
/* 76F3C 8007633C AE180000 */  sw         $t8, 0x0($s0)
/* 76F40 80076340 AE190004 */  sw         $t9, 0x4($s0)
.L80076344:
/* 76F44 80076344 8E0F0030 */  lw         $t7, 0x30($s0)
.L80076348:
/* 76F48 80076348 31EE0008 */  andi       $t6, $t7, 0x8
/* 76F4C 8007634C 51C00014 */  beql       $t6, $zero, .L800763A0
/* 76F50 80076350 8E18000C */   lw        $t8, 0xC($s0)
/* 76F54 80076354 8E19000C */  lw         $t9, 0xC($s0)
/* 76F58 80076358 24180030 */  addiu      $t8, $zero, 0x30
/* 76F5C 8007635C 24010078 */  addiu      $at, $zero, 0x78
/* 76F60 80076360 00F97821 */  addu       $t7, $a3, $t9
/* 76F64 80076364 A1F80000 */  sb         $t8, 0x0($t7)
/* 76F68 80076368 8E0E000C */  lw         $t6, 0xC($s0)
/* 76F6C 8007636C 25D90001 */  addiu      $t9, $t6, 0x1
/* 76F70 80076370 10610004 */  beq        $v1, $at, .L80076384
/* 76F74 80076374 AE19000C */   sw        $t9, 0xC($s0)
/* 76F78 80076378 24010058 */  addiu      $at, $zero, 0x58
/* 76F7C 8007637C 54610008 */  bnel       $v1, $at, .L800763A0
/* 76F80 80076380 8E18000C */   lw        $t8, 0xC($s0)
.L80076384:
/* 76F84 80076384 8E18000C */  lw         $t8, 0xC($s0)
/* 76F88 80076388 00F87821 */  addu       $t7, $a3, $t8
/* 76F8C 8007638C A1E50000 */  sb         $a1, 0x0($t7)
/* 76F90 80076390 8E0E000C */  lw         $t6, 0xC($s0)
/* 76F94 80076394 25D90001 */  addiu      $t9, $t6, 0x1
/* 76F98 80076398 AE19000C */  sw         $t9, 0xC($s0)
/* 76F9C 8007639C 8E18000C */  lw         $t8, 0xC($s0)
.L800763A0:
/* 76FA0 800763A0 02002025 */  or         $a0, $s0, $zero
/* 76FA4 800763A4 03077821 */  addu       $t7, $t8, $a3
/* 76FA8 800763A8 0C01EAB4 */  jal        _Litob
/* 76FAC 800763AC AE0F0008 */   sw        $t7, 0x8($s0)
/* 76FB0 800763B0 100000C0 */  b          .L800766B4
/* 76FB4 800763B4 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L800763B8
/* 76FB8 800763B8 920E0034 */  lbu        $t6, 0x34($s0)
/* 76FBC 800763BC 2401004C */  addiu      $at, $zero, 0x4C
/* 76FC0 800763C0 55C10019 */  bnel       $t6, $at, .L80076428
/* 76FC4 800763C4 8CC20000 */   lw        $v0, 0x0($a2)
/* 76FC8 800763C8 8CC20000 */  lw         $v0, 0x0($a2)
/* 76FCC 800763CC 30590001 */  andi       $t9, $v0, 0x1
/* 76FD0 800763D0 13200005 */  beqz       $t9, .L800763E8
/* 76FD4 800763D4 00401825 */   or        $v1, $v0, $zero
/* 76FD8 800763D8 24780007 */  addiu      $t8, $v1, 0x7
/* 76FDC 800763DC ACD80000 */  sw         $t8, 0x0($a2)
/* 76FE0 800763E0 1000000D */  b          .L80076418
/* 76FE4 800763E4 2702FFEA */   addiu     $v0, $t8, -0x16
.L800763E8:
/* 76FE8 800763E8 306F0002 */  andi       $t7, $v1, 0x2
/* 76FEC 800763EC 11E00005 */  beqz       $t7, .L80076404
/* 76FF0 800763F0 24590007 */   addiu     $t9, $v0, 0x7
/* 76FF4 800763F4 246E000A */  addiu      $t6, $v1, 0xA
/* 76FF8 800763F8 ACCE0000 */  sw         $t6, 0x0($a2)
/* 76FFC 800763FC 10000005 */  b          .L80076414
/* 77000 80076400 25C4FFD8 */   addiu     $a0, $t6, -0x28
.L80076404:
/* 77004 80076404 2401FFF8 */  addiu      $at, $zero, -0x8
/* 77008 80076408 0321C024 */  and        $t8, $t9, $at
/* 7700C 8007640C 27040008 */  addiu      $a0, $t8, 0x8
/* 77010 80076410 ACC40000 */  sw         $a0, 0x0($a2)
.L80076414:
/* 77014 80076414 00801025 */  or         $v0, $a0, $zero
.L80076418:
/* 77018 80076418 D444FFF8 */  ldc1       $f4, -0x8($v0)
/* 7701C 8007641C 10000017 */  b          .L8007647C
/* 77020 80076420 F6040000 */   sdc1      $f4, 0x0($s0)
/* 77024 80076424 8CC20000 */  lw         $v0, 0x0($a2)
.L80076428:
/* 77028 80076428 304E0001 */  andi       $t6, $v0, 0x1
/* 7702C 8007642C 11C00005 */  beqz       $t6, .L80076444
/* 77030 80076430 00401825 */   or        $v1, $v0, $zero
/* 77034 80076434 24790007 */  addiu      $t9, $v1, 0x7
/* 77038 80076438 ACD90000 */  sw         $t9, 0x0($a2)
/* 7703C 8007643C 1000000D */  b          .L80076474
/* 77040 80076440 2722FFEA */   addiu     $v0, $t9, -0x16
.L80076444:
/* 77044 80076444 30780002 */  andi       $t8, $v1, 0x2
/* 77048 80076448 13000005 */  beqz       $t8, .L80076460
/* 7704C 8007644C 244E0007 */   addiu     $t6, $v0, 0x7
/* 77050 80076450 246F000A */  addiu      $t7, $v1, 0xA
/* 77054 80076454 ACCF0000 */  sw         $t7, 0x0($a2)
/* 77058 80076458 10000005 */  b          .L80076470
/* 7705C 8007645C 25E4FFD8 */   addiu     $a0, $t7, -0x28
.L80076460:
/* 77060 80076460 2401FFF8 */  addiu      $at, $zero, -0x8
/* 77064 80076464 01C1C824 */  and        $t9, $t6, $at
/* 77068 80076468 27240008 */  addiu      $a0, $t9, 0x8
/* 7706C 8007646C ACC40000 */  sw         $a0, 0x0($a2)
.L80076470:
/* 77070 80076470 00801025 */  or         $v0, $a0, $zero
.L80076474:
/* 77074 80076474 D446FFF8 */  ldc1       $f6, -0x8($v0)
/* 77078 80076478 F6060000 */  sdc1       $f6, 0x0($s0)
.L8007647C:
/* 7707C 8007647C 960F0000 */  lhu        $t7, 0x0($s0)
/* 77080 80076480 31EE8000 */  andi       $t6, $t7, 0x8000
/* 77084 80076484 51C0000A */  beql       $t6, $zero, .L800764B0
/* 77088 80076488 8E020030 */   lw        $v0, 0x30($s0)
/* 7708C 8007648C 8E18000C */  lw         $t8, 0xC($s0)
/* 77090 80076490 2419002D */  addiu      $t9, $zero, 0x2D
/* 77094 80076494 00F87821 */  addu       $t7, $a3, $t8
/* 77098 80076498 A1F90000 */  sb         $t9, 0x0($t7)
/* 7709C 8007649C 8E0E000C */  lw         $t6, 0xC($s0)
/* 770A0 800764A0 25D80001 */  addiu      $t8, $t6, 0x1
/* 770A4 800764A4 10000016 */  b          .L80076500
/* 770A8 800764A8 AE18000C */   sw        $t8, 0xC($s0)
/* 770AC 800764AC 8E020030 */  lw         $v0, 0x30($s0)
.L800764B0:
/* 770B0 800764B0 30590002 */  andi       $t9, $v0, 0x2
/* 770B4 800764B4 13200009 */  beqz       $t9, .L800764DC
/* 770B8 800764B8 304F0001 */   andi      $t7, $v0, 0x1
/* 770BC 800764BC 8E0E000C */  lw         $t6, 0xC($s0)
/* 770C0 800764C0 240F002B */  addiu      $t7, $zero, 0x2B
/* 770C4 800764C4 00EEC021 */  addu       $t8, $a3, $t6
/* 770C8 800764C8 A30F0000 */  sb         $t7, 0x0($t8)
/* 770CC 800764CC 8E19000C */  lw         $t9, 0xC($s0)
/* 770D0 800764D0 272E0001 */  addiu      $t6, $t9, 0x1
/* 770D4 800764D4 1000000A */  b          .L80076500
/* 770D8 800764D8 AE0E000C */   sw        $t6, 0xC($s0)
.L800764DC:
/* 770DC 800764DC 51E00009 */  beql       $t7, $zero, .L80076504
/* 770E0 800764E0 8E18000C */   lw        $t8, 0xC($s0)
/* 770E4 800764E4 8E19000C */  lw         $t9, 0xC($s0)
/* 770E8 800764E8 24180020 */  addiu      $t8, $zero, 0x20
/* 770EC 800764EC 00F97021 */  addu       $t6, $a3, $t9
/* 770F0 800764F0 A1D80000 */  sb         $t8, 0x0($t6)
/* 770F4 800764F4 8E0F000C */  lw         $t7, 0xC($s0)
/* 770F8 800764F8 25F90001 */  addiu      $t9, $t7, 0x1
/* 770FC 800764FC AE19000C */  sw         $t9, 0xC($s0)
.L80076500:
/* 77100 80076500 8E18000C */  lw         $t8, 0xC($s0)
.L80076504:
/* 77104 80076504 02002025 */  or         $a0, $s0, $zero
/* 77108 80076508 03077021 */  addu       $t6, $t8, $a3
/* 7710C 8007650C 0C01ECB8 */  jal        _Ldtob
/* 77110 80076510 AE0E0008 */   sw        $t6, 0x8($s0)
/* 77114 80076514 10000067 */  b          .L800766B4
/* 77118 80076518 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8007651C
/* 7711C 8007651C 92020034 */  lbu        $v0, 0x34($s0)
/* 77120 80076520 24010068 */  addiu      $at, $zero, 0x68
/* 77124 80076524 5441000C */  bnel       $v0, $at, .L80076558
/* 77128 80076528 2401006C */   addiu     $at, $zero, 0x6C
/* 7712C 8007652C 8CCF0000 */  lw         $t7, 0x0($a2)
/* 77130 80076530 2401FFFC */  addiu      $at, $zero, -0x4
/* 77134 80076534 25F90003 */  addiu      $t9, $t7, 0x3
/* 77138 80076538 0321C024 */  and        $t8, $t9, $at
/* 7713C 8007653C 270E0004 */  addiu      $t6, $t8, 0x4
/* 77140 80076540 ACCE0000 */  sw         $t6, 0x0($a2)
/* 77144 80076544 8DD9FFFC */  lw         $t9, -0x4($t6)
/* 77148 80076548 8E0F002C */  lw         $t7, 0x2C($s0)
/* 7714C 8007654C 10000058 */  b          .L800766B0
/* 77150 80076550 A72F0000 */   sh        $t7, 0x0($t9)
/* 77154 80076554 2401006C */  addiu      $at, $zero, 0x6C
.L80076558:
/* 77158 80076558 5441000C */  bnel       $v0, $at, .L8007658C
/* 7715C 8007655C 2401004C */   addiu     $at, $zero, 0x4C
/* 77160 80076560 8CD80000 */  lw         $t8, 0x0($a2)
/* 77164 80076564 2401FFFC */  addiu      $at, $zero, -0x4
/* 77168 80076568 270E0003 */  addiu      $t6, $t8, 0x3
/* 7716C 8007656C 01C17824 */  and        $t7, $t6, $at
/* 77170 80076570 25F90004 */  addiu      $t9, $t7, 0x4
/* 77174 80076574 ACD90000 */  sw         $t9, 0x0($a2)
/* 77178 80076578 8F2EFFFC */  lw         $t6, -0x4($t9)
/* 7717C 8007657C 8E18002C */  lw         $t8, 0x2C($s0)
/* 77180 80076580 1000004B */  b          .L800766B0
/* 77184 80076584 ADD80000 */   sw        $t8, 0x0($t6)
/* 77188 80076588 2401004C */  addiu      $at, $zero, 0x4C
.L8007658C:
/* 7718C 8007658C 5441000E */  bnel       $v0, $at, .L800765C8
/* 77190 80076590 8CCF0000 */   lw        $t7, 0x0($a2)
/* 77194 80076594 8CCF0000 */  lw         $t7, 0x0($a2)
/* 77198 80076598 2401FFFC */  addiu      $at, $zero, -0x4
/* 7719C 8007659C 25F90003 */  addiu      $t9, $t7, 0x3
/* 771A0 800765A0 0321C024 */  and        $t8, $t9, $at
/* 771A4 800765A4 270E0004 */  addiu      $t6, $t8, 0x4
/* 771A8 800765A8 ACCE0000 */  sw         $t6, 0x0($a2)
/* 771AC 800765AC 8DCEFFFC */  lw         $t6, -0x4($t6)
/* 771B0 800765B0 8E0F002C */  lw         $t7, 0x2C($s0)
/* 771B4 800765B4 24180000 */  addiu      $t8, $zero, 0x0
/* 771B8 800765B8 ADD80000 */  sw         $t8, 0x0($t6)
/* 771BC 800765BC 1000003C */  b          .L800766B0
/* 771C0 800765C0 ADCF0004 */   sw        $t7, 0x4($t6)
/* 771C4 800765C4 8CCF0000 */  lw         $t7, 0x0($a2)
.L800765C8:
/* 771C8 800765C8 2401FFFC */  addiu      $at, $zero, -0x4
/* 771CC 800765CC 25F80003 */  addiu      $t8, $t7, 0x3
/* 771D0 800765D0 0301C824 */  and        $t9, $t8, $at
/* 771D4 800765D4 272E0004 */  addiu      $t6, $t9, 0x4
/* 771D8 800765D8 ACCE0000 */  sw         $t6, 0x0($a2)
/* 771DC 800765DC 8DD8FFFC */  lw         $t8, -0x4($t6)
/* 771E0 800765E0 8E0F002C */  lw         $t7, 0x2C($s0)
/* 771E4 800765E4 10000032 */  b          .L800766B0
/* 771E8 800765E8 AF0F0000 */   sw        $t7, 0x0($t8)
glabel L800765EC
/* 771EC 800765EC 8CD90000 */  lw         $t9, 0x0($a2)
/* 771F0 800765F0 2401FFFC */  addiu      $at, $zero, -0x4
/* 771F4 800765F4 02002025 */  or         $a0, $s0, $zero
/* 771F8 800765F8 272E0003 */  addiu      $t6, $t9, 0x3
/* 771FC 800765FC 01C17824 */  and        $t7, $t6, $at
/* 77200 80076600 25F80004 */  addiu      $t8, $t7, 0x4
/* 77204 80076604 ACD80000 */  sw         $t8, 0x0($a2)
/* 77208 80076608 8F0EFFFC */  lw         $t6, -0x4($t8)
/* 7720C 8007660C 8E0F000C */  lw         $t7, 0xC($s0)
/* 77210 80076610 24050078 */  addiu      $a1, $zero, 0x78
/* 77214 80076614 000EC7C3 */  sra        $t8, $t6, 31
/* 77218 80076618 AE0E0004 */  sw         $t6, 0x4($s0)
/* 7721C 8007661C 01E77021 */  addu       $t6, $t7, $a3
/* 77220 80076620 AE180000 */  sw         $t8, 0x0($s0)
/* 77224 80076624 0C01EAB4 */  jal        _Litob
/* 77228 80076628 AE0E0008 */   sw        $t6, 0x8($s0)
/* 7722C 8007662C 10000021 */  b          .L800766B4
/* 77230 80076630 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80076634
/* 77234 80076634 8CD80000 */  lw         $t8, 0x0($a2)
/* 77238 80076638 2401FFFC */  addiu      $at, $zero, -0x4
/* 7723C 8007663C 27190003 */  addiu      $t9, $t8, 0x3
/* 77240 80076640 03217824 */  and        $t7, $t9, $at
/* 77244 80076644 25EE0004 */  addiu      $t6, $t7, 0x4
/* 77248 80076648 ACCE0000 */  sw         $t6, 0x0($a2)
/* 7724C 8007664C 8DC4FFFC */  lw         $a0, -0x4($t6)
/* 77250 80076650 0C01B35B */  jal        func_8006CD6C
/* 77254 80076654 AE040008 */   sw        $a0, 0x8($s0)
/* 77258 80076658 8E030024 */  lw         $v1, 0x24($s0)
/* 7725C 8007665C AE020014 */  sw         $v0, 0x14($s0)
/* 77260 80076660 04600013 */  bltz       $v1, .L800766B0
/* 77264 80076664 0062082A */   slt       $at, $v1, $v0
/* 77268 80076668 50200012 */  beql       $at, $zero, .L800766B4
/* 7726C 8007666C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 77270 80076670 1000000F */  b          .L800766B0
/* 77274 80076674 AE030014 */   sw        $v1, 0x14($s0)
/* 77278 80076678 8E18000C */  lw         $t8, 0xC($s0)
.L8007667C:
/* 7727C 8007667C 240E0025 */  addiu      $t6, $zero, 0x25
/* 77280 80076680 00F8C821 */  addu       $t9, $a3, $t8
/* 77284 80076684 A32E0000 */  sb         $t6, 0x0($t9)
/* 77288 80076688 8E0F000C */  lw         $t7, 0xC($s0)
/* 7728C 8007668C 25F80001 */  addiu      $t8, $t7, 0x1
/* 77290 80076690 10000007 */  b          .L800766B0
/* 77294 80076694 AE18000C */   sw        $t8, 0xC($s0)
glabel L80076698
/* 77298 80076698 8E0E000C */  lw         $t6, 0xC($s0)
.L8007669C:
/* 7729C 8007669C 00EEC821 */  addu       $t9, $a3, $t6
/* 772A0 800766A0 A3250000 */  sb         $a1, 0x0($t9)
/* 772A4 800766A4 8E0F000C */  lw         $t7, 0xC($s0)
/* 772A8 800766A8 25F80001 */  addiu      $t8, $t7, 0x1
/* 772AC 800766AC AE18000C */  sw         $t8, 0xC($s0)
.L800766B0:
/* 772B0 800766B0 8FBF0014 */  lw         $ra, 0x14($sp)
.L800766B4:
/* 772B4 800766B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 772B8 800766B8 03E00008 */  jr         $ra
/* 772BC 800766BC 00000000 */   nop

glabel _Printf
/* 772C0 800766C0 27BDFF28 */  addiu      $sp, $sp, -0xD8
/* 772C4 800766C4 AFB70034 */  sw         $s7, 0x34($sp)
/* 772C8 800766C8 AFB60030 */  sw         $s6, 0x30($sp)
/* 772CC 800766CC AFB5002C */  sw         $s5, 0x2C($sp)
/* 772D0 800766D0 AFBE0038 */  sw         $fp, 0x38($sp)
/* 772D4 800766D4 AFB40028 */  sw         $s4, 0x28($sp)
/* 772D8 800766D8 AFB30024 */  sw         $s3, 0x24($sp)
/* 772DC 800766DC AFA700E4 */  sw         $a3, 0xE4($sp)
/* 772E0 800766E0 3C158009 */  lui        $s5, %hi(D_80094BB4)
/* 772E4 800766E4 3C16800A */  lui        $s6, %hi(D_80098E74)
/* 772E8 800766E8 3C178009 */  lui        $s7, %hi(D_80094B90)
/* 772EC 800766EC 00C03825 */  or         $a3, $a2, $zero
/* 772F0 800766F0 00A09825 */  or         $s3, $a1, $zero
/* 772F4 800766F4 0080A025 */  or         $s4, $a0, $zero
/* 772F8 800766F8 AFBF003C */  sw         $ra, 0x3C($sp)
/* 772FC 800766FC AFB20020 */  sw         $s2, 0x20($sp)
/* 77300 80076700 AFB1001C */  sw         $s1, 0x1C($sp)
/* 77304 80076704 AFB00018 */  sw         $s0, 0x18($sp)
/* 77308 80076708 AFA600E0 */  sw         $a2, 0xE0($sp)
/* 7730C 8007670C AFA000CC */  sw         $zero, 0xCC($sp)
/* 77310 80076710 26F74B90 */  addiu      $s7, $s7, %lo(D_80094B90)
/* 77314 80076714 26D68E74 */  addiu      $s6, $s6, %lo(D_80098E74)
/* 77318 80076718 26B54BB4 */  addiu      $s5, $s5, %lo(D_80094BB4)
/* 7731C 8007671C 241E000A */  addiu      $fp, $zero, 0xA
.L80076720:
/* 77320 80076720 90E20000 */  lbu        $v0, 0x0($a3)
/* 77324 80076724 00E09025 */  or         $s2, $a3, $zero
/* 77328 80076728 24030025 */  addiu      $v1, $zero, 0x25
/* 7732C 8007672C 10400009 */  beqz       $v0, .L80076754
/* 77330 80076730 00408025 */   or        $s0, $v0, $zero
/* 77334 80076734 50620008 */  beql       $v1, $v0, .L80076758
/* 77338 80076738 02471023 */   subu      $v0, $s2, $a3
/* 7733C 8007673C 92420001 */  lbu        $v0, 0x1($s2)
.L80076740:
/* 77340 80076740 26520001 */  addiu      $s2, $s2, 0x1
/* 77344 80076744 10400003 */  beqz       $v0, .L80076754
/* 77348 80076748 00408025 */   or        $s0, $v0, $zero
/* 7734C 8007674C 5462FFFC */  bnel       $v1, $v0, .L80076740
/* 77350 80076750 92420001 */   lbu       $v0, 0x1($s2)
.L80076754:
/* 77354 80076754 02471023 */  subu       $v0, $s2, $a3
.L80076758:
/* 77358 80076758 1840000D */  blez       $v0, .L80076790
/* 7735C 8007675C 02602025 */   or        $a0, $s3, $zero
/* 77360 80076760 00E02825 */  or         $a1, $a3, $zero
/* 77364 80076764 00408825 */  or         $s1, $v0, $zero
/* 77368 80076768 0280F809 */  jalr       $s4
/* 7736C 8007676C 00403025 */   or        $a2, $v0, $zero
/* 77370 80076770 10400005 */  beqz       $v0, .L80076788
/* 77374 80076774 00409825 */   or        $s3, $v0, $zero
/* 77378 80076778 8FAE00CC */  lw         $t6, 0xCC($sp)
/* 7737C 8007677C 01D17821 */  addu       $t7, $t6, $s1
/* 77380 80076780 10000003 */  b          .L80076790
/* 77384 80076784 AFAF00CC */   sw        $t7, 0xCC($sp)
.L80076788:
/* 77388 80076788 10000153 */  b          .L80076CD8
/* 7738C 8007678C 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076790:
/* 77390 80076790 16000003 */  bnez       $s0, .L800767A0
/* 77394 80076794 26520001 */   addiu     $s2, $s2, 0x1
/* 77398 80076798 1000014F */  b          .L80076CD8
/* 7739C 8007679C 8FA200CC */   lw        $v0, 0xCC($sp)
.L800767A0:
/* 773A0 800767A0 AFA000D0 */  sw         $zero, 0xD0($sp)
/* 773A4 800767A4 92450000 */  lbu        $a1, 0x0($s2)
/* 773A8 800767A8 0C01B365 */  jal        func_8006CD94
/* 773AC 800767AC 02C02025 */   or        $a0, $s6, $zero
/* 773B0 800767B0 1040000F */  beqz       $v0, .L800767F0
/* 773B4 800767B4 00408025 */   or        $s0, $v0, $zero
.L800767B8:
/* 773B8 800767B8 0216C823 */  subu       $t9, $s0, $s6
/* 773BC 800767BC 00197080 */  sll        $t6, $t9, 2
/* 773C0 800767C0 3C0F800A */  lui        $t7, %hi(D_80098E7C)
/* 773C4 800767C4 01EE7821 */  addu       $t7, $t7, $t6
/* 773C8 800767C8 8DEF8E7C */  lw         $t7, %lo(D_80098E7C)($t7)
/* 773CC 800767CC 8FB800D0 */  lw         $t8, 0xD0($sp)
/* 773D0 800767D0 26520001 */  addiu      $s2, $s2, 0x1
/* 773D4 800767D4 02C02025 */  or         $a0, $s6, $zero
/* 773D8 800767D8 030FC825 */  or         $t9, $t8, $t7
/* 773DC 800767DC AFB900D0 */  sw         $t9, 0xD0($sp)
/* 773E0 800767E0 0C01B365 */  jal        func_8006CD94
/* 773E4 800767E4 92450000 */   lbu       $a1, 0x0($s2)
/* 773E8 800767E8 1440FFF3 */  bnez       $v0, .L800767B8
/* 773EC 800767EC 00408025 */   or        $s0, $v0, $zero
.L800767F0:
/* 773F0 800767F0 924E0000 */  lbu        $t6, 0x0($s2)
/* 773F4 800767F4 2402002A */  addiu      $v0, $zero, 0x2A
/* 773F8 800767F8 8FB800E4 */  lw         $t8, 0xE4($sp)
/* 773FC 800767FC 144E0011 */  bne        $v0, $t6, .L80076844
/* 77400 80076800 3C04800A */   lui       $a0, %hi(D_80098E70)
/* 77404 80076804 270F0003 */  addiu      $t7, $t8, 0x3
/* 77408 80076808 2401FFFC */  addiu      $at, $zero, -0x4
/* 7740C 8007680C 01E1C824 */  and        $t9, $t7, $at
/* 77410 80076810 272E0004 */  addiu      $t6, $t9, 0x4
/* 77414 80076814 AFAE00E4 */  sw         $t6, 0xE4($sp)
/* 77418 80076818 8F380000 */  lw         $t8, 0x0($t9)
/* 7741C 8007681C 26520001 */  addiu      $s2, $s2, 0x1
/* 77420 80076820 07010006 */  bgez       $t8, .L8007683C
/* 77424 80076824 AFB800C8 */   sw        $t8, 0xC8($sp)
/* 77428 80076828 8FAE00D0 */  lw         $t6, 0xD0($sp)
/* 7742C 8007682C 00187823 */  negu       $t7, $t8
/* 77430 80076830 AFAF00C8 */  sw         $t7, 0xC8($sp)
/* 77434 80076834 35D90004 */  ori        $t9, $t6, 0x4
/* 77438 80076838 AFB900D0 */  sw         $t9, 0xD0($sp)
.L8007683C:
/* 7743C 8007683C 10000018 */  b          .L800768A0
/* 77440 80076840 92450000 */   lbu       $a1, 0x0($s2)
.L80076844:
/* 77444 80076844 AFA000C8 */  sw         $zero, 0xC8($sp)
/* 77448 80076848 92450000 */  lbu        $a1, 0x0($s2)
/* 7744C 8007684C 28A10030 */  slti       $at, $a1, 0x30
/* 77450 80076850 14200013 */  bnez       $at, .L800768A0
/* 77454 80076854 28A1003A */   slti      $at, $a1, 0x3A
/* 77458 80076858 50200012 */  beql       $at, $zero, .L800768A4
/* 7745C 8007685C 2401002E */   addiu     $at, $zero, 0x2E
/* 77460 80076860 8FB800C8 */  lw         $t8, 0xC8($sp)
.L80076864:
/* 77464 80076864 2B0103E7 */  slti       $at, $t8, 0x3E7
/* 77468 80076868 50200007 */  beql       $at, $zero, .L80076888
/* 7746C 8007686C 92450001 */   lbu       $a1, 0x1($s2)
/* 77470 80076870 031E0019 */  multu      $t8, $fp
/* 77474 80076874 00007812 */  mflo       $t7
/* 77478 80076878 00AF7021 */  addu       $t6, $a1, $t7
/* 7747C 8007687C 25D9FFD0 */  addiu      $t9, $t6, -0x30
/* 77480 80076880 AFB900C8 */  sw         $t9, 0xC8($sp)
/* 77484 80076884 92450001 */  lbu        $a1, 0x1($s2)
.L80076888:
/* 77488 80076888 26520001 */  addiu      $s2, $s2, 0x1
/* 7748C 8007688C 28A10030 */  slti       $at, $a1, 0x30
/* 77490 80076890 14200003 */  bnez       $at, .L800768A0
/* 77494 80076894 28A1003A */   slti      $at, $a1, 0x3A
/* 77498 80076898 5420FFF2 */  bnel       $at, $zero, .L80076864
/* 7749C 8007689C 8FB800C8 */   lw        $t8, 0xC8($sp)
.L800768A0:
/* 774A0 800768A0 2401002E */  addiu      $at, $zero, 0x2E
.L800768A4:
/* 774A4 800768A4 10A10004 */  beq        $a1, $at, .L800768B8
/* 774A8 800768A8 2418FFFF */   addiu     $t8, $zero, -0x1
/* 774AC 800768AC AFB800C4 */  sw         $t8, 0xC4($sp)
/* 774B0 800768B0 10000026 */  b          .L8007694C
/* 774B4 800768B4 92450000 */   lbu       $a1, 0x0($s2)
.L800768B8:
/* 774B8 800768B8 924F0001 */  lbu        $t7, 0x1($s2)
/* 774BC 800768BC 8FAE00E4 */  lw         $t6, 0xE4($sp)
/* 774C0 800768C0 26520001 */  addiu      $s2, $s2, 0x1
/* 774C4 800768C4 144F000A */  bne        $v0, $t7, .L800768F0
/* 774C8 800768C8 25D90003 */   addiu     $t9, $t6, 0x3
/* 774CC 800768CC 2401FFFC */  addiu      $at, $zero, -0x4
/* 774D0 800768D0 0321C024 */  and        $t8, $t9, $at
/* 774D4 800768D4 270F0004 */  addiu      $t7, $t8, 0x4
/* 774D8 800768D8 AFAF00E4 */  sw         $t7, 0xE4($sp)
/* 774DC 800768DC 8F0E0000 */  lw         $t6, 0x0($t8)
/* 774E0 800768E0 26520001 */  addiu      $s2, $s2, 0x1
/* 774E4 800768E4 AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 774E8 800768E8 10000018 */  b          .L8007694C
/* 774EC 800768EC 92450000 */   lbu       $a1, 0x0($s2)
.L800768F0:
/* 774F0 800768F0 AFA000C4 */  sw         $zero, 0xC4($sp)
/* 774F4 800768F4 92450000 */  lbu        $a1, 0x0($s2)
/* 774F8 800768F8 28A10030 */  slti       $at, $a1, 0x30
/* 774FC 800768FC 14200013 */  bnez       $at, .L8007694C
/* 77500 80076900 28A1003A */   slti      $at, $a1, 0x3A
/* 77504 80076904 10200011 */  beqz       $at, .L8007694C
/* 77508 80076908 00000000 */   nop
/* 7750C 8007690C 8FB900C4 */  lw         $t9, 0xC4($sp)
.L80076910:
/* 77510 80076910 2B2103E7 */  slti       $at, $t9, 0x3E7
/* 77514 80076914 50200007 */  beql       $at, $zero, .L80076934
/* 77518 80076918 92450001 */   lbu       $a1, 0x1($s2)
/* 7751C 8007691C 033E0019 */  multu      $t9, $fp
/* 77520 80076920 00007812 */  mflo       $t7
/* 77524 80076924 00AFC021 */  addu       $t8, $a1, $t7
/* 77528 80076928 270EFFD0 */  addiu      $t6, $t8, -0x30
/* 7752C 8007692C AFAE00C4 */  sw         $t6, 0xC4($sp)
/* 77530 80076930 92450001 */  lbu        $a1, 0x1($s2)
.L80076934:
/* 77534 80076934 26520001 */  addiu      $s2, $s2, 0x1
/* 77538 80076938 28A10030 */  slti       $at, $a1, 0x30
/* 7753C 8007693C 14200003 */  bnez       $at, .L8007694C
/* 77540 80076940 28A1003A */   slti      $at, $a1, 0x3A
/* 77544 80076944 5420FFF2 */  bnel       $at, $zero, .L80076910
/* 77548 80076948 8FB900C4 */   lw        $t9, 0xC4($sp)
.L8007694C:
/* 7754C 8007694C 0C01B365 */  jal        func_8006CD94
/* 77550 80076950 24848E70 */   addiu     $a0, $a0, %lo(D_80098E70)
/* 77554 80076954 10400005 */  beqz       $v0, .L8007696C
/* 77558 80076958 27B000A0 */   addiu     $s0, $sp, 0xA0
/* 7755C 8007695C 92590000 */  lbu        $t9, 0x0($s2)
/* 77560 80076960 26520001 */  addiu      $s2, $s2, 0x1
/* 77564 80076964 10000002 */  b          .L80076970
/* 77568 80076968 A3B900D4 */   sb        $t9, 0xD4($sp)
.L8007696C:
/* 7756C 8007696C A3A000D4 */  sb         $zero, 0xD4($sp)
.L80076970:
/* 77570 80076970 93AF00D4 */  lbu        $t7, 0xD4($sp)
/* 77574 80076974 2402006C */  addiu      $v0, $zero, 0x6C
/* 77578 80076978 27A600E4 */  addiu      $a2, $sp, 0xE4
/* 7757C 8007697C 144F0007 */  bne        $v0, $t7, .L8007699C
/* 77580 80076980 27A70074 */   addiu     $a3, $sp, 0x74
/* 77584 80076984 92580000 */  lbu        $t8, 0x0($s2)
/* 77588 80076988 240E004C */  addiu      $t6, $zero, 0x4C
/* 7758C 8007698C 14580003 */  bne        $v0, $t8, .L8007699C
/* 77590 80076990 00000000 */   nop
/* 77594 80076994 A3AE00D4 */  sb         $t6, 0xD4($sp)
/* 77598 80076998 26520001 */  addiu      $s2, $s2, 0x1
.L8007699C:
/* 7759C 8007699C 0C01D814 */  jal        func_80076050
/* 775A0 800769A0 92450000 */   lbu       $a1, 0x0($s2)
/* 775A4 800769A4 8FB900C8 */  lw         $t9, 0xC8($sp)
/* 775A8 800769A8 8FAF00AC */  lw         $t7, 0xAC($sp)
/* 775AC 800769AC 8FAE00B0 */  lw         $t6, 0xB0($sp)
/* 775B0 800769B0 032FC023 */  subu       $t8, $t9, $t7
/* 775B4 800769B4 8FAF00B4 */  lw         $t7, 0xB4($sp)
/* 775B8 800769B8 030EC823 */  subu       $t9, $t8, $t6
/* 775BC 800769BC 8FAE00B8 */  lw         $t6, 0xB8($sp)
/* 775C0 800769C0 032FC023 */  subu       $t8, $t9, $t7
/* 775C4 800769C4 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 775C8 800769C8 030EC823 */  subu       $t9, $t8, $t6
/* 775CC 800769CC 8FAE00C0 */  lw         $t6, 0xC0($sp)
/* 775D0 800769D0 032FC023 */  subu       $t8, $t9, $t7
/* 775D4 800769D4 8FAF00D0 */  lw         $t7, 0xD0($sp)
/* 775D8 800769D8 030EC823 */  subu       $t9, $t8, $t6
/* 775DC 800769DC AFB900C8 */  sw         $t9, 0xC8($sp)
/* 775E0 800769E0 31F80004 */  andi       $t8, $t7, 0x4
/* 775E4 800769E4 1700001A */  bnez       $t8, .L80076A50
/* 775E8 800769E8 0019702A */   slt       $t6, $zero, $t9
/* 775EC 800769EC 51C00019 */  beql       $t6, $zero, .L80076A54
/* 775F0 800769F0 8FB900AC */   lw        $t9, 0xAC($sp)
/* 775F4 800769F4 11C00016 */  beqz       $t6, .L80076A50
/* 775F8 800769F8 03208825 */   or        $s1, $t9, $zero
/* 775FC 800769FC 2E210021 */  sltiu      $at, $s1, 0x21
.L80076A00:
/* 77600 80076A00 14200003 */  bnez       $at, .L80076A10
/* 77604 80076A04 02208025 */   or        $s0, $s1, $zero
/* 77608 80076A08 10000001 */  b          .L80076A10
/* 7760C 80076A0C 24100020 */   addiu     $s0, $zero, 0x20
.L80076A10:
/* 77610 80076A10 1A00000C */  blez       $s0, .L80076A44
/* 77614 80076A14 02602025 */   or        $a0, $s3, $zero
/* 77618 80076A18 02E02825 */  or         $a1, $s7, $zero
/* 7761C 80076A1C 0280F809 */  jalr       $s4
/* 77620 80076A20 02003025 */   or        $a2, $s0, $zero
/* 77624 80076A24 10400005 */  beqz       $v0, .L80076A3C
/* 77628 80076A28 00409825 */   or        $s3, $v0, $zero
/* 7762C 80076A2C 8FAF00CC */  lw         $t7, 0xCC($sp)
/* 77630 80076A30 01F0C021 */  addu       $t8, $t7, $s0
/* 77634 80076A34 10000003 */  b          .L80076A44
/* 77638 80076A38 AFB800CC */   sw        $t8, 0xCC($sp)
.L80076A3C:
/* 7763C 80076A3C 100000A6 */  b          .L80076CD8
/* 77640 80076A40 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076A44:
/* 77644 80076A44 02308823 */  subu       $s1, $s1, $s0
/* 77648 80076A48 5E20FFED */  bgtzl      $s1, .L80076A00
/* 7764C 80076A4C 2E210021 */   sltiu     $at, $s1, 0x21
.L80076A50:
/* 77650 80076A50 8FB900AC */  lw         $t9, 0xAC($sp)
.L80076A54:
/* 77654 80076A54 02602025 */  or         $a0, $s3, $zero
/* 77658 80076A58 27A50074 */  addiu      $a1, $sp, 0x74
/* 7765C 80076A5C 5B20000D */  blezl      $t9, .L80076A94
/* 77660 80076A60 8FB900B0 */   lw        $t9, 0xB0($sp)
/* 77664 80076A64 0280F809 */  jalr       $s4
/* 77668 80076A68 03203025 */   or        $a2, $t9, $zero
/* 7766C 80076A6C 10400006 */  beqz       $v0, .L80076A88
/* 77670 80076A70 00409825 */   or        $s3, $v0, $zero
/* 77674 80076A74 8FAE00CC */  lw         $t6, 0xCC($sp)
/* 77678 80076A78 8FAF00AC */  lw         $t7, 0xAC($sp)
/* 7767C 80076A7C 01CFC021 */  addu       $t8, $t6, $t7
/* 77680 80076A80 10000003 */  b          .L80076A90
/* 77684 80076A84 AFB800CC */   sw        $t8, 0xCC($sp)
.L80076A88:
/* 77688 80076A88 10000093 */  b          .L80076CD8
/* 7768C 80076A8C 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076A90:
/* 77690 80076A90 8FB900B0 */  lw         $t9, 0xB0($sp)
.L80076A94:
/* 77694 80076A94 0019702A */  slt        $t6, $zero, $t9
/* 77698 80076A98 51C00019 */  beql       $t6, $zero, .L80076B00
/* 7769C 80076A9C 8FB900B4 */   lw        $t9, 0xB4($sp)
/* 776A0 80076AA0 11C00016 */  beqz       $t6, .L80076AFC
/* 776A4 80076AA4 03208825 */   or        $s1, $t9, $zero
/* 776A8 80076AA8 2E210021 */  sltiu      $at, $s1, 0x21
.L80076AAC:
/* 776AC 80076AAC 14200003 */  bnez       $at, .L80076ABC
/* 776B0 80076AB0 02208025 */   or        $s0, $s1, $zero
/* 776B4 80076AB4 10000001 */  b          .L80076ABC
/* 776B8 80076AB8 24100020 */   addiu     $s0, $zero, 0x20
.L80076ABC:
/* 776BC 80076ABC 1A00000C */  blez       $s0, .L80076AF0
/* 776C0 80076AC0 02602025 */   or        $a0, $s3, $zero
/* 776C4 80076AC4 02A02825 */  or         $a1, $s5, $zero
/* 776C8 80076AC8 0280F809 */  jalr       $s4
/* 776CC 80076ACC 02003025 */   or        $a2, $s0, $zero
/* 776D0 80076AD0 10400005 */  beqz       $v0, .L80076AE8
/* 776D4 80076AD4 00409825 */   or        $s3, $v0, $zero
/* 776D8 80076AD8 8FAF00CC */  lw         $t7, 0xCC($sp)
/* 776DC 80076ADC 01F0C021 */  addu       $t8, $t7, $s0
/* 776E0 80076AE0 10000003 */  b          .L80076AF0
/* 776E4 80076AE4 AFB800CC */   sw        $t8, 0xCC($sp)
.L80076AE8:
/* 776E8 80076AE8 1000007B */  b          .L80076CD8
/* 776EC 80076AEC 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076AF0:
/* 776F0 80076AF0 02308823 */  subu       $s1, $s1, $s0
/* 776F4 80076AF4 5E20FFED */  bgtzl      $s1, .L80076AAC
/* 776F8 80076AF8 2E210021 */   sltiu     $at, $s1, 0x21
.L80076AFC:
/* 776FC 80076AFC 8FB900B4 */  lw         $t9, 0xB4($sp)
.L80076B00:
/* 77700 80076B00 02602025 */  or         $a0, $s3, $zero
/* 77704 80076B04 8FA500A8 */  lw         $a1, 0xA8($sp)
/* 77708 80076B08 5B20000D */  blezl      $t9, .L80076B40
/* 7770C 80076B0C 8FB900B8 */   lw        $t9, 0xB8($sp)
/* 77710 80076B10 0280F809 */  jalr       $s4
/* 77714 80076B14 03203025 */   or        $a2, $t9, $zero
/* 77718 80076B18 10400006 */  beqz       $v0, .L80076B34
/* 7771C 80076B1C 00409825 */   or        $s3, $v0, $zero
/* 77720 80076B20 8FAE00CC */  lw         $t6, 0xCC($sp)
/* 77724 80076B24 8FAF00B4 */  lw         $t7, 0xB4($sp)
/* 77728 80076B28 01CFC021 */  addu       $t8, $t6, $t7
/* 7772C 80076B2C 10000003 */  b          .L80076B3C
/* 77730 80076B30 AFB800CC */   sw        $t8, 0xCC($sp)
.L80076B34:
/* 77734 80076B34 10000068 */  b          .L80076CD8
/* 77738 80076B38 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076B3C:
/* 7773C 80076B3C 8FB900B8 */  lw         $t9, 0xB8($sp)
.L80076B40:
/* 77740 80076B40 0019702A */  slt        $t6, $zero, $t9
/* 77744 80076B44 51C00019 */  beql       $t6, $zero, .L80076BAC
/* 77748 80076B48 8FB900BC */   lw        $t9, 0xBC($sp)
/* 7774C 80076B4C 11C00016 */  beqz       $t6, .L80076BA8
/* 77750 80076B50 03208825 */   or        $s1, $t9, $zero
/* 77754 80076B54 2E210021 */  sltiu      $at, $s1, 0x21
.L80076B58:
/* 77758 80076B58 14200003 */  bnez       $at, .L80076B68
/* 7775C 80076B5C 02208025 */   or        $s0, $s1, $zero
/* 77760 80076B60 10000001 */  b          .L80076B68
/* 77764 80076B64 24100020 */   addiu     $s0, $zero, 0x20
.L80076B68:
/* 77768 80076B68 1A00000C */  blez       $s0, .L80076B9C
/* 7776C 80076B6C 02602025 */   or        $a0, $s3, $zero
/* 77770 80076B70 02A02825 */  or         $a1, $s5, $zero
/* 77774 80076B74 0280F809 */  jalr       $s4
/* 77778 80076B78 02003025 */   or        $a2, $s0, $zero
/* 7777C 80076B7C 10400005 */  beqz       $v0, .L80076B94
/* 77780 80076B80 00409825 */   or        $s3, $v0, $zero
/* 77784 80076B84 8FAF00CC */  lw         $t7, 0xCC($sp)
/* 77788 80076B88 01F0C021 */  addu       $t8, $t7, $s0
/* 7778C 80076B8C 10000003 */  b          .L80076B9C
/* 77790 80076B90 AFB800CC */   sw        $t8, 0xCC($sp)
.L80076B94:
/* 77794 80076B94 10000050 */  b          .L80076CD8
/* 77798 80076B98 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076B9C:
/* 7779C 80076B9C 02308823 */  subu       $s1, $s1, $s0
/* 777A0 80076BA0 5E20FFED */  bgtzl      $s1, .L80076B58
/* 777A4 80076BA4 2E210021 */   sltiu     $at, $s1, 0x21
.L80076BA8:
/* 777A8 80076BA8 8FB900BC */  lw         $t9, 0xBC($sp)
.L80076BAC:
/* 777AC 80076BAC 02602025 */  or         $a0, $s3, $zero
/* 777B0 80076BB0 8FAE00A8 */  lw         $t6, 0xA8($sp)
/* 777B4 80076BB4 1B20000D */  blez       $t9, .L80076BEC
/* 777B8 80076BB8 8FAF00B4 */   lw        $t7, 0xB4($sp)
/* 777BC 80076BBC 01CF2821 */  addu       $a1, $t6, $t7
/* 777C0 80076BC0 0280F809 */  jalr       $s4
/* 777C4 80076BC4 03203025 */   or        $a2, $t9, $zero
/* 777C8 80076BC8 10400006 */  beqz       $v0, .L80076BE4
/* 777CC 80076BCC 00409825 */   or        $s3, $v0, $zero
/* 777D0 80076BD0 8FB800CC */  lw         $t8, 0xCC($sp)
/* 777D4 80076BD4 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 777D8 80076BD8 030E7821 */  addu       $t7, $t8, $t6
/* 777DC 80076BDC 10000003 */  b          .L80076BEC
/* 777E0 80076BE0 AFAF00CC */   sw        $t7, 0xCC($sp)
.L80076BE4:
/* 777E4 80076BE4 1000003C */  b          .L80076CD8
/* 777E8 80076BE8 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076BEC:
/* 777EC 80076BEC 8FB900C0 */  lw         $t9, 0xC0($sp)
/* 777F0 80076BF0 0019C02A */  slt        $t8, $zero, $t9
/* 777F4 80076BF4 53000019 */  beql       $t8, $zero, .L80076C5C
/* 777F8 80076BF8 8FB900D0 */   lw        $t9, 0xD0($sp)
/* 777FC 80076BFC 13000016 */  beqz       $t8, .L80076C58
/* 77800 80076C00 03208825 */   or        $s1, $t9, $zero
/* 77804 80076C04 2E210021 */  sltiu      $at, $s1, 0x21
.L80076C08:
/* 77808 80076C08 14200003 */  bnez       $at, .L80076C18
/* 7780C 80076C0C 02208025 */   or        $s0, $s1, $zero
/* 77810 80076C10 10000001 */  b          .L80076C18
/* 77814 80076C14 24100020 */   addiu     $s0, $zero, 0x20
.L80076C18:
/* 77818 80076C18 1A00000C */  blez       $s0, .L80076C4C
/* 7781C 80076C1C 02602025 */   or        $a0, $s3, $zero
/* 77820 80076C20 02A02825 */  or         $a1, $s5, $zero
/* 77824 80076C24 0280F809 */  jalr       $s4
/* 77828 80076C28 02003025 */   or        $a2, $s0, $zero
/* 7782C 80076C2C 10400005 */  beqz       $v0, .L80076C44
/* 77830 80076C30 00409825 */   or        $s3, $v0, $zero
/* 77834 80076C34 8FAE00CC */  lw         $t6, 0xCC($sp)
/* 77838 80076C38 01D07821 */  addu       $t7, $t6, $s0
/* 7783C 80076C3C 10000003 */  b          .L80076C4C
/* 77840 80076C40 AFAF00CC */   sw        $t7, 0xCC($sp)
.L80076C44:
/* 77844 80076C44 10000024 */  b          .L80076CD8
/* 77848 80076C48 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076C4C:
/* 7784C 80076C4C 02308823 */  subu       $s1, $s1, $s0
/* 77850 80076C50 5E20FFED */  bgtzl      $s1, .L80076C08
/* 77854 80076C54 2E210021 */   sltiu     $at, $s1, 0x21
.L80076C58:
/* 77858 80076C58 8FB900D0 */  lw         $t9, 0xD0($sp)
.L80076C5C:
/* 7785C 80076C5C 8FAE00C8 */  lw         $t6, 0xC8($sp)
/* 77860 80076C60 33380004 */  andi       $t8, $t9, 0x4
/* 77864 80076C64 1300001A */  beqz       $t8, .L80076CD0
/* 77868 80076C68 000E782A */   slt       $t7, $zero, $t6
/* 7786C 80076C6C 11E00018 */  beqz       $t7, .L80076CD0
/* 77870 80076C70 00000000 */   nop
/* 77874 80076C74 11E00016 */  beqz       $t7, .L80076CD0
/* 77878 80076C78 01C08825 */   or        $s1, $t6, $zero
/* 7787C 80076C7C 2E210021 */  sltiu      $at, $s1, 0x21
.L80076C80:
/* 77880 80076C80 14200003 */  bnez       $at, .L80076C90
/* 77884 80076C84 02208025 */   or        $s0, $s1, $zero
/* 77888 80076C88 10000001 */  b          .L80076C90
/* 7788C 80076C8C 24100020 */   addiu     $s0, $zero, 0x20
.L80076C90:
/* 77890 80076C90 1A00000C */  blez       $s0, .L80076CC4
/* 77894 80076C94 02602025 */   or        $a0, $s3, $zero
/* 77898 80076C98 02E02825 */  or         $a1, $s7, $zero
/* 7789C 80076C9C 0280F809 */  jalr       $s4
/* 778A0 80076CA0 02003025 */   or        $a2, $s0, $zero
/* 778A4 80076CA4 10400005 */  beqz       $v0, .L80076CBC
/* 778A8 80076CA8 00409825 */   or        $s3, $v0, $zero
/* 778AC 80076CAC 8FB900CC */  lw         $t9, 0xCC($sp)
/* 778B0 80076CB0 0330C021 */  addu       $t8, $t9, $s0
/* 778B4 80076CB4 10000003 */  b          .L80076CC4
/* 778B8 80076CB8 AFB800CC */   sw        $t8, 0xCC($sp)
.L80076CBC:
/* 778BC 80076CBC 10000006 */  b          .L80076CD8
/* 778C0 80076CC0 8FA200CC */   lw        $v0, 0xCC($sp)
.L80076CC4:
/* 778C4 80076CC4 02308823 */  subu       $s1, $s1, $s0
/* 778C8 80076CC8 5E20FFED */  bgtzl      $s1, .L80076C80
/* 778CC 80076CCC 2E210021 */   sltiu     $at, $s1, 0x21
.L80076CD0:
/* 778D0 80076CD0 1000FE93 */  b          .L80076720
/* 778D4 80076CD4 26470001 */   addiu     $a3, $s2, 0x1
.L80076CD8:
/* 778D8 80076CD8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 778DC 80076CDC 8FB00018 */  lw         $s0, 0x18($sp)
/* 778E0 80076CE0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 778E4 80076CE4 8FB20020 */  lw         $s2, 0x20($sp)
/* 778E8 80076CE8 8FB30024 */  lw         $s3, 0x24($sp)
/* 778EC 80076CEC 8FB40028 */  lw         $s4, 0x28($sp)
/* 778F0 80076CF0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 778F4 80076CF4 8FB60030 */  lw         $s6, 0x30($sp)
/* 778F8 80076CF8 8FB70034 */  lw         $s7, 0x34($sp)
/* 778FC 80076CFC 8FBE0038 */  lw         $fp, 0x38($sp)
/* 77900 80076D00 03E00008 */  jr         $ra
/* 77904 80076D04 27BD00D8 */   addiu     $sp, $sp, 0xD8
/* 77908 80076D08 00000000 */  nop
/* 7790C 80076D0C 00000000 */  nop

# Handwritten function
glabel func_80076D10
/* 77910 80076D10 40024800 */  mfc0       $v0, $9
/* 77914 80076D14 03E00008 */  jr         $ra
/* 77918 80076D18 00000000 */   nop
/* 7791C 80076D1C 00000000 */  nop

glabel func_80076D20
/* 77920 80076D20 3C01801B */  lui        $at, %hi(D_801AD334)
/* 77924 80076D24 240E0000 */  addiu      $t6, $zero, 0x0
/* 77928 80076D28 240F0000 */  addiu      $t7, $zero, 0x0
/* 7792C 80076D2C AC2FD334 */  sw         $t7, %lo(D_801AD334)($at)
/* 77930 80076D30 AC2ED330 */  sw         $t6, %lo(D_801AD330)($at)
/* 77934 80076D34 3C01801B */  lui        $at, %hi(D_801AD338)
/* 77938 80076D38 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 7793C 80076D3C 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 77940 80076D40 AC20D338 */  sw         $zero, %lo(D_801AD338)($at)
/* 77944 80076D44 3C01801B */  lui        $at, %hi(D_801AD33C)
/* 77948 80076D48 AC20D33C */  sw         $zero, %lo(D_801AD33C)($at)
/* 7794C 80076D4C 3C198009 */  lui        $t9, %hi(D_80094BE0)
/* 77950 80076D50 AF180004 */  sw         $t8, 0x4($t8)
/* 77954 80076D54 8F394BE0 */  lw         $t9, %lo(D_80094BE0)($t9)
/* 77958 80076D58 3C098009 */  lui        $t1, %hi(D_80094BE0)
/* 7795C 80076D5C 240A0000 */  addiu      $t2, $zero, 0x0
/* 77960 80076D60 8F280004 */  lw         $t0, 0x4($t9)
/* 77964 80076D64 240B0000 */  addiu      $t3, $zero, 0x0
/* 77968 80076D68 3C0C8009 */  lui        $t4, %hi(D_80094BE0)
/* 7796C 80076D6C AF280000 */  sw         $t0, 0x0($t9)
/* 77970 80076D70 8D294BE0 */  lw         $t1, %lo(D_80094BE0)($t1)
/* 77974 80076D74 3C0D8009 */  lui        $t5, %hi(D_80094BE0)
/* 77978 80076D78 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 7797C 80076D7C AD2A0010 */  sw         $t2, 0x10($t1)
/* 77980 80076D80 AD2B0014 */  sw         $t3, 0x14($t1)
/* 77984 80076D84 8D8C4BE0 */  lw         $t4, %lo(D_80094BE0)($t4)
/* 77988 80076D88 8D8E0010 */  lw         $t6, 0x10($t4)
/* 7798C 80076D8C 8D8F0014 */  lw         $t7, 0x14($t4)
/* 77990 80076D90 AD8E0008 */  sw         $t6, 0x8($t4)
/* 77994 80076D94 AD8F000C */  sw         $t7, 0xC($t4)
/* 77998 80076D98 8DAD4BE0 */  lw         $t5, %lo(D_80094BE0)($t5)
/* 7799C 80076D9C ADA00018 */  sw         $zero, 0x18($t5)
/* 779A0 80076DA0 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 779A4 80076DA4 03E00008 */  jr         $ra
/* 779A8 80076DA8 AF00001C */   sw        $zero, 0x1C($t8)

glabel __osTimerInterrupt
/* 779AC 80076DAC 3C0E8009 */  lui        $t6, %hi(D_80094BE0)
/* 779B0 80076DB0 8DCE4BE0 */  lw         $t6, %lo(D_80094BE0)($t6)
/* 779B4 80076DB4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 779B8 80076DB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 779BC 80076DBC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 779C0 80076DC0 11EE0054 */  beq        $t7, $t6, .L80076F14
/* 779C4 80076DC4 00000000 */   nop
.L80076DC8:
/* 779C8 80076DC8 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 779CC 80076DCC 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 779D0 80076DD0 8F190000 */  lw         $t9, 0x0($t8)
/* 779D4 80076DD4 17380006 */  bne        $t9, $t8, .L80076DF0
/* 779D8 80076DD8 AFB90024 */   sw        $t9, 0x24($sp)
/* 779DC 80076DDC 0C01EE0C */  jal        func_8007B830
/* 779E0 80076DE0 00002025 */   or        $a0, $zero, $zero
/* 779E4 80076DE4 3C01801B */  lui        $at, %hi(D_801AD340)
/* 779E8 80076DE8 1000004A */  b          .L80076F14
/* 779EC 80076DEC AC20D340 */   sw        $zero, %lo(D_801AD340)($at)
.L80076DF0:
/* 779F0 80076DF0 0C01DB44 */  jal        func_80076D10
/* 779F4 80076DF4 00000000 */   nop
/* 779F8 80076DF8 AFA20020 */  sw         $v0, 0x20($sp)
/* 779FC 80076DFC 3C09801B */  lui        $t1, %hi(D_801AD340)
/* 77A00 80076E00 8D29D340 */  lw         $t1, %lo(D_801AD340)($t1)
/* 77A04 80076E04 8FA80020 */  lw         $t0, 0x20($sp)
/* 77A08 80076E08 8FAF0024 */  lw         $t7, 0x24($sp)
/* 77A0C 80076E0C 3C01801B */  lui        $at, %hi(D_801AD340)
/* 77A10 80076E10 01095023 */  subu       $t2, $t0, $t1
/* 77A14 80076E14 AFAA001C */  sw         $t2, 0x1C($sp)
/* 77A18 80076E18 AC28D340 */  sw         $t0, %lo(D_801AD340)($at)
/* 77A1C 80076E1C 8DEE0010 */  lw         $t6, 0x10($t7)
/* 77A20 80076E20 8FAB001C */  lw         $t3, 0x1C($sp)
/* 77A24 80076E24 240C0000 */  addiu      $t4, $zero, 0x0
/* 77A28 80076E28 01E0C825 */  or         $t9, $t7, $zero
/* 77A2C 80076E2C 01CC082B */  sltu       $at, $t6, $t4
/* 77A30 80076E30 8DEF0014 */  lw         $t7, 0x14($t7)
/* 77A34 80076E34 14200016 */  bnez       $at, .L80076E90
/* 77A38 80076E38 01606825 */   or        $t5, $t3, $zero
/* 77A3C 80076E3C 018E082B */  sltu       $at, $t4, $t6
/* 77A40 80076E40 14200003 */  bnez       $at, .L80076E50
/* 77A44 80076E44 01AF082B */   sltu      $at, $t5, $t7
/* 77A48 80076E48 10200011 */  beqz       $at, .L80076E90
/* 77A4C 80076E4C 00000000 */   nop
.L80076E50:
/* 77A50 80076E50 27380010 */  addiu      $t8, $t9, 0x10
/* 77A54 80076E54 AFB80018 */  sw         $t8, 0x18($sp)
/* 77A58 80076E58 8F2B0014 */  lw         $t3, 0x14($t9)
/* 77A5C 80076E5C 8F2A0010 */  lw         $t2, 0x10($t9)
/* 77A60 80076E60 016D082B */  sltu       $at, $t3, $t5
/* 77A64 80076E64 014C4023 */  subu       $t0, $t2, $t4
/* 77A68 80076E68 01014023 */  subu       $t0, $t0, $at
/* 77A6C 80076E6C 016D4823 */  subu       $t1, $t3, $t5
/* 77A70 80076E70 AF290014 */  sw         $t1, 0x14($t9)
/* 77A74 80076E74 AF280010 */  sw         $t0, 0x10($t9)
/* 77A78 80076E78 8FAE0024 */  lw         $t6, 0x24($sp)
/* 77A7C 80076E7C 8DC40010 */  lw         $a0, 0x10($t6)
/* 77A80 80076E80 0C01DBC9 */  jal        __osSetTimerIntr
/* 77A84 80076E84 8DC50014 */   lw        $a1, 0x14($t6)
/* 77A88 80076E88 10000022 */  b          .L80076F14
/* 77A8C 80076E8C 00000000 */   nop
.L80076E90:
/* 77A90 80076E90 8FAF0024 */  lw         $t7, 0x24($sp)
/* 77A94 80076E94 8DF80000 */  lw         $t8, 0x0($t7)
/* 77A98 80076E98 8DEA0004 */  lw         $t2, 0x4($t7)
/* 77A9C 80076E9C AD580000 */  sw         $t8, 0x0($t2)
/* 77AA0 80076EA0 8FAB0024 */  lw         $t3, 0x24($sp)
/* 77AA4 80076EA4 8D6C0004 */  lw         $t4, 0x4($t3)
/* 77AA8 80076EA8 8D6D0000 */  lw         $t5, 0x0($t3)
/* 77AAC 80076EAC ADAC0004 */  sw         $t4, 0x4($t5)
/* 77AB0 80076EB0 8FA80024 */  lw         $t0, 0x24($sp)
/* 77AB4 80076EB4 AD000000 */  sw         $zero, 0x0($t0)
/* 77AB8 80076EB8 8FA90024 */  lw         $t1, 0x24($sp)
/* 77ABC 80076EBC AD200004 */  sw         $zero, 0x4($t1)
/* 77AC0 80076EC0 8FB90024 */  lw         $t9, 0x24($sp)
/* 77AC4 80076EC4 8F2E0018 */  lw         $t6, 0x18($t9)
/* 77AC8 80076EC8 11C00005 */  beqz       $t6, .L80076EE0
/* 77ACC 80076ECC 00000000 */   nop
/* 77AD0 80076ED0 01C02025 */  or         $a0, $t6, $zero
/* 77AD4 80076ED4 8F25001C */  lw         $a1, 0x1C($t9)
/* 77AD8 80076ED8 0C01A1B4 */  jal        func_800686D0
/* 77ADC 80076EDC 00003025 */   or        $a2, $zero, $zero
.L80076EE0:
/* 77AE0 80076EE0 8FAF0024 */  lw         $t7, 0x24($sp)
/* 77AE4 80076EE4 8DF80008 */  lw         $t8, 0x8($t7)
/* 77AE8 80076EE8 8DF9000C */  lw         $t9, 0xC($t7)
/* 77AEC 80076EEC 17000003 */  bnez       $t8, .L80076EFC
/* 77AF0 80076EF0 00000000 */   nop
/* 77AF4 80076EF4 1320FFB4 */  beqz       $t9, .L80076DC8
/* 77AF8 80076EF8 00000000 */   nop
.L80076EFC:
/* 77AFC 80076EFC ADF80010 */  sw         $t8, 0x10($t7)
/* 77B00 80076F00 ADF90014 */  sw         $t9, 0x14($t7)
/* 77B04 80076F04 0C01DBE6 */  jal        __osInsertTimer
/* 77B08 80076F08 8FA40024 */   lw        $a0, 0x24($sp)
/* 77B0C 80076F0C 1000FFAE */  b          .L80076DC8
/* 77B10 80076F10 00000000 */   nop
.L80076F14:
/* 77B14 80076F14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77B18 80076F18 27BD0028 */  addiu      $sp, $sp, 0x28
/* 77B1C 80076F1C 03E00008 */  jr         $ra
/* 77B20 80076F20 00000000 */   nop

glabel __osSetTimerIntr
/* 77B24 80076F24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 77B28 80076F28 AFBF0014 */  sw         $ra, 0x14($sp)
/* 77B2C 80076F2C AFA40028 */  sw         $a0, 0x28($sp)
/* 77B30 80076F30 0C01C218 */  jal        __osDisableInt
/* 77B34 80076F34 AFA5002C */   sw        $a1, 0x2C($sp)
/* 77B38 80076F38 0C01DB44 */  jal        func_80076D10
/* 77B3C 80076F3C AFA2001C */   sw        $v0, 0x1C($sp)
/* 77B40 80076F40 3C01801B */  lui        $at, %hi(D_801AD340)
/* 77B44 80076F44 AC22D340 */  sw         $v0, %lo(D_801AD340)($at)
/* 77B48 80076F48 3C0E801B */  lui        $t6, %hi(D_801AD340)
/* 77B4C 80076F4C 8DCED340 */  lw         $t6, %lo(D_801AD340)($t6)
/* 77B50 80076F50 8FA9002C */  lw         $t1, 0x2C($sp)
/* 77B54 80076F54 8FA80028 */  lw         $t0, 0x28($sp)
/* 77B58 80076F58 01C0C825 */  or         $t9, $t6, $zero
/* 77B5C 80076F5C 03295821 */  addu       $t3, $t9, $t1
/* 77B60 80076F60 24180000 */  addiu      $t8, $zero, 0x0
/* 77B64 80076F64 0169082B */  sltu       $at, $t3, $t1
/* 77B68 80076F68 00385021 */  addu       $t2, $at, $t8
/* 77B6C 80076F6C 01485021 */  addu       $t2, $t2, $t0
/* 77B70 80076F70 AFAA0020 */  sw         $t2, 0x20($sp)
/* 77B74 80076F74 AFAB0024 */  sw         $t3, 0x24($sp)
/* 77B78 80076F78 0C01EE0C */  jal        func_8007B830
/* 77B7C 80076F7C 01602025 */   or        $a0, $t3, $zero
/* 77B80 80076F80 0C01C220 */  jal        __osRestoreInt
/* 77B84 80076F84 8FA4001C */   lw        $a0, 0x1C($sp)
/* 77B88 80076F88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77B8C 80076F8C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 77B90 80076F90 03E00008 */  jr         $ra
/* 77B94 80076F94 00000000 */   nop

glabel __osInsertTimer
/* 77B98 80076F98 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 77B9C 80076F9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 77BA0 80076FA0 0C01C218 */  jal        __osDisableInt
/* 77BA4 80076FA4 AFA40038 */   sw        $a0, 0x38($sp)
/* 77BA8 80076FA8 3C0E8009 */  lui        $t6, %hi(D_80094BE0)
/* 77BAC 80076FAC 8DCE4BE0 */  lw         $t6, %lo(D_80094BE0)($t6)
/* 77BB0 80076FB0 AFA20024 */  sw         $v0, 0x24($sp)
/* 77BB4 80076FB4 8FB80038 */  lw         $t8, 0x38($sp)
/* 77BB8 80076FB8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 77BBC 80076FBC AFAF0034 */  sw         $t7, 0x34($sp)
/* 77BC0 80076FC0 8F090014 */  lw         $t1, 0x14($t8)
/* 77BC4 80076FC4 8F080010 */  lw         $t0, 0x10($t8)
/* 77BC8 80076FC8 AFA9002C */  sw         $t1, 0x2C($sp)
/* 77BCC 80076FCC 11EE0029 */  beq        $t7, $t6, .L80077074
/* 77BD0 80076FD0 AFA80028 */   sw        $t0, 0x28($sp)
/* 77BD4 80076FD4 8DEA0010 */  lw         $t2, 0x10($t7)
/* 77BD8 80076FD8 8DEB0014 */  lw         $t3, 0x14($t7)
/* 77BDC 80076FDC 010A082B */  sltu       $at, $t0, $t2
/* 77BE0 80076FE0 14200024 */  bnez       $at, .L80077074
/* 77BE4 80076FE4 0148082B */   sltu      $at, $t2, $t0
/* 77BE8 80076FE8 14200003 */  bnez       $at, .L80076FF8
/* 77BEC 80076FEC 0169082B */   sltu      $at, $t3, $t1
/* 77BF0 80076FF0 10200020 */  beqz       $at, .L80077074
/* 77BF4 80076FF4 00000000 */   nop
.L80076FF8:
/* 77BF8 80076FF8 27B90028 */  addiu      $t9, $sp, 0x28
/* 77BFC 80076FFC 8FB80034 */  lw         $t8, 0x34($sp)
/* 77C00 80077000 AFB90020 */  sw         $t9, 0x20($sp)
/* 77C04 80077004 8F2D0004 */  lw         $t5, 0x4($t9)
/* 77C08 80077008 8F2C0000 */  lw         $t4, 0x0($t9)
/* 77C0C 8007700C 8F0F0014 */  lw         $t7, 0x14($t8)
/* 77C10 80077010 8F0E0010 */  lw         $t6, 0x10($t8)
/* 77C14 80077014 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 77C18 80077018 01AF082B */  sltu       $at, $t5, $t7
/* 77C1C 8007701C 018E4023 */  subu       $t0, $t4, $t6
/* 77C20 80077020 01014023 */  subu       $t0, $t0, $at
/* 77C24 80077024 01AF4823 */  subu       $t1, $t5, $t7
/* 77C28 80077028 AF290004 */  sw         $t1, 0x4($t9)
/* 77C2C 8007702C AF280000 */  sw         $t0, 0x0($t9)
/* 77C30 80077030 8FAA0034 */  lw         $t2, 0x34($sp)
/* 77C34 80077034 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 77C38 80077038 8D4B0000 */  lw         $t3, 0x0($t2)
/* 77C3C 8007703C 1178000D */  beq        $t3, $t8, .L80077074
/* 77C40 80077040 AFAB0034 */   sw        $t3, 0x34($sp)
/* 77C44 80077044 8FAC0028 */  lw         $t4, 0x28($sp)
/* 77C48 80077048 8D6E0010 */  lw         $t6, 0x10($t3)
/* 77C4C 8007704C 8FAD002C */  lw         $t5, 0x2C($sp)
/* 77C50 80077050 8D6F0014 */  lw         $t7, 0x14($t3)
/* 77C54 80077054 01CC082B */  sltu       $at, $t6, $t4
/* 77C58 80077058 1420FFE7 */  bnez       $at, .L80076FF8
/* 77C5C 8007705C 00000000 */   nop
/* 77C60 80077060 018E082B */  sltu       $at, $t4, $t6
/* 77C64 80077064 14200003 */  bnez       $at, .L80077074
/* 77C68 80077068 01ED082B */   sltu      $at, $t7, $t5
/* 77C6C 8007706C 1420FFE2 */  bnez       $at, .L80076FF8
/* 77C70 80077070 00000000 */   nop
.L80077074:
/* 77C74 80077074 8FB90038 */  lw         $t9, 0x38($sp)
/* 77C78 80077078 8FA80028 */  lw         $t0, 0x28($sp)
/* 77C7C 8007707C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 77C80 80077080 3C188009 */  lui        $t8, %hi(D_80094BE0)
/* 77C84 80077084 AF280010 */  sw         $t0, 0x10($t9)
/* 77C88 80077088 AF290014 */  sw         $t1, 0x14($t9)
/* 77C8C 8007708C 8F184BE0 */  lw         $t8, %lo(D_80094BE0)($t8)
/* 77C90 80077090 8FAA0034 */  lw         $t2, 0x34($sp)
/* 77C94 80077094 1158000D */  beq        $t2, $t8, .L800770CC
/* 77C98 80077098 00000000 */   nop
/* 77C9C 8007709C 254B0010 */  addiu      $t3, $t2, 0x10
/* 77CA0 800770A0 AFAB001C */  sw         $t3, 0x1C($sp)
/* 77CA4 800770A4 8D4D0014 */  lw         $t5, 0x14($t2)
/* 77CA8 800770A8 8D4C0010 */  lw         $t4, 0x10($t2)
/* 77CAC 800770AC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 77CB0 800770B0 8FAF002C */  lw         $t7, 0x2C($sp)
/* 77CB4 800770B4 018E4023 */  subu       $t0, $t4, $t6
/* 77CB8 800770B8 01AF082B */  sltu       $at, $t5, $t7
/* 77CBC 800770BC 01014023 */  subu       $t0, $t0, $at
/* 77CC0 800770C0 01AF4823 */  subu       $t1, $t5, $t7
/* 77CC4 800770C4 AD490014 */  sw         $t1, 0x14($t2)
/* 77CC8 800770C8 AD480010 */  sw         $t0, 0x10($t2)
.L800770CC:
/* 77CCC 800770CC 8FB90034 */  lw         $t9, 0x34($sp)
/* 77CD0 800770D0 8FB80038 */  lw         $t8, 0x38($sp)
/* 77CD4 800770D4 AF190000 */  sw         $t9, 0x0($t8)
/* 77CD8 800770D8 8FAB0034 */  lw         $t3, 0x34($sp)
/* 77CDC 800770DC 8FAD0038 */  lw         $t5, 0x38($sp)
/* 77CE0 800770E0 8D6C0004 */  lw         $t4, 0x4($t3)
/* 77CE4 800770E4 ADAC0004 */  sw         $t4, 0x4($t5)
/* 77CE8 800770E8 8FAF0034 */  lw         $t7, 0x34($sp)
/* 77CEC 800770EC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 77CF0 800770F0 8DE80004 */  lw         $t0, 0x4($t7)
/* 77CF4 800770F4 AD0E0000 */  sw         $t6, 0x0($t0)
/* 77CF8 800770F8 8FAA0034 */  lw         $t2, 0x34($sp)
/* 77CFC 800770FC 8FA90038 */  lw         $t1, 0x38($sp)
/* 77D00 80077100 AD490004 */  sw         $t1, 0x4($t2)
/* 77D04 80077104 0C01C220 */  jal        __osRestoreInt
/* 77D08 80077108 8FA40024 */   lw        $a0, 0x24($sp)
/* 77D0C 8007710C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77D10 80077110 8FA20028 */  lw         $v0, 0x28($sp)
/* 77D14 80077114 8FA3002C */  lw         $v1, 0x2C($sp)
/* 77D18 80077118 03E00008 */  jr         $ra
/* 77D1C 8007711C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel __osViInit
/* 77D20 80077120 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 77D24 80077124 AFBF0014 */  sw         $ra, 0x14($sp)
/* 77D28 80077128 3C048009 */  lui        $a0, %hi(D_80094BF0)
/* 77D2C 8007712C 24844BF0 */  addiu      $a0, $a0, %lo(D_80094BF0)
/* 77D30 80077130 0C01B128 */  jal        bzero
/* 77D34 80077134 24050060 */   addiu     $a1, $zero, 0x60
/* 77D38 80077138 3C0E8009 */  lui        $t6, %hi(D_80094BF0)
/* 77D3C 8007713C 25CE4BF0 */  addiu      $t6, $t6, %lo(D_80094BF0)
/* 77D40 80077140 3C018009 */  lui        $at, %hi(D_80094C50)
/* 77D44 80077144 AC2E4C50 */  sw         $t6, %lo(D_80094C50)($at)
/* 77D48 80077148 3C018009 */  lui        $at, %hi(D_80094C54)
/* 77D4C 8007714C 25CF0030 */  addiu      $t7, $t6, 0x30
/* 77D50 80077150 AC2F4C54 */  sw         $t7, %lo(D_80094C54)($at)
/* 77D54 80077154 24180001 */  addiu      $t8, $zero, 0x1
/* 77D58 80077158 A5D80032 */  sh         $t8, 0x32($t6)
/* 77D5C 8007715C 3C088009 */  lui        $t0, %hi(D_80094C50)
/* 77D60 80077160 8D084C50 */  lw         $t0, %lo(D_80094C50)($t0)
/* 77D64 80077164 24190001 */  addiu      $t9, $zero, 0x1
/* 77D68 80077168 3C0A8009 */  lui        $t2, %hi(D_80094C54)
/* 77D6C 8007716C A5190002 */  sh         $t9, 0x2($t0)
/* 77D70 80077170 8D4A4C54 */  lw         $t2, %lo(D_80094C54)($t2)
/* 77D74 80077174 3C098000 */  lui        $t1, (0x80000000 >> 16)
/* 77D78 80077178 3C0C8009 */  lui        $t4, %hi(D_80094C50)
/* 77D7C 8007717C AD490004 */  sw         $t1, 0x4($t2)
/* 77D80 80077180 8D8C4C50 */  lw         $t4, %lo(D_80094C50)($t4)
/* 77D84 80077184 3C0B8000 */  lui        $t3, (0x80000000 >> 16)
/* 77D88 80077188 3C0D8000 */  lui        $t5, %hi(osTvType)
/* 77D8C 8007718C AD8B0004 */  sw         $t3, 0x4($t4)
/* 77D90 80077190 8DAD0300 */  lw         $t5, %lo(osTvType)($t5)
/* 77D94 80077194 15A00007 */  bnez       $t5, .L800771B4
/* 77D98 80077198 00000000 */   nop
/* 77D9C 8007719C 3C188009 */  lui        $t8, %hi(D_80094C54)
/* 77DA0 800771A0 8F184C54 */  lw         $t8, %lo(D_80094C54)($t8)
/* 77DA4 800771A4 3C0F8009 */  lui        $t7, %hi(D_80094CA0)
/* 77DA8 800771A8 25EF4CA0 */  addiu      $t7, $t7, %lo(D_80094CA0)
/* 77DAC 800771AC 10000011 */  b          .L800771F4
/* 77DB0 800771B0 AF0F0008 */   sw        $t7, 0x8($t8)
.L800771B4:
/* 77DB4 800771B4 3C0E8000 */  lui        $t6, %hi(osTvType)
/* 77DB8 800771B8 8DCE0300 */  lw         $t6, %lo(osTvType)($t6)
/* 77DBC 800771BC 24010002 */  addiu      $at, $zero, 0x2
/* 77DC0 800771C0 15C10007 */  bne        $t6, $at, .L800771E0
/* 77DC4 800771C4 00000000 */   nop
/* 77DC8 800771C8 3C088009 */  lui        $t0, %hi(D_80094C54)
/* 77DCC 800771CC 8D084C54 */  lw         $t0, %lo(D_80094C54)($t0)
/* 77DD0 800771D0 3C198009 */  lui        $t9, %hi(D_80094CF0)
/* 77DD4 800771D4 27394CF0 */  addiu      $t9, $t9, %lo(D_80094CF0)
/* 77DD8 800771D8 10000006 */  b          .L800771F4
/* 77DDC 800771DC AD190008 */   sw        $t9, 0x8($t0)
.L800771E0:
/* 77DE0 800771E0 3C0A8009 */  lui        $t2, %hi(D_80094C54)
/* 77DE4 800771E4 8D4A4C54 */  lw         $t2, %lo(D_80094C54)($t2)
/* 77DE8 800771E8 3C098009 */  lui        $t1, %hi(D_80094D40)
/* 77DEC 800771EC 25294D40 */  addiu      $t1, $t1, %lo(D_80094D40)
/* 77DF0 800771F0 AD490008 */  sw         $t1, 0x8($t2)
.L800771F4:
/* 77DF4 800771F4 3C0C8009 */  lui        $t4, %hi(D_80094C54)
/* 77DF8 800771F8 8D8C4C54 */  lw         $t4, %lo(D_80094C54)($t4)
/* 77DFC 800771FC 240B0020 */  addiu      $t3, $zero, 0x20
/* 77E00 80077200 3C0D8009 */  lui        $t5, %hi(D_80094C54)
/* 77E04 80077204 A58B0000 */  sh         $t3, 0x0($t4)
/* 77E08 80077208 8DAD4C54 */  lw         $t5, %lo(D_80094C54)($t5)
/* 77E0C 8007720C 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* 77E10 80077210 8DAF0008 */  lw         $t7, 0x8($t5)
/* 77E14 80077214 8DF80004 */  lw         $t8, 0x4($t7)
/* 77E18 80077218 ADB8000C */  sw         $t8, 0xC($t5)
/* 77E1C 8007721C 8DD90010 */  lw         $t9, %lo(D_A4400010)($t6)
/* 77E20 80077220 2F21000B */  sltiu      $at, $t9, 0xB
/* 77E24 80077224 14200006 */  bnez       $at, .L80077240
/* 77E28 80077228 00000000 */   nop
.L8007722C:
/* 77E2C 8007722C 3C08A440 */  lui        $t0, %hi(D_A4400010)
/* 77E30 80077230 8D090010 */  lw         $t1, %lo(D_A4400010)($t0)
/* 77E34 80077234 2D21000B */  sltiu      $at, $t1, 0xB
/* 77E38 80077238 1020FFFC */  beqz       $at, .L8007722C
/* 77E3C 8007723C 00000000 */   nop
.L80077240:
/* 77E40 80077240 3C0AA440 */  lui        $t2, %hi(D_A4400000)
/* 77E44 80077244 0C01DFF4 */  jal        func_80077FD0
/* 77E48 80077248 AD400000 */   sw        $zero, %lo(D_A4400000)($t2)
/* 77E4C 8007724C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 77E50 80077250 27BD0018 */  addiu      $sp, $sp, 0x18
/* 77E54 80077254 03E00008 */  jr         $ra
/* 77E58 80077258 00000000 */   nop
/* 77E5C 8007725C 00000000 */  nop

glabel __osContRamWrite
/* 77E60 80077260 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 77E64 80077264 8FB80070 */  lw         $t8, 0x70($sp)
/* 77E68 80077268 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 77E6C 8007726C 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 77E70 80077270 240F0002 */  addiu      $t7, $zero, 0x2
/* 77E74 80077274 24010001 */  addiu      $at, $zero, 0x1
/* 77E78 80077278 AFBF001C */  sw         $ra, 0x1C($sp)
/* 77E7C 8007727C AFA40060 */  sw         $a0, 0x60($sp)
/* 77E80 80077280 AFA50064 */  sw         $a1, 0x64($sp)
/* 77E84 80077284 AFA60068 */  sw         $a2, 0x68($sp)
/* 77E88 80077288 AFA7006C */  sw         $a3, 0x6C($sp)
/* 77E8C 8007728C AFB00018 */  sw         $s0, 0x18($sp)
/* 77E90 80077290 AFA0005C */  sw         $zero, 0x5C($sp)
/* 77E94 80077294 AFAE0054 */  sw         $t6, 0x54($sp)
/* 77E98 80077298 13010009 */  beq        $t8, $at, .L800772C0
/* 77E9C 8007729C AFAF0028 */   sw        $t7, 0x28($sp)
/* 77EA0 800772A0 97B9006A */  lhu        $t9, 0x6A($sp)
/* 77EA4 800772A4 2B210007 */  slti       $at, $t9, 0x7
/* 77EA8 800772A8 10200005 */  beqz       $at, .L800772C0
/* 77EAC 800772AC 00000000 */   nop
/* 77EB0 800772B0 13200003 */  beqz       $t9, .L800772C0
/* 77EB4 800772B4 00000000 */   nop
/* 77EB8 800772B8 10000065 */  b          .L80077450
/* 77EBC 800772BC 00001025 */   or        $v0, $zero, $zero
.L800772C0:
/* 77EC0 800772C0 0C01D03C */  jal        func_800740F0
/* 77EC4 800772C4 00000000 */   nop
/* 77EC8 800772C8 24080003 */  addiu      $t0, $zero, 0x3
/* 77ECC 800772CC 3C01801B */  lui        $at, %hi(D_801AABD0)
/* 77ED0 800772D0 A028ABD0 */  sb         $t0, %lo(D_801AABD0)($at)
/* 77ED4 800772D4 8FA40064 */  lw         $a0, 0x64($sp)
/* 77ED8 800772D8 97A5006A */  lhu        $a1, 0x6A($sp)
/* 77EDC 800772DC 0C01DD19 */  jal        func_80077464
/* 77EE0 800772E0 8FA6006C */   lw        $a2, 0x6C($sp)
/* 77EE4 800772E4 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 77EE8 800772E8 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 77EEC 800772EC 0C01D090 */  jal        func_80074240
/* 77EF0 800772F0 24040001 */   addiu     $a0, $zero, 0x1
/* 77EF4 800772F4 AFA2005C */  sw         $v0, 0x5C($sp)
/* 77EF8 800772F8 8FA40060 */  lw         $a0, 0x60($sp)
/* 77EFC 800772FC 00002825 */  or         $a1, $zero, $zero
/* 77F00 80077300 0C019824 */  jal        func_80066090
/* 77F04 80077304 24060001 */   addiu     $a2, $zero, 0x1
.L80077308:
/* 77F08 80077308 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 77F0C 8007730C 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 77F10 80077310 0C01D090 */  jal        func_80074240
/* 77F14 80077314 00002025 */   or        $a0, $zero, $zero
/* 77F18 80077318 AFA2005C */  sw         $v0, 0x5C($sp)
/* 77F1C 8007731C 8FA40060 */  lw         $a0, 0x60($sp)
/* 77F20 80077320 00002825 */  or         $a1, $zero, $zero
/* 77F24 80077324 0C019824 */  jal        func_80066090
/* 77F28 80077328 24060001 */   addiu     $a2, $zero, 0x1
/* 77F2C 8007732C 8FAA0064 */  lw         $t2, 0x64($sp)
/* 77F30 80077330 3C09801B */  lui        $t1, %hi(D_801AD350)
/* 77F34 80077334 2529D350 */  addiu      $t1, $t1, %lo(D_801AD350)
/* 77F38 80077338 1140000C */  beqz       $t2, .L8007736C
/* 77F3C 8007733C AFA90054 */   sw        $t1, 0x54($sp)
/* 77F40 80077340 1940000A */  blez       $t2, .L8007736C
/* 77F44 80077344 AFA00058 */   sw        $zero, 0x58($sp)
.L80077348:
/* 77F48 80077348 8FAD0058 */  lw         $t5, 0x58($sp)
/* 77F4C 8007734C 8FAF0064 */  lw         $t7, 0x64($sp)
/* 77F50 80077350 8FAB0054 */  lw         $t3, 0x54($sp)
/* 77F54 80077354 25AE0001 */  addiu      $t6, $t5, 0x1
/* 77F58 80077358 01CF082A */  slt        $at, $t6, $t7
/* 77F5C 8007735C 256C0001 */  addiu      $t4, $t3, 0x1
/* 77F60 80077360 AFAE0058 */  sw         $t6, 0x58($sp)
/* 77F64 80077364 1420FFF8 */  bnez       $at, .L80077348
/* 77F68 80077368 AFAC0054 */   sw        $t4, 0x54($sp)
.L8007736C:
/* 77F6C 8007736C 8FB90054 */  lw         $t9, 0x54($sp)
/* 77F70 80077370 27B8002C */  addiu      $t8, $sp, 0x2C
/* 77F74 80077374 27290024 */  addiu      $t1, $t9, 0x24
.L80077378:
/* 77F78 80077378 8B210000 */  lwl        $at, 0x0($t9)
/* 77F7C 8007737C 9B210003 */  lwr        $at, 0x3($t9)
/* 77F80 80077380 2739000C */  addiu      $t9, $t9, 0xC
/* 77F84 80077384 2718000C */  addiu      $t8, $t8, 0xC
/* 77F88 80077388 AF01FFF4 */  sw         $at, -0xC($t8)
/* 77F8C 8007738C 8B21FFF8 */  lwl        $at, -0x8($t9)
/* 77F90 80077390 9B21FFFB */  lwr        $at, -0x5($t9)
/* 77F94 80077394 AF01FFF8 */  sw         $at, -0x8($t8)
/* 77F98 80077398 8B21FFFC */  lwl        $at, -0x4($t9)
/* 77F9C 8007739C 9B21FFFF */  lwr        $at, -0x1($t9)
/* 77FA0 800773A0 1729FFF5 */  bne        $t9, $t1, .L80077378
/* 77FA4 800773A4 AF01FFFC */   sw        $at, -0x4($t8)
/* 77FA8 800773A8 8B210000 */  lwl        $at, 0x0($t9)
/* 77FAC 800773AC 9B210003 */  lwr        $at, 0x3($t9)
/* 77FB0 800773B0 AF010000 */  sw         $at, 0x0($t8)
/* 77FB4 800773B4 93AA002E */  lbu        $t2, 0x2E($sp)
/* 77FB8 800773B8 314B00C0 */  andi       $t3, $t2, 0xC0
/* 77FBC 800773BC 000B6103 */  sra        $t4, $t3, 4
/* 77FC0 800773C0 15800014 */  bnez       $t4, .L80077414
/* 77FC4 800773C4 AFAC005C */   sw        $t4, 0x5C($sp)
/* 77FC8 800773C8 0C01DFB4 */  jal        __osContDataCrc
/* 77FCC 800773CC 8FA4006C */   lw        $a0, 0x6C($sp)
/* 77FD0 800773D0 93AD0052 */  lbu        $t5, 0x52($sp)
/* 77FD4 800773D4 104D0011 */  beq        $v0, $t5, .L8007741C
/* 77FD8 800773D8 00000000 */   nop
/* 77FDC 800773DC 8FA40060 */  lw         $a0, 0x60($sp)
/* 77FE0 800773E0 0C01D0BC */  jal        func_800742F0
/* 77FE4 800773E4 8FA50064 */   lw        $a1, 0x64($sp)
/* 77FE8 800773E8 AFA2005C */  sw         $v0, 0x5C($sp)
/* 77FEC 800773EC 8FAE005C */  lw         $t6, 0x5C($sp)
/* 77FF0 800773F0 11C00005 */  beqz       $t6, .L80077408
/* 77FF4 800773F4 00000000 */   nop
/* 77FF8 800773F8 0C01D04D */  jal        func_80074134
/* 77FFC 800773FC 00000000 */   nop
/* 78000 80077400 10000013 */  b          .L80077450
/* 78004 80077404 8FA2005C */   lw        $v0, 0x5C($sp)
.L80077408:
/* 78008 80077408 240F0004 */  addiu      $t7, $zero, 0x4
/* 7800C 8007740C 10000003 */  b          .L8007741C
/* 78010 80077410 AFAF005C */   sw        $t7, 0x5C($sp)
.L80077414:
/* 78014 80077414 24080001 */  addiu      $t0, $zero, 0x1
/* 78018 80077418 AFA8005C */  sw         $t0, 0x5C($sp)
.L8007741C:
/* 7801C 8007741C 8FA9005C */  lw         $t1, 0x5C($sp)
/* 78020 80077420 24010004 */  addiu      $at, $zero, 0x4
/* 78024 80077424 15210007 */  bne        $t1, $at, .L80077444
/* 78028 80077428 00000000 */   nop
/* 7802C 8007742C 8FB90028 */  lw         $t9, 0x28($sp)
/* 78030 80077430 2B300000 */  slti       $s0, $t9, 0x0
/* 78034 80077434 3A100001 */  xori       $s0, $s0, 0x1
/* 78038 80077438 2738FFFF */  addiu      $t8, $t9, -0x1
/* 7803C 8007743C 1600FFB2 */  bnez       $s0, .L80077308
/* 78040 80077440 AFB80028 */   sw        $t8, 0x28($sp)
.L80077444:
/* 78044 80077444 0C01D04D */  jal        func_80074134
/* 78048 80077448 00000000 */   nop
/* 7804C 8007744C 8FA2005C */  lw         $v0, 0x5C($sp)
.L80077450:
/* 78050 80077450 8FBF001C */  lw         $ra, 0x1C($sp)
/* 78054 80077454 8FB00018 */  lw         $s0, 0x18($sp)
/* 78058 80077458 27BD0060 */  addiu      $sp, $sp, 0x60
/* 7805C 8007745C 03E00008 */  jr         $ra
/* 78060 80077460 00000000 */   nop

glabel func_80077464
/* 78064 80077464 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 78068 80077468 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 7806C 8007746C AFBF0014 */  sw         $ra, 0x14($sp)
/* 78070 80077470 AFA40048 */  sw         $a0, 0x48($sp)
/* 78074 80077474 AFA5004C */  sw         $a1, 0x4C($sp)
/* 78078 80077478 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 7807C 8007747C 240F0001 */  addiu      $t7, $zero, 0x1
/* 78080 80077480 3C01801B */  lui        $at, %hi(D_801AD38C)
/* 78084 80077484 241800FF */  addiu      $t8, $zero, 0xFF
/* 78088 80077488 24190023 */  addiu      $t9, $zero, 0x23
/* 7808C 8007748C 24080001 */  addiu      $t0, $zero, 0x1
/* 78090 80077490 24090003 */  addiu      $t1, $zero, 0x3
/* 78094 80077494 AFA60050 */  sw         $a2, 0x50($sp)
/* 78098 80077498 AFAE0044 */  sw         $t6, 0x44($sp)
/* 7809C 8007749C AC2FD38C */  sw         $t7, %lo(D_801AD38C)($at)
/* 780A0 800774A0 A3B8001C */  sb         $t8, 0x1C($sp)
/* 780A4 800774A4 A3B9001D */  sb         $t9, 0x1D($sp)
/* 780A8 800774A8 A3A8001E */  sb         $t0, 0x1E($sp)
/* 780AC 800774AC A3A9001F */  sb         $t1, 0x1F($sp)
/* 780B0 800774B0 0C01DF88 */  jal        __osContAddressCrc
/* 780B4 800774B4 97A4004E */   lhu       $a0, 0x4E($sp)
/* 780B8 800774B8 97AA004E */  lhu        $t2, 0x4E($sp)
/* 780BC 800774BC 240D00FF */  addiu      $t5, $zero, 0xFF
/* 780C0 800774C0 A3AD0042 */  sb         $t5, 0x42($sp)
/* 780C4 800774C4 000A5940 */  sll        $t3, $t2, 5
/* 780C8 800774C8 004B6025 */  or         $t4, $v0, $t3
/* 780CC 800774CC A7AC0020 */  sh         $t4, 0x20($sp)
/* 780D0 800774D0 AFA00018 */  sw         $zero, 0x18($sp)
.L800774D4:
/* 780D4 800774D4 8FAE0050 */  lw         $t6, 0x50($sp)
/* 780D8 800774D8 8FB80018 */  lw         $t8, 0x18($sp)
/* 780DC 800774DC 91CF0000 */  lbu        $t7, 0x0($t6)
/* 780E0 800774E0 03B8C821 */  addu       $t9, $sp, $t8
/* 780E4 800774E4 A32F0022 */  sb         $t7, 0x22($t9)
/* 780E8 800774E8 8FAA0018 */  lw         $t2, 0x18($sp)
/* 780EC 800774EC 8FA80050 */  lw         $t0, 0x50($sp)
/* 780F0 800774F0 254B0001 */  addiu      $t3, $t2, 0x1
/* 780F4 800774F4 29610020 */  slti       $at, $t3, 0x20
/* 780F8 800774F8 25090001 */  addiu      $t1, $t0, 0x1
/* 780FC 800774FC AFAB0018 */  sw         $t3, 0x18($sp)
/* 78100 80077500 1420FFF4 */  bnez       $at, .L800774D4
/* 78104 80077504 AFA90050 */   sw        $t1, 0x50($sp)
/* 78108 80077508 8FAC0048 */  lw         $t4, 0x48($sp)
/* 7810C 8007750C 1180000E */  beqz       $t4, .L80077548
/* 78110 80077510 00000000 */   nop
/* 78114 80077514 1980000C */  blez       $t4, .L80077548
/* 78118 80077518 AFA00018 */   sw        $zero, 0x18($sp)
.L8007751C:
/* 7811C 8007751C 8FAD0044 */  lw         $t5, 0x44($sp)
/* 78120 80077520 A1A00000 */  sb         $zero, 0x0($t5)
/* 78124 80077524 8FB80018 */  lw         $t8, 0x18($sp)
/* 78128 80077528 8FA80048 */  lw         $t0, 0x48($sp)
/* 7812C 8007752C 8FAE0044 */  lw         $t6, 0x44($sp)
/* 78130 80077530 27190001 */  addiu      $t9, $t8, 0x1
/* 78134 80077534 0328082A */  slt        $at, $t9, $t0
/* 78138 80077538 25CF0001 */  addiu      $t7, $t6, 0x1
/* 7813C 8007753C AFAF0044 */  sw         $t7, 0x44($sp)
/* 78140 80077540 1420FFF6 */  bnez       $at, .L8007751C
/* 78144 80077544 AFB90018 */   sw        $t9, 0x18($sp)
.L80077548:
/* 78148 80077548 27AA001C */  addiu      $t2, $sp, 0x1C
/* 7814C 8007754C 254C0024 */  addiu      $t4, $t2, 0x24
/* 78150 80077550 8FA90044 */  lw         $t1, 0x44($sp)
.L80077554:
/* 78154 80077554 8D410000 */  lw         $at, 0x0($t2)
/* 78158 80077558 254A000C */  addiu      $t2, $t2, 0xC
/* 7815C 8007755C 2529000C */  addiu      $t1, $t1, 0xC
/* 78160 80077560 A921FFF4 */  swl        $at, -0xC($t1)
/* 78164 80077564 B921FFF7 */  swr        $at, -0x9($t1)
/* 78168 80077568 8D41FFF8 */  lw         $at, -0x8($t2)
/* 7816C 8007756C A921FFF8 */  swl        $at, -0x8($t1)
/* 78170 80077570 B921FFFB */  swr        $at, -0x5($t1)
/* 78174 80077574 8D41FFFC */  lw         $at, -0x4($t2)
/* 78178 80077578 A921FFFC */  swl        $at, -0x4($t1)
/* 7817C 8007757C 154CFFF5 */  bne        $t2, $t4, .L80077554
/* 78180 80077580 B921FFFF */   swr       $at, -0x1($t1)
/* 78184 80077584 8D410000 */  lw         $at, 0x0($t2)
/* 78188 80077588 240F00FE */  addiu      $t7, $zero, 0xFE
/* 7818C 8007758C A9210000 */  swl        $at, 0x0($t1)
/* 78190 80077590 B9210003 */  swr        $at, 0x3($t1)
/* 78194 80077594 8FAD0044 */  lw         $t5, 0x44($sp)
/* 78198 80077598 25AE0028 */  addiu      $t6, $t5, 0x28
/* 7819C 8007759C AFAE0044 */  sw         $t6, 0x44($sp)
/* 781A0 800775A0 A1CF0000 */  sb         $t7, 0x0($t6)
/* 781A4 800775A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 781A8 800775A8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 781AC 800775AC 03E00008 */  jr         $ra
/* 781B0 800775B0 00000000 */   nop
/* 781B4 800775B4 00000000 */  nop
/* 781B8 800775B8 00000000 */  nop
/* 781BC 800775BC 00000000 */  nop

glabel osEepromWrite
/* 781C0 800775C0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 781C4 800775C4 3C0E801B */  lui        $t6, %hi(D_801AAC30)
/* 781C8 800775C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 781CC 800775CC 25CEAC30 */  addiu      $t6, $t6, %lo(D_801AAC30)
/* 781D0 800775D0 AFA40048 */  sw         $a0, 0x48($sp)
/* 781D4 800775D4 AFA5004C */  sw         $a1, 0x4C($sp)
/* 781D8 800775D8 AFA60050 */  sw         $a2, 0x50($sp)
/* 781DC 800775DC AFB00018 */  sw         $s0, 0x18($sp)
/* 781E0 800775E0 AFA00044 */  sw         $zero, 0x44($sp)
/* 781E4 800775E4 0C01D03C */  jal        func_800740F0
/* 781E8 800775E8 AFAE0038 */   sw        $t6, 0x38($sp)
/* 781EC 800775EC 8FA40048 */  lw         $a0, 0x48($sp)
/* 781F0 800775F0 0C01DE2E */  jal        __osEepStatus
/* 781F4 800775F4 27A50028 */   addiu     $a1, $sp, 0x28
/* 781F8 800775F8 AFA20044 */  sw         $v0, 0x44($sp)
/* 781FC 800775FC 8FA40048 */  lw         $a0, 0x48($sp)
/* 78200 80077600 0C01DE2E */  jal        __osEepStatus
/* 78204 80077604 27A50028 */   addiu     $a1, $sp, 0x28
/* 78208 80077608 97AF0028 */  lhu        $t7, 0x28($sp)
/* 7820C 8007760C AFA20044 */  sw         $v0, 0x44($sp)
/* 78210 80077610 8FB90044 */  lw         $t9, 0x44($sp)
/* 78214 80077614 31F8C000 */  andi       $t8, $t7, 0xC000
/* 78218 80077618 A7B8003E */  sh         $t8, 0x3E($sp)
/* 7821C 8007761C 13200005 */  beqz       $t9, .L80077634
/* 78220 80077620 00000000 */   nop
/* 78224 80077624 0C01D04D */  jal        func_80074134
/* 78228 80077628 00000000 */   nop
/* 7822C 8007762C 1000005A */  b          .L80077798
/* 78230 80077630 24020008 */   addiu     $v0, $zero, 0x8
.L80077634:
/* 78234 80077634 97B0003E */  lhu        $s0, 0x3E($sp)
/* 78238 80077638 34018000 */  ori        $at, $zero, 0x8000
/* 7823C 8007763C 12010005 */  beq        $s0, $at, .L80077654
/* 78240 80077640 3401C000 */   ori       $at, $zero, 0xC000
/* 78244 80077644 1201000B */  beq        $s0, $at, .L80077674
/* 78248 80077648 00000000 */   nop
/* 7824C 8007764C 10000011 */  b          .L80077694
/* 78250 80077650 00000000 */   nop
.L80077654:
/* 78254 80077654 93A8004F */  lbu        $t0, 0x4F($sp)
/* 78258 80077658 29010041 */  slti       $at, $t0, 0x41
/* 7825C 8007765C 14200011 */  bnez       $at, .L800776A4
/* 78260 80077660 00000000 */   nop
/* 78264 80077664 0C01D04D */  jal        func_80074134
/* 78268 80077668 00000000 */   nop
/* 7826C 8007766C 1000004A */  b          .L80077798
/* 78270 80077670 2402FFFF */   addiu     $v0, $zero, -0x1
.L80077674:
/* 78274 80077674 93A9004F */  lbu        $t1, 0x4F($sp)
/* 78278 80077678 29210101 */  slti       $at, $t1, 0x101
/* 7827C 8007767C 14200009 */  bnez       $at, .L800776A4
/* 78280 80077680 00000000 */   nop
/* 78284 80077684 0C01D04D */  jal        func_80074134
/* 78288 80077688 00000000 */   nop
/* 7828C 8007768C 10000042 */  b          .L80077798
/* 78290 80077690 2402FFFF */   addiu     $v0, $zero, -0x1
.L80077694:
/* 78294 80077694 0C01D04D */  jal        func_80074134
/* 78298 80077698 00000000 */   nop
/* 7829C 8007769C 1000003E */  b          .L80077798
/* 782A0 800776A0 24020008 */   addiu     $v0, $zero, 0x8
.L800776A4:
/* 782A4 800776A4 93AA002A */  lbu        $t2, 0x2A($sp)
/* 782A8 800776A8 314B0080 */  andi       $t3, $t2, 0x80
/* 782AC 800776AC 11600008 */  beqz       $t3, .L800776D0
/* 782B0 800776B0 00000000 */   nop
.L800776B4:
/* 782B4 800776B4 8FA40048 */  lw         $a0, 0x48($sp)
/* 782B8 800776B8 0C01DE2E */  jal        __osEepStatus
/* 782BC 800776BC 27A50028 */   addiu     $a1, $sp, 0x28
/* 782C0 800776C0 93AC002A */  lbu        $t4, 0x2A($sp)
/* 782C4 800776C4 318D0080 */  andi       $t5, $t4, 0x80
/* 782C8 800776C8 15A0FFFA */  bnez       $t5, .L800776B4
/* 782CC 800776CC 00000000 */   nop
.L800776D0:
/* 782D0 800776D0 93A4004F */  lbu        $a0, 0x4F($sp)
/* 782D4 800776D4 0C01DDEB */  jal        func_800777AC
/* 782D8 800776D8 8FA50050 */   lw        $a1, 0x50($sp)
/* 782DC 800776DC 3C05801B */  lui        $a1, %hi(D_801AAC30)
/* 782E0 800776E0 24A5AC30 */  addiu      $a1, $a1, %lo(D_801AAC30)
/* 782E4 800776E4 0C01D090 */  jal        func_80074240
/* 782E8 800776E8 24040001 */   addiu     $a0, $zero, 0x1
/* 782EC 800776EC AFA20044 */  sw         $v0, 0x44($sp)
/* 782F0 800776F0 8FA40048 */  lw         $a0, 0x48($sp)
/* 782F4 800776F4 00002825 */  or         $a1, $zero, $zero
/* 782F8 800776F8 0C019824 */  jal        func_80066090
/* 782FC 800776FC 24060001 */   addiu     $a2, $zero, 0x1
/* 78300 80077700 3C05801B */  lui        $a1, %hi(D_801AAC30)
/* 78304 80077704 24A5AC30 */  addiu      $a1, $a1, %lo(D_801AAC30)
/* 78308 80077708 0C01D090 */  jal        func_80074240
/* 7830C 8007770C 00002025 */   or        $a0, $zero, $zero
/* 78310 80077710 240E0005 */  addiu      $t6, $zero, 0x5
/* 78314 80077714 3C01801B */  lui        $at, %hi(D_801AABD0)
/* 78318 80077718 AFA20044 */  sw         $v0, 0x44($sp)
/* 7831C 8007771C A02EABD0 */  sb         $t6, %lo(D_801AABD0)($at)
/* 78320 80077720 8FA40048 */  lw         $a0, 0x48($sp)
/* 78324 80077724 00002825 */  or         $a1, $zero, $zero
/* 78328 80077728 0C019824 */  jal        func_80066090
/* 7832C 8007772C 24060001 */   addiu     $a2, $zero, 0x1
/* 78330 80077730 AFA00040 */  sw         $zero, 0x40($sp)
.L80077734:
/* 78334 80077734 8FB90040 */  lw         $t9, 0x40($sp)
/* 78338 80077738 8FAF0038 */  lw         $t7, 0x38($sp)
/* 7833C 8007773C 27280001 */  addiu      $t0, $t9, 0x1
/* 78340 80077740 29010004 */  slti       $at, $t0, 0x4
/* 78344 80077744 25F80001 */  addiu      $t8, $t7, 0x1
/* 78348 80077748 AFA80040 */  sw         $t0, 0x40($sp)
/* 7834C 8007774C 1420FFF9 */  bnez       $at, .L80077734
/* 78350 80077750 AFB80038 */   sw        $t8, 0x38($sp)
/* 78354 80077754 8FAA0038 */  lw         $t2, 0x38($sp)
/* 78358 80077758 27A9002C */  addiu      $t1, $sp, 0x2C
/* 7835C 8007775C 89410000 */  lwl        $at, 0x0($t2)
/* 78360 80077760 99410003 */  lwr        $at, 0x3($t2)
/* 78364 80077764 AD210000 */  sw         $at, 0x0($t1)
/* 78368 80077768 894C0004 */  lwl        $t4, 0x4($t2)
/* 7836C 8007776C 994C0007 */  lwr        $t4, 0x7($t2)
/* 78370 80077770 AD2C0004 */  sw         $t4, 0x4($t1)
/* 78374 80077774 89410008 */  lwl        $at, 0x8($t2)
/* 78378 80077778 9941000B */  lwr        $at, 0xB($t2)
/* 7837C 8007777C AD210008 */  sw         $at, 0x8($t1)
/* 78380 80077780 93AD002D */  lbu        $t5, 0x2D($sp)
/* 78384 80077784 31AE00C0 */  andi       $t6, $t5, 0xC0
/* 78388 80077788 000E7903 */  sra        $t7, $t6, 4
/* 7838C 8007778C 0C01D04D */  jal        func_80074134
/* 78390 80077790 AFAF0044 */   sw        $t7, 0x44($sp)
/* 78394 80077794 8FA20044 */  lw         $v0, 0x44($sp)
.L80077798:
/* 78398 80077798 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7839C 8007779C 8FB00018 */  lw         $s0, 0x18($sp)
/* 783A0 800777A0 27BD0048 */  addiu      $sp, $sp, 0x48
/* 783A4 800777A4 03E00008 */  jr         $ra
/* 783A8 800777A8 00000000 */   nop

glabel func_800777AC
/* 783AC 800777AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 783B0 800777B0 3C0E801B */  lui        $t6, %hi(D_801AAC30)
/* 783B4 800777B4 25CEAC30 */  addiu      $t6, $t6, %lo(D_801AAC30)
/* 783B8 800777B8 308400FF */  andi       $a0, $a0, 0xFF
/* 783BC 800777BC AFAE0014 */  sw         $t6, 0x14($sp)
/* 783C0 800777C0 AFA00004 */  sw         $zero, 0x4($sp)
.L800777C4:
/* 783C4 800777C4 8FB80004 */  lw         $t8, 0x4($sp)
/* 783C8 800777C8 8FA80004 */  lw         $t0, 0x4($sp)
/* 783CC 800777CC 3C01801B */  lui        $at, %hi(D_801AAC30)
/* 783D0 800777D0 0018C880 */  sll        $t9, $t8, 2
/* 783D4 800777D4 00390821 */  addu       $at, $at, $t9
/* 783D8 800777D8 240F00FF */  addiu      $t7, $zero, 0xFF
/* 783DC 800777DC AC2FAC30 */  sw         $t7, %lo(D_801AAC30)($at)
/* 783E0 800777E0 25090001 */  addiu      $t1, $t0, 0x1
/* 783E4 800777E4 2921000F */  slti       $at, $t1, 0xF
/* 783E8 800777E8 1420FFF6 */  bnez       $at, .L800777C4
/* 783EC 800777EC AFA90004 */   sw        $t1, 0x4($sp)
/* 783F0 800777F0 240A0001 */  addiu      $t2, $zero, 0x1
/* 783F4 800777F4 3C01801B */  lui        $at, %hi(D_801AAC6C)
/* 783F8 800777F8 240B000A */  addiu      $t3, $zero, 0xA
/* 783FC 800777FC 240C0001 */  addiu      $t4, $zero, 0x1
/* 78400 80077800 240D0005 */  addiu      $t5, $zero, 0x5
/* 78404 80077804 AC2AAC6C */  sw         $t2, %lo(D_801AAC6C)($at)
/* 78408 80077808 A3AB0008 */  sb         $t3, 0x8($sp)
/* 7840C 8007780C A3AC0009 */  sb         $t4, 0x9($sp)
/* 78410 80077810 A3AD000A */  sb         $t5, 0xA($sp)
/* 78414 80077814 A3A4000B */  sb         $a0, 0xB($sp)
/* 78418 80077818 AFA00004 */  sw         $zero, 0x4($sp)
.L8007781C:
/* 7841C 8007781C 8FB80004 */  lw         $t8, 0x4($sp)
/* 78420 80077820 90AE0000 */  lbu        $t6, 0x0($a1)
/* 78424 80077824 24A50001 */  addiu      $a1, $a1, 0x1
/* 78428 80077828 03B87821 */  addu       $t7, $sp, $t8
/* 7842C 8007782C A1EE000C */  sb         $t6, 0xC($t7)
/* 78430 80077830 8FB90004 */  lw         $t9, 0x4($sp)
/* 78434 80077834 27280001 */  addiu      $t0, $t9, 0x1
/* 78438 80077838 29010008 */  slti       $at, $t0, 0x8
/* 7843C 8007783C 1420FFF7 */  bnez       $at, .L8007781C
/* 78440 80077840 AFA80004 */   sw        $t0, 0x4($sp)
/* 78444 80077844 AFA00004 */  sw         $zero, 0x4($sp)
.L80077848:
/* 78448 80077848 8FA90014 */  lw         $t1, 0x14($sp)
/* 7844C 8007784C A1200000 */  sb         $zero, 0x0($t1)
/* 78450 80077850 8FAC0004 */  lw         $t4, 0x4($sp)
/* 78454 80077854 8FAA0014 */  lw         $t2, 0x14($sp)
/* 78458 80077858 258D0001 */  addiu      $t5, $t4, 0x1
/* 7845C 8007785C 29A10004 */  slti       $at, $t5, 0x4
/* 78460 80077860 254B0001 */  addiu      $t3, $t2, 0x1
/* 78464 80077864 AFAD0004 */  sw         $t5, 0x4($sp)
/* 78468 80077868 1420FFF7 */  bnez       $at, .L80077848
/* 7846C 8007786C AFAB0014 */   sw        $t3, 0x14($sp)
/* 78470 80077870 27B80008 */  addiu      $t8, $sp, 0x8
/* 78474 80077874 8F010000 */  lw         $at, 0x0($t8)
/* 78478 80077878 8FAE0014 */  lw         $t6, 0x14($sp)
/* 7847C 8007787C 240A00FE */  addiu      $t2, $zero, 0xFE
/* 78480 80077880 A9C10000 */  swl        $at, 0x0($t6)
/* 78484 80077884 B9C10003 */  swr        $at, 0x3($t6)
/* 78488 80077888 8F190004 */  lw         $t9, 0x4($t8)
/* 7848C 8007788C A9D90004 */  swl        $t9, 0x4($t6)
/* 78490 80077890 B9D90007 */  swr        $t9, 0x7($t6)
/* 78494 80077894 8F010008 */  lw         $at, 0x8($t8)
/* 78498 80077898 A9C10008 */  swl        $at, 0x8($t6)
/* 7849C 8007789C B9C1000B */  swr        $at, 0xB($t6)
/* 784A0 800778A0 8FA80014 */  lw         $t0, 0x14($sp)
/* 784A4 800778A4 2509000C */  addiu      $t1, $t0, 0xC
/* 784A8 800778A8 AFA90014 */  sw         $t1, 0x14($sp)
/* 784AC 800778AC A12A0000 */  sb         $t2, 0x0($t1)
/* 784B0 800778B0 03E00008 */  jr         $ra
/* 784B4 800778B4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel __osEepStatus
/* 784B8 800778B8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 784BC 800778BC 3C0E801B */  lui        $t6, %hi(D_801AAC30)
/* 784C0 800778C0 25CEAC30 */  addiu      $t6, $t6, %lo(D_801AAC30)
/* 784C4 800778C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 784C8 800778C8 AFA40030 */  sw         $a0, 0x30($sp)
/* 784CC 800778CC AFA50034 */  sw         $a1, 0x34($sp)
/* 784D0 800778D0 AFA0002C */  sw         $zero, 0x2C($sp)
/* 784D4 800778D4 AFAE0024 */  sw         $t6, 0x24($sp)
/* 784D8 800778D8 AFA00028 */  sw         $zero, 0x28($sp)
.L800778DC:
/* 784DC 800778DC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 784E0 800778E0 8FB90028 */  lw         $t9, 0x28($sp)
/* 784E4 800778E4 3C01801B */  lui        $at, %hi(D_801AAC30)
/* 784E8 800778E8 000FC080 */  sll        $t8, $t7, 2
/* 784EC 800778EC 00380821 */  addu       $at, $at, $t8
/* 784F0 800778F0 AC20AC30 */  sw         $zero, %lo(D_801AAC30)($at)
/* 784F4 800778F4 27280001 */  addiu      $t0, $t9, 0x1
/* 784F8 800778F8 29010010 */  slti       $at, $t0, 0x10
/* 784FC 800778FC 1420FFF7 */  bnez       $at, .L800778DC
/* 78500 80077900 AFA80028 */   sw        $t0, 0x28($sp)
/* 78504 80077904 3C0A801B */  lui        $t2, %hi(D_801AAC30)
/* 78508 80077908 24090001 */  addiu      $t1, $zero, 0x1
/* 7850C 8007790C 3C01801B */  lui        $at, %hi(D_801AAC6C)
/* 78510 80077910 254AAC30 */  addiu      $t2, $t2, %lo(D_801AAC30)
/* 78514 80077914 AC29AC6C */  sw         $t1, %lo(D_801AAC6C)($at)
/* 78518 80077918 AFAA0024 */  sw         $t2, 0x24($sp)
/* 7851C 8007791C AFA00028 */  sw         $zero, 0x28($sp)
.L80077920:
/* 78520 80077920 8FAB0024 */  lw         $t3, 0x24($sp)
/* 78524 80077924 A1600000 */  sb         $zero, 0x0($t3)
/* 78528 80077928 8FAE0028 */  lw         $t6, 0x28($sp)
/* 7852C 8007792C 8FAC0024 */  lw         $t4, 0x24($sp)
/* 78530 80077930 25CF0001 */  addiu      $t7, $t6, 0x1
/* 78534 80077934 29E10004 */  slti       $at, $t7, 0x4
/* 78538 80077938 258D0001 */  addiu      $t5, $t4, 0x1
/* 7853C 8007793C AFAF0028 */  sw         $t7, 0x28($sp)
/* 78540 80077940 1420FFF7 */  bnez       $at, .L80077920
/* 78544 80077944 AFAD0024 */   sw        $t5, 0x24($sp)
/* 78548 80077948 241800FF */  addiu      $t8, $zero, 0xFF
/* 7854C 8007794C 24190001 */  addiu      $t9, $zero, 0x1
/* 78550 80077950 24080003 */  addiu      $t0, $zero, 0x3
/* 78554 80077954 240900FF */  addiu      $t1, $zero, 0xFF
/* 78558 80077958 240A00FF */  addiu      $t2, $zero, 0xFF
/* 7855C 8007795C 240B00FF */  addiu      $t3, $zero, 0xFF
/* 78560 80077960 240C00FF */  addiu      $t4, $zero, 0xFF
/* 78564 80077964 A3B8001C */  sb         $t8, 0x1C($sp)
/* 78568 80077968 A3B9001D */  sb         $t9, 0x1D($sp)
/* 7856C 8007796C A3A8001E */  sb         $t0, 0x1E($sp)
/* 78570 80077970 A3A0001F */  sb         $zero, 0x1F($sp)
/* 78574 80077974 A3A90020 */  sb         $t1, 0x20($sp)
/* 78578 80077978 A3AA0021 */  sb         $t2, 0x21($sp)
/* 7857C 8007797C A3AB0022 */  sb         $t3, 0x22($sp)
/* 78580 80077980 A3AC0023 */  sb         $t4, 0x23($sp)
/* 78584 80077984 27AE001C */  addiu      $t6, $sp, 0x1C
/* 78588 80077988 8DC10000 */  lw         $at, 0x0($t6)
/* 7858C 8007798C 8FAD0024 */  lw         $t5, 0x24($sp)
/* 78590 80077990 240A00FE */  addiu      $t2, $zero, 0xFE
/* 78594 80077994 3C05801B */  lui        $a1, %hi(D_801AAC30)
/* 78598 80077998 A9A10000 */  swl        $at, 0x0($t5)
/* 7859C 8007799C B9A10003 */  swr        $at, 0x3($t5)
/* 785A0 800779A0 8DD90004 */  lw         $t9, 0x4($t6)
/* 785A4 800779A4 24A5AC30 */  addiu      $a1, $a1, %lo(D_801AAC30)
/* 785A8 800779A8 24040001 */  addiu      $a0, $zero, 0x1
/* 785AC 800779AC A9B90004 */  swl        $t9, 0x4($t5)
/* 785B0 800779B0 B9B90007 */  swr        $t9, 0x7($t5)
/* 785B4 800779B4 8FA80024 */  lw         $t0, 0x24($sp)
/* 785B8 800779B8 25090008 */  addiu      $t1, $t0, 0x8
/* 785BC 800779BC AFA90024 */  sw         $t1, 0x24($sp)
/* 785C0 800779C0 0C01D090 */  jal        func_80074240
/* 785C4 800779C4 A12A0000 */   sb        $t2, 0x0($t1)
/* 785C8 800779C8 AFA2002C */  sw         $v0, 0x2C($sp)
/* 785CC 800779CC 8FA40030 */  lw         $a0, 0x30($sp)
/* 785D0 800779D0 00002825 */  or         $a1, $zero, $zero
/* 785D4 800779D4 0C019824 */  jal        func_80066090
/* 785D8 800779D8 24060001 */   addiu     $a2, $zero, 0x1
/* 785DC 800779DC 3C01801B */  lui        $at, %hi(D_801AABD0)
/* 785E0 800779E0 3C05801B */  lui        $a1, %hi(D_801AAC30)
/* 785E4 800779E4 A020ABD0 */  sb         $zero, %lo(D_801AABD0)($at)
/* 785E8 800779E8 24A5AC30 */  addiu      $a1, $a1, %lo(D_801AAC30)
/* 785EC 800779EC 0C01D090 */  jal        func_80074240
/* 785F0 800779F0 00002025 */   or        $a0, $zero, $zero
/* 785F4 800779F4 AFA2002C */  sw         $v0, 0x2C($sp)
/* 785F8 800779F8 8FA40030 */  lw         $a0, 0x30($sp)
/* 785FC 800779FC 00002825 */  or         $a1, $zero, $zero
/* 78600 80077A00 0C019824 */  jal        func_80066090
/* 78604 80077A04 24060001 */   addiu     $a2, $zero, 0x1
/* 78608 80077A08 8FAB002C */  lw         $t3, 0x2C($sp)
/* 7860C 80077A0C 11600003 */  beqz       $t3, .L80077A1C
/* 78610 80077A10 00000000 */   nop
/* 78614 80077A14 1000002C */  b          .L80077AC8
/* 78618 80077A18 01601025 */   or        $v0, $t3, $zero
.L80077A1C:
/* 7861C 80077A1C 3C0C801B */  lui        $t4, %hi(D_801AAC30)
/* 78620 80077A20 258CAC30 */  addiu      $t4, $t4, %lo(D_801AAC30)
/* 78624 80077A24 AFAC0024 */  sw         $t4, 0x24($sp)
/* 78628 80077A28 AFA00028 */  sw         $zero, 0x28($sp)
.L80077A2C:
/* 7862C 80077A2C 8FB80024 */  lw         $t8, 0x24($sp)
/* 78630 80077A30 A3000000 */  sb         $zero, 0x0($t8)
/* 78634 80077A34 8FAE0028 */  lw         $t6, 0x28($sp)
/* 78638 80077A38 8FAF0024 */  lw         $t7, 0x24($sp)
/* 7863C 80077A3C 25D90001 */  addiu      $t9, $t6, 0x1
/* 78640 80077A40 2B210004 */  slti       $at, $t9, 0x4
/* 78644 80077A44 25ED0001 */  addiu      $t5, $t7, 0x1
/* 78648 80077A48 AFB90028 */  sw         $t9, 0x28($sp)
/* 7864C 80077A4C 1420FFF7 */  bnez       $at, .L80077A2C
/* 78650 80077A50 AFAD0024 */   sw        $t5, 0x24($sp)
/* 78654 80077A54 8FAA0024 */  lw         $t2, 0x24($sp)
/* 78658 80077A58 27A8001C */  addiu      $t0, $sp, 0x1C
/* 7865C 80077A5C 89410000 */  lwl        $at, 0x0($t2)
/* 78660 80077A60 99410003 */  lwr        $at, 0x3($t2)
/* 78664 80077A64 AD010000 */  sw         $at, 0x0($t0)
/* 78668 80077A68 894B0004 */  lwl        $t3, 0x4($t2)
/* 7866C 80077A6C 994B0007 */  lwr        $t3, 0x7($t2)
/* 78670 80077A70 AD0B0004 */  sw         $t3, 0x4($t0)
/* 78674 80077A74 93AC001E */  lbu        $t4, 0x1E($sp)
/* 78678 80077A78 8FAD0034 */  lw         $t5, 0x34($sp)
/* 7867C 80077A7C 319800C0 */  andi       $t8, $t4, 0xC0
/* 78680 80077A80 00187903 */  sra        $t7, $t8, 4
/* 78684 80077A84 A1AF0003 */  sb         $t7, 0x3($t5)
/* 78688 80077A88 93AE0021 */  lbu        $t6, 0x21($sp)
/* 7868C 80077A8C 93A90020 */  lbu        $t1, 0x20($sp)
/* 78690 80077A90 8FAA0034 */  lw         $t2, 0x34($sp)
/* 78694 80077A94 000ECA00 */  sll        $t9, $t6, 8
/* 78698 80077A98 03294025 */  or         $t0, $t9, $t1
/* 7869C 80077A9C A5480000 */  sh         $t0, 0x0($t2)
/* 786A0 80077AA0 8FAC0034 */  lw         $t4, 0x34($sp)
/* 786A4 80077AA4 93AB0022 */  lbu        $t3, 0x22($sp)
/* 786A8 80077AA8 A18B0002 */  sb         $t3, 0x2($t4)
/* 786AC 80077AAC 8FB80034 */  lw         $t8, 0x34($sp)
/* 786B0 80077AB0 930F0003 */  lbu        $t7, 0x3($t8)
/* 786B4 80077AB4 11E00003 */  beqz       $t7, .L80077AC4
/* 786B8 80077AB8 00000000 */   nop
/* 786BC 80077ABC 10000002 */  b          .L80077AC8
/* 786C0 80077AC0 01E01025 */   or        $v0, $t7, $zero
.L80077AC4:
/* 786C4 80077AC4 00001025 */  or         $v0, $zero, $zero
.L80077AC8:
/* 786C8 80077AC8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 786CC 80077ACC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 786D0 80077AD0 03E00008 */  jr         $ra
/* 786D4 80077AD4 00000000 */   nop
/* 786D8 80077AD8 00000000 */  nop
/* 786DC 80077ADC 00000000 */  nop

glabel osPfsIsPlug
/* 786E0 80077AE0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 786E4 80077AE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 786E8 80077AE8 240E0003 */  addiu      $t6, $zero, 0x3
/* 786EC 80077AEC AFA40040 */  sw         $a0, 0x40($sp)
/* 786F0 80077AF0 AFA50044 */  sw         $a1, 0x44($sp)
/* 786F4 80077AF4 AFA0003C */  sw         $zero, 0x3C($sp)
/* 786F8 80077AF8 A3A0001F */  sb         $zero, 0x1F($sp)
/* 786FC 80077AFC 0C01D03C */  jal        func_800740F0
/* 78700 80077B00 AFAE0018 */   sw        $t6, 0x18($sp)
.L80077B04:
/* 78704 80077B04 0C01DF20 */  jal        __osPfsRequestData
/* 78708 80077B08 00002025 */   or        $a0, $zero, $zero
/* 7870C 80077B0C 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 78710 80077B10 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 78714 80077B14 0C01D090 */  jal        func_80074240
/* 78718 80077B18 24040001 */   addiu     $a0, $zero, 0x1
/* 7871C 80077B1C AFA2003C */  sw         $v0, 0x3C($sp)
/* 78720 80077B20 8FA40040 */  lw         $a0, 0x40($sp)
/* 78724 80077B24 27A50038 */  addiu      $a1, $sp, 0x38
/* 78728 80077B28 0C019824 */  jal        func_80066090
/* 7872C 80077B2C 24060001 */   addiu     $a2, $zero, 0x1
/* 78730 80077B30 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 78734 80077B34 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 78738 80077B38 0C01D090 */  jal        func_80074240
/* 7873C 80077B3C 00002025 */   or        $a0, $zero, $zero
/* 78740 80077B40 AFA2003C */  sw         $v0, 0x3C($sp)
/* 78744 80077B44 8FA40040 */  lw         $a0, 0x40($sp)
/* 78748 80077B48 27A50038 */  addiu      $a1, $sp, 0x38
/* 7874C 80077B4C 0C019824 */  jal        func_80066090
/* 78750 80077B50 24060001 */   addiu     $a2, $zero, 0x1
/* 78754 80077B54 27A40037 */  addiu      $a0, $sp, 0x37
/* 78758 80077B58 0C01DF54 */  jal        func_80077D50
/* 7875C 80077B5C 27A50024 */   addiu     $a1, $sp, 0x24
/* 78760 80077B60 3C0F801B */  lui        $t7, %hi(D_801AABD1)
/* 78764 80077B64 91EFABD1 */  lbu        $t7, %lo(D_801AABD1)($t7)
/* 78768 80077B68 AFA00020 */  sw         $zero, 0x20($sp)
/* 7876C 80077B6C 19E00014 */  blez       $t7, .L80077BC0
/* 78770 80077B70 00000000 */   nop
.L80077B74:
/* 78774 80077B74 8FB80020 */  lw         $t8, 0x20($sp)
/* 78778 80077B78 0018C880 */  sll        $t9, $t8, 2
/* 7877C 80077B7C 03B94021 */  addu       $t0, $sp, $t9
/* 78780 80077B80 91080026 */  lbu        $t0, 0x26($t0)
/* 78784 80077B84 31090004 */  andi       $t1, $t0, 0x4
/* 78788 80077B88 15200005 */  bnez       $t1, .L80077BA0
/* 7878C 80077B8C 00000000 */   nop
/* 78790 80077B90 8FAA0018 */  lw         $t2, 0x18($sp)
/* 78794 80077B94 254BFFFF */  addiu      $t3, $t2, -0x1
/* 78798 80077B98 10000009 */  b          .L80077BC0
/* 7879C 80077B9C AFAB0018 */   sw        $t3, 0x18($sp)
.L80077BA0:
/* 787A0 80077BA0 8FAC0020 */  lw         $t4, 0x20($sp)
/* 787A4 80077BA4 3C0E801B */  lui        $t6, %hi(D_801AABD1)
/* 787A8 80077BA8 91CEABD1 */  lbu        $t6, %lo(D_801AABD1)($t6)
/* 787AC 80077BAC 258D0001 */  addiu      $t5, $t4, 0x1
/* 787B0 80077BB0 AFAD0020 */  sw         $t5, 0x20($sp)
/* 787B4 80077BB4 01AE082A */  slt        $at, $t5, $t6
/* 787B8 80077BB8 1420FFEE */  bnez       $at, .L80077B74
/* 787BC 80077BBC 00000000 */   nop
.L80077BC0:
/* 787C0 80077BC0 3C0F801B */  lui        $t7, %hi(D_801AABD1)
/* 787C4 80077BC4 91EFABD1 */  lbu        $t7, %lo(D_801AABD1)($t7)
/* 787C8 80077BC8 8FB80020 */  lw         $t8, 0x20($sp)
/* 787CC 80077BCC 15F80002 */  bne        $t7, $t8, .L80077BD8
/* 787D0 80077BD0 00000000 */   nop
/* 787D4 80077BD4 AFA00018 */  sw         $zero, 0x18($sp)
.L80077BD8:
/* 787D8 80077BD8 8FB90018 */  lw         $t9, 0x18($sp)
/* 787DC 80077BDC 1F20FFC9 */  bgtz       $t9, .L80077B04
/* 787E0 80077BE0 00000000 */   nop
/* 787E4 80077BE4 3C08801B */  lui        $t0, %hi(D_801AABD1)
/* 787E8 80077BE8 9108ABD1 */  lbu        $t0, %lo(D_801AABD1)($t0)
/* 787EC 80077BEC AFA00020 */  sw         $zero, 0x20($sp)
/* 787F0 80077BF0 19000019 */  blez       $t0, .L80077C58
/* 787F4 80077BF4 00000000 */   nop
.L80077BF8:
/* 787F8 80077BF8 8FA90020 */  lw         $t1, 0x20($sp)
/* 787FC 80077BFC 27AB0024 */  addiu      $t3, $sp, 0x24
/* 78800 80077C00 00095080 */  sll        $t2, $t1, 2
/* 78804 80077C04 014B6021 */  addu       $t4, $t2, $t3
/* 78808 80077C08 918D0003 */  lbu        $t5, 0x3($t4)
/* 7880C 80077C0C 15A0000A */  bnez       $t5, .L80077C38
/* 78810 80077C10 00000000 */   nop
/* 78814 80077C14 918E0002 */  lbu        $t6, 0x2($t4)
/* 78818 80077C18 31CF0001 */  andi       $t7, $t6, 0x1
/* 7881C 80077C1C 11E00006 */  beqz       $t7, .L80077C38
/* 78820 80077C20 00000000 */   nop
/* 78824 80077C24 93B8001F */  lbu        $t8, 0x1F($sp)
/* 78828 80077C28 24190001 */  addiu      $t9, $zero, 0x1
/* 7882C 80077C2C 01394004 */  sllv       $t0, $t9, $t1
/* 78830 80077C30 03085025 */  or         $t2, $t8, $t0
/* 78834 80077C34 A3AA001F */  sb         $t2, 0x1F($sp)
.L80077C38:
/* 78838 80077C38 8FAB0020 */  lw         $t3, 0x20($sp)
/* 7883C 80077C3C 3C0C801B */  lui        $t4, %hi(D_801AABD1)
/* 78840 80077C40 918CABD1 */  lbu        $t4, %lo(D_801AABD1)($t4)
/* 78844 80077C44 256D0001 */  addiu      $t5, $t3, 0x1
/* 78848 80077C48 AFAD0020 */  sw         $t5, 0x20($sp)
/* 7884C 80077C4C 01AC082A */  slt        $at, $t5, $t4
/* 78850 80077C50 1420FFE9 */  bnez       $at, .L80077BF8
/* 78854 80077C54 00000000 */   nop
.L80077C58:
/* 78858 80077C58 0C01D04D */  jal        func_80074134
/* 7885C 80077C5C 00000000 */   nop
/* 78860 80077C60 93AE001F */  lbu        $t6, 0x1F($sp)
/* 78864 80077C64 8FAF0044 */  lw         $t7, 0x44($sp)
/* 78868 80077C68 A1EE0000 */  sb         $t6, 0x0($t7)
/* 7886C 80077C6C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 78870 80077C70 8FA2003C */  lw         $v0, 0x3C($sp)
/* 78874 80077C74 27BD0040 */  addiu      $sp, $sp, 0x40
/* 78878 80077C78 03E00008 */  jr         $ra
/* 7887C 80077C7C 00000000 */   nop

glabel __osPfsRequestData
/* 78880 80077C80 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 78884 80077C84 3C0D801B */  lui        $t5, %hi(D_801AABD1)
/* 78888 80077C88 91ADABD1 */  lbu        $t5, %lo(D_801AABD1)($t5)
/* 7888C 80077C8C 308400FF */  andi       $a0, $a0, 0xFF
/* 78890 80077C90 3C01801B */  lui        $at, %hi(D_801AABD0)
/* 78894 80077C94 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 78898 80077C98 A024ABD0 */  sb         $a0, %lo(D_801AABD0)($at)
/* 7889C 80077C9C 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 788A0 80077CA0 3C01801B */  lui        $at, %hi(D_801AD38C)
/* 788A4 80077CA4 240F0001 */  addiu      $t7, $zero, 0x1
/* 788A8 80077CA8 241800FF */  addiu      $t8, $zero, 0xFF
/* 788AC 80077CAC 24190001 */  addiu      $t9, $zero, 0x1
/* 788B0 80077CB0 24080003 */  addiu      $t0, $zero, 0x3
/* 788B4 80077CB4 240900FF */  addiu      $t1, $zero, 0xFF
/* 788B8 80077CB8 240A00FF */  addiu      $t2, $zero, 0xFF
/* 788BC 80077CBC 240B00FF */  addiu      $t3, $zero, 0xFF
/* 788C0 80077CC0 240C00FF */  addiu      $t4, $zero, 0xFF
/* 788C4 80077CC4 AFAE000C */  sw         $t6, 0xC($sp)
/* 788C8 80077CC8 AC2FD38C */  sw         $t7, %lo(D_801AD38C)($at)
/* 788CC 80077CCC A3B80004 */  sb         $t8, 0x4($sp)
/* 788D0 80077CD0 A3B90005 */  sb         $t9, 0x5($sp)
/* 788D4 80077CD4 A3A80006 */  sb         $t0, 0x6($sp)
/* 788D8 80077CD8 A3A40007 */  sb         $a0, 0x7($sp)
/* 788DC 80077CDC A3A90008 */  sb         $t1, 0x8($sp)
/* 788E0 80077CE0 A3AA0009 */  sb         $t2, 0x9($sp)
/* 788E4 80077CE4 A3AB000A */  sb         $t3, 0xA($sp)
/* 788E8 80077CE8 A3AC000B */  sb         $t4, 0xB($sp)
/* 788EC 80077CEC 19A00013 */  blez       $t5, .L80077D3C
/* 788F0 80077CF0 AFA00000 */   sw        $zero, 0x0($sp)
.L80077CF4:
/* 788F4 80077CF4 27AF0004 */  addiu      $t7, $sp, 0x4
/* 788F8 80077CF8 8DE10000 */  lw         $at, 0x0($t7)
/* 788FC 80077CFC 8FAE000C */  lw         $t6, 0xC($sp)
/* 78900 80077D00 3C0C801B */  lui        $t4, %hi(D_801AABD1)
/* 78904 80077D04 A9C10000 */  swl        $at, 0x0($t6)
/* 78908 80077D08 B9C10003 */  swr        $at, 0x3($t6)
/* 7890C 80077D0C 8DF90004 */  lw         $t9, 0x4($t7)
/* 78910 80077D10 A9D90004 */  swl        $t9, 0x4($t6)
/* 78914 80077D14 B9D90007 */  swr        $t9, 0x7($t6)
/* 78918 80077D18 8FAA0000 */  lw         $t2, 0x0($sp)
/* 7891C 80077D1C 918CABD1 */  lbu        $t4, %lo(D_801AABD1)($t4)
/* 78920 80077D20 8FA8000C */  lw         $t0, 0xC($sp)
/* 78924 80077D24 254B0001 */  addiu      $t3, $t2, 0x1
/* 78928 80077D28 016C082A */  slt        $at, $t3, $t4
/* 7892C 80077D2C 25090008 */  addiu      $t1, $t0, 0x8
/* 78930 80077D30 AFAB0000 */  sw         $t3, 0x0($sp)
/* 78934 80077D34 1420FFEF */  bnez       $at, .L80077CF4
/* 78938 80077D38 AFA9000C */   sw        $t1, 0xC($sp)
.L80077D3C:
/* 7893C 80077D3C 8FB8000C */  lw         $t8, 0xC($sp)
/* 78940 80077D40 240D00FE */  addiu      $t5, $zero, 0xFE
/* 78944 80077D44 27BD0010 */  addiu      $sp, $sp, 0x10
/* 78948 80077D48 03E00008 */  jr         $ra
/* 7894C 80077D4C A30D0000 */   sb        $t5, 0x0($t8)

glabel func_80077D50
/* 78950 80077D50 3C0F801B */  lui        $t7, %hi(D_801AABD1)
/* 78954 80077D54 91EFABD1 */  lbu        $t7, %lo(D_801AABD1)($t7)
/* 78958 80077D58 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7895C 80077D5C 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 78960 80077D60 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 78964 80077D64 A3A00007 */  sb         $zero, 0x7($sp)
/* 78968 80077D68 AFAE0014 */  sw         $t6, 0x14($sp)
/* 7896C 80077D6C 19E00028 */  blez       $t7, .L80077E10
/* 78970 80077D70 AFA00008 */   sw        $zero, 0x8($sp)
.L80077D74:
/* 78974 80077D74 8FB90014 */  lw         $t9, 0x14($sp)
/* 78978 80077D78 27B8000C */  addiu      $t8, $sp, 0xC
/* 7897C 80077D7C 8B210000 */  lwl        $at, 0x0($t9)
/* 78980 80077D80 9B210003 */  lwr        $at, 0x3($t9)
/* 78984 80077D84 AF010000 */  sw         $at, 0x0($t8)
/* 78988 80077D88 8B290004 */  lwl        $t1, 0x4($t9)
/* 7898C 80077D8C 9B290007 */  lwr        $t1, 0x7($t9)
/* 78990 80077D90 AF090004 */  sw         $t1, 0x4($t8)
/* 78994 80077D94 93AA000E */  lbu        $t2, 0xE($sp)
/* 78998 80077D98 314B00C0 */  andi       $t3, $t2, 0xC0
/* 7899C 80077D9C 000B6103 */  sra        $t4, $t3, 4
/* 789A0 80077DA0 A0AC0003 */  sb         $t4, 0x3($a1)
/* 789A4 80077DA4 90AD0003 */  lbu        $t5, 0x3($a1)
/* 789A8 80077DA8 15A0000E */  bnez       $t5, .L80077DE4
/* 789AC 80077DAC 00000000 */   nop
/* 789B0 80077DB0 93AE0011 */  lbu        $t6, 0x11($sp)
/* 789B4 80077DB4 93A80010 */  lbu        $t0, 0x10($sp)
/* 789B8 80077DB8 240B0001 */  addiu      $t3, $zero, 0x1
/* 789BC 80077DBC 000E7A00 */  sll        $t7, $t6, 8
/* 789C0 80077DC0 01E8C025 */  or         $t8, $t7, $t0
/* 789C4 80077DC4 A4B80000 */  sh         $t8, 0x0($a1)
/* 789C8 80077DC8 93B90012 */  lbu        $t9, 0x12($sp)
/* 789CC 80077DCC A0B90002 */  sb         $t9, 0x2($a1)
/* 789D0 80077DD0 8FAA0008 */  lw         $t2, 0x8($sp)
/* 789D4 80077DD4 93A90007 */  lbu        $t1, 0x7($sp)
/* 789D8 80077DD8 014B6004 */  sllv       $t4, $t3, $t2
/* 789DC 80077DDC 012C6825 */  or         $t5, $t1, $t4
/* 789E0 80077DE0 A3AD0007 */  sb         $t5, 0x7($sp)
.L80077DE4:
/* 789E4 80077DE4 8FAE0008 */  lw         $t6, 0x8($sp)
/* 789E8 80077DE8 3C19801B */  lui        $t9, %hi(D_801AABD1)
/* 789EC 80077DEC 9339ABD1 */  lbu        $t9, %lo(D_801AABD1)($t9)
/* 789F0 80077DF0 8FA80014 */  lw         $t0, 0x14($sp)
/* 789F4 80077DF4 25CF0001 */  addiu      $t7, $t6, 0x1
/* 789F8 80077DF8 01F9082A */  slt        $at, $t7, $t9
/* 789FC 80077DFC 25180008 */  addiu      $t8, $t0, 0x8
/* 78A00 80077E00 AFB80014 */  sw         $t8, 0x14($sp)
/* 78A04 80077E04 AFAF0008 */  sw         $t7, 0x8($sp)
/* 78A08 80077E08 1420FFDA */  bnez       $at, .L80077D74
/* 78A0C 80077E0C 24A50004 */   addiu     $a1, $a1, 0x4
.L80077E10:
/* 78A10 80077E10 93AB0007 */  lbu        $t3, 0x7($sp)
/* 78A14 80077E14 27BD0018 */  addiu      $sp, $sp, 0x18
/* 78A18 80077E18 03E00008 */  jr         $ra
/* 78A1C 80077E1C A08B0000 */   sb        $t3, 0x0($a0)

glabel __osContAddressCrc
/* 78A20 80077E20 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 78A24 80077E24 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* 78A28 80077E28 A3A0000F */  sb         $zero, 0xF($sp)
/* 78A2C 80077E2C AFA00008 */  sw         $zero, 0x8($sp)
.L80077E30:
/* 78A30 80077E30 93AE000F */  lbu        $t6, 0xF($sp)
/* 78A34 80077E34 31CF0010 */  andi       $t7, $t6, 0x10
/* 78A38 80077E38 11E00004 */  beqz       $t7, .L80077E4C
/* 78A3C 80077E3C 00000000 */   nop
/* 78A40 80077E40 24180015 */  addiu      $t8, $zero, 0x15
/* 78A44 80077E44 10000002 */  b          .L80077E50
/* 78A48 80077E48 A3B8000E */   sb        $t8, 0xE($sp)
.L80077E4C:
/* 78A4C 80077E4C A3A0000E */  sb         $zero, 0xE($sp)
.L80077E50:
/* 78A50 80077E50 93B9000F */  lbu        $t9, 0xF($sp)
/* 78A54 80077E54 30890400 */  andi       $t1, $a0, 0x400
/* 78A58 80077E58 00194040 */  sll        $t0, $t9, 1
/* 78A5C 80077E5C 11200003 */  beqz       $t1, .L80077E6C
/* 78A60 80077E60 A3A8000F */   sb        $t0, 0xF($sp)
/* 78A64 80077E64 10000002 */  b          .L80077E70
/* 78A68 80077E68 24050001 */   addiu     $a1, $zero, 0x1
.L80077E6C:
/* 78A6C 80077E6C 00002825 */  or         $a1, $zero, $zero
.L80077E70:
/* 78A70 80077E70 93AA000F */  lbu        $t2, 0xF($sp)
/* 78A74 80077E74 8FA80008 */  lw         $t0, 0x8($sp)
/* 78A78 80077E78 93AF000E */  lbu        $t7, 0xE($sp)
/* 78A7C 80077E7C 30AB00FF */  andi       $t3, $a1, 0xFF
/* 78A80 80077E80 00046840 */  sll        $t5, $a0, 1
/* 78A84 80077E84 014B6025 */  or         $t4, $t2, $t3
/* 78A88 80077E88 01A02025 */  or         $a0, $t5, $zero
/* 78A8C 80077E8C 319800FF */  andi       $t8, $t4, 0xFF
/* 78A90 80077E90 25090001 */  addiu      $t1, $t0, 0x1
/* 78A94 80077E94 29210010 */  slti       $at, $t1, 0x10
/* 78A98 80077E98 A3AC000F */  sb         $t4, 0xF($sp)
/* 78A9C 80077E9C 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 78AA0 80077EA0 030FC826 */  xor        $t9, $t8, $t7
/* 78AA4 80077EA4 AFA90008 */  sw         $t1, 0x8($sp)
/* 78AA8 80077EA8 01C02025 */  or         $a0, $t6, $zero
/* 78AAC 80077EAC 1420FFE0 */  bnez       $at, .L80077E30
/* 78AB0 80077EB0 A3B9000F */   sb        $t9, 0xF($sp)
/* 78AB4 80077EB4 93A2000F */  lbu        $v0, 0xF($sp)
/* 78AB8 80077EB8 27BD0010 */  addiu      $sp, $sp, 0x10
/* 78ABC 80077EBC 304A001F */  andi       $t2, $v0, 0x1F
/* 78AC0 80077EC0 01401025 */  or         $v0, $t2, $zero
/* 78AC4 80077EC4 304B00FF */  andi       $t3, $v0, 0xFF
/* 78AC8 80077EC8 03E00008 */  jr         $ra
/* 78ACC 80077ECC 01601025 */   or        $v0, $t3, $zero

glabel __osContDataCrc
/* 78AD0 80077ED0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 78AD4 80077ED4 A3A0000F */  sb         $zero, 0xF($sp)
/* 78AD8 80077ED8 AFA00008 */  sw         $zero, 0x8($sp)
.L80077EDC:
/* 78ADC 80077EDC 240E0007 */  addiu      $t6, $zero, 0x7
/* 78AE0 80077EE0 AFAE0004 */  sw         $t6, 0x4($sp)
.L80077EE4:
/* 78AE4 80077EE4 93AF000F */  lbu        $t7, 0xF($sp)
/* 78AE8 80077EE8 31F80080 */  andi       $t8, $t7, 0x80
/* 78AEC 80077EEC 13000004 */  beqz       $t8, .L80077F00
/* 78AF0 80077EF0 00000000 */   nop
/* 78AF4 80077EF4 24190085 */  addiu      $t9, $zero, 0x85
/* 78AF8 80077EF8 10000002 */  b          .L80077F04
/* 78AFC 80077EFC A3B9000E */   sb        $t9, 0xE($sp)
.L80077F00:
/* 78B00 80077F00 A3A0000E */  sb         $zero, 0xE($sp)
.L80077F04:
/* 78B04 80077F04 93A8000F */  lbu        $t0, 0xF($sp)
/* 78B08 80077F08 8FAA0008 */  lw         $t2, 0x8($sp)
/* 78B0C 80077F0C 24010020 */  addiu      $at, $zero, 0x20
/* 78B10 80077F10 00084840 */  sll        $t1, $t0, 1
/* 78B14 80077F14 15410004 */  bne        $t2, $at, .L80077F28
/* 78B18 80077F18 A3A9000F */   sb        $t1, 0xF($sp)
/* 78B1C 80077F1C 312B00FF */  andi       $t3, $t1, 0xFF
/* 78B20 80077F20 1000000E */  b          .L80077F5C
/* 78B24 80077F24 A3AB000F */   sb        $t3, 0xF($sp)
.L80077F28:
/* 78B28 80077F28 8FAD0004 */  lw         $t5, 0x4($sp)
/* 78B2C 80077F2C 908C0000 */  lbu        $t4, 0x0($a0)
/* 78B30 80077F30 240E0001 */  addiu      $t6, $zero, 0x1
/* 78B34 80077F34 01AE7804 */  sllv       $t7, $t6, $t5
/* 78B38 80077F38 018FC024 */  and        $t8, $t4, $t7
/* 78B3C 80077F3C 13000003 */  beqz       $t8, .L80077F4C
/* 78B40 80077F40 00000000 */   nop
/* 78B44 80077F44 10000002 */  b          .L80077F50
/* 78B48 80077F48 24050001 */   addiu     $a1, $zero, 0x1
.L80077F4C:
/* 78B4C 80077F4C 00002825 */  or         $a1, $zero, $zero
.L80077F50:
/* 78B50 80077F50 93B9000F */  lbu        $t9, 0xF($sp)
/* 78B54 80077F54 03254025 */  or         $t0, $t9, $a1
/* 78B58 80077F58 A3A8000F */  sb         $t0, 0xF($sp)
.L80077F5C:
/* 78B5C 80077F5C 8FAE0004 */  lw         $t6, 0x4($sp)
/* 78B60 80077F60 93AA000F */  lbu        $t2, 0xF($sp)
/* 78B64 80077F64 93A9000E */  lbu        $t1, 0xE($sp)
/* 78B68 80077F68 25CDFFFF */  addiu      $t5, $t6, -0x1
/* 78B6C 80077F6C AFAD0004 */  sw         $t5, 0x4($sp)
/* 78B70 80077F70 01495826 */  xor        $t3, $t2, $t1
/* 78B74 80077F74 05A1FFDB */  bgez       $t5, .L80077EE4
/* 78B78 80077F78 A3AB000F */   sb        $t3, 0xF($sp)
/* 78B7C 80077F7C 8FAC0008 */  lw         $t4, 0x8($sp)
/* 78B80 80077F80 24840001 */  addiu      $a0, $a0, 0x1
/* 78B84 80077F84 258F0001 */  addiu      $t7, $t4, 0x1
/* 78B88 80077F88 29E10021 */  slti       $at, $t7, 0x21
/* 78B8C 80077F8C 1420FFD3 */  bnez       $at, .L80077EDC
/* 78B90 80077F90 AFAF0008 */   sw        $t7, 0x8($sp)
/* 78B94 80077F94 93A2000F */  lbu        $v0, 0xF($sp)
/* 78B98 80077F98 03E00008 */  jr         $ra
/* 78B9C 80077F9C 27BD0010 */   addiu     $sp, $sp, 0x10

glabel osGetThreadPri
/* 78BA0 80077FA0 14800003 */  bnez       $a0, .L80077FB0
/* 78BA4 80077FA4 00000000 */   nop
/* 78BA8 80077FA8 3C048009 */  lui        $a0, %hi(D_80094880)
/* 78BAC 80077FAC 8C844880 */  lw         $a0, %lo(D_80094880)($a0)
.L80077FB0:
/* 78BB0 80077FB0 03E00008 */  jr         $ra
/* 78BB4 80077FB4 8C820004 */   lw        $v0, 0x4($a0)
/* 78BB8 80077FB8 00000000 */  nop
/* 78BBC 80077FBC 00000000 */  nop

glabel func_80077FC0
/* 78BC0 80077FC0 3C028009 */  lui        $v0, %hi(D_80094C50)
/* 78BC4 80077FC4 03E00008 */  jr         $ra
/* 78BC8 80077FC8 8C424C50 */   lw        $v0, %lo(D_80094C50)($v0)
/* 78BCC 80077FCC 00000000 */  nop

glabel func_80077FD0
/* 78BD0 80077FD0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 78BD4 80077FD4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 78BD8 80077FD8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 78BDC 80077FDC AFB20020 */  sw         $s2, 0x20($sp)
/* 78BE0 80077FE0 AFB00018 */  sw         $s0, 0x18($sp)
/* 78BE4 80077FE4 AFA0002C */  sw         $zero, 0x2C($sp)
/* 78BE8 80077FE8 3C118009 */  lui        $s1, %hi(D_80094C54)
/* 78BEC 80077FEC 3C0EA440 */  lui        $t6, %hi(D_A4400010)
/* 78BF0 80077FF0 8E314C54 */  lw         $s1, %lo(D_80094C54)($s1)
/* 78BF4 80077FF4 8DCF0010 */  lw         $t7, %lo(D_A4400010)($t6)
/* 78BF8 80077FF8 8E300008 */  lw         $s0, 0x8($s1)
/* 78BFC 80077FFC 31F80001 */  andi       $t8, $t7, 0x1
/* 78C00 80078000 AFB8002C */  sw         $t8, 0x2C($sp)
/* 78C04 80078004 0C019FAC */  jal        func_80067EB0
/* 78C08 80078008 8E240004 */   lw        $a0, 0x4($s1)
/* 78C0C 8007800C 8FB9002C */  lw         $t9, 0x2C($sp)
/* 78C10 80078010 00409025 */  or         $s2, $v0, $zero
/* 78C14 80078014 00194080 */  sll        $t0, $t9, 2
/* 78C18 80078018 01194021 */  addu       $t0, $t0, $t9
/* 78C1C 8007801C 00084080 */  sll        $t0, $t0, 2
/* 78C20 80078020 02084821 */  addu       $t1, $s0, $t0
/* 78C24 80078024 8D2A0028 */  lw         $t2, 0x28($t1)
/* 78C28 80078028 01525821 */  addu       $t3, $t2, $s2
/* 78C2C 8007802C AFAB003C */  sw         $t3, 0x3C($sp)
/* 78C30 80078030 962C0000 */  lhu        $t4, 0x0($s1)
/* 78C34 80078034 318D0002 */  andi       $t5, $t4, 0x2
/* 78C38 80078038 11A00008 */  beqz       $t5, .L8007805C
/* 78C3C 8007803C 00000000 */   nop
/* 78C40 80078040 8E0F0020 */  lw         $t7, 0x20($s0)
/* 78C44 80078044 8E2E0020 */  lw         $t6, 0x20($s1)
/* 78C48 80078048 2401F000 */  addiu      $at, $zero, -0x1000
/* 78C4C 8007804C 01E1C024 */  and        $t8, $t7, $at
/* 78C50 80078050 01D8C825 */  or         $t9, $t6, $t8
/* 78C54 80078054 10000003 */  b          .L80078064
/* 78C58 80078058 AE390020 */   sw        $t9, 0x20($s1)
.L8007805C:
/* 78C5C 8007805C 8E080020 */  lw         $t0, 0x20($s0)
/* 78C60 80078060 AE280020 */  sw         $t0, 0x20($s1)
.L80078064:
/* 78C64 80078064 96290000 */  lhu        $t1, 0x0($s1)
/* 78C68 80078068 312A0004 */  andi       $t2, $t1, 0x4
/* 78C6C 8007806C 11400041 */  beqz       $t2, .L80078174
/* 78C70 80078070 00000000 */   nop
/* 78C74 80078074 8FAB002C */  lw         $t3, 0x2C($sp)
/* 78C78 80078078 000B6080 */  sll        $t4, $t3, 2
/* 78C7C 8007807C 018B6021 */  addu       $t4, $t4, $t3
/* 78C80 80078080 000C6080 */  sll        $t4, $t4, 2
/* 78C84 80078084 020C6821 */  addu       $t5, $s0, $t4
/* 78C88 80078088 8DAF002C */  lw         $t7, 0x2C($t5)
/* 78C8C 8007808C 31EE0FFF */  andi       $t6, $t7, 0xFFF
/* 78C90 80078090 448E3000 */  mtc1       $t6, $f6
/* 78C94 80078094 AFAE0030 */  sw         $t6, 0x30($sp)
/* 78C98 80078098 C6240024 */  lwc1       $f4, 0x24($s1)
/* 78C9C 8007809C 05C10005 */  bgez       $t6, .L800780B4
/* 78CA0 800780A0 46803220 */   cvt.s.w   $f8, $f6
/* 78CA4 800780A4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 78CA8 800780A8 44815000 */  mtc1       $at, $f10
/* 78CAC 800780AC 00000000 */  nop
/* 78CB0 800780B0 460A4200 */  add.s      $f8, $f8, $f10
.L800780B4:
/* 78CB4 800780B4 46082402 */  mul.s      $f16, $f4, $f8
/* 78CB8 800780B8 24190001 */  addiu      $t9, $zero, 0x1
/* 78CBC 800780BC 4458F800 */  cfc1       $t8, $31
/* 78CC0 800780C0 44D9F800 */  ctc1       $t9, $31
/* 78CC4 800780C4 00000000 */  nop
/* 78CC8 800780C8 460084A4 */  cvt.w.s    $f18, $f16
/* 78CCC 800780CC 4459F800 */  cfc1       $t9, $31
/* 78CD0 800780D0 00000000 */  nop
/* 78CD4 800780D4 33210004 */  andi       $at, $t9, 0x4
/* 78CD8 800780D8 33390078 */  andi       $t9, $t9, 0x78
/* 78CDC 800780DC 13200013 */  beqz       $t9, .L8007812C
/* 78CE0 800780E0 3C014F00 */   lui       $at, (0x4F000000 >> 16)
/* 78CE4 800780E4 44819000 */  mtc1       $at, $f18
/* 78CE8 800780E8 24190001 */  addiu      $t9, $zero, 0x1
/* 78CEC 800780EC 46128481 */  sub.s      $f18, $f16, $f18
/* 78CF0 800780F0 44D9F800 */  ctc1       $t9, $31
/* 78CF4 800780F4 00000000 */  nop
/* 78CF8 800780F8 460094A4 */  cvt.w.s    $f18, $f18
/* 78CFC 800780FC 4459F800 */  cfc1       $t9, $31
/* 78D00 80078100 00000000 */  nop
/* 78D04 80078104 33210004 */  andi       $at, $t9, 0x4
/* 78D08 80078108 33390078 */  andi       $t9, $t9, 0x78
/* 78D0C 8007810C 17200005 */  bnez       $t9, .L80078124
/* 78D10 80078110 00000000 */   nop
/* 78D14 80078114 44199000 */  mfc1       $t9, $f18
/* 78D18 80078118 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 78D1C 8007811C 10000007 */  b          .L8007813C
/* 78D20 80078120 0321C825 */   or        $t9, $t9, $at
.L80078124:
/* 78D24 80078124 10000005 */  b          .L8007813C
/* 78D28 80078128 2419FFFF */   addiu     $t9, $zero, -0x1
.L8007812C:
/* 78D2C 8007812C 44199000 */  mfc1       $t9, $f18
/* 78D30 80078130 00000000 */  nop
/* 78D34 80078134 0720FFFB */  bltz       $t9, .L80078124
/* 78D38 80078138 00000000 */   nop
.L8007813C:
/* 78D3C 8007813C AE39002C */  sw         $t9, 0x2C($s1)
/* 78D40 80078140 8FA9002C */  lw         $t1, 0x2C($sp)
/* 78D44 80078144 8E28002C */  lw         $t0, 0x2C($s1)
/* 78D48 80078148 2401F000 */  addiu      $at, $zero, -0x1000
/* 78D4C 8007814C 00095080 */  sll        $t2, $t1, 2
/* 78D50 80078150 01495021 */  addu       $t2, $t2, $t1
/* 78D54 80078154 000A5080 */  sll        $t2, $t2, 2
/* 78D58 80078158 020A5821 */  addu       $t3, $s0, $t2
/* 78D5C 8007815C 8D6C002C */  lw         $t4, 0x2C($t3)
/* 78D60 80078160 44D8F800 */  ctc1       $t8, $31
/* 78D64 80078164 01816824 */  and        $t5, $t4, $at
/* 78D68 80078168 010D7825 */  or         $t7, $t0, $t5
/* 78D6C 8007816C 10000008 */  b          .L80078190
/* 78D70 80078170 AE2F002C */   sw        $t7, 0x2C($s1)
.L80078174:
/* 78D74 80078174 8FAE002C */  lw         $t6, 0x2C($sp)
/* 78D78 80078178 000EC080 */  sll        $t8, $t6, 2
/* 78D7C 8007817C 030EC021 */  addu       $t8, $t8, $t6
/* 78D80 80078180 0018C080 */  sll        $t8, $t8, 2
/* 78D84 80078184 0218C821 */  addu       $t9, $s0, $t8
/* 78D88 80078188 8F29002C */  lw         $t1, 0x2C($t9)
/* 78D8C 8007818C AE29002C */  sw         $t1, 0x2C($s1)
.L80078190:
/* 78D90 80078190 8FAA002C */  lw         $t2, 0x2C($sp)
/* 78D94 80078194 3C0D8009 */  lui        $t5, %hi(D_8009369C)
/* 78D98 80078198 8DAD369C */  lw         $t5, %lo(D_8009369C)($t5)
/* 78D9C 8007819C 000A5880 */  sll        $t3, $t2, 2
/* 78DA0 800781A0 016A5821 */  addu       $t3, $t3, $t2
/* 78DA4 800781A4 000B5880 */  sll        $t3, $t3, 2
/* 78DA8 800781A8 020B6021 */  addu       $t4, $s0, $t3
/* 78DAC 800781AC 8D880030 */  lw         $t0, 0x30($t4)
/* 78DB0 800781B0 000D7C00 */  sll        $t7, $t5, 16
/* 78DB4 800781B4 010F7023 */  subu       $t6, $t0, $t7
/* 78DB8 800781B8 01CDC021 */  addu       $t8, $t6, $t5
/* 78DBC 800781BC AFB80034 */  sw         $t8, 0x34($sp)
/* 78DC0 800781C0 8E19001C */  lw         $t9, 0x1C($s0)
/* 78DC4 800781C4 AFB90038 */  sw         $t9, 0x38($sp)
/* 78DC8 800781C8 96290000 */  lhu        $t1, 0x0($s1)
/* 78DCC 800781CC 312A0020 */  andi       $t2, $t1, 0x20
/* 78DD0 800781D0 11400002 */  beqz       $t2, .L800781DC
/* 78DD4 800781D4 00000000 */   nop
/* 78DD8 800781D8 AFA00038 */  sw         $zero, 0x38($sp)
.L800781DC:
/* 78DDC 800781DC 962B0000 */  lhu        $t3, 0x0($s1)
/* 78DE0 800781E0 316C0040 */  andi       $t4, $t3, 0x40
/* 78DE4 800781E4 11800005 */  beqz       $t4, .L800781FC
/* 78DE8 800781E8 00000000 */   nop
/* 78DEC 800781EC AE20002C */  sw         $zero, 0x2C($s1)
/* 78DF0 800781F0 0C019FAC */  jal        func_80067EB0
/* 78DF4 800781F4 8E240004 */   lw        $a0, 0x4($s1)
/* 78DF8 800781F8 AFA2003C */  sw         $v0, 0x3C($sp)
.L800781FC:
/* 78DFC 800781FC 96280000 */  lhu        $t0, 0x0($s1)
/* 78E00 80078200 310F0080 */  andi       $t7, $t0, 0x80
/* 78E04 80078204 11E00009 */  beqz       $t7, .L8007822C
/* 78E08 80078208 00000000 */   nop
/* 78E0C 8007820C 962E0028 */  lhu        $t6, 0x28($s1)
/* 78E10 80078210 3C0103FF */  lui        $at, (0x3FF0000 >> 16)
/* 78E14 80078214 8E240004 */  lw         $a0, 0x4($s1)
/* 78E18 80078218 000E6C00 */  sll        $t5, $t6, 16
/* 78E1C 8007821C 01A1C024 */  and        $t8, $t5, $at
/* 78E20 80078220 0C019FAC */  jal        func_80067EB0
/* 78E24 80078224 AE38002C */   sw        $t8, 0x2C($s1)
/* 78E28 80078228 AFA2003C */  sw         $v0, 0x3C($sp)
.L8007822C:
/* 78E2C 8007822C 8FB9003C */  lw         $t9, 0x3C($sp)
/* 78E30 80078230 3C09A440 */  lui        $t1, %hi(D_A4400004)
/* 78E34 80078234 3C0BA440 */  lui        $t3, %hi(D_A4400008)
/* 78E38 80078238 AD390004 */  sw         $t9, %lo(D_A4400004)($t1)
/* 78E3C 8007823C 8E0A0008 */  lw         $t2, 0x8($s0)
/* 78E40 80078240 3C08A440 */  lui        $t0, %hi(D_A4400014)
/* 78E44 80078244 3C0EA440 */  lui        $t6, %hi(D_A4400018)
/* 78E48 80078248 AD6A0008 */  sw         $t2, %lo(D_A4400008)($t3)
/* 78E4C 8007824C 8E0C000C */  lw         $t4, 0xC($s0)
/* 78E50 80078250 3C18A440 */  lui        $t8, %hi(D_A440001C)
/* 78E54 80078254 3C018009 */  lui        $at, %hi(D_80094C54)
/* 78E58 80078258 AD0C0014 */  sw         $t4, %lo(D_A4400014)($t0)
/* 78E5C 8007825C 8E0F0010 */  lw         $t7, 0x10($s0)
/* 78E60 80078260 ADCF0018 */  sw         $t7, %lo(D_A4400018)($t6)
/* 78E64 80078264 8E0D0014 */  lw         $t5, 0x14($s0)
/* 78E68 80078268 AF0D001C */  sw         $t5, %lo(D_A440001C)($t8)
/* 78E6C 8007826C 8E190018 */  lw         $t9, 0x18($s0)
/* 78E70 80078270 AD390020 */  sw         $t9, %lo(D_A4400020)($t1)
/* 78E74 80078274 8FAA0038 */  lw         $t2, 0x38($sp)
/* 78E78 80078278 3C19A440 */  lui        $t9, %hi(D_A440002C)
/* 78E7C 8007827C AD6A0024 */  sw         $t2, %lo(D_A4400024)($t3)
/* 78E80 80078280 8FAC0034 */  lw         $t4, 0x34($sp)
/* 78E84 80078284 AD0C0028 */  sw         $t4, %lo(D_A4400028)($t0)
/* 78E88 80078288 8FAF002C */  lw         $t7, 0x2C($sp)
/* 78E8C 8007828C 000F7080 */  sll        $t6, $t7, 2
/* 78E90 80078290 01CF7021 */  addu       $t6, $t6, $t7
/* 78E94 80078294 000E7080 */  sll        $t6, $t6, 2
/* 78E98 80078298 020E6821 */  addu       $t5, $s0, $t6
/* 78E9C 8007829C 8DB80034 */  lw         $t8, 0x34($t5)
/* 78EA0 800782A0 3C0EA440 */  lui        $t6, %hi(D_A4400030)
/* 78EA4 800782A4 AF38002C */  sw         $t8, %lo(D_A440002C)($t9)
/* 78EA8 800782A8 8FA9002C */  lw         $t1, 0x2C($sp)
/* 78EAC 800782AC 3C18A440 */  lui        $t8, %hi(D_A4400034)
/* 78EB0 800782B0 00095080 */  sll        $t2, $t1, 2
/* 78EB4 800782B4 01495021 */  addu       $t2, $t2, $t1
/* 78EB8 800782B8 000A5080 */  sll        $t2, $t2, 2
/* 78EBC 800782BC 020A5821 */  addu       $t3, $s0, $t2
/* 78EC0 800782C0 8D6C0038 */  lw         $t4, 0x38($t3)
/* 78EC4 800782C4 3C09A440 */  lui        $t1, %hi(D_A4400000)
/* 78EC8 800782C8 3C0A8009 */  lui        $t2, %hi(D_80094C50)
/* 78ECC 800782CC AD0C000C */  sw         $t4, %lo(D_A440000C)($t0)
/* 78ED0 800782D0 8E2F0020 */  lw         $t7, 0x20($s1)
/* 78ED4 800782D4 3C0C8009 */  lui        $t4, %hi(D_80094C50)
/* 78ED8 800782D8 3C0B8009 */  lui        $t3, %hi(D_80094C54)
/* 78EDC 800782DC ADCF0030 */  sw         $t7, %lo(D_A4400030)($t6)
/* 78EE0 800782E0 8E2D002C */  lw         $t5, 0x2C($s1)
/* 78EE4 800782E4 AF0D0034 */  sw         $t5, %lo(D_A4400034)($t8)
/* 78EE8 800782E8 8E39000C */  lw         $t9, 0xC($s1)
/* 78EEC 800782EC AD390000 */  sw         $t9, %lo(D_A4400000)($t1)
/* 78EF0 800782F0 8D4A4C50 */  lw         $t2, %lo(D_80094C50)($t2)
/* 78EF4 800782F4 AC2A4C54 */  sw         $t2, %lo(D_80094C54)($at)
/* 78EF8 800782F8 3C018009 */  lui        $at, %hi(D_80094C50)
/* 78EFC 800782FC AC314C50 */  sw         $s1, %lo(D_80094C50)($at)
/* 78F00 80078300 8D8C4C50 */  lw         $t4, %lo(D_80094C50)($t4)
/* 78F04 80078304 8D6B4C54 */  lw         $t3, %lo(D_80094C54)($t3)
/* 78F08 80078308 258E0030 */  addiu      $t6, $t4, 0x30
.L8007830C:
/* 78F0C 8007830C 8D810000 */  lw         $at, 0x0($t4)
/* 78F10 80078310 258C000C */  addiu      $t4, $t4, 0xC
/* 78F14 80078314 256B000C */  addiu      $t3, $t3, 0xC
/* 78F18 80078318 AD61FFF4 */  sw         $at, -0xC($t3)
/* 78F1C 8007831C 8D81FFF8 */  lw         $at, -0x8($t4)
/* 78F20 80078320 AD61FFF8 */  sw         $at, -0x8($t3)
/* 78F24 80078324 8D81FFFC */  lw         $at, -0x4($t4)
/* 78F28 80078328 158EFFF8 */  bne        $t4, $t6, .L8007830C
/* 78F2C 8007832C AD61FFFC */   sw        $at, -0x4($t3)
/* 78F30 80078330 8FBF0024 */  lw         $ra, 0x24($sp)
/* 78F34 80078334 8FB00018 */  lw         $s0, 0x18($sp)
/* 78F38 80078338 8FB1001C */  lw         $s1, 0x1C($sp)
/* 78F3C 8007833C 8FB20020 */  lw         $s2, 0x20($sp)
/* 78F40 80078340 03E00008 */  jr         $ra
/* 78F44 80078344 27BD0048 */   addiu     $sp, $sp, 0x48
/* 78F48 80078348 00000000 */  nop
/* 78F4C 8007834C 00000000 */  nop

glabel func_80078350
/* 78F50 80078350 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 78F54 80078354 03E00008 */  jr         $ra
/* 78F58 80078358 8DC20010 */   lw        $v0, %lo(D_A4040010)($t6)
/* 78F5C 8007835C 00000000 */  nop

# Handwritten function
glabel func_80078360
/* 78F60 80078360 10C0001A */  beqz       $a2, .L800783CC
/* 78F64 80078364 00A03825 */   or        $a3, $a1, $zero
/* 78F68 80078368 10850018 */  beq        $a0, $a1, .L800783CC
/* 78F6C 8007836C 00A4082A */   slt       $at, $a1, $a0
/* 78F70 80078370 54200008 */  bnel       $at, $zero, .L80078394
/* 78F74 80078374 28C10010 */   slti      $at, $a2, 0x10
/* 78F78 80078378 00861020 */  add        $v0, $a0, $a2
/* 78F7C 8007837C 00A2082A */  slt        $at, $a1, $v0
/* 78F80 80078380 50200004 */  beql       $at, $zero, .L80078394
/* 78F84 80078384 28C10010 */   slti      $at, $a2, 0x10
/* 78F88 80078388 1000005B */  b          .L800784F8
/* 78F8C 8007838C 28C10010 */   slti      $at, $a2, 0x10
/* 78F90 80078390 28C10010 */  slti       $at, $a2, 0x10
.L80078394:
/* 78F94 80078394 14200005 */  bnez       $at, .L800783AC
/* 78F98 80078398 00000000 */   nop
/* 78F9C 8007839C 30820003 */  andi       $v0, $a0, 0x3
/* 78FA0 800783A0 30A30003 */  andi       $v1, $a1, 0x3
/* 78FA4 800783A4 1043000B */  beq        $v0, $v1, .L800783D4
/* 78FA8 800783A8 00000000 */   nop
.L800783AC:
/* 78FAC 800783AC 10C00007 */  beqz       $a2, .L800783CC
/* 78FB0 800783B0 00000000 */   nop
/* 78FB4 800783B4 00861821 */  addu       $v1, $a0, $a2
.L800783B8:
/* 78FB8 800783B8 80820000 */  lb         $v0, 0x0($a0)
/* 78FBC 800783BC 24840001 */  addiu      $a0, $a0, 0x1
/* 78FC0 800783C0 24A50001 */  addiu      $a1, $a1, 0x1
/* 78FC4 800783C4 1483FFFC */  bne        $a0, $v1, .L800783B8
/* 78FC8 800783C8 A0A2FFFF */   sb        $v0, -0x1($a1)
.L800783CC:
/* 78FCC 800783CC 03E00008 */  jr         $ra
/* 78FD0 800783D0 00E01025 */   or        $v0, $a3, $zero
.L800783D4:
/* 78FD4 800783D4 10400018 */  beqz       $v0, .L80078438
/* 78FD8 800783D8 24010001 */   addiu     $at, $zero, 0x1
/* 78FDC 800783DC 1041000F */  beq        $v0, $at, .L8007841C
/* 78FE0 800783E0 24010002 */   addiu     $at, $zero, 0x2
/* 78FE4 800783E4 50410008 */  beql       $v0, $at, .L80078408
/* 78FE8 800783E8 84820000 */   lh        $v0, 0x0($a0)
/* 78FEC 800783EC 80820000 */  lb         $v0, 0x0($a0)
/* 78FF0 800783F0 24840001 */  addiu      $a0, $a0, 0x1
/* 78FF4 800783F4 24A50001 */  addiu      $a1, $a1, 0x1
/* 78FF8 800783F8 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 78FFC 800783FC 1000000E */  b          .L80078438
/* 79000 80078400 A0A2FFFF */   sb        $v0, -0x1($a1)
/* 79004 80078404 84820000 */  lh         $v0, 0x0($a0)
.L80078408:
/* 79008 80078408 24840002 */  addiu      $a0, $a0, 0x2
/* 7900C 8007840C 24A50002 */  addiu      $a1, $a1, 0x2
/* 79010 80078410 24C6FFFE */  addiu      $a2, $a2, -0x2
/* 79014 80078414 10000008 */  b          .L80078438
/* 79018 80078418 A4A2FFFE */   sh        $v0, -0x2($a1)
.L8007841C:
/* 7901C 8007841C 80820000 */  lb         $v0, 0x0($a0)
/* 79020 80078420 84830001 */  lh         $v1, 0x1($a0)
/* 79024 80078424 24840003 */  addiu      $a0, $a0, 0x3
/* 79028 80078428 24A50003 */  addiu      $a1, $a1, 0x3
/* 7902C 8007842C 24C6FFFD */  addiu      $a2, $a2, -0x3
/* 79030 80078430 A0A2FFFD */  sb         $v0, -0x3($a1)
/* 79034 80078434 A4A3FFFE */  sh         $v1, -0x2($a1)
.L80078438:
/* 79038 80078438 28C10020 */  slti       $at, $a2, 0x20
/* 7903C 8007843C 54200016 */  bnel       $at, $zero, .L80078498
/* 79040 80078440 28C10010 */   slti      $at, $a2, 0x10
/* 79044 80078444 8C820000 */  lw         $v0, 0x0($a0)
/* 79048 80078448 8C830004 */  lw         $v1, 0x4($a0)
/* 7904C 8007844C 8C880008 */  lw         $t0, 0x8($a0)
/* 79050 80078450 8C89000C */  lw         $t1, 0xC($a0)
/* 79054 80078454 8C8A0010 */  lw         $t2, 0x10($a0)
/* 79058 80078458 8C8B0014 */  lw         $t3, 0x14($a0)
/* 7905C 8007845C 8C8C0018 */  lw         $t4, 0x18($a0)
/* 79060 80078460 8C8D001C */  lw         $t5, 0x1C($a0)
/* 79064 80078464 24840020 */  addiu      $a0, $a0, 0x20
/* 79068 80078468 24A50020 */  addiu      $a1, $a1, 0x20
/* 7906C 8007846C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 79070 80078470 ACA2FFE0 */  sw         $v0, -0x20($a1)
/* 79074 80078474 ACA3FFE4 */  sw         $v1, -0x1C($a1)
/* 79078 80078478 ACA8FFE8 */  sw         $t0, -0x18($a1)
/* 7907C 8007847C ACA9FFEC */  sw         $t1, -0x14($a1)
/* 79080 80078480 ACAAFFF0 */  sw         $t2, -0x10($a1)
/* 79084 80078484 ACABFFF4 */  sw         $t3, -0xC($a1)
/* 79088 80078488 ACACFFF8 */  sw         $t4, -0x8($a1)
/* 7908C 8007848C 1000FFEA */  b          .L80078438
/* 79090 80078490 ACADFFFC */   sw        $t5, -0x4($a1)
.L80078494:
/* 79094 80078494 28C10010 */  slti       $at, $a2, 0x10
.L80078498:
/* 79098 80078498 5420000E */  bnel       $at, $zero, .L800784D4
/* 7909C 8007849C 28C10004 */   slti      $at, $a2, 0x4
/* 790A0 800784A0 8C820000 */  lw         $v0, 0x0($a0)
/* 790A4 800784A4 8C830004 */  lw         $v1, 0x4($a0)
/* 790A8 800784A8 8C880008 */  lw         $t0, 0x8($a0)
/* 790AC 800784AC 8C89000C */  lw         $t1, 0xC($a0)
/* 790B0 800784B0 24840010 */  addiu      $a0, $a0, 0x10
/* 790B4 800784B4 24A50010 */  addiu      $a1, $a1, 0x10
/* 790B8 800784B8 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 790BC 800784BC ACA2FFF0 */  sw         $v0, -0x10($a1)
/* 790C0 800784C0 ACA3FFF4 */  sw         $v1, -0xC($a1)
/* 790C4 800784C4 ACA8FFF8 */  sw         $t0, -0x8($a1)
/* 790C8 800784C8 1000FFF2 */  b          .L80078494
/* 790CC 800784CC ACA9FFFC */   sw        $t1, -0x4($a1)
.L800784D0:
/* 790D0 800784D0 28C10004 */  slti       $at, $a2, 0x4
.L800784D4:
/* 790D4 800784D4 1420FFB5 */  bnez       $at, .L800783AC
/* 790D8 800784D8 00000000 */   nop
/* 790DC 800784DC 8C820000 */  lw         $v0, 0x0($a0)
/* 790E0 800784E0 24840004 */  addiu      $a0, $a0, 0x4
/* 790E4 800784E4 24A50004 */  addiu      $a1, $a1, 0x4
/* 790E8 800784E8 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 790EC 800784EC 1000FFF8 */  b          .L800784D0
/* 790F0 800784F0 ACA2FFFC */   sw        $v0, -0x4($a1)
/* 790F4 800784F4 28C10010 */  slti       $at, $a2, 0x10
.L800784F8:
/* 790F8 800784F8 00862020 */  add        $a0, $a0, $a2
/* 790FC 800784FC 14200005 */  bnez       $at, .L80078514
/* 79100 80078500 00A62820 */   add       $a1, $a1, $a2
/* 79104 80078504 30820003 */  andi       $v0, $a0, 0x3
/* 79108 80078508 30A30003 */  andi       $v1, $a1, 0x3
/* 7910C 8007850C 1043000D */  beq        $v0, $v1, .L80078544
/* 79110 80078510 00000000 */   nop
.L80078514:
/* 79114 80078514 10C0FFAD */  beqz       $a2, .L800783CC
/* 79118 80078518 00000000 */   nop
/* 7911C 8007851C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 79120 80078520 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 79124 80078524 00861823 */  subu       $v1, $a0, $a2
.L80078528:
/* 79128 80078528 80820000 */  lb         $v0, 0x0($a0)
/* 7912C 8007852C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 79130 80078530 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 79134 80078534 1483FFFC */  bne        $a0, $v1, .L80078528
/* 79138 80078538 A0A20001 */   sb        $v0, 0x1($a1)
/* 7913C 8007853C 03E00008 */  jr         $ra
/* 79140 80078540 00E01025 */   or        $v0, $a3, $zero
.L80078544:
/* 79144 80078544 10400018 */  beqz       $v0, .L800785A8
/* 79148 80078548 24010003 */   addiu     $at, $zero, 0x3
/* 7914C 8007854C 1041000F */  beq        $v0, $at, .L8007858C
/* 79150 80078550 24010002 */   addiu     $at, $zero, 0x2
/* 79154 80078554 50410008 */  beql       $v0, $at, .L80078578
/* 79158 80078558 8482FFFE */   lh        $v0, -0x2($a0)
/* 7915C 8007855C 8082FFFF */  lb         $v0, -0x1($a0)
/* 79160 80078560 2484FFFF */  addiu      $a0, $a0, -0x1
/* 79164 80078564 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 79168 80078568 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 7916C 8007856C 1000000E */  b          .L800785A8
/* 79170 80078570 A0A20000 */   sb        $v0, 0x0($a1)
/* 79174 80078574 8482FFFE */  lh         $v0, -0x2($a0)
.L80078578:
/* 79178 80078578 2484FFFE */  addiu      $a0, $a0, -0x2
/* 7917C 8007857C 24A5FFFE */  addiu      $a1, $a1, -0x2
/* 79180 80078580 24C6FFFE */  addiu      $a2, $a2, -0x2
/* 79184 80078584 10000008 */  b          .L800785A8
/* 79188 80078588 A4A20000 */   sh        $v0, 0x0($a1)
.L8007858C:
/* 7918C 8007858C 8082FFFF */  lb         $v0, -0x1($a0)
/* 79190 80078590 8483FFFD */  lh         $v1, -0x3($a0)
/* 79194 80078594 2484FFFD */  addiu      $a0, $a0, -0x3
/* 79198 80078598 24A5FFFD */  addiu      $a1, $a1, -0x3
/* 7919C 8007859C 24C6FFFD */  addiu      $a2, $a2, -0x3
/* 791A0 800785A0 A0A20002 */  sb         $v0, 0x2($a1)
/* 791A4 800785A4 A4A30000 */  sh         $v1, 0x0($a1)
.L800785A8:
/* 791A8 800785A8 28C10020 */  slti       $at, $a2, 0x20
/* 791AC 800785AC 54200016 */  bnel       $at, $zero, .L80078608
/* 791B0 800785B0 28C10010 */   slti      $at, $a2, 0x10
/* 791B4 800785B4 8C82FFFC */  lw         $v0, -0x4($a0)
/* 791B8 800785B8 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 791BC 800785BC 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 791C0 800785C0 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 791C4 800785C4 8C8AFFEC */  lw         $t2, -0x14($a0)
/* 791C8 800785C8 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* 791CC 800785CC 8C8CFFE4 */  lw         $t4, -0x1C($a0)
/* 791D0 800785D0 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* 791D4 800785D4 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 791D8 800785D8 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 791DC 800785DC 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 791E0 800785E0 ACA2001C */  sw         $v0, 0x1C($a1)
/* 791E4 800785E4 ACA30018 */  sw         $v1, 0x18($a1)
/* 791E8 800785E8 ACA80014 */  sw         $t0, 0x14($a1)
/* 791EC 800785EC ACA90010 */  sw         $t1, 0x10($a1)
/* 791F0 800785F0 ACAA000C */  sw         $t2, 0xC($a1)
/* 791F4 800785F4 ACAB0008 */  sw         $t3, 0x8($a1)
/* 791F8 800785F8 ACAC0004 */  sw         $t4, 0x4($a1)
/* 791FC 800785FC 1000FFEA */  b          .L800785A8
/* 79200 80078600 ACAD0000 */   sw        $t5, 0x0($a1)
.L80078604:
/* 79204 80078604 28C10010 */  slti       $at, $a2, 0x10
.L80078608:
/* 79208 80078608 5420000E */  bnel       $at, $zero, .L80078644
/* 7920C 8007860C 28C10004 */   slti      $at, $a2, 0x4
/* 79210 80078610 8C82FFFC */  lw         $v0, -0x4($a0)
/* 79214 80078614 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 79218 80078618 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 7921C 8007861C 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 79220 80078620 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 79224 80078624 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* 79228 80078628 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 7922C 8007862C ACA2000C */  sw         $v0, 0xC($a1)
/* 79230 80078630 ACA30008 */  sw         $v1, 0x8($a1)
/* 79234 80078634 ACA80004 */  sw         $t0, 0x4($a1)
/* 79238 80078638 1000FFF2 */  b          .L80078604
/* 7923C 8007863C ACA90000 */   sw        $t1, 0x0($a1)
.L80078640:
/* 79240 80078640 28C10004 */  slti       $at, $a2, 0x4
.L80078644:
/* 79244 80078644 1420FFB3 */  bnez       $at, .L80078514
/* 79248 80078648 00000000 */   nop
/* 7924C 8007864C 8C82FFFC */  lw         $v0, -0x4($a0)
/* 79250 80078650 2484FFFC */  addiu      $a0, $a0, -0x4
/* 79254 80078654 24A5FFFC */  addiu      $a1, $a1, -0x4
/* 79258 80078658 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 7925C 8007865C 1000FFF8 */  b          .L80078640
/* 79260 80078660 ACA20000 */   sw        $v0, 0x0($a1)
/* 79264 80078664 00000000 */  nop
/* 79268 80078668 00000000 */  nop
/* 7926C 8007866C 00000000 */  nop

# Handwritten function
glabel func_80078670
/* 79270 80078670 18A00011 */  blez       $a1, .L800786B8
/* 79274 80078674 00000000 */   nop
/* 79278 80078678 240B2000 */  addiu      $t3, $zero, 0x2000
/* 7927C 8007867C 00AB082B */  sltu       $at, $a1, $t3
/* 79280 80078680 1020000F */  beqz       $at, .L800786C0
/* 79284 80078684 00000000 */   nop
/* 79288 80078688 00804025 */  or         $t0, $a0, $zero
/* 7928C 8007868C 00854821 */  addu       $t1, $a0, $a1
/* 79290 80078690 0109082B */  sltu       $at, $t0, $t1
/* 79294 80078694 10200008 */  beqz       $at, .L800786B8
/* 79298 80078698 00000000 */   nop
/* 7929C 8007869C 310A000F */  andi       $t2, $t0, 0xF
/* 792A0 800786A0 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 792A4 800786A4 010A4023 */  subu       $t0, $t0, $t2
.L800786A8:
/* 792A8 800786A8 BD190000 */  cache      0x19, 0x0($t0)
/* 792AC 800786AC 0109082B */  sltu       $at, $t0, $t1
/* 792B0 800786B0 1420FFFD */  bnez       $at, .L800786A8
/* 792B4 800786B4 25080010 */   addiu     $t0, $t0, 0x10
.L800786B8:
/* 792B8 800786B8 03E00008 */  jr         $ra
/* 792BC 800786BC 00000000 */   nop
.L800786C0:
/* 792C0 800786C0 3C088000 */  lui        $t0, 0x8000
/* 792C4 800786C4 010B4821 */  addu       $t1, $t0, $t3
/* 792C8 800786C8 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800786CC:
/* 792CC 800786CC BD010000 */  cache      0x01, 0x0($t0)
/* 792D0 800786D0 0109082B */  sltu       $at, $t0, $t1
/* 792D4 800786D4 1420FFFD */  bnez       $at, .L800786CC
/* 792D8 800786D8 25080010 */   addiu     $t0, $t0, 0x10
/* 792DC 800786DC 03E00008 */  jr         $ra
/* 792E0 800786E0 00000000 */   nop
/* 792E4 800786E4 00000000 */  nop
/* 792E8 800786E8 00000000 */  nop
/* 792EC 800786EC 00000000 */  nop

glabel func_800786F0
/* 792F0 800786F0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 792F4 800786F4 03E00008 */  jr         $ra
/* 792F8 800786F8 ADC40010 */   sw        $a0, %lo(D_A4040010)($t6)
/* 792FC 800786FC 00000000 */  nop

glabel func_80078700
/* 79300 80078700 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 79304 80078704 8DC50010 */  lw         $a1, %lo(D_A4040010)($t6)
/* 79308 80078708 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7930C 8007870C 30AF0001 */  andi       $t7, $a1, 0x1
/* 79310 80078710 15E00003 */  bnez       $t7, .L80078720
/* 79314 80078714 00000000 */   nop
/* 79318 80078718 10000004 */  b          .L8007872C
/* 7931C 8007871C 2402FFFF */   addiu     $v0, $zero, -0x1
.L80078720:
/* 79320 80078720 3C18A408 */  lui        $t8, %hi(D_A4080000)
/* 79324 80078724 AF040000 */  sw         $a0, %lo(D_A4080000)($t8)
/* 79328 80078728 00001025 */  or         $v0, $zero, $zero
.L8007872C:
/* 7932C 8007872C 03E00008 */  jr         $ra
/* 79330 80078730 27BD0008 */   addiu     $sp, $sp, 0x8
/* 79334 80078734 00000000 */  nop
/* 79338 80078738 00000000 */  nop
/* 7933C 8007873C 00000000 */  nop

glabel __osSpRawStartDma
/* 79340 80078740 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79344 80078744 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79348 80078748 AFA40018 */  sw         $a0, 0x18($sp)
/* 7934C 8007874C AFA5001C */  sw         $a1, 0x1C($sp)
/* 79350 80078750 AFA60020 */  sw         $a2, 0x20($sp)
/* 79354 80078754 0C01E1F4 */  jal        func_800787D0
/* 79358 80078758 AFA70024 */   sw        $a3, 0x24($sp)
/* 7935C 8007875C 10400003 */  beqz       $v0, .L8007876C
/* 79360 80078760 00000000 */   nop
/* 79364 80078764 10000015 */  b          .L800787BC
/* 79368 80078768 2402FFFF */   addiu     $v0, $zero, -0x1
.L8007876C:
/* 7936C 8007876C 8FAE001C */  lw         $t6, 0x1C($sp)
/* 79370 80078770 3C0FA404 */  lui        $t7, %hi(D_A4040000)
/* 79374 80078774 ADEE0000 */  sw         $t6, %lo(D_A4040000)($t7)
/* 79378 80078778 0C019FAC */  jal        func_80067EB0
/* 7937C 8007877C 8FA40020 */   lw        $a0, 0x20($sp)
/* 79380 80078780 3C18A404 */  lui        $t8, %hi(D_A4040004)
/* 79384 80078784 AF020004 */  sw         $v0, %lo(D_A4040004)($t8)
/* 79388 80078788 8FB90018 */  lw         $t9, 0x18($sp)
/* 7938C 8007878C 17200006 */  bnez       $t9, .L800787A8
/* 79390 80078790 00000000 */   nop
/* 79394 80078794 8FA80024 */  lw         $t0, 0x24($sp)
/* 79398 80078798 3C0AA404 */  lui        $t2, %hi(D_A404000C)
/* 7939C 8007879C 2509FFFF */  addiu      $t1, $t0, -0x1
/* 793A0 800787A0 10000005 */  b          .L800787B8
/* 793A4 800787A4 AD49000C */   sw        $t1, %lo(D_A404000C)($t2)
.L800787A8:
/* 793A8 800787A8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 793AC 800787AC 3C0DA404 */  lui        $t5, %hi(D_A4040008)
/* 793B0 800787B0 256CFFFF */  addiu      $t4, $t3, -0x1
/* 793B4 800787B4 ADAC0008 */  sw         $t4, %lo(D_A4040008)($t5)
.L800787B8:
/* 793B8 800787B8 00001025 */  or         $v0, $zero, $zero
.L800787BC:
/* 793BC 800787BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 793C0 800787C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 793C4 800787C4 03E00008 */  jr         $ra
/* 793C8 800787C8 00000000 */   nop
/* 793CC 800787CC 00000000 */  nop

glabel func_800787D0
/* 793D0 800787D0 3C0EA404 */  lui        $t6, %hi(D_A4040010)
/* 793D4 800787D4 8DC40010 */  lw         $a0, %lo(D_A4040010)($t6)
/* 793D8 800787D8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 793DC 800787DC 308F001C */  andi       $t7, $a0, 0x1C
/* 793E0 800787E0 11E00003 */  beqz       $t7, .L800787F0
/* 793E4 800787E4 00000000 */   nop
/* 793E8 800787E8 10000002 */  b          .L800787F4
/* 793EC 800787EC 24020001 */   addiu     $v0, $zero, 0x1
.L800787F0:
/* 793F0 800787F0 00001025 */  or         $v0, $zero, $zero
.L800787F4:
/* 793F4 800787F4 03E00008 */  jr         $ra
/* 793F8 800787F8 27BD0008 */   addiu     $sp, $sp, 0x8
/* 793FC 800787FC 00000000 */  nop

glabel func_80078800
/* 79400 80078800 3C0EA410 */  lui        $t6, %hi(D_A410000C)
/* 79404 80078804 8DC4000C */  lw         $a0, %lo(D_A410000C)($t6)
/* 79408 80078808 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7940C 8007880C 308F0100 */  andi       $t7, $a0, 0x100
/* 79410 80078810 11E00003 */  beqz       $t7, .L80078820
/* 79414 80078814 00000000 */   nop
/* 79418 80078818 10000002 */  b          .L80078824
/* 7941C 8007881C 24020001 */   addiu     $v0, $zero, 0x1
.L80078820:
/* 79420 80078820 00001025 */  or         $v0, $zero, $zero
.L80078824:
/* 79424 80078824 03E00008 */  jr         $ra
/* 79428 80078828 27BD0008 */   addiu     $sp, $sp, 0x8
/* 7942C 8007882C 00000000 */  nop

# Handwritten function
glabel func_80078830
/* 79430 80078830 40846000 */  mtc0       $a0, $12
/* 79434 80078834 00000000 */  nop
/* 79438 80078838 03E00008 */  jr         $ra
/* 7943C 8007883C 00000000 */   nop

# Handwritten function
glabel __osGetSR
/* 79440 80078840 40026000 */  mfc0       $v0, $12
/* 79444 80078844 03E00008 */  jr         $ra
/* 79448 80078848 00000000 */   nop
/* 7944C 8007884C 00000000 */  nop

glabel func_80078850
/* 79450 80078850 4442F800 */  cfc1       $v0, $31
/* 79454 80078854 44C4F800 */  ctc1       $a0, $31
/* 79458 80078858 03E00008 */  jr         $ra
/* 7945C 8007885C 00000000 */   nop

glabel __osSpRawReadIo
/* 79460 80078860 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79464 80078864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79468 80078868 AFA40018 */  sw         $a0, 0x18($sp)
/* 7946C 8007886C 0C01EAA8 */  jal        func_8007AAA0
/* 79470 80078870 AFA5001C */   sw        $a1, 0x1C($sp)
/* 79474 80078874 10400003 */  beqz       $v0, .L80078884
/* 79478 80078878 00000000 */   nop
/* 7947C 8007887C 10000008 */  b          .L800788A0
/* 79480 80078880 2402FFFF */   addiu     $v0, $zero, -0x1
.L80078884:
/* 79484 80078884 8FAE0018 */  lw         $t6, 0x18($sp)
/* 79488 80078888 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 7948C 8007888C 8FB9001C */  lw         $t9, 0x1C($sp)
/* 79490 80078890 01C17825 */  or         $t7, $t6, $at
/* 79494 80078894 8DF80000 */  lw         $t8, %lo(D_A0000000)($t7)
/* 79498 80078898 00001025 */  or         $v0, $zero, $zero
/* 7949C 8007889C AF380000 */  sw         $t8, 0x0($t9)
.L800788A0:
/* 794A0 800788A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 794A4 800788A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 794A8 800788A8 03E00008 */  jr         $ra
/* 794AC 800788AC 00000000 */   nop

glabel __osSpRawWriteIo
/* 794B0 800788B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 794B4 800788B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 794B8 800788B8 AFA40018 */  sw         $a0, 0x18($sp)
/* 794BC 800788BC 0C01EAA8 */  jal        func_8007AAA0
/* 794C0 800788C0 AFA5001C */   sw        $a1, 0x1C($sp)
/* 794C4 800788C4 10400003 */  beqz       $v0, .L800788D4
/* 794C8 800788C8 00000000 */   nop
/* 794CC 800788CC 10000007 */  b          .L800788EC
/* 794D0 800788D0 2402FFFF */   addiu     $v0, $zero, -0x1
.L800788D4:
/* 794D4 800788D4 8FAF0018 */  lw         $t7, 0x18($sp)
/* 794D8 800788D8 8FAE001C */  lw         $t6, 0x1C($sp)
/* 794DC 800788DC 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 794E0 800788E0 01E1C025 */  or         $t8, $t7, $at
/* 794E4 800788E4 00001025 */  or         $v0, $zero, $zero
/* 794E8 800788E8 AF0E0000 */  sw         $t6, %lo(D_A0000000)($t8)
.L800788EC:
/* 794EC 800788EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 794F0 800788F0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 794F4 800788F4 03E00008 */  jr         $ra
/* 794F8 800788F8 00000000 */   nop
/* 794FC 800788FC 00000000 */  nop

# Handwritten function
glabel func_80078900
/* 79500 80078900 18A00011 */  blez       $a1, .L80078948
/* 79504 80078904 00000000 */   nop
/* 79508 80078908 240B4000 */  addiu      $t3, $zero, 0x4000
/* 7950C 8007890C 00AB082B */  sltu       $at, $a1, $t3
/* 79510 80078910 1020000F */  beqz       $at, .L80078950
/* 79514 80078914 00000000 */   nop
/* 79518 80078918 00804025 */  or         $t0, $a0, $zero
/* 7951C 8007891C 00854821 */  addu       $t1, $a0, $a1
/* 79520 80078920 0109082B */  sltu       $at, $t0, $t1
/* 79524 80078924 10200008 */  beqz       $at, .L80078948
/* 79528 80078928 00000000 */   nop
/* 7952C 8007892C 310A001F */  andi       $t2, $t0, 0x1F
/* 79530 80078930 2529FFE0 */  addiu      $t1, $t1, -0x20
/* 79534 80078934 010A4023 */  subu       $t0, $t0, $t2
.L80078938:
/* 79538 80078938 BD100000 */  cache      0x10, 0x0($t0)
/* 7953C 8007893C 0109082B */  sltu       $at, $t0, $t1
/* 79540 80078940 1420FFFD */  bnez       $at, .L80078938
/* 79544 80078944 25080020 */   addiu     $t0, $t0, 0x20
.L80078948:
/* 79548 80078948 03E00008 */  jr         $ra
/* 7954C 8007894C 00000000 */   nop
.L80078950:
/* 79550 80078950 3C088000 */  lui        $t0, 0x8000
/* 79554 80078954 010B4821 */  addu       $t1, $t0, $t3
/* 79558 80078958 2529FFE0 */  addiu      $t1, $t1, -0x20
.L8007895C:
/* 7955C 8007895C BD000000 */  cache      0x00, 0x0($t0)
/* 79560 80078960 0109082B */  sltu       $at, $t0, $t1
/* 79564 80078964 1420FFFD */  bnez       $at, .L8007895C
/* 79568 80078968 25080020 */   addiu     $t0, $t0, 0x20
/* 7956C 8007896C 03E00008 */  jr         $ra
/* 79570 80078970 00000000 */   nop
/* 79574 80078974 00000000 */  nop
/* 79578 80078978 00000000 */  nop
/* 7957C 8007897C 00000000 */  nop

# Handwritten function
glabel func_80078980
/* 79580 80078980 40085000 */  mfc0       $t0, $10
/* 79584 80078984 2409001F */  addiu      $t1, $zero, 0x1F
/* 79588 80078988 40890000 */  mtc0       $t1, $0
/* 7958C 8007898C 40802800 */  mtc0       $zero, $5
/* 79590 80078990 240A0017 */  addiu      $t2, $zero, 0x17
/* 79594 80078994 3C09C000 */  lui        $t1, (0xC0000000 >> 16)
/* 79598 80078998 40895000 */  mtc0       $t1, $10
/* 7959C 8007899C 3C098000 */  lui        $t1, (0x80000000 >> 16)
/* 795A0 800789A0 00095982 */  srl        $t3, $t1, 6
/* 795A4 800789A4 016A5825 */  or         $t3, $t3, $t2
/* 795A8 800789A8 408B1000 */  mtc0       $t3, $2
/* 795AC 800789AC 24090001 */  addiu      $t1, $zero, 0x1
/* 795B0 800789B0 40891800 */  mtc0       $t1, $3
/* 795B4 800789B4 00000000 */  nop
/* 795B8 800789B8 42000002 */  tlbwi
/* 795BC 800789BC 00000000 */  nop
/* 795C0 800789C0 00000000 */  nop
/* 795C4 800789C4 00000000 */  nop
/* 795C8 800789C8 00000000 */  nop
/* 795CC 800789CC 40885000 */  mtc0       $t0, $10
/* 795D0 800789D0 03E00008 */  jr         $ra
/* 795D4 800789D4 00000000 */   nop
/* 795D8 800789D8 00000000 */  nop
/* 795DC 800789DC 00000000 */  nop

glabel func_800789E0
/* 795E0 800789E0 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 795E4 800789E4 8DC60010 */  lw         $a2, %lo(D_A4600010)($t6)
/* 795E8 800789E8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 795EC 800789EC 30CF0003 */  andi       $t7, $a2, 0x3
/* 795F0 800789F0 11E00006 */  beqz       $t7, .L80078A0C
/* 795F4 800789F4 00000000 */   nop
.L800789F8:
/* 795F8 800789F8 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 795FC 800789FC 8F060010 */  lw         $a2, %lo(D_A4600010)($t8)
/* 79600 80078A00 30D90003 */  andi       $t9, $a2, 0x3
/* 79604 80078A04 1720FFFC */  bnez       $t9, .L800789F8
/* 79608 80078A08 00000000 */   nop
.L80078A0C:
/* 7960C 80078A0C 3C088000 */  lui        $t0, %hi(osRomBase)
/* 79610 80078A10 8D080308 */  lw         $t0, %lo(osRomBase)($t0)
/* 79614 80078A14 3C01A000 */  lui        $at, (0xA0000000 >> 16)
/* 79618 80078A18 00001025 */  or         $v0, $zero, $zero
/* 7961C 80078A1C 01044825 */  or         $t1, $t0, $a0
/* 79620 80078A20 01215025 */  or         $t2, $t1, $at
/* 79624 80078A24 8D4B0000 */  lw         $t3, 0x0($t2)
/* 79628 80078A28 27BD0008 */  addiu      $sp, $sp, 0x8
/* 7962C 80078A2C 03E00008 */  jr         $ra
/* 79630 80078A30 ACAB0000 */   sw        $t3, 0x0($a1)
/* 79634 80078A34 00000000 */  nop
/* 79638 80078A38 00000000 */  nop
/* 7963C 80078A3C 00000000 */  nop

glabel func_80078A40
/* 79640 80078A40 3C0E801B */  lui        $t6, %hi(D_801AD39C)
/* 79644 80078A44 8DCED39C */  lw         $t6, %lo(D_801AD39C)($t6)
/* 79648 80078A48 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7964C 80078A4C 3C01B000 */  lui        $at, (0xB0000000 >> 16)
/* 79650 80078A50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79654 80078A54 15C10004 */  bne        $t6, $at, .L80078A68
/* 79658 80078A58 AFA0001C */   sw        $zero, 0x1C($sp)
/* 7965C 80078A5C 3C02801B */  lui        $v0, %hi(D_801AD390)
/* 79660 80078A60 10000030 */  b          .L80078B24
/* 79664 80078A64 2442D390 */   addiu     $v0, $v0, %lo(D_801AD390)
.L80078A68:
/* 79668 80078A68 3C01801B */  lui        $at, %hi(D_801AD394)
/* 7966C 80078A6C A020D394 */  sb         $zero, %lo(D_801AD394)($at)
/* 79670 80078A70 3C01801B */  lui        $at, %hi(D_801AD39C)
/* 79674 80078A74 3C0FB000 */  lui        $t7, (0xB0000000 >> 16)
/* 79678 80078A78 AC2FD39C */  sw         $t7, %lo(D_801AD39C)($at)
/* 7967C 80078A7C 00002025 */  or         $a0, $zero, $zero
/* 79680 80078A80 0C01E278 */  jal        func_800789E0
/* 79684 80078A84 27A5001C */   addiu     $a1, $sp, 0x1C
/* 79688 80078A88 8FB8001C */  lw         $t8, 0x1C($sp)
/* 7968C 80078A8C 3C01801B */  lui        $at, %hi(D_801AD395)
/* 79690 80078A90 3C04801B */  lui        $a0, %hi(D_801AD390)
/* 79694 80078A94 331900FF */  andi       $t9, $t8, 0xFF
/* 79698 80078A98 A039D395 */  sb         $t9, %lo(D_801AD395)($at)
/* 7969C 80078A9C 00184202 */  srl        $t0, $t8, 8
/* 796A0 80078AA0 310900FF */  andi       $t1, $t0, 0xFF
/* 796A4 80078AA4 3C01801B */  lui        $at, %hi(D_801AD398)
/* 796A8 80078AA8 A029D398 */  sb         $t1, %lo(D_801AD398)($at)
/* 796AC 80078AAC 3C01801B */  lui        $at, %hi(D_801AD396)
/* 796B0 80078AB0 00185402 */  srl        $t2, $t8, 16
/* 796B4 80078AB4 00186502 */  srl        $t4, $t8, 20
/* 796B8 80078AB8 314B000F */  andi       $t3, $t2, 0xF
/* 796BC 80078ABC 318D000F */  andi       $t5, $t4, 0xF
/* 796C0 80078AC0 A02BD396 */  sb         $t3, %lo(D_801AD396)($at)
/* 796C4 80078AC4 A02DD397 */  sb         $t5, %lo(D_801AD397)($at)
/* 796C8 80078AC8 3C01801B */  lui        $at, %hi(D_801AD399)
/* 796CC 80078ACC A020D399 */  sb         $zero, %lo(D_801AD399)($at)
/* 796D0 80078AD0 3C01801B */  lui        $at, %hi(D_801AD3A0)
/* 796D4 80078AD4 2484D390 */  addiu      $a0, $a0, %lo(D_801AD390)
/* 796D8 80078AD8 AC20D3A0 */  sw         $zero, %lo(D_801AD3A0)($at)
/* 796DC 80078ADC 24840014 */  addiu      $a0, $a0, 0x14
/* 796E0 80078AE0 0C01B128 */  jal        bzero
/* 796E4 80078AE4 24050060 */   addiu     $a1, $zero, 0x60
/* 796E8 80078AE8 0C01C218 */  jal        __osDisableInt
/* 796EC 80078AEC 00000000 */   nop
/* 796F0 80078AF0 3C0E8009 */  lui        $t6, %hi(D_8009485C)
/* 796F4 80078AF4 8DCE485C */  lw         $t6, %lo(D_8009485C)($t6)
/* 796F8 80078AF8 3C01801B */  lui        $at, %hi(D_801AD390)
/* 796FC 80078AFC 3C0F801B */  lui        $t7, %hi(D_801AD390)
/* 79700 80078B00 AC2ED390 */  sw         $t6, %lo(D_801AD390)($at)
/* 79704 80078B04 AFA20018 */  sw         $v0, 0x18($sp)
/* 79708 80078B08 3C018009 */  lui        $at, %hi(D_8009485C)
/* 7970C 80078B0C 25EFD390 */  addiu      $t7, $t7, %lo(D_801AD390)
/* 79710 80078B10 AC2F485C */  sw         $t7, %lo(D_8009485C)($at)
/* 79714 80078B14 0C01C220 */  jal        __osRestoreInt
/* 79718 80078B18 8FA40018 */   lw        $a0, 0x18($sp)
/* 7971C 80078B1C 3C02801B */  lui        $v0, %hi(D_801AD390)
/* 79720 80078B20 2442D390 */  addiu      $v0, $v0, %lo(D_801AD390)
.L80078B24:
/* 79724 80078B24 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79728 80078B28 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7972C 80078B2C 03E00008 */  jr         $ra
/* 79730 80078B30 00000000 */   nop
/* 79734 80078B34 00000000 */  nop
/* 79738 80078B38 00000000 */  nop
/* 7973C 80078B3C 00000000 */  nop

glabel func_80078B40
/* 79740 80078B40 240E0002 */  addiu      $t6, $zero, 0x2
/* 79744 80078B44 3C01801B */  lui        $at, %hi(D_801AD414)
/* 79748 80078B48 A02ED414 */  sb         $t6, %lo(D_801AD414)($at)
/* 7974C 80078B4C 3C01801B */  lui        $at, %hi(D_801AD41C)
/* 79750 80078B50 3C0FA500 */  lui        $t7, (0xA5000000 >> 16)
/* 79754 80078B54 AC2FD41C */  sw         $t7, %lo(D_801AD41C)($at)
/* 79758 80078B58 3C01801B */  lui        $at, %hi(D_801AD415)
/* 7975C 80078B5C 24180003 */  addiu      $t8, $zero, 0x3
/* 79760 80078B60 A038D415 */  sb         $t8, %lo(D_801AD415)($at)
/* 79764 80078B64 3C01801B */  lui        $at, %hi(D_801AD418)
/* 79768 80078B68 24190006 */  addiu      $t9, $zero, 0x6
/* 7976C 80078B6C A039D418 */  sb         $t9, %lo(D_801AD418)($at)
/* 79770 80078B70 3C01801B */  lui        $at, %hi(D_801AD416)
/* 79774 80078B74 24080006 */  addiu      $t0, $zero, 0x6
/* 79778 80078B78 24090002 */  addiu      $t1, $zero, 0x2
/* 7977C 80078B7C A028D416 */  sb         $t0, %lo(D_801AD416)($at)
/* 79780 80078B80 A029D417 */  sb         $t1, %lo(D_801AD416 + 0x1)($at)
/* 79784 80078B84 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 79788 80078B88 3C01801B */  lui        $at, %hi(D_801AD419)
/* 7978C 80078B8C 240A0001 */  addiu      $t2, $zero, 0x1
/* 79790 80078B90 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79794 80078B94 A02AD419 */  sb         $t2, %lo(D_801AD419)($at)
/* 79798 80078B98 240B0003 */  addiu      $t3, $zero, 0x3
/* 7979C 80078B9C 3C0CA460 */  lui        $t4, %hi(D_A4600024)
/* 797A0 80078BA0 AD8B0024 */  sw         $t3, %lo(D_A4600024)($t4)
/* 797A4 80078BA4 3C0D801B */  lui        $t5, %hi(D_801AD418)
/* 797A8 80078BA8 91ADD418 */  lbu        $t5, %lo(D_801AD418)($t5)
/* 797AC 80078BAC 3C0EA460 */  lui        $t6, %hi(D_A4600028)
/* 797B0 80078BB0 3C0F801B */  lui        $t7, %hi(D_801AD416)
/* 797B4 80078BB4 ADCD0028 */  sw         $t5, %lo(D_A4600028)($t6)
/* 797B8 80078BB8 91EFD416 */  lbu        $t7, %lo(D_801AD416)($t7)
/* 797BC 80078BBC 3C18A460 */  lui        $t8, %hi(D_A460002C)
/* 797C0 80078BC0 3C19801B */  lui        $t9, %hi(D_801AD416 + 0x1)
/* 797C4 80078BC4 AF0F002C */  sw         $t7, %lo(D_A460002C)($t8)
/* 797C8 80078BC8 9339D417 */  lbu        $t9, %lo(D_801AD416 + 0x1)($t9)
/* 797CC 80078BCC 3C08A460 */  lui        $t0, %hi(D_A4600030)
/* 797D0 80078BD0 3C04801B */  lui        $a0, %hi(D_801AD410)
/* 797D4 80078BD4 3C01801B */  lui        $at, %hi(D_801AD420)
/* 797D8 80078BD8 2484D410 */  addiu      $a0, $a0, %lo(D_801AD410)
/* 797DC 80078BDC AD190030 */  sw         $t9, %lo(D_A4600030)($t0)
/* 797E0 80078BE0 AC20D420 */  sw         $zero, %lo(D_801AD420)($at)
/* 797E4 80078BE4 24840014 */  addiu      $a0, $a0, 0x14
/* 797E8 80078BE8 0C01B128 */  jal        bzero
/* 797EC 80078BEC 24050060 */   addiu     $a1, $zero, 0x60
/* 797F0 80078BF0 0C01C218 */  jal        __osDisableInt
/* 797F4 80078BF4 00000000 */   nop
/* 797F8 80078BF8 3C098009 */  lui        $t1, %hi(D_8009485C)
/* 797FC 80078BFC 8D29485C */  lw         $t1, %lo(D_8009485C)($t1)
/* 79800 80078C00 3C01801B */  lui        $at, %hi(D_801AD410)
/* 79804 80078C04 3C0A801B */  lui        $t2, %hi(D_801AD410)
/* 79808 80078C08 AC29D410 */  sw         $t1, %lo(D_801AD410)($at)
/* 7980C 80078C0C 3C018009 */  lui        $at, %hi(D_8009485C)
/* 79810 80078C10 254AD410 */  addiu      $t2, $t2, %lo(D_801AD410)
/* 79814 80078C14 AC2A485C */  sw         $t2, %lo(D_8009485C)($at)
/* 79818 80078C18 AFA2001C */  sw         $v0, 0x1C($sp)
/* 7981C 80078C1C 3C01801B */  lui        $at, %hi(D_801AD484)
/* 79820 80078C20 AC2AD484 */  sw         $t2, %lo(D_801AD484)($at)
/* 79824 80078C24 0C01C220 */  jal        __osRestoreInt
/* 79828 80078C28 8FA4001C */   lw        $a0, 0x1C($sp)
/* 7982C 80078C2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79830 80078C30 3C02801B */  lui        $v0, %hi(D_801AD410)
/* 79834 80078C34 2442D410 */  addiu      $v0, $v0, %lo(D_801AD410)
/* 79838 80078C38 03E00008 */  jr         $ra
/* 7983C 80078C3C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80078C40
/* 79840 80078C40 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 79844 80078C44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 79848 80078C48 240E0001 */  addiu      $t6, $zero, 0x1
/* 7984C 80078C4C 3C018009 */  lui        $at, %hi(D_80094C60)
/* 79850 80078C50 3C04801B */  lui        $a0, %hi(D_801AD498)
/* 79854 80078C54 3C05801B */  lui        $a1, %hi(D_801AD490)
/* 79858 80078C58 AC2E4C60 */  sw         $t6, %lo(D_80094C60)($at)
/* 7985C 80078C5C 24A5D490 */  addiu      $a1, $a1, %lo(D_801AD490)
/* 79860 80078C60 2484D498 */  addiu      $a0, $a0, %lo(D_801AD498)
/* 79864 80078C64 0C01978C */  jal        func_80065E30
/* 79868 80078C68 24060001 */   addiu     $a2, $zero, 0x1
/* 7986C 80078C6C 3C04801B */  lui        $a0, %hi(D_801AD498)
/* 79870 80078C70 2484D498 */  addiu      $a0, $a0, %lo(D_801AD498)
/* 79874 80078C74 00002825 */  or         $a1, $zero, $zero
/* 79878 80078C78 0C01A1B4 */  jal        func_800686D0
/* 7987C 80078C7C 00003025 */   or        $a2, $zero, $zero
/* 79880 80078C80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 79884 80078C84 27BD0018 */  addiu      $sp, $sp, 0x18
/* 79888 80078C88 03E00008 */  jr         $ra
/* 7988C 80078C8C 00000000 */   nop

glabel func_80078C90
/* 79890 80078C90 3C0E8009 */  lui        $t6, %hi(D_80094C60)
/* 79894 80078C94 8DCE4C60 */  lw         $t6, %lo(D_80094C60)($t6)
/* 79898 80078C98 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7989C 80078C9C AFBF0014 */  sw         $ra, 0x14($sp)
/* 798A0 80078CA0 15C00003 */  bnez       $t6, .L80078CB0
/* 798A4 80078CA4 00000000 */   nop
/* 798A8 80078CA8 0C01E310 */  jal        func_80078C40
/* 798AC 80078CAC 00000000 */   nop
.L80078CB0:
/* 798B0 80078CB0 3C04801B */  lui        $a0, %hi(D_801AD498)
/* 798B4 80078CB4 2484D498 */  addiu      $a0, $a0, %lo(D_801AD498)
/* 798B8 80078CB8 27A5001C */  addiu      $a1, $sp, 0x1C
/* 798BC 80078CBC 0C019824 */  jal        func_80066090
/* 798C0 80078CC0 24060001 */   addiu     $a2, $zero, 0x1
/* 798C4 80078CC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 798C8 80078CC8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 798CC 80078CCC 03E00008 */  jr         $ra
/* 798D0 80078CD0 00000000 */   nop

glabel func_80078CD4
/* 798D4 80078CD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 798D8 80078CD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 798DC 80078CDC 3C04801B */  lui        $a0, %hi(D_801AD498)
/* 798E0 80078CE0 2484D498 */  addiu      $a0, $a0, %lo(D_801AD498)
/* 798E4 80078CE4 00002825 */  or         $a1, $zero, $zero
/* 798E8 80078CE8 0C01A1B4 */  jal        func_800686D0
/* 798EC 80078CEC 00003025 */   or        $a2, $zero, $zero
/* 798F0 80078CF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 798F4 80078CF4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 798F8 80078CF8 03E00008 */  jr         $ra
/* 798FC 80078CFC 00000000 */   nop

glabel osPiRawStartDma
/* 79900 80078D00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 79904 80078D04 AFBF001C */  sw         $ra, 0x1C($sp)
/* 79908 80078D08 AFA40028 */  sw         $a0, 0x28($sp)
/* 7990C 80078D0C AFA5002C */  sw         $a1, 0x2C($sp)
/* 79910 80078D10 AFA60030 */  sw         $a2, 0x30($sp)
/* 79914 80078D14 AFA70034 */  sw         $a3, 0x34($sp)
/* 79918 80078D18 AFB10018 */  sw         $s1, 0x18($sp)
/* 7991C 80078D1C AFB00014 */  sw         $s0, 0x14($sp)
/* 79920 80078D20 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 79924 80078D24 8DD00010 */  lw         $s0, %lo(D_A4600010)($t6)
/* 79928 80078D28 320F0003 */  andi       $t7, $s0, 0x3
/* 7992C 80078D2C 11E00006 */  beqz       $t7, .L80078D48
/* 79930 80078D30 00000000 */   nop
.L80078D34:
/* 79934 80078D34 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 79938 80078D38 8F100010 */  lw         $s0, %lo(D_A4600010)($t8)
/* 7993C 80078D3C 32190003 */  andi       $t9, $s0, 0x3
/* 79940 80078D40 1720FFFC */  bnez       $t9, .L80078D34
/* 79944 80078D44 00000000 */   nop
.L80078D48:
/* 79948 80078D48 0C019FAC */  jal        func_80067EB0
/* 7994C 80078D4C 8FA40030 */   lw        $a0, 0x30($sp)
/* 79950 80078D50 3C08A460 */  lui        $t0, %hi(D_A4600000)
/* 79954 80078D54 AD020000 */  sw         $v0, %lo(D_A4600000)($t0)
/* 79958 80078D58 3C098000 */  lui        $t1, %hi(osRomBase)
/* 7995C 80078D5C 8D290308 */  lw         $t1, %lo(osRomBase)($t1)
/* 79960 80078D60 8FAA002C */  lw         $t2, 0x2C($sp)
/* 79964 80078D64 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 79968 80078D68 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 7996C 80078D6C 012A5825 */  or         $t3, $t1, $t2
/* 79970 80078D70 01616024 */  and        $t4, $t3, $at
/* 79974 80078D74 3C0DA460 */  lui        $t5, %hi(D_A4600004)
/* 79978 80078D78 ADAC0004 */  sw         $t4, %lo(D_A4600004)($t5)
/* 7997C 80078D7C 8FB10028 */  lw         $s1, 0x28($sp)
/* 79980 80078D80 12200005 */  beqz       $s1, .L80078D98
/* 79984 80078D84 24010001 */   addiu     $at, $zero, 0x1
/* 79988 80078D88 12210008 */  beq        $s1, $at, .L80078DAC
/* 7998C 80078D8C 00000000 */   nop
/* 79990 80078D90 1000000B */  b          .L80078DC0
/* 79994 80078D94 00000000 */   nop
.L80078D98:
/* 79998 80078D98 8FAE0034 */  lw         $t6, 0x34($sp)
/* 7999C 80078D9C 3C18A460 */  lui        $t8, %hi(D_A460000C)
/* 799A0 80078DA0 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 799A4 80078DA4 10000008 */  b          .L80078DC8
/* 799A8 80078DA8 AF0F000C */   sw        $t7, %lo(D_A460000C)($t8)
.L80078DAC:
/* 799AC 80078DAC 8FB90034 */  lw         $t9, 0x34($sp)
/* 799B0 80078DB0 3C09A460 */  lui        $t1, %hi(D_A4600008)
/* 799B4 80078DB4 2728FFFF */  addiu      $t0, $t9, -0x1
/* 799B8 80078DB8 10000003 */  b          .L80078DC8
/* 799BC 80078DBC AD280008 */   sw        $t0, %lo(D_A4600008)($t1)
.L80078DC0:
/* 799C0 80078DC0 10000002 */  b          .L80078DCC
/* 799C4 80078DC4 2402FFFF */   addiu     $v0, $zero, -0x1
.L80078DC8:
/* 799C8 80078DC8 00001025 */  or         $v0, $zero, $zero
.L80078DCC:
/* 799CC 80078DCC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 799D0 80078DD0 8FB00014 */  lw         $s0, 0x14($sp)
/* 799D4 80078DD4 8FB10018 */  lw         $s1, 0x18($sp)
/* 799D8 80078DD8 03E00008 */  jr         $ra
/* 799DC 80078DDC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel osEPiRawStartDma
/* 799E0 80078DE0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 799E4 80078DE4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 799E8 80078DE8 AFA40030 */  sw         $a0, 0x30($sp)
/* 799EC 80078DEC AFA50034 */  sw         $a1, 0x34($sp)
/* 799F0 80078DF0 AFA60038 */  sw         $a2, 0x38($sp)
/* 799F4 80078DF4 AFA7003C */  sw         $a3, 0x3C($sp)
/* 799F8 80078DF8 AFB00018 */  sw         $s0, 0x18($sp)
/* 799FC 80078DFC 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 79A00 80078E00 8DCF0010 */  lw         $t7, %lo(D_A4600010)($t6)
/* 79A04 80078E04 31F80003 */  andi       $t8, $t7, 0x3
/* 79A08 80078E08 13000008 */  beqz       $t8, .L80078E2C
/* 79A0C 80078E0C AFAF002C */   sw        $t7, 0x2C($sp)
.L80078E10:
/* 79A10 80078E10 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* 79A14 80078E14 8F280010 */  lw         $t0, %lo(D_A4600010)($t9)
/* 79A18 80078E18 AFA8002C */  sw         $t0, 0x2C($sp)
/* 79A1C 80078E1C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 79A20 80078E20 312A0003 */  andi       $t2, $t1, 0x3
/* 79A24 80078E24 1540FFFA */  bnez       $t2, .L80078E10
/* 79A28 80078E28 00000000 */   nop
.L80078E2C:
/* 79A2C 80078E2C 8FAB0030 */  lw         $t3, 0x30($sp)
/* 79A30 80078E30 3C0E8009 */  lui        $t6, %hi(__osCurrentHandle)
/* 79A34 80078E34 916C0009 */  lbu        $t4, 0x9($t3)
/* 79A38 80078E38 000C6880 */  sll        $t5, $t4, 2
/* 79A3C 80078E3C 01CD7021 */  addu       $t6, $t6, $t5
/* 79A40 80078E40 8DCE4860 */  lw         $t6, %lo(__osCurrentHandle)($t6)
/* 79A44 80078E44 AFAC0028 */  sw         $t4, 0x28($sp)
/* 79A48 80078E48 11CB0048 */  beq        $t6, $t3, .L80078F6C
/* 79A4C 80078E4C 00000000 */   nop
/* 79A50 80078E50 15800020 */  bnez       $t4, .L80078ED4
/* 79A54 80078E54 AFAE0024 */   sw        $t6, 0x24($sp)
/* 79A58 80078E58 91CF0005 */  lbu        $t7, 0x5($t6)
/* 79A5C 80078E5C 91780005 */  lbu        $t8, 0x5($t3)
/* 79A60 80078E60 11F80003 */  beq        $t7, $t8, .L80078E70
/* 79A64 80078E64 00000000 */   nop
/* 79A68 80078E68 3C19A460 */  lui        $t9, %hi(D_A4600014)
/* 79A6C 80078E6C AF380014 */  sw         $t8, %lo(D_A4600014)($t9)
.L80078E70:
/* 79A70 80078E70 8FA80024 */  lw         $t0, 0x24($sp)
/* 79A74 80078E74 8FAA0030 */  lw         $t2, 0x30($sp)
/* 79A78 80078E78 91090006 */  lbu        $t1, 0x6($t0)
/* 79A7C 80078E7C 914D0006 */  lbu        $t5, 0x6($t2)
/* 79A80 80078E80 112D0003 */  beq        $t1, $t5, .L80078E90
/* 79A84 80078E84 00000000 */   nop
/* 79A88 80078E88 3C0CA460 */  lui        $t4, %hi(D_A460001C)
/* 79A8C 80078E8C AD8D001C */  sw         $t5, %lo(D_A460001C)($t4)
.L80078E90:
/* 79A90 80078E90 8FAE0024 */  lw         $t6, 0x24($sp)
/* 79A94 80078E94 8FAF0030 */  lw         $t7, 0x30($sp)
/* 79A98 80078E98 91CB0007 */  lbu        $t3, 0x7($t6)
/* 79A9C 80078E9C 91F80007 */  lbu        $t8, 0x7($t7)
/* 79AA0 80078EA0 11780003 */  beq        $t3, $t8, .L80078EB0
/* 79AA4 80078EA4 00000000 */   nop
/* 79AA8 80078EA8 3C19A460 */  lui        $t9, %hi(D_A4600020)
/* 79AAC 80078EAC AF380020 */  sw         $t8, %lo(D_A4600020)($t9)
.L80078EB0:
/* 79AB0 80078EB0 8FA80024 */  lw         $t0, 0x24($sp)
/* 79AB4 80078EB4 8FA90030 */  lw         $t1, 0x30($sp)
/* 79AB8 80078EB8 910A0008 */  lbu        $t2, 0x8($t0)
/* 79ABC 80078EBC 912D0008 */  lbu        $t5, 0x8($t1)
/* 79AC0 80078EC0 114D0024 */  beq        $t2, $t5, .L80078F54
/* 79AC4 80078EC4 00000000 */   nop
/* 79AC8 80078EC8 3C0CA460 */  lui        $t4, %hi(D_A4600018)
/* 79ACC 80078ECC 10000021 */  b          .L80078F54
/* 79AD0 80078ED0 AD8D0018 */   sw        $t5, %lo(D_A4600018)($t4)
.L80078ED4:
/* 79AD4 80078ED4 8FAE0024 */  lw         $t6, 0x24($sp)
/* 79AD8 80078ED8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 79ADC 80078EDC 91CF0005 */  lbu        $t7, 0x5($t6)
/* 79AE0 80078EE0 91780005 */  lbu        $t8, 0x5($t3)
/* 79AE4 80078EE4 11F80003 */  beq        $t7, $t8, .L80078EF4
/* 79AE8 80078EE8 00000000 */   nop
/* 79AEC 80078EEC 3C19A460 */  lui        $t9, %hi(D_A4600024)
/* 79AF0 80078EF0 AF380024 */  sw         $t8, %lo(D_A4600024)($t9)
.L80078EF4:
/* 79AF4 80078EF4 8FA80024 */  lw         $t0, 0x24($sp)
/* 79AF8 80078EF8 8FAA0030 */  lw         $t2, 0x30($sp)
/* 79AFC 80078EFC 91090006 */  lbu        $t1, 0x6($t0)
/* 79B00 80078F00 914D0006 */  lbu        $t5, 0x6($t2)
/* 79B04 80078F04 112D0003 */  beq        $t1, $t5, .L80078F14
/* 79B08 80078F08 00000000 */   nop
/* 79B0C 80078F0C 3C0CA460 */  lui        $t4, %hi(D_A460002C)
/* 79B10 80078F10 AD8D002C */  sw         $t5, %lo(D_A460002C)($t4)
.L80078F14:
/* 79B14 80078F14 8FAE0024 */  lw         $t6, 0x24($sp)
/* 79B18 80078F18 8FAF0030 */  lw         $t7, 0x30($sp)
/* 79B1C 80078F1C 91CB0007 */  lbu        $t3, 0x7($t6)
/* 79B20 80078F20 91F80007 */  lbu        $t8, 0x7($t7)
/* 79B24 80078F24 11780003 */  beq        $t3, $t8, .L80078F34
/* 79B28 80078F28 00000000 */   nop
/* 79B2C 80078F2C 3C19A460 */  lui        $t9, %hi(D_A4600030)
/* 79B30 80078F30 AF380030 */  sw         $t8, %lo(D_A4600030)($t9)
.L80078F34:
/* 79B34 80078F34 8FA80024 */  lw         $t0, 0x24($sp)
/* 79B38 80078F38 8FA90030 */  lw         $t1, 0x30($sp)
/* 79B3C 80078F3C 910A0008 */  lbu        $t2, 0x8($t0)
/* 79B40 80078F40 912D0008 */  lbu        $t5, 0x8($t1)
/* 79B44 80078F44 114D0003 */  beq        $t2, $t5, .L80078F54
/* 79B48 80078F48 00000000 */   nop
/* 79B4C 80078F4C 3C0CA460 */  lui        $t4, %hi(D_A4600028)
/* 79B50 80078F50 AD8D0028 */  sw         $t5, %lo(D_A4600028)($t4)
.L80078F54:
/* 79B54 80078F54 8FAF0028 */  lw         $t7, 0x28($sp)
/* 79B58 80078F58 8FAE0030 */  lw         $t6, 0x30($sp)
/* 79B5C 80078F5C 3C018009 */  lui        $at, %hi(__osCurrentHandle)
/* 79B60 80078F60 000F5880 */  sll        $t3, $t7, 2
/* 79B64 80078F64 002B0821 */  addu       $at, $at, $t3
/* 79B68 80078F68 AC2E4860 */  sw         $t6, %lo(__osCurrentHandle)($at)
.L80078F6C:
/* 79B6C 80078F6C 0C019FAC */  jal        func_80067EB0
/* 79B70 80078F70 8FA4003C */   lw        $a0, 0x3C($sp)
/* 79B74 80078F74 3C18A460 */  lui        $t8, %hi(D_A4600000)
/* 79B78 80078F78 AF020000 */  sw         $v0, %lo(D_A4600000)($t8)
/* 79B7C 80078F7C 8FB90030 */  lw         $t9, 0x30($sp)
/* 79B80 80078F80 8FA90038 */  lw         $t1, 0x38($sp)
/* 79B84 80078F84 3C011FFF */  lui        $at, (0x1FFFFFFF >> 16)
/* 79B88 80078F88 8F28000C */  lw         $t0, 0xC($t9)
/* 79B8C 80078F8C 3421FFFF */  ori        $at, $at, (0x1FFFFFFF & 0xFFFF)
/* 79B90 80078F90 3C0CA460 */  lui        $t4, %hi(D_A4600004)
/* 79B94 80078F94 01095025 */  or         $t2, $t0, $t1
/* 79B98 80078F98 01416824 */  and        $t5, $t2, $at
/* 79B9C 80078F9C AD8D0004 */  sw         $t5, %lo(D_A4600004)($t4)
/* 79BA0 80078FA0 8FB00034 */  lw         $s0, 0x34($sp)
/* 79BA4 80078FA4 12000005 */  beqz       $s0, .L80078FBC
/* 79BA8 80078FA8 24010001 */   addiu     $at, $zero, 0x1
/* 79BAC 80078FAC 12010008 */  beq        $s0, $at, .L80078FD0
/* 79BB0 80078FB0 00000000 */   nop
/* 79BB4 80078FB4 1000000B */  b          .L80078FE4
/* 79BB8 80078FB8 00000000 */   nop
.L80078FBC:
/* 79BBC 80078FBC 8FAF0040 */  lw         $t7, 0x40($sp)
/* 79BC0 80078FC0 3C0BA460 */  lui        $t3, %hi(D_A460000C)
/* 79BC4 80078FC4 25EEFFFF */  addiu      $t6, $t7, -0x1
/* 79BC8 80078FC8 10000008 */  b          .L80078FEC
/* 79BCC 80078FCC AD6E000C */   sw        $t6, %lo(D_A460000C)($t3)
.L80078FD0:
/* 79BD0 80078FD0 8FB80040 */  lw         $t8, 0x40($sp)
/* 79BD4 80078FD4 3C08A460 */  lui        $t0, %hi(D_A4600008)
/* 79BD8 80078FD8 2719FFFF */  addiu      $t9, $t8, -0x1
/* 79BDC 80078FDC 10000003 */  b          .L80078FEC
/* 79BE0 80078FE0 AD190008 */   sw        $t9, %lo(D_A4600008)($t0)
.L80078FE4:
/* 79BE4 80078FE4 10000002 */  b          .L80078FF0
/* 79BE8 80078FE8 2402FFFF */   addiu     $v0, $zero, -0x1
.L80078FEC:
/* 79BEC 80078FEC 00001025 */  or         $v0, $zero, $zero
.L80078FF0:
/* 79BF0 80078FF0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 79BF4 80078FF4 8FB00018 */  lw         $s0, 0x18($sp)
/* 79BF8 80078FF8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 79BFC 80078FFC 03E00008 */  jr         $ra
/* 79C00 80079000 00000000 */   nop
/* 79C04 80079004 00000000 */  nop
/* 79C08 80079008 00000000 */  nop
/* 79C0C 8007900C 00000000 */  nop

glabel __osDevMgrMain
/* 79C10 80079010 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 79C14 80079014 AFA40048 */  sw         $a0, 0x48($sp)
/* 79C18 80079018 8FAE0048 */  lw         $t6, 0x48($sp)
/* 79C1C 8007901C AFBF001C */  sw         $ra, 0x1C($sp)
/* 79C20 80079020 AFA00030 */  sw         $zero, 0x30($sp)
/* 79C24 80079024 AFA00044 */  sw         $zero, 0x44($sp)
/* 79C28 80079028 AFA00038 */  sw         $zero, 0x38($sp)
/* 79C2C 8007902C AFAE0034 */  sw         $t6, 0x34($sp)
.L80079030:
/* 79C30 80079030 8FAF0034 */  lw         $t7, 0x34($sp)
/* 79C34 80079034 27A50044 */  addiu      $a1, $sp, 0x44
/* 79C38 80079038 24060001 */  addiu      $a2, $zero, 0x1
/* 79C3C 8007903C 0C019824 */  jal        func_80066090
/* 79C40 80079040 8DE40008 */   lw        $a0, 0x8($t7)
/* 79C44 80079044 8FB80044 */  lw         $t8, 0x44($sp)
/* 79C48 80079048 8F190014 */  lw         $t9, 0x14($t8)
/* 79C4C 8007904C 132000A1 */  beqz       $t9, .L800792D4
/* 79C50 80079050 00000000 */   nop
/* 79C54 80079054 93280004 */  lbu        $t0, 0x4($t9)
/* 79C58 80079058 24010002 */  addiu      $at, $zero, 0x2
/* 79C5C 8007905C 1501009D */  bne        $t0, $at, .L800792D4
/* 79C60 80079060 00000000 */   nop
/* 79C64 80079064 8F290014 */  lw         $t1, 0x14($t9)
/* 79C68 80079068 11200003 */  beqz       $t1, .L80079078
/* 79C6C 8007906C 24010001 */   addiu     $at, $zero, 0x1
/* 79C70 80079070 15210098 */  bne        $t1, $at, .L800792D4
/* 79C74 80079074 00000000 */   nop
.L80079078:
/* 79C78 80079078 8FAA0044 */  lw         $t2, 0x44($sp)
/* 79C7C 8007907C 2408FFFF */  addiu      $t0, $zero, -0x1
/* 79C80 80079080 24010003 */  addiu      $at, $zero, 0x3
/* 79C84 80079084 8D4B0014 */  lw         $t3, 0x14($t2)
/* 79C88 80079088 256C0014 */  addiu      $t4, $t3, 0x14
/* 79C8C 8007908C AFAC0028 */  sw         $t4, 0x28($sp)
/* 79C90 80079090 958D0006 */  lhu        $t5, 0x6($t4)
/* 79C94 80079094 000D70C0 */  sll        $t6, $t5, 3
/* 79C98 80079098 01CD7021 */  addu       $t6, $t6, $t5
/* 79C9C 8007909C 000E7080 */  sll        $t6, $t6, 2
/* 79CA0 800790A0 018E7821 */  addu       $t7, $t4, $t6
/* 79CA4 800790A4 25F80018 */  addiu      $t8, $t7, 0x18
/* 79CA8 800790A8 AFB8002C */  sw         $t8, 0x2C($sp)
/* 79CAC 800790AC AD880008 */  sw         $t0, 0x8($t4)
/* 79CB0 800790B0 8FB90028 */  lw         $t9, 0x28($sp)
/* 79CB4 800790B4 97290004 */  lhu        $t1, 0x4($t9)
/* 79CB8 800790B8 11210006 */  beq        $t1, $at, .L800790D4
/* 79CBC 800790BC 00000000 */   nop
/* 79CC0 800790C0 8FAA002C */  lw         $t2, 0x2C($sp)
/* 79CC4 800790C4 8D4B0004 */  lw         $t3, 0x4($t2)
/* 79CC8 800790C8 8D4D000C */  lw         $t5, 0xC($t2)
/* 79CCC 800790CC 016D7023 */  subu       $t6, $t3, $t5
/* 79CD0 800790D0 AD4E0004 */  sw         $t6, 0x4($t2)
.L800790D4:
/* 79CD4 800790D4 8FAF0028 */  lw         $t7, 0x28($sp)
/* 79CD8 800790D8 24010002 */  addiu      $at, $zero, 0x2
/* 79CDC 800790DC 95F80004 */  lhu        $t8, 0x4($t7)
/* 79CE0 800790E0 17010009 */  bne        $t8, $at, .L80079108
/* 79CE4 800790E4 00000000 */   nop
/* 79CE8 800790E8 8FA80044 */  lw         $t0, 0x44($sp)
/* 79CEC 800790EC 8D0C0014 */  lw         $t4, 0x14($t0)
/* 79CF0 800790F0 8D990014 */  lw         $t9, 0x14($t4)
/* 79CF4 800790F4 17200004 */  bnez       $t9, .L80079108
/* 79CF8 800790F8 00000000 */   nop
/* 79CFC 800790FC 24090001 */  addiu      $t1, $zero, 0x1
/* 79D00 80079100 10000002 */  b          .L8007910C
/* 79D04 80079104 AFA90030 */   sw        $t1, 0x30($sp)
.L80079108:
/* 79D08 80079108 AFA00030 */  sw         $zero, 0x30($sp)
.L8007910C:
/* 79D0C 8007910C 8FAB0034 */  lw         $t3, 0x34($sp)
/* 79D10 80079110 27A5003C */  addiu      $a1, $sp, 0x3C
/* 79D14 80079114 24060001 */  addiu      $a2, $zero, 0x1
/* 79D18 80079118 0C019824 */  jal        func_80066090
/* 79D1C 8007911C 8D640010 */   lw        $a0, 0x10($t3)
/* 79D20 80079120 3C040010 */  lui        $a0, (0x100401 >> 16)
/* 79D24 80079124 0C01EE10 */  jal        func_8007B840
/* 79D28 80079128 34840401 */   ori       $a0, $a0, (0x100401 & 0xFFFF)
/* 79D2C 8007912C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 79D30 80079130 8FAD0044 */  lw         $t5, 0x44($sp)
/* 79D34 80079134 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 79D38 80079138 8DC60010 */  lw         $a2, 0x10($t6)
/* 79D3C 8007913C 3C050500 */  lui        $a1, (0x5000510 >> 16)
/* 79D40 80079140 34A50510 */  ori        $a1, $a1, (0x5000510 & 0xFFFF)
/* 79D44 80079144 00C15025 */  or         $t2, $a2, $at
/* 79D48 80079148 01403025 */  or         $a2, $t2, $zero
/* 79D4C 8007914C 0C01EE28 */  jal        func_8007B8A0
/* 79D50 80079150 8DA40014 */   lw        $a0, 0x14($t5)
.L80079154:
/* 79D54 80079154 8FAF0034 */  lw         $t7, 0x34($sp)
/* 79D58 80079158 27A50040 */  addiu      $a1, $sp, 0x40
/* 79D5C 8007915C 24060001 */  addiu      $a2, $zero, 0x1
/* 79D60 80079160 0C019824 */  jal        func_80066090
/* 79D64 80079164 8DE4000C */   lw        $a0, 0xC($t7)
/* 79D68 80079168 8FB80044 */  lw         $t8, 0x44($sp)
/* 79D6C 8007916C 2401001D */  addiu      $at, $zero, 0x1D
/* 79D70 80079170 8F080014 */  lw         $t0, 0x14($t8)
/* 79D74 80079174 250C0014 */  addiu      $t4, $t0, 0x14
/* 79D78 80079178 AFAC0028 */  sw         $t4, 0x28($sp)
/* 79D7C 8007917C 95990006 */  lhu        $t9, 0x6($t4)
/* 79D80 80079180 001948C0 */  sll        $t1, $t9, 3
/* 79D84 80079184 01394821 */  addu       $t1, $t1, $t9
/* 79D88 80079188 00094880 */  sll        $t1, $t1, 2
/* 79D8C 8007918C 01895821 */  addu       $t3, $t4, $t1
/* 79D90 80079190 256D0018 */  addiu      $t5, $t3, 0x18
/* 79D94 80079194 AFAD002C */  sw         $t5, 0x2C($sp)
/* 79D98 80079198 8D6E0018 */  lw         $t6, 0x18($t3)
/* 79D9C 8007919C 15C1002E */  bne        $t6, $at, .L80079258
/* 79DA0 800791A0 00000000 */   nop
/* 79DA4 800791A4 8D860010 */  lw         $a2, 0x10($t4)
/* 79DA8 800791A8 3C011000 */  lui        $at, (0x10000000 >> 16)
/* 79DAC 800791AC 3C050500 */  lui        $a1, (0x5000510 >> 16)
/* 79DB0 800791B0 00C15025 */  or         $t2, $a2, $at
/* 79DB4 800791B4 01403025 */  or         $a2, $t2, $zero
/* 79DB8 800791B8 34A50510 */  ori        $a1, $a1, (0x5000510 & 0xFFFF)
/* 79DBC 800791BC 0C01EE28 */  jal        func_8007B8A0
/* 79DC0 800791C0 8F040014 */   lw        $a0, 0x14($t8)
/* 79DC4 800791C4 8FAF0044 */  lw         $t7, 0x44($sp)
/* 79DC8 800791C8 8FA80028 */  lw         $t0, 0x28($sp)
/* 79DCC 800791CC 3C050500 */  lui        $a1, (0x5000510 >> 16)
/* 79DD0 800791D0 34A50510 */  ori        $a1, $a1, (0x5000510 & 0xFFFF)
/* 79DD4 800791D4 8DE40014 */  lw         $a0, 0x14($t7)
/* 79DD8 800791D8 0C01EE28 */  jal        func_8007B8A0
/* 79DDC 800791DC 8D060010 */   lw        $a2, 0x10($t0)
/* 79DE0 800791E0 8FB90044 */  lw         $t9, 0x44($sp)
/* 79DE4 800791E4 3C050500 */  lui        $a1, (0x5000508 >> 16)
/* 79DE8 800791E8 34A50508 */  ori        $a1, $a1, (0x5000508 & 0xFFFF)
/* 79DEC 800791EC 27A60024 */  addiu      $a2, $sp, 0x24
/* 79DF0 800791F0 0C01EE8C */  jal        func_8007BA30
/* 79DF4 800791F4 8F240014 */   lw        $a0, 0x14($t9)
/* 79DF8 800791F8 8FA90024 */  lw         $t1, 0x24($sp)
/* 79DFC 800791FC 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 79E00 80079200 01216824 */  and        $t5, $t1, $at
/* 79E04 80079204 11A0000B */  beqz       $t5, .L80079234
/* 79E08 80079208 00000000 */   nop
/* 79E0C 8007920C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 79E10 80079210 8FAB0044 */  lw         $t3, 0x44($sp)
/* 79E14 80079214 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 79E18 80079218 8DC60010 */  lw         $a2, 0x10($t6)
/* 79E1C 8007921C 3C050500 */  lui        $a1, (0x5000510 >> 16)
/* 79E20 80079220 34A50510 */  ori        $a1, $a1, (0x5000510 & 0xFFFF)
/* 79E24 80079224 00C1C025 */  or         $t8, $a2, $at
/* 79E28 80079228 03003025 */  or         $a2, $t8, $zero
/* 79E2C 8007922C 0C01EE28 */  jal        func_8007B8A0
/* 79E30 80079230 8D640014 */   lw        $a0, 0x14($t3)
.L80079234:
/* 79E34 80079234 8FAA002C */  lw         $t2, 0x2C($sp)
/* 79E38 80079238 240C0004 */  addiu      $t4, $zero, 0x4
/* 79E3C 8007923C 240F0002 */  addiu      $t7, $zero, 0x2
/* 79E40 80079240 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* 79E44 80079244 3C040010 */  lui        $a0, (0x100C01 >> 16)
/* 79E48 80079248 AD4C0000 */  sw         $t4, 0x0($t2)
/* 79E4C 8007924C AD0F0010 */  sw         $t7, %lo(D_A4600010)($t0)
/* 79E50 80079250 0C01EEF4 */  jal        __osSetGlobalIntMask
/* 79E54 80079254 34840C01 */   ori       $a0, $a0, (0x100C01 & 0xFFFF)
.L80079258:
/* 79E58 80079258 8FB90044 */  lw         $t9, 0x44($sp)
/* 79E5C 8007925C 00003025 */  or         $a2, $zero, $zero
/* 79E60 80079260 8F240004 */  lw         $a0, 0x4($t9)
/* 79E64 80079264 0C01A1B4 */  jal        func_800686D0
/* 79E68 80079268 03202825 */   or        $a1, $t9, $zero
/* 79E6C 8007926C 8FA90030 */  lw         $t1, 0x30($sp)
/* 79E70 80079270 24010001 */  addiu      $at, $zero, 0x1
/* 79E74 80079274 15210008 */  bne        $t1, $at, .L80079298
/* 79E78 80079278 00000000 */   nop
/* 79E7C 8007927C 8FAD0044 */  lw         $t5, 0x44($sp)
/* 79E80 80079280 8DAB0014 */  lw         $t3, 0x14($t5)
/* 79E84 80079284 8D6E002C */  lw         $t6, 0x2C($t3)
/* 79E88 80079288 15C00003 */  bnez       $t6, .L80079298
/* 79E8C 8007928C 00000000 */   nop
/* 79E90 80079290 1000FFB0 */  b          .L80079154
/* 79E94 80079294 AFA00030 */   sw        $zero, 0x30($sp)
.L80079298:
/* 79E98 80079298 8FB80034 */  lw         $t8, 0x34($sp)
/* 79E9C 8007929C 00002825 */  or         $a1, $zero, $zero
/* 79EA0 800792A0 00003025 */  or         $a2, $zero, $zero
/* 79EA4 800792A4 0C01A1B4 */  jal        func_800686D0
/* 79EA8 800792A8 8F040010 */   lw        $a0, 0x10($t8)
/* 79EAC 800792AC 8FAC0044 */  lw         $t4, 0x44($sp)
/* 79EB0 800792B0 24010001 */  addiu      $at, $zero, 0x1
/* 79EB4 800792B4 8D8A0014 */  lw         $t2, 0x14($t4)
/* 79EB8 800792B8 954F001A */  lhu        $t7, 0x1A($t2)
/* 79EBC 800792BC 15E1FF5C */  bne        $t7, $at, .L80079030
/* 79EC0 800792C0 00000000 */   nop
/* 79EC4 800792C4 0C01EF08 */  jal        osYieldThread
/* 79EC8 800792C8 00000000 */   nop
/* 79ECC 800792CC 1000FF58 */  b          .L80079030
/* 79ED0 800792D0 00000000 */   nop
.L800792D4:
/* 79ED4 800792D4 8FA80044 */  lw         $t0, 0x44($sp)
/* 79ED8 800792D8 95190000 */  lhu        $t9, 0x0($t0)
/* 79EDC 800792DC 2729FFF6 */  addiu      $t1, $t9, -0xA
/* 79EE0 800792E0 2D210007 */  sltiu      $at, $t1, 0x7
/* 79EE4 800792E4 10200051 */  beqz       $at, L8007942C
/* 79EE8 800792E8 00000000 */   nop
/* 79EEC 800792EC 00094880 */  sll        $t1, $t1, 2
/* 79EF0 800792F0 3C01800A */  lui        $at, %hi(jtbl_80098F70_main)
/* 79EF4 800792F4 00290821 */  addu       $at, $at, $t1
/* 79EF8 800792F8 8C298F70 */  lw         $t1, %lo(jtbl_80098F70_main)($at)
/* 79EFC 800792FC 01200008 */  jr         $t1
/* 79F00 80079300 00000000 */   nop
glabel L80079304
/* 79F04 80079304 8FAD0034 */  lw         $t5, 0x34($sp)
/* 79F08 80079308 27A5003C */  addiu      $a1, $sp, 0x3C
/* 79F0C 8007930C 24060001 */  addiu      $a2, $zero, 0x1
/* 79F10 80079310 0C019824 */  jal        func_80066090
/* 79F14 80079314 8DA40010 */   lw        $a0, 0x10($t5)
/* 79F18 80079318 8FAE0034 */  lw         $t6, 0x34($sp)
/* 79F1C 8007931C 8FAB0044 */  lw         $t3, 0x44($sp)
/* 79F20 80079320 00002025 */  or         $a0, $zero, $zero
/* 79F24 80079324 8DD90014 */  lw         $t9, 0x14($t6)
/* 79F28 80079328 8D65000C */  lw         $a1, 0xC($t3)
/* 79F2C 8007932C 8D660008 */  lw         $a2, 0x8($t3)
/* 79F30 80079330 0320F809 */  jalr       $t9
/* 79F34 80079334 8D670010 */   lw        $a3, 0x10($t3)
/* 79F38 80079338 1000003E */  b          .L80079434
/* 79F3C 8007933C AFA20038 */   sw        $v0, 0x38($sp)
glabel L80079340
/* 79F40 80079340 8FB80034 */  lw         $t8, 0x34($sp)
/* 79F44 80079344 27A5003C */  addiu      $a1, $sp, 0x3C
/* 79F48 80079348 24060001 */  addiu      $a2, $zero, 0x1
/* 79F4C 8007934C 0C019824 */  jal        func_80066090
/* 79F50 80079350 8F040010 */   lw        $a0, 0x10($t8)
/* 79F54 80079354 8FAA0034 */  lw         $t2, 0x34($sp)
/* 79F58 80079358 8FAC0044 */  lw         $t4, 0x44($sp)
/* 79F5C 8007935C 24040001 */  addiu      $a0, $zero, 0x1
/* 79F60 80079360 8D590014 */  lw         $t9, 0x14($t2)
/* 79F64 80079364 8D85000C */  lw         $a1, 0xC($t4)
/* 79F68 80079368 8D860008 */  lw         $a2, 0x8($t4)
/* 79F6C 8007936C 0320F809 */  jalr       $t9
/* 79F70 80079370 8D870010 */   lw        $a3, 0x10($t4)
/* 79F74 80079374 1000002F */  b          .L80079434
/* 79F78 80079378 AFA20038 */   sw        $v0, 0x38($sp)
glabel L8007937C
/* 79F7C 8007937C 8FAF0034 */  lw         $t7, 0x34($sp)
/* 79F80 80079380 27A5003C */  addiu      $a1, $sp, 0x3C
/* 79F84 80079384 24060001 */  addiu      $a2, $zero, 0x1
/* 79F88 80079388 0C019824 */  jal        func_80066090
/* 79F8C 8007938C 8DE40010 */   lw        $a0, 0x10($t7)
/* 79F90 80079390 8FA80044 */  lw         $t0, 0x44($sp)
/* 79F94 80079394 8FAD0034 */  lw         $t5, 0x34($sp)
/* 79F98 80079398 00002825 */  or         $a1, $zero, $zero
/* 79F9C 8007939C 8D090010 */  lw         $t1, 0x10($t0)
/* 79FA0 800793A0 8D040014 */  lw         $a0, 0x14($t0)
/* 79FA4 800793A4 8D06000C */  lw         $a2, 0xC($t0)
/* 79FA8 800793A8 8D070008 */  lw         $a3, 0x8($t0)
/* 79FAC 800793AC AFA90010 */  sw         $t1, 0x10($sp)
/* 79FB0 800793B0 8DB90018 */  lw         $t9, 0x18($t5)
/* 79FB4 800793B4 0320F809 */  jalr       $t9
/* 79FB8 800793B8 00000000 */   nop
/* 79FBC 800793BC 1000001D */  b          .L80079434
/* 79FC0 800793C0 AFA20038 */   sw        $v0, 0x38($sp)
glabel L800793C4
/* 79FC4 800793C4 8FAB0034 */  lw         $t3, 0x34($sp)
/* 79FC8 800793C8 27A5003C */  addiu      $a1, $sp, 0x3C
/* 79FCC 800793CC 24060001 */  addiu      $a2, $zero, 0x1
/* 79FD0 800793D0 0C019824 */  jal        func_80066090
/* 79FD4 800793D4 8D640010 */   lw        $a0, 0x10($t3)
/* 79FD8 800793D8 8FAE0044 */  lw         $t6, 0x44($sp)
/* 79FDC 800793DC 8FAC0034 */  lw         $t4, 0x34($sp)
/* 79FE0 800793E0 24050001 */  addiu      $a1, $zero, 0x1
/* 79FE4 800793E4 8DD80010 */  lw         $t8, 0x10($t6)
/* 79FE8 800793E8 8DC40014 */  lw         $a0, 0x14($t6)
/* 79FEC 800793EC 8DC6000C */  lw         $a2, 0xC($t6)
/* 79FF0 800793F0 8DC70008 */  lw         $a3, 0x8($t6)
/* 79FF4 800793F4 AFB80010 */  sw         $t8, 0x10($sp)
/* 79FF8 800793F8 8D990018 */  lw         $t9, 0x18($t4)
/* 79FFC 800793FC 0320F809 */  jalr       $t9
/* 7A000 80079400 00000000 */   nop
/* 7A004 80079404 1000000B */  b          .L80079434
/* 7A008 80079408 AFA20038 */   sw        $v0, 0x38($sp)
glabel L8007940C
/* 7A00C 8007940C 8FAA0044 */  lw         $t2, 0x44($sp)
/* 7A010 80079410 00003025 */  or         $a2, $zero, $zero
/* 7A014 80079414 8D440004 */  lw         $a0, 0x4($t2)
/* 7A018 80079418 0C01A1B4 */  jal        func_800686D0
/* 7A01C 8007941C 01402825 */   or        $a1, $t2, $zero
/* 7A020 80079420 240FFFFF */  addiu      $t7, $zero, -0x1
/* 7A024 80079424 10000003 */  b          .L80079434
/* 7A028 80079428 AFAF0038 */   sw        $t7, 0x38($sp)
glabel L8007942C
/* 7A02C 8007942C 2408FFFF */  addiu      $t0, $zero, -0x1
/* 7A030 80079430 AFA80038 */  sw         $t0, 0x38($sp)
.L80079434:
/* 7A034 80079434 8FA90038 */  lw         $t1, 0x38($sp)
/* 7A038 80079438 1520FEFD */  bnez       $t1, .L80079030
/* 7A03C 8007943C 00000000 */   nop
/* 7A040 80079440 8FAD0034 */  lw         $t5, 0x34($sp)
/* 7A044 80079444 27A50040 */  addiu      $a1, $sp, 0x40
/* 7A048 80079448 24060001 */  addiu      $a2, $zero, 0x1
/* 7A04C 8007944C 0C019824 */  jal        func_80066090
/* 7A050 80079450 8DA4000C */   lw        $a0, 0xC($t5)
/* 7A054 80079454 8FAB0044 */  lw         $t3, 0x44($sp)
/* 7A058 80079458 00003025 */  or         $a2, $zero, $zero
/* 7A05C 8007945C 8D640004 */  lw         $a0, 0x4($t3)
/* 7A060 80079460 0C01A1B4 */  jal        func_800686D0
/* 7A064 80079464 01602825 */   or        $a1, $t3, $zero
/* 7A068 80079468 8FAE0034 */  lw         $t6, 0x34($sp)
/* 7A06C 8007946C 00002825 */  or         $a1, $zero, $zero
/* 7A070 80079470 00003025 */  or         $a2, $zero, $zero
/* 7A074 80079474 0C01A1B4 */  jal        func_800686D0
/* 7A078 80079478 8DC40010 */   lw        $a0, 0x10($t6)
/* 7A07C 8007947C 1000FEEC */  b          .L80079030
/* 7A080 80079480 00000000 */   nop
/* 7A084 80079484 00000000 */  nop
/* 7A088 80079488 00000000 */  nop
/* 7A08C 8007948C 00000000 */  nop
/* 7A090 80079490 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7A094 80079494 27BD0048 */  addiu      $sp, $sp, 0x48
/* 7A098 80079498 03E00008 */  jr         $ra
/* 7A09C 8007949C 00000000 */   nop

glabel __osLeoInterrupt
/* 7A0A0 800794A0 3C0E801B */  lui        $t6, %hi(D_801AD484)
/* 7A0A4 800794A4 8DCED484 */  lw         $t6, %lo(D_801AD484)($t6)
/* 7A0A8 800794A8 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 7A0AC 800794AC AFBF001C */  sw         $ra, 0x1C($sp)
/* 7A0B0 800794B0 25CF0014 */  addiu      $t7, $t6, 0x14
/* 7A0B4 800794B4 AFA0003C */  sw         $zero, 0x3C($sp)
/* 7A0B8 800794B8 AFAF0030 */  sw         $t7, 0x30($sp)
/* 7A0BC 800794BC 95D8001A */  lhu        $t8, 0x1A($t6)
/* 7A0C0 800794C0 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* 7A0C4 800794C4 0018C8C0 */  sll        $t9, $t8, 3
/* 7A0C8 800794C8 0338C821 */  addu       $t9, $t9, $t8
/* 7A0CC 800794CC 0019C880 */  sll        $t9, $t9, 2
/* 7A0D0 800794D0 01F94021 */  addu       $t0, $t7, $t9
/* 7A0D4 800794D4 25090018 */  addiu      $t1, $t0, 0x18
/* 7A0D8 800794D8 AFA9002C */  sw         $t1, 0x2C($sp)
/* 7A0DC 800794DC 8D4B0010 */  lw         $t3, %lo(D_A4600010)($t2)
/* 7A0E0 800794E0 AFAB0038 */  sw         $t3, 0x38($sp)
/* 7A0E4 800794E4 8FAC0038 */  lw         $t4, 0x38($sp)
/* 7A0E8 800794E8 318D0001 */  andi       $t5, $t4, 0x1
/* 7A0EC 800794EC 11A0000C */  beqz       $t5, .L80079520
/* 7A0F0 800794F0 00000000 */   nop
/* 7A0F4 800794F4 3C0E8009 */  lui        $t6, %hi(__OSGlobalIntMask)
/* 7A0F8 800794F8 8DCE4830 */  lw         $t6, %lo(__OSGlobalIntMask)($t6)
/* 7A0FC 800794FC 2401F7FF */  addiu      $at, $zero, -0x801
/* 7A100 80079500 240F001D */  addiu      $t7, $zero, 0x1D
/* 7A104 80079504 01C1C024 */  and        $t8, $t6, $at
/* 7A108 80079508 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7A10C 8007950C AC384830 */  sw         $t8, %lo(__OSGlobalIntMask)($at)
/* 7A110 80079510 0C01E70B */  jal        func_80079C2C
/* 7A114 80079514 AD0F0018 */   sw        $t7, 0x18($t0)
/* 7A118 80079518 10000186 */  b          .L80079B34
/* 7A11C 8007951C 24020001 */   addiu     $v0, $zero, 0x1
.L80079520:
/* 7A120 80079520 3C19A460 */  lui        $t9, %hi(D_A4600010)
/* 7A124 80079524 8F290010 */  lw         $t1, %lo(D_A4600010)($t9)
/* 7A128 80079528 AFA90038 */  sw         $t1, 0x38($sp)
/* 7A12C 8007952C 8FAA0038 */  lw         $t2, 0x38($sp)
/* 7A130 80079530 314B0003 */  andi       $t3, $t2, 0x3
/* 7A134 80079534 11600008 */  beqz       $t3, .L80079558
/* 7A138 80079538 00000000 */   nop
.L8007953C:
/* 7A13C 8007953C 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* 7A140 80079540 8D8D0010 */  lw         $t5, %lo(D_A4600010)($t4)
/* 7A144 80079544 AFAD0038 */  sw         $t5, 0x38($sp)
/* 7A148 80079548 8FAE0038 */  lw         $t6, 0x38($sp)
/* 7A14C 8007954C 31D80003 */  andi       $t8, $t6, 0x3
/* 7A150 80079550 1700FFFA */  bnez       $t8, .L8007953C
/* 7A154 80079554 00000000 */   nop
.L80079558:
/* 7A158 80079558 3C0FA500 */  lui        $t7, %hi(D_A5000508)
/* 7A15C 8007955C 8DE80508 */  lw         $t0, %lo(D_A5000508)($t7)
/* 7A160 80079560 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 7A164 80079564 AFA8003C */  sw         $t0, 0x3C($sp)
/* 7A168 80079568 8FB9003C */  lw         $t9, 0x3C($sp)
/* 7A16C 8007956C 03214824 */  and        $t1, $t9, $at
/* 7A170 80079570 11200019 */  beqz       $t1, .L800795D8
/* 7A174 80079574 00000000 */   nop
/* 7A178 80079578 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* 7A17C 8007957C 8D4B0010 */  lw         $t3, %lo(D_A4600010)($t2)
/* 7A180 80079580 AFAB0038 */  sw         $t3, 0x38($sp)
/* 7A184 80079584 8FAC0038 */  lw         $t4, 0x38($sp)
/* 7A188 80079588 318D0003 */  andi       $t5, $t4, 0x3
/* 7A18C 8007958C 11A00008 */  beqz       $t5, .L800795B0
/* 7A190 80079590 00000000 */   nop
.L80079594:
/* 7A194 80079594 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 7A198 80079598 8DD80010 */  lw         $t8, %lo(D_A4600010)($t6)
/* 7A19C 8007959C AFB80038 */  sw         $t8, 0x38($sp)
/* 7A1A0 800795A0 8FAF0038 */  lw         $t7, 0x38($sp)
/* 7A1A4 800795A4 31E80003 */  andi       $t0, $t7, 0x3
/* 7A1A8 800795A8 1500FFFA */  bnez       $t0, .L80079594
/* 7A1AC 800795AC 00000000 */   nop
.L800795B0:
/* 7A1B0 800795B0 8FB90030 */  lw         $t9, 0x30($sp)
/* 7A1B4 800795B4 3C010100 */  lui        $at, (0x1000000 >> 16)
/* 7A1B8 800795B8 3C0BA500 */  lui        $t3, %hi(D_A5000510)
/* 7A1BC 800795BC 8F290010 */  lw         $t1, 0x10($t9)
/* 7A1C0 800795C0 00001025 */  or         $v0, $zero, $zero
/* 7A1C4 800795C4 01215025 */  or         $t2, $t1, $at
/* 7A1C8 800795C8 AD6A0510 */  sw         $t2, %lo(D_A5000510)($t3)
/* 7A1CC 800795CC 8FAC002C */  lw         $t4, 0x2C($sp)
/* 7A1D0 800795D0 10000158 */  b          .L80079B34
/* 7A1D4 800795D4 AD800000 */   sw        $zero, 0x0($t4)
.L800795D8:
/* 7A1D8 800795D8 8FAD0030 */  lw         $t5, 0x30($sp)
/* 7A1DC 800795DC 24010002 */  addiu      $at, $zero, 0x2
/* 7A1E0 800795E0 8DAE0000 */  lw         $t6, 0x0($t5)
/* 7A1E4 800795E4 15C10003 */  bne        $t6, $at, .L800795F4
/* 7A1E8 800795E8 00000000 */   nop
/* 7A1EC 800795EC 10000151 */  b          .L80079B34
/* 7A1F0 800795F0 24020001 */   addiu     $v0, $zero, 0x1
.L800795F4:
/* 7A1F4 800795F4 8FB8003C */  lw         $t8, 0x3C($sp)
/* 7A1F8 800795F8 3C010800 */  lui        $at, (0x8000000 >> 16)
/* 7A1FC 800795FC 03017824 */  and        $t7, $t8, $at
/* 7A200 80079600 11E00022 */  beqz       $t7, .L8007968C
/* 7A204 80079604 00000000 */   nop
/* 7A208 80079608 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* 7A20C 8007960C 8D190010 */  lw         $t9, %lo(D_A4600010)($t0)
/* 7A210 80079610 AFB90038 */  sw         $t9, 0x38($sp)
/* 7A214 80079614 8FA90038 */  lw         $t1, 0x38($sp)
/* 7A218 80079618 312A0003 */  andi       $t2, $t1, 0x3
/* 7A21C 8007961C 11400008 */  beqz       $t2, .L80079640
/* 7A220 80079620 00000000 */   nop
.L80079624:
/* 7A224 80079624 3C0BA460 */  lui        $t3, %hi(D_A4600010)
/* 7A228 80079628 8D6C0010 */  lw         $t4, %lo(D_A4600010)($t3)
/* 7A22C 8007962C AFAC0038 */  sw         $t4, 0x38($sp)
/* 7A230 80079630 8FAD0038 */  lw         $t5, 0x38($sp)
/* 7A234 80079634 31AE0003 */  andi       $t6, $t5, 0x3
/* 7A238 80079638 15C0FFFA */  bnez       $t6, .L80079624
/* 7A23C 8007963C 00000000 */   nop
.L80079640:
/* 7A240 80079640 3C18A500 */  lui        $t8, %hi(D_A5000508)
/* 7A244 80079644 8F0F0508 */  lw         $t7, %lo(D_A5000508)($t8)
/* 7A248 80079648 8FB9002C */  lw         $t9, 0x2C($sp)
/* 7A24C 8007964C 24080016 */  addiu      $t0, $zero, 0x16
/* 7A250 80079650 AFAF003C */  sw         $t7, 0x3C($sp)
/* 7A254 80079654 0C01E70B */  jal        func_80079C2C
/* 7A258 80079658 AF280000 */   sw        $t0, 0x0($t9)
/* 7A25C 8007965C 24090002 */  addiu      $t1, $zero, 0x2
/* 7A260 80079660 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* 7A264 80079664 AD490010 */  sw         $t1, %lo(D_A4600010)($t2)
/* 7A268 80079668 3C0B8009 */  lui        $t3, %hi(__OSGlobalIntMask)
/* 7A26C 8007966C 8D6B4830 */  lw         $t3, %lo(__OSGlobalIntMask)($t3)
/* 7A270 80079670 3C010010 */  lui        $at, (0x100401 >> 16)
/* 7A274 80079674 34210401 */  ori        $at, $at, (0x100401 & 0xFFFF)
/* 7A278 80079678 01616025 */  or         $t4, $t3, $at
/* 7A27C 8007967C 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7A280 80079680 AC2C4830 */  sw         $t4, %lo(__OSGlobalIntMask)($at)
/* 7A284 80079684 1000012B */  b          .L80079B34
/* 7A288 80079688 24020001 */   addiu     $v0, $zero, 0x1
.L8007968C:
/* 7A28C 8007968C 8FAD0030 */  lw         $t5, 0x30($sp)
/* 7A290 80079690 24010001 */  addiu      $at, $zero, 0x1
/* 7A294 80079694 8DAE0000 */  lw         $t6, 0x0($t5)
/* 7A298 80079698 15C1003B */  bne        $t6, $at, .L80079788
/* 7A29C 8007969C 00000000 */   nop
/* 7A2A0 800796A0 8FB8003C */  lw         $t8, 0x3C($sp)
/* 7A2A4 800796A4 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 7A2A8 800796A8 03017824 */  and        $t7, $t8, $at
/* 7A2AC 800796AC 15E00021 */  bnez       $t7, .L80079734
/* 7A2B0 800796B0 00000000 */   nop
/* 7A2B4 800796B4 95A90004 */  lhu        $t1, 0x4($t5)
/* 7A2B8 800796B8 8DA80008 */  lw         $t0, 0x8($t5)
/* 7A2BC 800796BC 00095080 */  sll        $t2, $t1, 2
/* 7A2C0 800796C0 01495021 */  addu       $t2, $t2, $t1
/* 7A2C4 800796C4 000A5080 */  sll        $t2, $t2, 2
/* 7A2C8 800796C8 01495021 */  addu       $t2, $t2, $t1
/* 7A2CC 800796CC 000A5080 */  sll        $t2, $t2, 2
/* 7A2D0 800796D0 01495021 */  addu       $t2, $t2, $t1
/* 7A2D4 800796D4 25190001 */  addiu      $t9, $t0, 0x1
/* 7A2D8 800796D8 132A0007 */  beq        $t9, $t2, .L800796F8
/* 7A2DC 800796DC 00000000 */   nop
/* 7A2E0 800796E0 8FAC002C */  lw         $t4, 0x2C($sp)
/* 7A2E4 800796E4 240B0018 */  addiu      $t3, $zero, 0x18
/* 7A2E8 800796E8 0C01E6D1 */  jal        func_80079B44
/* 7A2EC 800796EC AD8B0000 */   sw        $t3, 0x0($t4)
/* 7A2F0 800796F0 10000110 */  b          .L80079B34
/* 7A2F4 800796F4 24020001 */   addiu     $v0, $zero, 0x1
.L800796F8:
/* 7A2F8 800796F8 240E0002 */  addiu      $t6, $zero, 0x2
/* 7A2FC 800796FC 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 7A300 80079700 AF0E0010 */  sw         $t6, %lo(D_A4600010)($t8)
/* 7A304 80079704 3C0F8009 */  lui        $t7, %hi(__OSGlobalIntMask)
/* 7A308 80079708 8DEF4830 */  lw         $t7, %lo(__OSGlobalIntMask)($t7)
/* 7A30C 8007970C 3C010010 */  lui        $at, (0x100401 >> 16)
/* 7A310 80079710 34210401 */  ori        $at, $at, (0x100401 & 0xFFFF)
/* 7A314 80079714 01E14025 */  or         $t0, $t7, $at
/* 7A318 80079718 8FAD002C */  lw         $t5, 0x2C($sp)
/* 7A31C 8007971C 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7A320 80079720 AC284830 */  sw         $t0, %lo(__OSGlobalIntMask)($at)
/* 7A324 80079724 0C01E70B */  jal        func_80079C2C
/* 7A328 80079728 ADA00000 */   sw        $zero, 0x0($t5)
/* 7A32C 8007972C 10000101 */  b          .L80079B34
/* 7A330 80079730 24020001 */   addiu     $v0, $zero, 0x1
.L80079734:
/* 7A334 80079734 8FA9002C */  lw         $t1, 0x2C($sp)
/* 7A338 80079738 3C04801B */  lui        $a0, %hi(D_801AD484)
/* 7A33C 8007973C 3C060500 */  lui        $a2, (0x5000400 >> 16)
/* 7A340 80079740 8D390004 */  lw         $t9, 0x4($t1)
/* 7A344 80079744 8D2A000C */  lw         $t2, 0xC($t1)
/* 7A348 80079748 34C60400 */  ori        $a2, $a2, (0x5000400 & 0xFFFF)
/* 7A34C 8007974C 24050001 */  addiu      $a1, $zero, 0x1
/* 7A350 80079750 032A5821 */  addu       $t3, $t9, $t2
/* 7A354 80079754 AD2B0004 */  sw         $t3, 0x4($t1)
/* 7A358 80079758 8FAC0030 */  lw         $t4, 0x30($sp)
/* 7A35C 8007975C 8D8E0008 */  lw         $t6, 0x8($t4)
/* 7A360 80079760 25D80001 */  addiu      $t8, $t6, 0x1
/* 7A364 80079764 AD980008 */  sw         $t8, 0x8($t4)
/* 7A368 80079768 8FAF002C */  lw         $t7, 0x2C($sp)
/* 7A36C 8007976C 8C84D484 */  lw         $a0, %lo(D_801AD484)($a0)
/* 7A370 80079770 8DE8000C */  lw         $t0, 0xC($t7)
/* 7A374 80079774 8DE70004 */  lw         $a3, 0x4($t7)
/* 7A378 80079778 0C01E378 */  jal        osEPiRawStartDma
/* 7A37C 8007977C AFA80010 */   sw        $t0, 0x10($sp)
/* 7A380 80079780 100000EC */  b          .L80079B34
/* 7A384 80079784 24020001 */   addiu     $v0, $zero, 0x1
.L80079788:
/* 7A388 80079788 8FAD0030 */  lw         $t5, 0x30($sp)
/* 7A38C 8007978C 8DB90000 */  lw         $t9, 0x0($t5)
/* 7A390 80079790 172000E3 */  bnez       $t9, .L80079B20
/* 7A394 80079794 00000000 */   nop
/* 7A398 80079798 95AA0004 */  lhu        $t2, 0x4($t5)
/* 7A39C 8007979C 24010003 */  addiu      $at, $zero, 0x3
/* 7A3A0 800797A0 15410017 */  bne        $t2, $at, .L80079800
/* 7A3A4 800797A4 00000000 */   nop
/* 7A3A8 800797A8 8FA9002C */  lw         $t1, 0x2C($sp)
/* 7A3AC 800797AC 8DAB0008 */  lw         $t3, 0x8($t5)
/* 7A3B0 800797B0 8D2E0010 */  lw         $t6, 0x10($t1)
/* 7A3B4 800797B4 25D80011 */  addiu      $t8, $t6, 0x11
/* 7A3B8 800797B8 030B082A */  slt        $at, $t8, $t3
/* 7A3BC 800797BC 10200005 */  beqz       $at, .L800797D4
/* 7A3C0 800797C0 00000000 */   nop
/* 7A3C4 800797C4 0C01E6D1 */  jal        func_80079B44
/* 7A3C8 800797C8 AD200000 */   sw        $zero, 0x0($t1)
/* 7A3CC 800797CC 100000D9 */  b          .L80079B34
/* 7A3D0 800797D0 24020001 */   addiu     $v0, $zero, 0x1
.L800797D4:
/* 7A3D4 800797D4 8FAC003C */  lw         $t4, 0x3C($sp)
/* 7A3D8 800797D8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 7A3DC 800797DC 01817824 */  and        $t7, $t4, $at
/* 7A3E0 800797E0 15E0000C */  bnez       $t7, .L80079814
/* 7A3E4 800797E4 00000000 */   nop
/* 7A3E8 800797E8 8FB9002C */  lw         $t9, 0x2C($sp)
/* 7A3EC 800797EC 24080017 */  addiu      $t0, $zero, 0x17
/* 7A3F0 800797F0 0C01E6D1 */  jal        func_80079B44
/* 7A3F4 800797F4 AF280000 */   sw        $t0, 0x0($t9)
/* 7A3F8 800797F8 100000CE */  b          .L80079B34
/* 7A3FC 800797FC 24020001 */   addiu     $v0, $zero, 0x1
.L80079800:
/* 7A400 80079800 8FAA002C */  lw         $t2, 0x2C($sp)
/* 7A404 80079804 8D4D0004 */  lw         $t5, 0x4($t2)
/* 7A408 80079808 8D4E000C */  lw         $t6, 0xC($t2)
/* 7A40C 8007980C 01AE5821 */  addu       $t3, $t5, $t6
/* 7A410 80079810 AD4B0004 */  sw         $t3, 0x4($t2)
.L80079814:
/* 7A414 80079814 3C18A500 */  lui        $t8, %hi(D_A5000510)
/* 7A418 80079818 8F090510 */  lw         $t1, %lo(D_A5000510)($t8)
/* 7A41C 8007981C 3C010020 */  lui        $at, (0x200000 >> 16)
/* 7A420 80079820 AFA90034 */  sw         $t1, 0x34($sp)
/* 7A424 80079824 8FAC0034 */  lw         $t4, 0x34($sp)
/* 7A428 80079828 01817824 */  and        $t7, $t4, $at
/* 7A42C 8007982C 11E00004 */  beqz       $t7, .L80079840
/* 7A430 80079830 3C010040 */   lui       $at, (0x400000 >> 16)
/* 7A434 80079834 01814024 */  and        $t0, $t4, $at
/* 7A438 80079838 15000006 */  bnez       $t0, .L80079854
/* 7A43C 8007983C 00000000 */   nop
.L80079840:
/* 7A440 80079840 8FB90034 */  lw         $t9, 0x34($sp)
/* 7A444 80079844 3C010200 */  lui        $at, (0x2000000 >> 16)
/* 7A448 80079848 03216824 */  and        $t5, $t9, $at
/* 7A44C 8007984C 11A00022 */  beqz       $t5, .L800798D8
/* 7A450 80079850 00000000 */   nop
.L80079854:
/* 7A454 80079854 8FAE002C */  lw         $t6, 0x2C($sp)
/* 7A458 80079858 8DCB0010 */  lw         $t3, 0x10($t6)
/* 7A45C 8007985C 2D610004 */  sltiu      $at, $t3, 0x4
/* 7A460 80079860 14200010 */  bnez       $at, .L800798A4
/* 7A464 80079864 00000000 */   nop
/* 7A468 80079868 8FAA0030 */  lw         $t2, 0x30($sp)
/* 7A46C 8007986C 24010003 */  addiu      $at, $zero, 0x3
/* 7A470 80079870 95580004 */  lhu        $t8, 0x4($t2)
/* 7A474 80079874 17010005 */  bne        $t8, $at, .L8007988C
/* 7A478 80079878 00000000 */   nop
/* 7A47C 8007987C 8D490008 */  lw         $t1, 0x8($t2)
/* 7A480 80079880 29210053 */  slti       $at, $t1, 0x53
/* 7A484 80079884 14200010 */  bnez       $at, .L800798C8
/* 7A488 80079888 00000000 */   nop
.L8007988C:
/* 7A48C 8007988C 8FAC002C */  lw         $t4, 0x2C($sp)
/* 7A490 80079890 240F0017 */  addiu      $t7, $zero, 0x17
/* 7A494 80079894 0C01E6D1 */  jal        func_80079B44
/* 7A498 80079898 AD8F0000 */   sw        $t7, 0x0($t4)
/* 7A49C 8007989C 100000A5 */  b          .L80079B34
/* 7A4A0 800798A0 24020001 */   addiu     $v0, $zero, 0x1
.L800798A4:
/* 7A4A4 800798A4 8FA8002C */  lw         $t0, 0x2C($sp)
/* 7A4A8 800798A8 8FAD0030 */  lw         $t5, 0x30($sp)
/* 7A4AC 800798AC 8D190010 */  lw         $t9, 0x10($t0)
/* 7A4B0 800798B0 AFB90028 */  sw         $t9, 0x28($sp)
/* 7A4B4 800798B4 8DAE0008 */  lw         $t6, 0x8($t5)
/* 7A4B8 800798B8 0019C080 */  sll        $t8, $t9, 2
/* 7A4BC 800798BC 01185021 */  addu       $t2, $t0, $t8
/* 7A4C0 800798C0 25CB0001 */  addiu      $t3, $t6, 0x1
/* 7A4C4 800798C4 AD4B0014 */  sw         $t3, 0x14($t2)
.L800798C8:
/* 7A4C8 800798C8 8FA9002C */  lw         $t1, 0x2C($sp)
/* 7A4CC 800798CC 8D2F0010 */  lw         $t7, 0x10($t1)
/* 7A4D0 800798D0 25EC0001 */  addiu      $t4, $t7, 0x1
/* 7A4D4 800798D4 AD2C0010 */  sw         $t4, 0x10($t1)
.L800798D8:
/* 7A4D8 800798D8 8FAD003C */  lw         $t5, 0x3C($sp)
/* 7A4DC 800798DC 3C011000 */  lui        $at, (0x10000000 >> 16)
/* 7A4E0 800798E0 01A17024 */  and        $t6, $t5, $at
/* 7A4E4 800798E4 11C0003B */  beqz       $t6, .L800799D4
/* 7A4E8 800798E8 00000000 */   nop
/* 7A4EC 800798EC 8FB90030 */  lw         $t9, 0x30($sp)
/* 7A4F0 800798F0 24010057 */  addiu      $at, $zero, 0x57
/* 7A4F4 800798F4 8F280008 */  lw         $t0, 0x8($t9)
/* 7A4F8 800798F8 11010005 */  beq        $t0, $at, .L80079910
/* 7A4FC 800798FC 00000000 */   nop
/* 7A500 80079900 8FAB002C */  lw         $t3, 0x2C($sp)
/* 7A504 80079904 24180018 */  addiu      $t8, $zero, 0x18
/* 7A508 80079908 0C01E6D1 */  jal        func_80079B44
/* 7A50C 8007990C AD780000 */   sw        $t8, 0x0($t3)
.L80079910:
/* 7A510 80079910 8FAA0030 */  lw         $t2, 0x30($sp)
/* 7A514 80079914 24010002 */  addiu      $at, $zero, 0x2
/* 7A518 80079918 954F0004 */  lhu        $t7, 0x4($t2)
/* 7A51C 8007991C 15E10012 */  bne        $t7, $at, .L80079968
/* 7A520 80079920 00000000 */   nop
/* 7A524 80079924 954C0006 */  lhu        $t4, 0x6($t2)
/* 7A528 80079928 1580000F */  bnez       $t4, .L80079968
/* 7A52C 8007992C 00000000 */   nop
/* 7A530 80079930 24090001 */  addiu      $t1, $zero, 0x1
/* 7A534 80079934 A5490006 */  sh         $t1, 0x6($t2)
/* 7A538 80079938 8FAE0030 */  lw         $t6, 0x30($sp)
/* 7A53C 8007993C 240DFFFF */  addiu      $t5, $zero, -0x1
/* 7A540 80079940 240F0016 */  addiu      $t7, $zero, 0x16
/* 7A544 80079944 ADCD0008 */  sw         $t5, 0x8($t6)
/* 7A548 80079948 8FB90030 */  lw         $t9, 0x30($sp)
/* 7A54C 8007994C 8F280040 */  lw         $t0, 0x40($t9)
/* 7A550 80079950 8F380048 */  lw         $t8, 0x48($t9)
/* 7A554 80079954 01185823 */  subu       $t3, $t0, $t8
/* 7A558 80079958 AF2B0040 */  sw         $t3, 0x40($t9)
/* 7A55C 8007995C 8FAC002C */  lw         $t4, 0x2C($sp)
/* 7A560 80079960 10000010 */  b          .L800799A4
/* 7A564 80079964 AD8F0000 */   sw        $t7, 0x0($t4)
.L80079968:
/* 7A568 80079968 24090002 */  addiu      $t1, $zero, 0x2
/* 7A56C 8007996C 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* 7A570 80079970 AD490010 */  sw         $t1, %lo(D_A4600010)($t2)
/* 7A574 80079974 3C0D8009 */  lui        $t5, %hi(__OSGlobalIntMask)
/* 7A578 80079978 8DAD4830 */  lw         $t5, %lo(__OSGlobalIntMask)($t5)
/* 7A57C 8007997C 3C010010 */  lui        $at, (0x100401 >> 16)
/* 7A580 80079980 34210401 */  ori        $at, $at, (0x100401 & 0xFFFF)
/* 7A584 80079984 8FB80030 */  lw         $t8, 0x30($sp)
/* 7A588 80079988 01A17025 */  or         $t6, $t5, $at
/* 7A58C 8007998C 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7A590 80079990 AC2E4830 */  sw         $t6, %lo(__OSGlobalIntMask)($at)
/* 7A594 80079994 24080002 */  addiu      $t0, $zero, 0x2
/* 7A598 80079998 AF080000 */  sw         $t0, 0x0($t8)
/* 7A59C 8007999C 8FAB002C */  lw         $t3, 0x2C($sp)
/* 7A5A0 800799A0 AD600000 */  sw         $zero, 0x0($t3)
.L800799A4:
/* 7A5A4 800799A4 8FB9002C */  lw         $t9, 0x2C($sp)
/* 7A5A8 800799A8 3C04801B */  lui        $a0, %hi(D_801AD484)
/* 7A5AC 800799AC 8C84D484 */  lw         $a0, %lo(D_801AD484)($a0)
/* 7A5B0 800799B0 8F2F000C */  lw         $t7, 0xC($t9)
/* 7A5B4 800799B4 8F270008 */  lw         $a3, 0x8($t9)
/* 7A5B8 800799B8 00002825 */  or         $a1, $zero, $zero
/* 7A5BC 800799BC 000F6080 */  sll        $t4, $t7, 2
/* 7A5C0 800799C0 AFAC0010 */  sw         $t4, 0x10($sp)
/* 7A5C4 800799C4 0C01E378 */  jal        osEPiRawStartDma
/* 7A5C8 800799C8 3C060500 */   lui       $a2, (0x5000000 >> 16)
/* 7A5CC 800799CC 10000059 */  b          .L80079B34
/* 7A5D0 800799D0 24020001 */   addiu     $v0, $zero, 0x1
.L800799D4:
/* 7A5D4 800799D4 8FA90030 */  lw         $t1, 0x30($sp)
/* 7A5D8 800799D8 2401FFFF */  addiu      $at, $zero, -0x1
/* 7A5DC 800799DC 8D2A0008 */  lw         $t2, 0x8($t1)
/* 7A5E0 800799E0 15410020 */  bne        $t2, $at, .L80079A64
/* 7A5E4 800799E4 00000000 */   nop
/* 7A5E8 800799E8 952D0004 */  lhu        $t5, 0x4($t1)
/* 7A5EC 800799EC 24010002 */  addiu      $at, $zero, 0x2
/* 7A5F0 800799F0 15A1001C */  bne        $t5, $at, .L80079A64
/* 7A5F4 800799F4 00000000 */   nop
/* 7A5F8 800799F8 952E0006 */  lhu        $t6, 0x6($t1)
/* 7A5FC 800799FC 24010001 */  addiu      $at, $zero, 0x1
/* 7A600 80079A00 15C10018 */  bne        $t6, $at, .L80079A64
/* 7A604 80079A04 00000000 */   nop
/* 7A608 80079A08 25280018 */  addiu      $t0, $t1, 0x18
/* 7A60C 80079A0C AFA80024 */  sw         $t0, 0x24($sp)
/* 7A610 80079A10 8D380028 */  lw         $t8, 0x28($t1)
/* 7A614 80079A14 17000010 */  bnez       $t8, .L80079A58
/* 7A618 80079A18 00000000 */   nop
/* 7A61C 80079A1C 8D2B0020 */  lw         $t3, 0x20($t1)
/* 7A620 80079A20 8D790000 */  lw         $t9, 0x0($t3)
/* 7A624 80079A24 8D6F0004 */  lw         $t7, 0x4($t3)
/* 7A628 80079A28 8D6A0008 */  lw         $t2, 0x8($t3)
/* 7A62C 80079A2C 8D6E000C */  lw         $t6, 0xC($t3)
/* 7A630 80079A30 032F6025 */  or         $t4, $t9, $t7
/* 7A634 80079A34 018A6825 */  or         $t5, $t4, $t2
/* 7A638 80079A38 01CD4025 */  or         $t0, $t6, $t5
/* 7A63C 80079A3C 11000006 */  beqz       $t0, .L80079A58
/* 7A640 80079A40 00000000 */   nop
/* 7A644 80079A44 24180018 */  addiu      $t8, $zero, 0x18
/* 7A648 80079A48 0C01E6D1 */  jal        func_80079B44
/* 7A64C 80079A4C AD380018 */   sw        $t8, 0x18($t1)
/* 7A650 80079A50 10000038 */  b          .L80079B34
/* 7A654 80079A54 24020001 */   addiu     $v0, $zero, 0x1
.L80079A58:
/* 7A658 80079A58 8FB90024 */  lw         $t9, 0x24($sp)
/* 7A65C 80079A5C 0C01E70B */  jal        func_80079C2C
/* 7A660 80079A60 AF200000 */   sw        $zero, 0x0($t9)
.L80079A64:
/* 7A664 80079A64 8FAF0030 */  lw         $t7, 0x30($sp)
/* 7A668 80079A68 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 7A66C 80079A6C 8DEC0008 */  lw         $t4, 0x8($t7)
/* 7A670 80079A70 258A0001 */  addiu      $t2, $t4, 0x1
/* 7A674 80079A74 ADEA0008 */  sw         $t2, 0x8($t7)
/* 7A678 80079A78 8FAB003C */  lw         $t3, 0x3C($sp)
/* 7A67C 80079A7C 01617024 */  and        $t6, $t3, $at
/* 7A680 80079A80 11C0001A */  beqz       $t6, .L80079AEC
/* 7A684 80079A84 00000000 */   nop
/* 7A688 80079A88 8FAD0030 */  lw         $t5, 0x30($sp)
/* 7A68C 80079A8C 8DA80008 */  lw         $t0, 0x8($t5)
/* 7A690 80079A90 29010055 */  slti       $at, $t0, 0x55
/* 7A694 80079A94 14200007 */  bnez       $at, .L80079AB4
/* 7A698 80079A98 00000000 */   nop
/* 7A69C 80079A9C 8FA9002C */  lw         $t1, 0x2C($sp)
/* 7A6A0 80079AA0 24180018 */  addiu      $t8, $zero, 0x18
/* 7A6A4 80079AA4 0C01E6D1 */  jal        func_80079B44
/* 7A6A8 80079AA8 AD380000 */   sw        $t8, 0x0($t1)
/* 7A6AC 80079AAC 10000021 */  b          .L80079B34
/* 7A6B0 80079AB0 24020001 */   addiu     $v0, $zero, 0x1
.L80079AB4:
/* 7A6B4 80079AB4 8FB9002C */  lw         $t9, 0x2C($sp)
/* 7A6B8 80079AB8 3C04801B */  lui        $a0, %hi(D_801AD484)
/* 7A6BC 80079ABC 3C060500 */  lui        $a2, (0x5000400 >> 16)
/* 7A6C0 80079AC0 8F2C000C */  lw         $t4, 0xC($t9)
/* 7A6C4 80079AC4 8F270004 */  lw         $a3, 0x4($t9)
/* 7A6C8 80079AC8 34C60400 */  ori        $a2, $a2, (0x5000400 & 0xFFFF)
/* 7A6CC 80079ACC 8C84D484 */  lw         $a0, %lo(D_801AD484)($a0)
/* 7A6D0 80079AD0 00002825 */  or         $a1, $zero, $zero
/* 7A6D4 80079AD4 0C01E378 */  jal        osEPiRawStartDma
/* 7A6D8 80079AD8 AFAC0010 */   sw        $t4, 0x10($sp)
/* 7A6DC 80079ADC 8FAA002C */  lw         $t2, 0x2C($sp)
/* 7A6E0 80079AE0 24020001 */  addiu      $v0, $zero, 0x1
/* 7A6E4 80079AE4 10000013 */  b          .L80079B34
/* 7A6E8 80079AE8 AD400000 */   sw        $zero, 0x0($t2)
.L80079AEC:
/* 7A6EC 80079AEC 8FAF0030 */  lw         $t7, 0x30($sp)
/* 7A6F0 80079AF0 8DEB0008 */  lw         $t3, 0x8($t7)
/* 7A6F4 80079AF4 29610055 */  slti       $at, $t3, 0x55
/* 7A6F8 80079AF8 10200007 */  beqz       $at, .L80079B18
/* 7A6FC 80079AFC 00000000 */   nop
/* 7A700 80079B00 8FAD002C */  lw         $t5, 0x2C($sp)
/* 7A704 80079B04 240E0018 */  addiu      $t6, $zero, 0x18
/* 7A708 80079B08 0C01E6D1 */  jal        func_80079B44
/* 7A70C 80079B0C ADAE0000 */   sw        $t6, 0x0($t5)
/* 7A710 80079B10 10000008 */  b          .L80079B34
/* 7A714 80079B14 24020001 */   addiu     $v0, $zero, 0x1
.L80079B18:
/* 7A718 80079B18 10000006 */  b          .L80079B34
/* 7A71C 80079B1C 24020001 */   addiu     $v0, $zero, 0x1
.L80079B20:
/* 7A720 80079B20 8FB8002C */  lw         $t8, 0x2C($sp)
/* 7A724 80079B24 24080004 */  addiu      $t0, $zero, 0x4
/* 7A728 80079B28 0C01E6D1 */  jal        func_80079B44
/* 7A72C 80079B2C AF080000 */   sw        $t0, 0x0($t8)
/* 7A730 80079B30 24020001 */  addiu      $v0, $zero, 0x1
.L80079B34:
/* 7A734 80079B34 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7A738 80079B38 27BD0040 */  addiu      $sp, $sp, 0x40
/* 7A73C 80079B3C 03E00008 */  jr         $ra
/* 7A740 80079B40 00000000 */   nop

glabel func_80079B44
/* 7A744 80079B44 3C0E801B */  lui        $t6, %hi(D_801AD484)
/* 7A748 80079B48 8DCED484 */  lw         $t6, %lo(D_801AD484)($t6)
/* 7A74C 80079B4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 7A750 80079B50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7A754 80079B54 25CF0014 */  addiu      $t7, $t6, 0x14
/* 7A758 80079B58 AFAF001C */  sw         $t7, 0x1C($sp)
/* 7A75C 80079B5C 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 7A760 80079B60 8F190010 */  lw         $t9, %lo(D_A4600010)($t8)
/* 7A764 80079B64 AFB90018 */  sw         $t9, 0x18($sp)
/* 7A768 80079B68 8FA80018 */  lw         $t0, 0x18($sp)
/* 7A76C 80079B6C 31090003 */  andi       $t1, $t0, 0x3
/* 7A770 80079B70 11200008 */  beqz       $t1, .L80079B94
/* 7A774 80079B74 00000000 */   nop
.L80079B78:
/* 7A778 80079B78 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* 7A77C 80079B7C 8D4B0010 */  lw         $t3, %lo(D_A4600010)($t2)
/* 7A780 80079B80 AFAB0018 */  sw         $t3, 0x18($sp)
/* 7A784 80079B84 8FAC0018 */  lw         $t4, 0x18($sp)
/* 7A788 80079B88 318D0003 */  andi       $t5, $t4, 0x3
/* 7A78C 80079B8C 15A0FFFA */  bnez       $t5, .L80079B78
/* 7A790 80079B90 00000000 */   nop
.L80079B94:
/* 7A794 80079B94 8FAE001C */  lw         $t6, 0x1C($sp)
/* 7A798 80079B98 3C011000 */  lui        $at, (0x10000000 >> 16)
/* 7A79C 80079B9C 3C19A500 */  lui        $t9, %hi(D_A5000510)
/* 7A7A0 80079BA0 8DCF0010 */  lw         $t7, 0x10($t6)
/* 7A7A4 80079BA4 3C08A460 */  lui        $t0, %hi(D_A4600010)
/* 7A7A8 80079BA8 01E1C025 */  or         $t8, $t7, $at
/* 7A7AC 80079BAC AF380510 */  sw         $t8, %lo(D_A5000510)($t9)
/* 7A7B0 80079BB0 8D090010 */  lw         $t1, %lo(D_A4600010)($t0)
/* 7A7B4 80079BB4 AFA90018 */  sw         $t1, 0x18($sp)
/* 7A7B8 80079BB8 8FAA0018 */  lw         $t2, 0x18($sp)
/* 7A7BC 80079BBC 314B0003 */  andi       $t3, $t2, 0x3
/* 7A7C0 80079BC0 11600008 */  beqz       $t3, .L80079BE4
/* 7A7C4 80079BC4 00000000 */   nop
.L80079BC8:
/* 7A7C8 80079BC8 3C0CA460 */  lui        $t4, %hi(D_A4600010)
/* 7A7CC 80079BCC 8D8D0010 */  lw         $t5, %lo(D_A4600010)($t4)
/* 7A7D0 80079BD0 AFAD0018 */  sw         $t5, 0x18($sp)
/* 7A7D4 80079BD4 8FAE0018 */  lw         $t6, 0x18($sp)
/* 7A7D8 80079BD8 31CF0003 */  andi       $t7, $t6, 0x3
/* 7A7DC 80079BDC 15E0FFFA */  bnez       $t7, .L80079BC8
/* 7A7E0 80079BE0 00000000 */   nop
.L80079BE4:
/* 7A7E4 80079BE4 8FB8001C */  lw         $t8, 0x1C($sp)
/* 7A7E8 80079BE8 3C08A500 */  lui        $t0, %hi(D_A5000510)
/* 7A7EC 80079BEC 8F190010 */  lw         $t9, 0x10($t8)
/* 7A7F0 80079BF0 0C01E70B */  jal        func_80079C2C
/* 7A7F4 80079BF4 AD190510 */   sw        $t9, %lo(D_A5000510)($t0)
/* 7A7F8 80079BF8 24090002 */  addiu      $t1, $zero, 0x2
/* 7A7FC 80079BFC 3C0AA460 */  lui        $t2, %hi(D_A4600010)
/* 7A800 80079C00 AD490010 */  sw         $t1, %lo(D_A4600010)($t2)
/* 7A804 80079C04 3C0B8009 */  lui        $t3, %hi(__OSGlobalIntMask)
/* 7A808 80079C08 8D6B4830 */  lw         $t3, %lo(__OSGlobalIntMask)($t3)
/* 7A80C 80079C0C 3C010010 */  lui        $at, (0x100401 >> 16)
/* 7A810 80079C10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7A814 80079C14 34210401 */  ori        $at, $at, (0x100401 & 0xFFFF)
/* 7A818 80079C18 01616025 */  or         $t4, $t3, $at
/* 7A81C 80079C1C 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7A820 80079C20 AC2C4830 */  sw         $t4, %lo(__OSGlobalIntMask)($at)
/* 7A824 80079C24 03E00008 */  jr         $ra
/* 7A828 80079C28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80079C2C
/* 7A82C 80079C2C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7A830 80079C30 3C0E801B */  lui        $t6, %hi(D_801AAB10)
/* 7A834 80079C34 25CEAB10 */  addiu      $t6, $t6, %lo(D_801AAB10)
/* 7A838 80079C38 25CF0040 */  addiu      $t7, $t6, 0x40
/* 7A83C 80079C3C AFBF001C */  sw         $ra, 0x1C($sp)
/* 7A840 80079C40 AFB00018 */  sw         $s0, 0x18($sp)
/* 7A844 80079C44 AFAF002C */  sw         $t7, 0x2C($sp)
/* 7A848 80079C48 8DD80040 */  lw         $t8, 0x40($t6)
/* 7A84C 80079C4C 1300002D */  beqz       $t8, .L80079D04
/* 7A850 80079C50 AFB80028 */   sw        $t8, 0x28($sp)
/* 7A854 80079C54 8F190008 */  lw         $t9, 0x8($t8)
/* 7A858 80079C58 8F080010 */  lw         $t0, 0x10($t8)
/* 7A85C 80079C5C 0328082A */  slt        $at, $t9, $t0
/* 7A860 80079C60 10200028 */  beqz       $at, .L80079D04
/* 7A864 80079C64 00000000 */   nop
/* 7A868 80079C68 8FA90028 */  lw         $t1, 0x28($sp)
/* 7A86C 80079C6C 8FAE002C */  lw         $t6, 0x2C($sp)
/* 7A870 80079C70 8D2A000C */  lw         $t2, 0xC($t1)
/* 7A874 80079C74 8D2B0008 */  lw         $t3, 0x8($t1)
/* 7A878 80079C78 8D2D0010 */  lw         $t5, 0x10($t1)
/* 7A87C 80079C7C 014B6021 */  addu       $t4, $t2, $t3
/* 7A880 80079C80 018D001A */  div        $zero, $t4, $t5
/* 7A884 80079C84 00007810 */  mfhi       $t7
/* 7A888 80079C88 AFAF0024 */  sw         $t7, 0x24($sp)
/* 7A88C 80079C8C 8D280014 */  lw         $t0, 0x14($t1)
/* 7A890 80079C90 8DD80004 */  lw         $t8, 0x4($t6)
/* 7A894 80079C94 000FC880 */  sll        $t9, $t7, 2
/* 7A898 80079C98 01195021 */  addu       $t2, $t0, $t9
/* 7A89C 80079C9C AD580000 */  sw         $t8, 0x0($t2)
/* 7A8A0 80079CA0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 7A8A4 80079CA4 15A00002 */  bnez       $t5, .L80079CB0
/* 7A8A8 80079CA8 00000000 */   nop
/* 7A8AC 80079CAC 0007000D */  break      7
.L80079CB0:
/* 7A8B0 80079CB0 2401FFFF */  addiu      $at, $zero, -0x1
/* 7A8B4 80079CB4 15A10004 */  bne        $t5, $at, .L80079CC8
/* 7A8B8 80079CB8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7A8BC 80079CBC 15810002 */  bne        $t4, $at, .L80079CC8
/* 7A8C0 80079CC0 00000000 */   nop
/* 7A8C4 80079CC4 0006000D */  break      6
.L80079CC8:
/* 7A8C8 80079CC8 8D6C0008 */  lw         $t4, 0x8($t3)
/* 7A8CC 80079CCC 258D0001 */  addiu      $t5, $t4, 0x1
/* 7A8D0 80079CD0 AD6D0008 */  sw         $t5, 0x8($t3)
/* 7A8D4 80079CD4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 7A8D8 80079CD8 8DCF0000 */  lw         $t7, 0x0($t6)
/* 7A8DC 80079CDC 8DE90000 */  lw         $t1, 0x0($t7)
/* 7A8E0 80079CE0 11200008 */  beqz       $t1, .L80079D04
/* 7A8E4 80079CE4 00000000 */   nop
/* 7A8E8 80079CE8 0C01C405 */  jal        func_80071014
/* 7A8EC 80079CEC 01C02025 */   or        $a0, $t6, $zero
/* 7A8F0 80079CF0 00408025 */  or         $s0, $v0, $zero
/* 7A8F4 80079CF4 3C048009 */  lui        $a0, %hi(D_80094878)
/* 7A8F8 80079CF8 24844878 */  addiu      $a0, $a0, %lo(D_80094878)
/* 7A8FC 80079CFC 0C01C3F3 */  jal        func_80070FCC
/* 7A900 80079D00 02002825 */   or        $a1, $s0, $zero
.L80079D04:
/* 7A904 80079D04 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7A908 80079D08 8FB00018 */  lw         $s0, 0x18($sp)
/* 7A90C 80079D0C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7A910 80079D10 03E00008 */  jr         $ra
/* 7A914 80079D14 00000000 */   nop
/* 7A918 80079D18 00000000 */  nop
/* 7A91C 80079D1C 00000000 */  nop

glabel osDestroyThread
/* 7A920 80079D20 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 7A924 80079D24 AFBF0024 */  sw         $ra, 0x24($sp)
/* 7A928 80079D28 AFA40038 */  sw         $a0, 0x38($sp)
/* 7A92C 80079D2C AFB20020 */  sw         $s2, 0x20($sp)
/* 7A930 80079D30 AFB1001C */  sw         $s1, 0x1C($sp)
/* 7A934 80079D34 0C01C218 */  jal        __osDisableInt
/* 7A938 80079D38 AFB00018 */   sw        $s0, 0x18($sp)
/* 7A93C 80079D3C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 7A940 80079D40 00408025 */  or         $s0, $v0, $zero
/* 7A944 80079D44 15C00005 */  bnez       $t6, .L80079D5C
/* 7A948 80079D48 00000000 */   nop
/* 7A94C 80079D4C 3C0F8009 */  lui        $t7, %hi(D_80094880)
/* 7A950 80079D50 8DEF4880 */  lw         $t7, %lo(D_80094880)($t7)
/* 7A954 80079D54 10000009 */  b          .L80079D7C
/* 7A958 80079D58 AFAF0038 */   sw        $t7, 0x38($sp)
.L80079D5C:
/* 7A95C 80079D5C 8FB80038 */  lw         $t8, 0x38($sp)
/* 7A960 80079D60 24010001 */  addiu      $at, $zero, 0x1
/* 7A964 80079D64 97190010 */  lhu        $t9, 0x10($t8)
/* 7A968 80079D68 13210004 */  beq        $t9, $at, .L80079D7C
/* 7A96C 80079D6C 00000000 */   nop
/* 7A970 80079D70 8F040008 */  lw         $a0, 0x8($t8)
/* 7A974 80079D74 0C01C1FC */  jal        func_800707F0
/* 7A978 80079D78 03002825 */   or        $a1, $t8, $zero
.L80079D7C:
/* 7A97C 80079D7C 3C088009 */  lui        $t0, %hi(__osActiveQueue)
/* 7A980 80079D80 8D08487C */  lw         $t0, %lo(__osActiveQueue)($t0)
/* 7A984 80079D84 8FA90038 */  lw         $t1, 0x38($sp)
/* 7A988 80079D88 15090005 */  bne        $t0, $t1, .L80079DA0
/* 7A98C 80079D8C 00000000 */   nop
/* 7A990 80079D90 8D0A000C */  lw         $t2, 0xC($t0)
/* 7A994 80079D94 3C018009 */  lui        $at, %hi(__osActiveQueue)
/* 7A998 80079D98 10000013 */  b          .L80079DE8
/* 7A99C 80079D9C AC2A487C */   sw        $t2, %lo(__osActiveQueue)($at)
.L80079DA0:
/* 7A9A0 80079DA0 3C118009 */  lui        $s1, %hi(__osActiveQueue)
/* 7A9A4 80079DA4 8E31487C */  lw         $s1, %lo(__osActiveQueue)($s1)
/* 7A9A8 80079DA8 2401FFFF */  addiu      $at, $zero, -0x1
/* 7A9AC 80079DAC 8E2B0004 */  lw         $t3, 0x4($s1)
/* 7A9B0 80079DB0 1161000D */  beq        $t3, $at, .L80079DE8
/* 7A9B4 80079DB4 00000000 */   nop
.L80079DB8:
/* 7A9B8 80079DB8 8E32000C */  lw         $s2, 0xC($s1)
/* 7A9BC 80079DBC 8FAC0038 */  lw         $t4, 0x38($sp)
/* 7A9C0 80079DC0 164C0004 */  bne        $s2, $t4, .L80079DD4
/* 7A9C4 80079DC4 00000000 */   nop
/* 7A9C8 80079DC8 8D8D000C */  lw         $t5, 0xC($t4)
/* 7A9CC 80079DCC 10000006 */  b          .L80079DE8
/* 7A9D0 80079DD0 AE2D000C */   sw        $t5, 0xC($s1)
.L80079DD4:
/* 7A9D4 80079DD4 02408825 */  or         $s1, $s2, $zero
/* 7A9D8 80079DD8 8E2E0004 */  lw         $t6, 0x4($s1)
/* 7A9DC 80079DDC 2401FFFF */  addiu      $at, $zero, -0x1
/* 7A9E0 80079DE0 15C1FFF5 */  bne        $t6, $at, .L80079DB8
/* 7A9E4 80079DE4 00000000 */   nop
.L80079DE8:
/* 7A9E8 80079DE8 3C198009 */  lui        $t9, %hi(D_80094880)
/* 7A9EC 80079DEC 8F394880 */  lw         $t9, %lo(D_80094880)($t9)
/* 7A9F0 80079DF0 8FAF0038 */  lw         $t7, 0x38($sp)
/* 7A9F4 80079DF4 15F90003 */  bne        $t7, $t9, .L80079E04
/* 7A9F8 80079DF8 00000000 */   nop
/* 7A9FC 80079DFC 0C01C409 */  jal        func_80071024
/* 7AA00 80079E00 00000000 */   nop
.L80079E04:
/* 7AA04 80079E04 0C01C220 */  jal        __osRestoreInt
/* 7AA08 80079E08 02002025 */   or        $a0, $s0, $zero
/* 7AA0C 80079E0C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 7AA10 80079E10 8FB00018 */  lw         $s0, 0x18($sp)
/* 7AA14 80079E14 8FB1001C */  lw         $s1, 0x1C($sp)
/* 7AA18 80079E18 8FB20020 */  lw         $s2, 0x20($sp)
/* 7AA1C 80079E1C 03E00008 */  jr         $ra
/* 7AA20 80079E20 27BD0038 */   addiu     $sp, $sp, 0x38
/* 7AA24 80079E24 00000000 */  nop
/* 7AA28 80079E28 00000000 */  nop
/* 7AA2C 80079E2C 00000000 */  nop

glabel func_80079E30
/* 7AA30 80079E30 AC800000 */  sw         $zero, 0x0($a0)
/* 7AA34 80079E34 AC850004 */  sw         $a1, 0x4($a0)
/* 7AA38 80079E38 AC860008 */  sw         $a2, 0x8($a0)
/* 7AA3C 80079E3C A480000C */  sh         $zero, 0xC($a0)
/* 7AA40 80079E40 A480000E */  sh         $zero, 0xE($a0)
/* 7AA44 80079E44 03E00008 */  jr         $ra
/* 7AA48 80079E48 AC870010 */   sw        $a3, 0x10($a0)
/* 7AA4C 80079E4C 00000000 */  nop

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
/* 7AB3C 80079F3C 0C019FAC */  jal        func_80067EB0
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
/* 7AB84 80079F84 0C019FAC */  jal        func_80067EB0
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
/* 7AC50 8007A050 0C019FAC */  jal        func_80067EB0
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
/* 7ACB8 8007A0B8 0C019FAC */  jal        func_80067EB0
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
/* 7AD14 8007A114 0C019FAC */  jal        func_80067EB0
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
/* 7ADD8 8007A1D8 0C019FAC */  jal        func_80067EB0
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
/* 7AE40 8007A240 0C019FAC */  jal        func_80067EB0
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
/* 7AE8C 8007A28C 0C019FAC */  jal        func_80067EB0
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
/* 7B06C 8007A46C 0C019FAC */  jal        func_80067EB0
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

glabel func_8007AAA0
/* 7B6A0 8007AAA0 3C0EA480 */  lui        $t6, %hi(D_A4800018)
/* 7B6A4 8007AAA4 8DC40018 */  lw         $a0, %lo(D_A4800018)($t6)
/* 7B6A8 8007AAA8 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7B6AC 8007AAAC 308F0003 */  andi       $t7, $a0, 0x3
/* 7B6B0 8007AAB0 11E00003 */  beqz       $t7, .L8007AAC0
/* 7B6B4 8007AAB4 00000000 */   nop
/* 7B6B8 8007AAB8 10000002 */  b          .L8007AAC4
/* 7B6BC 8007AABC 24020001 */   addiu     $v0, $zero, 0x1
.L8007AAC0:
/* 7B6C0 8007AAC0 00001025 */  or         $v0, $zero, $zero
.L8007AAC4:
/* 7B6C4 8007AAC4 03E00008 */  jr         $ra
/* 7B6C8 8007AAC8 27BD0008 */   addiu     $sp, $sp, 0x8
/* 7B6CC 8007AACC 00000000 */  nop

glabel _Litob
/* 7B6D0 8007AAD0 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 7B6D4 8007AAD4 AFB10020 */  sw         $s1, 0x20($sp)
/* 7B6D8 8007AAD8 30A200FF */  andi       $v0, $a1, 0xFF
/* 7B6DC 8007AADC 24030058 */  addiu      $v1, $zero, 0x58
/* 7B6E0 8007AAE0 00808825 */  or         $s1, $a0, $zero
/* 7B6E4 8007AAE4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 7B6E8 8007AAE8 AFB30028 */  sw         $s3, 0x28($sp)
/* 7B6EC 8007AAEC AFB20024 */  sw         $s2, 0x24($sp)
/* 7B6F0 8007AAF0 AFB0001C */  sw         $s0, 0x1C($sp)
/* 7B6F4 8007AAF4 14620004 */  bne        $v1, $v0, .L8007AB08
/* 7B6F8 8007AAF8 AFA50094 */   sw        $a1, 0x94($sp)
/* 7B6FC 8007AAFC 3C138009 */  lui        $s3, %hi(D_80094C84)
/* 7B700 8007AB00 10000003 */  b          .L8007AB10
/* 7B704 8007AB04 26734C84 */   addiu     $s3, $s3, %lo(D_80094C84)
.L8007AB08:
/* 7B708 8007AB08 3C138009 */  lui        $s3, %hi(D_80094C70)
/* 7B70C 8007AB0C 26734C70 */  addiu      $s3, $s3, %lo(D_80094C70)
.L8007AB10:
/* 7B710 8007AB10 2401006F */  addiu      $at, $zero, 0x6F
/* 7B714 8007AB14 14410003 */  bne        $v0, $at, .L8007AB24
/* 7B718 8007AB18 24100018 */   addiu     $s0, $zero, 0x18
/* 7B71C 8007AB1C 10000009 */  b          .L8007AB44
/* 7B720 8007AB20 24090008 */   addiu     $t1, $zero, 0x8
.L8007AB24:
/* 7B724 8007AB24 24010078 */  addiu      $at, $zero, 0x78
/* 7B728 8007AB28 10410005 */  beq        $v0, $at, .L8007AB40
/* 7B72C 8007AB2C 24080010 */   addiu     $t0, $zero, 0x10
/* 7B730 8007AB30 10620003 */  beq        $v1, $v0, .L8007AB40
/* 7B734 8007AB34 00000000 */   nop
/* 7B738 8007AB38 10000001 */  b          .L8007AB40
/* 7B73C 8007AB3C 2408000A */   addiu     $t0, $zero, 0xA
.L8007AB40:
/* 7B740 8007AB40 01004825 */  or         $t1, $t0, $zero
.L8007AB44:
/* 7B744 8007AB44 8E380000 */  lw         $t8, 0x0($s1)
/* 7B748 8007AB48 8E390004 */  lw         $t9, 0x4($s1)
/* 7B74C 8007AB4C 24010064 */  addiu      $at, $zero, 0x64
/* 7B750 8007AB50 AFB80060 */  sw         $t8, 0x60($sp)
/* 7B754 8007AB54 AFB80040 */  sw         $t8, 0x40($sp)
/* 7B758 8007AB58 AFB90044 */  sw         $t9, 0x44($sp)
/* 7B75C 8007AB5C 10410004 */  beq        $v0, $at, .L8007AB70
/* 7B760 8007AB60 AFB90064 */   sw        $t9, 0x64($sp)
/* 7B764 8007AB64 24010069 */  addiu      $at, $zero, 0x69
/* 7B768 8007AB68 54410010 */  bnel       $v0, $at, .L8007ABAC
/* 7B76C 8007AB6C 8FAA0060 */   lw        $t2, 0x60($sp)
.L8007AB70:
/* 7B770 8007AB70 8FAC0040 */  lw         $t4, 0x40($sp)
/* 7B774 8007AB74 5D80000D */  bgtzl      $t4, .L8007ABAC
/* 7B778 8007AB78 8FAA0060 */   lw        $t2, 0x60($sp)
/* 7B77C 8007AB7C 05800003 */  bltz       $t4, .L8007AB8C
/* 7B780 8007AB80 8FAE0060 */   lw        $t6, 0x60($sp)
/* 7B784 8007AB84 10000009 */  b          .L8007ABAC
/* 7B788 8007AB88 8FAA0060 */   lw        $t2, 0x60($sp)
.L8007AB8C:
/* 7B78C 8007AB8C 8FAF0064 */  lw         $t7, 0x64($sp)
/* 7B790 8007AB90 01C0C027 */  not        $t8, $t6
/* 7B794 8007AB94 2DE10001 */  sltiu      $at, $t7, 0x1
/* 7B798 8007AB98 0301C021 */  addu       $t8, $t8, $at
/* 7B79C 8007AB9C 000FC823 */  negu       $t9, $t7
/* 7B7A0 8007ABA0 AFB90064 */  sw         $t9, 0x64($sp)
/* 7B7A4 8007ABA4 AFB80060 */  sw         $t8, 0x60($sp)
/* 7B7A8 8007ABA8 8FAA0060 */  lw         $t2, 0x60($sp)
.L8007ABAC:
/* 7B7AC 8007ABAC 8FAB0064 */  lw         $t3, 0x64($sp)
/* 7B7B0 8007ABB0 24080017 */  addiu      $t0, $zero, 0x17
/* 7B7B4 8007ABB4 15400006 */  bnez       $t2, .L8007ABD0
/* 7B7B8 8007ABB8 8FA40060 */   lw        $a0, 0x60($sp)
/* 7B7BC 8007ABBC 55600005 */  bnel       $t3, $zero, .L8007ABD4
/* 7B7C0 8007ABC0 24100017 */   addiu     $s0, $zero, 0x17
/* 7B7C4 8007ABC4 8E2C0024 */  lw         $t4, 0x24($s1)
/* 7B7C8 8007ABC8 51800010 */  beql       $t4, $zero, .L8007AC0C
/* 7B7CC 8007ABCC 27B20078 */   addiu     $s2, $sp, 0x78
.L8007ABD0:
/* 7B7D0 8007ABD0 24100017 */  addiu      $s0, $zero, 0x17
.L8007ABD4:
/* 7B7D4 8007ABD4 8FA50064 */  lw         $a1, 0x64($sp)
/* 7B7D8 8007ABD8 01203825 */  or         $a3, $t1, $zero
/* 7B7DC 8007ABDC 000937C3 */  sra        $a2, $t1, 31
/* 7B7E0 8007ABE0 AFA8004C */  sw         $t0, 0x4C($sp)
/* 7B7E4 8007ABE4 0C01B15B */  jal        func_8006C56C
/* 7B7E8 8007ABE8 AFA90070 */   sw        $t1, 0x70($sp)
/* 7B7EC 8007ABEC 8FA8004C */  lw         $t0, 0x4C($sp)
/* 7B7F0 8007ABF0 00737021 */  addu       $t6, $v1, $s3
/* 7B7F4 8007ABF4 91CF0000 */  lbu        $t7, 0x0($t6)
/* 7B7F8 8007ABF8 27B20078 */  addiu      $s2, $sp, 0x78
/* 7B7FC 8007ABFC 8FA90070 */  lw         $t1, 0x70($sp)
/* 7B800 8007AC00 0248C021 */  addu       $t8, $s2, $t0
/* 7B804 8007AC04 A30F0000 */  sb         $t7, 0x0($t8)
/* 7B808 8007AC08 27B20078 */  addiu      $s2, $sp, 0x78
.L8007AC0C:
/* 7B80C 8007AC0C 8FA40060 */  lw         $a0, 0x60($sp)
/* 7B810 8007AC10 8FA50064 */  lw         $a1, 0x64($sp)
/* 7B814 8007AC14 01203825 */  or         $a3, $t1, $zero
/* 7B818 8007AC18 000937C3 */  sra        $a2, $t1, 31
/* 7B81C 8007AC1C 0C01B16A */  jal        func_8006C5A8
/* 7B820 8007AC20 AFA90070 */   sw        $t1, 0x70($sp)
/* 7B824 8007AC24 8FA90070 */  lw         $t1, 0x70($sp)
/* 7B828 8007AC28 AE230004 */  sw         $v1, 0x4($s1)
/* 7B82C 8007AC2C 0440002B */  bltz       $v0, .L8007ACDC
/* 7B830 8007AC30 AE220000 */   sw        $v0, 0x0($s1)
/* 7B834 8007AC34 1C400003 */  bgtz       $v0, .L8007AC44
/* 7B838 8007AC38 00000000 */   nop
/* 7B83C 8007AC3C 50600028 */  beql       $v1, $zero, .L8007ACE0
/* 7B840 8007AC40 240C0018 */   addiu     $t4, $zero, 0x18
.L8007AC44:
/* 7B844 8007AC44 1A000025 */  blez       $s0, .L8007ACDC
/* 7B848 8007AC48 000967C3 */   sra       $t4, $t1, 31
/* 7B84C 8007AC4C 8E2A0000 */  lw         $t2, 0x0($s1)
/* 7B850 8007AC50 8E2B0004 */  lw         $t3, 0x4($s1)
/* 7B854 8007AC54 AFA9003C */  sw         $t1, 0x3C($sp)
/* 7B858 8007AC58 AFAC0038 */  sw         $t4, 0x38($sp)
/* 7B85C 8007AC5C AFAA0040 */  sw         $t2, 0x40($sp)
/* 7B860 8007AC60 AFAB0044 */  sw         $t3, 0x44($sp)
/* 7B864 8007AC64 8FAE0038 */  lw         $t6, 0x38($sp)
.L8007AC68:
/* 7B868 8007AC68 8FAF003C */  lw         $t7, 0x3C($sp)
/* 7B86C 8007AC6C 27A40050 */  addiu      $a0, $sp, 0x50
/* 7B870 8007AC70 8FA60040 */  lw         $a2, 0x40($sp)
/* 7B874 8007AC74 8FA70044 */  lw         $a3, 0x44($sp)
/* 7B878 8007AC78 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7B87C 8007AC7C 0C01EF1C */  jal        lldiv
/* 7B880 8007AC80 AFAF0014 */   sw        $t7, 0x14($sp)
/* 7B884 8007AC84 8FB80050 */  lw         $t8, 0x50($sp)
/* 7B888 8007AC88 8FB90054 */  lw         $t9, 0x54($sp)
/* 7B88C 8007AC8C 2604FFFF */  addiu      $a0, $s0, -0x1
/* 7B890 8007AC90 AE380000 */  sw         $t8, 0x0($s1)
/* 7B894 8007AC94 AE390004 */  sw         $t9, 0x4($s1)
/* 7B898 8007AC98 8FAB005C */  lw         $t3, 0x5C($sp)
/* 7B89C 8007AC9C 02447821 */  addu       $t7, $s2, $a0
/* 7B8A0 8007ACA0 00808025 */  or         $s0, $a0, $zero
/* 7B8A4 8007ACA4 01736821 */  addu       $t5, $t3, $s3
/* 7B8A8 8007ACA8 91AE0000 */  lbu        $t6, 0x0($t5)
/* 7B8AC 8007ACAC A1EE0000 */  sb         $t6, 0x0($t7)
/* 7B8B0 8007ACB0 8E380000 */  lw         $t8, 0x0($s1)
/* 7B8B4 8007ACB4 8E390004 */  lw         $t9, 0x4($s1)
/* 7B8B8 8007ACB8 AFB80040 */  sw         $t8, 0x40($sp)
/* 7B8BC 8007ACBC 07000007 */  bltz       $t8, .L8007ACDC
/* 7B8C0 8007ACC0 AFB90044 */   sw        $t9, 0x44($sp)
/* 7B8C4 8007ACC4 1F000003 */  bgtz       $t8, .L8007ACD4
/* 7B8C8 8007ACC8 00000000 */   nop
/* 7B8CC 8007ACCC 53200004 */  beql       $t9, $zero, .L8007ACE0
/* 7B8D0 8007ACD0 240C0018 */   addiu     $t4, $zero, 0x18
.L8007ACD4:
/* 7B8D4 8007ACD4 5E00FFE4 */  bgtzl      $s0, .L8007AC68
/* 7B8D8 8007ACD8 8FAE0038 */   lw        $t6, 0x38($sp)
.L8007ACDC:
/* 7B8DC 8007ACDC 240C0018 */  addiu      $t4, $zero, 0x18
.L8007ACE0:
/* 7B8E0 8007ACE0 01903023 */  subu       $a2, $t4, $s0
/* 7B8E4 8007ACE4 AE260014 */  sw         $a2, 0x14($s1)
/* 7B8E8 8007ACE8 8E240008 */  lw         $a0, 0x8($s1)
/* 7B8EC 8007ACEC 0C01B350 */  jal        func_8006CD40
/* 7B8F0 8007ACF0 02502821 */   addu      $a1, $s2, $s0
/* 7B8F4 8007ACF4 8E250014 */  lw         $a1, 0x14($s1)
/* 7B8F8 8007ACF8 8E240024 */  lw         $a0, 0x24($s1)
/* 7B8FC 8007ACFC 00A4082A */  slt        $at, $a1, $a0
/* 7B900 8007AD00 10200002 */  beqz       $at, .L8007AD0C
/* 7B904 8007AD04 00856823 */   subu      $t5, $a0, $a1
/* 7B908 8007AD08 AE2D0010 */  sw         $t5, 0x10($s1)
.L8007AD0C:
/* 7B90C 8007AD0C 04830010 */  bgezl      $a0, .L8007AD50
/* 7B910 8007AD10 8FBF002C */   lw        $ra, 0x2C($sp)
/* 7B914 8007AD14 8E2E0030 */  lw         $t6, 0x30($s1)
/* 7B918 8007AD18 24010010 */  addiu      $at, $zero, 0x10
/* 7B91C 8007AD1C 31CF0014 */  andi       $t7, $t6, 0x14
/* 7B920 8007AD20 55E1000B */  bnel       $t7, $at, .L8007AD50
/* 7B924 8007AD24 8FBF002C */   lw        $ra, 0x2C($sp)
/* 7B928 8007AD28 8E380028 */  lw         $t8, 0x28($s1)
/* 7B92C 8007AD2C 8E39000C */  lw         $t9, 0xC($s1)
/* 7B930 8007AD30 8E220010 */  lw         $v0, 0x10($s1)
/* 7B934 8007AD34 03195023 */  subu       $t2, $t8, $t9
/* 7B938 8007AD38 01425823 */  subu       $t3, $t2, $v0
/* 7B93C 8007AD3C 01658023 */  subu       $s0, $t3, $a1
/* 7B940 8007AD40 1A000002 */  blez       $s0, .L8007AD4C
/* 7B944 8007AD44 00506021 */   addu      $t4, $v0, $s0
/* 7B948 8007AD48 AE2C0010 */  sw         $t4, 0x10($s1)
.L8007AD4C:
/* 7B94C 8007AD4C 8FBF002C */  lw         $ra, 0x2C($sp)
.L8007AD50:
/* 7B950 8007AD50 8FB0001C */  lw         $s0, 0x1C($sp)
/* 7B954 8007AD54 8FB10020 */  lw         $s1, 0x20($sp)
/* 7B958 8007AD58 8FB20024 */  lw         $s2, 0x24($sp)
/* 7B95C 8007AD5C 8FB30028 */  lw         $s3, 0x28($sp)
/* 7B960 8007AD60 03E00008 */  jr         $ra
/* 7B964 8007AD64 27BD0090 */   addiu     $sp, $sp, 0x90
/* 7B968 8007AD68 00000000 */  nop
/* 7B96C 8007AD6C 00000000 */  nop

glabel func_8007AD70
/* 7B970 8007AD70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7B974 8007AD74 AFB20028 */  sw         $s2, 0x28($sp)
/* 7B978 8007AD78 00127400 */  sll        $t6, $s2, 16
/* 7B97C 8007AD7C 000E9403 */  sra        $s2, $t6, 16
/* 7B980 8007AD80 AFB30024 */  sw         $s3, 0x24($sp)
/* 7B984 8007AD84 0013C400 */  sll        $t8, $s3, 16
/* 7B988 8007AD88 00189C03 */  sra        $s3, $t8, 16
/* 7B98C 8007AD8C 328E00FF */  andi       $t6, $s4, 0xFF
/* 7B990 8007AD90 AFB4001C */  sw         $s4, 0x1C($sp)
/* 7B994 8007AD94 01C0A025 */  or         $s4, $t6, $zero
/* 7B998 8007AD98 1E600004 */  bgtz       $s3, .L8007ADAC
/* 7B99C 8007AD9C AFBF0014 */   sw        $ra, 0x14($sp)
/* 7B9A0 8007ADA0 3C11800A */  lui        $s1, %hi(D_80099010)
/* 7B9A4 8007ADA4 26319010 */  addiu      $s1, $s1, %lo(D_80099010)
/* 7B9A8 8007ADA8 24130001 */  addiu      $s3, $zero, 0x1
.L8007ADAC:
/* 7B9AC 8007ADAC 24020066 */  addiu      $v0, $zero, 0x66
/* 7B9B0 8007ADB0 1054000C */  beq        $v0, $s4, .L8007ADE4
/* 7B9B4 8007ADB4 02801825 */   or        $v1, $s4, $zero
/* 7B9B8 8007ADB8 24040067 */  addiu      $a0, $zero, 0x67
/* 7B9BC 8007ADBC 10830002 */  beq        $a0, $v1, .L8007ADC8
/* 7B9C0 8007ADC0 24010047 */   addiu     $at, $zero, 0x47
/* 7B9C4 8007ADC4 14610096 */  bne        $v1, $at, .L8007B020
.L8007ADC8:
/* 7B9C8 8007ADC8 2A41FFFC */   slti      $at, $s2, -0x4
/* 7B9CC 8007ADCC 14200094 */  bnez       $at, .L8007B020
/* 7B9D0 8007ADD0 00000000 */   nop
/* 7B9D4 8007ADD4 8E0F0024 */  lw         $t7, 0x24($s0)
/* 7B9D8 8007ADD8 024F082A */  slt        $at, $s2, $t7
/* 7B9DC 8007ADDC 10200090 */  beqz       $at, .L8007B020
/* 7B9E0 8007ADE0 00000000 */   nop
.L8007ADE4:
/* 7B9E4 8007ADE4 26520001 */  addiu      $s2, $s2, 0x1
/* 7B9E8 8007ADE8 0012C400 */  sll        $t8, $s2, 16
/* 7B9EC 8007ADEC 1043000E */  beq        $v0, $v1, .L8007AE28
/* 7B9F0 8007ADF0 00189403 */   sra       $s2, $t8, 16
/* 7B9F4 8007ADF4 8E0E0030 */  lw         $t6, 0x30($s0)
/* 7B9F8 8007ADF8 8E020024 */  lw         $v0, 0x24($s0)
/* 7B9FC 8007ADFC 31CF0008 */  andi       $t7, $t6, 0x8
/* 7BA00 8007AE00 15E00005 */  bnez       $t7, .L8007AE18
/* 7BA04 8007AE04 0262082A */   slt       $at, $s3, $v0
/* 7BA08 8007AE08 50200004 */  beql       $at, $zero, .L8007AE1C
/* 7BA0C 8007AE0C 0052C023 */   subu      $t8, $v0, $s2
/* 7BA10 8007AE10 AE130024 */  sw         $s3, 0x24($s0)
/* 7BA14 8007AE14 02601025 */  or         $v0, $s3, $zero
.L8007AE18:
/* 7BA18 8007AE18 0052C023 */  subu       $t8, $v0, $s2
.L8007AE1C:
/* 7BA1C 8007AE1C 07010002 */  bgez       $t8, .L8007AE28
/* 7BA20 8007AE20 AE180024 */   sw        $t8, 0x24($s0)
/* 7BA24 8007AE24 AE000024 */  sw         $zero, 0x24($s0)
.L8007AE28:
/* 7BA28 8007AE28 1E400033 */  bgtz       $s2, .L8007AEF8
/* 7BA2C 8007AE2C 0272082A */   slt       $at, $s3, $s2
/* 7BA30 8007AE30 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BA34 8007AE34 8E180014 */  lw         $t8, 0x14($s0)
/* 7BA38 8007AE38 240E0030 */  addiu      $t6, $zero, 0x30
/* 7BA3C 8007AE3C 00121823 */  negu       $v1, $s2
/* 7BA40 8007AE40 01F8C821 */  addu       $t9, $t7, $t8
/* 7BA44 8007AE44 A32E0000 */  sb         $t6, 0x0($t9)
/* 7BA48 8007AE48 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BA4C 8007AE4C 8E020024 */  lw         $v0, 0x24($s0)
/* 7BA50 8007AE50 02202825 */  or         $a1, $s1, $zero
/* 7BA54 8007AE54 25F80001 */  addiu      $t8, $t7, 0x1
/* 7BA58 8007AE58 1C400005 */  bgtz       $v0, .L8007AE70
/* 7BA5C 8007AE5C AE180014 */   sw        $t8, 0x14($s0)
/* 7BA60 8007AE60 8E0E0030 */  lw         $t6, 0x30($s0)
/* 7BA64 8007AE64 31D90008 */  andi       $t9, $t6, 0x8
/* 7BA68 8007AE68 5320000B */  beql       $t9, $zero, .L8007AE98
/* 7BA6C 8007AE6C 0043082A */   slt       $at, $v0, $v1
.L8007AE70:
/* 7BA70 8007AE70 8E180008 */  lw         $t8, 0x8($s0)
/* 7BA74 8007AE74 8E0E0014 */  lw         $t6, 0x14($s0)
/* 7BA78 8007AE78 240F002E */  addiu      $t7, $zero, 0x2E
/* 7BA7C 8007AE7C 030EC821 */  addu       $t9, $t8, $t6
/* 7BA80 8007AE80 A32F0000 */  sb         $t7, 0x0($t9)
/* 7BA84 8007AE84 8E180014 */  lw         $t8, 0x14($s0)
/* 7BA88 8007AE88 8E020024 */  lw         $v0, 0x24($s0)
/* 7BA8C 8007AE8C 270E0001 */  addiu      $t6, $t8, 0x1
/* 7BA90 8007AE90 AE0E0014 */  sw         $t6, 0x14($s0)
/* 7BA94 8007AE94 0043082A */  slt        $at, $v0, $v1
.L8007AE98:
/* 7BA98 8007AE98 50200006 */  beql       $at, $zero, .L8007AEB4
/* 7BA9C 8007AE9C 0052C021 */   addu      $t8, $v0, $s2
/* 7BAA0 8007AEA0 00029023 */  negu       $s2, $v0
/* 7BAA4 8007AEA4 00127C00 */  sll        $t7, $s2, 16
/* 7BAA8 8007AEA8 000F9403 */  sra        $s2, $t7, 16
/* 7BAAC 8007AEAC 00121823 */  negu       $v1, $s2
/* 7BAB0 8007AEB0 0052C021 */  addu       $t8, $v0, $s2
.L8007AEB4:
/* 7BAB4 8007AEB4 0313082A */  slt        $at, $t8, $s3
/* 7BAB8 8007AEB8 AE030018 */  sw         $v1, 0x18($s0)
/* 7BABC 8007AEBC 10200004 */  beqz       $at, .L8007AED0
/* 7BAC0 8007AEC0 AE180024 */   sw        $t8, 0x24($s0)
/* 7BAC4 8007AEC4 00189C00 */  sll        $s3, $t8, 16
/* 7BAC8 8007AEC8 00137403 */  sra        $t6, $s3, 16
/* 7BACC 8007AECC 01C09825 */  or         $s3, $t6, $zero
.L8007AED0:
/* 7BAD0 8007AED0 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BAD4 8007AED4 8E190014 */  lw         $t9, 0x14($s0)
/* 7BAD8 8007AED8 AE13001C */  sw         $s3, 0x1C($s0)
/* 7BADC 8007AEDC 02603025 */  or         $a2, $s3, $zero
/* 7BAE0 8007AEE0 0C01B350 */  jal        func_8006CD40
/* 7BAE4 8007AEE4 01F92021 */   addu      $a0, $t7, $t9
/* 7BAE8 8007AEE8 8E180024 */  lw         $t8, 0x24($s0)
/* 7BAEC 8007AEEC 03137023 */  subu       $t6, $t8, $s3
/* 7BAF0 8007AEF0 100000E2 */  b          .L8007B27C
/* 7BAF4 8007AEF4 AE0E0020 */   sw        $t6, 0x20($s0)
.L8007AEF8:
/* 7BAF8 8007AEF8 1020001D */  beqz       $at, .L8007AF70
/* 7BAFC 8007AEFC 02202825 */   or        $a1, $s1, $zero
/* 7BB00 8007AF00 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BB04 8007AF04 8E190014 */  lw         $t9, 0x14($s0)
/* 7BB08 8007AF08 02202825 */  or         $a1, $s1, $zero
/* 7BB0C 8007AF0C 02603025 */  or         $a2, $s3, $zero
/* 7BB10 8007AF10 0C01B350 */  jal        func_8006CD40
/* 7BB14 8007AF14 01F92021 */   addu      $a0, $t7, $t9
/* 7BB18 8007AF18 8E180014 */  lw         $t8, 0x14($s0)
/* 7BB1C 8007AF1C 8E020024 */  lw         $v0, 0x24($s0)
/* 7BB20 8007AF20 02537823 */  subu       $t7, $s2, $s3
/* 7BB24 8007AF24 03137021 */  addu       $t6, $t8, $s3
/* 7BB28 8007AF28 AE0E0014 */  sw         $t6, 0x14($s0)
/* 7BB2C 8007AF2C 1C400005 */  bgtz       $v0, .L8007AF44
/* 7BB30 8007AF30 AE0F0018 */   sw        $t7, 0x18($s0)
/* 7BB34 8007AF34 8E190030 */  lw         $t9, 0x30($s0)
/* 7BB38 8007AF38 33380008 */  andi       $t8, $t9, 0x8
/* 7BB3C 8007AF3C 1300000A */  beqz       $t8, .L8007AF68
/* 7BB40 8007AF40 00000000 */   nop
.L8007AF44:
/* 7BB44 8007AF44 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BB48 8007AF48 8E190014 */  lw         $t9, 0x14($s0)
/* 7BB4C 8007AF4C 240E002E */  addiu      $t6, $zero, 0x2E
/* 7BB50 8007AF50 01F9C021 */  addu       $t8, $t7, $t9
/* 7BB54 8007AF54 A30E0000 */  sb         $t6, 0x0($t8)
/* 7BB58 8007AF58 8E0F001C */  lw         $t7, 0x1C($s0)
/* 7BB5C 8007AF5C 8E020024 */  lw         $v0, 0x24($s0)
/* 7BB60 8007AF60 25F90001 */  addiu      $t9, $t7, 0x1
/* 7BB64 8007AF64 AE19001C */  sw         $t9, 0x1C($s0)
.L8007AF68:
/* 7BB68 8007AF68 100000C4 */  b          .L8007B27C
/* 7BB6C 8007AF6C AE020020 */   sw        $v0, 0x20($s0)
.L8007AF70:
/* 7BB70 8007AF70 8E0E0008 */  lw         $t6, 0x8($s0)
/* 7BB74 8007AF74 8E180014 */  lw         $t8, 0x14($s0)
/* 7BB78 8007AF78 02403025 */  or         $a2, $s2, $zero
/* 7BB7C 8007AF7C 0C01B350 */  jal        func_8006CD40
/* 7BB80 8007AF80 01D82021 */   addu      $a0, $t6, $t8
/* 7BB84 8007AF84 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BB88 8007AF88 8E020024 */  lw         $v0, 0x24($s0)
/* 7BB8C 8007AF8C 02729823 */  subu       $s3, $s3, $s2
/* 7BB90 8007AF90 00137400 */  sll        $t6, $s3, 16
/* 7BB94 8007AF94 01F2C821 */  addu       $t9, $t7, $s2
/* 7BB98 8007AF98 AE190014 */  sw         $t9, 0x14($s0)
/* 7BB9C 8007AF9C 1C400005 */  bgtz       $v0, .L8007AFB4
/* 7BBA0 8007AFA0 000E9C03 */   sra       $s3, $t6, 16
/* 7BBA4 8007AFA4 8E0F0030 */  lw         $t7, 0x30($s0)
/* 7BBA8 8007AFA8 31F90008 */  andi       $t9, $t7, 0x8
/* 7BBAC 8007AFAC 5320000B */  beql       $t9, $zero, .L8007AFDC
/* 7BBB0 8007AFB0 0053082A */   slt       $at, $v0, $s3
.L8007AFB4:
/* 7BBB4 8007AFB4 8E180008 */  lw         $t8, 0x8($s0)
/* 7BBB8 8007AFB8 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BBBC 8007AFBC 240E002E */  addiu      $t6, $zero, 0x2E
/* 7BBC0 8007AFC0 030FC821 */  addu       $t9, $t8, $t7
/* 7BBC4 8007AFC4 A32E0000 */  sb         $t6, 0x0($t9)
/* 7BBC8 8007AFC8 8E180014 */  lw         $t8, 0x14($s0)
/* 7BBCC 8007AFCC 8E020024 */  lw         $v0, 0x24($s0)
/* 7BBD0 8007AFD0 270F0001 */  addiu      $t7, $t8, 0x1
/* 7BBD4 8007AFD4 AE0F0014 */  sw         $t7, 0x14($s0)
/* 7BBD8 8007AFD8 0053082A */  slt        $at, $v0, $s3
.L8007AFDC:
/* 7BBDC 8007AFDC 10200004 */  beqz       $at, .L8007AFF0
/* 7BBE0 8007AFE0 02512821 */   addu      $a1, $s2, $s1
/* 7BBE4 8007AFE4 00029C00 */  sll        $s3, $v0, 16
/* 7BBE8 8007AFE8 00137403 */  sra        $t6, $s3, 16
/* 7BBEC 8007AFEC 01C09825 */  or         $s3, $t6, $zero
.L8007AFF0:
/* 7BBF0 8007AFF0 8E190008 */  lw         $t9, 0x8($s0)
/* 7BBF4 8007AFF4 8E180014 */  lw         $t8, 0x14($s0)
/* 7BBF8 8007AFF8 02603025 */  or         $a2, $s3, $zero
/* 7BBFC 8007AFFC 0C01B350 */  jal        func_8006CD40
/* 7BC00 8007B000 03382021 */   addu      $a0, $t9, $t8
/* 7BC04 8007B004 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BC08 8007B008 8E190024 */  lw         $t9, 0x24($s0)
/* 7BC0C 8007B00C 01F37021 */  addu       $t6, $t7, $s3
/* 7BC10 8007B010 0333C023 */  subu       $t8, $t9, $s3
/* 7BC14 8007B014 AE0E0014 */  sw         $t6, 0x14($s0)
/* 7BC18 8007B018 10000098 */  b          .L8007B27C
/* 7BC1C 8007B01C AE180018 */   sw        $t8, 0x18($s0)
.L8007B020:
/* 7BC20 8007B020 10830003 */  beq        $a0, $v1, .L8007B030
/* 7BC24 8007B024 24010047 */   addiu     $at, $zero, 0x47
/* 7BC28 8007B028 54610011 */  bnel       $v1, $at, .L8007B070
/* 7BC2C 8007B02C 8E180008 */   lw        $t8, 0x8($s0)
.L8007B030:
/* 7BC30 8007B030 8E020024 */  lw         $v0, 0x24($s0)
/* 7BC34 8007B034 24140045 */  addiu      $s4, $zero, 0x45
/* 7BC38 8007B038 0262082A */  slt        $at, $s3, $v0
/* 7BC3C 8007B03C 50200004 */  beql       $at, $zero, .L8007B050
/* 7BC40 8007B040 244FFFFF */   addiu     $t7, $v0, -0x1
/* 7BC44 8007B044 AE130024 */  sw         $s3, 0x24($s0)
/* 7BC48 8007B048 02601025 */  or         $v0, $s3, $zero
/* 7BC4C 8007B04C 244FFFFF */  addiu      $t7, $v0, -0x1
.L8007B050:
/* 7BC50 8007B050 05E10002 */  bgez       $t7, .L8007B05C
/* 7BC54 8007B054 AE0F0024 */   sw        $t7, 0x24($s0)
/* 7BC58 8007B058 AE000024 */  sw         $zero, 0x24($s0)
.L8007B05C:
/* 7BC5C 8007B05C 14830003 */  bne        $a0, $v1, .L8007B06C
/* 7BC60 8007B060 00000000 */   nop
/* 7BC64 8007B064 10000001 */  b          .L8007B06C
/* 7BC68 8007B068 24140065 */   addiu     $s4, $zero, 0x65
.L8007B06C:
/* 7BC6C 8007B06C 8E180008 */  lw         $t8, 0x8($s0)
.L8007B070:
/* 7BC70 8007B070 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BC74 8007B074 92390000 */  lbu        $t9, 0x0($s1)
/* 7BC78 8007B078 26310001 */  addiu      $s1, $s1, 0x1
/* 7BC7C 8007B07C 030F7021 */  addu       $t6, $t8, $t7
/* 7BC80 8007B080 A1D90000 */  sb         $t9, 0x0($t6)
/* 7BC84 8007B084 8E180014 */  lw         $t8, 0x14($s0)
/* 7BC88 8007B088 8E020024 */  lw         $v0, 0x24($s0)
/* 7BC8C 8007B08C 270F0001 */  addiu      $t7, $t8, 0x1
/* 7BC90 8007B090 1C400005 */  bgtz       $v0, .L8007B0A8
/* 7BC94 8007B094 AE0F0014 */   sw        $t7, 0x14($s0)
/* 7BC98 8007B098 8E190030 */  lw         $t9, 0x30($s0)
/* 7BC9C 8007B09C 332E0008 */  andi       $t6, $t9, 0x8
/* 7BCA0 8007B0A0 11C0000A */  beqz       $t6, .L8007B0CC
/* 7BCA4 8007B0A4 00000000 */   nop
.L8007B0A8:
/* 7BCA8 8007B0A8 8E0F0008 */  lw         $t7, 0x8($s0)
/* 7BCAC 8007B0AC 8E190014 */  lw         $t9, 0x14($s0)
/* 7BCB0 8007B0B0 2418002E */  addiu      $t8, $zero, 0x2E
/* 7BCB4 8007B0B4 01F97021 */  addu       $t6, $t7, $t9
/* 7BCB8 8007B0B8 A1D80000 */  sb         $t8, 0x0($t6)
/* 7BCBC 8007B0BC 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BCC0 8007B0C0 8E020024 */  lw         $v0, 0x24($s0)
/* 7BCC4 8007B0C4 25F90001 */  addiu      $t9, $t7, 0x1
/* 7BCC8 8007B0C8 AE190014 */  sw         $t9, 0x14($s0)
.L8007B0CC:
/* 7BCCC 8007B0CC 58400016 */  blezl      $v0, .L8007B128
/* 7BCD0 8007B0D0 8E0E0008 */   lw        $t6, 0x8($s0)
/* 7BCD4 8007B0D4 2673FFFF */  addiu      $s3, $s3, -0x1
/* 7BCD8 8007B0D8 0013C400 */  sll        $t8, $s3, 16
/* 7BCDC 8007B0DC 00189C03 */  sra        $s3, $t8, 16
/* 7BCE0 8007B0E0 0053082A */  slt        $at, $v0, $s3
/* 7BCE4 8007B0E4 10200004 */  beqz       $at, .L8007B0F8
/* 7BCE8 8007B0E8 02202825 */   or        $a1, $s1, $zero
/* 7BCEC 8007B0EC 00029C00 */  sll        $s3, $v0, 16
/* 7BCF0 8007B0F0 00137C03 */  sra        $t7, $s3, 16
/* 7BCF4 8007B0F4 01E09825 */  or         $s3, $t7, $zero
.L8007B0F8:
/* 7BCF8 8007B0F8 8E190008 */  lw         $t9, 0x8($s0)
/* 7BCFC 8007B0FC 8E180014 */  lw         $t8, 0x14($s0)
/* 7BD00 8007B100 02603025 */  or         $a2, $s3, $zero
/* 7BD04 8007B104 0C01B350 */  jal        func_8006CD40
/* 7BD08 8007B108 03382021 */   addu      $a0, $t9, $t8
/* 7BD0C 8007B10C 8E0E0014 */  lw         $t6, 0x14($s0)
/* 7BD10 8007B110 8E190024 */  lw         $t9, 0x24($s0)
/* 7BD14 8007B114 01D37821 */  addu       $t7, $t6, $s3
/* 7BD18 8007B118 0333C023 */  subu       $t8, $t9, $s3
/* 7BD1C 8007B11C AE0F0014 */  sw         $t7, 0x14($s0)
/* 7BD20 8007B120 AE180018 */  sw         $t8, 0x18($s0)
/* 7BD24 8007B124 8E0E0008 */  lw         $t6, 0x8($s0)
.L8007B128:
/* 7BD28 8007B128 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BD2C 8007B12C 01CF8821 */  addu       $s1, $t6, $t7
/* 7BD30 8007B130 26310001 */  addiu      $s1, $s1, 0x1
/* 7BD34 8007B134 06400005 */  bltz       $s2, .L8007B14C
/* 7BD38 8007B138 A234FFFF */   sb        $s4, -0x1($s1)
/* 7BD3C 8007B13C 2419002B */  addiu      $t9, $zero, 0x2B
/* 7BD40 8007B140 A2390000 */  sb         $t9, 0x0($s1)
/* 7BD44 8007B144 10000008 */  b          .L8007B168
/* 7BD48 8007B148 26310001 */   addiu     $s1, $s1, 0x1
.L8007B14C:
/* 7BD4C 8007B14C 00129023 */  negu       $s2, $s2
/* 7BD50 8007B150 00127400 */  sll        $t6, $s2, 16
/* 7BD54 8007B154 2418002D */  addiu      $t8, $zero, 0x2D
/* 7BD58 8007B158 000E7C03 */  sra        $t7, $t6, 16
/* 7BD5C 8007B15C A2380000 */  sb         $t8, 0x0($s1)
/* 7BD60 8007B160 26310001 */  addiu      $s1, $s1, 0x1
/* 7BD64 8007B164 01E09025 */  or         $s2, $t7, $zero
.L8007B168:
/* 7BD68 8007B168 2A410064 */  slti       $at, $s2, 0x64
/* 7BD6C 8007B16C 5420002A */  bnel       $at, $zero, .L8007B218
/* 7BD70 8007B170 2402000A */   addiu     $v0, $zero, 0xA
/* 7BD74 8007B174 2A4103E8 */  slti       $at, $s2, 0x3E8
/* 7BD78 8007B178 14200013 */  bnez       $at, .L8007B1C8
/* 7BD7C 8007B17C 240203E8 */   addiu     $v0, $zero, 0x3E8
/* 7BD80 8007B180 0242001A */  div        $zero, $s2, $v0
/* 7BD84 8007B184 14400002 */  bnez       $v0, .L8007B190
/* 7BD88 8007B188 00000000 */   nop
/* 7BD8C 8007B18C 0007000D */  break      7
.L8007B190:
/* 7BD90 8007B190 2401FFFF */  addiu      $at, $zero, -0x1
/* 7BD94 8007B194 14410004 */  bne        $v0, $at, .L8007B1A8
/* 7BD98 8007B198 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7BD9C 8007B19C 16410002 */  bne        $s2, $at, .L8007B1A8
/* 7BDA0 8007B1A0 00000000 */   nop
/* 7BDA4 8007B1A4 0006000D */  break      6
.L8007B1A8:
/* 7BDA8 8007B1A8 00009010 */  mfhi       $s2
/* 7BDAC 8007B1AC 00127400 */  sll        $t6, $s2, 16
/* 7BDB0 8007B1B0 0000C812 */  mflo       $t9
/* 7BDB4 8007B1B4 27380030 */  addiu      $t8, $t9, 0x30
/* 7BDB8 8007B1B8 000E7C03 */  sra        $t7, $t6, 16
/* 7BDBC 8007B1BC 01E09025 */  or         $s2, $t7, $zero
/* 7BDC0 8007B1C0 A2380000 */  sb         $t8, 0x0($s1)
/* 7BDC4 8007B1C4 26310001 */  addiu      $s1, $s1, 0x1
.L8007B1C8:
/* 7BDC8 8007B1C8 24020064 */  addiu      $v0, $zero, 0x64
/* 7BDCC 8007B1CC 0242001A */  div        $zero, $s2, $v0
/* 7BDD0 8007B1D0 14400002 */  bnez       $v0, .L8007B1DC
/* 7BDD4 8007B1D4 00000000 */   nop
/* 7BDD8 8007B1D8 0007000D */  break      7
.L8007B1DC:
/* 7BDDC 8007B1DC 2401FFFF */  addiu      $at, $zero, -0x1
/* 7BDE0 8007B1E0 14410004 */  bne        $v0, $at, .L8007B1F4
/* 7BDE4 8007B1E4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7BDE8 8007B1E8 16410002 */  bne        $s2, $at, .L8007B1F4
/* 7BDEC 8007B1EC 00000000 */   nop
/* 7BDF0 8007B1F0 0006000D */  break      6
.L8007B1F4:
/* 7BDF4 8007B1F4 00009010 */  mfhi       $s2
/* 7BDF8 8007B1F8 00127400 */  sll        $t6, $s2, 16
/* 7BDFC 8007B1FC 0000C812 */  mflo       $t9
/* 7BE00 8007B200 27380030 */  addiu      $t8, $t9, 0x30
/* 7BE04 8007B204 000E7C03 */  sra        $t7, $t6, 16
/* 7BE08 8007B208 01E09025 */  or         $s2, $t7, $zero
/* 7BE0C 8007B20C A2380000 */  sb         $t8, 0x0($s1)
/* 7BE10 8007B210 26310001 */  addiu      $s1, $s1, 0x1
/* 7BE14 8007B214 2402000A */  addiu      $v0, $zero, 0xA
.L8007B218:
/* 7BE18 8007B218 0242001A */  div        $zero, $s2, $v0
/* 7BE1C 8007B21C 14400002 */  bnez       $v0, .L8007B228
/* 7BE20 8007B220 00000000 */   nop
/* 7BE24 8007B224 0007000D */  break      7
.L8007B228:
/* 7BE28 8007B228 2401FFFF */  addiu      $at, $zero, -0x1
/* 7BE2C 8007B22C 14410004 */  bne        $v0, $at, .L8007B240
/* 7BE30 8007B230 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7BE34 8007B234 16410002 */  bne        $s2, $at, .L8007B240
/* 7BE38 8007B238 00000000 */   nop
/* 7BE3C 8007B23C 0006000D */  break      6
.L8007B240:
/* 7BE40 8007B240 00009010 */  mfhi       $s2
/* 7BE44 8007B244 00127400 */  sll        $t6, $s2, 16
/* 7BE48 8007B248 0000C812 */  mflo       $t9
/* 7BE4C 8007B24C 27380030 */  addiu      $t8, $t9, 0x30
/* 7BE50 8007B250 000E7C03 */  sra        $t7, $t6, 16
/* 7BE54 8007B254 25F90030 */  addiu      $t9, $t7, 0x30
/* 7BE58 8007B258 A2380000 */  sb         $t8, 0x0($s1)
/* 7BE5C 8007B25C A2390001 */  sb         $t9, 0x1($s1)
/* 7BE60 8007B260 8E180008 */  lw         $t8, 0x8($s0)
/* 7BE64 8007B264 01E09025 */  or         $s2, $t7, $zero
/* 7BE68 8007B268 8E0F0014 */  lw         $t7, 0x14($s0)
/* 7BE6C 8007B26C 26310002 */  addiu      $s1, $s1, 0x2
/* 7BE70 8007B270 02387023 */  subu       $t6, $s1, $t8
/* 7BE74 8007B274 01CFC823 */  subu       $t9, $t6, $t7
/* 7BE78 8007B278 AE19001C */  sw         $t9, 0x1C($s0)
.L8007B27C:
/* 7BE7C 8007B27C 8E180030 */  lw         $t8, 0x30($s0)
/* 7BE80 8007B280 24010010 */  addiu      $at, $zero, 0x10
/* 7BE84 8007B284 330E0014 */  andi       $t6, $t8, 0x14
/* 7BE88 8007B288 55C10010 */  bnel       $t6, $at, .L8007B2CC
/* 7BE8C 8007B28C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 7BE90 8007B290 8E0F000C */  lw         $t7, 0xC($s0)
/* 7BE94 8007B294 8E190014 */  lw         $t9, 0x14($s0)
/* 7BE98 8007B298 8E0E0018 */  lw         $t6, 0x18($s0)
/* 7BE9C 8007B29C 8E030028 */  lw         $v1, 0x28($s0)
/* 7BEA0 8007B2A0 01F9C021 */  addu       $t8, $t7, $t9
/* 7BEA4 8007B2A4 8E19001C */  lw         $t9, 0x1C($s0)
/* 7BEA8 8007B2A8 030E7821 */  addu       $t7, $t8, $t6
/* 7BEAC 8007B2AC 8E0E0020 */  lw         $t6, 0x20($s0)
/* 7BEB0 8007B2B0 01F9C021 */  addu       $t8, $t7, $t9
/* 7BEB4 8007B2B4 030E1021 */  addu       $v0, $t8, $t6
/* 7BEB8 8007B2B8 0043082A */  slt        $at, $v0, $v1
/* 7BEBC 8007B2BC 10200002 */  beqz       $at, .L8007B2C8
/* 7BEC0 8007B2C0 00627823 */   subu      $t7, $v1, $v0
/* 7BEC4 8007B2C4 AE0F0010 */  sw         $t7, 0x10($s0)
.L8007B2C8:
/* 7BEC8 8007B2C8 8FBF0014 */  lw         $ra, 0x14($sp)
.L8007B2CC:
/* 7BECC 8007B2CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7BED0 8007B2D0 03E00008 */  jr         $ra
/* 7BED4 8007B2D4 00000000 */   nop

glabel func_8007B2D8
/* 7BED8 8007B2D8 03E00008 */  jr         $ra
/* 7BEDC 8007B2DC 00000000 */   nop

glabel _Ldtob
/* 7BEE0 8007B2E0 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* 7BEE4 8007B2E4 AFBF003C */  sw         $ra, 0x3C($sp)
/* 7BEE8 8007B2E8 AFB50038 */  sw         $s5, 0x38($sp)
/* 7BEEC 8007B2EC AFB40034 */  sw         $s4, 0x34($sp)
/* 7BEF0 8007B2F0 AFB30030 */  sw         $s3, 0x30($sp)
/* 7BEF4 8007B2F4 AFB2002C */  sw         $s2, 0x2C($sp)
/* 7BEF8 8007B2F8 AFB10028 */  sw         $s1, 0x28($sp)
/* 7BEFC 8007B2FC AFB00024 */  sw         $s0, 0x24($sp)
/* 7BF00 8007B300 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 7BF04 8007B304 AFA400D0 */  sw         $a0, 0xD0($sp)
/* 7BF08 8007B308 AFA500D4 */  sw         $a1, 0xD4($sp)
/* 7BF0C 8007B30C 8C820024 */  lw         $v0, 0x24($a0)
/* 7BF10 8007B310 27B500B0 */  addiu      $s5, $sp, 0xB0
/* 7BF14 8007B314 D4940000 */  ldc1       $f20, 0x0($a0)
/* 7BF18 8007B318 04410003 */  bgez       $v0, .L8007B328
/* 7BF1C 8007B31C 240F0006 */   addiu     $t7, $zero, 0x6
/* 7BF20 8007B320 1000000C */  b          .L8007B354
/* 7BF24 8007B324 AC8F0024 */   sw        $t7, 0x24($a0)
.L8007B328:
/* 7BF28 8007B328 1440000A */  bnez       $v0, .L8007B354
/* 7BF2C 8007B32C 93B800D7 */   lbu       $t8, 0xD7($sp)
/* 7BF30 8007B330 24010067 */  addiu      $at, $zero, 0x67
/* 7BF34 8007B334 13010004 */  beq        $t8, $at, .L8007B348
/* 7BF38 8007B338 AFB80048 */   sw        $t8, 0x48($sp)
/* 7BF3C 8007B33C 24010047 */  addiu      $at, $zero, 0x47
/* 7BF40 8007B340 57010005 */  bnel       $t8, $at, .L8007B358
/* 7BF44 8007B344 8FAE00D0 */   lw        $t6, 0xD0($sp)
.L8007B348:
/* 7BF48 8007B348 8FAF00D0 */  lw         $t7, 0xD0($sp)
/* 7BF4C 8007B34C 24190001 */  addiu      $t9, $zero, 0x1
/* 7BF50 8007B350 ADF90024 */  sw         $t9, 0x24($t7)
.L8007B354:
/* 7BF54 8007B354 8FAE00D0 */  lw         $t6, 0xD0($sp)
.L8007B358:
/* 7BF58 8007B358 240107FF */  addiu      $at, $zero, 0x7FF
/* 7BF5C 8007B35C 95C40000 */  lhu        $a0, 0x0($t6)
/* 7BF60 8007B360 30837FF0 */  andi       $v1, $a0, 0x7FF0
/* 7BF64 8007B364 0003C103 */  sra        $t8, $v1, 4
/* 7BF68 8007B368 0018CC00 */  sll        $t9, $t8, 16
/* 7BF6C 8007B36C 00191C03 */  sra        $v1, $t9, 16
/* 7BF70 8007B370 14610018 */  bne        $v1, $at, .L8007B3D4
/* 7BF74 8007B374 00000000 */   nop
/* 7BF78 8007B378 A7A0009A */  sh         $zero, 0x9A($sp)
/* 7BF7C 8007B37C 95D80000 */  lhu        $t8, 0x0($t6)
/* 7BF80 8007B380 24030002 */  addiu      $v1, $zero, 0x2
/* 7BF84 8007B384 00031400 */  sll        $v0, $v1, 16
/* 7BF88 8007B388 3319000F */  andi       $t9, $t8, 0xF
/* 7BF8C 8007B38C 5720000A */  bnel       $t9, $zero, .L8007B3B8
/* 7BF90 8007B390 00027C03 */   sra       $t7, $v0, 16
/* 7BF94 8007B394 95CF0002 */  lhu        $t7, 0x2($t6)
/* 7BF98 8007B398 55E00007 */  bnel       $t7, $zero, .L8007B3B8
/* 7BF9C 8007B39C 00027C03 */   sra       $t7, $v0, 16
/* 7BFA0 8007B3A0 95D80004 */  lhu        $t8, 0x4($t6)
/* 7BFA4 8007B3A4 57000004 */  bnel       $t8, $zero, .L8007B3B8
/* 7BFA8 8007B3A8 00027C03 */   sra       $t7, $v0, 16
/* 7BFAC 8007B3AC 95D90006 */  lhu        $t9, 0x6($t6)
/* 7BFB0 8007B3B0 13200003 */  beqz       $t9, .L8007B3C0
/* 7BFB4 8007B3B4 00027C03 */   sra       $t7, $v0, 16
.L8007B3B8:
/* 7BFB8 8007B3B8 10000014 */  b          .L8007B40C
/* 7BFBC 8007B3BC 01E01025 */   or        $v0, $t7, $zero
.L8007B3C0:
/* 7BFC0 8007B3C0 24030001 */  addiu      $v1, $zero, 0x1
/* 7BFC4 8007B3C4 00031400 */  sll        $v0, $v1, 16
/* 7BFC8 8007B3C8 00027C03 */  sra        $t7, $v0, 16
/* 7BFCC 8007B3CC 1000000F */  b          .L8007B40C
/* 7BFD0 8007B3D0 01E01025 */   or        $v0, $t7, $zero
.L8007B3D4:
/* 7BFD4 8007B3D4 18600008 */  blez       $v1, .L8007B3F8
/* 7BFD8 8007B3D8 3098800F */   andi      $t8, $a0, 0x800F
/* 7BFDC 8007B3DC 8FB900D0 */  lw         $t9, 0xD0($sp)
/* 7BFE0 8007B3E0 370E3FF0 */  ori        $t6, $t8, 0x3FF0
/* 7BFE4 8007B3E4 246FFC02 */  addiu      $t7, $v1, -0x3FE
/* 7BFE8 8007B3E8 A72E0000 */  sh         $t6, 0x0($t9)
/* 7BFEC 8007B3EC A7AF009A */  sh         $t7, 0x9A($sp)
/* 7BFF0 8007B3F0 10000006 */  b          .L8007B40C
/* 7BFF4 8007B3F4 2402FFFF */   addiu     $v0, $zero, -0x1
.L8007B3F8:
/* 7BFF8 8007B3F8 04610003 */  bgez       $v1, .L8007B408
/* 7BFFC 8007B3FC 00001025 */   or        $v0, $zero, $zero
/* 7C000 8007B400 10000002 */  b          .L8007B40C
/* 7C004 8007B404 24020002 */   addiu     $v0, $zero, 0x2
.L8007B408:
/* 7C008 8007B408 A7A0009A */  sh         $zero, 0x9A($sp)
.L8007B40C:
/* 7C00C 8007B40C 18400012 */  blez       $v0, .L8007B458
/* 7C010 8007B410 0002C400 */   sll       $t8, $v0, 16
/* 7C014 8007B414 0002C400 */  sll        $t8, $v0, 16
/* 7C018 8007B418 00187403 */  sra        $t6, $t8, 16
/* 7C01C 8007B41C 24010002 */  addiu      $at, $zero, 0x2
/* 7C020 8007B420 15C10004 */  bne        $t6, $at, .L8007B434
/* 7C024 8007B424 8FB900D0 */   lw        $t9, 0xD0($sp)
/* 7C028 8007B428 3C05800A */  lui        $a1, %hi(D_80099008)
/* 7C02C 8007B42C 10000003 */  b          .L8007B43C
/* 7C030 8007B430 24A59008 */   addiu     $a1, $a1, %lo(D_80099008)
.L8007B434:
/* 7C034 8007B434 3C05800A */  lui        $a1, %hi(D_8009900C)
/* 7C038 8007B438 24A5900C */  addiu      $a1, $a1, %lo(D_8009900C)
.L8007B43C:
/* 7C03C 8007B43C 240F0003 */  addiu      $t7, $zero, 0x3
/* 7C040 8007B440 AF2F0014 */  sw         $t7, 0x14($t9)
/* 7C044 8007B444 8F240008 */  lw         $a0, 0x8($t9)
/* 7C048 8007B448 0C01B350 */  jal        func_8006CD40
/* 7C04C 8007B44C 24060003 */   addiu     $a2, $zero, 0x3
/* 7C050 8007B450 100000ED */  b          .L8007B808
/* 7C054 8007B454 8FBF003C */   lw        $ra, 0x3C($sp)
.L8007B458:
/* 7C058 8007B458 00187403 */  sra        $t6, $t8, 16
/* 7C05C 8007B45C 15C00003 */  bnez       $t6, .L8007B46C
/* 7C060 8007B460 00009825 */   or        $s3, $zero, $zero
/* 7C064 8007B464 100000E2 */  b          .L8007B7F0
/* 7C068 8007B468 A7A0009A */   sh        $zero, 0x9A($sp)
.L8007B46C:
/* 7C06C 8007B46C 44801800 */  mtc1       $zero, $f3
/* 7C070 8007B470 44801000 */  mtc1       $zero, $f2
/* 7C074 8007B474 93AF00D7 */  lbu        $t7, 0xD7($sp)
/* 7C078 8007B478 87B9009A */  lh         $t9, 0x9A($sp)
/* 7C07C 8007B47C 4622A03C */  c.lt.d     $f20, $f2
/* 7C080 8007B480 24017597 */  addiu      $at, $zero, 0x7597
/* 7C084 8007B484 00001825 */  or         $v1, $zero, $zero
/* 7C088 8007B488 27B500B1 */  addiu      $s5, $sp, 0xB1
/* 7C08C 8007B48C 45000002 */  bc1f       .L8007B498
/* 7C090 8007B490 AFAF0048 */   sw        $t7, 0x48($sp)
/* 7C094 8007B494 4620A507 */  neg.d      $f20, $f20
.L8007B498:
/* 7C098 8007B498 03210019 */  multu      $t9, $at
/* 7C09C 8007B49C 3C010001 */  lui        $at, (0x186A0 >> 16)
/* 7C0A0 8007B4A0 342186A0 */  ori        $at, $at, (0x186A0 & 0xFFFF)
/* 7C0A4 8007B4A4 24050006 */  addiu      $a1, $zero, 0x6
/* 7C0A8 8007B4A8 0000C012 */  mflo       $t8
/* 7C0AC 8007B4AC 00000000 */  nop
/* 7C0B0 8007B4B0 00000000 */  nop
/* 7C0B4 8007B4B4 0301001A */  div        $zero, $t8, $at
/* 7C0B8 8007B4B8 00007012 */  mflo       $t6
/* 7C0BC 8007B4BC 25CFFFFC */  addiu      $t7, $t6, -0x4
/* 7C0C0 8007B4C0 000FCC00 */  sll        $t9, $t7, 16
/* 7C0C4 8007B4C4 0019C403 */  sra        $t8, $t9, 16
/* 7C0C8 8007B4C8 07010019 */  bgez       $t8, .L8007B530
/* 7C0CC 8007B4CC A7AF009A */   sh        $t7, 0x9A($sp)
/* 7C0D0 8007B4D0 000FCC00 */  sll        $t9, $t7, 16
/* 7C0D4 8007B4D4 0019C403 */  sra        $t8, $t9, 16
/* 7C0D8 8007B4D8 240E0003 */  addiu      $t6, $zero, 0x3
/* 7C0DC 8007B4DC 01D82023 */  subu       $a0, $t6, $t8
/* 7C0E0 8007B4E0 2401FFFC */  addiu      $at, $zero, -0x4
/* 7C0E4 8007B4E4 00811024 */  and        $v0, $a0, $at
/* 7C0E8 8007B4E8 0002C823 */  negu       $t9, $v0
/* 7C0EC 8007B4EC 1840002C */  blez       $v0, .L8007B5A0
/* 7C0F0 8007B4F0 A7B9009A */   sh        $t9, 0x9A($sp)
/* 7C0F4 8007B4F4 3C04800A */  lui        $a0, %hi(D_80098FC0)
/* 7C0F8 8007B4F8 24848FC0 */  addiu      $a0, $a0, %lo(D_80098FC0)
.L8007B4FC:
/* 7C0FC 8007B4FC 304E0001 */  andi       $t6, $v0, 0x1
/* 7C100 8007B500 11C00006 */  beqz       $t6, .L8007B51C
/* 7C104 8007B504 0002C843 */   sra       $t9, $v0, 1
/* 7C108 8007B508 0003C0C0 */  sll        $t8, $v1, 3
/* 7C10C 8007B50C 00987821 */  addu       $t7, $a0, $t8
/* 7C110 8007B510 D5E40000 */  ldc1       $f4, 0x0($t7)
/* 7C114 8007B514 4624A502 */  mul.d      $f20, $f20, $f4
/* 7C118 8007B518 00000000 */  nop
.L8007B51C:
/* 7C11C 8007B51C 03201025 */  or         $v0, $t9, $zero
/* 7C120 8007B520 1F20FFF6 */  bgtz       $t9, .L8007B4FC
/* 7C124 8007B524 24630001 */   addiu     $v1, $v1, 0x1
/* 7C128 8007B528 1000001E */  b          .L8007B5A4
/* 7C12C 8007B52C 8FAF0048 */   lw        $t7, 0x48($sp)
.L8007B530:
/* 7C130 8007B530 87AE009A */  lh         $t6, 0x9A($sp)
/* 7C134 8007B534 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 7C138 8007B538 00001825 */  or         $v1, $zero, $zero
/* 7C13C 8007B53C 19C00018 */  blez       $t6, .L8007B5A0
/* 7C140 8007B540 31D8FFFC */   andi      $t8, $t6, 0xFFFC
/* 7C144 8007B544 00181400 */  sll        $v0, $t8, 16
/* 7C148 8007B548 0018CC00 */  sll        $t9, $t8, 16
/* 7C14C 8007B54C 44810800 */  mtc1       $at, $f1
/* 7C150 8007B550 44800000 */  mtc1       $zero, $f0
/* 7C154 8007B554 00197403 */  sra        $t6, $t9, 16
/* 7C158 8007B558 00027C03 */  sra        $t7, $v0, 16
/* 7C15C 8007B55C A7B8009A */  sh         $t8, 0x9A($sp)
/* 7C160 8007B560 19C0000E */  blez       $t6, .L8007B59C
/* 7C164 8007B564 01E01025 */   or        $v0, $t7, $zero
/* 7C168 8007B568 3C04800A */  lui        $a0, %hi(D_80098FC0)
/* 7C16C 8007B56C 24848FC0 */  addiu      $a0, $a0, %lo(D_80098FC0)
.L8007B570:
/* 7C170 8007B570 304F0001 */  andi       $t7, $v0, 0x1
/* 7C174 8007B574 11E00006 */  beqz       $t7, .L8007B590
/* 7C178 8007B578 00027043 */   sra       $t6, $v0, 1
/* 7C17C 8007B57C 0003C0C0 */  sll        $t8, $v1, 3
/* 7C180 8007B580 0098C821 */  addu       $t9, $a0, $t8
/* 7C184 8007B584 D7260000 */  ldc1       $f6, 0x0($t9)
/* 7C188 8007B588 46260002 */  mul.d      $f0, $f0, $f6
/* 7C18C 8007B58C 00000000 */  nop
.L8007B590:
/* 7C190 8007B590 01C01025 */  or         $v0, $t6, $zero
/* 7C194 8007B594 1DC0FFF6 */  bgtz       $t6, .L8007B570
/* 7C198 8007B598 24630001 */   addiu     $v1, $v1, 0x1
.L8007B59C:
/* 7C19C 8007B59C 4620A503 */  div.d      $f20, $f20, $f0
.L8007B5A0:
/* 7C1A0 8007B5A0 8FAF0048 */  lw         $t7, 0x48($sp)
.L8007B5A4:
/* 7C1A4 8007B5A4 24010066 */  addiu      $at, $zero, 0x66
/* 7C1A8 8007B5A8 8FB800D0 */  lw         $t8, 0xD0($sp)
/* 7C1AC 8007B5AC 15E10004 */  bne        $t7, $at, .L8007B5C0
/* 7C1B0 8007B5B0 240E0030 */   addiu     $t6, $zero, 0x30
/* 7C1B4 8007B5B4 87A5009A */  lh         $a1, 0x9A($sp)
/* 7C1B8 8007B5B8 10000001 */  b          .L8007B5C0
/* 7C1BC 8007B5BC 24A5000A */   addiu     $a1, $a1, 0xA
.L8007B5C0:
/* 7C1C0 8007B5C0 8F190024 */  lw         $t9, 0x24($t8)
/* 7C1C4 8007B5C4 00B9A021 */  addu       $s4, $a1, $t9
/* 7C1C8 8007B5C8 2A810014 */  slti       $at, $s4, 0x14
/* 7C1CC 8007B5CC 14200002 */  bnez       $at, .L8007B5D8
/* 7C1D0 8007B5D0 00000000 */   nop
/* 7C1D4 8007B5D4 24140013 */  addiu      $s4, $zero, 0x13
.L8007B5D8:
/* 7C1D8 8007B5D8 1A800033 */  blez       $s4, .L8007B6A8
/* 7C1DC 8007B5DC A3AE00B0 */   sb        $t6, 0xB0($sp)
/* 7C1E0 8007B5E0 4634103C */  c.lt.d     $f2, $f20
/* 7C1E4 8007B5E4 24130030 */  addiu      $s3, $zero, 0x30
/* 7C1E8 8007B5E8 27B20074 */  addiu      $s2, $sp, 0x74
/* 7C1EC 8007B5EC 4502002F */  bc1fl      .L8007B6AC
/* 7C1F0 8007B5F0 87B8009A */   lh        $t8, 0x9A($sp)
/* 7C1F4 8007B5F4 4620A20D */  trunc.w.d  $f8, $f20
.L8007B5F8:
/* 7C1F8 8007B5F8 2694FFF8 */  addiu      $s4, $s4, -0x8
/* 7C1FC 8007B5FC 26B50008 */  addiu      $s5, $s5, 0x8
/* 7C200 8007B600 44114000 */  mfc1       $s1, $f8
/* 7C204 8007B604 1A800008 */  blez       $s4, .L8007B628
/* 7C208 8007B608 00000000 */   nop
/* 7C20C 8007B60C 44915000 */  mtc1       $s1, $f10
/* 7C210 8007B610 3C01800A */  lui        $at, %hi(D_80099018)
/* 7C214 8007B614 D4289018 */  ldc1       $f8, %lo(D_80099018)($at)
/* 7C218 8007B618 46805121 */  cvt.d.w    $f4, $f10
/* 7C21C 8007B61C 4624A181 */  sub.d      $f6, $f20, $f4
/* 7C220 8007B620 46283502 */  mul.d      $f20, $f6, $f8
/* 7C224 8007B624 00000000 */  nop
.L8007B628:
/* 7C228 8007B628 1A200011 */  blez       $s1, .L8007B670
/* 7C22C 8007B62C 24100008 */   addiu     $s0, $zero, 0x8
/* 7C230 8007B630 24100007 */  addiu      $s0, $zero, 0x7
/* 7C234 8007B634 0600000E */  bltz       $s0, .L8007B670
/* 7C238 8007B638 02402025 */   or        $a0, $s2, $zero
.L8007B63C:
/* 7C23C 8007B63C 02202825 */  or         $a1, $s1, $zero
/* 7C240 8007B640 0C01EF5C */  jal        ldiv
/* 7C244 8007B644 2406000A */   addiu     $a2, $zero, 0xA
/* 7C248 8007B648 8FB80078 */  lw         $t8, 0x78($sp)
/* 7C24C 8007B64C 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 7C250 8007B650 27190030 */  addiu      $t9, $t8, 0x30
/* 7C254 8007B654 A2B90000 */  sb         $t9, 0x0($s5)
/* 7C258 8007B658 8FB10074 */  lw         $s1, 0x74($sp)
/* 7C25C 8007B65C 5A200005 */  blezl      $s1, .L8007B674
/* 7C260 8007B660 44801800 */   mtc1      $zero, $f3
/* 7C264 8007B664 2610FFFF */  addiu      $s0, $s0, -0x1
/* 7C268 8007B668 0603FFF4 */  bgezl      $s0, .L8007B63C
/* 7C26C 8007B66C 02402025 */   or        $a0, $s2, $zero
.L8007B670:
/* 7C270 8007B670 44801800 */  mtc1       $zero, $f3
.L8007B674:
/* 7C274 8007B674 44801000 */  mtc1       $zero, $f2
/* 7C278 8007B678 2610FFFF */  addiu      $s0, $s0, -0x1
/* 7C27C 8007B67C 06000004 */  bltz       $s0, .L8007B690
.L8007B680:
/* 7C280 8007B680 2610FFFF */   addiu     $s0, $s0, -0x1
/* 7C284 8007B684 26B5FFFF */  addiu      $s5, $s5, -0x1
/* 7C288 8007B688 0601FFFD */  bgez       $s0, .L8007B680
/* 7C28C 8007B68C A2B30000 */   sb        $s3, 0x0($s5)
.L8007B690:
/* 7C290 8007B690 1A800005 */  blez       $s4, .L8007B6A8
/* 7C294 8007B694 26B50008 */   addiu     $s5, $s5, 0x8
/* 7C298 8007B698 4634103C */  c.lt.d     $f2, $f20
/* 7C29C 8007B69C 00000000 */  nop
/* 7C2A0 8007B6A0 4503FFD5 */  bc1tl      .L8007B5F8
/* 7C2A4 8007B6A4 4620A20D */   trunc.w.d $f8, $f20
.L8007B6A8:
/* 7C2A8 8007B6A8 87B8009A */  lh         $t8, 0x9A($sp)
.L8007B6AC:
/* 7C2AC 8007B6AC 93AE00B1 */  lbu        $t6, 0xB1($sp)
/* 7C2B0 8007B6B0 27AF00B0 */  addiu      $t7, $sp, 0xB0
/* 7C2B4 8007B6B4 24020030 */  addiu      $v0, $zero, 0x30
/* 7C2B8 8007B6B8 02AFA023 */  subu       $s4, $s5, $t7
/* 7C2BC 8007B6BC 27190007 */  addiu      $t9, $t8, 0x7
/* 7C2C0 8007B6C0 2694FFFF */  addiu      $s4, $s4, -0x1
/* 7C2C4 8007B6C4 A7B9009A */  sh         $t9, 0x9A($sp)
/* 7C2C8 8007B6C8 144E0009 */  bne        $v0, $t6, .L8007B6F0
/* 7C2CC 8007B6CC 27B500B1 */   addiu     $s5, $sp, 0xB1
/* 7C2D0 8007B6D0 87AF009A */  lh         $t7, 0x9A($sp)
.L8007B6D4:
/* 7C2D4 8007B6D4 26B50001 */  addiu      $s5, $s5, 0x1
/* 7C2D8 8007B6D8 2694FFFF */  addiu      $s4, $s4, -0x1
/* 7C2DC 8007B6DC 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 7C2E0 8007B6E0 A7B8009A */  sh         $t8, 0x9A($sp)
/* 7C2E4 8007B6E4 92B90000 */  lbu        $t9, 0x0($s5)
/* 7C2E8 8007B6E8 5059FFFA */  beql       $v0, $t9, .L8007B6D4
/* 7C2EC 8007B6EC 87AF009A */   lh        $t7, 0x9A($sp)
.L8007B6F0:
/* 7C2F0 8007B6F0 8FAE0048 */  lw         $t6, 0x48($sp)
/* 7C2F4 8007B6F4 24010066 */  addiu      $at, $zero, 0x66
/* 7C2F8 8007B6F8 8FB800D0 */  lw         $t8, 0xD0($sp)
/* 7C2FC 8007B6FC 15C10004 */  bne        $t6, $at, .L8007B710
/* 7C300 8007B700 8FAF0048 */   lw        $t7, 0x48($sp)
/* 7C304 8007B704 87A5009A */  lh         $a1, 0x9A($sp)
/* 7C308 8007B708 10000009 */  b          .L8007B730
/* 7C30C 8007B70C 24A50001 */   addiu     $a1, $a1, 0x1
.L8007B710:
/* 7C310 8007B710 24010065 */  addiu      $at, $zero, 0x65
/* 7C314 8007B714 11E10003 */  beq        $t7, $at, .L8007B724
/* 7C318 8007B718 24010045 */   addiu     $at, $zero, 0x45
/* 7C31C 8007B71C 15E10003 */  bne        $t7, $at, .L8007B72C
/* 7C320 8007B720 00001025 */   or        $v0, $zero, $zero
.L8007B724:
/* 7C324 8007B724 10000001 */  b          .L8007B72C
/* 7C328 8007B728 24020001 */   addiu     $v0, $zero, 0x1
.L8007B72C:
/* 7C32C 8007B72C 00402825 */  or         $a1, $v0, $zero
.L8007B730:
/* 7C330 8007B730 8F190024 */  lw         $t9, 0x24($t8)
/* 7C334 8007B734 00B99821 */  addu       $s3, $a1, $t9
/* 7C338 8007B738 00137400 */  sll        $t6, $s3, 16
/* 7C33C 8007B73C 000E9C03 */  sra        $s3, $t6, 16
/* 7C340 8007B740 0293082A */  slt        $at, $s4, $s3
/* 7C344 8007B744 10200004 */  beqz       $at, .L8007B758
/* 7C348 8007B748 00000000 */   nop
/* 7C34C 8007B74C 00149C00 */  sll        $s3, $s4, 16
/* 7C350 8007B750 0013C403 */  sra        $t8, $s3, 16
/* 7C354 8007B754 03009825 */  or         $s3, $t8, $zero
.L8007B758:
/* 7C358 8007B758 1A600025 */  blez       $s3, .L8007B7F0
/* 7C35C 8007B75C 0274082A */   slt       $at, $s3, $s4
/* 7C360 8007B760 10200007 */  beqz       $at, .L8007B780
/* 7C364 8007B764 02751021 */   addu      $v0, $s3, $s5
/* 7C368 8007B768 90590000 */  lbu        $t9, 0x0($v0)
/* 7C36C 8007B76C 2B210035 */  slti       $at, $t9, 0x35
/* 7C370 8007B770 54200004 */  bnel       $at, $zero, .L8007B784
/* 7C374 8007B774 24050030 */   addiu     $a1, $zero, 0x30
/* 7C378 8007B778 10000003 */  b          .L8007B788
/* 7C37C 8007B77C 24050039 */   addiu     $a1, $zero, 0x39
.L8007B780:
/* 7C380 8007B780 24050030 */  addiu      $a1, $zero, 0x30
.L8007B784:
/* 7C384 8007B784 02751021 */  addu       $v0, $s3, $s5
.L8007B788:
/* 7C388 8007B788 904EFFFF */  lbu        $t6, -0x1($v0)
/* 7C38C 8007B78C 2663FFFF */  addiu      $v1, $s3, -0x1
/* 7C390 8007B790 00A02025 */  or         $a0, $a1, $zero
/* 7C394 8007B794 14AE0009 */  bne        $a1, $t6, .L8007B7BC
/* 7C398 8007B798 24010039 */   addiu     $at, $zero, 0x39
/* 7C39C 8007B79C 00751021 */  addu       $v0, $v1, $s5
.L8007B7A0:
/* 7C3A0 8007B7A0 9059FFFF */  lbu        $t9, -0x1($v0)
/* 7C3A4 8007B7A4 2673FFFF */  addiu      $s3, $s3, -0x1
/* 7C3A8 8007B7A8 00137C00 */  sll        $t7, $s3, 16
/* 7C3AC 8007B7AC 2463FFFF */  addiu      $v1, $v1, -0x1
/* 7C3B0 8007B7B0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 7C3B4 8007B7B4 1099FFFA */  beq        $a0, $t9, .L8007B7A0
/* 7C3B8 8007B7B8 000F9C03 */   sra       $s3, $t7, 16
.L8007B7BC:
/* 7C3BC 8007B7BC 14810004 */  bne        $a0, $at, .L8007B7D0
/* 7C3C0 8007B7C0 02A31021 */   addu      $v0, $s5, $v1
/* 7C3C4 8007B7C4 904E0000 */  lbu        $t6, 0x0($v0)
/* 7C3C8 8007B7C8 25CF0001 */  addiu      $t7, $t6, 0x1
/* 7C3CC 8007B7CC A04F0000 */  sb         $t7, 0x0($v0)
.L8007B7D0:
/* 7C3D0 8007B7D0 04610007 */  bgez       $v1, .L8007B7F0
/* 7C3D4 8007B7D4 87AE009A */   lh        $t6, 0x9A($sp)
/* 7C3D8 8007B7D8 26730001 */  addiu      $s3, $s3, 0x1
/* 7C3DC 8007B7DC 0013C400 */  sll        $t8, $s3, 16
/* 7C3E0 8007B7E0 25CF0001 */  addiu      $t7, $t6, 0x1
/* 7C3E4 8007B7E4 A7AF009A */  sh         $t7, 0x9A($sp)
/* 7C3E8 8007B7E8 00189C03 */  sra        $s3, $t8, 16
/* 7C3EC 8007B7EC 26B5FFFF */  addiu      $s5, $s5, -0x1
.L8007B7F0:
/* 7C3F0 8007B7F0 8FB000D0 */  lw         $s0, 0xD0($sp)
/* 7C3F4 8007B7F4 93B400D7 */  lbu        $s4, 0xD7($sp)
/* 7C3F8 8007B7F8 02A08825 */  or         $s1, $s5, $zero
/* 7C3FC 8007B7FC 0C01EB5C */  jal        func_8007AD70
/* 7C400 8007B800 87B2009A */   lh        $s2, 0x9A($sp)
/* 7C404 8007B804 8FBF003C */  lw         $ra, 0x3C($sp)
.L8007B808:
/* 7C408 8007B808 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 7C40C 8007B80C 8FB00024 */  lw         $s0, 0x24($sp)
/* 7C410 8007B810 8FB10028 */  lw         $s1, 0x28($sp)
/* 7C414 8007B814 8FB2002C */  lw         $s2, 0x2C($sp)
/* 7C418 8007B818 8FB30030 */  lw         $s3, 0x30($sp)
/* 7C41C 8007B81C 8FB40034 */  lw         $s4, 0x34($sp)
/* 7C420 8007B820 8FB50038 */  lw         $s5, 0x38($sp)
/* 7C424 8007B824 03E00008 */  jr         $ra
/* 7C428 8007B828 27BD00D0 */   addiu     $sp, $sp, 0xD0
/* 7C42C 8007B82C 00000000 */  nop

# Handwritten function
glabel func_8007B830
/* 7C430 8007B830 40845800 */  mtc0       $a0, $11
/* 7C434 8007B834 03E00008 */  jr         $ra
/* 7C438 8007B838 00000000 */   nop
/* 7C43C 8007B83C 00000000 */  nop

glabel func_8007B840
/* 7C440 8007B840 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C444 8007B844 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7C448 8007B848 AFA40028 */  sw         $a0, 0x28($sp)
/* 7C44C 8007B84C 0C01C218 */  jal        __osDisableInt
/* 7C450 8007B850 AFB00018 */   sw        $s0, 0x18($sp)
/* 7C454 8007B854 8FAF0028 */  lw         $t7, 0x28($sp)
/* 7C458 8007B858 3C0E8009 */  lui        $t6, %hi(__OSGlobalIntMask)
/* 7C45C 8007B85C 8DCE4830 */  lw         $t6, %lo(__OSGlobalIntMask)($t6)
/* 7C460 8007B860 2401FBFE */  addiu      $at, $zero, -0x402
/* 7C464 8007B864 01E1C024 */  and        $t8, $t7, $at
/* 7C468 8007B868 0300C827 */  not        $t9, $t8
/* 7C46C 8007B86C 00408025 */  or         $s0, $v0, $zero
/* 7C470 8007B870 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7C474 8007B874 01D94024 */  and        $t0, $t6, $t9
/* 7C478 8007B878 AC284830 */  sw         $t0, %lo(__OSGlobalIntMask)($at)
/* 7C47C 8007B87C 0C01C220 */  jal        __osRestoreInt
/* 7C480 8007B880 02002025 */   or        $a0, $s0, $zero
/* 7C484 8007B884 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7C488 8007B888 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C48C 8007B88C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7C490 8007B890 03E00008 */  jr         $ra
/* 7C494 8007B894 00000000 */   nop
/* 7C498 8007B898 00000000 */  nop
/* 7C49C 8007B89C 00000000 */  nop

glabel func_8007B8A0
/* 7C4A0 8007B8A0 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 7C4A4 8007B8A4 8DC70010 */  lw         $a3, %lo(D_A4600010)($t6)
/* 7C4A8 8007B8A8 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 7C4AC 8007B8AC 30EF0003 */  andi       $t7, $a3, 0x3
/* 7C4B0 8007B8B0 11E00006 */  beqz       $t7, .L8007B8CC
/* 7C4B4 8007B8B4 00000000 */   nop
.L8007B8B8:
/* 7C4B8 8007B8B8 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 7C4BC 8007B8BC 8F070010 */  lw         $a3, %lo(D_A4600010)($t8)
/* 7C4C0 8007B8C0 30F90003 */  andi       $t9, $a3, 0x3
/* 7C4C4 8007B8C4 1720FFFC */  bnez       $t9, .L8007B8B8
/* 7C4C8 8007B8C8 00000000 */   nop
.L8007B8CC:
/* 7C4CC 8007B8CC 90880009 */  lbu        $t0, 0x9($a0)
/* 7C4D0 8007B8D0 3C0A8009 */  lui        $t2, %hi(__osCurrentHandle)
/* 7C4D4 8007B8D4 254A4860 */  addiu      $t2, $t2, %lo(__osCurrentHandle)
/* 7C4D8 8007B8D8 00084880 */  sll        $t1, $t0, 2
/* 7C4DC 8007B8DC 012A5821 */  addu       $t3, $t1, $t2
/* 7C4E0 8007B8E0 8D6C0000 */  lw         $t4, 0x0($t3)
/* 7C4E4 8007B8E4 1184004A */  beq        $t4, $a0, .L8007BA10
/* 7C4E8 8007B8E8 00000000 */   nop
/* 7C4EC 8007B8EC 00086880 */  sll        $t5, $t0, 2
/* 7C4F0 8007B8F0 01AA7021 */  addu       $t6, $t5, $t2
/* 7C4F4 8007B8F4 8DCF0000 */  lw         $t7, 0x0($t6)
/* 7C4F8 8007B8F8 15000021 */  bnez       $t0, .L8007B980
/* 7C4FC 8007B8FC AFAF0004 */   sw        $t7, 0x4($sp)
/* 7C500 8007B900 91F80005 */  lbu        $t8, 0x5($t7)
/* 7C504 8007B904 90990005 */  lbu        $t9, 0x5($a0)
/* 7C508 8007B908 13190004 */  beq        $t8, $t9, .L8007B91C
/* 7C50C 8007B90C 00000000 */   nop
/* 7C510 8007B910 90890005 */  lbu        $t1, 0x5($a0)
/* 7C514 8007B914 3C0BA460 */  lui        $t3, %hi(D_A4600014)
/* 7C518 8007B918 AD690014 */  sw         $t1, %lo(D_A4600014)($t3)
.L8007B91C:
/* 7C51C 8007B91C 8FAC0004 */  lw         $t4, 0x4($sp)
/* 7C520 8007B920 908A0006 */  lbu        $t2, 0x6($a0)
/* 7C524 8007B924 918D0006 */  lbu        $t5, 0x6($t4)
/* 7C528 8007B928 11AA0004 */  beq        $t5, $t2, .L8007B93C
/* 7C52C 8007B92C 00000000 */   nop
/* 7C530 8007B930 908E0006 */  lbu        $t6, 0x6($a0)
/* 7C534 8007B934 3C0FA460 */  lui        $t7, %hi(D_A460001C)
/* 7C538 8007B938 ADEE001C */  sw         $t6, %lo(D_A460001C)($t7)
.L8007B93C:
/* 7C53C 8007B93C 8FB80004 */  lw         $t8, 0x4($sp)
/* 7C540 8007B940 90890007 */  lbu        $t1, 0x7($a0)
/* 7C544 8007B944 93190007 */  lbu        $t9, 0x7($t8)
/* 7C548 8007B948 13290004 */  beq        $t9, $t1, .L8007B95C
/* 7C54C 8007B94C 00000000 */   nop
/* 7C550 8007B950 908B0007 */  lbu        $t3, 0x7($a0)
/* 7C554 8007B954 3C0CA460 */  lui        $t4, %hi(D_A4600020)
/* 7C558 8007B958 AD8B0020 */  sw         $t3, %lo(D_A4600020)($t4)
.L8007B95C:
/* 7C55C 8007B95C 8FAD0004 */  lw         $t5, 0x4($sp)
/* 7C560 8007B960 908E0008 */  lbu        $t6, 0x8($a0)
/* 7C564 8007B964 91AA0008 */  lbu        $t2, 0x8($t5)
/* 7C568 8007B968 114E0025 */  beq        $t2, $t6, .L8007BA00
/* 7C56C 8007B96C 00000000 */   nop
/* 7C570 8007B970 908F0008 */  lbu        $t7, 0x8($a0)
/* 7C574 8007B974 3C18A460 */  lui        $t8, %hi(D_A4600018)
/* 7C578 8007B978 10000021 */  b          .L8007BA00
/* 7C57C 8007B97C AF0F0018 */   sw        $t7, %lo(D_A4600018)($t8)
.L8007B980:
/* 7C580 8007B980 8FB90004 */  lw         $t9, 0x4($sp)
/* 7C584 8007B984 908B0005 */  lbu        $t3, 0x5($a0)
/* 7C588 8007B988 93290005 */  lbu        $t1, 0x5($t9)
/* 7C58C 8007B98C 112B0004 */  beq        $t1, $t3, .L8007B9A0
/* 7C590 8007B990 00000000 */   nop
/* 7C594 8007B994 908C0005 */  lbu        $t4, 0x5($a0)
/* 7C598 8007B998 3C0DA460 */  lui        $t5, %hi(D_A4600024)
/* 7C59C 8007B99C ADAC0024 */  sw         $t4, %lo(D_A4600024)($t5)
.L8007B9A0:
/* 7C5A0 8007B9A0 8FAA0004 */  lw         $t2, 0x4($sp)
/* 7C5A4 8007B9A4 908F0006 */  lbu        $t7, 0x6($a0)
/* 7C5A8 8007B9A8 914E0006 */  lbu        $t6, 0x6($t2)
/* 7C5AC 8007B9AC 11CF0004 */  beq        $t6, $t7, .L8007B9C0
/* 7C5B0 8007B9B0 00000000 */   nop
/* 7C5B4 8007B9B4 90980006 */  lbu        $t8, 0x6($a0)
/* 7C5B8 8007B9B8 3C19A460 */  lui        $t9, %hi(D_A460002C)
/* 7C5BC 8007B9BC AF38002C */  sw         $t8, %lo(D_A460002C)($t9)
.L8007B9C0:
/* 7C5C0 8007B9C0 8FA90004 */  lw         $t1, 0x4($sp)
/* 7C5C4 8007B9C4 908C0007 */  lbu        $t4, 0x7($a0)
/* 7C5C8 8007B9C8 912B0007 */  lbu        $t3, 0x7($t1)
/* 7C5CC 8007B9CC 116C0004 */  beq        $t3, $t4, .L8007B9E0
/* 7C5D0 8007B9D0 00000000 */   nop
/* 7C5D4 8007B9D4 908D0007 */  lbu        $t5, 0x7($a0)
/* 7C5D8 8007B9D8 3C0AA460 */  lui        $t2, %hi(D_A4600030)
/* 7C5DC 8007B9DC AD4D0030 */  sw         $t5, %lo(D_A4600030)($t2)
.L8007B9E0:
/* 7C5E0 8007B9E0 8FAE0004 */  lw         $t6, 0x4($sp)
/* 7C5E4 8007B9E4 90980008 */  lbu        $t8, 0x8($a0)
/* 7C5E8 8007B9E8 91CF0008 */  lbu        $t7, 0x8($t6)
/* 7C5EC 8007B9EC 11F80004 */  beq        $t7, $t8, .L8007BA00
/* 7C5F0 8007B9F0 00000000 */   nop
/* 7C5F4 8007B9F4 90990008 */  lbu        $t9, 0x8($a0)
/* 7C5F8 8007B9F8 3C09A460 */  lui        $t1, %hi(D_A4600028)
/* 7C5FC 8007B9FC AD390028 */  sw         $t9, %lo(D_A4600028)($t1)
.L8007BA00:
/* 7C600 8007BA00 00085880 */  sll        $t3, $t0, 2
/* 7C604 8007BA04 3C018009 */  lui        $at, %hi(__osCurrentHandle)
/* 7C608 8007BA08 002B0821 */  addu       $at, $at, $t3
/* 7C60C 8007BA0C AC244860 */  sw         $a0, %lo(__osCurrentHandle)($at)
.L8007BA10:
/* 7C610 8007BA10 8C8C000C */  lw         $t4, 0xC($a0)
/* 7C614 8007BA14 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 7C618 8007BA18 27BD0010 */  addiu      $sp, $sp, 0x10
/* 7C61C 8007BA1C 01856825 */  or         $t5, $t4, $a1
/* 7C620 8007BA20 01A15025 */  or         $t2, $t5, $at
/* 7C624 8007BA24 AD460000 */  sw         $a2, %lo(D_A0000000)($t2)
/* 7C628 8007BA28 03E00008 */  jr         $ra
/* 7C62C 8007BA2C 00001025 */   or        $v0, $zero, $zero

glabel func_8007BA30
/* 7C630 8007BA30 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 7C634 8007BA34 8DC70010 */  lw         $a3, %lo(D_A4600010)($t6)
/* 7C638 8007BA38 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 7C63C 8007BA3C 30EF0003 */  andi       $t7, $a3, 0x3
/* 7C640 8007BA40 11E00006 */  beqz       $t7, .L8007BA5C
/* 7C644 8007BA44 00000000 */   nop
.L8007BA48:
/* 7C648 8007BA48 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 7C64C 8007BA4C 8F070010 */  lw         $a3, %lo(D_A4600010)($t8)
/* 7C650 8007BA50 30F90003 */  andi       $t9, $a3, 0x3
/* 7C654 8007BA54 1720FFFC */  bnez       $t9, .L8007BA48
/* 7C658 8007BA58 00000000 */   nop
.L8007BA5C:
/* 7C65C 8007BA5C 90880009 */  lbu        $t0, 0x9($a0)
/* 7C660 8007BA60 3C0A8009 */  lui        $t2, %hi(__osCurrentHandle)
/* 7C664 8007BA64 254A4860 */  addiu      $t2, $t2, %lo(__osCurrentHandle)
/* 7C668 8007BA68 00084880 */  sll        $t1, $t0, 2
/* 7C66C 8007BA6C 012A5821 */  addu       $t3, $t1, $t2
/* 7C670 8007BA70 8D6C0000 */  lw         $t4, 0x0($t3)
/* 7C674 8007BA74 1184004A */  beq        $t4, $a0, .L8007BBA0
/* 7C678 8007BA78 00000000 */   nop
/* 7C67C 8007BA7C 00086880 */  sll        $t5, $t0, 2
/* 7C680 8007BA80 01AA7021 */  addu       $t6, $t5, $t2
/* 7C684 8007BA84 8DCF0000 */  lw         $t7, 0x0($t6)
/* 7C688 8007BA88 15000021 */  bnez       $t0, .L8007BB10
/* 7C68C 8007BA8C AFAF0004 */   sw        $t7, 0x4($sp)
/* 7C690 8007BA90 91F80005 */  lbu        $t8, 0x5($t7)
/* 7C694 8007BA94 90990005 */  lbu        $t9, 0x5($a0)
/* 7C698 8007BA98 13190004 */  beq        $t8, $t9, .L8007BAAC
/* 7C69C 8007BA9C 00000000 */   nop
/* 7C6A0 8007BAA0 90890005 */  lbu        $t1, 0x5($a0)
/* 7C6A4 8007BAA4 3C0BA460 */  lui        $t3, %hi(D_A4600014)
/* 7C6A8 8007BAA8 AD690014 */  sw         $t1, %lo(D_A4600014)($t3)
.L8007BAAC:
/* 7C6AC 8007BAAC 8FAC0004 */  lw         $t4, 0x4($sp)
/* 7C6B0 8007BAB0 908A0006 */  lbu        $t2, 0x6($a0)
/* 7C6B4 8007BAB4 918D0006 */  lbu        $t5, 0x6($t4)
/* 7C6B8 8007BAB8 11AA0004 */  beq        $t5, $t2, .L8007BACC
/* 7C6BC 8007BABC 00000000 */   nop
/* 7C6C0 8007BAC0 908E0006 */  lbu        $t6, 0x6($a0)
/* 7C6C4 8007BAC4 3C0FA460 */  lui        $t7, %hi(D_A460001C)
/* 7C6C8 8007BAC8 ADEE001C */  sw         $t6, %lo(D_A460001C)($t7)
.L8007BACC:
/* 7C6CC 8007BACC 8FB80004 */  lw         $t8, 0x4($sp)
/* 7C6D0 8007BAD0 90890007 */  lbu        $t1, 0x7($a0)
/* 7C6D4 8007BAD4 93190007 */  lbu        $t9, 0x7($t8)
/* 7C6D8 8007BAD8 13290004 */  beq        $t9, $t1, .L8007BAEC
/* 7C6DC 8007BADC 00000000 */   nop
/* 7C6E0 8007BAE0 908B0007 */  lbu        $t3, 0x7($a0)
/* 7C6E4 8007BAE4 3C0CA460 */  lui        $t4, %hi(D_A4600020)
/* 7C6E8 8007BAE8 AD8B0020 */  sw         $t3, %lo(D_A4600020)($t4)
.L8007BAEC:
/* 7C6EC 8007BAEC 8FAD0004 */  lw         $t5, 0x4($sp)
/* 7C6F0 8007BAF0 908E0008 */  lbu        $t6, 0x8($a0)
/* 7C6F4 8007BAF4 91AA0008 */  lbu        $t2, 0x8($t5)
/* 7C6F8 8007BAF8 114E0025 */  beq        $t2, $t6, .L8007BB90
/* 7C6FC 8007BAFC 00000000 */   nop
/* 7C700 8007BB00 908F0008 */  lbu        $t7, 0x8($a0)
/* 7C704 8007BB04 3C18A460 */  lui        $t8, %hi(D_A4600018)
/* 7C708 8007BB08 10000021 */  b          .L8007BB90
/* 7C70C 8007BB0C AF0F0018 */   sw        $t7, %lo(D_A4600018)($t8)
.L8007BB10:
/* 7C710 8007BB10 8FB90004 */  lw         $t9, 0x4($sp)
/* 7C714 8007BB14 908B0005 */  lbu        $t3, 0x5($a0)
/* 7C718 8007BB18 93290005 */  lbu        $t1, 0x5($t9)
/* 7C71C 8007BB1C 112B0004 */  beq        $t1, $t3, .L8007BB30
/* 7C720 8007BB20 00000000 */   nop
/* 7C724 8007BB24 908C0005 */  lbu        $t4, 0x5($a0)
/* 7C728 8007BB28 3C0DA460 */  lui        $t5, %hi(D_A4600024)
/* 7C72C 8007BB2C ADAC0024 */  sw         $t4, %lo(D_A4600024)($t5)
.L8007BB30:
/* 7C730 8007BB30 8FAA0004 */  lw         $t2, 0x4($sp)
/* 7C734 8007BB34 908F0006 */  lbu        $t7, 0x6($a0)
/* 7C738 8007BB38 914E0006 */  lbu        $t6, 0x6($t2)
/* 7C73C 8007BB3C 11CF0004 */  beq        $t6, $t7, .L8007BB50
/* 7C740 8007BB40 00000000 */   nop
/* 7C744 8007BB44 90980006 */  lbu        $t8, 0x6($a0)
/* 7C748 8007BB48 3C19A460 */  lui        $t9, %hi(D_A460002C)
/* 7C74C 8007BB4C AF38002C */  sw         $t8, %lo(D_A460002C)($t9)
.L8007BB50:
/* 7C750 8007BB50 8FA90004 */  lw         $t1, 0x4($sp)
/* 7C754 8007BB54 908C0007 */  lbu        $t4, 0x7($a0)
/* 7C758 8007BB58 912B0007 */  lbu        $t3, 0x7($t1)
/* 7C75C 8007BB5C 116C0004 */  beq        $t3, $t4, .L8007BB70
/* 7C760 8007BB60 00000000 */   nop
/* 7C764 8007BB64 908D0007 */  lbu        $t5, 0x7($a0)
/* 7C768 8007BB68 3C0AA460 */  lui        $t2, %hi(D_A4600030)
/* 7C76C 8007BB6C AD4D0030 */  sw         $t5, %lo(D_A4600030)($t2)
.L8007BB70:
/* 7C770 8007BB70 8FAE0004 */  lw         $t6, 0x4($sp)
/* 7C774 8007BB74 90980008 */  lbu        $t8, 0x8($a0)
/* 7C778 8007BB78 91CF0008 */  lbu        $t7, 0x8($t6)
/* 7C77C 8007BB7C 11F80004 */  beq        $t7, $t8, .L8007BB90
/* 7C780 8007BB80 00000000 */   nop
/* 7C784 8007BB84 90990008 */  lbu        $t9, 0x8($a0)
/* 7C788 8007BB88 3C09A460 */  lui        $t1, %hi(D_A4600028)
/* 7C78C 8007BB8C AD390028 */  sw         $t9, %lo(D_A4600028)($t1)
.L8007BB90:
/* 7C790 8007BB90 00085880 */  sll        $t3, $t0, 2
/* 7C794 8007BB94 3C018009 */  lui        $at, %hi(__osCurrentHandle)
/* 7C798 8007BB98 002B0821 */  addu       $at, $at, $t3
/* 7C79C 8007BB9C AC244860 */  sw         $a0, %lo(__osCurrentHandle)($at)
.L8007BBA0:
/* 7C7A0 8007BBA0 8C8C000C */  lw         $t4, 0xC($a0)
/* 7C7A4 8007BBA4 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 7C7A8 8007BBA8 00001025 */  or         $v0, $zero, $zero
/* 7C7AC 8007BBAC 01856825 */  or         $t5, $t4, $a1
/* 7C7B0 8007BBB0 01A15025 */  or         $t2, $t5, $at
/* 7C7B4 8007BBB4 8D4E0000 */  lw         $t6, %lo(D_A0000000)($t2)
/* 7C7B8 8007BBB8 27BD0010 */  addiu      $sp, $sp, 0x10
/* 7C7BC 8007BBBC 03E00008 */  jr         $ra
/* 7C7C0 8007BBC0 ACCE0000 */   sw        $t6, 0x0($a2)
/* 7C7C4 8007BBC4 00000000 */  nop
/* 7C7C8 8007BBC8 00000000 */  nop
/* 7C7CC 8007BBCC 00000000 */  nop

glabel __osSetGlobalIntMask
/* 7C7D0 8007BBD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C7D4 8007BBD4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7C7D8 8007BBD8 AFA40028 */  sw         $a0, 0x28($sp)
/* 7C7DC 8007BBDC 0C01C218 */  jal        __osDisableInt
/* 7C7E0 8007BBE0 AFB00018 */   sw        $s0, 0x18($sp)
/* 7C7E4 8007BBE4 3C0E8009 */  lui        $t6, %hi(__OSGlobalIntMask)
/* 7C7E8 8007BBE8 8DCE4830 */  lw         $t6, %lo(__OSGlobalIntMask)($t6)
/* 7C7EC 8007BBEC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 7C7F0 8007BBF0 00408025 */  or         $s0, $v0, $zero
/* 7C7F4 8007BBF4 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7C7F8 8007BBF8 01CFC025 */  or         $t8, $t6, $t7
/* 7C7FC 8007BBFC AC384830 */  sw         $t8, %lo(__OSGlobalIntMask)($at)
/* 7C800 8007BC00 0C01C220 */  jal        __osRestoreInt
/* 7C804 8007BC04 02002025 */   or        $a0, $s0, $zero
/* 7C808 8007BC08 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7C80C 8007BC0C 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C810 8007BC10 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7C814 8007BC14 03E00008 */  jr         $ra
/* 7C818 8007BC18 00000000 */   nop
/* 7C81C 8007BC1C 00000000 */  nop

glabel osYieldThread
/* 7C820 8007BC20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C824 8007BC24 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7C828 8007BC28 0C01C218 */  jal        __osDisableInt
/* 7C82C 8007BC2C AFB00018 */   sw        $s0, 0x18($sp)
/* 7C830 8007BC30 3C0F8009 */  lui        $t7, %hi(D_80094880)
/* 7C834 8007BC34 8DEF4880 */  lw         $t7, %lo(D_80094880)($t7)
/* 7C838 8007BC38 240E0002 */  addiu      $t6, $zero, 0x2
/* 7C83C 8007BC3C 3C048009 */  lui        $a0, %hi(D_80094878)
/* 7C840 8007BC40 00408025 */  or         $s0, $v0, $zero
/* 7C844 8007BC44 24844878 */  addiu      $a0, $a0, %lo(D_80094878)
/* 7C848 8007BC48 0C01C3B3 */  jal        func_80070ECC
/* 7C84C 8007BC4C A5EE0010 */   sh        $t6, 0x10($t7)
/* 7C850 8007BC50 0C01C220 */  jal        __osRestoreInt
/* 7C854 8007BC54 02002025 */   or        $a0, $s0, $zero
/* 7C858 8007BC58 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7C85C 8007BC5C 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C860 8007BC60 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7C864 8007BC64 03E00008 */  jr         $ra
/* 7C868 8007BC68 00000000 */   nop
/* 7C86C 8007BC6C 00000000 */  nop

glabel lldiv
/* 7C870 8007BC70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7C874 8007BC74 AFA40030 */  sw         $a0, 0x30($sp)
/* 7C878 8007BC78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C87C 8007BC7C AFA60038 */  sw         $a2, 0x38($sp)
/* 7C880 8007BC80 AFA7003C */  sw         $a3, 0x3C($sp)
/* 7C884 8007BC84 00C02025 */  or         $a0, $a2, $zero
/* 7C888 8007BC88 00E02825 */  or         $a1, $a3, $zero
/* 7C88C 8007BC8C 8FA70044 */  lw         $a3, 0x44($sp)
/* 7C890 8007BC90 0C01B193 */  jal        func_8006C64C
/* 7C894 8007BC94 8FA60040 */   lw        $a2, 0x40($sp)
/* 7C898 8007BC98 AFA20020 */  sw         $v0, 0x20($sp)
/* 7C89C 8007BC9C AFA30024 */  sw         $v1, 0x24($sp)
/* 7C8A0 8007BCA0 8FA40040 */  lw         $a0, 0x40($sp)
/* 7C8A4 8007BCA4 8FA50044 */  lw         $a1, 0x44($sp)
/* 7C8A8 8007BCA8 00403025 */  or         $a2, $v0, $zero
/* 7C8AC 8007BCAC 0C01B1AA */  jal        func_8006C6A8
/* 7C8B0 8007BCB0 00603825 */   or        $a3, $v1, $zero
/* 7C8B4 8007BCB4 8FAE0038 */  lw         $t6, 0x38($sp)
/* 7C8B8 8007BCB8 8FAF003C */  lw         $t7, 0x3C($sp)
/* 7C8BC 8007BCBC 8FA80020 */  lw         $t0, 0x20($sp)
/* 7C8C0 8007BCC0 01C2C023 */  subu       $t8, $t6, $v0
/* 7C8C4 8007BCC4 01E3082B */  sltu       $at, $t7, $v1
/* 7C8C8 8007BCC8 0301C023 */  subu       $t8, $t8, $at
/* 7C8CC 8007BCCC 01E3C823 */  subu       $t9, $t7, $v1
/* 7C8D0 8007BCD0 AFB9002C */  sw         $t9, 0x2C($sp)
/* 7C8D4 8007BCD4 AFB80028 */  sw         $t8, 0x28($sp)
/* 7C8D8 8007BCD8 1D000017 */  bgtz       $t0, .L8007BD38
/* 7C8DC 8007BCDC 8FA90024 */   lw        $t1, 0x24($sp)
/* 7C8E0 8007BCE0 05000003 */  bltz       $t0, .L8007BCF0
/* 7C8E4 8007BCE4 00000000 */   nop
/* 7C8E8 8007BCE8 10000014 */  b          .L8007BD3C
/* 7C8EC 8007BCEC 27A80020 */   addiu     $t0, $sp, 0x20
.L8007BCF0:
/* 7C8F0 8007BCF0 07020012 */  bltzl      $t8, .L8007BD3C
/* 7C8F4 8007BCF4 27A80020 */   addiu     $t0, $sp, 0x20
/* 7C8F8 8007BCF8 1F000003 */  bgtz       $t8, .L8007BD08
/* 7C8FC 8007BCFC 252B0001 */   addiu     $t3, $t1, 0x1
/* 7C900 8007BD00 5320000E */  beql       $t9, $zero, .L8007BD3C
/* 7C904 8007BD04 27A80020 */   addiu     $t0, $sp, 0x20
.L8007BD08:
/* 7C908 8007BD08 8FAC0040 */  lw         $t4, 0x40($sp)
/* 7C90C 8007BD0C 8FAD0044 */  lw         $t5, 0x44($sp)
/* 7C910 8007BD10 2D610001 */  sltiu      $at, $t3, 0x1
/* 7C914 8007BD14 01015021 */  addu       $t2, $t0, $at
/* 7C918 8007BD18 030C7023 */  subu       $t6, $t8, $t4
/* 7C91C 8007BD1C 032D082B */  sltu       $at, $t9, $t5
/* 7C920 8007BD20 01C17023 */  subu       $t6, $t6, $at
/* 7C924 8007BD24 032D7823 */  subu       $t7, $t9, $t5
/* 7C928 8007BD28 AFAA0020 */  sw         $t2, 0x20($sp)
/* 7C92C 8007BD2C AFAB0024 */  sw         $t3, 0x24($sp)
/* 7C930 8007BD30 AFAF002C */  sw         $t7, 0x2C($sp)
/* 7C934 8007BD34 AFAE0028 */  sw         $t6, 0x28($sp)
.L8007BD38:
/* 7C938 8007BD38 27A80020 */  addiu      $t0, $sp, 0x20
.L8007BD3C:
/* 7C93C 8007BD3C 8FA20030 */  lw         $v0, 0x30($sp)
/* 7C940 8007BD40 8D010000 */  lw         $at, 0x0($t0)
/* 7C944 8007BD44 AC410000 */  sw         $at, 0x0($v0)
/* 7C948 8007BD48 8D0B0004 */  lw         $t3, 0x4($t0)
/* 7C94C 8007BD4C AC4B0004 */  sw         $t3, 0x4($v0)
/* 7C950 8007BD50 8D010008 */  lw         $at, 0x8($t0)
/* 7C954 8007BD54 AC410008 */  sw         $at, 0x8($v0)
/* 7C958 8007BD58 8D0B000C */  lw         $t3, 0xC($t0)
/* 7C95C 8007BD5C AC4B000C */  sw         $t3, 0xC($v0)
/* 7C960 8007BD60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C964 8007BD64 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7C968 8007BD68 03E00008 */  jr         $ra
/* 7C96C 8007BD6C 00000000 */   nop

glabel ldiv
/* 7C970 8007BD70 00A6001A */  div        $zero, $a1, $a2
/* 7C974 8007BD74 00001012 */  mflo       $v0
/* 7C978 8007BD78 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7C97C 8007BD7C 14C00002 */  bnez       $a2, .L8007BD88
/* 7C980 8007BD80 00000000 */   nop
/* 7C984 8007BD84 0007000D */  break      7
.L8007BD88:
/* 7C988 8007BD88 2401FFFF */  addiu      $at, $zero, -0x1
/* 7C98C 8007BD8C 14C10004 */  bne        $a2, $at, .L8007BDA0
/* 7C990 8007BD90 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7C994 8007BD94 14A10002 */  bne        $a1, $at, .L8007BDA0
/* 7C998 8007BD98 00000000 */   nop
/* 7C99C 8007BD9C 0006000D */  break      6
.L8007BDA0:
/* 7C9A0 8007BDA0 00C20019 */  multu      $a2, $v0
/* 7C9A4 8007BDA4 AFA20000 */  sw         $v0, 0x0($sp)
/* 7C9A8 8007BDA8 27AF0000 */  addiu      $t7, $sp, 0x0
/* 7C9AC 8007BDAC 00007012 */  mflo       $t6
/* 7C9B0 8007BDB0 00AE1823 */  subu       $v1, $a1, $t6
/* 7C9B4 8007BDB4 04410008 */  bgez       $v0, .L8007BDD8
/* 7C9B8 8007BDB8 AFA30004 */   sw        $v1, 0x4($sp)
/* 7C9BC 8007BDBC AFA20000 */  sw         $v0, 0x0($sp)
/* 7C9C0 8007BDC0 18600005 */  blez       $v1, .L8007BDD8
/* 7C9C4 8007BDC4 AFA30004 */   sw        $v1, 0x4($sp)
/* 7C9C8 8007BDC8 24420001 */  addiu      $v0, $v0, 0x1
/* 7C9CC 8007BDCC 00661823 */  subu       $v1, $v1, $a2
/* 7C9D0 8007BDD0 AFA30004 */  sw         $v1, 0x4($sp)
/* 7C9D4 8007BDD4 AFA20000 */  sw         $v0, 0x0($sp)
.L8007BDD8:
/* 7C9D8 8007BDD8 8DE10000 */  lw         $at, 0x0($t7)
/* 7C9DC 8007BDDC 00801025 */  or         $v0, $a0, $zero
/* 7C9E0 8007BDE0 AC810000 */  sw         $at, 0x0($a0)
/* 7C9E4 8007BDE4 8DE80004 */  lw         $t0, 0x4($t7)
/* 7C9E8 8007BDE8 27BD0008 */  addiu      $sp, $sp, 0x8
/* 7C9EC 8007BDEC 03E00008 */  jr         $ra
/* 7C9F0 8007BDF0 AC880004 */   sw        $t0, 0x4($a0)
/* 7C9F4 8007BDF4 00000000 */  nop
/* 7C9F8 8007BDF8 00000000 */  nop
/* 7C9FC 8007BDFC 00000000 */  nop

# Handwritten function
glabel func_8007BE00
/* 7CA00 8007BE00 09000419 */  j          func_84001064
/* 7CA04 8007BE04 20010FC0 */   addi      $at, $zero, 0xFC0

# Handwritten function
glabel func_8007BE08
/* 7CA08 8007BE08 8C220010 */  lw         $v0, 0x10($at)
/* 7CA0C 8007BE0C 20030F7F */  addi       $v1, $zero, 0xF7F
/* 7CA10 8007BE10 20071080 */  addi       $a3, $zero, 0x1080
/* 7CA14 8007BE14 40870000 */  mtc0       $a3, $0
/* 7CA18 8007BE18 40820800 */  mtc0       $v0, $1
/* 7CA1C 8007BE1C 40831000 */  mtc0       $v1, $2
.L8007BE20:
/* 7CA20 8007BE20 40043000 */  mfc0       $a0, $6
/* 7CA24 8007BE24 1480FFFE */  bnez       $a0, .L8007BE20
/* 7CA28 8007BE28 00000000 */   nop
/* 7CA2C 8007BE2C 0D00040F */  jal        func_8400103C
/* 7CA30 8007BE30 00000000 */   nop
/* 7CA34 8007BE34 00E00008 */  jr         $a3
/* 7CA38 8007BE38 40803800 */   mtc0      $zero, $7
.L8007BE3C:
/* 7CA3C 8007BE3C 40082000 */  mfc0       $t0, $4
/* 7CA40 8007BE40 31080080 */  andi       $t0, $t0, 0x80
/* 7CA44 8007BE44 15000002 */  bnez       $t0, .L8007BE50
/* 7CA48 8007BE48 00000000 */   nop
/* 7CA4C 8007BE4C 03E00008 */  jr         $ra
.L8007BE50:
/* 7CA50 8007BE50 40803800 */   mtc0      $zero, $7
/* 7CA54 8007BE54 34085200 */  ori        $t0, $zero, 0x5200
/* 7CA58 8007BE58 40882000 */  mtc0       $t0, $4
/* 7CA5C 8007BE5C 0000000D */  break      0
/* 7CA60 8007BE60 00000000 */  nop
/* 7CA64 8007BE64 8C220004 */  lw         $v0, 0x4($at)
/* 7CA68 8007BE68 30420002 */  andi       $v0, $v0, 0x2
/* 7CA6C 8007BE6C 10400007 */  beqz       $v0, .L8007BE8C
/* 7CA70 8007BE70 00000000 */   nop
/* 7CA74 8007BE74 0D00040F */  jal        func_8400103C
/* 7CA78 8007BE78 00000000 */   nop
/* 7CA7C 8007BE7C 40025800 */  mfc0       $v0, $11
/* 7CA80 8007BE80 30420100 */  andi       $v0, $v0, 0x100
/* 7CA84 8007BE84 1C40FFED */  bgtz       $v0, .L8007BE3C
/* 7CA88 8007BE88 00000000 */   nop
.L8007BE8C:
/* 7CA8C 8007BE8C 8C220018 */  lw         $v0, 0x18($at)
/* 7CA90 8007BE90 8C23001C */  lw         $v1, 0x1C($at)
/* 7CA94 8007BE94 2063FFFF */  addi       $v1, $v1, -0x1
.L8007BE98:
/* 7CA98 8007BE98 401E2800 */  mfc0       $fp, $5
/* 7CA9C 8007BE9C 17C0FFFE */  bnez       $fp, .L8007BE98
/* 7CAA0 8007BEA0 00000000 */   nop
/* 7CAA4 8007BEA4 40800000 */  mtc0       $zero, $0
/* 7CAA8 8007BEA8 40820800 */  mtc0       $v0, $1
/* 7CAAC 8007BEAC 40831000 */  mtc0       $v1, $2
.L8007BEB0:
/* 7CAB0 8007BEB0 40043000 */  mfc0       $a0, $6
.L8007BEB4:
/* 7CAB4 8007BEB4 1480FFFE */  bnez       $a0, .L8007BEB0
/* 7CAB8 8007BEB8 00000000 */   nop
/* 7CABC 8007BEBC 0D00040F */  jal        func_8400103C
/* 7CAC0 8007BEC0 00000000 */   nop
/* 7CAC4 8007BEC4 09000402 */  j          func_84001008
/* 7CAC8 8007BEC8 00000000 */   nop
/* 7CACC 8007BECC 00000000 */  nop

# Handwritten function
glabel func_8007BED0
/* 7CAD0 8007BED0 090005CC */  j          func_84001730
/* 7CAD4 8007BED4 201D0110 */   addi      $sp, $zero, 0x110

# Handwritten function
glabel func_8007BED8
/* 7CAD8 8007BED8 0D0007F5 */  jal        func_84001FD4
/* 7CADC 8007BEDC 0016A020 */   add       $s4, $zero, $s6
/* 7CAE0 8007BEE0 842200B8 */  lh         $v0, 0xB8($at)
/* 7CAE4 8007BEE4 00400008 */  jr         $v0
/* 7CAE8 8007BEE8 001915C2 */   srl       $v0, $t9, 23
/* 7CAEC 8007BEEC 40022000 */  mfc0       $v0, $4
/* 7CAF0 8007BEF0 30420080 */  andi       $v0, $v0, 0x80
/* 7CAF4 8007BEF4 14400006 */  bnez       $v0, .L8007BF10
/* 7CAF8 8007BEF8 84150026 */   lh        $s5, 0x26($zero)
/* 7CAFC 8007BEFC 179BFFED */  bne        $gp, $k1, .L8007BEB4
/* 7CB00 8007BF00 8F790000 */   lw        $t9, 0x0($k1)
/* 7CB04 8007BF04 09000432 */  j          func_840010C8
/* 7CB08 8007BF08 841F0104 */   lh        $ra, 0x104($zero)
/* 7CB0C 8007BF0C 841500B6 */  lh         $s5, 0xB6($zero)
.L8007BF10:
/* 7CB10 8007BF10 0900043A */  j          func_840010E8
/* 7CB14 8007BF14 341E0020 */   ori       $fp, $zero, 0x20

# Handwritten function
glabel func_8007BF18
/* 7CB18 8007BF18 201C0AE0 */  addi       $gp, $zero, 0xAE0
/* 7CB1C 8007BF1C 201409A0 */  addi       $s4, $zero, 0x9A0
/* 7CB20 8007BF20 001A9820 */  add        $s3, $zero, $k0
/* 7CB24 8007BF24 235A0140 */  addi       $k0, $k0, 0x140
/* 7CB28 8007BF28 2012013F */  addi       $s2, $zero, 0x13F
/* 7CB2C 8007BF2C 090007F5 */  j          func_84001FD4
/* 7CB30 8007BF30 201B09A0 */   addi      $k1, $zero, 0x9A0

# Handwritten function
glabel func_8007BF34
/* 7CB34 8007BF34 001FA820 */  add        $s5, $zero, $ra
/* 7CB38 8007BF38 8FD30000 */  lw         $s3, 0x0($fp)
/* 7CB3C 8007BF3C 87D20004 */  lh         $s2, 0x4($fp)
/* 7CB40 8007BF40 0D0007F5 */  jal        func_84001FD4
/* 7CB44 8007BF44 87D40006 */   lh        $s4, 0x6($fp)
/* 7CB48 8007BF48 0D0007F1 */  jal        func_84001FC4
/* 7CB4C 8007BF4C 00000000 */   nop
/* 7CB50 8007BF50 02A00008 */  jr         $s5
/* 7CB54 8007BF54 00136582 */   srl       $t4, $s3, 22
/* 7CB58 8007BF58 318C003C */  andi       $t4, $t4, 0x3C
/* 7CB5C 8007BF5C 8D8C0160 */  lw         $t4, 0x160($t4)
/* 7CB60 8007BF60 00139A00 */  sll        $s3, $s3, 8
/* 7CB64 8007BF64 00139A02 */  srl        $s3, $s3, 8
/* 7CB68 8007BF68 03E00008 */  jr         $ra
/* 7CB6C 8007BF6C 026C9820 */   add       $s3, $s3, $t4

# Handwritten function
glabel func_8007BF70
/* 7CB70 8007BF70 001FA820 */  add        $s5, $zero, $ra
/* 7CB74 8007BF74 8FB30018 */  lw         $s3, 0x18($sp)
/* 7CB78 8007BF78 22F2F320 */  addi       $s2, $s7, -0xCE0
/* 7CB7C 8007BF7C 8FB70044 */  lw         $s7, 0x44($sp)
/* 7CB80 8007BF80 1A40001A */  blez       $s2, .L8007BFEC
/* 7CB84 8007BF84 0272A020 */   add       $s4, $s3, $s2
/* 7CB88 8007BF88 02F4A022 */  sub        $s4, $s7, $s4
/* 7CB8C 8007BF8C 06810008 */  bgez       $s4, .L8007BFB0
.L8007BF90:
/* 7CB90 8007BF90 40145800 */   mfc0      $s4, $11
/* 7CB94 8007BF94 32940400 */  andi       $s4, $s4, 0x400
/* 7CB98 8007BF98 1680FFFD */  bnez       $s4, .L8007BF90
.L8007BF9C:
/* 7CB9C 8007BF9C 40175000 */   mfc0      $s7, $10
/* 7CBA0 8007BFA0 8FB30040 */  lw         $s3, 0x40($sp)
/* 7CBA4 8007BFA4 12F3FFFD */  beq        $s7, $s3, .L8007BF9C
/* 7CBA8 8007BFA8 00000000 */   nop
/* 7CBAC 8007BFAC 40934000 */  mtc0       $s3, $8
.L8007BFB0:
/* 7CBB0 8007BFB0 40175000 */  mfc0       $s7, $10
/* 7CBB4 8007BFB4 0277A022 */  sub        $s4, $s3, $s7
/* 7CBB8 8007BFB8 06810004 */  bgez       $s4, .L8007BFCC
/* 7CBBC 8007BFBC 0272A020 */   add       $s4, $s3, $s2
/* 7CBC0 8007BFC0 0297A022 */  sub        $s4, $s4, $s7
/* 7CBC4 8007BFC4 0681FFFA */  bgez       $s4, .L8007BFB0
/* 7CBC8 8007BFC8 00000000 */   nop
.L8007BFCC:
/* 7CBCC 8007BFCC 0272B820 */  add        $s7, $s3, $s2
/* 7CBD0 8007BFD0 2252FFFF */  addi       $s2, $s2, -0x1
/* 7CBD4 8007BFD4 20140CE0 */  addi       $s4, $zero, 0xCE0
/* 7CBD8 8007BFD8 0D0007F6 */  jal        func_84001FD8
/* 7CBDC 8007BFDC 20110001 */   addi      $s1, $zero, 0x1
/* 7CBE0 8007BFE0 0D0007F1 */  jal        func_84001FC4
/* 7CBE4 8007BFE4 AFB70018 */   sw        $s7, 0x18($sp)
/* 7CBE8 8007BFE8 40974800 */  mtc0       $s7, $9
.L8007BFEC:
/* 7CBEC 8007BFEC 02A00008 */  jr         $s5
/* 7CBF0 8007BFF0 20170CE0 */   addi      $s7, $zero, 0xCE0
/* 7CBF4 8007BFF4 304200FE */  andi       $v0, $v0, 0xFE
/* 7CBF8 8007BFF8 84420076 */  lh         $v0, 0x76($v0)
/* 7CBFC 8007BFFC 00400008 */  jr         $v0
/* 7CC00 8007C000 9361FFFF */   lbu       $at, -0x1($k1)
/* 7CC04 8007C004 841800BA */  lh         $t8, 0xBA($zero)
/* 7CC08 8007C008 841F0396 */  lh         $ra, 0x396($zero)
/* 7CC0C 8007C00C 9361FFFD */  lbu        $at, -0x3($k1)
/* 7CC10 8007C010 9362FFFE */  lbu        $v0, -0x2($k1)
/* 7CC14 8007C014 9363FFFF */  lbu        $v1, -0x1($k1)
/* 7CC18 8007C018 9421031E */  lhu        $at, 0x31E($at)
/* 7CC1C 8007C01C 9442031E */  lhu        $v0, 0x31E($v0)
/* 7CC20 8007C020 9463031E */  lhu        $v1, 0x31E($v1)
/* 7CC24 8007C024 03E00008 */  jr         $ra
/* 7CC28 8007C028 20240000 */   addi      $a0, $at, 0x0

# Handwritten function
glabel func_8007C02C
/* 7CC2C 8007C02C 0D00046E */  jal        func_840011B8
