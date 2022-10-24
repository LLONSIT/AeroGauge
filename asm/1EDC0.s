.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8001E1C0
/* 1EDC0 8001E1C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EDC4 8001E1C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EDC8 8001E1C8 0C000184 */  jal        func_80000610
/* 1EDCC 8001E1CC 00002025 */   or        $a0, $zero, $zero
/* 1EDD0 8001E1D0 0C000506 */  jal        func_80001418
/* 1EDD4 8001E1D4 00002025 */   or        $a0, $zero, $zero
/* 1EDD8 8001E1D8 0C000506 */  jal        func_80001418
/* 1EDDC 8001E1DC 24040001 */   addiu     $a0, $zero, 0x1
/* 1EDE0 8001E1E0 0C000506 */  jal        func_80001418
/* 1EDE4 8001E1E4 24040002 */   addiu     $a0, $zero, 0x2
/* 1EDE8 8001E1E8 0C000506 */  jal        func_80001418
/* 1EDEC 8001E1EC 24040003 */   addiu     $a0, $zero, 0x3
/* 1EDF0 8001E1F0 0C000506 */  jal        func_80001418
/* 1EDF4 8001E1F4 24040004 */   addiu     $a0, $zero, 0x4
/* 1EDF8 8001E1F8 0C000506 */  jal        func_80001418
/* 1EDFC 8001E1FC 24040005 */   addiu     $a0, $zero, 0x5
/* 1EE00 8001E200 0C000506 */  jal        func_80001418
/* 1EE04 8001E204 24040006 */   addiu     $a0, $zero, 0x6
/* 1EE08 8001E208 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1EE0C 8001E20C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1EE10 8001E210 03E00008 */  jr         $ra
/* 1EE14 8001E214 00000000 */   nop

