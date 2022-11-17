.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel func_8006CCD0
/* 6D8D0 8006CCD0 3C088000 */  lui        $t0, 0x8000
/* 6D8D4 8006CCD4 240A2000 */  addiu      $t2, $zero, 0x2000
/* 6D8D8 8006CCD8 010A4821 */  addu       $t1, $t0, $t2
/* 6D8DC 8006CCDC 2529FFF0 */  addiu      $t1, $t1, -0x10
.L8006CCE0:
/* 6D8E0 8006CCE0 BD010000 */  cache      0x01, 0x0($t0)
/* 6D8E4 8006CCE4 0109082B */  sltu       $at, $t0, $t1
/* 6D8E8 8006CCE8 1420FFFD */  bnez       $at, .L8006CCE0
/* 6D8EC 8006CCEC 25080010 */   addiu     $t0, $t0, 0x10
/* 6D8F0 8006CCF0 03E00008 */  jr         $ra
/* 6D8F4 8006CCF4 00000000 */   nop
/* 6D8F8 8006CCF8 00000000 */  nop
/* 6D8FC 8006CCFC 00000000 */  nop
