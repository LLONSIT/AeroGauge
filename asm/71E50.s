.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSynRemovePlayer
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