glabel func_8001E218
/* 1EE18 8001E218 3C048014 */  lui        $a0, %hi(D_8013FC88)
/* 1EE1C 8001E21C 2484FC88 */  addiu      $a0, $a0, %lo(D_8013FC88)
/* 1EE20 8001E220 94820004 */  lhu        $v0, 0x4($a0)
/* 1EE24 8001E224 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EE28 8001E228 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EE2C 8001E22C 304E0001 */  andi       $t6, $v0, 0x1
/* 1EE30 8001E230 11C00019 */  beqz       $t6, .L8001E298
/* 1EE34 8001E234 3C0B8009 */   lui       $t3, %hi(D_8008B830)
/* 1EE38 8001E238 3C0F8009 */  lui        $t7, %hi(D_8008B830)
/* 1EE3C 8001E23C 8DEFB830 */  lw         $t7, %lo(D_8008B830)($t7)
/* 1EE40 8001E240 2401001E */  addiu      $at, $zero, 0x1E
/* 1EE44 8001E244 3C028011 */  lui        $v0, %hi(D_80109C28)
/* 1EE48 8001E248 01E1001A */  div        $zero, $t7, $at
/* 1EE4C 8001E24C 0000C010 */  mfhi       $t8
/* 1EE50 8001E250 24429C28 */  addiu      $v0, $v0, %lo(D_80109C28)
/* 1EE54 8001E254 1700000A */  bnez       $t8, .L8001E280
/* 1EE58 8001E258 24197FFF */   addiu     $t9, $zero, 0x7FFF
/* 1EE5C 8001E25C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1EE60 8001E260 44812000 */  mtc1       $at, $f4
/* 1EE64 8001E264 24080040 */  addiu      $t0, $zero, 0x40
/* 1EE68 8001E268 A459009C */  sh         $t9, 0x9C($v0)
/* 1EE6C 8001E26C A048009E */  sb         $t0, 0x9E($v0)
/* 1EE70 8001E270 24040017 */  addiu      $a0, $zero, 0x17
/* 1EE74 8001E274 24050006 */  addiu      $a1, $zero, 0x6
/* 1EE78 8001E278 0C0004F0 */  jal        func_800013C0
/* 1EE7C 8001E27C E44400A4 */   swc1      $f4, 0xA4($v0)
.L8001E280:
/* 1EE80 8001E280 3C098009 */  lui        $t1, %hi(D_8008B830)
/* 1EE84 8001E284 8D29B830 */  lw         $t1, %lo(D_8008B830)($t1)
/* 1EE88 8001E288 3C018009 */  lui        $at, %hi(D_8008B830)
/* 1EE8C 8001E28C 252A0001 */  addiu      $t2, $t1, 0x1
/* 1EE90 8001E290 10000027 */  b          .L8001E330
/* 1EE94 8001E294 AC2AB830 */   sw        $t2, %lo(D_8008B830)($at)
.L8001E298:
/* 1EE98 8001E298 8D6BB830 */  lw         $t3, %lo(D_8008B830)($t3)
/* 1EE9C 8001E29C 3C018009 */  lui        $at, %hi(D_8008B830)
/* 1EEA0 8001E2A0 304C0C00 */  andi       $t4, $v0, 0xC00
/* 1EEA4 8001E2A4 11600002 */  beqz       $t3, .L8001E2B0
/* 1EEA8 8001E2A8 00000000 */   nop
/* 1EEAC 8001E2AC AC20B830 */  sw         $zero, %lo(D_8008B830)($at)
.L8001E2B0:
/* 1EEB0 8001E2B0 51800020 */  beql       $t4, $zero, .L8001E334
/* 1EEB4 8001E2B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1EEB8 8001E2B8 8C8D0000 */  lw         $t5, 0x0($a0)
/* 1EEBC 8001E2BC 24010015 */  addiu      $at, $zero, 0x15
/* 1EEC0 8001E2C0 24060040 */  addiu      $a2, $zero, 0x40
/* 1EEC4 8001E2C4 01A1001B */  divu       $zero, $t5, $at
/* 1EEC8 8001E2C8 00007010 */  mfhi       $t6
/* 1EECC 8001E2CC 3C0F8014 */  lui        $t7, %hi(D_8013FF90)
/* 1EED0 8001E2D0 15C00017 */  bnez       $t6, .L8001E330
/* 1EED4 8001E2D4 3C028011 */   lui       $v0, %hi(D_80109C28)
/* 1EED8 8001E2D8 81EFFF90 */  lb         $t7, %lo(D_8013FF90)($t7)
/* 1EEDC 8001E2DC 24010005 */  addiu      $at, $zero, 0x5
/* 1EEE0 8001E2E0 24429C28 */  addiu      $v0, $v0, %lo(D_80109C28)
/* 1EEE4 8001E2E4 15E1000D */  bne        $t7, $at, .L8001E31C
/* 1EEE8 8001E2E8 24183FFF */   addiu     $t8, $zero, 0x3FFF
/* 1EEEC 8001E2EC 24010400 */  addiu      $at, $zero, 0x400
/* 1EEF0 8001E2F0 11810007 */  beq        $t4, $at, .L8001E310
/* 1EEF4 8001E2F4 24010800 */   addiu     $at, $zero, 0x800
/* 1EEF8 8001E2F8 11810007 */  beq        $t4, $at, .L8001E318
/* 1EEFC 8001E2FC 24010C00 */   addiu     $at, $zero, 0xC00
/* 1EF00 8001E300 51810007 */  beql       $t4, $at, .L8001E320
/* 1EF04 8001E304 A458009C */   sh        $t8, 0x9C($v0)
/* 1EF08 8001E308 10000005 */  b          .L8001E320
/* 1EF0C 8001E30C A458009C */   sh        $t8, 0x9C($v0)
.L8001E310:
/* 1EF10 8001E310 10000002 */  b          .L8001E31C
/* 1EF14 8001E314 24060020 */   addiu     $a2, $zero, 0x20
.L8001E318:
/* 1EF18 8001E318 24060060 */  addiu      $a2, $zero, 0x60
.L8001E31C:
/* 1EF1C 8001E31C A458009C */  sh         $t8, 0x9C($v0)
.L8001E320:
/* 1EF20 8001E320 A046009E */  sb         $a2, 0x9E($v0)
/* 1EF24 8001E324 24040020 */  addiu      $a0, $zero, 0x20
/* 1EF28 8001E328 0C0004F0 */  jal        func_800013C0
/* 1EF2C 8001E32C 24050006 */   addiu     $a1, $zero, 0x6
.L8001E330:
/* 1EF30 8001E330 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001E334:
/* 1EF34 8001E334 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1EF38 8001E338 03E00008 */  jr         $ra
/* 1EF3C 8001E33C 00000000 */   nop

