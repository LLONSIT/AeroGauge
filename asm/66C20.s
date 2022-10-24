.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80066020
/* 66C20 80066020 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 66C24 80066024 AFBF0014 */  sw         $ra, 0x14($sp)
/* 66C28 80066028 AFA5002C */  sw         $a1, 0x2C($sp)
/* 66C2C 8006602C 00A07025 */  or         $t6, $a1, $zero
/* 66C30 80066030 240F000A */  addiu      $t7, $zero, 0xA
/* 66C34 80066034 A7AF0018 */  sh         $t7, 0x18($sp)
/* 66C38 80066038 A7AE001C */  sh         $t6, 0x1C($sp)
/* 66C3C 8006603C 27A50018 */  addiu      $a1, $sp, 0x18
/* 66C40 80066040 24840048 */  addiu      $a0, $a0, 0x48
/* 66C44 80066044 0C01A89F */  jal        func_8006A27C
/* 66C48 80066048 00003025 */   or        $a2, $zero, $zero
/* 66C4C 8006604C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 66C50 80066050 27BD0028 */  addiu      $sp, $sp, 0x28
/* 66C54 80066054 03E00008 */  jr         $ra
/* 66C58 80066058 00000000 */   nop
/* 66C5C 8006605C 00000000 */  nop
