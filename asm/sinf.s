.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel sinf
/* 67950 80066D50 E7AC0000 */  swc1       $f12, 0x0($sp)
/* 67954 80066D54 8FA20000 */  lw         $v0, 0x0($sp)
/* 67958 80066D58 C7A40000 */  lwc1       $f4, 0x0($sp)
/* 6795C 80066D5C 00021D83 */  sra        $v1, $v0, 22
/* 67960 80066D60 306E01FF */  andi       $t6, $v1, 0x1FF
/* 67964 80066D64 29C100FF */  slti       $at, $t6, 0xFF
/* 67968 80066D68 10200019 */  beqz       $at, .L80066DD0
/* 6796C 80066D6C 01C01825 */   or        $v1, $t6, $zero
/* 67970 80066D70 29C100E6 */  slti       $at, $t6, 0xE6
/* 67974 80066D74 14200014 */  bnez       $at, .L80066DC8
/* 67978 80066D78 460020A1 */   cvt.d.s   $f2, $f4
/* 6797C 80066D7C 46221302 */  mul.d      $f12, $f2, $f2
/* 67980 80066D80 3C03800A */  lui        $v1, %hi(D_80098960)
/* 67984 80066D84 24638960 */  addiu      $v1, $v1, %lo(D_80098960)
/* 67988 80066D88 D4660020 */  ldc1       $f6, 0x20($v1)
/* 6798C 80066D8C D46A0018 */  ldc1       $f10, 0x18($v1)
/* 67990 80066D90 D4640010 */  ldc1       $f4, 0x10($v1)
/* 67994 80066D94 462C3202 */  mul.d      $f8, $f6, $f12
/* 67998 80066D98 462A4400 */  add.d      $f16, $f8, $f10
/* 6799C 80066D9C D46A0008 */  ldc1       $f10, 0x8($v1)
/* 679A0 80066DA0 462C8482 */  mul.d      $f18, $f16, $f12
/* 679A4 80066DA4 46249180 */  add.d      $f6, $f18, $f4
/* 679A8 80066DA8 462C3202 */  mul.d      $f8, $f6, $f12
/* 679AC 80066DAC 46285380 */  add.d      $f14, $f10, $f8
/* 679B0 80066DB0 462C1402 */  mul.d      $f16, $f2, $f12
/* 679B4 80066DB4 00000000 */  nop
/* 679B8 80066DB8 462E8482 */  mul.d      $f18, $f16, $f14
/* 679BC 80066DBC 46229100 */  add.d      $f4, $f18, $f2
/* 679C0 80066DC0 03E00008 */  jr         $ra
/* 679C4 80066DC4 46202020 */   cvt.s.d   $f0, $f4
.L80066DC8:
/* 679C8 80066DC8 03E00008 */  jr         $ra
/* 679CC 80066DCC C7A00000 */   lwc1      $f0, 0x0($sp)
.L80066DD0:
/* 679D0 80066DD0 28610136 */  slti       $at, $v1, 0x136
/* 679D4 80066DD4 10200044 */  beqz       $at, .L80066EE8
/* 679D8 80066DD8 C7A40000 */   lwc1      $f4, 0x0($sp)
/* 679DC 80066DDC C7A60000 */  lwc1       $f6, 0x0($sp)
/* 679E0 80066DE0 3C01800A */  lui        $at, %hi(D_80098988)
/* 679E4 80066DE4 D42A8988 */  ldc1       $f10, %lo(D_80098988)($at)
/* 679E8 80066DE8 460030A1 */  cvt.d.s    $f2, $f6
/* 679EC 80066DEC 44804800 */  mtc1       $zero, $f9
/* 679F0 80066DF0 462A1002 */  mul.d      $f0, $f2, $f10
/* 679F4 80066DF4 44804000 */  mtc1       $zero, $f8
/* 679F8 80066DF8 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 679FC 80066DFC 4620403E */  c.le.d     $f8, $f0
/* 67A00 80066E00 00000000 */  nop
/* 67A04 80066E04 4502000B */  bc1fl      .L80066E34
/* 67A08 80066E08 44813800 */   mtc1      $at, $f7
/* 67A0C 80066E0C 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 67A10 80066E10 44818800 */  mtc1       $at, $f17
/* 67A14 80066E14 44808000 */  mtc1       $zero, $f16
/* 67A18 80066E18 00000000 */  nop
/* 67A1C 80066E1C 46300480 */  add.d      $f18, $f0, $f16
/* 67A20 80066E20 4620910D */  trunc.w.d  $f4, $f18
/* 67A24 80066E24 44022000 */  mfc1       $v0, $f4
/* 67A28 80066E28 10000009 */  b          .L80066E50
/* 67A2C 80066E2C 44828000 */   mtc1      $v0, $f16
/* 67A30 80066E30 44813800 */  mtc1       $at, $f7
.L80066E34:
/* 67A34 80066E34 44803000 */  mtc1       $zero, $f6
/* 67A38 80066E38 00000000 */  nop
/* 67A3C 80066E3C 46260281 */  sub.d      $f10, $f0, $f6
/* 67A40 80066E40 4620520D */  trunc.w.d  $f8, $f10
/* 67A44 80066E44 44024000 */  mfc1       $v0, $f8
/* 67A48 80066E48 00000000 */  nop
/* 67A4C 80066E4C 44828000 */  mtc1       $v0, $f16
.L80066E50:
/* 67A50 80066E50 3C01800A */  lui        $at, %hi(D_80098990)
/* 67A54 80066E54 D4328990 */  ldc1       $f18, %lo(D_80098990)($at)
/* 67A58 80066E58 46808021 */  cvt.d.w    $f0, $f16
/* 67A5C 80066E5C 3C01800A */  lui        $at, %hi(D_80098998)
/* 67A60 80066E60 D4268998 */  ldc1       $f6, %lo(D_80098998)($at)
/* 67A64 80066E64 3C03800A */  lui        $v1, %hi(D_80098960)
/* 67A68 80066E68 24638960 */  addiu      $v1, $v1, %lo(D_80098960)
/* 67A6C 80066E6C 46320102 */  mul.d      $f4, $f0, $f18
/* 67A70 80066E70 D4680020 */  ldc1       $f8, 0x20($v1)
/* 67A74 80066E74 D4720018 */  ldc1       $f18, 0x18($v1)
/* 67A78 80066E78 30590001 */  andi       $t9, $v0, 0x1
/* 67A7C 80066E7C 46260282 */  mul.d      $f10, $f0, $f6
/* 67A80 80066E80 46241081 */  sub.d      $f2, $f2, $f4
/* 67A84 80066E84 462A1081 */  sub.d      $f2, $f2, $f10
/* 67A88 80066E88 D46A0010 */  ldc1       $f10, 0x10($v1)
/* 67A8C 80066E8C 46221302 */  mul.d      $f12, $f2, $f2
/* 67A90 80066E90 00000000 */  nop
/* 67A94 80066E94 462C4402 */  mul.d      $f16, $f8, $f12
/* 67A98 80066E98 46328100 */  add.d      $f4, $f16, $f18
/* 67A9C 80066E9C D4720008 */  ldc1       $f18, 0x8($v1)
/* 67AA0 80066EA0 462C2182 */  mul.d      $f6, $f4, $f12
/* 67AA4 80066EA4 462A3200 */  add.d      $f8, $f6, $f10
/* 67AA8 80066EA8 462C4402 */  mul.d      $f16, $f8, $f12
/* 67AAC 80066EAC 17200007 */  bnez       $t9, .L80066ECC
/* 67AB0 80066EB0 46309380 */   add.d     $f14, $f18, $f16
/* 67AB4 80066EB4 462C1102 */  mul.d      $f4, $f2, $f12
/* 67AB8 80066EB8 00000000 */  nop
/* 67ABC 80066EBC 462E2182 */  mul.d      $f6, $f4, $f14
/* 67AC0 80066EC0 46223280 */  add.d      $f10, $f6, $f2
/* 67AC4 80066EC4 03E00008 */  jr         $ra
/* 67AC8 80066EC8 46205020 */   cvt.s.d   $f0, $f10
.L80066ECC:
/* 67ACC 80066ECC 462C1202 */  mul.d      $f8, $f2, $f12
/* 67AD0 80066ED0 00000000 */  nop
/* 67AD4 80066ED4 462E4482 */  mul.d      $f18, $f8, $f14
/* 67AD8 80066ED8 46229400 */  add.d      $f16, $f18, $f2
/* 67ADC 80066EDC 46208020 */  cvt.s.d    $f0, $f16
/* 67AE0 80066EE0 03E00008 */  jr         $ra
/* 67AE4 80066EE4 46000007 */   neg.s     $f0, $f0
.L80066EE8:
/* 67AE8 80066EE8 46042032 */  c.eq.s     $f4, $f4
/* 67AEC 80066EEC 3C01800A */  lui        $at, %hi(D_800989A0)
/* 67AF0 80066EF0 45010004 */  bc1t       .L80066F04
/* 67AF4 80066EF4 00000000 */   nop
/* 67AF8 80066EF8 3C01800A */  lui        $at, %hi(__libm_qnan_f)
/* 67AFC 80066EFC 03E00008 */  jr         $ra
/* 67B00 80066F00 C4208D90 */   lwc1      $f0, %lo(__libm_qnan_f)($at)
.L80066F04:
/* 67B04 80066F04 C42089A0 */  lwc1       $f0, %lo(D_800989A0)($at)
/* 67B08 80066F08 03E00008 */  jr         $ra
/* 67B0C 80066F0C 00000000 */   nop

