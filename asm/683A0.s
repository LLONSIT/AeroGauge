.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800677A0
/* 683A0 800677A0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 683A4 800677A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 683A8 800677A8 AFA50034 */  sw         $a1, 0x34($sp)
/* 683AC 800677AC 8C820040 */  lw         $v0, 0x40($a0)
/* 683B0 800677B0 240E0008 */  addiu      $t6, $zero, 0x8
/* 683B4 800677B4 A7AE0020 */  sh         $t6, 0x20($sp)
/* 683B8 800677B8 8C8F003C */  lw         $t7, 0x3C($a0)
/* 683BC 800677BC 00A04025 */  or         $t0, $a1, $zero
/* 683C0 800677C0 A3A80028 */  sb         $t0, 0x28($sp)
/* 683C4 800677C4 000FC080 */  sll        $t8, $t7, 2
/* 683C8 800677C8 030FC023 */  subu       $t8, $t8, $t7
/* 683CC 800677CC 0018C100 */  sll        $t8, $t8, 4
/* 683D0 800677D0 0302C821 */  addu       $t9, $t8, $v0
/* 683D4 800677D4 AFB90024 */  sw         $t9, 0x24($sp)
/* 683D8 800677D8 27A50020 */  addiu      $a1, $sp, 0x20
/* 683DC 800677DC 24840014 */  addiu      $a0, $a0, 0x14
/* 683E0 800677E0 0C01A89F */  jal        func_8006A27C
/* 683E4 800677E4 00003025 */   or        $a2, $zero, $zero
/* 683E8 800677E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 683EC 800677EC 27BD0030 */  addiu      $sp, $sp, 0x30
/* 683F0 800677F0 03E00008 */  jr         $ra
/* 683F4 800677F4 00000000 */   nop
/* 683F8 800677F8 00000000 */  nop
/* 683FC 800677FC 00000000 */  nop
