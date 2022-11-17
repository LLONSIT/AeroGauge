.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8007B840
/* 7C440 8007B840 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C444 8007B844 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7C448 8007B848 AFA40028 */  sw         $a0, 0x28($sp)
/* 7C44C 8007B84C 0C01C218 */  jal        __osDisableInt
/* 7C450 8007B850 AFB00018 */   sw        $s0, 0x18($sp)
/* 7C454 8007B854 8FAF0028 */  lw         $t7, 0x28($sp)
/* 7C458 8007B858 3C0E8009 */  lui        $t6, %hi(__OSGlobalIntMask)
/* 7C45C 8007B85C 8DCE4830 */  lw         $t6, %lo(__OSGlobalIntMask)($t6)
/* 7C460 8007B860 2401FBFE */  addiu      $at, $zero, -0x402
/* 7C464 8007B864 01E1C024 */  and        $t8, $t7, $at
/* 7C468 8007B868 0300C827 */  not        $t9, $t8
/* 7C46C 8007B86C 00408025 */  or         $s0, $v0, $zero
/* 7C470 8007B870 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7C474 8007B874 01D94024 */  and        $t0, $t6, $t9
/* 7C478 8007B878 AC284830 */  sw         $t0, %lo(__OSGlobalIntMask)($at)
/* 7C47C 8007B87C 0C01C220 */  jal        __osRestoreInt
/* 7C480 8007B880 02002025 */   or        $a0, $s0, $zero
/* 7C484 8007B884 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7C488 8007B888 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C48C 8007B88C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7C490 8007B890 03E00008 */  jr         $ra
/* 7C494 8007B894 00000000 */   nop
/* 7C498 8007B898 00000000 */  nop
/* 7C49C 8007B89C 00000000 */  nop