glabel func_80066F10
/* 67B10 80066F10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 67B14 80066F14 AFBF0014 */  sw         $ra, 0x14($sp)
/* 67B18 80066F18 0C01AAC4 */  jal        osSetIntMask
/* 67B1C 80066F1C 24040001 */   addiu     $a0, $zero, 0x1
/* 67B20 80066F20 8E500008 */  lw         $s0, 0x8($s2)
/* 67B24 80066F24 0040A025 */  or         $s4, $v0, $zero
/* 67B28 80066F28 12000012 */  beqz       $s0, .L80066F74
/* 67B2C 80066F2C 00000000 */   nop
.L80066F30:
/* 67B30 80066F30 8E0E0010 */  lw         $t6, 0x10($s0)
/* 67B34 80066F34 8E110000 */  lw         $s1, 0x0($s0)
/* 67B38 80066F38 166E000C */  bne        $s3, $t6, .L80066F6C
/* 67B3C 80066F3C 00000000 */   nop
/* 67B40 80066F40 12200005 */  beqz       $s1, .L80066F58
/* 67B44 80066F44 00000000 */   nop
/* 67B48 80066F48 8E2F0008 */  lw         $t7, 0x8($s1)
/* 67B4C 80066F4C 8E180008 */  lw         $t8, 0x8($s0)
/* 67B50 80066F50 01F8C821 */  addu       $t9, $t7, $t8
/* 67B54 80066F54 AE390008 */  sw         $t9, 0x8($s1)
.L80066F58:
/* 67B58 80066F58 0C019EBC */  jal        alUnlink
/* 67B5C 80066F5C 02002025 */   or        $a0, $s0, $zero
/* 67B60 80066F60 02002025 */  or         $a0, $s0, $zero
/* 67B64 80066F64 0C019EC8 */  jal        alLink
/* 67B68 80066F68 02402825 */   or        $a1, $s2, $zero
.L80066F6C:
/* 67B6C 80066F6C 1620FFF0 */  bnez       $s1, .L80066F30
/* 67B70 80066F70 02208025 */   or        $s0, $s1, $zero
.L80066F74:
/* 67B74 80066F74 0C01AAC4 */  jal        osSetIntMask
/* 67B78 80066F78 02802025 */   or        $a0, $s4, $zero
/* 67B7C 80066F7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 67B80 80066F80 27BD0018 */  addiu      $sp, $sp, 0x18
/* 67B84 80066F84 03E00008 */  jr         $ra
/* 67B88 80066F88 00000000 */   nop

