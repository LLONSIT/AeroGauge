.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSeqpPlay
/* 678D0 80066CD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 678D4 80066CD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 678D8 80066CD8 240E000F */  addiu      $t6, $zero, 0xF
/* 678DC 80066CDC A7AE0018 */  sh         $t6, 0x18($sp)
/* 678E0 80066CE0 27A50018 */  addiu      $a1, $sp, 0x18
/* 678E4 80066CE4 24840048 */  addiu      $a0, $a0, 0x48
/* 678E8 80066CE8 0C01A89F */  jal        alEvtqPostEvent
/* 678EC 80066CEC 00003025 */   or        $a2, $zero, $zero
/* 678F0 80066CF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 678F4 80066CF4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 678F8 80066CF8 03E00008 */  jr         $ra
/* 678FC 80066CFC 00000000 */   nop
