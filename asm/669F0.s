.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80065DF0
/* 669F0 80065DF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 669F4 80065DF4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 669F8 80065DF8 240E000E */  addiu      $t6, $zero, 0xE
/* 669FC 80065DFC AFA5001C */  sw         $a1, 0x1C($sp)
/* 66A00 80065E00 A7AE0018 */  sh         $t6, 0x18($sp)
/* 66A04 80065E04 27A50018 */  addiu      $a1, $sp, 0x18
/* 66A08 80065E08 24840048 */  addiu      $a0, $a0, 0x48
/* 66A0C 80065E0C 0C01A89F */  jal        alEvtqPostEvent
/* 66A10 80065E10 00003025 */   or        $a2, $zero, $zero
/* 66A14 80065E14 8FBF0014 */  lw         $ra, 0x14($sp)
/* 66A18 80065E18 27BD0028 */  addiu      $sp, $sp, 0x28
/* 66A1C 80065E1C 03E00008 */  jr         $ra
/* 66A20 80065E20 00000000 */   nop
/* 66A24 80065E24 00000000 */  nop
/* 66A28 80065E28 00000000 */  nop
/* 66A2C 80065E2C 00000000 */  nop