glabel func_80066F8C
/* 67B8C 80066F8C 03E00008 */  jr         $ra
/* 67B90 80066F90 00000000 */   nop

glabel func_80066F94
/* 67B94 80066F94 03E00008 */  jr         $ra
/* 67B98 80066F98 00000000 */   nop

glabel sndplayer_text_008C
/* 67B9C 80066F9C 27BDFEF8 */  addiu      $sp, $sp, -0x108
/* 67BA0 80066FA0 AFBE0040 */  sw         $fp, 0x40($sp)
/* 67BA4 80066FA4 AFB7003C */  sw         $s7, 0x3C($sp)
/* 67BA8 80066FA8 AFB60038 */  sw         $s6, 0x38($sp)
/* 67BAC 80066FAC AFB40030 */  sw         $s4, 0x30($sp)
/* 67BB0 80066FB0 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 67BB4 80066FB4 3C01800A */  lui        $at, %hi(D_800989B0)
/* 67BB8 80066FB8 0080B025 */  or         $s6, $a0, $zero
/* 67BBC 80066FBC AFBF0044 */  sw         $ra, 0x44($sp)
/* 67BC0 80066FC0 AFB50034 */  sw         $s5, 0x34($sp)
/* 67BC4 80066FC4 AFB3002C */  sw         $s3, 0x2C($sp)
/* 67BC8 80066FC8 AFB20028 */  sw         $s2, 0x28($sp)
/* 67BCC 80066FCC AFB10024 */  sw         $s1, 0x24($sp)
/* 67BD0 80066FD0 AFB00020 */  sw         $s0, 0x20($sp)
/* 67BD4 80066FD4 D43489B0 */  ldc1       $f20, %lo(D_800989B0)($at)
/* 67BD8 80066FD8 24940028 */  addiu      $s4, $a0, 0x28
/* 67BDC 80066FDC 24970014 */  addiu      $s7, $a0, 0x14
/* 67BE0 80066FE0 241E0001 */  addiu      $fp, $zero, 0x1
.L80066FE4:
/* 67BE4 80066FE4 86C20028 */  lh         $v0, 0x28($s6)
/* 67BE8 80066FE8 24010005 */  addiu      $at, $zero, 0x5
/* 67BEC 80066FEC 240E0005 */  addiu      $t6, $zero, 0x5
/* 67BF0 80066FF0 14410007 */  bne        $v0, $at, .L80067010
/* 67BF4 80066FF4 02E02025 */   or        $a0, $s7, $zero
/* 67BF8 80066FF8 A7AE00F4 */  sh         $t6, 0xF4($sp)
/* 67BFC 80066FFC 8EC60048 */  lw         $a2, 0x48($s6)
/* 67C00 80067000 0C01A89F */  jal        alEvtqPostEvent
/* 67C04 80067004 27A500F4 */   addiu     $a1, $sp, 0xF4
/* 67C08 80067008 10000122 */  b          .L80067494
/* 67C0C 8006700C 02E02025 */   or        $a0, $s7, $zero
.L80067010:
/* 67C10 80067010 8ED5002C */  lw         $s5, 0x2C($s6)
/* 67C14 80067014 2C410009 */  sltiu      $at, $v0, 0x9
/* 67C18 80067018 1020011D */  beqz       $at, L80067490
/* 67C1C 8006701C 8EB1001C */   lw        $s1, 0x1C($s5)
/* 67C20 80067020 00027880 */  sll        $t7, $v0, 2
/* 67C24 80067024 3C01800A */  lui        $at, %hi(jtbl_800989B8_main)
/* 67C28 80067028 002F0821 */  addu       $at, $at, $t7
/* 67C2C 8006702C 8C2F89B8 */  lw         $t7, %lo(jtbl_800989B8_main)($at)
/* 67C30 80067030 01E00008 */  jr         $t7
/* 67C34 80067034 00000000 */   nop
glabel L80067038
/* 67C38 80067038 8EB80028 */  lw         $t8, 0x28($s5)
/* 67C3C 8006703C 57000115 */  bnel       $t8, $zero, .L80067494
/* 67C40 80067040 02E02025 */   or        $a0, $s7, $zero
/* 67C44 80067044 12200112 */  beqz       $s1, L80067490
/* 67C48 80067048 02A02825 */   or        $a1, $s5, $zero
/* 67C4C 8006704C A7A000E2 */  sh         $zero, 0xE2($sp)
/* 67C50 80067050 86B90020 */  lh         $t9, 0x20($s5)
/* 67C54 80067054 A3A000E4 */  sb         $zero, 0xE4($sp)
/* 67C58 80067058 27A600E0 */  addiu      $a2, $sp, 0xE0
/* 67C5C 8006705C A7B900E0 */  sh         $t9, 0xE0($sp)
/* 67C60 80067060 0C01AA0E */  jal        alSynAllocVoice
/* 67C64 80067064 8EC40038 */   lw        $a0, 0x38($s6)
/* 67C68 80067068 8E270000 */  lw         $a3, 0x0($s1)
/* 67C6C 8006706C 86AF002C */  lh         $t7, 0x2C($s5)
/* 67C70 80067070 2401007F */  addiu      $at, $zero, 0x7F
/* 67C74 80067074 90EE000C */  lbu        $t6, 0xC($a3)
/* 67C78 80067078 2408007F */  addiu      $t0, $zero, 0x7F
/* 67C7C 8006707C 01CF0019 */  multu      $t6, $t7
/* 67C80 80067080 0000C012 */  mflo       $t8
/* 67C84 80067084 00000000 */  nop
/* 67C88 80067088 00000000 */  nop
/* 67C8C 8006708C 0301001A */  div        $zero, $t8, $at
/* 67C90 80067090 0000C812 */  mflo       $t9
/* 67C94 80067094 A7B900BA */  sh         $t9, 0xBA($sp)
/* 67C98 80067098 922F000C */  lbu        $t7, 0xC($s1)
/* 67C9C 8006709C 92AE002E */  lbu        $t6, 0x2E($s5)
/* 67CA0 800670A0 01CF1821 */  addu       $v1, $t6, $t7
/* 67CA4 800670A4 2463FFC0 */  addiu      $v1, $v1, -0x40
/* 67CA8 800670A8 0003C400 */  sll        $t8, $v1, 16
/* 67CAC 800670AC 00181C03 */  sra        $v1, $t8, 16
/* 67CB0 800670B0 5C600003 */  bgtzl      $v1, .L800670C0
/* 67CB4 800670B4 2861007F */   slti      $at, $v1, 0x7F
/* 67CB8 800670B8 00001825 */  or         $v1, $zero, $zero
/* 67CBC 800670BC 2861007F */  slti       $at, $v1, 0x7F
.L800670C0:
/* 67CC0 800670C0 10200003 */  beqz       $at, .L800670D0
/* 67CC4 800670C4 00000000 */   nop
/* 67CC8 800670C8 10000001 */  b          .L800670D0
/* 67CCC 800670CC 306800FF */   andi      $t0, $v1, 0xFF
.L800670D0:
/* 67CD0 800670D0 C6A40024 */  lwc1       $f4, 0x24($s5)
/* 67CD4 800670D4 02A02825 */  or         $a1, $s5, $zero
/* 67CD8 800670D8 E7A400D0 */  swc1       $f4, 0xD0($sp)
/* 67CDC 800670DC 8CF00000 */  lw         $s0, 0x0($a3)
/* 67CE0 800670E0 8E260008 */  lw         $a2, 0x8($s1)
/* 67CE4 800670E4 8EC40038 */  lw         $a0, 0x38($s6)
/* 67CE8 800670E8 0C01C46C */  jal        func_800711B0
/* 67CEC 800670EC A3A800D7 */   sb        $t0, 0xD7($sp)
/* 67CF0 800670F0 93A600D7 */  lbu        $a2, 0xD7($sp)
/* 67CF4 800670F4 AEBE0028 */  sw         $fp, 0x28($s5)
/* 67CF8 800670F8 8EC40038 */  lw         $a0, 0x38($s6)
/* 67CFC 800670FC 0C0017F8 */  jal        func_80005FE0
/* 67D00 80067100 02A02825 */   or        $a1, $s5, $zero
/* 67D04 80067104 8EC40038 */  lw         $a0, 0x38($s6)
/* 67D08 80067108 02A02825 */  or         $a1, $s5, $zero
/* 67D0C 8006710C 87A600BA */  lh         $a2, 0xBA($sp)
/* 67D10 80067110 0C01A988 */  jal        alSynSetVol
/* 67D14 80067114 02003825 */   or        $a3, $s0, $zero
/* 67D18 80067118 8EC40038 */  lw         $a0, 0x38($s6)
/* 67D1C 8006711C 02A02825 */  or         $a1, $s5, $zero
/* 67D20 80067120 0C01A9B0 */  jal        alSynSetPitch
/* 67D24 80067124 8FA600D0 */   lw        $a2, 0xD0($sp)
/* 67D28 80067128 8EC40038 */  lw         $a0, 0x38($s6)
/* 67D2C 8006712C 02A02825 */  or         $a1, $s5, $zero
/* 67D30 80067130 0C01AA9C */  jal        alSynSetFXMix
/* 67D34 80067134 92A6002F */   lbu       $a2, 0x2F($s5)
/* 67D38 80067138 240E0006 */  addiu      $t6, $zero, 0x6
/* 67D3C 8006713C A7AE00C0 */  sh         $t6, 0xC0($sp)
/* 67D40 80067140 AFB500C4 */  sw         $s5, 0xC4($sp)
/* 67D44 80067144 8E2F0000 */  lw         $t7, 0x0($s1)
/* 67D48 80067148 C6A20024 */  lwc1       $f2, 0x24($s5)
/* 67D4C 8006714C 3C067FFF */  lui        $a2, (0x7FFFFFFF >> 16)
/* 67D50 80067150 8DE20000 */  lw         $v0, 0x0($t7)
/* 67D54 80067154 02E02025 */  or         $a0, $s7, $zero
/* 67D58 80067158 44823000 */  mtc1       $v0, $f6
/* 67D5C 8006715C 00000000 */  nop
/* 67D60 80067160 46803220 */  cvt.s.w    $f8, $f6
/* 67D64 80067164 46024283 */  div.s      $f10, $f8, $f2
/* 67D68 80067168 46005021 */  cvt.d.s    $f0, $f10
/* 67D6C 8006716C 4620A03C */  c.lt.d     $f20, $f0
/* 67D70 80067170 00000000 */  nop
/* 67D74 80067174 45020004 */  bc1fl      .L80067188
/* 67D78 80067178 4620010D */   trunc.w.d $f4, $f0
/* 67D7C 8006717C 10000004 */  b          .L80067190
/* 67D80 80067180 34C6FFFF */   ori       $a2, $a2, (0x7FFFFFFF & 0xFFFF)
/* 67D84 80067184 4620010D */  trunc.w.d  $f4, $f0
.L80067188:
/* 67D88 80067188 44062000 */  mfc1       $a2, $f4
/* 67D8C 8006718C 00000000 */  nop
.L80067190:
/* 67D90 80067190 0C01A89F */  jal        alEvtqPostEvent
/* 67D94 80067194 27A500C0 */   addiu     $a1, $sp, 0xC0
/* 67D98 80067198 100000BE */  b          .L80067494
/* 67D9C 8006719C 02E02025 */   or        $a0, $s7, $zero
glabel L800671A0
/* 67DA0 800671A0 8EB90028 */  lw         $t9, 0x28($s5)
/* 67DA4 800671A4 57D900BB */  bnel       $fp, $t9, .L80067494
/* 67DA8 800671A8 02E02025 */   or        $a0, $s7, $zero
/* 67DAC 800671AC 122000B8 */  beqz       $s1, L80067490
/* 67DB0 800671B0 02A02825 */   or        $a1, $s5, $zero
/* 67DB4 800671B4 8E2E0000 */  lw         $t6, 0x0($s1)
/* 67DB8 800671B8 C6A20024 */  lwc1       $f2, 0x24($s5)
/* 67DBC 800671BC 3C077FFF */  lui        $a3, (0x7FFFFFFF >> 16)
/* 67DC0 800671C0 8DC20008 */  lw         $v0, 0x8($t6)
/* 67DC4 800671C4 00003025 */  or         $a2, $zero, $zero
/* 67DC8 800671C8 44823000 */  mtc1       $v0, $f6
/* 67DCC 800671CC 00000000 */  nop
/* 67DD0 800671D0 46803220 */  cvt.s.w    $f8, $f6
/* 67DD4 800671D4 46024283 */  div.s      $f10, $f8, $f2
/* 67DD8 800671D8 46005021 */  cvt.d.s    $f0, $f10
/* 67DDC 800671DC 4620A03C */  c.lt.d     $f20, $f0
/* 67DE0 800671E0 00000000 */  nop
/* 67DE4 800671E4 45020004 */  bc1fl      .L800671F8
/* 67DE8 800671E8 4620010D */   trunc.w.d $f4, $f0
/* 67DEC 800671EC 10000004 */  b          .L80067200
/* 67DF0 800671F0 34E7FFFF */   ori       $a3, $a3, (0x7FFFFFFF & 0xFFFF)
/* 67DF4 800671F4 4620010D */  trunc.w.d  $f4, $f0
.L800671F8:
/* 67DF8 800671F8 44072000 */  mfc1       $a3, $f4
/* 67DFC 800671FC 00000000 */  nop
.L80067200:
/* 67E00 80067200 00E08025 */  or         $s0, $a3, $zero
/* 67E04 80067204 0C01A988 */  jal        alSynSetVol
/* 67E08 80067208 8EC40038 */   lw        $a0, 0x38($s6)
/* 67E0C 8006720C 1200000B */  beqz       $s0, .L8006723C
/* 67E10 80067210 02A02825 */   or        $a1, $s5, $zero
/* 67E14 80067214 24180007 */  addiu      $t8, $zero, 0x7
/* 67E18 80067218 A7B800C0 */  sh         $t8, 0xC0($sp)
/* 67E1C 8006721C AFB500C4 */  sw         $s5, 0xC4($sp)
/* 67E20 80067220 02E02025 */  or         $a0, $s7, $zero
/* 67E24 80067224 27A500C0 */  addiu      $a1, $sp, 0xC0
/* 67E28 80067228 0C01A89F */  jal        alEvtqPostEvent
/* 67E2C 8006722C 02003025 */   or        $a2, $s0, $zero
/* 67E30 80067230 24190002 */  addiu      $t9, $zero, 0x2
/* 67E34 80067234 10000096 */  b          L80067490
/* 67E38 80067238 AEB90028 */   sw        $t9, 0x28($s5)
.L8006723C:
/* 67E3C 8006723C 0C01A93C */  jal        alSynStopVoice
/* 67E40 80067240 8EC40038 */   lw        $a0, 0x38($s6)
/* 67E44 80067244 8EC40038 */  lw         $a0, 0x38($s6)
/* 67E48 80067248 0C01A95C */  jal        alSynFreeVoice
/* 67E4C 8006724C 02A02825 */   or        $a1, $s5, $zero
/* 67E50 80067250 02E09025 */  or         $s2, $s7, $zero
/* 67E54 80067254 02A09825 */  or         $s3, $s5, $zero
/* 67E58 80067258 0C019BC4 */  jal        func_80066F10
/* 67E5C 8006725C AFB4004C */   sw        $s4, 0x4C($sp)
/* 67E60 80067260 8FB4004C */  lw         $s4, 0x4C($sp)
/* 67E64 80067264 1000008A */  b          L80067490
/* 67E68 80067268 AEA00028 */   sw        $zero, 0x28($s5)
glabel L8006726C
/* 67E6C 8006726C 8EAF0028 */  lw         $t7, 0x28($s5)
/* 67E70 80067270 928E0008 */  lbu        $t6, 0x8($s4)
/* 67E74 80067274 17CF0086 */  bne        $fp, $t7, L80067490
/* 67E78 80067278 A2AE002E */   sb        $t6, 0x2E($s5)
/* 67E7C 8006727C 12200084 */  beqz       $s1, L80067490
/* 67E80 80067280 02A02825 */   or        $a1, $s5, $zero
/* 67E84 80067284 9239000C */  lbu        $t9, 0xC($s1)
/* 67E88 80067288 31D800FF */  andi       $t8, $t6, 0xFF
/* 67E8C 8006728C 2408007F */  addiu      $t0, $zero, 0x7F
/* 67E90 80067290 03191821 */  addu       $v1, $t8, $t9
/* 67E94 80067294 2463FFC0 */  addiu      $v1, $v1, -0x40
/* 67E98 80067298 00037400 */  sll        $t6, $v1, 16
/* 67E9C 8006729C 000E1C03 */  sra        $v1, $t6, 16
/* 67EA0 800672A0 5C600003 */  bgtzl      $v1, .L800672B0
/* 67EA4 800672A4 2861007F */   slti      $at, $v1, 0x7F
/* 67EA8 800672A8 00001825 */  or         $v1, $zero, $zero
/* 67EAC 800672AC 2861007F */  slti       $at, $v1, 0x7F
.L800672B0:
/* 67EB0 800672B0 10200003 */  beqz       $at, .L800672C0
/* 67EB4 800672B4 00000000 */   nop
/* 67EB8 800672B8 10000001 */  b          .L800672C0
/* 67EBC 800672BC 306800FF */   andi      $t0, $v1, 0xFF
.L800672C0:
/* 67EC0 800672C0 8EC40038 */  lw         $a0, 0x38($s6)
/* 67EC4 800672C4 0C0017F8 */  jal        func_80005FE0
/* 67EC8 800672C8 310600FF */   andi      $a2, $t0, 0xFF
/* 67ECC 800672CC 10000071 */  b          .L80067494
/* 67ED0 800672D0 02E02025 */   or        $a0, $s7, $zero
glabel L800672D4
/* 67ED4 800672D4 C6800008 */  lwc1       $f0, 0x8($s4)
/* 67ED8 800672D8 3C01800A */  lui        $at, %hi(D_800989E0)
/* 67EDC 800672DC 02A02825 */  or         $a1, $s5, $zero
/* 67EE0 800672E0 E6A00024 */  swc1       $f0, 0x24($s5)
/* 67EE4 800672E4 D42889E0 */  ldc1       $f8, %lo(D_800989E0)($at)
/* 67EE8 800672E8 460001A1 */  cvt.d.s    $f6, $f0
/* 67EEC 800672EC 3C01800A */  lui        $at, %hi(D_800989E8)
/* 67EF0 800672F0 4628303C */  c.lt.d     $f6, $f8
/* 67EF4 800672F4 00000000 */  nop
/* 67EF8 800672F8 45020004 */  bc1fl      .L8006730C
/* 67EFC 800672FC 8EB80028 */   lw        $t8, 0x28($s5)
/* 67F00 80067300 C42A89E8 */  lwc1       $f10, %lo(D_800989E8)($at)
/* 67F04 80067304 E6AA0024 */  swc1       $f10, 0x24($s5)
/* 67F08 80067308 8EB80028 */  lw         $t8, 0x28($s5)
.L8006730C:
/* 67F0C 8006730C 57D80061 */  bnel       $fp, $t8, .L80067494
/* 67F10 80067310 02E02025 */   or        $a0, $s7, $zero
/* 67F14 80067314 8EC40038 */  lw         $a0, 0x38($s6)
/* 67F18 80067318 0C01A9B0 */  jal        alSynSetPitch
/* 67F1C 8006731C 8EA60024 */   lw        $a2, 0x24($s5)
/* 67F20 80067320 1000005C */  b          .L80067494
/* 67F24 80067324 02E02025 */   or        $a0, $s7, $zero
glabel L80067328
/* 67F28 80067328 8EAE0028 */  lw         $t6, 0x28($s5)
/* 67F2C 8006732C 92990008 */  lbu        $t9, 0x8($s4)
/* 67F30 80067330 02A02825 */  or         $a1, $s5, $zero
/* 67F34 80067334 17CE0056 */  bne        $fp, $t6, L80067490
/* 67F38 80067338 A2B9002F */   sb        $t9, 0x2F($s5)
/* 67F3C 8006733C 8EC40038 */  lw         $a0, 0x38($s6)
/* 67F40 80067340 0C01AA9C */  jal        alSynSetFXMix
/* 67F44 80067344 332600FF */   andi      $a2, $t9, 0xFF
/* 67F48 80067348 10000052 */  b          .L80067494
/* 67F4C 8006734C 02E02025 */   or        $a0, $s7, $zero
glabel L80067350
/* 67F50 80067350 8EB80028 */  lw         $t8, 0x28($s5)
/* 67F54 80067354 868F0008 */  lh         $t7, 0x8($s4)
/* 67F58 80067358 17D8004D */  bne        $fp, $t8, L80067490
/* 67F5C 8006735C A6AF002C */   sh        $t7, 0x2C($s5)
/* 67F60 80067360 5220004C */  beql       $s1, $zero, .L80067494
/* 67F64 80067364 02E02025 */   or        $a0, $s7, $zero
/* 67F68 80067368 8E390000 */  lw         $t9, 0x0($s1)
/* 67F6C 8006736C 86AF002C */  lh         $t7, 0x2C($s5)
/* 67F70 80067370 2401007F */  addiu      $at, $zero, 0x7F
/* 67F74 80067374 932E000D */  lbu        $t6, 0xD($t9)
/* 67F78 80067378 8EC40038 */  lw         $a0, 0x38($s6)
/* 67F7C 8006737C 02A02825 */  or         $a1, $s5, $zero
/* 67F80 80067380 01CF0019 */  multu      $t6, $t7
/* 67F84 80067384 240703E8 */  addiu      $a3, $zero, 0x3E8
/* 67F88 80067388 00004012 */  mflo       $t0
/* 67F8C 8006738C 00000000 */  nop
/* 67F90 80067390 00000000 */  nop
/* 67F94 80067394 0101001A */  div        $zero, $t0, $at
/* 67F98 80067398 0000C012 */  mflo       $t8
/* 67F9C 8006739C 00183400 */  sll        $a2, $t8, 16
/* 67FA0 800673A0 0006CC03 */  sra        $t9, $a2, 16
/* 67FA4 800673A4 0C01A988 */  jal        alSynSetVol
/* 67FA8 800673A8 03203025 */   or        $a2, $t9, $zero
/* 67FAC 800673AC 10000039 */  b          .L80067494
/* 67FB0 800673B0 02E02025 */   or        $a0, $s7, $zero
glabel L800673B4
/* 67FB4 800673B4 8E270000 */  lw         $a3, 0x0($s1)
/* 67FB8 800673B8 2401FFFF */  addiu      $at, $zero, -0x1
/* 67FBC 800673BC 02A02825 */  or         $a1, $s5, $zero
/* 67FC0 800673C0 8CE30004 */  lw         $v1, 0x4($a3)
/* 67FC4 800673C4 50610033 */  beql       $v1, $at, .L80067494
/* 67FC8 800673C8 02E02025 */   or        $a0, $s7, $zero
/* 67FCC 800673CC 90EE000D */  lbu        $t6, 0xD($a3)
/* 67FD0 800673D0 86AF002C */  lh         $t7, 0x2C($s5)
/* 67FD4 800673D4 2401007F */  addiu      $at, $zero, 0x7F
/* 67FD8 800673D8 44832000 */  mtc1       $v1, $f4
/* 67FDC 800673DC 01CF0019 */  multu      $t6, $t7
/* 67FE0 800673E0 C6A20024 */  lwc1       $f2, 0x24($s5)
/* 67FE4 800673E4 468021A0 */  cvt.s.w    $f6, $f4
/* 67FE8 800673E8 3C077FFF */  lui        $a3, (0x7FFFFFFF >> 16)
/* 67FEC 800673EC 46023203 */  div.s      $f8, $f6, $f2
/* 67FF0 800673F0 00004012 */  mflo       $t0
/* 67FF4 800673F4 00000000 */  nop
/* 67FF8 800673F8 00000000 */  nop
/* 67FFC 800673FC 0101001A */  div        $zero, $t0, $at
/* 68000 80067400 46004021 */  cvt.d.s    $f0, $f8
/* 68004 80067404 00004012 */  mflo       $t0
/* 68008 80067408 4620A03C */  c.lt.d     $f20, $f0
/* 6800C 8006740C 00083400 */  sll        $a2, $t0, 16
/* 68010 80067410 00067403 */  sra        $t6, $a2, 16
/* 68014 80067414 01C03025 */  or         $a2, $t6, $zero
/* 68018 80067418 45020004 */  bc1fl      .L8006742C
/* 6801C 8006741C 4620028D */   trunc.w.d $f10, $f0
/* 68020 80067420 10000004 */  b          .L80067434
/* 68024 80067424 34E7FFFF */   ori       $a3, $a3, (0x7FFFFFFF & 0xFFFF)
/* 68028 80067428 4620028D */  trunc.w.d  $f10, $f0
.L8006742C:
/* 6802C 8006742C 44075000 */  mfc1       $a3, $f10
/* 68030 80067430 00000000 */  nop
.L80067434:
/* 68034 80067434 00E08025 */  or         $s0, $a3, $zero
/* 68038 80067438 0C01A988 */  jal        alSynSetVol
/* 6803C 8006743C 8EC40038 */   lw        $a0, 0x38($s6)
/* 68040 80067440 A7BE00C0 */  sh         $fp, 0xC0($sp)
/* 68044 80067444 AFB500C4 */  sw         $s5, 0xC4($sp)
/* 68048 80067448 02E02025 */  or         $a0, $s7, $zero
/* 6804C 8006744C 27A500C0 */  addiu      $a1, $sp, 0xC0
/* 68050 80067450 0C01A89F */  jal        alEvtqPostEvent
/* 68054 80067454 02003025 */   or        $a2, $s0, $zero
/* 68058 80067458 1000000E */  b          .L80067494
/* 6805C 8006745C 02E02025 */   or        $a0, $s7, $zero
glabel L80067460
/* 68060 80067460 8EC40038 */  lw         $a0, 0x38($s6)
/* 68064 80067464 0C01A93C */  jal        alSynStopVoice
/* 68068 80067468 02A02825 */   or        $a1, $s5, $zero
/* 6806C 8006746C 8EC40038 */  lw         $a0, 0x38($s6)
/* 68070 80067470 0C01A95C */  jal        alSynFreeVoice
/* 68074 80067474 02A02825 */   or        $a1, $s5, $zero
/* 68078 80067478 02E09025 */  or         $s2, $s7, $zero
/* 6807C 8006747C 02A09825 */  or         $s3, $s5, $zero
/* 68080 80067480 0C019BC4 */  jal        func_80066F10
/* 68084 80067484 AFB4004C */   sw        $s4, 0x4C($sp)
/* 68088 80067488 8FB4004C */  lw         $s4, 0x4C($sp)
/* 6808C 8006748C AEA00028 */  sw         $zero, 0x28($s5)
glabel L80067490
/* 68090 80067490 02E02025 */  or         $a0, $s7, $zero
.L80067494:
/* 68094 80067494 0C01A8E8 */  jal        alEvtqNextEvent
/* 68098 80067498 02802825 */   or        $a1, $s4, $zero
/* 6809C 8006749C 1040FED1 */  beqz       $v0, .L80066FE4
/* 680A0 800674A0 AEC2004C */   sw        $v0, 0x4C($s6)
/* 680A4 800674A4 8ECF0050 */  lw         $t7, 0x50($s6)
/* 680A8 800674A8 01E2C021 */  addu       $t8, $t7, $v0
/* 680AC 800674AC AED80050 */  sw         $t8, 0x50($s6)
/* 680B0 800674B0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 680B4 800674B4 8FBE0040 */  lw         $fp, 0x40($sp)
/* 680B8 800674B8 8FB7003C */  lw         $s7, 0x3C($sp)
/* 680BC 800674BC 8FB60038 */  lw         $s6, 0x38($sp)
/* 680C0 800674C0 8FB50034 */  lw         $s5, 0x34($sp)
/* 680C4 800674C4 8FB40030 */  lw         $s4, 0x30($sp)
/* 680C8 800674C8 8FB3002C */  lw         $s3, 0x2C($sp)
/* 680CC 800674CC 8FB20028 */  lw         $s2, 0x28($sp)
/* 680D0 800674D0 8FB10024 */  lw         $s1, 0x24($sp)
/* 680D4 800674D4 8FB00020 */  lw         $s0, 0x20($sp)
/* 680D8 800674D8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 680DC 800674DC 03E00008 */  jr         $ra
/* 680E0 800674E0 27BD0108 */   addiu     $sp, $sp, 0x108

