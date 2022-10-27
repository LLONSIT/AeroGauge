.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

# Handwritten function
glabel __osDisableInt
/* 71460 80070860 40086000 */  mfc0       $t0, $12
/* 71464 80070864 2401FFFE */  addiu      $at, $zero, -0x2
/* 71468 80070868 01014824 */  and        $t1, $t0, $at
/* 7146C 8007086C 40896000 */  mtc0       $t1, $12
/* 71470 80070870 31020001 */  andi       $v0, $t0, 0x1
/* 71474 80070874 00000000 */  nop
/* 71478 80070878 03E00008 */  jr         $ra
/* 7147C 8007087C 00000000 */   nop

# Handwritten function
glabel __osRestoreInt
/* 71480 80070880 40086000 */  mfc0       $t0, $12
/* 71484 80070884 01044025 */  or         $t0, $t0, $a0
/* 71488 80070888 40886000 */  mtc0       $t0, $12
/* 7148C 8007088C 00000000 */  nop
/* 71490 80070890 00000000 */  nop
/* 71494 80070894 03E00008 */  jr         $ra
/* 71498 80070898 00000000 */   nop
/* 7149C 8007089C 00000000 */  nop
