.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

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
/* 79948 80078D48 0C019FAC */  jal        osVirtualToPhysical
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
