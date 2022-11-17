.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel __osContRamRead
/* 75E90 80075290 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 75E94 80075294 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 75E98 80075298 AFBF001C */  sw         $ra, 0x1C($sp)
/* 75E9C 8007529C 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 75EA0 800752A0 240F0002 */  addiu      $t7, $zero, 0x2
/* 75EA4 800752A4 AFA40060 */  sw         $a0, 0x60($sp)
/* 75EA8 800752A8 AFA50064 */  sw         $a1, 0x64($sp)
/* 75EAC 800752AC AFA60068 */  sw         $a2, 0x68($sp)
/* 75EB0 800752B0 AFA7006C */  sw         $a3, 0x6C($sp)
/* 75EB4 800752B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 75EB8 800752B8 AFA0005C */  sw         $zero, 0x5C($sp)
/* 75EBC 800752BC AFAE0054 */  sw         $t6, 0x54($sp)
/* 75EC0 800752C0 0C01D03C */  jal        __osSiGetAccess
/* 75EC4 800752C4 AFAF0028 */   sw        $t7, 0x28($sp)
/* 75EC8 800752C8 24180002 */  addiu      $t8, $zero, 0x2
/* 75ECC 800752CC 3C01801B */  lui        $at, %hi(__osContLastCmd)
/* 75ED0 800752D0 A038ABD0 */  sb         $t8, %lo(__osContLastCmd)($at)
/* 75ED4 800752D4 8FA40064 */  lw         $a0, 0x64($sp)
/* 75ED8 800752D8 0C01D52B */  jal        func_800754AC
/* 75EDC 800752DC 97A5006A */   lhu       $a1, 0x6A($sp)
/* 75EE0 800752E0 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 75EE4 800752E4 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 75EE8 800752E8 0C01D090 */  jal        __osSiRawStartDma
/* 75EEC 800752EC 24040001 */   addiu     $a0, $zero, 0x1
/* 75EF0 800752F0 AFA2005C */  sw         $v0, 0x5C($sp)
/* 75EF4 800752F4 8FA40060 */  lw         $a0, 0x60($sp)
/* 75EF8 800752F8 00002825 */  or         $a1, $zero, $zero
/* 75EFC 800752FC 0C019824 */  jal        osRecvMesg
/* 75F00 80075300 24060001 */   addiu     $a2, $zero, 0x1
.L80075304:
/* 75F04 80075304 3C05801B */  lui        $a1, %hi(D_801AD350)
/* 75F08 80075308 24A5D350 */  addiu      $a1, $a1, %lo(D_801AD350)
/* 75F0C 8007530C 0C01D090 */  jal        __osSiRawStartDma
/* 75F10 80075310 00002025 */   or        $a0, $zero, $zero
/* 75F14 80075314 AFA2005C */  sw         $v0, 0x5C($sp)
/* 75F18 80075318 8FA40060 */  lw         $a0, 0x60($sp)
/* 75F1C 8007531C 00002825 */  or         $a1, $zero, $zero
/* 75F20 80075320 0C019824 */  jal        osRecvMesg
/* 75F24 80075324 24060001 */   addiu     $a2, $zero, 0x1
/* 75F28 80075328 8FA80064 */  lw         $t0, 0x64($sp)
/* 75F2C 8007532C 3C19801B */  lui        $t9, %hi(D_801AD350)
/* 75F30 80075330 2739D350 */  addiu      $t9, $t9, %lo(D_801AD350)
/* 75F34 80075334 1100000C */  beqz       $t0, .L80075368
/* 75F38 80075338 AFB90054 */   sw        $t9, 0x54($sp)
/* 75F3C 8007533C 1900000A */  blez       $t0, .L80075368
/* 75F40 80075340 AFA00058 */   sw        $zero, 0x58($sp)
.L80075344:
/* 75F44 80075344 8FAB0058 */  lw         $t3, 0x58($sp)
/* 75F48 80075348 8FAD0064 */  lw         $t5, 0x64($sp)
/* 75F4C 8007534C 8FA90054 */  lw         $t1, 0x54($sp)
/* 75F50 80075350 256C0001 */  addiu      $t4, $t3, 0x1
/* 75F54 80075354 018D082A */  slt        $at, $t4, $t5
/* 75F58 80075358 252A0001 */  addiu      $t2, $t1, 0x1
/* 75F5C 8007535C AFAC0058 */  sw         $t4, 0x58($sp)
/* 75F60 80075360 1420FFF8 */  bnez       $at, .L80075344
/* 75F64 80075364 AFAA0054 */   sw        $t2, 0x54($sp)
.L80075368:
/* 75F68 80075368 8FAF0054 */  lw         $t7, 0x54($sp)
/* 75F6C 8007536C 27AE002C */  addiu      $t6, $sp, 0x2C
/* 75F70 80075370 25F90024 */  addiu      $t9, $t7, 0x24
.L80075374:
/* 75F74 80075374 89E10000 */  lwl        $at, 0x0($t7)
/* 75F78 80075378 99E10003 */  lwr        $at, 0x3($t7)
/* 75F7C 8007537C 25EF000C */  addiu      $t7, $t7, 0xC
/* 75F80 80075380 25CE000C */  addiu      $t6, $t6, 0xC
/* 75F84 80075384 ADC1FFF4 */  sw         $at, -0xC($t6)
/* 75F88 80075388 89E1FFF8 */  lwl        $at, -0x8($t7)
/* 75F8C 8007538C 99E1FFFB */  lwr        $at, -0x5($t7)
/* 75F90 80075390 ADC1FFF8 */  sw         $at, -0x8($t6)
/* 75F94 80075394 89E1FFFC */  lwl        $at, -0x4($t7)
/* 75F98 80075398 99E1FFFF */  lwr        $at, -0x1($t7)
/* 75F9C 8007539C 15F9FFF5 */  bne        $t7, $t9, .L80075374
/* 75FA0 800753A0 ADC1FFFC */   sw        $at, -0x4($t6)
/* 75FA4 800753A4 89E10000 */  lwl        $at, 0x0($t7)
/* 75FA8 800753A8 99E10003 */  lwr        $at, 0x3($t7)
/* 75FAC 800753AC ADC10000 */  sw         $at, 0x0($t6)
/* 75FB0 800753B0 93A8002E */  lbu        $t0, 0x2E($sp)
/* 75FB4 800753B4 310900C0 */  andi       $t1, $t0, 0xC0
/* 75FB8 800753B8 00095103 */  sra        $t2, $t1, 4
/* 75FBC 800753BC 15400027 */  bnez       $t2, .L8007545C
/* 75FC0 800753C0 AFAA005C */   sw        $t2, 0x5C($sp)
/* 75FC4 800753C4 27A4002C */  addiu      $a0, $sp, 0x2C
/* 75FC8 800753C8 0C01DFB4 */  jal        __osContDataCrc
/* 75FCC 800753CC 24840006 */   addiu     $a0, $a0, 0x6
/* 75FD0 800753D0 A3A20027 */  sb         $v0, 0x27($sp)
/* 75FD4 800753D4 93AB0027 */  lbu        $t3, 0x27($sp)
/* 75FD8 800753D8 93AC0052 */  lbu        $t4, 0x52($sp)
/* 75FDC 800753DC 116C000F */  beq        $t3, $t4, .L8007541C
/* 75FE0 800753E0 00000000 */   nop
/* 75FE4 800753E4 8FA40060 */  lw         $a0, 0x60($sp)
/* 75FE8 800753E8 0C01D0BC */  jal        func_800742F0
/* 75FEC 800753EC 8FA50064 */   lw        $a1, 0x64($sp)
/* 75FF0 800753F0 AFA2005C */  sw         $v0, 0x5C($sp)
/* 75FF4 800753F4 8FAD005C */  lw         $t5, 0x5C($sp)
/* 75FF8 800753F8 11A00005 */  beqz       $t5, .L80075410
/* 75FFC 800753FC 00000000 */   nop
/* 76000 80075400 0C01D04D */  jal        __osSiRelAccess
/* 76004 80075404 00000000 */   nop
/* 76008 80075408 10000023 */  b          .L80075498
/* 7600C 8007540C 8FA2005C */   lw        $v0, 0x5C($sp)
.L80075410:
/* 76010 80075410 24180004 */  addiu      $t8, $zero, 0x4
/* 76014 80075414 10000013 */  b          .L80075464
/* 76018 80075418 AFB8005C */   sw        $t8, 0x5C($sp)
.L8007541C:
/* 7601C 8007541C AFA00058 */  sw         $zero, 0x58($sp)
.L80075420:
/* 76020 80075420 8FB90058 */  lw         $t9, 0x58($sp)
/* 76024 80075424 8FAE006C */  lw         $t6, 0x6C($sp)
/* 76028 80075428 03B97821 */  addu       $t7, $sp, $t9
/* 7602C 8007542C 91EF0032 */  lbu        $t7, 0x32($t7)
/* 76030 80075430 A1CF0000 */  sb         $t7, 0x0($t6)
/* 76034 80075434 8FAA0058 */  lw         $t2, 0x58($sp)
/* 76038 80075438 8FA8006C */  lw         $t0, 0x6C($sp)
/* 7603C 8007543C 254B0001 */  addiu      $t3, $t2, 0x1
/* 76040 80075440 29610020 */  slti       $at, $t3, 0x20
/* 76044 80075444 25090001 */  addiu      $t1, $t0, 0x1
/* 76048 80075448 AFAB0058 */  sw         $t3, 0x58($sp)
/* 7604C 8007544C 1420FFF4 */  bnez       $at, .L80075420
/* 76050 80075450 AFA9006C */   sw        $t1, 0x6C($sp)
/* 76054 80075454 10000003 */  b          .L80075464
/* 76058 80075458 00000000 */   nop
.L8007545C:
/* 7605C 8007545C 240C0001 */  addiu      $t4, $zero, 0x1
/* 76060 80075460 AFAC005C */  sw         $t4, 0x5C($sp)
.L80075464:
/* 76064 80075464 8FAD005C */  lw         $t5, 0x5C($sp)
/* 76068 80075468 24010004 */  addiu      $at, $zero, 0x4
/* 7606C 8007546C 15A10007 */  bne        $t5, $at, .L8007548C
/* 76070 80075470 00000000 */   nop
/* 76074 80075474 8FB80028 */  lw         $t8, 0x28($sp)
/* 76078 80075478 2B100000 */  slti       $s0, $t8, 0x0
/* 7607C 8007547C 3A100001 */  xori       $s0, $s0, 0x1
/* 76080 80075480 2719FFFF */  addiu      $t9, $t8, -0x1
/* 76084 80075484 1600FF9F */  bnez       $s0, .L80075304
/* 76088 80075488 AFB90028 */   sw        $t9, 0x28($sp)
.L8007548C:
/* 7608C 8007548C 0C01D04D */  jal        __osSiRelAccess
/* 76090 80075490 00000000 */   nop
/* 76094 80075494 8FA2005C */  lw         $v0, 0x5C($sp)
.L80075498:
/* 76098 80075498 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7609C 8007549C 8FB00018 */  lw         $s0, 0x18($sp)
/* 760A0 800754A0 27BD0060 */  addiu      $sp, $sp, 0x60
/* 760A4 800754A4 03E00008 */  jr         $ra
/* 760A8 800754A8 00000000 */   nop

