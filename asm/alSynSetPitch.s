.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSynSetPitch
/* 6B2C0 8006A6C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B2C4 8006A6C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B2C8 8006A6C8 AFA40018 */  sw         $a0, 0x18($sp)
/* 6B2CC 8006A6CC AFA60020 */  sw         $a2, 0x20($sp)
/* 6B2D0 8006A6D0 8CAE0008 */  lw         $t6, 0x8($a1)
/* 6B2D4 8006A6D4 51C00018 */  beql       $t6, $zero, .L8006A738
/* 6B2D8 8006A6D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B2DC 8006A6DC 0C01A040 */  jal        __allocParam
/* 6B2E0 8006A6E0 AFA5001C */   sw        $a1, 0x1C($sp)
/* 6B2E4 8006A6E4 8FA7001C */  lw         $a3, 0x1C($sp)
/* 6B2E8 8006A6E8 10400012 */  beqz       $v0, .L8006A734
/* 6B2EC 8006A6EC 00403025 */   or        $a2, $v0, $zero
/* 6B2F0 8006A6F0 8FAF0018 */  lw         $t7, 0x18($sp)
/* 6B2F4 8006A6F4 8CF90008 */  lw         $t9, 0x8($a3)
/* 6B2F8 8006A6F8 240A0007 */  addiu      $t2, $zero, 0x7
/* 6B2FC 8006A6FC 8DF8001C */  lw         $t8, 0x1C($t7)
/* 6B300 8006A700 8F2800D8 */  lw         $t0, 0xD8($t9)
/* 6B304 8006A704 A44A0008 */  sh         $t2, 0x8($v0)
/* 6B308 8006A708 24050003 */  addiu      $a1, $zero, 0x3
/* 6B30C 8006A70C 03084821 */  addu       $t1, $t8, $t0
/* 6B310 8006A710 AC490004 */  sw         $t1, 0x4($v0)
/* 6B314 8006A714 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 6B318 8006A718 AC400000 */  sw         $zero, 0x0($v0)
/* 6B31C 8006A71C E444000C */  swc1       $f4, 0xC($v0)
/* 6B320 8006A720 8CEB0008 */  lw         $t3, 0x8($a3)
/* 6B324 8006A724 8D64000C */  lw         $a0, 0xC($t3)
/* 6B328 8006A728 8C990008 */  lw         $t9, 0x8($a0)
/* 6B32C 8006A72C 0320F809 */  jalr       $t9
/* 6B330 8006A730 00000000 */   nop
.L8006A734:
/* 6B334 8006A734 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006A738:
/* 6B338 8006A738 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6B33C 8006A73C 03E00008 */  jr         $ra
/* 6B340 8006A740 00000000 */   nop
/* 6B344 8006A744 00000000 */  nop
/* 6B348 8006A748 00000000 */  nop
/* 6B34C 8006A74C 00000000 */  nop
