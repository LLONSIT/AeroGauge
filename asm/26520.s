.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80025920
/* 26520 80025920 90A20000 */  lbu        $v0, 0x0($a1)
/* 26524 80025924 10400007 */  beqz       $v0, .L80025944
/* 26528 80025928 00000000 */   nop
/* 2652C 8002592C A0820000 */  sb         $v0, 0x0($a0)
.L80025930:
/* 26530 80025930 90A20001 */  lbu        $v0, 0x1($a1)
/* 26534 80025934 24840001 */  addiu      $a0, $a0, 0x1
/* 26538 80025938 24A50001 */  addiu      $a1, $a1, 0x1
/* 2653C 8002593C 5440FFFC */  bnel       $v0, $zero, .L80025930
/* 26540 80025940 A0820000 */   sb        $v0, 0x0($a0)
.L80025944:
/* 26544 80025944 03E00008 */  jr         $ra
/* 26548 80025948 A0800000 */   sb        $zero, 0x0($a0)

glabel func_8002594C
/* 2654C 8002594C 10C00018 */  beqz       $a2, .L800259B0
/* 26550 80025950 30C30003 */   andi      $v1, $a2, 0x3
/* 26554 80025954 00031823 */  negu       $v1, $v1
/* 26558 80025958 10600009 */  beqz       $v1, .L80025980
/* 2655C 8002595C 00661021 */   addu      $v0, $v1, $a2
.L80025960:
/* 26560 80025960 90AE0000 */  lbu        $t6, 0x0($a1)
/* 26564 80025964 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 26568 80025968 24840001 */  addiu      $a0, $a0, 0x1
/* 2656C 8002596C 24A50001 */  addiu      $a1, $a1, 0x1
/* 26570 80025970 1446FFFB */  bne        $v0, $a2, .L80025960
/* 26574 80025974 A08EFFFF */   sb        $t6, -0x1($a0)
/* 26578 80025978 10C0000D */  beqz       $a2, .L800259B0
/* 2657C 8002597C 00000000 */   nop
.L80025980:
/* 26580 80025980 90AF0000 */  lbu        $t7, 0x0($a1)
/* 26584 80025984 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 26588 80025988 24840004 */  addiu      $a0, $a0, 0x4
/* 2658C 8002598C A08FFFFC */  sb         $t7, -0x4($a0)
/* 26590 80025990 90B80001 */  lbu        $t8, 0x1($a1)
/* 26594 80025994 24A50004 */  addiu      $a1, $a1, 0x4
/* 26598 80025998 A098FFFD */  sb         $t8, -0x3($a0)
/* 2659C 8002599C 90B9FFFE */  lbu        $t9, -0x2($a1)
/* 265A0 800259A0 A099FFFE */  sb         $t9, -0x2($a0)
/* 265A4 800259A4 90A8FFFF */  lbu        $t0, -0x1($a1)
/* 265A8 800259A8 14C0FFF5 */  bnez       $a2, .L80025980
/* 265AC 800259AC A088FFFF */   sb        $t0, -0x1($a0)
.L800259B0:
/* 265B0 800259B0 03E00008 */  jr         $ra
/* 265B4 800259B4 A0800000 */   sb        $zero, 0x0($a0)
/* 265B8 800259B8 00000000 */  nop
/* 265BC 800259BC 00000000 */  nop