glabel alSndpNew
/* 680E4 800674E4 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 680E8 800674E8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 680EC 800674EC AFB00020 */  sw         $s0, 0x20($sp)
/* 680F0 800674F0 8CAE0000 */  lw         $t6, 0x0($a1)
/* 680F4 800674F4 240FFFFF */  addiu      $t7, $zero, -0x1
/* 680F8 800674F8 24183E80 */  addiu      $t8, $zero, 0x3E80
/* 680FC 800674FC 00A04025 */  or         $t0, $a1, $zero
/* 68100 80067500 AC8F003C */  sw         $t7, 0x3C($a0)
/* 68104 80067504 AC980048 */  sw         $t8, 0x48($a0)
/* 68108 80067508 AC8E0044 */  sw         $t6, 0x44($a0)
/* 6810C 8006750C 8D190000 */  lw         $t9, 0x0($t0)
/* 68110 80067510 00808025 */  or         $s0, $a0, $zero
/* 68114 80067514 8D060008 */  lw         $a2, 0x8($t0)
/* 68118 80067518 00194880 */  sll        $t1, $t9, 2
/* 6811C 8006751C 01394823 */  subu       $t1, $t1, $t9
/* 68120 80067520 00094900 */  sll        $t1, $t1, 4
/* 68124 80067524 AFA90010 */  sw         $t1, 0x10($sp)
/* 68128 80067528 AFA8004C */  sw         $t0, 0x4C($sp)
/* 6812C 8006752C 00002025 */  or         $a0, $zero, $zero
/* 68130 80067530 00002825 */  or         $a1, $zero, $zero
/* 68134 80067534 0C0196D0 */  jal        alHeapDBAlloc
/* 68138 80067538 24070001 */   addiu     $a3, $zero, 0x1
/* 6813C 8006753C 8FA8004C */  lw         $t0, 0x4C($sp)
/* 68140 80067540 AE020040 */  sw         $v0, 0x40($s0)
/* 68144 80067544 00001825 */  or         $v1, $zero, $zero
/* 68148 80067548 8D0A0000 */  lw         $t2, 0x0($t0)
/* 6814C 8006754C 00402025 */  or         $a0, $v0, $zero
/* 68150 80067550 00002825 */  or         $a1, $zero, $zero
/* 68154 80067554 11400008 */  beqz       $t2, .L80067578
/* 68158 80067558 24070001 */   addiu     $a3, $zero, 0x1
/* 6815C 8006755C AC80001C */  sw         $zero, 0x1C($a0)
.L80067560:
/* 68160 80067560 8D0B0000 */  lw         $t3, 0x0($t0)
/* 68164 80067564 24630001 */  addiu      $v1, $v1, 0x1
/* 68168 80067568 24840030 */  addiu      $a0, $a0, 0x30
/* 6816C 8006756C 006B082B */  sltu       $at, $v1, $t3
/* 68170 80067570 5420FFFB */  bnel       $at, $zero, .L80067560
/* 68174 80067574 AC80001C */   sw        $zero, 0x1C($a0)
.L80067578:
/* 68178 80067578 8D0C0004 */  lw         $t4, 0x4($t0)
/* 6817C 8006757C 8D060008 */  lw         $a2, 0x8($t0)
/* 68180 80067580 AFA8004C */  sw         $t0, 0x4C($sp)
/* 68184 80067584 000C68C0 */  sll        $t5, $t4, 3
/* 68188 80067588 01AC6823 */  subu       $t5, $t5, $t4
/* 6818C 8006758C 000D6880 */  sll        $t5, $t5, 2
/* 68190 80067590 AFAD0010 */  sw         $t5, 0x10($sp)
/* 68194 80067594 0C0196D0 */  jal        alHeapDBAlloc
/* 68198 80067598 00002025 */   or        $a0, $zero, $zero
/* 6819C 8006759C 8FA8004C */  lw         $t0, 0x4C($sp)
/* 681A0 800675A0 26040014 */  addiu      $a0, $s0, 0x14
/* 681A4 800675A4 00402825 */  or         $a1, $v0, $zero
/* 681A8 800675A8 8D060004 */  lw         $a2, 0x4($t0)
/* 681AC 800675AC 0C01A90B */  jal        alEvtqNew
/* 681B0 800675B0 AFA40028 */   sw        $a0, 0x28($sp)
/* 681B4 800675B4 3C0E8009 */  lui        $t6, %hi(alGlobals)
/* 681B8 800675B8 8DC42E40 */  lw         $a0, %lo(alGlobals)($t6)
/* 681BC 800675BC 3C0F8006 */  lui        $t7, %hi(sndplayer_text_008C)
/* 681C0 800675C0 25EF6F9C */  addiu      $t7, $t7, %lo(sndplayer_text_008C)
/* 681C4 800675C4 AE000000 */  sw         $zero, 0x0($s0)
/* 681C8 800675C8 AE0F0008 */  sw         $t7, 0x8($s0)
/* 681CC 800675CC AE100004 */  sw         $s0, 0x4($s0)
/* 681D0 800675D0 02002825 */  or         $a1, $s0, $zero
/* 681D4 800675D4 0C01A928 */  jal        alSynAddPlayer
/* 681D8 800675D8 AE040038 */   sw        $a0, 0x38($s0)
/* 681DC 800675DC 24180005 */  addiu      $t8, $zero, 0x5
/* 681E0 800675E0 A7B80034 */  sh         $t8, 0x34($sp)
/* 681E4 800675E4 8E060048 */  lw         $a2, 0x48($s0)
/* 681E8 800675E8 8FA40028 */  lw         $a0, 0x28($sp)
/* 681EC 800675EC 0C01A89F */  jal        alEvtqPostEvent
/* 681F0 800675F0 27A50034 */   addiu     $a1, $sp, 0x34
/* 681F4 800675F4 8FA40028 */  lw         $a0, 0x28($sp)
/* 681F8 800675F8 0C01A8E8 */  jal        alEvtqNextEvent
/* 681FC 800675FC 26050028 */   addiu     $a1, $s0, 0x28
/* 68200 80067600 AE02004C */  sw         $v0, 0x4C($s0)
/* 68204 80067604 8FBF0024 */  lw         $ra, 0x24($sp)
/* 68208 80067608 8FB00020 */  lw         $s0, 0x20($sp)
/* 6820C 8006760C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 68210 80067610 03E00008 */  jr         $ra
/* 68214 80067614 00000000 */   nop
/* 68218 80067618 00000000 */  nop
/* 6821C 8006761C 00000000 */  nop