glabel func_800754AC
/* 760AC 800754AC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 760B0 800754B0 3C0E801B */  lui        $t6, %hi(D_801AD350)
/* 760B4 800754B4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 760B8 800754B8 AFA40048 */  sw         $a0, 0x48($sp)
/* 760BC 800754BC AFA5004C */  sw         $a1, 0x4C($sp)
/* 760C0 800754C0 25CED350 */  addiu      $t6, $t6, %lo(D_801AD350)
/* 760C4 800754C4 240F0001 */  addiu      $t7, $zero, 0x1
/* 760C8 800754C8 3C01801B */  lui        $at, %hi(D_801AD38C)
/* 760CC 800754CC 241800FF */  addiu      $t8, $zero, 0xFF
/* 760D0 800754D0 24190003 */  addiu      $t9, $zero, 0x3
/* 760D4 800754D4 24080021 */  addiu      $t0, $zero, 0x21
/* 760D8 800754D8 24090002 */  addiu      $t1, $zero, 0x2
/* 760DC 800754DC AFAE0044 */  sw         $t6, 0x44($sp)
/* 760E0 800754E0 AC2FD38C */  sw         $t7, %lo(D_801AD38C)($at)
/* 760E4 800754E4 A3B8001C */  sb         $t8, 0x1C($sp)
/* 760E8 800754E8 A3B9001D */  sb         $t9, 0x1D($sp)
/* 760EC 800754EC A3A8001E */  sb         $t0, 0x1E($sp)
/* 760F0 800754F0 A3A9001F */  sb         $t1, 0x1F($sp)
/* 760F4 800754F4 0C01DF88 */  jal        __osContAddressCrc
/* 760F8 800754F8 97A4004E */   lhu       $a0, 0x4E($sp)
/* 760FC 800754FC 97AA004E */  lhu        $t2, 0x4E($sp)
/* 76100 80075500 240D00FF */  addiu      $t5, $zero, 0xFF
/* 76104 80075504 A3AD0042 */  sb         $t5, 0x42($sp)
/* 76108 80075508 000A5940 */  sll        $t3, $t2, 5
/* 7610C 8007550C 004B6025 */  or         $t4, $v0, $t3
/* 76110 80075510 A7AC0020 */  sh         $t4, 0x20($sp)
/* 76114 80075514 AFA00018 */  sw         $zero, 0x18($sp)
.L80075518:
/* 76118 80075518 8FAF0018 */  lw         $t7, 0x18($sp)
/* 7611C 8007551C 240E00FF */  addiu      $t6, $zero, 0xFF
/* 76120 80075520 03AFC021 */  addu       $t8, $sp, $t7
/* 76124 80075524 A30E0022 */  sb         $t6, 0x22($t8)
/* 76128 80075528 8FB90018 */  lw         $t9, 0x18($sp)
/* 7612C 8007552C 27280001 */  addiu      $t0, $t9, 0x1
/* 76130 80075530 29010020 */  slti       $at, $t0, 0x20
/* 76134 80075534 1420FFF8 */  bnez       $at, .L80075518
/* 76138 80075538 AFA80018 */   sw        $t0, 0x18($sp)
/* 7613C 8007553C 8FA90048 */  lw         $t1, 0x48($sp)
/* 76140 80075540 1120000E */  beqz       $t1, .L8007557C
/* 76144 80075544 00000000 */   nop
/* 76148 80075548 1920000C */  blez       $t1, .L8007557C
/* 7614C 8007554C AFA00018 */   sw        $zero, 0x18($sp)
.L80075550:
/* 76150 80075550 8FAA0044 */  lw         $t2, 0x44($sp)
/* 76154 80075554 A1400000 */  sb         $zero, 0x0($t2)
/* 76158 80075558 8FAD0018 */  lw         $t5, 0x18($sp)
/* 7615C 8007555C 8FAF0048 */  lw         $t7, 0x48($sp)
/* 76160 80075560 8FAB0044 */  lw         $t3, 0x44($sp)
/* 76164 80075564 25AE0001 */  addiu      $t6, $t5, 0x1
/* 76168 80075568 01CF082A */  slt        $at, $t6, $t7
/* 7616C 8007556C 256C0001 */  addiu      $t4, $t3, 0x1
/* 76170 80075570 AFAE0018 */  sw         $t6, 0x18($sp)
/* 76174 80075574 1420FFF6 */  bnez       $at, .L80075550
/* 76178 80075578 AFAC0044 */   sw        $t4, 0x44($sp)
.L8007557C:
/* 7617C 8007557C 27B9001C */  addiu      $t9, $sp, 0x1C
/* 76180 80075580 27290024 */  addiu      $t1, $t9, 0x24
/* 76184 80075584 8FB80044 */  lw         $t8, 0x44($sp)
.L80075588:
/* 76188 80075588 8F210000 */  lw         $at, 0x0($t9)
/* 7618C 8007558C 2739000C */  addiu      $t9, $t9, 0xC
/* 76190 80075590 2718000C */  addiu      $t8, $t8, 0xC
/* 76194 80075594 AB01FFF4 */  swl        $at, -0xC($t8)
/* 76198 80075598 BB01FFF7 */  swr        $at, -0x9($t8)
/* 7619C 8007559C 8F21FFF8 */  lw         $at, -0x8($t9)
/* 761A0 800755A0 AB01FFF8 */  swl        $at, -0x8($t8)
/* 761A4 800755A4 BB01FFFB */  swr        $at, -0x5($t8)
/* 761A8 800755A8 8F21FFFC */  lw         $at, -0x4($t9)
/* 761AC 800755AC AB01FFFC */  swl        $at, -0x4($t8)
/* 761B0 800755B0 1729FFF5 */  bne        $t9, $t1, .L80075588
/* 761B4 800755B4 BB01FFFF */   swr       $at, -0x1($t8)
/* 761B8 800755B8 8F210000 */  lw         $at, 0x0($t9)
/* 761BC 800755BC 240C00FE */  addiu      $t4, $zero, 0xFE
/* 761C0 800755C0 AB010000 */  swl        $at, 0x0($t8)
/* 761C4 800755C4 BB010003 */  swr        $at, 0x3($t8)
/* 761C8 800755C8 8FAA0044 */  lw         $t2, 0x44($sp)
/* 761CC 800755CC 254B0028 */  addiu      $t3, $t2, 0x28
/* 761D0 800755D0 AFAB0044 */  sw         $t3, 0x44($sp)
/* 761D4 800755D4 A16C0000 */  sb         $t4, 0x0($t3)
/* 761D8 800755D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 761DC 800755DC 27BD0048 */  addiu      $sp, $sp, 0x48
/* 761E0 800755E0 03E00008 */  jr         $ra
/* 761E4 800755E4 00000000 */   nop
/* 761E8 800755E8 00000000 */  nop
/* 761EC 800755EC 00000000 */  nop
