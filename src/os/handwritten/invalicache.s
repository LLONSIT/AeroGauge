.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.9.2.dev0 */

# Handwritten function
glabel func_80078900
/* 79500 80078900 18A00011 */  blez       $a1, .L80078948
/* 79504 80078904 00000000 */   nop
/* 79508 80078908 240B4000 */  addiu      $t3, $zero, 0x4000
/* 7950C 8007890C 00AB082B */  sltu       $at, $a1, $t3
/* 79510 80078910 1020000F */  beqz       $at, .L80078950
/* 79514 80078914 00000000 */   nop
/* 79518 80078918 00804025 */  or         $t0, $a0, $zero
/* 7951C 8007891C 00854821 */  addu       $t1, $a0, $a1
/* 79520 80078920 0109082B */  sltu       $at, $t0, $t1
/* 79524 80078924 10200008 */  beqz       $at, .L80078948
/* 79528 80078928 00000000 */   nop
/* 7952C 8007892C 310A001F */  andi       $t2, $t0, 0x1F
/* 79530 80078930 2529FFE0 */  addiu      $t1, $t1, -0x20
/* 79534 80078934 010A4023 */  subu       $t0, $t0, $t2
.L80078938:
/* 79538 80078938 BD100000 */  cache      0x10, 0x0($t0)
/* 7953C 8007893C 0109082B */  sltu       $at, $t0, $t1
/* 79540 80078940 1420FFFD */  bnez       $at, .L80078938
/* 79544 80078944 25080020 */   addiu     $t0, $t0, 0x20
.L80078948:
/* 79548 80078948 03E00008 */  jr         $ra
/* 7954C 8007894C 00000000 */   nop
.L80078950:
/* 79550 80078950 3C088000 */  lui        $t0, 0x8000
/* 79554 80078954 010B4821 */  addu       $t1, $t0, $t3
/* 79558 80078958 2529FFE0 */  addiu      $t1, $t1, -0x20
.L8007895C:
/* 7955C 8007895C BD000000 */  cache      0x00, 0x0($t0)
/* 79560 80078960 0109082B */  sltu       $at, $t0, $t1
/* 79564 80078964 1420FFFD */  bnez       $at, .L8007895C
/* 79568 80078968 25080020 */   addiu     $t0, $t0, (0x80000020 & 0xFFFF)
/* 7956C 8007896C 03E00008 */  jr         $ra
/* 79570 80078970 00000000 */   nop
/* 79574 80078974 00000000 */  nop
/* 79578 80078978 00000000 */  nop
/* 7957C 8007897C 00000000 */  nop
