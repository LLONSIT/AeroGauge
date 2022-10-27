.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSndpStop
/* 68460 80067860 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 68464 80067864 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68468 80067868 8C820040 */  lw         $v0, 0x40($a0)
/* 6846C 8006786C 240E0001 */  addiu      $t6, $zero, 0x1
/* 68470 80067870 A7AE0020 */  sh         $t6, 0x20($sp)
/* 68474 80067874 8C8F003C */  lw         $t7, 0x3C($a0)
/* 68478 80067878 27A50020 */  addiu      $a1, $sp, 0x20
/* 6847C 8006787C 24840014 */  addiu      $a0, $a0, 0x14
/* 68480 80067880 000FC080 */  sll        $t8, $t7, 2
/* 68484 80067884 030FC023 */  subu       $t8, $t8, $t7
/* 68488 80067888 0018C100 */  sll        $t8, $t8, 4
/* 6848C 8006788C 0302C821 */  addu       $t9, $t8, $v0
/* 68490 80067890 AFB90024 */  sw         $t9, 0x24($sp)
/* 68494 80067894 0C01A89F */  jal        alEvtqPostEvent
/* 68498 80067898 00003025 */   or        $a2, $zero, $zero
/* 6849C 8006789C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 684A0 800678A0 27BD0030 */  addiu      $sp, $sp, 0x30
/* 684A4 800678A4 03E00008 */  jr         $ra
/* 684A8 800678A8 00000000 */   nop
/* 684AC 800678AC 00000000 */  nop
