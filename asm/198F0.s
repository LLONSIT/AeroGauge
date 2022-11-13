.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80018CF0
/* 198F0 80018CF0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 198F4 80018CF4 3C188014 */  lui        $t8, %hi(D_8013FC8C)
/* 198F8 80018CF8 9718FC8C */  lhu        $t8, %lo(D_8013FC8C)($t8)
/* 198FC 80018CFC AFBF0014 */  sw         $ra, 0x14($sp)
/* 19900 80018D00 AFA40020 */  sw         $a0, 0x20($sp)
/* 19904 80018D04 8C8F0000 */  lw         $t7, 0x0($a0)
/* 19908 80018D08 33190002 */  andi       $t9, $t8, 0x2
/* 1990C 80018D0C 13200010 */  beqz       $t9, .L80018D50
/* 19910 80018D10 AFAF001C */   sw        $t7, 0x1C($sp)
/* 19914 80018D14 3C068014 */  lui        $a2, %hi(D_8013FC80)
/* 19918 80018D18 8CC6FC80 */  lw         $a2, %lo(D_8013FC80)($a2)
/* 1991C 80018D1C 27A4001C */  addiu      $a0, $sp, 0x1C
/* 19920 80018D20 0C00635B */  jal        func_80018D6C
/* 19924 80018D24 24C50024 */   addiu     $a1, $a2, 0x24
/* 19928 80018D28 3C088014 */  lui        $t0, %hi(D_8013FF90)
/* 1992C 80018D2C 8108FF90 */  lb         $t0, %lo(D_8013FF90)($t0)
/* 19930 80018D30 24010005 */  addiu      $at, $zero, 0x5
/* 19934 80018D34 3C068014 */  lui        $a2, %hi(D_8013FC84)
/* 19938 80018D38 55010006 */  bnel       $t0, $at, .L80018D54
/* 1993C 80018D3C 8FA9001C */   lw        $t1, 0x1C($sp)
/* 19940 80018D40 8CC6FC84 */  lw         $a2, %lo(D_8013FC84)($a2)
/* 19944 80018D44 27A4001C */  addiu      $a0, $sp, 0x1C
/* 19948 80018D48 0C00635B */  jal        func_80018D6C
/* 1994C 80018D4C 24C50024 */   addiu     $a1, $a2, 0x24
.L80018D50:
/* 19950 80018D50 8FA9001C */  lw         $t1, 0x1C($sp)
.L80018D54:
/* 19954 80018D54 8FAA0020 */  lw         $t2, 0x20($sp)
/* 19958 80018D58 AD490000 */  sw         $t1, 0x0($t2)
/* 1995C 80018D5C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 19960 80018D60 27BD0020 */  addiu      $sp, $sp, 0x20
/* 19964 80018D64 03E00008 */  jr         $ra
/* 19968 80018D68 00000000 */   nop

