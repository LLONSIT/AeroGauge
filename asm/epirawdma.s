.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

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
/* 79B6C 80078F6C 0C019FAC */  jal        osVirtualToPhysical
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
