.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006AC50
/* 6B850 8006AC50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B854 8006AC54 AFA40018 */  sw         $a0, 0x18($sp)
/* 6B858 8006AC58 00802825 */  or         $a1, $a0, $zero
/* 6B85C 8006AC5C 24A44000 */  addiu      $a0, $a1, 0x4000
/* 6B860 8006AC60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B864 8006AC64 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 6B868 8006AC68 0C01ADB8 */  jal        func_8006B6E0
/* 6B86C 8006AC6C 01C02025 */   or        $a0, $t6, $zero
/* 6B870 8006AC70 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6B874 8006AC74 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6B878 8006AC78 03E00008 */  jr         $ra
/* 6B87C 8006AC7C 00000000 */   nop

glabel func_8006AC80
/* 6B880 8006AC80 E7AC0000 */  swc1       $f12, 0x0($sp)
/* 6B884 8006AC84 8FA20000 */  lw         $v0, 0x0($sp)
/* 6B888 8006AC88 C7A60000 */  lwc1       $f6, 0x0($sp)
/* 6B88C 8006AC8C C7AA0000 */  lwc1       $f10, 0x0($sp)
/* 6B890 8006AC90 00027583 */  sra        $t6, $v0, 22
/* 6B894 8006AC94 31CF01FF */  andi       $t7, $t6, 0x1FF
/* 6B898 8006AC98 29E10136 */  slti       $at, $t7, 0x136
/* 6B89C 8006AC9C 50200049 */  beql       $at, $zero, .L8006ADC4
/* 6B8A0 8006ACA0 460A5032 */   c.eq.s    $f10, $f10
/* 6B8A4 8006ACA4 44802000 */  mtc1       $zero, $f4
/* 6B8A8 8006ACA8 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 6B8AC 8006ACAC 44819800 */  mtc1       $at, $f19
/* 6B8B0 8006ACB0 4606203C */  c.lt.s     $f4, $f6
/* 6B8B4 8006ACB4 C7A00000 */  lwc1       $f0, 0x0($sp)
/* 6B8B8 8006ACB8 3C01800A */  lui        $at, %hi(D_80098CE8)
/* 6B8BC 8006ACBC 45020004 */  bc1fl      .L8006ACD0
/* 6B8C0 8006ACC0 46000007 */   neg.s     $f0, $f0
/* 6B8C4 8006ACC4 10000002 */  b          .L8006ACD0
/* 6B8C8 8006ACC8 46003006 */   mov.s     $f0, $f6
/* 6B8CC 8006ACCC 46000007 */  neg.s      $f0, $f0
.L8006ACD0:
/* 6B8D0 8006ACD0 D4288CE8 */  ldc1       $f8, %lo(D_80098CE8)($at)
/* 6B8D4 8006ACD4 46000321 */  cvt.d.s    $f12, $f0
/* 6B8D8 8006ACD8 44809000 */  mtc1       $zero, $f18
/* 6B8DC 8006ACDC 46286282 */  mul.d      $f10, $f12, $f8
/* 6B8E0 8006ACE0 44802800 */  mtc1       $zero, $f5
/* 6B8E4 8006ACE4 44802000 */  mtc1       $zero, $f4
/* 6B8E8 8006ACE8 46325380 */  add.d      $f14, $f10, $f18
/* 6B8EC 8006ACEC 462E203E */  c.le.d     $f4, $f14
/* 6B8F0 8006ACF0 00000000 */  nop
/* 6B8F4 8006ACF4 45020007 */  bc1fl      .L8006AD14
/* 6B8F8 8006ACF8 46327281 */   sub.d     $f10, $f14, $f18
/* 6B8FC 8006ACFC 46327180 */  add.d      $f6, $f14, $f18
/* 6B900 8006AD00 4620320D */  trunc.w.d  $f8, $f6
/* 6B904 8006AD04 44024000 */  mfc1       $v0, $f8
/* 6B908 8006AD08 10000006 */  b          .L8006AD24
/* 6B90C 8006AD0C 44823000 */   mtc1      $v0, $f6
/* 6B910 8006AD10 46327281 */  sub.d      $f10, $f14, $f18
.L8006AD14:
/* 6B914 8006AD14 4620510D */  trunc.w.d  $f4, $f10
/* 6B918 8006AD18 44022000 */  mfc1       $v0, $f4
/* 6B91C 8006AD1C 00000000 */  nop
/* 6B920 8006AD20 44823000 */  mtc1       $v0, $f6
.L8006AD24:
/* 6B924 8006AD24 3C01800A */  lui        $at, %hi(D_80098CF0)
/* 6B928 8006AD28 D42A8CF0 */  ldc1       $f10, %lo(D_80098CF0)($at)
/* 6B92C 8006AD2C 46803221 */  cvt.d.w    $f8, $f6
/* 6B930 8006AD30 3C01800A */  lui        $at, %hi(D_80098CF8)
/* 6B934 8006AD34 D4268CF8 */  ldc1       $f6, %lo(D_80098CF8)($at)
/* 6B938 8006AD38 3C03800A */  lui        $v1, %hi(D_80098CC0)
/* 6B93C 8006AD3C 24638CC0 */  addiu      $v1, $v1, %lo(D_80098CC0)
/* 6B940 8006AD40 46324001 */  sub.d      $f0, $f8, $f18
/* 6B944 8006AD44 30480001 */  andi       $t0, $v0, 0x1
/* 6B948 8006AD48 462A0102 */  mul.d      $f4, $f0, $f10
/* 6B94C 8006AD4C D46A0020 */  ldc1       $f10, 0x20($v1)
/* 6B950 8006AD50 46260202 */  mul.d      $f8, $f0, $f6
/* 6B954 8006AD54 D4660018 */  ldc1       $f6, 0x18($v1)
/* 6B958 8006AD58 46246081 */  sub.d      $f2, $f12, $f4
/* 6B95C 8006AD5C 46281081 */  sub.d      $f2, $f2, $f8
/* 6B960 8006AD60 46221382 */  mul.d      $f14, $f2, $f2
/* 6B964 8006AD64 00000000 */  nop
/* 6B968 8006AD68 462E5102 */  mul.d      $f4, $f10, $f14
/* 6B96C 8006AD6C 46262200 */  add.d      $f8, $f4, $f6
/* 6B970 8006AD70 D4640010 */  ldc1       $f4, 0x10($v1)
/* 6B974 8006AD74 462E4282 */  mul.d      $f10, $f8, $f14
/* 6B978 8006AD78 46245180 */  add.d      $f6, $f10, $f4
/* 6B97C 8006AD7C D46A0008 */  ldc1       $f10, 0x8($v1)
/* 6B980 8006AD80 462E3202 */  mul.d      $f8, $f6, $f14
/* 6B984 8006AD84 15000007 */  bnez       $t0, .L8006ADA4
/* 6B988 8006AD88 46285400 */   add.d     $f16, $f10, $f8
/* 6B98C 8006AD8C 462E1102 */  mul.d      $f4, $f2, $f14
/* 6B990 8006AD90 00000000 */  nop
/* 6B994 8006AD94 46302182 */  mul.d      $f6, $f4, $f16
/* 6B998 8006AD98 46223280 */  add.d      $f10, $f6, $f2
/* 6B99C 8006AD9C 03E00008 */  jr         $ra
/* 6B9A0 8006ADA0 46205020 */   cvt.s.d   $f0, $f10
.L8006ADA4:
/* 6B9A4 8006ADA4 462E1202 */  mul.d      $f8, $f2, $f14
/* 6B9A8 8006ADA8 00000000 */  nop
/* 6B9AC 8006ADAC 46304102 */  mul.d      $f4, $f8, $f16
/* 6B9B0 8006ADB0 46222180 */  add.d      $f6, $f4, $f2
/* 6B9B4 8006ADB4 46203020 */  cvt.s.d    $f0, $f6
/* 6B9B8 8006ADB8 03E00008 */  jr         $ra
/* 6B9BC 8006ADBC 46000007 */   neg.s     $f0, $f0
/* 6B9C0 8006ADC0 460A5032 */  c.eq.s     $f10, $f10
.L8006ADC4:
/* 6B9C4 8006ADC4 3C01800A */  lui        $at, %hi(D_80098D00)
/* 6B9C8 8006ADC8 45010004 */  bc1t       .L8006ADDC
/* 6B9CC 8006ADCC 00000000 */   nop
/* 6B9D0 8006ADD0 3C01800A */  lui        $at, %hi(D_80098D90)
/* 6B9D4 8006ADD4 03E00008 */  jr         $ra
/* 6B9D8 8006ADD8 C4208D90 */   lwc1      $f0, %lo(D_80098D90)($at)
.L8006ADDC:
/* 6B9DC 8006ADDC C4208D00 */  lwc1       $f0, %lo(D_80098D00)($at)
/* 6B9E0 8006ADE0 03E00008 */  jr         $ra
/* 6B9E4 8006ADE4 00000000 */   nop
/* 6B9E8 8006ADE8 00000000 */  nop
/* 6B9EC 8006ADEC 00000000 */  nop
