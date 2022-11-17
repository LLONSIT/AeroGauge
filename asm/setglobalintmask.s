.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osSetGlobalIntMask
/* 7C7D0 8007BBD0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 7C7D4 8007BBD4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7C7D8 8007BBD8 AFA40028 */  sw         $a0, 0x28($sp)
/* 7C7DC 8007BBDC 0C01C218 */  jal        __osDisableInt
/* 7C7E0 8007BBE0 AFB00018 */   sw        $s0, 0x18($sp)
/* 7C7E4 8007BBE4 3C0E8009 */  lui        $t6, %hi(__OSGlobalIntMask)
/* 7C7E8 8007BBE8 8DCE4830 */  lw         $t6, %lo(__OSGlobalIntMask)($t6)
/* 7C7EC 8007BBEC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 7C7F0 8007BBF0 00408025 */  or         $s0, $v0, $zero
/* 7C7F4 8007BBF4 3C018009 */  lui        $at, %hi(__OSGlobalIntMask)
/* 7C7F8 8007BBF8 01CFC025 */  or         $t8, $t6, $t7
/* 7C7FC 8007BBFC AC384830 */  sw         $t8, %lo(__OSGlobalIntMask)($at)
/* 7C800 8007BC00 0C01C220 */  jal        __osRestoreInt
/* 7C804 8007BC04 02002025 */   or        $a0, $s0, $zero
/* 7C808 8007BC08 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7C80C 8007BC0C 8FB00018 */  lw         $s0, 0x18($sp)
/* 7C810 8007BC10 27BD0028 */  addiu      $sp, $sp, 0x28
/* 7C814 8007BC14 03E00008 */  jr         $ra
/* 7C818 8007BC18 00000000 */   nop
/* 7C81C 8007BC1C 00000000 */  nop