glabel func_8001E340
/* 1EF40 8001E340 3C0E8014 */  lui        $t6, %hi(D_8013FF90)
/* 1EF44 8001E344 91CEFF90 */  lbu        $t6, %lo(D_8013FF90)($t6)
/* 1EF48 8001E348 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EF4C 8001E34C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EF50 8001E350 2DC1000B */  sltiu      $at, $t6, 0xB
/* 1EF54 8001E354 10200041 */  beqz       $at, L8001E45C
/* 1EF58 8001E358 000E7080 */   sll       $t6, $t6, 2
/* 1EF5C 8001E35C 3C018009 */  lui        $at, %hi(jtbl_80096EF0_main)
/* 1EF60 8001E360 002E0821 */  addu       $at, $at, $t6
/* 1EF64 8001E364 8C2E6EF0 */  lw         $t6, %lo(jtbl_80096EF0_main)($at)
/* 1EF68 8001E368 01C00008 */  jr         $t6
/* 1EF6C 8001E36C 00000000 */   nop
glabel L8001E370
/* 1EF70 8001E370 0C007870 */  jal        func_8001E1C0
/* 1EF74 8001E374 00000000 */   nop
/* 1EF78 8001E378 10000039 */  b          .L8001E460
/* 1EF7C 8001E37C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001E380
/* 1EF80 8001E380 0C003385 */  jal        func_8000CE14
/* 1EF84 8001E384 24040003 */   addiu     $a0, $zero, 0x3
/* 1EF88 8001E388 10400034 */  beqz       $v0, L8001E45C
/* 1EF8C 8001E38C 3C028014 */   lui       $v0, %hi(D_8013FF9B)
/* 1EF90 8001E390 8042FF9B */  lb         $v0, %lo(D_8013FF9B)($v0)
/* 1EF94 8001E394 240F6E14 */  addiu      $t7, $zero, 0x6E14
/* 1EF98 8001E398 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 1EF9C 8001E39C 1040000C */  beqz       $v0, .L8001E3D0
/* 1EFA0 8001E3A0 A42F9BDC */   sh        $t7, %lo(D_80109BDC)($at)
/* 1EFA4 8001E3A4 24010001 */  addiu      $at, $zero, 0x1
/* 1EFA8 8001E3A8 1041000E */  beq        $v0, $at, .L8001E3E4
/* 1EFAC 8001E3AC 24040008 */   addiu     $a0, $zero, 0x8
/* 1EFB0 8001E3B0 24010002 */  addiu      $at, $zero, 0x2
/* 1EFB4 8001E3B4 1041000F */  beq        $v0, $at, .L8001E3F4
/* 1EFB8 8001E3B8 2404000A */   addiu     $a0, $zero, 0xA
/* 1EFBC 8001E3BC 24010003 */  addiu      $at, $zero, 0x3
/* 1EFC0 8001E3C0 10410010 */  beq        $v0, $at, .L8001E404
/* 1EFC4 8001E3C4 24040004 */   addiu     $a0, $zero, 0x4
/* 1EFC8 8001E3C8 10000025 */  b          .L8001E460
/* 1EFCC 8001E3CC 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E3D0:
/* 1EFD0 8001E3D0 2404000E */  addiu      $a0, $zero, 0xE
/* 1EFD4 8001E3D4 0C000170 */  jal        func_800005C0
/* 1EFD8 8001E3D8 00002825 */   or        $a1, $zero, $zero
/* 1EFDC 8001E3DC 10000020 */  b          .L8001E460
/* 1EFE0 8001E3E0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E3E4:
/* 1EFE4 8001E3E4 0C000170 */  jal        func_800005C0
/* 1EFE8 8001E3E8 00002825 */   or        $a1, $zero, $zero
/* 1EFEC 8001E3EC 1000001C */  b          .L8001E460
/* 1EFF0 8001E3F0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E3F4:
/* 1EFF4 8001E3F4 0C000170 */  jal        func_800005C0
/* 1EFF8 8001E3F8 00002825 */   or        $a1, $zero, $zero
/* 1EFFC 8001E3FC 10000018 */  b          .L8001E460
/* 1F000 8001E400 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E404:
/* 1F004 8001E404 0C000170 */  jal        func_800005C0
/* 1F008 8001E408 00002825 */   or        $a1, $zero, $zero
/* 1F00C 8001E40C 10000014 */  b          .L8001E460
/* 1F010 8001E410 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001E414
/* 1F014 8001E414 0C007870 */  jal        func_8001E1C0
/* 1F018 8001E418 00000000 */   nop
/* 1F01C 8001E41C 24186E14 */  addiu      $t8, $zero, 0x6E14
/* 1F020 8001E420 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 1F024 8001E424 A4389BDC */  sh         $t8, %lo(D_80109BDC)($at)
/* 1F028 8001E428 24040001 */  addiu      $a0, $zero, 0x1
/* 1F02C 8001E42C 0C000170 */  jal        func_800005C0
/* 1F030 8001E430 00002825 */   or        $a1, $zero, $zero
/* 1F034 8001E434 1000000A */  b          .L8001E460
/* 1F038 8001E438 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001E43C
/* 1F03C 8001E43C 0C007870 */  jal        func_8001E1C0
/* 1F040 8001E440 00000000 */   nop
/* 1F044 8001E444 24196E14 */  addiu      $t9, $zero, 0x6E14
/* 1F048 8001E448 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 1F04C 8001E44C A4399BDC */  sh         $t9, %lo(D_80109BDC)($at)
/* 1F050 8001E450 24040003 */  addiu      $a0, $zero, 0x3
/* 1F054 8001E454 0C000170 */  jal        func_800005C0
/* 1F058 8001E458 00002825 */   or        $a1, $zero, $zero
glabel L8001E45C
/* 1F05C 8001E45C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001E460:
/* 1F060 8001E460 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F064 8001E464 03E00008 */  jr         $ra
/* 1F068 8001E468 00000000 */   nop

