.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800676E0
/* 682E0 800676E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 682E4 800676E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 682E8 800676E8 AFA50034 */  sw         $a1, 0x34($sp)
/* 682EC 800676EC 8C820040 */  lw         $v0, 0x40($a0)
/* 682F0 800676F0 240F0003 */  addiu      $t7, $zero, 0x3
/* 682F4 800676F4 A7AF0020 */  sh         $t7, 0x20($sp)
/* 682F8 800676F8 8C98003C */  lw         $t8, 0x3C($a0)
/* 682FC 800676FC 00A07025 */  or         $t6, $a1, $zero
/* 68300 80067700 A7AE0028 */  sh         $t6, 0x28($sp)
/* 68304 80067704 0018C880 */  sll        $t9, $t8, 2
/* 68308 80067708 0338C823 */  subu       $t9, $t9, $t8
/* 6830C 8006770C 0019C900 */  sll        $t9, $t9, 4
/* 68310 80067710 03224821 */  addu       $t1, $t9, $v0
/* 68314 80067714 AFA90024 */  sw         $t1, 0x24($sp)
/* 68318 80067718 27A50020 */  addiu      $a1, $sp, 0x20
/* 6831C 8006771C 24840014 */  addiu      $a0, $a0, 0x14
/* 68320 80067720 0C01A89F */  jal        func_8006A27C
/* 68324 80067724 00003025 */   or        $a2, $zero, $zero
/* 68328 80067728 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6832C 8006772C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 68330 80067730 03E00008 */  jr         $ra
/* 68334 80067734 00000000 */   nop
/* 68338 80067738 00000000 */  nop
/* 6833C 8006773C 00000000 */  nop
