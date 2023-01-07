.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.9.2.dev0 */

# Handwritten function
glabel func_80078360
/* 78F60 80078360 10C0001A */  beqz       $a2, .L800783CC
/* 78F64 80078364 00A03825 */   or        $a3, $a1, $zero
/* 78F68 80078368 10850018 */  beq        $a0, $a1, .L800783CC
/* 78F6C 8007836C 00A4082A */   slt       $at, $a1, $a0
/* 78F70 80078370 54200008 */  bnel       $at, $zero, .L80078394
/* 78F74 80078374 28C10010 */   slti      $at, $a2, 0x10
/* 78F78 80078378 00861020 */  add        $v0, $a0, $a2
/* 78F7C 8007837C 00A2082A */  slt        $at, $a1, $v0
/* 78F80 80078380 50200004 */  beql       $at, $zero, .L80078394
/* 78F84 80078384 28C10010 */   slti      $at, $a2, 0x10
/* 78F88 80078388 1000005B */  b          .L800784F8
/* 78F8C 8007838C 28C10010 */   slti      $at, $a2, 0x10
/* 78F90 80078390 28C10010 */  slti       $at, $a2, 0x10
.L80078394:
/* 78F94 80078394 14200005 */  bnez       $at, .L800783AC
/* 78F98 80078398 00000000 */   nop
/* 78F9C 8007839C 30820003 */  andi       $v0, $a0, 0x3
/* 78FA0 800783A0 30A30003 */  andi       $v1, $a1, 0x3
/* 78FA4 800783A4 1043000B */  beq        $v0, $v1, .L800783D4
/* 78FA8 800783A8 00000000 */   nop
.L800783AC:
/* 78FAC 800783AC 10C00007 */  beqz       $a2, .L800783CC
/* 78FB0 800783B0 00000000 */   nop
/* 78FB4 800783B4 00861821 */  addu       $v1, $a0, $a2
.L800783B8:
/* 78FB8 800783B8 80820000 */  lb         $v0, 0x0($a0)
/* 78FBC 800783BC 24840001 */  addiu      $a0, $a0, 0x1
/* 78FC0 800783C0 24A50001 */  addiu      $a1, $a1, 0x1
/* 78FC4 800783C4 1483FFFC */  bne        $a0, $v1, .L800783B8
/* 78FC8 800783C8 A0A2FFFF */   sb        $v0, -0x1($a1)
.L800783CC:
/* 78FCC 800783CC 03E00008 */  jr         $ra
/* 78FD0 800783D0 00E01025 */   or        $v0, $a3, $zero
.L800783D4:
/* 78FD4 800783D4 10400018 */  beqz       $v0, .L80078438
/* 78FD8 800783D8 24010001 */   addiu     $at, $zero, 0x1
/* 78FDC 800783DC 1041000F */  beq        $v0, $at, .L8007841C
/* 78FE0 800783E0 24010002 */   addiu     $at, $zero, 0x2
/* 78FE4 800783E4 50410008 */  beql       $v0, $at, .L80078408
/* 78FE8 800783E8 84820000 */   lh        $v0, 0x0($a0)
/* 78FEC 800783EC 80820000 */  lb         $v0, 0x0($a0)
/* 78FF0 800783F0 24840001 */  addiu      $a0, $a0, 0x1
/* 78FF4 800783F4 24A50001 */  addiu      $a1, $a1, 0x1
/* 78FF8 800783F8 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 78FFC 800783FC 1000000E */  b          .L80078438
/* 79000 80078400 A0A2FFFF */   sb        $v0, -0x1($a1)
/* 79004 80078404 84820000 */  lh         $v0, 0x0($a0)
.L80078408:
/* 79008 80078408 24840002 */  addiu      $a0, $a0, 0x2
/* 7900C 8007840C 24A50002 */  addiu      $a1, $a1, 0x2
/* 79010 80078410 24C6FFFE */  addiu      $a2, $a2, -0x2
/* 79014 80078414 10000008 */  b          .L80078438
/* 79018 80078418 A4A2FFFE */   sh        $v0, -0x2($a1)
.L8007841C:
/* 7901C 8007841C 80820000 */  lb         $v0, 0x0($a0)
/* 79020 80078420 84830001 */  lh         $v1, 0x1($a0)
/* 79024 80078424 24840003 */  addiu      $a0, $a0, 0x3
/* 79028 80078428 24A50003 */  addiu      $a1, $a1, 0x3
/* 7902C 8007842C 24C6FFFD */  addiu      $a2, $a2, -0x3
/* 79030 80078430 A0A2FFFD */  sb         $v0, -0x3($a1)
/* 79034 80078434 A4A3FFFE */  sh         $v1, -0x2($a1)
.L80078438:
/* 79038 80078438 28C10020 */  slti       $at, $a2, 0x20
/* 7903C 8007843C 54200016 */  bnel       $at, $zero, .L80078498
/* 79040 80078440 28C10010 */   slti      $at, $a2, 0x10
/* 79044 80078444 8C820000 */  lw         $v0, 0x0($a0)
/* 79048 80078448 8C830004 */  lw         $v1, 0x4($a0)
/* 7904C 8007844C 8C880008 */  lw         $t0, 0x8($a0)
/* 79050 80078450 8C89000C */  lw         $t1, 0xC($a0)
/* 79054 80078454 8C8A0010 */  lw         $t2, 0x10($a0)
/* 79058 80078458 8C8B0014 */  lw         $t3, 0x14($a0)
/* 7905C 8007845C 8C8C0018 */  lw         $t4, 0x18($a0)
/* 79060 80078460 8C8D001C */  lw         $t5, 0x1C($a0)
/* 79064 80078464 24840020 */  addiu      $a0, $a0, 0x20
/* 79068 80078468 24A50020 */  addiu      $a1, $a1, 0x20
/* 7906C 8007846C 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 79070 80078470 ACA2FFE0 */  sw         $v0, -0x20($a1)
/* 79074 80078474 ACA3FFE4 */  sw         $v1, -0x1C($a1)
/* 79078 80078478 ACA8FFE8 */  sw         $t0, -0x18($a1)
/* 7907C 8007847C ACA9FFEC */  sw         $t1, -0x14($a1)
/* 79080 80078480 ACAAFFF0 */  sw         $t2, -0x10($a1)
/* 79084 80078484 ACABFFF4 */  sw         $t3, -0xC($a1)
/* 79088 80078488 ACACFFF8 */  sw         $t4, -0x8($a1)
/* 7908C 8007848C 1000FFEA */  b          .L80078438
/* 79090 80078490 ACADFFFC */   sw        $t5, -0x4($a1)
.L80078494:
/* 79094 80078494 28C10010 */  slti       $at, $a2, 0x10
.L80078498:
/* 79098 80078498 5420000E */  bnel       $at, $zero, .L800784D4
/* 7909C 8007849C 28C10004 */   slti      $at, $a2, 0x4
/* 790A0 800784A0 8C820000 */  lw         $v0, 0x0($a0)
/* 790A4 800784A4 8C830004 */  lw         $v1, 0x4($a0)
/* 790A8 800784A8 8C880008 */  lw         $t0, 0x8($a0)
/* 790AC 800784AC 8C89000C */  lw         $t1, 0xC($a0)
/* 790B0 800784B0 24840010 */  addiu      $a0, $a0, 0x10
/* 790B4 800784B4 24A50010 */  addiu      $a1, $a1, 0x10
/* 790B8 800784B8 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 790BC 800784BC ACA2FFF0 */  sw         $v0, -0x10($a1)
/* 790C0 800784C0 ACA3FFF4 */  sw         $v1, -0xC($a1)
/* 790C4 800784C4 ACA8FFF8 */  sw         $t0, -0x8($a1)
/* 790C8 800784C8 1000FFF2 */  b          .L80078494
/* 790CC 800784CC ACA9FFFC */   sw        $t1, -0x4($a1)
.L800784D0:
/* 790D0 800784D0 28C10004 */  slti       $at, $a2, 0x4
.L800784D4:
/* 790D4 800784D4 1420FFB5 */  bnez       $at, .L800783AC
/* 790D8 800784D8 00000000 */   nop
/* 790DC 800784DC 8C820000 */  lw         $v0, 0x0($a0)
/* 790E0 800784E0 24840004 */  addiu      $a0, $a0, 0x4
/* 790E4 800784E4 24A50004 */  addiu      $a1, $a1, 0x4
/* 790E8 800784E8 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 790EC 800784EC 1000FFF8 */  b          .L800784D0
/* 790F0 800784F0 ACA2FFFC */   sw        $v0, -0x4($a1)
/* 790F4 800784F4 28C10010 */  slti       $at, $a2, 0x10
.L800784F8:
/* 790F8 800784F8 00862020 */  add        $a0, $a0, $a2
/* 790FC 800784FC 14200005 */  bnez       $at, .L80078514
/* 79100 80078500 00A62820 */   add       $a1, $a1, $a2
/* 79104 80078504 30820003 */  andi       $v0, $a0, 0x3
/* 79108 80078508 30A30003 */  andi       $v1, $a1, 0x3
/* 7910C 8007850C 1043000D */  beq        $v0, $v1, .L80078544
/* 79110 80078510 00000000 */   nop
.L80078514:
/* 79114 80078514 10C0FFAD */  beqz       $a2, .L800783CC
/* 79118 80078518 00000000 */   nop
/* 7911C 8007851C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 79120 80078520 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 79124 80078524 00861823 */  subu       $v1, $a0, $a2
.L80078528:
/* 79128 80078528 80820000 */  lb         $v0, 0x0($a0)
/* 7912C 8007852C 2484FFFF */  addiu      $a0, $a0, -0x1
/* 79130 80078530 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 79134 80078534 1483FFFC */  bne        $a0, $v1, .L80078528
/* 79138 80078538 A0A20001 */   sb        $v0, 0x1($a1)
/* 7913C 8007853C 03E00008 */  jr         $ra
/* 79140 80078540 00E01025 */   or        $v0, $a3, $zero
.L80078544:
/* 79144 80078544 10400018 */  beqz       $v0, .L800785A8
/* 79148 80078548 24010003 */   addiu     $at, $zero, 0x3
/* 7914C 8007854C 1041000F */  beq        $v0, $at, .L8007858C
/* 79150 80078550 24010002 */   addiu     $at, $zero, 0x2
/* 79154 80078554 50410008 */  beql       $v0, $at, .L80078578
/* 79158 80078558 8482FFFE */   lh        $v0, -0x2($a0)
/* 7915C 8007855C 8082FFFF */  lb         $v0, -0x1($a0)
/* 79160 80078560 2484FFFF */  addiu      $a0, $a0, -0x1
/* 79164 80078564 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 79168 80078568 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 7916C 8007856C 1000000E */  b          .L800785A8
/* 79170 80078570 A0A20000 */   sb        $v0, 0x0($a1)
/* 79174 80078574 8482FFFE */  lh         $v0, -0x2($a0)
.L80078578:
/* 79178 80078578 2484FFFE */  addiu      $a0, $a0, -0x2
/* 7917C 8007857C 24A5FFFE */  addiu      $a1, $a1, -0x2
/* 79180 80078580 24C6FFFE */  addiu      $a2, $a2, -0x2
/* 79184 80078584 10000008 */  b          .L800785A8
/* 79188 80078588 A4A20000 */   sh        $v0, 0x0($a1)
.L8007858C:
/* 7918C 8007858C 8082FFFF */  lb         $v0, -0x1($a0)
/* 79190 80078590 8483FFFD */  lh         $v1, -0x3($a0)
/* 79194 80078594 2484FFFD */  addiu      $a0, $a0, -0x3
/* 79198 80078598 24A5FFFD */  addiu      $a1, $a1, -0x3
/* 7919C 8007859C 24C6FFFD */  addiu      $a2, $a2, -0x3
/* 791A0 800785A0 A0A20002 */  sb         $v0, 0x2($a1)
/* 791A4 800785A4 A4A30000 */  sh         $v1, 0x0($a1)
.L800785A8:
/* 791A8 800785A8 28C10020 */  slti       $at, $a2, 0x20
/* 791AC 800785AC 54200016 */  bnel       $at, $zero, .L80078608
/* 791B0 800785B0 28C10010 */   slti      $at, $a2, 0x10
/* 791B4 800785B4 8C82FFFC */  lw         $v0, -0x4($a0)
/* 791B8 800785B8 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 791BC 800785BC 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 791C0 800785C0 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 791C4 800785C4 8C8AFFEC */  lw         $t2, -0x14($a0)
/* 791C8 800785C8 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* 791CC 800785CC 8C8CFFE4 */  lw         $t4, -0x1C($a0)
/* 791D0 800785D0 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* 791D4 800785D4 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 791D8 800785D8 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 791DC 800785DC 24C6FFE0 */  addiu      $a2, $a2, -0x20
/* 791E0 800785E0 ACA2001C */  sw         $v0, 0x1C($a1)
/* 791E4 800785E4 ACA30018 */  sw         $v1, 0x18($a1)
/* 791E8 800785E8 ACA80014 */  sw         $t0, 0x14($a1)
/* 791EC 800785EC ACA90010 */  sw         $t1, 0x10($a1)
/* 791F0 800785F0 ACAA000C */  sw         $t2, 0xC($a1)
/* 791F4 800785F4 ACAB0008 */  sw         $t3, 0x8($a1)
/* 791F8 800785F8 ACAC0004 */  sw         $t4, 0x4($a1)
/* 791FC 800785FC 1000FFEA */  b          .L800785A8
/* 79200 80078600 ACAD0000 */   sw        $t5, 0x0($a1)
.L80078604:
/* 79204 80078604 28C10010 */  slti       $at, $a2, 0x10
.L80078608:
/* 79208 80078608 5420000E */  bnel       $at, $zero, .L80078644
/* 7920C 8007860C 28C10004 */   slti      $at, $a2, 0x4
/* 79210 80078610 8C82FFFC */  lw         $v0, -0x4($a0)
/* 79214 80078614 8C83FFF8 */  lw         $v1, -0x8($a0)
/* 79218 80078618 8C88FFF4 */  lw         $t0, -0xC($a0)
/* 7921C 8007861C 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 79220 80078620 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 79224 80078624 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* 79228 80078628 24C6FFF0 */  addiu      $a2, $a2, -0x10
/* 7922C 8007862C ACA2000C */  sw         $v0, 0xC($a1)
/* 79230 80078630 ACA30008 */  sw         $v1, 0x8($a1)
/* 79234 80078634 ACA80004 */  sw         $t0, 0x4($a1)
/* 79238 80078638 1000FFF2 */  b          .L80078604
/* 7923C 8007863C ACA90000 */   sw        $t1, 0x0($a1)
.L80078640:
/* 79240 80078640 28C10004 */  slti       $at, $a2, 0x4
.L80078644:
/* 79244 80078644 1420FFB3 */  bnez       $at, .L80078514
/* 79248 80078648 00000000 */   nop
/* 7924C 8007864C 8C82FFFC */  lw         $v0, -0x4($a0)
/* 79250 80078650 2484FFFC */  addiu      $a0, $a0, -0x4
/* 79254 80078654 24A5FFFC */  addiu      $a1, $a1, -0x4
/* 79258 80078658 24C6FFFC */  addiu      $a2, $a2, -0x4
/* 7925C 8007865C 1000FFF8 */  b          .L80078640
/* 79260 80078660 ACA20000 */   sw        $v0, 0x0($a1)
/* 79264 80078664 00000000 */  nop
/* 79268 80078668 00000000 */  nop
/* 7926C 8007866C 00000000 */  nop
