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

glabel func_8007BA30
/* 7C630 8007BA30 3C0EA460 */  lui        $t6, %hi(D_A4600010)
/* 7C634 8007BA34 8DC70010 */  lw         $a3, %lo(D_A4600010)($t6)
/* 7C638 8007BA38 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 7C63C 8007BA3C 30EF0003 */  andi       $t7, $a3, 0x3
/* 7C640 8007BA40 11E00006 */  beqz       $t7, .L8007BA5C
/* 7C644 8007BA44 00000000 */   nop
.L8007BA48:
/* 7C648 8007BA48 3C18A460 */  lui        $t8, %hi(D_A4600010)
/* 7C64C 8007BA4C 8F070010 */  lw         $a3, %lo(D_A4600010)($t8)
/* 7C650 8007BA50 30F90003 */  andi       $t9, $a3, 0x3
/* 7C654 8007BA54 1720FFFC */  bnez       $t9, .L8007BA48
/* 7C658 8007BA58 00000000 */   nop
.L8007BA5C:
/* 7C65C 8007BA5C 90880009 */  lbu        $t0, 0x9($a0)
/* 7C660 8007BA60 3C0A8009 */  lui        $t2, %hi(__osCurrentHandle)
/* 7C664 8007BA64 254A4860 */  addiu      $t2, $t2, %lo(__osCurrentHandle)
/* 7C668 8007BA68 00084880 */  sll        $t1, $t0, 2
/* 7C66C 8007BA6C 012A5821 */  addu       $t3, $t1, $t2
/* 7C670 8007BA70 8D6C0000 */  lw         $t4, 0x0($t3)
/* 7C674 8007BA74 1184004A */  beq        $t4, $a0, .L8007BBA0
/* 7C678 8007BA78 00000000 */   nop
/* 7C67C 8007BA7C 00086880 */  sll        $t5, $t0, 2
/* 7C680 8007BA80 01AA7021 */  addu       $t6, $t5, $t2
/* 7C684 8007BA84 8DCF0000 */  lw         $t7, 0x0($t6)
/* 7C688 8007BA88 15000021 */  bnez       $t0, .L8007BB10
/* 7C68C 8007BA8C AFAF0004 */   sw        $t7, 0x4($sp)
/* 7C690 8007BA90 91F80005 */  lbu        $t8, 0x5($t7)
/* 7C694 8007BA94 90990005 */  lbu        $t9, 0x5($a0)
/* 7C698 8007BA98 13190004 */  beq        $t8, $t9, .L8007BAAC
/* 7C69C 8007BA9C 00000000 */   nop
/* 7C6A0 8007BAA0 90890005 */  lbu        $t1, 0x5($a0)
/* 7C6A4 8007BAA4 3C0BA460 */  lui        $t3, %hi(D_A4600014)
/* 7C6A8 8007BAA8 AD690014 */  sw         $t1, %lo(D_A4600014)($t3)
.L8007BAAC:
/* 7C6AC 8007BAAC 8FAC0004 */  lw         $t4, 0x4($sp)
/* 7C6B0 8007BAB0 908A0006 */  lbu        $t2, 0x6($a0)
/* 7C6B4 8007BAB4 918D0006 */  lbu        $t5, 0x6($t4)
/* 7C6B8 8007BAB8 11AA0004 */  beq        $t5, $t2, .L8007BACC
/* 7C6BC 8007BABC 00000000 */   nop
/* 7C6C0 8007BAC0 908E0006 */  lbu        $t6, 0x6($a0)
/* 7C6C4 8007BAC4 3C0FA460 */  lui        $t7, %hi(D_A460001C)
/* 7C6C8 8007BAC8 ADEE001C */  sw         $t6, %lo(D_A460001C)($t7)
.L8007BACC:
/* 7C6CC 8007BACC 8FB80004 */  lw         $t8, 0x4($sp)
/* 7C6D0 8007BAD0 90890007 */  lbu        $t1, 0x7($a0)
/* 7C6D4 8007BAD4 93190007 */  lbu        $t9, 0x7($t8)
/* 7C6D8 8007BAD8 13290004 */  beq        $t9, $t1, .L8007BAEC
/* 7C6DC 8007BADC 00000000 */   nop
/* 7C6E0 8007BAE0 908B0007 */  lbu        $t3, 0x7($a0)
/* 7C6E4 8007BAE4 3C0CA460 */  lui        $t4, %hi(D_A4600020)
/* 7C6E8 8007BAE8 AD8B0020 */  sw         $t3, %lo(D_A4600020)($t4)
.L8007BAEC:
/* 7C6EC 8007BAEC 8FAD0004 */  lw         $t5, 0x4($sp)
/* 7C6F0 8007BAF0 908E0008 */  lbu        $t6, 0x8($a0)
/* 7C6F4 8007BAF4 91AA0008 */  lbu        $t2, 0x8($t5)
/* 7C6F8 8007BAF8 114E0025 */  beq        $t2, $t6, .L8007BB90
/* 7C6FC 8007BAFC 00000000 */   nop
/* 7C700 8007BB00 908F0008 */  lbu        $t7, 0x8($a0)
/* 7C704 8007BB04 3C18A460 */  lui        $t8, %hi(D_A4600018)
/* 7C708 8007BB08 10000021 */  b          .L8007BB90
/* 7C70C 8007BB0C AF0F0018 */   sw        $t7, %lo(D_A4600018)($t8)
.L8007BB10:
/* 7C710 8007BB10 8FB90004 */  lw         $t9, 0x4($sp)
/* 7C714 8007BB14 908B0005 */  lbu        $t3, 0x5($a0)
/* 7C718 8007BB18 93290005 */  lbu        $t1, 0x5($t9)
/* 7C71C 8007BB1C 112B0004 */  beq        $t1, $t3, .L8007BB30
/* 7C720 8007BB20 00000000 */   nop
/* 7C724 8007BB24 908C0005 */  lbu        $t4, 0x5($a0)
/* 7C728 8007BB28 3C0DA460 */  lui        $t5, %hi(D_A4600024)
/* 7C72C 8007BB2C ADAC0024 */  sw         $t4, %lo(D_A4600024)($t5)
.L8007BB30:
/* 7C730 8007BB30 8FAA0004 */  lw         $t2, 0x4($sp)
/* 7C734 8007BB34 908F0006 */  lbu        $t7, 0x6($a0)
/* 7C738 8007BB38 914E0006 */  lbu        $t6, 0x6($t2)
/* 7C73C 8007BB3C 11CF0004 */  beq        $t6, $t7, .L8007BB50
/* 7C740 8007BB40 00000000 */   nop
/* 7C744 8007BB44 90980006 */  lbu        $t8, 0x6($a0)
/* 7C748 8007BB48 3C19A460 */  lui        $t9, %hi(D_A460002C)
/* 7C74C 8007BB4C AF38002C */  sw         $t8, %lo(D_A460002C)($t9)
.L8007BB50:
/* 7C750 8007BB50 8FA90004 */  lw         $t1, 0x4($sp)
/* 7C754 8007BB54 908C0007 */  lbu        $t4, 0x7($a0)
/* 7C758 8007BB58 912B0007 */  lbu        $t3, 0x7($t1)
/* 7C75C 8007BB5C 116C0004 */  beq        $t3, $t4, .L8007BB70
/* 7C760 8007BB60 00000000 */   nop
/* 7C764 8007BB64 908D0007 */  lbu        $t5, 0x7($a0)
/* 7C768 8007BB68 3C0AA460 */  lui        $t2, %hi(D_A4600030)
/* 7C76C 8007BB6C AD4D0030 */  sw         $t5, %lo(D_A4600030)($t2)
.L8007BB70:
/* 7C770 8007BB70 8FAE0004 */  lw         $t6, 0x4($sp)
/* 7C774 8007BB74 90980008 */  lbu        $t8, 0x8($a0)
/* 7C778 8007BB78 91CF0008 */  lbu        $t7, 0x8($t6)
/* 7C77C 8007BB7C 11F80004 */  beq        $t7, $t8, .L8007BB90
/* 7C780 8007BB80 00000000 */   nop
/* 7C784 8007BB84 90990008 */  lbu        $t9, 0x8($a0)
/* 7C788 8007BB88 3C09A460 */  lui        $t1, %hi(D_A4600028)
/* 7C78C 8007BB8C AD390028 */  sw         $t9, %lo(D_A4600028)($t1)
.L8007BB90:
/* 7C790 8007BB90 00085880 */  sll        $t3, $t0, 2
/* 7C794 8007BB94 3C018009 */  lui        $at, %hi(__osCurrentHandle)
/* 7C798 8007BB98 002B0821 */  addu       $at, $at, $t3
/* 7C79C 8007BB9C AC244860 */  sw         $a0, %lo(__osCurrentHandle)($at)
.L8007BBA0:
/* 7C7A0 8007BBA0 8C8C000C */  lw         $t4, 0xC($a0)
/* 7C7A4 8007BBA4 3C01A000 */  lui        $at, %hi(D_A0000000)
/* 7C7A8 8007BBA8 00001025 */  or         $v0, $zero, $zero
/* 7C7AC 8007BBAC 01856825 */  or         $t5, $t4, $a1
/* 7C7B0 8007BBB0 01A15025 */  or         $t2, $t5, $at
/* 7C7B4 8007BBB4 8D4E0000 */  lw         $t6, %lo(D_A0000000)($t2)
/* 7C7B8 8007BBB8 27BD0010 */  addiu      $sp, $sp, 0x10
/* 7C7BC 8007BBBC 03E00008 */  jr         $ra
/* 7C7C0 8007BBC0 ACCE0000 */   sw        $t6, 0x0($a2)
/* 7C7C4 8007BBC4 00000000 */  nop
/* 7C7C8 8007BBC8 00000000 */  nop
/* 7C7CC 8007BBCC 00000000 */  nop