glabel func_8001E46C
/* 1F06C 8001E46C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F070 8001E470 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F074 8001E474 0C007870 */  jal        func_8001E1C0
/* 1F078 8001E478 00000000 */   nop
/* 1F07C 8001E47C 240E6E14 */  addiu      $t6, $zero, 0x6E14
/* 1F080 8001E480 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 1F084 8001E484 A42E9BDC */  sh         $t6, %lo(D_80109BDC)($at)
/* 1F088 8001E488 24040012 */  addiu      $a0, $zero, 0x12
/* 1F08C 8001E48C 0C000170 */  jal        func_800005C0
/* 1F090 8001E490 00002825 */   or        $a1, $zero, $zero
/* 1F094 8001E494 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F098 8001E498 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F09C 8001E49C 03E00008 */  jr         $ra
/* 1F0A0 8001E4A0 00000000 */   nop

glabel func_8001E4A4
/* 1F0A4 8001E4A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F0A8 8001E4A8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F0AC 8001E4AC 0C007870 */  jal        func_8001E1C0
/* 1F0B0 8001E4B0 00000000 */   nop
/* 1F0B4 8001E4B4 240E6E14 */  addiu      $t6, $zero, 0x6E14
/* 1F0B8 8001E4B8 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 1F0BC 8001E4BC A42E9BDC */  sh         $t6, %lo(D_80109BDC)($at)
/* 1F0C0 8001E4C0 24040010 */  addiu      $a0, $zero, 0x10
/* 1F0C4 8001E4C4 0C000170 */  jal        func_800005C0
/* 1F0C8 8001E4C8 00002825 */   or        $a1, $zero, $zero
/* 1F0CC 8001E4CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F0D0 8001E4D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F0D4 8001E4D4 03E00008 */  jr         $ra
/* 1F0D8 8001E4D8 00000000 */   nop
/* 1F0DC 8001E4DC 00000000 */  nop