glabel func_80018D6C
/* 1996C 80018D6C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 19970 80018D70 AFBF0024 */  sw         $ra, 0x24($sp)
/* 19974 80018D74 AFB00020 */  sw         $s0, 0x20($sp)
/* 19978 80018D78 AFA40050 */  sw         $a0, 0x50($sp)
/* 1997C 80018D7C 8C8F0000 */  lw         $t7, 0x0($a0)
/* 19980 80018D80 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 19984 80018D84 3C0BFA00 */  lui        $t3, (0xFA000000 >> 16)
/* 19988 80018D88 AFAF004C */  sw         $t7, 0x4C($sp)
/* 1998C 80018D8C 25F80008 */  addiu      $t8, $t7, 0x8
/* 19990 80018D90 AFB8004C */  sw         $t8, 0x4C($sp)
/* 19994 80018D94 ADE00004 */  sw         $zero, 0x4($t7)
/* 19998 80018D98 ADF90000 */  sw         $t9, 0x0($t7)
/* 1999C 80018D9C 8FA3004C */  lw         $v1, 0x4C($sp)
/* 199A0 80018DA0 00A08025 */  or         $s0, $a1, $zero
/* 199A4 80018DA4 24010001 */  addiu      $at, $zero, 0x1
/* 199A8 80018DA8 246A0008 */  addiu      $t2, $v1, 0x8
/* 199AC 80018DAC AFAA004C */  sw         $t2, 0x4C($sp)
/* 199B0 80018DB0 AC6B0000 */  sw         $t3, 0x0($v1)
/* 199B4 80018DB4 90D80001 */  lbu        $t8, 0x1($a2)
/* 199B8 80018DB8 90CD0000 */  lbu        $t5, 0x0($a2)
/* 199BC 80018DBC 90CB0002 */  lbu        $t3, 0x2($a2)
/* 199C0 80018DC0 0018CC00 */  sll        $t9, $t8, 16
/* 199C4 80018DC4 90D80003 */  lbu        $t8, 0x3($a2)
/* 199C8 80018DC8 000D7600 */  sll        $t6, $t5, 24
/* 199CC 80018DCC 01D94825 */  or         $t1, $t6, $t9
/* 199D0 80018DD0 000B6200 */  sll        $t4, $t3, 8
/* 199D4 80018DD4 012C6825 */  or         $t5, $t1, $t4
/* 199D8 80018DD8 01B87025 */  or         $t6, $t5, $t8
/* 199DC 80018DDC AC6E0004 */  sw         $t6, 0x4($v1)
/* 199E0 80018DE0 8FB9004C */  lw         $t9, 0x4C($sp)
/* 199E4 80018DE4 3C090050 */  lui        $t1, (0x504240 >> 16)
/* 199E8 80018DE8 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
/* 199EC 80018DEC 272A0008 */  addiu      $t2, $t9, 0x8
/* 199F0 80018DF0 AFAA004C */  sw         $t2, 0x4C($sp)
/* 199F4 80018DF4 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
/* 199F8 80018DF8 35294240 */  ori        $t1, $t1, (0x504240 & 0xFFFF)
/* 199FC 80018DFC AF290004 */  sw         $t1, 0x4($t9)
/* 19A00 80018E00 AF2B0000 */  sw         $t3, 0x0($t9)
/* 19A04 80018E04 90A80000 */  lbu        $t0, 0x0($a1)
/* 19A08 80018E08 27A4004C */  addiu      $a0, $sp, 0x4C
/* 19A0C 80018E0C 51000006 */  beql       $t0, $zero, .L80018E28
/* 19A10 80018E10 960C0002 */   lhu       $t4, 0x2($s0)
/* 19A14 80018E14 51010009 */  beql       $t0, $at, .L80018E3C
/* 19A18 80018E18 960D0002 */   lhu       $t5, 0x2($s0)
/* 19A1C 80018E1C 1000000D */  b          .L80018E54
/* 19A20 80018E20 8E070018 */   lw        $a3, 0x18($s0)
/* 19A24 80018E24 960C0002 */  lhu        $t4, 0x2($s0)
.L80018E28:
/* 19A28 80018E28 A7AC003E */  sh         $t4, 0x3E($sp)
/* 19A2C 80018E2C 960F0004 */  lhu        $t7, 0x4($s0)
/* 19A30 80018E30 10000007 */  b          .L80018E50
/* 19A34 80018E34 A7AF003C */   sh        $t7, 0x3C($sp)
/* 19A38 80018E38 960D0002 */  lhu        $t5, 0x2($s0)
.L80018E3C:
/* 19A3C 80018E3C 25B80014 */  addiu      $t8, $t5, 0x14
/* 19A40 80018E40 A7B8003E */  sh         $t8, 0x3E($sp)
/* 19A44 80018E44 960E0004 */  lhu        $t6, 0x4($s0)
/* 19A48 80018E48 25D90013 */  addiu      $t9, $t6, 0x13
/* 19A4C 80018E4C A7B9003C */  sh         $t9, 0x3C($sp)
.L80018E50:
/* 19A50 80018E50 8E070018 */  lw         $a3, 0x18($s0)
.L80018E54:
/* 19A54 80018E54 AFA00010 */  sw         $zero, 0x10($sp)
/* 19A58 80018E58 97A5003E */  lhu        $a1, 0x3E($sp)
/* 19A5C 80018E5C 0C006743 */  jal        func_80019D0C
/* 19A60 80018E60 97A6003C */   lhu       $a2, 0x3C($sp)
/* 19A64 80018E64 8FAA004C */  lw         $t2, 0x4C($sp)
/* 19A68 80018E68 8FAB0050 */  lw         $t3, 0x50($sp)
/* 19A6C 80018E6C AD6A0000 */  sw         $t2, 0x0($t3)
/* 19A70 80018E70 8FBF0024 */  lw         $ra, 0x24($sp)
/* 19A74 80018E74 8FB00020 */  lw         $s0, 0x20($sp)
/* 19A78 80018E78 27BD0050 */  addiu      $sp, $sp, 0x50
/* 19A7C 80018E7C 03E00008 */  jr         $ra
/* 19A80 80018E80 00000000 */   nop
/* 19A84 80018E84 00000000 */  nop
/* 19A88 80018E88 00000000 */  nop
/* 19A8C 80018E8C 00000000 */  nop
