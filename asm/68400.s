.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80067800
/* 68400 80067800 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 68404 80067804 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68408 80067808 8C820040 */  lw         $v0, 0x40($a0)
/* 6840C 8006780C 240E0004 */  addiu      $t6, $zero, 0x4
/* 68410 80067810 A7AE0020 */  sh         $t6, 0x20($sp)
/* 68414 80067814 8C8F003C */  lw         $t7, 0x3C($a0)
/* 68418 80067818 44856000 */  mtc1       $a1, $f12
/* 6841C 8006781C 27A50020 */  addiu      $a1, $sp, 0x20
/* 68420 80067820 000FC080 */  sll        $t8, $t7, 2
/* 68424 80067824 030FC023 */  subu       $t8, $t8, $t7
/* 68428 80067828 0018C100 */  sll        $t8, $t8, 4
/* 6842C 8006782C 0302C821 */  addu       $t9, $t8, $v0
/* 68430 80067830 AFB90024 */  sw         $t9, 0x24($sp)
/* 68434 80067834 24840014 */  addiu      $a0, $a0, 0x14
/* 68438 80067838 00003025 */  or         $a2, $zero, $zero
/* 6843C 8006783C 0C01A89F */  jal        alEvtqPostEvent
/* 68440 80067840 E7AC0028 */   swc1      $f12, 0x28($sp)
/* 68444 80067844 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68448 80067848 27BD0030 */  addiu      $sp, $sp, 0x30
/* 6844C 8006784C 03E00008 */  jr         $ra
/* 68450 80067850 00000000 */   nop
/* 68454 80067854 00000000 */  nop
/* 68458 80067858 00000000 */  nop
/* 6845C 8006785C 00000000 */  nop
