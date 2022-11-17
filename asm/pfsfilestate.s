.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006D2D0
/* 6DED0 8006D2D0 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 6DED4 8006D2D4 AFA40150 */  sw         $a0, 0x150($sp)
/* 6DED8 8006D2D8 8FAF0150 */  lw         $t7, 0x150($sp)
/* 6DEDC 8006D2DC AFA50154 */  sw         $a1, 0x154($sp)
/* 6DEE0 8006D2E0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6DEE4 8006D2E4 AFA60158 */  sw         $a2, 0x158($sp)
/* 6DEE8 8006D2E8 8FAE0154 */  lw         $t6, 0x154($sp)
/* 6DEEC 8006D2EC 8DF80050 */  lw         $t8, 0x50($t7)
/* 6DEF0 8006D2F0 01D8082A */  slt        $at, $t6, $t8
/* 6DEF4 8006D2F4 10200003 */  beqz       $at, .L8006D304
/* 6DEF8 8006D2F8 00000000 */   nop
/* 6DEFC 8006D2FC 05C10003 */  bgez       $t6, .L8006D30C
/* 6DF00 8006D300 00000000 */   nop
.L8006D304:
/* 6DF04 8006D304 100000AA */  b          .L8006D5B0
/* 6DF08 8006D308 24020005 */   addiu     $v0, $zero, 0x5
.L8006D30C:
/* 6DF0C 8006D30C 8FB90150 */  lw         $t9, 0x150($sp)
/* 6DF10 8006D310 8F280000 */  lw         $t0, 0x0($t9)
/* 6DF14 8006D314 31090001 */  andi       $t1, $t0, 0x1
/* 6DF18 8006D318 15200003 */  bnez       $t1, .L8006D328
/* 6DF1C 8006D31C 00000000 */   nop
/* 6DF20 8006D320 100000A3 */  b          .L8006D5B0
/* 6DF24 8006D324 24020005 */   addiu     $v0, $zero, 0x5
.L8006D328:
/* 6DF28 8006D328 0C01D380 */  jal        __osCheckId
/* 6DF2C 8006D32C 8FA40150 */   lw        $a0, 0x150($sp)
/* 6DF30 8006D330 24010002 */  addiu      $at, $zero, 0x2
/* 6DF34 8006D334 14410003 */  bne        $v0, $at, .L8006D344
/* 6DF38 8006D338 00000000 */   nop
/* 6DF3C 8006D33C 1000009C */  b          .L8006D5B0
/* 6DF40 8006D340 24020002 */   addiu     $v0, $zero, 0x2
.L8006D344:
/* 6DF44 8006D344 8FAA0150 */  lw         $t2, 0x150($sp)
/* 6DF48 8006D348 914B0065 */  lbu        $t3, 0x65($t2)
/* 6DF4C 8006D34C 1160000A */  beqz       $t3, .L8006D378
/* 6DF50 8006D350 00000000 */   nop
/* 6DF54 8006D354 A1400065 */  sb         $zero, 0x65($t2)
/* 6DF58 8006D358 0C01D487 */  jal        __osPfsSelectBank
/* 6DF5C 8006D35C 8FA40150 */   lw        $a0, 0x150($sp)
/* 6DF60 8006D360 AFA2014C */  sw         $v0, 0x14C($sp)
/* 6DF64 8006D364 8FAC014C */  lw         $t4, 0x14C($sp)
/* 6DF68 8006D368 11800003 */  beqz       $t4, .L8006D378
/* 6DF6C 8006D36C 00000000 */   nop
/* 6DF70 8006D370 1000008F */  b          .L8006D5B0
/* 6DF74 8006D374 01801025 */   or        $v0, $t4, $zero
.L8006D378:
/* 6DF78 8006D378 8FAD0150 */  lw         $t5, 0x150($sp)
/* 6DF7C 8006D37C 8FB80154 */  lw         $t8, 0x154($sp)
/* 6DF80 8006D380 27A70028 */  addiu      $a3, $sp, 0x28
/* 6DF84 8006D384 8DAF005C */  lw         $t7, 0x5C($t5)
/* 6DF88 8006D388 8DA40004 */  lw         $a0, 0x4($t5)
/* 6DF8C 8006D38C 8DA50008 */  lw         $a1, 0x8($t5)
/* 6DF90 8006D390 0C01D4A4 */  jal        __osContRamRead
/* 6DF94 8006D394 01F83021 */   addu      $a2, $t7, $t8
/* 6DF98 8006D398 AFA2014C */  sw         $v0, 0x14C($sp)
/* 6DF9C 8006D39C 8FAE014C */  lw         $t6, 0x14C($sp)
/* 6DFA0 8006D3A0 11C00003 */  beqz       $t6, .L8006D3B0
/* 6DFA4 8006D3A4 00000000 */   nop
/* 6DFA8 8006D3A8 10000081 */  b          .L8006D5B0
/* 6DFAC 8006D3AC 01C01025 */   or        $v0, $t6, $zero
.L8006D3B0:
/* 6DFB0 8006D3B0 97B9002C */  lhu        $t9, 0x2C($sp)
/* 6DFB4 8006D3B4 13200004 */  beqz       $t9, .L8006D3C8
/* 6DFB8 8006D3B8 00000000 */   nop
/* 6DFBC 8006D3BC 8FA80028 */  lw         $t0, 0x28($sp)
/* 6DFC0 8006D3C0 15000003 */  bnez       $t0, .L8006D3D0
/* 6DFC4 8006D3C4 00000000 */   nop
.L8006D3C8:
/* 6DFC8 8006D3C8 10000079 */  b          .L8006D5B0
/* 6DFCC 8006D3CC 24020005 */   addiu     $v0, $zero, 0x5
.L8006D3D0:
/* 6DFD0 8006D3D0 8FAB0150 */  lw         $t3, 0x150($sp)
/* 6DFD4 8006D3D4 97A9002E */  lhu        $t1, 0x2E($sp)
/* 6DFD8 8006D3D8 8D6A0060 */  lw         $t2, 0x60($t3)
/* 6DFDC 8006D3DC 012A082A */  slt        $at, $t1, $t2
/* 6DFE0 8006D3E0 10200003 */  beqz       $at, .L8006D3F0
/* 6DFE4 8006D3E4 00000000 */   nop
/* 6DFE8 8006D3E8 10000071 */  b          .L8006D5B0
/* 6DFEC 8006D3EC 24020003 */   addiu     $v0, $zero, 0x3
.L8006D3F0:
/* 6DFF0 8006D3F0 93AC002F */  lbu        $t4, 0x2F($sp)
/* 6DFF4 8006D3F4 93AD002E */  lbu        $t5, 0x2E($sp)
/* 6DFF8 8006D3F8 8FAF0150 */  lw         $t7, 0x150($sp)
/* 6DFFC 8006D3FC AFA00148 */  sw         $zero, 0x148($sp)
/* 6E000 8006D400 A3AC001E */  sb         $t4, 0x1E($sp)
/* 6E004 8006D404 A3AD001F */  sb         $t5, 0x1F($sp)
/* 6E008 8006D408 91F80064 */  lbu        $t8, 0x64($t7)
/* 6E00C 8006D40C 01B8082A */  slt        $at, $t5, $t8
/* 6E010 8006D410 1020003E */  beqz       $at, .L8006D50C
/* 6E014 8006D414 00000000 */   nop
.L8006D418:
/* 6E018 8006D418 8FA40150 */  lw         $a0, 0x150($sp)
/* 6E01C 8006D41C 27A50048 */  addiu      $a1, $sp, 0x48
/* 6E020 8006D420 00003025 */  or         $a2, $zero, $zero
/* 6E024 8006D424 0C01D3BF */  jal        func_80074EFC
/* 6E028 8006D428 93A7001F */   lbu       $a3, 0x1F($sp)
/* 6E02C 8006D42C AFA2014C */  sw         $v0, 0x14C($sp)
/* 6E030 8006D430 8FAE014C */  lw         $t6, 0x14C($sp)
/* 6E034 8006D434 11C00003 */  beqz       $t6, .L8006D444
/* 6E038 8006D438 00000000 */   nop
/* 6E03C 8006D43C 1000005C */  b          .L8006D5B0
/* 6E040 8006D440 01C01025 */   or        $v0, $t6, $zero
.L8006D444:
/* 6E044 8006D444 93A8001E */  lbu        $t0, 0x1E($sp)
/* 6E048 8006D448 27A90048 */  addiu      $t1, $sp, 0x48
/* 6E04C 8006D44C 27B90024 */  addiu      $t9, $sp, 0x24
/* 6E050 8006D450 00085840 */  sll        $t3, $t0, 1
/* 6E054 8006D454 01695021 */  addu       $t2, $t3, $t1
/* 6E058 8006D458 95410000 */  lhu        $at, 0x0($t2)
/* 6E05C 8006D45C A7210000 */  sh         $at, 0x0($t9)
/* 6E060 8006D460 8FAD0148 */  lw         $t5, 0x148($sp)
/* 6E064 8006D464 8FA80150 */  lw         $t0, 0x150($sp)
/* 6E068 8006D468 97AE0024 */  lhu        $t6, 0x24($sp)
/* 6E06C 8006D46C 25B80001 */  addiu      $t8, $t5, 0x1
/* 6E070 8006D470 AFB80148 */  sw         $t8, 0x148($sp)
/* 6E074 8006D474 8D0B0060 */  lw         $t3, 0x60($t0)
/* 6E078 8006D478 01CB082A */  slt        $at, $t6, $t3
/* 6E07C 8006D47C 14200019 */  bnez       $at, .L8006D4E4
/* 6E080 8006D480 00000000 */   nop
.L8006D484:
/* 6E084 8006D484 8FA90148 */  lw         $t1, 0x148($sp)
/* 6E088 8006D488 93AA0025 */  lbu        $t2, 0x25($sp)
/* 6E08C 8006D48C 27AD0048 */  addiu      $t5, $sp, 0x48
/* 6E090 8006D490 252C0001 */  addiu      $t4, $t1, 0x1
/* 6E094 8006D494 000A7840 */  sll        $t7, $t2, 1
/* 6E098 8006D498 AFAC0148 */  sw         $t4, 0x148($sp)
/* 6E09C 8006D49C 01EDC021 */  addu       $t8, $t7, $t5
/* 6E0A0 8006D4A0 97010000 */  lhu        $at, 0x0($t8)
/* 6E0A4 8006D4A4 27B90024 */  addiu      $t9, $sp, 0x24
/* 6E0A8 8006D4A8 A7210000 */  sh         $at, 0x0($t9)
/* 6E0AC 8006D4AC 93AC001F */  lbu        $t4, 0x1F($sp)
/* 6E0B0 8006D4B0 93A90024 */  lbu        $t1, 0x24($sp)
/* 6E0B4 8006D4B4 112C0005 */  beq        $t1, $t4, .L8006D4CC
/* 6E0B8 8006D4B8 00000000 */   nop
/* 6E0BC 8006D4BC 93AA0025 */  lbu        $t2, 0x25($sp)
/* 6E0C0 8006D4C0 A3A9001F */  sb         $t1, 0x1F($sp)
/* 6E0C4 8006D4C4 10000007 */  b          .L8006D4E4
/* 6E0C8 8006D4C8 A3AA001E */   sb        $t2, 0x1E($sp)
.L8006D4CC:
/* 6E0CC 8006D4CC 8FAD0150 */  lw         $t5, 0x150($sp)
/* 6E0D0 8006D4D0 97AF0024 */  lhu        $t7, 0x24($sp)
/* 6E0D4 8006D4D4 8DAE0060 */  lw         $t6, 0x60($t5)
/* 6E0D8 8006D4D8 01EE082A */  slt        $at, $t7, $t6
/* 6E0DC 8006D4DC 1020FFE9 */  beqz       $at, .L8006D484
/* 6E0E0 8006D4E0 00000000 */   nop
.L8006D4E4:
/* 6E0E4 8006D4E4 97A80024 */  lhu        $t0, 0x24($sp)
/* 6E0E8 8006D4E8 24010001 */  addiu      $at, $zero, 0x1
/* 6E0EC 8006D4EC 11010007 */  beq        $t0, $at, .L8006D50C
/* 6E0F0 8006D4F0 00000000 */   nop
/* 6E0F4 8006D4F4 8FB80150 */  lw         $t8, 0x150($sp)
/* 6E0F8 8006D4F8 93B9001F */  lbu        $t9, 0x1F($sp)
/* 6E0FC 8006D4FC 930B0064 */  lbu        $t3, 0x64($t8)
/* 6E100 8006D500 032B082A */  slt        $at, $t9, $t3
/* 6E104 8006D504 1420FFC4 */  bnez       $at, .L8006D418
/* 6E108 8006D508 00000000 */   nop
.L8006D50C:
/* 6E10C 8006D50C 97AC0024 */  lhu        $t4, 0x24($sp)
/* 6E110 8006D510 24010001 */  addiu      $at, $zero, 0x1
/* 6E114 8006D514 11810003 */  beq        $t4, $at, .L8006D524
/* 6E118 8006D518 00000000 */   nop
/* 6E11C 8006D51C 10000024 */  b          .L8006D5B0
/* 6E120 8006D520 24020003 */   addiu     $v0, $zero, 0x3
.L8006D524:
/* 6E124 8006D524 8FA90148 */  lw         $t1, 0x148($sp)
/* 6E128 8006D528 8FAD0158 */  lw         $t5, 0x158($sp)
/* 6E12C 8006D52C 00095200 */  sll        $t2, $t1, 8
/* 6E130 8006D530 ADAA0000 */  sw         $t2, 0x0($t5)
/* 6E134 8006D534 8FAE0158 */  lw         $t6, 0x158($sp)
/* 6E138 8006D538 97AF002C */  lhu        $t7, 0x2C($sp)
/* 6E13C 8006D53C A5CF0008 */  sh         $t7, 0x8($t6)
/* 6E140 8006D540 8FB80158 */  lw         $t8, 0x158($sp)
/* 6E144 8006D544 8FA80028 */  lw         $t0, 0x28($sp)
/* 6E148 8006D548 AF080004 */  sw         $t0, 0x4($t8)
/* 6E14C 8006D54C AFA00020 */  sw         $zero, 0x20($sp)
.L8006D550:
/* 6E150 8006D550 8FB90020 */  lw         $t9, 0x20($sp)
/* 6E154 8006D554 8FAC0158 */  lw         $t4, 0x158($sp)
/* 6E158 8006D558 03B95821 */  addu       $t3, $sp, $t9
/* 6E15C 8006D55C 916B0038 */  lbu        $t3, 0x38($t3)
/* 6E160 8006D560 01994821 */  addu       $t1, $t4, $t9
/* 6E164 8006D564 A12B000E */  sb         $t3, 0xE($t1)
/* 6E168 8006D568 8FAA0020 */  lw         $t2, 0x20($sp)
/* 6E16C 8006D56C 254D0001 */  addiu      $t5, $t2, 0x1
/* 6E170 8006D570 29A10010 */  slti       $at, $t5, 0x10
/* 6E174 8006D574 1420FFF6 */  bnez       $at, .L8006D550
/* 6E178 8006D578 AFAD0020 */   sw        $t5, 0x20($sp)
/* 6E17C 8006D57C AFA00020 */  sw         $zero, 0x20($sp)
.L8006D580:
/* 6E180 8006D580 8FAF0020 */  lw         $t7, 0x20($sp)
/* 6E184 8006D584 8FA80158 */  lw         $t0, 0x158($sp)
/* 6E188 8006D588 03AF7021 */  addu       $t6, $sp, $t7
/* 6E18C 8006D58C 91CE0034 */  lbu        $t6, 0x34($t6)
/* 6E190 8006D590 010FC021 */  addu       $t8, $t0, $t7
/* 6E194 8006D594 A30E000A */  sb         $t6, 0xA($t8)
/* 6E198 8006D598 8FAC0020 */  lw         $t4, 0x20($sp)
/* 6E19C 8006D59C 25990001 */  addiu      $t9, $t4, 0x1
/* 6E1A0 8006D5A0 2B210004 */  slti       $at, $t9, 0x4
/* 6E1A4 8006D5A4 1420FFF6 */  bnez       $at, .L8006D580
/* 6E1A8 8006D5A8 AFB90020 */   sw        $t9, 0x20($sp)
/* 6E1AC 8006D5AC 00001025 */  or         $v0, $zero, $zero
.L8006D5B0:
/* 6E1B0 8006D5B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E1B4 8006D5B4 27BD0150 */  addiu      $sp, $sp, 0x150
/* 6E1B8 8006D5B8 03E00008 */  jr         $ra
/* 6E1BC 8006D5BC 00000000 */   nop
