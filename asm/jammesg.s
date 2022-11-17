.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006FD30
/* 70930 8006FD30 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 70934 8006FD34 AFBF001C */  sw         $ra, 0x1C($sp)
/* 70938 8006FD38 AFA40028 */  sw         $a0, 0x28($sp)
/* 7093C 8006FD3C AFA5002C */  sw         $a1, 0x2C($sp)
/* 70940 8006FD40 AFA60030 */  sw         $a2, 0x30($sp)
/* 70944 8006FD44 AFB10018 */  sw         $s1, 0x18($sp)
/* 70948 8006FD48 0C01C218 */  jal        __osDisableInt
/* 7094C 8006FD4C AFB00014 */   sw        $s0, 0x14($sp)
/* 70950 8006FD50 8FAE0028 */  lw         $t6, 0x28($sp)
/* 70954 8006FD54 00408025 */  or         $s0, $v0, $zero
/* 70958 8006FD58 8DCF0008 */  lw         $t7, 0x8($t6)
/* 7095C 8006FD5C 8DD80010 */  lw         $t8, 0x10($t6)
/* 70960 8006FD60 01F8082A */  slt        $at, $t7, $t8
/* 70964 8006FD64 14200018 */  bnez       $at, .L8006FDC8
/* 70968 8006FD68 00000000 */   nop
.L8006FD6C:
/* 7096C 8006FD6C 8FB90030 */  lw         $t9, 0x30($sp)
/* 70970 8006FD70 24010001 */  addiu      $at, $zero, 0x1
/* 70974 8006FD74 1721000A */  bne        $t9, $at, .L8006FDA0
/* 70978 8006FD78 00000000 */   nop
/* 7097C 8006FD7C 3C098009 */  lui        $t1, %hi(__osRunningThread)
/* 70980 8006FD80 8D294880 */  lw         $t1, %lo(__osRunningThread)($t1)
/* 70984 8006FD84 24080008 */  addiu      $t0, $zero, 0x8
/* 70988 8006FD88 A5280010 */  sh         $t0, 0x10($t1)
/* 7098C 8006FD8C 8FA40028 */  lw         $a0, 0x28($sp)
/* 70990 8006FD90 0C01C3B3 */  jal        __osEnqueueAndYield
/* 70994 8006FD94 24840004 */   addiu     $a0, $a0, 0x4
/* 70998 8006FD98 10000005 */  b          .L8006FDB0
/* 7099C 8006FD9C 00000000 */   nop
.L8006FDA0:
/* 709A0 8006FDA0 0C01C220 */  jal        __osRestoreInt
/* 709A4 8006FDA4 02002025 */   or        $a0, $s0, $zero
/* 709A8 8006FDA8 10000030 */  b          .L8006FE6C
/* 709AC 8006FDAC 2402FFFF */   addiu     $v0, $zero, -0x1
.L8006FDB0:
/* 709B0 8006FDB0 8FAA0028 */  lw         $t2, 0x28($sp)
/* 709B4 8006FDB4 8D4B0008 */  lw         $t3, 0x8($t2)
/* 709B8 8006FDB8 8D4C0010 */  lw         $t4, 0x10($t2)
/* 709BC 8006FDBC 016C082A */  slt        $at, $t3, $t4
/* 709C0 8006FDC0 1020FFEA */  beqz       $at, .L8006FD6C
/* 709C4 8006FDC4 00000000 */   nop
.L8006FDC8:
/* 709C8 8006FDC8 8FAD0028 */  lw         $t5, 0x28($sp)
/* 709CC 8006FDCC 8DAE000C */  lw         $t6, 0xC($t5)
/* 709D0 8006FDD0 8DAF0010 */  lw         $t7, 0x10($t5)
/* 709D4 8006FDD4 01CFC021 */  addu       $t8, $t6, $t7
/* 709D8 8006FDD8 2719FFFF */  addiu      $t9, $t8, -0x1
/* 709DC 8006FDDC 032F001A */  div        $zero, $t9, $t7
/* 709E0 8006FDE0 00004010 */  mfhi       $t0
/* 709E4 8006FDE4 ADA8000C */  sw         $t0, 0xC($t5)
/* 709E8 8006FDE8 8FAA0028 */  lw         $t2, 0x28($sp)
/* 709EC 8006FDEC 8FA9002C */  lw         $t1, 0x2C($sp)
/* 709F0 8006FDF0 15E00002 */  bnez       $t7, .L8006FDFC
/* 709F4 8006FDF4 00000000 */   nop
/* 709F8 8006FDF8 0007000D */  break      7
.L8006FDFC:
/* 709FC 8006FDFC 2401FFFF */  addiu      $at, $zero, -0x1
/* 70A00 8006FE00 15E10004 */  bne        $t7, $at, .L8006FE14
/* 70A04 8006FE04 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 70A08 8006FE08 17210002 */  bne        $t9, $at, .L8006FE14
/* 70A0C 8006FE0C 00000000 */   nop
/* 70A10 8006FE10 0006000D */  break      6
.L8006FE14:
/* 70A14 8006FE14 8D4C000C */  lw         $t4, 0xC($t2)
/* 70A18 8006FE18 8D4B0014 */  lw         $t3, 0x14($t2)
/* 70A1C 8006FE1C 000C7080 */  sll        $t6, $t4, 2
/* 70A20 8006FE20 016EC021 */  addu       $t8, $t3, $t6
/* 70A24 8006FE24 AF090000 */  sw         $t1, 0x0($t8)
/* 70A28 8006FE28 8FB90028 */  lw         $t9, 0x28($sp)
/* 70A2C 8006FE2C 8F2F0008 */  lw         $t7, 0x8($t9)
/* 70A30 8006FE30 25E80001 */  addiu      $t0, $t7, 0x1
/* 70A34 8006FE34 AF280008 */  sw         $t0, 0x8($t9)
/* 70A38 8006FE38 8FAD0028 */  lw         $t5, 0x28($sp)
/* 70A3C 8006FE3C 8DAA0000 */  lw         $t2, 0x0($t5)
/* 70A40 8006FE40 8D4C0000 */  lw         $t4, 0x0($t2)
/* 70A44 8006FE44 11800006 */  beqz       $t4, .L8006FE60
/* 70A48 8006FE48 00000000 */   nop
/* 70A4C 8006FE4C 0C01C405 */  jal        __osPopThread
/* 70A50 8006FE50 01A02025 */   or        $a0, $t5, $zero
/* 70A54 8006FE54 00408825 */  or         $s1, $v0, $zero
/* 70A58 8006FE58 0C019F40 */  jal        osStartThread
/* 70A5C 8006FE5C 02202025 */   or        $a0, $s1, $zero
.L8006FE60:
/* 70A60 8006FE60 0C01C220 */  jal        __osRestoreInt
/* 70A64 8006FE64 02002025 */   or        $a0, $s0, $zero
/* 70A68 8006FE68 00001025 */  or         $v0, $zero, $zero
.L8006FE6C:
/* 70A6C 8006FE6C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 70A70 8006FE70 8FB00014 */  lw         $s0, 0x14($sp)
/* 70A74 8006FE74 8FB10018 */  lw         $s1, 0x18($sp)
/* 70A78 8006FE78 03E00008 */  jr         $ra
/* 70A7C 8006FE7C 27BD0028 */   addiu     $sp, $sp, 0x28
