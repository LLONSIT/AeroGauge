.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000F920
/* 10520 8000F920 3C048008 */  lui        $a0, %hi(D_800821C0)
/* 10524 8000F924 248421C0 */  addiu      $a0, $a0, %lo(D_800821C0)
/* 10528 8000F928 8C820000 */  lw         $v0, 0x0($a0)
/* 1052C 8000F92C 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 10530 8000F930 2463FF90 */  addiu      $v1, $v1, %lo(D_8013FF90)
/* 10534 8000F934 240E0007 */  addiu      $t6, $zero, 0x7
/* 10538 8000F938 240F0008 */  addiu      $t7, $zero, 0x8
/* 1053C 8000F93C 3C198008 */  lui        $t9, %hi(D_800821B0)
/* 10540 8000F940 0002C080 */  sll        $t8, $v0, 2
/* 10544 8000F944 A06E0000 */  sb         $t6, 0x0($v1)
/* 10548 8000F948 A0600007 */  sb         $zero, 0x7($v1)
/* 1054C 8000F94C A06F0009 */  sb         $t7, 0x9($v1)
/* 10550 8000F950 0338C821 */  addu       $t9, $t9, $t8
/* 10554 8000F954 8F3921B0 */  lw         $t9, %lo(D_800821B0)($t9)
/* 10558 8000F958 24080001 */  addiu      $t0, $zero, 0x1
/* 1055C 8000F95C 2409003C */  addiu      $t1, $zero, 0x3C
/* 10560 8000F960 24010004 */  addiu      $at, $zero, 0x4
/* 10564 8000F964 244A0001 */  addiu      $t2, $v0, 0x1
/* 10568 8000F968 A0680005 */  sb         $t0, 0x5($v1)
/* 1056C 8000F96C A4690002 */  sh         $t1, 0x2($v1)
/* 10570 8000F970 AC8A0000 */  sw         $t2, 0x0($a0)
/* 10574 8000F974 15410002 */  bne        $t2, $at, .L8000F980
/* 10578 8000F978 A079000B */   sb        $t9, 0xB($v1)
/* 1057C 8000F97C AC800000 */  sw         $zero, 0x0($a0)
.L8000F980:
/* 10580 8000F980 240C0005 */  addiu      $t4, $zero, 0x5
/* 10584 8000F984 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 10588 8000F988 03E00008 */  jr         $ra
/* 1058C 8000F98C AC2CFF84 */   sw        $t4, %lo(D_8013FF84)($at)

glabel func_8000F990
/* 10590 8000F990 3C038008 */  lui        $v1, %hi(D_800821C4)
/* 10594 8000F994 906321C4 */  lbu        $v1, %lo(D_800821C4)($v1)
/* 10598 8000F998 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1059C 8000F99C AFBF0014 */  sw         $ra, 0x14($sp)
/* 105A0 8000F9A0 AFA40020 */  sw         $a0, 0x20($sp)
/* 105A4 8000F9A4 04600018 */  bltz       $v1, .L8000FA08
/* 105A8 8000F9A8 00601025 */   or        $v0, $v1, $zero
/* 105AC 8000F9AC 2841001E */  slti       $at, $v0, 0x1E
/* 105B0 8000F9B0 10200015 */  beqz       $at, .L8000FA08
/* 105B4 8000F9B4 00002825 */   or        $a1, $zero, $zero
/* 105B8 8000F9B8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 105BC 8000F9BC 240400FF */  addiu      $a0, $zero, 0xFF
/* 105C0 8000F9C0 00003025 */  or         $a2, $zero, $zero
/* 105C4 8000F9C4 240700FF */  addiu      $a3, $zero, 0xFF
/* 105C8 8000F9C8 0C007DD7 */  jal        func_8001F75C
/* 105CC 8000F9CC AFAF001C */   sw        $t7, 0x1C($sp)
/* 105D0 8000F9D0 24040020 */  addiu      $a0, $zero, 0x20
/* 105D4 8000F9D4 0C007DAD */  jal        osSetTime
/* 105D8 8000F9D8 24050070 */   addiu     $a1, $zero, 0x70
/* 105DC 8000F9DC 3C058009 */  lui        $a1, %hi(D_80095590)
/* 105E0 8000F9E0 3C068009 */  lui        $a2, %hi(D_8008C0EC)
/* 105E4 8000F9E4 24C6C0EC */  addiu      $a2, $a2, %lo(D_8008C0EC)
/* 105E8 8000F9E8 24A55590 */  addiu      $a1, $a1, %lo(D_80095590)
/* 105EC 8000F9EC 0C007DE4 */  jal        func_8001F790
/* 105F0 8000F9F0 27A4001C */   addiu     $a0, $sp, 0x1C
/* 105F4 8000F9F4 8FB8001C */  lw         $t8, 0x1C($sp)
/* 105F8 8000F9F8 8FB90020 */  lw         $t9, 0x20($sp)
/* 105FC 8000F9FC 3C038008 */  lui        $v1, %hi(D_800821C4)
/* 10600 8000FA00 AF380000 */  sw         $t8, 0x0($t9)
/* 10604 8000FA04 906321C4 */  lbu        $v1, %lo(D_800821C4)($v1)
.L8000FA08:
/* 10608 8000FA08 24630001 */  addiu      $v1, $v1, 0x1
/* 1060C 8000FA0C 306800FF */  andi       $t0, $v1, 0xFF
/* 10610 8000FA10 3C018008 */  lui        $at, %hi(D_800821C4)
/* 10614 8000FA14 A02821C4 */  sb         $t0, %lo(D_800821C4)($at)
/* 10618 8000FA18 2401003C */  addiu      $at, $zero, 0x3C
/* 1061C 8000FA1C 15010002 */  bne        $t0, $at, .L8000FA28
/* 10620 8000FA20 3C018008 */   lui       $at, %hi(D_800821C4)
/* 10624 8000FA24 A02021C4 */  sb         $zero, %lo(D_800821C4)($at)
.L8000FA28:
/* 10628 8000FA28 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1062C 8000FA2C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 10630 8000FA30 03E00008 */  jr         $ra
/* 10634 8000FA34 00000000 */   nop
/* 10638 8000FA38 00000000 */  nop
/* 1063C 8000FA3C 00000000 */  nop
