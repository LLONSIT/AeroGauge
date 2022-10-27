.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSndpDelete
/* 68A80 80067E80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 68A84 80067E84 00802825 */  or         $a1, $a0, $zero
/* 68A88 80067E88 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68A8C 80067E8C 3C048009 */  lui        $a0, %hi(alGlobals)
/* 68A90 80067E90 0C01C494 */  jal        func_80071250
/* 68A94 80067E94 8C842E40 */   lw        $a0, %lo(alGlobals)($a0)
/* 68A98 80067E98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68A9C 80067E9C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 68AA0 80067EA0 03E00008 */  jr         $ra
/* 68AA4 80067EA4 00000000 */   nop
/* 68AA8 80067EA8 00000000 */  nop
/* 68AAC 80067EAC 00000000 */  nop
