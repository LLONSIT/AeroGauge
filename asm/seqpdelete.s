.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSeqpDelete
/* 68A50 80067E50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 68A54 80067E54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68A58 80067E58 00802825 */  or         $a1, $a0, $zero
/* 68A5C 80067E5C 0C01C494 */  jal        alSynRemovePlayer
/* 68A60 80067E60 8C840014 */   lw        $a0, 0x14($a0)
/* 68A64 80067E64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68A68 80067E68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 68A6C 80067E6C 03E00008 */  jr         $ra
/* 68A70 80067E70 00000000 */   nop
/* 68A74 80067E74 00000000 */  nop
/* 68A78 80067E78 00000000 */  nop
/* 68A7C 80067E7C 00000000 */  nop
