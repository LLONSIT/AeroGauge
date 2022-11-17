.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8007B8A0
/* 7C4A0 8007B8A0 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 7C4A4 8007B8A4 8DC70010 */  lw         $a3, %lo(D_A4600010)($t6)
/* 7C4A8 8007B8A8 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 7C4AC 8007B8AC 30EF0003 */  andi       $t7, $a3, 0x3
/* 7C4B0 8007B8B0 11E00006 */  beqz       $t7, .L8007B8CC
/* 7C4B4 8007B8B4 00000000 */   nop
.L8007B8B8:
/* 7C4B8 8007B8B8 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 7C4BC 8007B8BC 8F070010 */  lw         $a3, %lo(D_A4600010)($t8)
/* 7C4C0 8007B8C0 30F90003 */  andi       $t9, $a3, 0x3
/* 7C4C4 8007B8C4 1720FFFC */  bnez       $t9, .L8007B8B8
/* 7C4C8 8007B8C8 00000000 */   nop
.L8007B8CC:
/* 7C4CC 8007B8CC 90880009 */  lbu        $t0, 0x9($a0)
/* 7C4D0 8007B8D0 3C0A8009 */  lui        $t2, %hi(__osCurrentHandle)
/* 7C4D4 8007B8D4 254A4860 */  addiu      $t2, $t2, %lo(__osCurrentHandle)
/* 7C4D8 8007B8D8 00084880 */  sll        $t1, $t0, 2
/* 7C4DC 8007B8DC 012A5821 */  addu       $t3, $t1, $t2
/* 7C4E0 8007B8E0 8D6C0000 */  lw         $t4, 0x0($t3)
/* 7C4E4 8007B8E4 1184004A */  beq        $t4, $a0, .L8007BA10
/* 7C4E8 8007B8E8 00000000 */   nop
/* 7C4EC 8007B8EC 00086880 */  sll        $t5, $t0, 2
/* 7C4F0 8007B8F0 01AA7021 */  addu       $t6, $t5, $t2
/* 7C4F4 8007B8F4 8DCF0000 */  lw         $t7, 0x0($t6)
/* 7C4F8 8007B8F8 15000021 */  bnez       $t0, .L8007B980
/* 7C4FC 8007B8FC AFAF0004 */   sw        $t7, 0x4($sp)
/* 7C500 8007B900 91F80005 */  lbu        $t8, 0x5($t7)
/* 7C504 8007B904 90990005 */  lbu        $t9, 0x5($a0)
/* 7C508 8007B908 13190004 */  beq        $t8, $t9, .L8007B91C
/* 7C50C 8007B90C 00000000 */   nop
/* 7C510 8007B910 90890005 */  lbu        $t1, 0x5($a0)
/* 7C514 8007B914 3C0BA460 */  lui        $t3, %hi(D_A4600014)
/* 7C518 8007B918 AD690014 */  sw         $t1, %lo(D_A4600014)($t3)
.L8007B91C:
/* 7C51C 8007B91C 8FAC0004 */  lw         $t4, 0x4($sp)
/* 7C520 8007B920 908A0006 */  lbu        $t2, 0x6($a0)
/* 7C524 8007B924 918D0006 */  lbu        $t5, 0x6($t4)
/* 7C528 8007B928 11AA0004 */  beq        $t5, $t2, .L8007B93C
/* 7C52C 8007B92C 00000000 */   nop
/* 7C530 8007B930 908E0006 */  lbu        $t6, 0x6($a0)
/* 7C534 8007B934 3C0FA460 */  lui        $t7, %hi(D_A460001C)
/* 7C538 8007B938 ADEE001C */  sw         $t6, %lo(D_A460001C)($t7)
.L8007B93C:
/* 7C53C 8007B93C 8FB80004 */  lw         $t8, 0x4($sp)
/* 7C540 8007B940 90890007 */  lbu        $t1, 0x7($a0)
/* 7C544 8007B944 93190007 */  lbu        $t9, 0x7($t8)
/* 7C548 8007B948 13290004 */  beq        $t9, $t1, .L8007B95C
/* 7C54C 8007B94C 00000000 */   nop
/* 7C550 8007B950 908B0007 */  lbu        $t3, 0x7($a0)
/* 7C554 8007B954 3C0CA460 */  lui        $t4, %hi(D_A4600020)
/* 7C558 8007B958 AD8B0020 */  sw         $t3, %lo(D_A4600020)($t4)
.L8007B95C:
/* 7C55C 8007B95C 8FAD0004 */  lw         $t5, 0x4($sp)
/* 7C560 8007B960 908E0008 */  lbu        $t6, 0x8($a0)
/* 7C564 8007B964 91AA0008 */  lbu        $t2, 0x8($t5)
/* 7C568 8007B968 114E0025 */  beq        $t2, $t6, .L8007BA00
/* 7C56C 8007B96C 00000000 */   nop
/* 7C570 8007B970 908F0008 */  lbu        $t7, 0x8($a0)
/* 7C574 8007B974 3C18A460 */  lui        $t8, %hi(D_A4600018)
/* 7C578 8007B978 10000021 */  b          .L8007BA00
/* 7C57C 8007B97C AF0F0018 */   sw        $t7, %lo(D_A4600018)($t8)
.L8007B980:
/* 7C580 8007B980 8FB90004 */  lw         $t9, 0x4($sp)
/* 7C584 8007B984 908B0005 */  lbu        $t3, 0x5($a0)
/* 7C588 8007B988 93290005 */  lbu        $t1, 0x5($t9)
/* 7C58C 8007B98C 112B0004 */  beq        $t1, $t3, .L8007B9A0
/* 7C590 8007B990 00000000 */   nop
/* 7C594 8007B994 908C0005 */  lbu        $t4, 0x5($a0)
/* 7C598 8007B998 3C0DA460 */  lui        $t5, %hi(D_A4600024)
/* 7C59C 8007B99C ADAC0024 */  sw         $t4, %lo(D_A4600024)($t5)
.L8007B9A0:
/* 7C5A0 8007B9A0 8FAA0004 */  lw         $t2, 0x4($sp)
/* 7C5A4 8007B9A4 908F0006 */  lbu        $t7, 0x6($a0)
/* 7C5A8 8007B9A8 914E0006 */  lbu        $t6, 0x6($t2)
/* 7C5AC 8007B9AC 11CF0004 */  beq        $t6, $t7, .L8007B9C0
/* 7C5B0 8007B9B0 00000000 */   nop
/* 7C5B4 8007B9B4 90980006 */  lbu        $t8, 0x6($a0)
/* 7C5B8 8007B9B8 3C19A460 */  lui        $t9, %hi(D_A460002C)
/* 7C5BC 8007B9BC AF38002C */  sw         $t8, %lo(D_A460002C)($t9)
.L8007B9C0:
/* 7C5C0 8007B9C0 8FA90004 */  lw         $t1, 0x4($sp)
/* 7C5C4 8007B9C4 908C0007 */  lbu        $t4, 0x7($a0)
/* 7C5C8 8007B9C8 912B0007 */  lbu        $t3, 0x7($t1)
/* 7C5CC 8007B9CC 116C0004 */  beq        $t3, $t4, .L8007B9E0
/* 7C5D0 8007B9D0 00000000 */   nop
/* 7C5D4 8007B9D4 908D0007 */  lbu        $t5, 0x7($a0)
/* 7C5D8 8007B9D8 3C0AA460 */  lui        $t2, %hi(D_A4600030)
/* 7C5DC 8007B9DC AD4D0030 */  sw         $t5, %lo(D_A4600030)($t2)
.L8007B9E0:
/* 7C5E0 8007B9E0 8FAE0004 */  lw         $t6, 0x4($sp)
/* 7C5E4 8007B9E4 90980008 */  lbu        $t8, 0x8($a0)
/* 7C5E8 8007B9E8 91CF0008 */  lbu        $t7, 0x8($t6)
/* 7C5EC 8007B9EC 11F80004 */  beq        $t7, $t8, .L8007BA00
/* 7C5F0 8007B9F0 00000000 */   nop
/* 7C5F4 8007B9F4 90990008 */  lbu        $t9, 0x8($a0)
/* 7C5F8 8007B9F8 3C09A460 */  lui        $t1, %hi(D_A4600028)
/* 7C5FC 8007B9FC AD390028 */  sw         $t9, %lo(D_A4600028)($t1)
.L8007BA00:
/* 7C600 8007BA00 00085880 */  sll        $t3, $t0, 2
/* 7C604 8007BA04 3C018009 */  lui        $at, %hi(__osCurrentHandle)
/* 7C608 8007BA08 002B0821 */  addu       $at, $at, $t3
/* 7C60C 8007BA0C AC244860 */  sw         $a0, %lo(__osCurrentHandle)($at)
.L8007BA10:
/* 7C610 8007BA10 8C8C000C */  lw         $t4, 0xC($a0)
/* 7C614 8007BA14 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 7C618 8007BA18 27BD0010 */  addiu      $sp, $sp, 0x10
/* 7C61C 8007BA1C 01856825 */  or         $t5, $t4, $a1
/* 7C620 8007BA20 01A15025 */  or         $t2, $t5, $at
/* 7C624 8007BA24 AD460000 */  sw         $a2, %lo(D_A0000000)($t2)
/* 7C628 8007BA28 03E00008 */  jr         $ra
/* 7C62C 8007BA2C 00001025 */   or        $v0, $zero, $zero
