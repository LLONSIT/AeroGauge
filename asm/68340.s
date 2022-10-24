.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80067740
/* 68340 80067740 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 68344 80067744 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68348 80067748 AFA50034 */  sw         $a1, 0x34($sp)
/* 6834C 8006774C 8C820040 */  lw         $v0, 0x40($a0)
/* 68350 80067750 00A04025 */  or         $t0, $a1, $zero
/* 68354 80067754 240E0002 */  addiu      $t6, $zero, 0x2
/* 68358 80067758 A7AE0020 */  sh         $t6, 0x20($sp)
/* 6835C 8006775C A3A80028 */  sb         $t0, 0x28($sp)
/* 68360 80067760 8C8F003C */  lw         $t7, 0x3C($a0)
/* 68364 80067764 27A50020 */  addiu      $a1, $sp, 0x20
/* 68368 80067768 24840014 */  addiu      $a0, $a0, 0x14
/* 6836C 8006776C 000FC080 */  sll        $t8, $t7, 2
/* 68370 80067770 030FC023 */  subu       $t8, $t8, $t7
/* 68374 80067774 0018C100 */  sll        $t8, $t8, 4
/* 68378 80067778 0302C821 */  addu       $t9, $t8, $v0
/* 6837C 8006777C AFB90024 */  sw         $t9, 0x24($sp)
/* 68380 80067780 0C01A89F */  jal        func_8006A27C
/* 68384 80067784 00003025 */   or        $a2, $zero, $zero
/* 68388 80067788 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6838C 8006778C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 68390 80067790 03E00008 */  jr         $ra
/* 68394 80067794 00000000 */   nop
/* 68398 80067798 00000000 */  nop
/* 6839C 8006779C 00000000 */  nop
