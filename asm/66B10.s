.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80065F10
/* 66B10 80065F10 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 66B14 80065F14 3C0E8009 */  lui        $t6, %hi(__osPiDevMgr)
/* 66B18 80065F18 8DCE4840 */  lw         $t6, %lo(__osPiDevMgr)($t6)
/* 66B1C 80065F1C AFBF001C */  sw         $ra, 0x1C($sp)
/* 66B20 80065F20 AFA40028 */  sw         $a0, 0x28($sp)
/* 66B24 80065F24 AFA5002C */  sw         $a1, 0x2C($sp)
/* 66B28 80065F28 AFA60030 */  sw         $a2, 0x30($sp)
/* 66B2C 80065F2C AFA70034 */  sw         $a3, 0x34($sp)
/* 66B30 80065F30 AFB10018 */  sw         $s1, 0x18($sp)
/* 66B34 80065F34 15C00003 */  bnez       $t6, .L80065F44
/* 66B38 80065F38 AFB00014 */   sw        $s0, 0x14($sp)
/* 66B3C 80065F3C 10000032 */  b          .L80066008
/* 66B40 80065F40 2402FFFF */   addiu     $v0, $zero, -0x1
.L80065F44:
/* 66B44 80065F44 8FAF0030 */  lw         $t7, 0x30($sp)
/* 66B48 80065F48 15E00005 */  bnez       $t7, .L80065F60
/* 66B4C 80065F4C 00000000 */   nop
/* 66B50 80065F50 8FB90028 */  lw         $t9, 0x28($sp)
/* 66B54 80065F54 2418000B */  addiu      $t8, $zero, 0xB
/* 66B58 80065F58 10000004 */  b          .L80065F6C
/* 66B5C 80065F5C A7380000 */   sh        $t8, 0x0($t9)
.L80065F60:
/* 66B60 80065F60 8FA90028 */  lw         $t1, 0x28($sp)
/* 66B64 80065F64 2408000C */  addiu      $t0, $zero, 0xC
/* 66B68 80065F68 A5280000 */  sh         $t0, 0x0($t1)
.L80065F6C:
/* 66B6C 80065F6C 8FAA002C */  lw         $t2, 0x2C($sp)
/* 66B70 80065F70 8FAB0028 */  lw         $t3, 0x28($sp)
/* 66B74 80065F74 24010001 */  addiu      $at, $zero, 0x1
/* 66B78 80065F78 A16A0002 */  sb         $t2, 0x2($t3)
/* 66B7C 80065F7C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 66B80 80065F80 8FAC0040 */  lw         $t4, 0x40($sp)
/* 66B84 80065F84 ADAC0004 */  sw         $t4, 0x4($t5)
/* 66B88 80065F88 8FAF0028 */  lw         $t7, 0x28($sp)
/* 66B8C 80065F8C 8FAE0038 */  lw         $t6, 0x38($sp)
/* 66B90 80065F90 ADEE0008 */  sw         $t6, 0x8($t7)
/* 66B94 80065F94 8FB90028 */  lw         $t9, 0x28($sp)
/* 66B98 80065F98 8FB80034 */  lw         $t8, 0x34($sp)
/* 66B9C 80065F9C AF38000C */  sw         $t8, 0xC($t9)
/* 66BA0 80065FA0 8FA90028 */  lw         $t1, 0x28($sp)
/* 66BA4 80065FA4 8FA8003C */  lw         $t0, 0x3C($sp)
/* 66BA8 80065FA8 AD280010 */  sw         $t0, 0x10($t1)
/* 66BAC 80065FAC 8FAA0028 */  lw         $t2, 0x28($sp)
/* 66BB0 80065FB0 AD400014 */  sw         $zero, 0x14($t2)
/* 66BB4 80065FB4 8FAB002C */  lw         $t3, 0x2C($sp)
/* 66BB8 80065FB8 1561000A */  bne        $t3, $at, .L80065FE4
/* 66BBC 80065FBC 00000000 */   nop
/* 66BC0 80065FC0 0C01C20C */  jal        func_80070830
/* 66BC4 80065FC4 00000000 */   nop
/* 66BC8 80065FC8 00408825 */  or         $s1, $v0, $zero
/* 66BCC 80065FCC 02202025 */  or         $a0, $s1, $zero
/* 66BD0 80065FD0 8FA50028 */  lw         $a1, 0x28($sp)
/* 66BD4 80065FD4 0C01BF4C */  jal        func_8006FD30
/* 66BD8 80065FD8 00003025 */   or        $a2, $zero, $zero
/* 66BDC 80065FDC 10000009 */  b          .L80066004
/* 66BE0 80065FE0 00408025 */   or        $s0, $v0, $zero
.L80065FE4:
/* 66BE4 80065FE4 0C01C20C */  jal        func_80070830
/* 66BE8 80065FE8 00000000 */   nop
/* 66BEC 80065FEC 00408825 */  or         $s1, $v0, $zero
/* 66BF0 80065FF0 02202025 */  or         $a0, $s1, $zero
/* 66BF4 80065FF4 8FA50028 */  lw         $a1, 0x28($sp)
/* 66BF8 80065FF8 0C01A1B4 */  jal        func_800686D0
/* 66BFC 80065FFC 00003025 */   or        $a2, $zero, $zero
/* 66C00 80066000 00408025 */  or         $s0, $v0, $zero
.L80066004:
/* 66C04 80066004 02001025 */  or         $v0, $s0, $zero
.L80066008:
/* 66C08 80066008 8FBF001C */  lw         $ra, 0x1C($sp)
/* 66C0C 8006600C 8FB00014 */  lw         $s0, 0x14($sp)
/* 66C10 80066010 8FB10018 */  lw         $s1, 0x18($sp)
/* 66C14 80066014 03E00008 */  jr         $ra
/* 66C18 80066018 27BD0028 */   addiu     $sp, $sp, 0x28
/* 66C1C 8006601C 00000000 */  nop
