.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006AA70
/* 6B670 8006AA70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B674 8006AA74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B678 8006AA78 AFA40018 */  sw         $a0, 0x18($sp)
/* 6B67C 8006AA7C AFA60020 */  sw         $a2, 0x20($sp)
/* 6B680 8006AA80 8CAE0008 */  lw         $t6, 0x8($a1)
/* 6B684 8006AA84 51C0001C */  beql       $t6, $zero, .L8006AAF8
/* 6B688 8006AA88 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B68C 8006AA8C 0C01A040 */  jal        __allocParam
/* 6B690 8006AA90 AFA5001C */   sw        $a1, 0x1C($sp)
/* 6B694 8006AA94 8FA7001C */  lw         $a3, 0x1C($sp)
/* 6B698 8006AA98 10400016 */  beqz       $v0, .L8006AAF4
/* 6B69C 8006AA9C 00403025 */   or        $a2, $v0, $zero
/* 6B6A0 8006AAA0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 6B6A4 8006AAA4 8CF90008 */  lw         $t9, 0x8($a3)
/* 6B6A8 8006AAA8 240A0010 */  addiu      $t2, $zero, 0x10
/* 6B6AC 8006AAAC 8DF8001C */  lw         $t8, 0x1C($t7)
/* 6B6B0 8006AAB0 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 6B6B4 8006AAB4 A44A0008 */  sh         $t2, 0x8($v0)
/* 6B6B8 8006AAB8 03084821 */  addu       $t1, $t8, $t0
/* 6B6BC 8006AABC AC490004 */  sw         $t1, 0x4($v0)
/* 6B6C0 8006AAC0 93A30023 */  lbu        $v1, 0x23($sp)
/* 6B6C4 8006AAC4 04610003 */  bgez       $v1, .L8006AAD4
/* 6B6C8 8006AAC8 00035823 */   negu      $t3, $v1
/* 6B6CC 8006AACC 10000002 */  b          .L8006AAD8
/* 6B6D0 8006AAD0 AC4B000C */   sw        $t3, 0xC($v0)
.L8006AAD4:
/* 6B6D4 8006AAD4 AC43000C */  sw         $v1, 0xC($v0)
.L8006AAD8:
/* 6B6D8 8006AAD8 ACC00000 */  sw         $zero, 0x0($a2)
/* 6B6DC 8006AADC 8CEC0008 */  lw         $t4, 0x8($a3)
/* 6B6E0 8006AAE0 24050003 */  addiu      $a1, $zero, 0x3
/* 6B6E4 8006AAE4 8D84000C */  lw         $a0, 0xC($t4)
/* 6B6E8 8006AAE8 8C990008 */  lw         $t9, 0x8($a0)
/* 6B6EC 8006AAEC 0320F809 */  jalr       $t9
/* 6B6F0 8006AAF0 00000000 */   nop
.L8006AAF4:
/* 6B6F4 8006AAF4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006AAF8:
/* 6B6F8 8006AAF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6B6FC 8006AAFC 03E00008 */  jr         $ra
/* 6B700 8006AB00 00000000 */   nop
/* 6B704 8006AB04 00000000 */  nop
/* 6B708 8006AB08 00000000 */  nop
/* 6B70C 8006AB0C 00000000 */  nop
