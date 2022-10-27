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
/* 6DF28 8006D328 0C01D380 */  jal        func_80074E00
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
/* 6DF58 8006D358 0C01D487 */  jal        func_8007521C
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
/* 6DF90 8006D390 0C01D4A4 */  jal        func_80075290
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

glabel func_8006D5C0
/* 6E1C0 8006D5C0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6E1C4 8006D5C4 AFA40068 */  sw         $a0, 0x68($sp)
/* 6E1C8 8006D5C8 8FAE0068 */  lw         $t6, 0x68($sp)
/* 6E1CC 8006D5CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E1D0 8006D5D0 91CF0065 */  lbu        $t7, 0x65($t6)
/* 6E1D4 8006D5D4 11E0000A */  beqz       $t7, .L8006D600
/* 6E1D8 8006D5D8 00000000 */   nop
/* 6E1DC 8006D5DC A1C00065 */  sb         $zero, 0x65($t6)
/* 6E1E0 8006D5E0 0C01D487 */  jal        func_8007521C
/* 6E1E4 8006D5E4 8FA40068 */   lw        $a0, 0x68($sp)
/* 6E1E8 8006D5E8 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E1EC 8006D5EC 8FB8001C */  lw         $t8, 0x1C($sp)
/* 6E1F0 8006D5F0 13000003 */  beqz       $t8, .L8006D600
/* 6E1F4 8006D5F4 00000000 */   nop
/* 6E1F8 8006D5F8 10000084 */  b          .L8006D80C
/* 6E1FC 8006D5FC 03001025 */   or        $v0, $t8, $zero
.L8006D600:
/* 6E200 8006D600 8FB90068 */  lw         $t9, 0x68($sp)
/* 6E204 8006D604 24060001 */  addiu      $a2, $zero, 0x1
/* 6E208 8006D608 27A70040 */  addiu      $a3, $sp, 0x40
/* 6E20C 8006D60C 8F240004 */  lw         $a0, 0x4($t9)
/* 6E210 8006D610 0C01D4A4 */  jal        func_80075290
/* 6E214 8006D614 8F250008 */   lw        $a1, 0x8($t9)
/* 6E218 8006D618 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E21C 8006D61C 8FA8001C */  lw         $t0, 0x1C($sp)
/* 6E220 8006D620 11000003 */  beqz       $t0, .L8006D630
/* 6E224 8006D624 00000000 */   nop
/* 6E228 8006D628 10000078 */  b          .L8006D80C
/* 6E22C 8006D62C 01001025 */   or        $v0, $t0, $zero
.L8006D630:
/* 6E230 8006D630 27A40040 */  addiu      $a0, $sp, 0x40
/* 6E234 8006D634 27A50062 */  addiu      $a1, $sp, 0x62
/* 6E238 8006D638 0C01D163 */  jal        func_8007458C
/* 6E23C 8006D63C 27A60060 */   addiu     $a2, $sp, 0x60
/* 6E240 8006D640 27A90040 */  addiu      $t1, $sp, 0x40
/* 6E244 8006D644 AFA90018 */  sw         $t1, 0x18($sp)
/* 6E248 8006D648 952A001C */  lhu        $t2, 0x1C($t1)
/* 6E24C 8006D64C 97AB0062 */  lhu        $t3, 0x62($sp)
/* 6E250 8006D650 154B0005 */  bne        $t2, $t3, .L8006D668
/* 6E254 8006D654 00000000 */   nop
/* 6E258 8006D658 952C001E */  lhu        $t4, 0x1E($t1)
/* 6E25C 8006D65C 97AD0060 */  lhu        $t5, 0x60($sp)
/* 6E260 8006D660 118D001B */  beq        $t4, $t5, .L8006D6D0
/* 6E264 8006D664 00000000 */   nop
.L8006D668:
/* 6E268 8006D668 8FA40068 */  lw         $a0, 0x68($sp)
/* 6E26C 8006D66C 0C01D283 */  jal        func_80074A0C
/* 6E270 8006D670 8FA50018 */   lw        $a1, 0x18($sp)
/* 6E274 8006D674 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E278 8006D678 8FAF001C */  lw         $t7, 0x1C($sp)
/* 6E27C 8006D67C 2401000A */  addiu      $at, $zero, 0xA
/* 6E280 8006D680 15E1000E */  bne        $t7, $at, .L8006D6BC
/* 6E284 8006D684 00000000 */   nop
/* 6E288 8006D688 8FA40068 */  lw         $a0, 0x68($sp)
/* 6E28C 8006D68C 8FA50018 */  lw         $a1, 0x18($sp)
/* 6E290 8006D690 0C01D17D */  jal        func_800745F4
/* 6E294 8006D694 27A60020 */   addiu     $a2, $sp, 0x20
/* 6E298 8006D698 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E29C 8006D69C 8FAE001C */  lw         $t6, 0x1C($sp)
/* 6E2A0 8006D6A0 11C00003 */  beqz       $t6, .L8006D6B0
/* 6E2A4 8006D6A4 00000000 */   nop
/* 6E2A8 8006D6A8 10000058 */  b          .L8006D80C
/* 6E2AC 8006D6AC 01C01025 */   or        $v0, $t6, $zero
.L8006D6B0:
/* 6E2B0 8006D6B0 27B80020 */  addiu      $t8, $sp, 0x20
/* 6E2B4 8006D6B4 10000006 */  b          .L8006D6D0
/* 6E2B8 8006D6B8 AFB80018 */   sw        $t8, 0x18($sp)
.L8006D6BC:
/* 6E2BC 8006D6BC 8FB9001C */  lw         $t9, 0x1C($sp)
/* 6E2C0 8006D6C0 13200003 */  beqz       $t9, .L8006D6D0
/* 6E2C4 8006D6C4 00000000 */   nop
/* 6E2C8 8006D6C8 10000050 */  b          .L8006D80C
/* 6E2CC 8006D6CC 03201025 */   or        $v0, $t9, $zero
.L8006D6D0:
/* 6E2D0 8006D6D0 8FA80018 */  lw         $t0, 0x18($sp)
/* 6E2D4 8006D6D4 950A0018 */  lhu        $t2, 0x18($t0)
/* 6E2D8 8006D6D8 314B0001 */  andi       $t3, $t2, 0x1
/* 6E2DC 8006D6DC 15600013 */  bnez       $t3, .L8006D72C
/* 6E2E0 8006D6E0 00000000 */   nop
/* 6E2E4 8006D6E4 8FA40068 */  lw         $a0, 0x68($sp)
/* 6E2E8 8006D6E8 01002825 */  or         $a1, $t0, $zero
/* 6E2EC 8006D6EC 0C01D17D */  jal        func_800745F4
/* 6E2F0 8006D6F0 27A60020 */   addiu     $a2, $sp, 0x20
/* 6E2F4 8006D6F4 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E2F8 8006D6F8 8FA9001C */  lw         $t1, 0x1C($sp)
/* 6E2FC 8006D6FC 11200003 */  beqz       $t1, .L8006D70C
/* 6E300 8006D700 00000000 */   nop
/* 6E304 8006D704 10000041 */  b          .L8006D80C
/* 6E308 8006D708 01201025 */   or        $v0, $t1, $zero
.L8006D70C:
/* 6E30C 8006D70C 27AC0020 */  addiu      $t4, $sp, 0x20
/* 6E310 8006D710 AFAC0018 */  sw         $t4, 0x18($sp)
/* 6E314 8006D714 958D0018 */  lhu        $t5, 0x18($t4)
/* 6E318 8006D718 31AF0001 */  andi       $t7, $t5, 0x1
/* 6E31C 8006D71C 15E00003 */  bnez       $t7, .L8006D72C
/* 6E320 8006D720 00000000 */   nop
/* 6E324 8006D724 10000039 */  b          .L8006D80C
/* 6E328 8006D728 2402000B */   addiu     $v0, $zero, 0xB
.L8006D72C:
/* 6E32C 8006D72C AFA00064 */  sw         $zero, 0x64($sp)
.L8006D730:
/* 6E330 8006D730 8FAE0018 */  lw         $t6, 0x18($sp)
/* 6E334 8006D734 8FB80064 */  lw         $t8, 0x64($sp)
/* 6E338 8006D738 8FAB0068 */  lw         $t3, 0x68($sp)
/* 6E33C 8006D73C 01D8C821 */  addu       $t9, $t6, $t8
/* 6E340 8006D740 932A0000 */  lbu        $t2, 0x0($t9)
/* 6E344 8006D744 01784021 */  addu       $t0, $t3, $t8
/* 6E348 8006D748 A10A000C */  sb         $t2, 0xC($t0)
/* 6E34C 8006D74C 8FA90064 */  lw         $t1, 0x64($sp)
/* 6E350 8006D750 252C0001 */  addiu      $t4, $t1, 0x1
/* 6E354 8006D754 29810020 */  slti       $at, $t4, 0x20
/* 6E358 8006D758 1420FFF5 */  bnez       $at, .L8006D730
/* 6E35C 8006D75C AFAC0064 */   sw        $t4, 0x64($sp)
/* 6E360 8006D760 8FAD0018 */  lw         $t5, 0x18($sp)
/* 6E364 8006D764 8FAE0068 */  lw         $t6, 0x68($sp)
/* 6E368 8006D768 24060007 */  addiu      $a2, $zero, 0x7
/* 6E36C 8006D76C 91AF001B */  lbu        $t7, 0x1B($t5)
/* 6E370 8006D770 240D0010 */  addiu      $t5, $zero, 0x10
/* 6E374 8006D774 ADCF004C */  sw         $t7, 0x4C($t6)
/* 6E378 8006D778 8FB90018 */  lw         $t9, 0x18($sp)
/* 6E37C 8006D77C 8FB80068 */  lw         $t8, 0x68($sp)
/* 6E380 8006D780 240E0008 */  addiu      $t6, $zero, 0x8
/* 6E384 8006D784 932B001A */  lbu        $t3, 0x1A($t9)
/* 6E388 8006D788 A30B0064 */  sb         $t3, 0x64($t8)
/* 6E38C 8006D78C 8FAA0068 */  lw         $t2, 0x68($sp)
/* 6E390 8006D790 91480064 */  lbu        $t0, 0x64($t2)
/* 6E394 8006D794 00084840 */  sll        $t1, $t0, 1
/* 6E398 8006D798 252C0003 */  addiu      $t4, $t1, 0x3
/* 6E39C 8006D79C AD4C0060 */  sw         $t4, 0x60($t2)
/* 6E3A0 8006D7A0 8FAF0068 */  lw         $t7, 0x68($sp)
/* 6E3A4 8006D7A4 ADED0050 */  sw         $t5, 0x50($t7)
/* 6E3A8 8006D7A8 8FB90068 */  lw         $t9, 0x68($sp)
/* 6E3AC 8006D7AC AF2E0054 */  sw         $t6, 0x54($t9)
/* 6E3B0 8006D7B0 8FAB0068 */  lw         $t3, 0x68($sp)
/* 6E3B4 8006D7B4 91780064 */  lbu        $t8, 0x64($t3)
/* 6E3B8 8006D7B8 001840C0 */  sll        $t0, $t8, 3
/* 6E3BC 8006D7BC 25090008 */  addiu      $t1, $t0, 0x8
/* 6E3C0 8006D7C0 AD690058 */  sw         $t1, 0x58($t3)
/* 6E3C4 8006D7C4 8FAC0068 */  lw         $t4, 0x68($sp)
/* 6E3C8 8006D7C8 918D0064 */  lbu        $t5, 0x64($t4)
/* 6E3CC 8006D7CC 8D8A0058 */  lw         $t2, 0x58($t4)
/* 6E3D0 8006D7D0 000D78C0 */  sll        $t7, $t5, 3
/* 6E3D4 8006D7D4 014F7021 */  addu       $t6, $t2, $t7
/* 6E3D8 8006D7D8 AD8E005C */  sw         $t6, 0x5C($t4)
/* 6E3DC 8006D7DC 8FB90068 */  lw         $t9, 0x68($sp)
/* 6E3E0 8006D7E0 8F240004 */  lw         $a0, 0x4($t9)
/* 6E3E4 8006D7E4 8F250008 */  lw         $a1, 0x8($t9)
/* 6E3E8 8006D7E8 0C01D4A4 */  jal        func_80075290
/* 6E3EC 8006D7EC 2727002C */   addiu     $a3, $t9, 0x2C
/* 6E3F0 8006D7F0 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E3F4 8006D7F4 8FB8001C */  lw         $t8, 0x1C($sp)
/* 6E3F8 8006D7F8 13000003 */  beqz       $t8, .L8006D808
/* 6E3FC 8006D7FC 00000000 */   nop
/* 6E400 8006D800 10000002 */  b          .L8006D80C
/* 6E404 8006D804 03001025 */   or        $v0, $t8, $zero
.L8006D808:
/* 6E408 8006D808 00001025 */  or         $v0, $zero, $zero
.L8006D80C:
/* 6E40C 8006D80C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E410 8006D810 27BD0068 */  addiu      $sp, $sp, 0x68
/* 6E414 8006D814 03E00008 */  jr         $ra
/* 6E418 8006D818 00000000 */   nop
/* 6E41C 8006D81C 00000000 */  nop
