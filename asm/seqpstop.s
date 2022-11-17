.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSeqpStop
/* 66C60 80066060 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 66C64 80066064 AFBF0014 */  sw         $ra, 0x14($sp)
/* 66C68 80066068 240E0011 */  addiu      $t6, $zero, 0x11
/* 66C6C 8006606C A7AE0018 */  sh         $t6, 0x18($sp)
/* 66C70 80066070 27A50018 */  addiu      $a1, $sp, 0x18
/* 66C74 80066074 24840048 */  addiu      $a0, $a0, 0x48
/* 66C78 80066078 0C01A89F */  jal        alEvtqPostEvent
/* 66C7C 8006607C 00003025 */   or        $a2, $zero, $zero
/* 66C80 80066080 8FBF0014 */  lw         $ra, 0x14($sp)
/* 66C84 80066084 27BD0028 */  addiu      $sp, $sp, 0x28
/* 66C88 80066088 03E00008 */  jr         $ra
/* 66C8C 8006608C 00000000 */   nop
