.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006A980
/* 6B580 8006A980 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6B584 8006A984 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B588 8006A988 AFA50024 */  sw         $a1, 0x24($sp)
/* 6B58C 8006A98C AFA60028 */  sw         $a2, 0x28($sp)
/* 6B590 8006A990 AFA7002C */  sw         $a3, 0x2C($sp)
/* 6B594 8006A994 8CAE0008 */  lw         $t6, 0x8($a1)
/* 6B598 8006A998 51C0002F */  beql       $t6, $zero, .L8006AA58
/* 6B59C 8006A99C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B5A0 8006A9A0 AFA40020 */  sw         $a0, 0x20($sp)
/* 6B5A4 8006A9A4 0C01A040 */  jal        __allocParam
/* 6B5A8 8006A9A8 AFA50024 */   sw        $a1, 0x24($sp)
/* 6B5AC 8006A9AC 8FA40020 */  lw         $a0, 0x20($sp)
/* 6B5B0 8006A9B0 8FA70024 */  lw         $a3, 0x24($sp)
/* 6B5B4 8006A9B4 10400027 */  beqz       $v0, .L8006AA54
/* 6B5B8 8006A9B8 00403025 */   or        $a2, $v0, $zero
/* 6B5BC 8006A9BC 93A3003B */  lbu        $v1, 0x3B($sp)
/* 6B5C0 8006A9C0 04610004 */  bgez       $v1, .L8006A9D4
/* 6B5C4 8006A9C4 00601025 */   or        $v0, $v1, $zero
/* 6B5C8 8006A9C8 00021823 */  negu       $v1, $v0
/* 6B5CC 8006A9CC 306F00FF */  andi       $t7, $v1, 0xFF
/* 6B5D0 8006A9D0 01E01825 */  or         $v1, $t7, $zero
.L8006A9D4:
/* 6B5D4 8006A9D4 8CF90008 */  lw         $t9, 0x8($a3)
/* 6B5D8 8006A9D8 8C98001C */  lw         $t8, 0x1C($a0)
/* 6B5DC 8006A9DC 240A000D */  addiu      $t2, $zero, 0xD
/* 6B5E0 8006A9E0 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 6B5E4 8006A9E4 ACC00000 */  sw         $zero, 0x0($a2)
/* 6B5E8 8006A9E8 A4CA0008 */  sh         $t2, 0x8($a2)
/* 6B5EC 8006A9EC 03084821 */  addu       $t1, $t8, $t0
/* 6B5F0 8006A9F0 ACC90004 */  sw         $t1, 0x4($a2)
/* 6B5F4 8006A9F4 84EB001A */  lh         $t3, 0x1A($a3)
/* 6B5F8 8006A9F8 A4CB000A */  sh         $t3, 0xA($a2)
/* 6B5FC 8006A9FC 93AC0037 */  lbu        $t4, 0x37($sp)
/* 6B600 8006AA00 A0CC0012 */  sb         $t4, 0x12($a2)
/* 6B604 8006AA04 87AD0032 */  lh         $t5, 0x32($sp)
/* 6B608 8006AA08 A0C30013 */  sb         $v1, 0x13($a2)
/* 6B60C 8006AA0C A4CD0010 */  sh         $t5, 0x10($a2)
/* 6B610 8006AA10 C7A4002C */  lwc1       $f4, 0x2C($sp)
/* 6B614 8006AA14 E4C4000C */  swc1       $f4, 0xC($a2)
/* 6B618 8006AA18 AFA70024 */  sw         $a3, 0x24($sp)
/* 6B61C 8006AA1C AFA6001C */  sw         $a2, 0x1C($sp)
/* 6B620 8006AA20 0C019FFE */  jal        _timeToSamples
/* 6B624 8006AA24 8FA5003C */   lw        $a1, 0x3C($sp)
/* 6B628 8006AA28 8FA6001C */  lw         $a2, 0x1C($sp)
/* 6B62C 8006AA2C 8FA70024 */  lw         $a3, 0x24($sp)
/* 6B630 8006AA30 24050003 */  addiu      $a1, $zero, 0x3
/* 6B634 8006AA34 ACC20014 */  sw         $v0, 0x14($a2)
/* 6B638 8006AA38 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6B63C 8006AA3C ACCE0018 */  sw         $t6, 0x18($a2)
/* 6B640 8006AA40 8CEF0008 */  lw         $t7, 0x8($a3)
/* 6B644 8006AA44 8DE4000C */  lw         $a0, 0xC($t7)
/* 6B648 8006AA48 8C990008 */  lw         $t9, 0x8($a0)
/* 6B64C 8006AA4C 0320F809 */  jalr       $t9
/* 6B650 8006AA50 00000000 */   nop
.L8006AA54:
/* 6B654 8006AA54 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006AA58:
/* 6B658 8006AA58 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6B65C 8006AA5C 03E00008 */  jr         $ra
/* 6B660 8006AA60 00000000 */   nop
/* 6B664 8006AA64 00000000 */  nop
/* 6B668 8006AA68 00000000 */  nop
/* 6B66C 8006AA6C 00000000 */  nop
