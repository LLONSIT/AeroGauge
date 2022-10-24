.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8002D4B0
/* 2E0B0 8002D4B0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2E0B4 8002D4B4 AFBF002C */  sw         $ra, 0x2C($sp)
/* 2E0B8 8002D4B8 AFB40028 */  sw         $s4, 0x28($sp)
/* 2E0BC 8002D4BC AFB30024 */  sw         $s3, 0x24($sp)
/* 2E0C0 8002D4C0 AFB20020 */  sw         $s2, 0x20($sp)
/* 2E0C4 8002D4C4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2E0C8 8002D4C8 0C009030 */  jal        func_800240C0
/* 2E0CC 8002D4CC AFB00018 */   sw        $s0, 0x18($sp)
/* 2E0D0 8002D4D0 3C088014 */  lui        $t0, %hi(D_8013FF90)
/* 2E0D4 8002D4D4 2508FF90 */  addiu      $t0, $t0, %lo(D_8013FF90)
/* 2E0D8 8002D4D8 81030000 */  lb         $v1, 0x0($t0)
/* 2E0DC 8002D4DC 24060002 */  addiu      $a2, $zero, 0x2
/* 2E0E0 8002D4E0 24010004 */  addiu      $at, $zero, 0x4
/* 2E0E4 8002D4E4 10C30002 */  beq        $a2, $v1, .L8002D4F0
/* 2E0E8 8002D4E8 3C058017 */   lui       $a1, %hi(D_8016C2B0)
/* 2E0EC 8002D4EC 146100A1 */  bne        $v1, $at, .L8002D774
.L8002D4F0:
/* 2E0F0 8002D4F0 24A5C2B0 */   addiu     $a1, $a1, %lo(D_8016C2B0)
/* 2E0F4 8002D4F4 90A40001 */  lbu        $a0, 0x1($a1)
/* 2E0F8 8002D4F8 24010003 */  addiu      $at, $zero, 0x3
/* 2E0FC 8002D4FC 1481000E */  bne        $a0, $at, .L8002D538
/* 2E100 8002D500 00000000 */   nop
/* 2E104 8002D504 8CA20008 */  lw         $v0, 0x8($a1)
/* 2E108 8002D508 8CA3000C */  lw         $v1, 0xC($a1)
/* 2E10C 8002D50C 0043082B */  sltu       $at, $v0, $v1
/* 2E110 8002D510 50200004 */  beql       $at, $zero, .L8002D524
/* 2E114 8002D514 0062082B */   sltu      $at, $v1, $v0
/* 2E118 8002D518 10000007 */  b          .L8002D538
/* 2E11C 8002D51C AFA20034 */   sw        $v0, 0x34($sp)
/* 2E120 8002D520 0062082B */  sltu       $at, $v1, $v0
.L8002D524:
/* 2E124 8002D524 50200004 */  beql       $at, $zero, .L8002D538
/* 2E128 8002D528 AFA20034 */   sw        $v0, 0x34($sp)
/* 2E12C 8002D52C 10000002 */  b          .L8002D538
/* 2E130 8002D530 AFA30034 */   sw        $v1, 0x34($sp)
/* 2E134 8002D534 AFA20034 */  sw         $v0, 0x34($sp)
.L8002D538:
/* 2E138 8002D538 14C40003 */  bne        $a2, $a0, .L8002D548
/* 2E13C 8002D53C 8FA70034 */   lw        $a3, 0x34($sp)
/* 2E140 8002D540 10000006 */  b          .L8002D55C
/* 2E144 8002D544 8CA70008 */   lw        $a3, 0x8($a1)
.L8002D548:
/* 2E148 8002D548 28810002 */  slti       $at, $a0, 0x2
/* 2E14C 8002D54C 10200003 */  beqz       $at, .L8002D55C
/* 2E150 8002D550 00000000 */   nop
/* 2E154 8002D554 3C070AC9 */  lui        $a3, (0xAC9D740 >> 16)
/* 2E158 8002D558 34E7D740 */  ori        $a3, $a3, (0xAC9D740 & 0xFFFF)
.L8002D55C:
/* 2E15C 8002D55C 3C118009 */  lui        $s1, %hi(D_8008B6F0)
/* 2E160 8002D560 3C10801A */  lui        $s0, %hi(D_8019EC20)
/* 2E164 8002D564 2610EC20 */  addiu      $s0, $s0, %lo(D_8019EC20)
/* 2E168 8002D568 2631B6F0 */  addiu      $s1, $s1, %lo(D_8008B6F0)
/* 2E16C 8002D56C 00003025 */  or         $a2, $zero, $zero
/* 2E170 8002D570 00001825 */  or         $v1, $zero, $zero
/* 2E174 8002D574 00002025 */  or         $a0, $zero, $zero
/* 2E178 8002D578 2414FFFF */  addiu      $s4, $zero, -0x1
/* 2E17C 8002D57C 241303E8 */  addiu      $s3, $zero, 0x3E8
/* 2E180 8002D580 241205DC */  addiu      $s2, $zero, 0x5DC
.L8002D584:
/* 2E184 8002D584 A3A3003F */  sb         $v1, 0x3F($sp)
/* 2E188 8002D588 A3A4003C */  sb         $a0, 0x3C($sp)
/* 2E18C 8002D58C A3A6003E */  sb         $a2, 0x3E($sp)
/* 2E190 8002D590 0C009030 */  jal        func_800240C0
/* 2E194 8002D594 AFA70034 */   sw        $a3, 0x34($sp)
/* 2E198 8002D598 83A4003C */  lb         $a0, 0x3C($sp)
/* 2E19C 8002D59C 3C088014 */  lui        $t0, %hi(D_8013FF90)
/* 2E1A0 8002D5A0 2508FF90 */  addiu      $t0, $t0, %lo(D_8013FF90)
/* 2E1A4 8002D5A4 28810007 */  slti       $at, $a0, 0x7
/* 2E1A8 8002D5A8 93A3003F */  lbu        $v1, 0x3F($sp)
/* 2E1AC 8002D5AC 93A6003E */  lbu        $a2, 0x3E($sp)
/* 2E1B0 8002D5B0 1020002C */  beqz       $at, .L8002D664
/* 2E1B4 8002D5B4 8FA70034 */   lw        $a3, 0x34($sp)
/* 2E1B8 8002D5B8 3C01004C */  lui        $at, (0x4C4B40 >> 16)
/* 2E1BC 8002D5BC 34214B40 */  ori        $at, $at, (0x4C4B40 & 0xFFFF)
/* 2E1C0 8002D5C0 00810019 */  multu      $a0, $at
/* 2E1C4 8002D5C4 248D0002 */  addiu      $t5, $a0, 0x2
/* 2E1C8 8002D5C8 810E0004 */  lb         $t6, 0x4($t0)
/* 2E1CC 8002D5CC 8118000B */  lb         $t8, 0xB($t0)
/* 2E1D0 8002D5D0 3C0B8009 */  lui        $t3, %hi(D_800973E0)
/* 2E1D4 8002D5D4 000E7880 */  sll        $t7, $t6, 2
/* 2E1D8 8002D5D8 01EE7823 */  subu       $t7, $t7, $t6
/* 2E1DC 8002D5DC 0018C880 */  sll        $t9, $t8, 2
/* 2E1E0 8002D5E0 000F78C0 */  sll        $t7, $t7, 3
/* 2E1E4 8002D5E4 01F95021 */  addu       $t2, $t7, $t9
/* 2E1E8 8002D5E8 00006012 */  mflo       $t4
/* 2E1EC 8002D5EC 016A5821 */  addu       $t3, $t3, $t2
/* 2E1F0 8002D5F0 8D6B73E0 */  lw         $t3, %lo(D_800973E0)($t3)
/* 2E1F4 8002D5F4 004D001A */  div        $zero, $v0, $t5
/* 2E1F8 8002D5F8 00007012 */  mflo       $t6
/* 2E1FC 8002D5FC 016C2821 */  addu       $a1, $t3, $t4
/* 2E200 8002D600 15A00002 */  bnez       $t5, .L8002D60C
/* 2E204 8002D604 00000000 */   nop
/* 2E208 8002D608 0007000D */  break      7
.L8002D60C:
/* 2E20C 8002D60C 2401FFFF */  addiu      $at, $zero, -0x1
/* 2E210 8002D610 15A10004 */  bne        $t5, $at, .L8002D624
/* 2E214 8002D614 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2E218 8002D618 14410002 */  bne        $v0, $at, .L8002D624
/* 2E21C 8002D61C 00000000 */   nop
/* 2E220 8002D620 0006000D */  break      6
.L8002D624:
/* 2E224 8002D624 01D2001A */  div        $zero, $t6, $s2
/* 2E228 8002D628 0000C010 */  mfhi       $t8
/* 2E22C 8002D62C 16400002 */  bnez       $s2, .L8002D638
/* 2E230 8002D630 00000000 */   nop
/* 2E234 8002D634 0007000D */  break      7
.L8002D638:
/* 2E238 8002D638 2401FFFF */  addiu      $at, $zero, -0x1
/* 2E23C 8002D63C 16410004 */  bne        $s2, $at, .L8002D650
/* 2E240 8002D640 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2E244 8002D644 15C10002 */  bne        $t6, $at, .L8002D650
/* 2E248 8002D648 00000000 */   nop
/* 2E24C 8002D64C 0006000D */  break      6
.L8002D650:
/* 2E250 8002D650 03130019 */  multu      $t8, $s3
/* 2E254 8002D654 00007812 */  mflo       $t7
/* 2E258 8002D658 01E52821 */  addu       $a1, $t7, $a1
/* 2E25C 8002D65C 1000001E */  b          .L8002D6D8
/* 2E260 8002D660 00000000 */   nop
.L8002D664:
/* 2E264 8002D664 24990002 */  addiu      $t9, $a0, 0x2
/* 2E268 8002D668 0059001A */  div        $zero, $v0, $t9
/* 2E26C 8002D66C 00005012 */  mflo       $t2
/* 2E270 8002D670 17200002 */  bnez       $t9, .L8002D67C
/* 2E274 8002D674 00000000 */   nop
/* 2E278 8002D678 0007000D */  break      7
.L8002D67C:
/* 2E27C 8002D67C 2401FFFF */  addiu      $at, $zero, -0x1
/* 2E280 8002D680 17210004 */  bne        $t9, $at, .L8002D694
/* 2E284 8002D684 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2E288 8002D688 14410002 */  bne        $v0, $at, .L8002D694
/* 2E28C 8002D68C 00000000 */   nop
/* 2E290 8002D690 0006000D */  break      6
.L8002D694:
/* 2E294 8002D694 0152001A */  div        $zero, $t2, $s2
/* 2E298 8002D698 00005810 */  mfhi       $t3
/* 2E29C 8002D69C 16400002 */  bnez       $s2, .L8002D6A8
/* 2E2A0 8002D6A0 00000000 */   nop
/* 2E2A4 8002D6A4 0007000D */  break      7
.L8002D6A8:
/* 2E2A8 8002D6A8 2401FFFF */  addiu      $at, $zero, -0x1
/* 2E2AC 8002D6AC 16410004 */  bne        $s2, $at, .L8002D6C0
/* 2E2B0 8002D6B0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2E2B4 8002D6B4 15410002 */  bne        $t2, $at, .L8002D6C0
/* 2E2B8 8002D6B8 00000000 */   nop
/* 2E2BC 8002D6BC 0006000D */  break      6
.L8002D6C0:
/* 2E2C0 8002D6C0 01730019 */  multu      $t3, $s3
/* 2E2C4 8002D6C4 3C010AC9 */  lui        $at, (0xAC9D740 >> 16)
/* 2E2C8 8002D6C8 3421D740 */  ori        $at, $at, (0xAC9D740 & 0xFFFF)
/* 2E2CC 8002D6CC 00002812 */  mflo       $a1
/* 2E2D0 8002D6D0 00A12821 */  addu       $a1, $a1, $at
/* 2E2D4 8002D6D4 00000000 */  nop
.L8002D6D8:
/* 2E2D8 8002D6D8 14C00012 */  bnez       $a2, .L8002D724
/* 2E2DC 8002D6DC 00A7082B */   sltu      $at, $a1, $a3
/* 2E2E0 8002D6E0 14200010 */  bnez       $at, .L8002D724
/* 2E2E4 8002D6E4 248C0001 */   addiu     $t4, $a0, 0x1
/* 2E2E8 8002D6E8 00036880 */  sll        $t5, $v1, 2
/* 2E2EC 8002D6EC 020D7021 */  addu       $t6, $s0, $t5
/* 2E2F0 8002D6F0 ADC700E8 */  sw         $a3, 0xE8($t6)
/* 2E2F4 8002D6F4 0223C021 */  addu       $t8, $s1, $v1
/* 2E2F8 8002D6F8 A3140000 */  sb         $s4, 0x0($t8)
/* 2E2FC 8002D6FC 810F0005 */  lb         $t7, 0x5($t0)
/* 2E300 8002D700 0203C821 */  addu       $t9, $s0, $v1
/* 2E304 8002D704 A10C0009 */  sb         $t4, 0x9($t0)
/* 2E308 8002D708 3C01801A */  lui        $at, %hi(D_8019E20F)
/* 2E30C 8002D70C A32F0000 */  sb         $t7, 0x0($t9)
/* 2E310 8002D710 A023E20F */  sb         $v1, %lo(D_8019E20F)($at)
/* 2E314 8002D714 24630001 */  addiu      $v1, $v1, 0x1
/* 2E318 8002D718 306A00FF */  andi       $t2, $v1, 0xFF
/* 2E31C 8002D71C 01401825 */  or         $v1, $t2, $zero
/* 2E320 8002D720 24060001 */  addiu      $a2, $zero, 0x1
.L8002D724:
/* 2E324 8002D724 28610008 */  slti       $at, $v1, 0x8
/* 2E328 8002D728 10200006 */  beqz       $at, .L8002D744
/* 2E32C 8002D72C 24820001 */   addiu     $v0, $a0, 0x1
/* 2E330 8002D730 00035880 */  sll        $t3, $v1, 2
/* 2E334 8002D734 020B6021 */  addu       $t4, $s0, $t3
/* 2E338 8002D738 AD8500E8 */  sw         $a1, 0xE8($t4)
/* 2E33C 8002D73C 02236821 */  addu       $t5, $s1, $v1
/* 2E340 8002D740 A1A00000 */  sb         $zero, 0x0($t5)
.L8002D744:
/* 2E344 8002D744 24630001 */  addiu      $v1, $v1, 0x1
/* 2E348 8002D748 307800FF */  andi       $t8, $v1, 0xFF
/* 2E34C 8002D74C 00022600 */  sll        $a0, $v0, 24
/* 2E350 8002D750 00047603 */  sra        $t6, $a0, 24
/* 2E354 8002D754 2B010008 */  slti       $at, $t8, 0x8
/* 2E358 8002D758 01C02025 */  or         $a0, $t6, $zero
/* 2E35C 8002D75C 1420FF89 */  bnez       $at, .L8002D584
/* 2E360 8002D760 03001825 */   or        $v1, $t8, $zero
/* 2E364 8002D764 0C00B68B */  jal        func_8002DA2C
/* 2E368 8002D768 00000000 */   nop
/* 2E36C 8002D76C 10000050 */  b          .L8002D8B0
/* 2E370 8002D770 8FBF002C */   lw        $ra, 0x2C($sp)
.L8002D774:
/* 2E374 8002D774 24010001 */  addiu      $at, $zero, 0x1
/* 2E378 8002D778 10610003 */  beq        $v1, $at, .L8002D788
/* 2E37C 8002D77C 3C058017 */   lui       $a1, %hi(D_8016C2B0)
/* 2E380 8002D780 24010003 */  addiu      $at, $zero, 0x3
/* 2E384 8002D784 14610049 */  bne        $v1, $at, .L8002D8AC
.L8002D788:
/* 2E388 8002D788 24A5C2B0 */   addiu     $a1, $a1, %lo(D_8016C2B0)
/* 2E38C 8002D78C 90AF0000 */  lbu        $t7, 0x0($a1)
/* 2E390 8002D790 90B90001 */  lbu        $t9, 0x1($a1)
/* 2E394 8002D794 00001825 */  or         $v1, $zero, $zero
/* 2E398 8002D798 00002025 */  or         $a0, $zero, $zero
/* 2E39C 8002D79C 01F9082A */  slt        $at, $t7, $t9
/* 2E3A0 8002D7A0 10200029 */  beqz       $at, .L8002D848
/* 2E3A4 8002D7A4 2414FFFF */   addiu     $s4, $zero, -0x1
/* 2E3A8 8002D7A8 3C098017 */  lui        $t1, %hi(D_8016C2B3)
/* 2E3AC 8002D7AC 3C118009 */  lui        $s1, %hi(D_8008B6F0)
/* 2E3B0 8002D7B0 3C10801A */  lui        $s0, %hi(D_8019EC20)
/* 2E3B4 8002D7B4 3C068014 */  lui        $a2, %hi(D_8013FC88)
/* 2E3B8 8002D7B8 24C6FC88 */  addiu      $a2, $a2, %lo(D_8013FC88)
/* 2E3BC 8002D7BC 2610EC20 */  addiu      $s0, $s0, %lo(D_8019EC20)
/* 2E3C0 8002D7C0 2631B6F0 */  addiu      $s1, $s1, %lo(D_8008B6F0)
/* 2E3C4 8002D7C4 9129C2B3 */  lbu        $t1, %lo(D_8016C2B3)($t1)
/* 2E3C8 8002D7C8 24040001 */  addiu      $a0, $zero, 0x1
/* 2E3CC 8002D7CC 00001825 */  or         $v1, $zero, $zero
/* 2E3D0 8002D7D0 2414FFFF */  addiu      $s4, $zero, -0x1
/* 2E3D4 8002D7D4 24070054 */  addiu      $a3, $zero, 0x54
.L8002D7D8:
/* 2E3D8 8002D7D8 02235021 */  addu       $t2, $s1, $v1
/* 2E3DC 8002D7DC 81420000 */  lb         $v0, 0x0($t2)
/* 2E3E0 8002D7E0 24630001 */  addiu      $v1, $v1, 0x1
/* 2E3E4 8002D7E4 2525FFFF */  addiu      $a1, $t1, -0x1
/* 2E3E8 8002D7E8 5282000E */  beql       $s4, $v0, .L8002D824
/* 2E3EC 8002D7EC 810A0005 */   lb        $t2, 0x5($t0)
/* 2E3F0 8002D7F0 00870019 */  multu      $a0, $a3
/* 2E3F4 8002D7F4 24840001 */  addiu      $a0, $a0, 0x1
/* 2E3F8 8002D7F8 0004C600 */  sll        $t8, $a0, 24
/* 2E3FC 8002D7FC 00182603 */  sra        $a0, $t8, 24
/* 2E400 8002D800 00005812 */  mflo       $t3
/* 2E404 8002D804 00CB6021 */  addu       $t4, $a2, $t3
/* 2E408 8002D808 91850058 */  lbu        $a1, 0x58($t4)
/* 2E40C 8002D80C 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 2E410 8002D810 30AD00FF */  andi       $t5, $a1, 0xFF
/* 2E414 8002D814 020D7021 */  addu       $t6, $s0, $t5
/* 2E418 8002D818 10000005 */  b          .L8002D830
/* 2E41C 8002D81C A1C20000 */   sb        $v0, 0x0($t6)
/* 2E420 8002D820 810A0005 */  lb         $t2, 0x5($t0)
.L8002D824:
/* 2E424 8002D824 30B900FF */  andi       $t9, $a1, 0xFF
/* 2E428 8002D828 02195821 */  addu       $t3, $s0, $t9
/* 2E42C 8002D82C A16A0000 */  sb         $t2, 0x0($t3)
.L8002D830:
/* 2E430 8002D830 306C00FF */  andi       $t4, $v1, 0xFF
/* 2E434 8002D834 29810008 */  slti       $at, $t4, 0x8
/* 2E438 8002D838 1420FFE7 */  bnez       $at, .L8002D7D8
/* 2E43C 8002D83C 01801825 */   or        $v1, $t4, $zero
/* 2E440 8002D840 1000001A */  b          .L8002D8AC
/* 2E444 8002D844 A1090009 */   sb        $t1, 0x9($t0)
.L8002D848:
/* 2E448 8002D848 3C118009 */  lui        $s1, %hi(D_8008B6F0)
/* 2E44C 8002D84C 3C10801A */  lui        $s0, %hi(D_8019EC20)
/* 2E450 8002D850 2610EC20 */  addiu      $s0, $s0, %lo(D_8019EC20)
/* 2E454 8002D854 2631B6F0 */  addiu      $s1, $s1, %lo(D_8008B6F0)
.L8002D858:
/* 2E458 8002D858 02236821 */  addu       $t5, $s1, $v1
/* 2E45C 8002D85C 81A20000 */  lb         $v0, 0x0($t5)
/* 2E460 8002D860 24630001 */  addiu      $v1, $v1, 0x1
/* 2E464 8002D864 306B00FF */  andi       $t3, $v1, 0xFF
/* 2E468 8002D868 12820003 */  beq        $s4, $v0, .L8002D878
/* 2E46C 8002D86C 02047021 */   addu      $t6, $s0, $a0
/* 2E470 8002D870 10000004 */  b          .L8002D884
/* 2E474 8002D874 A1C20000 */   sb        $v0, 0x0($t6)
.L8002D878:
/* 2E478 8002D878 2484FFFF */  addiu      $a0, $a0, -0x1
/* 2E47C 8002D87C 0004C600 */  sll        $t8, $a0, 24
/* 2E480 8002D880 00182603 */  sra        $a0, $t8, 24
.L8002D884:
/* 2E484 8002D884 24840001 */  addiu      $a0, $a0, 0x1
/* 2E488 8002D888 0004CE00 */  sll        $t9, $a0, 24
/* 2E48C 8002D88C 00192603 */  sra        $a0, $t9, 24
/* 2E490 8002D890 28810008 */  slti       $at, $a0, 0x8
/* 2E494 8002D894 1420FFF0 */  bnez       $at, .L8002D858
/* 2E498 8002D898 01601825 */   or        $v1, $t3, $zero
/* 2E49C 8002D89C 810C0005 */  lb         $t4, 0x5($t0)
/* 2E4A0 8002D8A0 240D0008 */  addiu      $t5, $zero, 0x8
/* 2E4A4 8002D8A4 A10D0009 */  sb         $t5, 0x9($t0)
/* 2E4A8 8002D8A8 A20C0007 */  sb         $t4, 0x7($s0)
.L8002D8AC:
/* 2E4AC 8002D8AC 8FBF002C */  lw         $ra, 0x2C($sp)
.L8002D8B0:
/* 2E4B0 8002D8B0 8FB00018 */  lw         $s0, 0x18($sp)
/* 2E4B4 8002D8B4 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2E4B8 8002D8B8 8FB20020 */  lw         $s2, 0x20($sp)
/* 2E4BC 8002D8BC 8FB30024 */  lw         $s3, 0x24($sp)
/* 2E4C0 8002D8C0 8FB40028 */  lw         $s4, 0x28($sp)
/* 2E4C4 8002D8C4 03E00008 */  jr         $ra
/* 2E4C8 8002D8C8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8002D8CC
/* 2E4CC 8002D8CC 3C078017 */  lui        $a3, %hi(D_8016C2B0)
/* 2E4D0 8002D8D0 24E7C2B0 */  addiu      $a3, $a3, %lo(D_8016C2B0)
/* 2E4D4 8002D8D4 4459F800 */  cfc1       $t9, $31
/* 2E4D8 8002D8D8 24080001 */  addiu      $t0, $zero, 0x1
/* 2E4DC 8002D8DC 44C8F800 */  ctc1       $t0, $31
/* 2E4E0 8002D8E0 C4E00080 */  lwc1       $f0, 0x80($a3)
/* 2E4E4 8002D8E4 3C0E8014 */  lui        $t6, %hi(D_8013FF9B)
/* 2E4E8 8002D8E8 81CEFF9B */  lb         $t6, %lo(D_8013FF9B)($t6)
/* 2E4EC 8002D8EC 46000124 */  cvt.w.s    $f4, $f0
/* 2E4F0 8002D8F0 3C188009 */  lui        $t8, %hi(D_80097428)
/* 2E4F4 8002D8F4 000E7880 */  sll        $t7, $t6, 2
/* 2E4F8 8002D8F8 030FC021 */  addu       $t8, $t8, $t7
/* 2E4FC 8002D8FC 4448F800 */  cfc1       $t0, $31
/* 2E500 8002D900 8F187428 */  lw         $t8, %lo(D_80097428)($t8)
/* 2E504 8002D904 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 2E508 8002D908 31080078 */  andi       $t0, $t0, 0x78
/* 2E50C 8002D90C 51000013 */  beql       $t0, $zero, .L8002D95C
/* 2E510 8002D910 44082000 */   mfc1      $t0, $f4
/* 2E514 8002D914 44812000 */  mtc1       $at, $f4
/* 2E518 8002D918 24080001 */  addiu      $t0, $zero, 0x1
/* 2E51C 8002D91C 46040101 */  sub.s      $f4, $f0, $f4
/* 2E520 8002D920 44C8F800 */  ctc1       $t0, $31
/* 2E524 8002D924 00000000 */  nop
/* 2E528 8002D928 46002124 */  cvt.w.s    $f4, $f4
/* 2E52C 8002D92C 4448F800 */  cfc1       $t0, $31
/* 2E530 8002D930 00000000 */  nop
/* 2E534 8002D934 31080078 */  andi       $t0, $t0, 0x78
/* 2E538 8002D938 15000005 */  bnez       $t0, .L8002D950
/* 2E53C 8002D93C 00000000 */   nop
/* 2E540 8002D940 44082000 */  mfc1       $t0, $f4
/* 2E544 8002D944 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 2E548 8002D948 10000007 */  b          .L8002D968
/* 2E54C 8002D94C 01014025 */   or        $t0, $t0, $at
.L8002D950:
/* 2E550 8002D950 10000005 */  b          .L8002D968
/* 2E554 8002D954 2408FFFF */   addiu     $t0, $zero, -0x1
/* 2E558 8002D958 44082000 */  mfc1       $t0, $f4
.L8002D95C:
/* 2E55C 8002D95C 00000000 */  nop
/* 2E560 8002D960 0500FFFB */  bltz       $t0, .L8002D950
/* 2E564 8002D964 00000000 */   nop
.L8002D968:
/* 2E568 8002D968 8CE50040 */  lw         $a1, 0x40($a3)
/* 2E56C 8002D96C 44D9F800 */  ctc1       $t9, $31
/* 2E570 8002D970 03081823 */  subu       $v1, $t8, $t0
/* 2E574 8002D974 44853000 */  mtc1       $a1, $f6
/* 2E578 8002D978 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 2E57C 8002D97C 04A10004 */  bgez       $a1, .L8002D990
/* 2E580 8002D980 46803220 */   cvt.s.w   $f8, $f6
/* 2E584 8002D984 44815000 */  mtc1       $at, $f10
/* 2E588 8002D988 00000000 */  nop
/* 2E58C 8002D98C 460A4200 */  add.s      $f8, $f8, $f10
.L8002D990:
/* 2E590 8002D990 46004403 */  div.s      $f16, $f8, $f0
/* 2E594 8002D994 24040001 */  addiu      $a0, $zero, 0x1
/* 2E598 8002D998 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 2E59C 8002D99C 4449F800 */  cfc1       $t1, $31
/* 2E5A0 8002D9A0 44C4F800 */  ctc1       $a0, $31
/* 2E5A4 8002D9A4 00000000 */  nop
/* 2E5A8 8002D9A8 460084A4 */  cvt.w.s    $f18, $f16
/* 2E5AC 8002D9AC 4444F800 */  cfc1       $a0, $31
/* 2E5B0 8002D9B0 00000000 */  nop
/* 2E5B4 8002D9B4 30840078 */  andi       $a0, $a0, 0x78
/* 2E5B8 8002D9B8 50800013 */  beql       $a0, $zero, .L8002DA08
/* 2E5BC 8002D9BC 44049000 */   mfc1      $a0, $f18
/* 2E5C0 8002D9C0 44819000 */  mtc1       $at, $f18
/* 2E5C4 8002D9C4 24040001 */  addiu      $a0, $zero, 0x1
/* 2E5C8 8002D9C8 46128481 */  sub.s      $f18, $f16, $f18
/* 2E5CC 8002D9CC 44C4F800 */  ctc1       $a0, $31
/* 2E5D0 8002D9D0 00000000 */  nop
/* 2E5D4 8002D9D4 460094A4 */  cvt.w.s    $f18, $f18
/* 2E5D8 8002D9D8 4444F800 */  cfc1       $a0, $31
/* 2E5DC 8002D9DC 00000000 */  nop
/* 2E5E0 8002D9E0 30840078 */  andi       $a0, $a0, 0x78
/* 2E5E4 8002D9E4 14800005 */  bnez       $a0, .L8002D9FC
/* 2E5E8 8002D9E8 00000000 */   nop
/* 2E5EC 8002D9EC 44049000 */  mfc1       $a0, $f18
/* 2E5F0 8002D9F0 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 2E5F4 8002D9F4 10000007 */  b          .L8002DA14
/* 2E5F8 8002D9F8 00812025 */   or        $a0, $a0, $at
.L8002D9FC:
/* 2E5FC 8002D9FC 10000005 */  b          .L8002DA14
/* 2E600 8002DA00 2404FFFF */   addiu     $a0, $zero, -0x1
/* 2E604 8002DA04 44049000 */  mfc1       $a0, $f18
.L8002DA08:
/* 2E608 8002DA08 00000000 */  nop
/* 2E60C 8002DA0C 0480FFFB */  bltz       $a0, .L8002D9FC
/* 2E610 8002DA10 00000000 */   nop
.L8002DA14:
/* 2E614 8002DA14 00640019 */  multu      $v1, $a0
/* 2E618 8002DA18 44C9F800 */  ctc1       $t1, $31
/* 2E61C 8002DA1C 00005012 */  mflo       $t2
/* 2E620 8002DA20 01451021 */  addu       $v0, $t2, $a1
/* 2E624 8002DA24 03E00008 */  jr         $ra
/* 2E628 8002DA28 00000000 */   nop

glabel func_8002DA2C
/* 2E62C 8002DA2C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2E630 8002DA30 AFBE0038 */  sw         $fp, 0x38($sp)
/* 2E634 8002DA34 3C1E8014 */  lui        $fp, %hi(D_8013FF90)
/* 2E638 8002DA38 27DEFF90 */  addiu      $fp, $fp, %lo(D_8013FF90)
/* 2E63C 8002DA3C 83C20000 */  lb         $v0, 0x0($fp)
/* 2E640 8002DA40 24010002 */  addiu      $at, $zero, 0x2
/* 2E644 8002DA44 AFBF003C */  sw         $ra, 0x3C($sp)
/* 2E648 8002DA48 AFB70034 */  sw         $s7, 0x34($sp)
/* 2E64C 8002DA4C AFB60030 */  sw         $s6, 0x30($sp)
/* 2E650 8002DA50 AFB5002C */  sw         $s5, 0x2C($sp)
/* 2E654 8002DA54 AFB40028 */  sw         $s4, 0x28($sp)
/* 2E658 8002DA58 AFB30024 */  sw         $s3, 0x24($sp)
/* 2E65C 8002DA5C AFB20020 */  sw         $s2, 0x20($sp)
/* 2E660 8002DA60 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2E664 8002DA64 14410057 */  bne        $v0, $at, .L8002DBC4
/* 2E668 8002DA68 AFB00018 */   sw        $s0, 0x18($sp)
/* 2E66C 8002DA6C 83C20005 */  lb         $v0, 0x5($fp)
/* 2E670 8002DA70 00008825 */  or         $s1, $zero, $zero
/* 2E674 8002DA74 24160005 */  addiu      $s6, $zero, 0x5
/* 2E678 8002DA78 18400006 */  blez       $v0, .L8002DA94
/* 2E67C 8002DA7C 3C128009 */   lui       $s2, %hi(D_8008B6F0)
/* 2E680 8002DA80 28410006 */  slti       $at, $v0, 0x6
/* 2E684 8002DA84 10200003 */  beqz       $at, .L8002DA94
/* 2E688 8002DA88 240E0004 */   addiu     $t6, $zero, 0x4
/* 2E68C 8002DA8C 10000003 */  b          .L8002DA9C
/* 2E690 8002DA90 A3AE0044 */   sb        $t6, 0x44($sp)
.L8002DA94:
/* 2E694 8002DA94 240F0005 */  addiu      $t7, $zero, 0x5
/* 2E698 8002DA98 A3AF0044 */  sb         $t7, 0x44($sp)
.L8002DA9C:
/* 2E69C 8002DA9C A3A00047 */  sb         $zero, 0x47($sp)
/* 2E6A0 8002DAA0 2652B6F0 */  addiu      $s2, $s2, %lo(D_8008B6F0)
.L8002DAA4:
/* 2E6A4 8002DAA4 93B80047 */  lbu        $t8, 0x47($sp)
/* 2E6A8 8002DAA8 2401FFFF */  addiu      $at, $zero, -0x1
/* 2E6AC 8002DAAC 93B50044 */  lbu        $s5, 0x44($sp)
/* 2E6B0 8002DAB0 0258B821 */  addu       $s7, $s2, $t8
/* 2E6B4 8002DAB4 82F90000 */  lb         $t9, 0x0($s7)
/* 2E6B8 8002DAB8 0000A025 */  or         $s4, $zero, $zero
/* 2E6BC 8002DABC 13210034 */  beq        $t9, $at, .L8002DB90
/* 2E6C0 8002DAC0 0235082A */   slt       $at, $s1, $s5
.L8002DAC4:
/* 2E6C4 8002DAC4 10200011 */  beqz       $at, .L8002DB0C
/* 2E6C8 8002DAC8 00000000 */   nop
/* 2E6CC 8002DACC 0C009030 */  jal        func_800240C0
/* 2E6D0 8002DAD0 00000000 */   nop
/* 2E6D4 8002DAD4 0056001A */  div        $zero, $v0, $s6
/* 2E6D8 8002DAD8 00001810 */  mfhi       $v1
/* 2E6DC 8002DADC 24630001 */  addiu      $v1, $v1, 0x1
/* 2E6E0 8002DAE0 16C00002 */  bnez       $s6, .L8002DAEC
/* 2E6E4 8002DAE4 00000000 */   nop
/* 2E6E8 8002DAE8 0007000D */  break      7
.L8002DAEC:
/* 2E6EC 8002DAEC 2401FFFF */  addiu      $at, $zero, -0x1
/* 2E6F0 8002DAF0 16C10004 */  bne        $s6, $at, .L8002DB04
/* 2E6F4 8002DAF4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2E6F8 8002DAF8 14410002 */  bne        $v0, $at, .L8002DB04
/* 2E6FC 8002DAFC 00000000 */   nop
/* 2E700 8002DB00 0006000D */  break      6
.L8002DB04:
/* 2E704 8002DB04 1000000A */  b          .L8002DB30
/* 2E708 8002DB08 83C80005 */   lb        $t0, 0x5($fp)
.L8002DB0C:
/* 2E70C 8002DB0C 0C009030 */  jal        func_800240C0
/* 2E710 8002DB10 00000000 */   nop
/* 2E714 8002DB14 04410004 */  bgez       $v0, .L8002DB28
/* 2E718 8002DB18 30430003 */   andi      $v1, $v0, 0x3
/* 2E71C 8002DB1C 10600002 */  beqz       $v1, .L8002DB28
/* 2E720 8002DB20 00000000 */   nop
/* 2E724 8002DB24 2463FFFC */  addiu      $v1, $v1, -0x4
.L8002DB28:
/* 2E728 8002DB28 24630006 */  addiu      $v1, $v1, 0x6
/* 2E72C 8002DB2C 83C80005 */  lb         $t0, 0x5($fp)
.L8002DB30:
/* 2E730 8002DB30 10680013 */  beq        $v1, $t0, .L8002DB80
/* 2E734 8002DB34 00000000 */   nop
/* 2E738 8002DB38 1A20000A */  blez       $s1, .L8002DB64
/* 2E73C 8002DB3C 00008025 */   or        $s0, $zero, $zero
.L8002DB40:
/* 2E740 8002DB40 02504821 */  addu       $t1, $s2, $s0
/* 2E744 8002DB44 812A0000 */  lb         $t2, 0x0($t1)
/* 2E748 8002DB48 106A0006 */  beq        $v1, $t2, .L8002DB64
/* 2E74C 8002DB4C 00000000 */   nop
/* 2E750 8002DB50 26100001 */  addiu      $s0, $s0, 0x1
/* 2E754 8002DB54 320B00FF */  andi       $t3, $s0, 0xFF
/* 2E758 8002DB58 0171082A */  slt        $at, $t3, $s1
/* 2E75C 8002DB5C 1420FFF8 */  bnez       $at, .L8002DB40
/* 2E760 8002DB60 01608025 */   or        $s0, $t3, $zero
.L8002DB64:
/* 2E764 8002DB64 16300006 */  bne        $s1, $s0, .L8002DB80
/* 2E768 8002DB68 3C01801A */   lui       $at, %hi(D_8019EC20)
/* 2E76C 8002DB6C 93AC0047 */  lbu        $t4, 0x47($sp)
/* 2E770 8002DB70 A2E30000 */  sb         $v1, 0x0($s7)
/* 2E774 8002DB74 24140001 */  addiu      $s4, $zero, 0x1
/* 2E778 8002DB78 002C0821 */  addu       $at, $at, $t4
/* 2E77C 8002DB7C A023EC20 */  sb         $v1, %lo(D_8019EC20)($at)
.L8002DB80:
/* 2E780 8002DB80 5280FFD0 */  beql       $s4, $zero, .L8002DAC4
/* 2E784 8002DB84 0235082A */   slt       $at, $s1, $s5
/* 2E788 8002DB88 10000007 */  b          .L8002DBA8
/* 2E78C 8002DB8C 93AF0047 */   lbu       $t7, 0x47($sp)
.L8002DB90:
/* 2E790 8002DB90 0235082A */  slt        $at, $s1, $s5
/* 2E794 8002DB94 10200003 */  beqz       $at, .L8002DBA4
/* 2E798 8002DB98 93AD0044 */   lbu       $t5, 0x44($sp)
/* 2E79C 8002DB9C 25AE0001 */  addiu      $t6, $t5, 0x1
/* 2E7A0 8002DBA0 A3AE0044 */  sb         $t6, 0x44($sp)
.L8002DBA4:
/* 2E7A4 8002DBA4 93AF0047 */  lbu        $t7, 0x47($sp)
.L8002DBA8:
/* 2E7A8 8002DBA8 25F80001 */  addiu      $t8, $t7, 0x1
/* 2E7AC 8002DBAC 331100FF */  andi       $s1, $t8, 0xFF
/* 2E7B0 8002DBB0 2A210008 */  slti       $at, $s1, 0x8
/* 2E7B4 8002DBB4 1420FFBB */  bnez       $at, .L8002DAA4
/* 2E7B8 8002DBB8 A3B80047 */   sb        $t8, 0x47($sp)
/* 2E7BC 8002DBBC 100000E3 */  b          .L8002DF4C
/* 2E7C0 8002DBC0 8FBF003C */   lw        $ra, 0x3C($sp)
.L8002DBC4:
/* 2E7C4 8002DBC4 24010004 */  addiu      $at, $zero, 0x4
/* 2E7C8 8002DBC8 544100E0 */  bnel       $v0, $at, .L8002DF4C
/* 2E7CC 8002DBCC 8FBF003C */   lw        $ra, 0x3C($sp)
/* 2E7D0 8002DBD0 83D9000B */  lb         $t9, 0xB($fp)
/* 2E7D4 8002DBD4 3C128009 */  lui        $s2, %hi(D_8008B6F0)
/* 2E7D8 8002DBD8 2652B6F0 */  addiu      $s2, $s2, %lo(D_8008B6F0)
/* 2E7DC 8002DBDC 1720007E */  bnez       $t9, .L8002DDD8
/* 2E7E0 8002DBE0 00008825 */   or        $s1, $zero, $zero
/* 2E7E4 8002DBE4 83C20005 */  lb         $v0, 0x5($fp)
/* 2E7E8 8002DBE8 00009825 */  or         $s3, $zero, $zero
/* 2E7EC 8002DBEC 00008825 */  or         $s1, $zero, $zero
/* 2E7F0 8002DBF0 18400006 */  blez       $v0, .L8002DC0C
/* 2E7F4 8002DBF4 24160005 */   addiu     $s6, $zero, 0x5
/* 2E7F8 8002DBF8 28410006 */  slti       $at, $v0, 0x6
/* 2E7FC 8002DBFC 10200003 */  beqz       $at, .L8002DC0C
/* 2E800 8002DC00 24080004 */   addiu     $t0, $zero, 0x4
/* 2E804 8002DC04 10000003 */  b          .L8002DC14
/* 2E808 8002DC08 A3A80044 */   sb        $t0, 0x44($sp)
.L8002DC0C:
/* 2E80C 8002DC0C 24090005 */  addiu      $t1, $zero, 0x5
/* 2E810 8002DC10 A3A90044 */  sb         $t1, 0x44($sp)
.L8002DC14:
/* 2E814 8002DC14 3C128009 */  lui        $s2, %hi(D_8008B6F0)
/* 2E818 8002DC18 2652B6F0 */  addiu      $s2, $s2, %lo(D_8008B6F0)
/* 2E81C 8002DC1C A3A00047 */  sb         $zero, 0x47($sp)
.L8002DC20:
/* 2E820 8002DC20 93AA0047 */  lbu        $t2, 0x47($sp)
/* 2E824 8002DC24 2401FFFF */  addiu      $at, $zero, -0x1
/* 2E828 8002DC28 93B50044 */  lbu        $s5, 0x44($sp)
/* 2E82C 8002DC2C 024AB821 */  addu       $s7, $s2, $t2
/* 2E830 8002DC30 82EB0000 */  lb         $t3, 0x0($s7)
/* 2E834 8002DC34 0000A025 */  or         $s4, $zero, $zero
/* 2E838 8002DC38 1161003A */  beq        $t3, $at, .L8002DD24
/* 2E83C 8002DC3C 0235082A */   slt       $at, $s1, $s5
.L8002DC40:
/* 2E840 8002DC40 10200011 */  beqz       $at, .L8002DC88
/* 2E844 8002DC44 00000000 */   nop
/* 2E848 8002DC48 0C009030 */  jal        func_800240C0
/* 2E84C 8002DC4C 00000000 */   nop
/* 2E850 8002DC50 0056001A */  div        $zero, $v0, $s6
/* 2E854 8002DC54 00001810 */  mfhi       $v1
/* 2E858 8002DC58 24630001 */  addiu      $v1, $v1, 0x1
/* 2E85C 8002DC5C 16C00002 */  bnez       $s6, .L8002DC68
/* 2E860 8002DC60 00000000 */   nop
/* 2E864 8002DC64 0007000D */  break      7
.L8002DC68:
/* 2E868 8002DC68 2401FFFF */  addiu      $at, $zero, -0x1
/* 2E86C 8002DC6C 16C10004 */  bne        $s6, $at, .L8002DC80
/* 2E870 8002DC70 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2E874 8002DC74 14410002 */  bne        $v0, $at, .L8002DC80
/* 2E878 8002DC78 00000000 */   nop
/* 2E87C 8002DC7C 0006000D */  break      6
.L8002DC80:
/* 2E880 8002DC80 1000000A */  b          .L8002DCAC
/* 2E884 8002DC84 83CC0005 */   lb        $t4, 0x5($fp)
.L8002DC88:
/* 2E888 8002DC88 0C009030 */  jal        func_800240C0
/* 2E88C 8002DC8C 00000000 */   nop
/* 2E890 8002DC90 04410004 */  bgez       $v0, .L8002DCA4
/* 2E894 8002DC94 30430003 */   andi      $v1, $v0, 0x3
/* 2E898 8002DC98 10600002 */  beqz       $v1, .L8002DCA4
/* 2E89C 8002DC9C 00000000 */   nop
/* 2E8A0 8002DCA0 2463FFFC */  addiu      $v1, $v1, -0x4
.L8002DCA4:
/* 2E8A4 8002DCA4 24630006 */  addiu      $v1, $v1, 0x6
/* 2E8A8 8002DCA8 83CC0005 */  lb         $t4, 0x5($fp)
.L8002DCAC:
/* 2E8AC 8002DCAC 106C0019 */  beq        $v1, $t4, .L8002DD14
/* 2E8B0 8002DCB0 00000000 */   nop
/* 2E8B4 8002DCB4 1A20000A */  blez       $s1, .L8002DCE0
/* 2E8B8 8002DCB8 00008025 */   or        $s0, $zero, $zero
.L8002DCBC:
/* 2E8BC 8002DCBC 02506821 */  addu       $t5, $s2, $s0
/* 2E8C0 8002DCC0 81AE0000 */  lb         $t6, 0x0($t5)
/* 2E8C4 8002DCC4 106E0006 */  beq        $v1, $t6, .L8002DCE0
/* 2E8C8 8002DCC8 00000000 */   nop
/* 2E8CC 8002DCCC 26100001 */  addiu      $s0, $s0, 0x1
/* 2E8D0 8002DCD0 320F00FF */  andi       $t7, $s0, 0xFF
/* 2E8D4 8002DCD4 01F1082A */  slt        $at, $t7, $s1
/* 2E8D8 8002DCD8 1420FFF8 */  bnez       $at, .L8002DCBC
/* 2E8DC 8002DCDC 01E08025 */   or        $s0, $t7, $zero
.L8002DCE0:
/* 2E8E0 8002DCE0 1630000C */  bne        $s1, $s0, .L8002DD14
/* 2E8E4 8002DCE4 3C01801A */   lui       $at, %hi(D_8019EC20)
/* 2E8E8 8002DCE8 93B80047 */  lbu        $t8, 0x47($sp)
/* 2E8EC 8002DCEC A2E30000 */  sb         $v1, 0x0($s7)
/* 2E8F0 8002DCF0 24140001 */  addiu      $s4, $zero, 0x1
/* 2E8F4 8002DCF4 00380821 */  addu       $at, $at, $t8
/* 2E8F8 8002DCF8 A023EC20 */  sb         $v1, %lo(D_8019EC20)($at)
/* 2E8FC 8002DCFC 3C01801A */  lui        $at, %hi(D_8019E208)
/* 2E900 8002DD00 00330821 */  addu       $at, $at, $s3
/* 2E904 8002DD04 26730001 */  addiu      $s3, $s3, 0x1
/* 2E908 8002DD08 327900FF */  andi       $t9, $s3, 0xFF
/* 2E90C 8002DD0C A023E208 */  sb         $v1, %lo(D_8019E208)($at)
/* 2E910 8002DD10 03209825 */  or         $s3, $t9, $zero
.L8002DD14:
/* 2E914 8002DD14 5280FFCA */  beql       $s4, $zero, .L8002DC40
/* 2E918 8002DD18 0235082A */   slt       $at, $s1, $s5
/* 2E91C 8002DD1C 10000007 */  b          .L8002DD3C
/* 2E920 8002DD20 93AA0047 */   lbu       $t2, 0x47($sp)
.L8002DD24:
/* 2E924 8002DD24 0235082A */  slt        $at, $s1, $s5
/* 2E928 8002DD28 10200003 */  beqz       $at, .L8002DD38
/* 2E92C 8002DD2C 93A80044 */   lbu       $t0, 0x44($sp)
/* 2E930 8002DD30 25090001 */  addiu      $t1, $t0, 0x1
/* 2E934 8002DD34 A3A90044 */  sb         $t1, 0x44($sp)
.L8002DD38:
/* 2E938 8002DD38 93AA0047 */  lbu        $t2, 0x47($sp)
.L8002DD3C:
/* 2E93C 8002DD3C 254B0001 */  addiu      $t3, $t2, 0x1
/* 2E940 8002DD40 317100FF */  andi       $s1, $t3, 0xFF
/* 2E944 8002DD44 2A210008 */  slti       $at, $s1, 0x8
/* 2E948 8002DD48 1420FFB5 */  bnez       $at, .L8002DC20
/* 2E94C 8002DD4C A3AB0047 */   sb        $t3, 0x47($sp)
/* 2E950 8002DD50 A3A00047 */  sb         $zero, 0x47($sp)
/* 2E954 8002DD54 00008825 */  or         $s1, $zero, $zero
.L8002DD58:
/* 2E958 8002DD58 26220001 */  addiu      $v0, $s1, 0x1
/* 2E95C 8002DD5C 304C00FF */  andi       $t4, $v0, 0xFF
/* 2E960 8002DD60 29810007 */  slti       $at, $t4, 0x7
/* 2E964 8002DD64 10200014 */  beqz       $at, .L8002DDB8
/* 2E968 8002DD68 305000FF */   andi      $s0, $v0, 0xFF
/* 2E96C 8002DD6C 93AD0047 */  lbu        $t5, 0x47($sp)
/* 2E970 8002DD70 3C0E801A */  lui        $t6, %hi(D_8019E208)
/* 2E974 8002DD74 25CEE208 */  addiu      $t6, $t6, %lo(D_8019E208)
/* 2E978 8002DD78 01AE2821 */  addu       $a1, $t5, $t6
.L8002DD7C:
/* 2E97C 8002DD7C 3C0F801A */  lui        $t7, %hi(D_8019E208)
/* 2E980 8002DD80 25EFE208 */  addiu      $t7, $t7, %lo(D_8019E208)
/* 2E984 8002DD84 020F1021 */  addu       $v0, $s0, $t7
/* 2E988 8002DD88 90430000 */  lbu        $v1, 0x0($v0)
/* 2E98C 8002DD8C 90A40000 */  lbu        $a0, 0x0($a1)
/* 2E990 8002DD90 26100001 */  addiu      $s0, $s0, 0x1
/* 2E994 8002DD94 321800FF */  andi       $t8, $s0, 0xFF
/* 2E998 8002DD98 0064082A */  slt        $at, $v1, $a0
/* 2E99C 8002DD9C 50200004 */  beql       $at, $zero, .L8002DDB0
/* 2E9A0 8002DDA0 2B010007 */   slti      $at, $t8, 0x7
/* 2E9A4 8002DDA4 A0A30000 */  sb         $v1, 0x0($a1)
/* 2E9A8 8002DDA8 A0440000 */  sb         $a0, 0x0($v0)
/* 2E9AC 8002DDAC 2B010007 */  slti       $at, $t8, 0x7
.L8002DDB0:
/* 2E9B0 8002DDB0 1420FFF2 */  bnez       $at, .L8002DD7C
/* 2E9B4 8002DDB4 03008025 */   or        $s0, $t8, $zero
.L8002DDB8:
/* 2E9B8 8002DDB8 93B90047 */  lbu        $t9, 0x47($sp)
/* 2E9BC 8002DDBC 27280001 */  addiu      $t0, $t9, 0x1
/* 2E9C0 8002DDC0 311100FF */  andi       $s1, $t0, 0xFF
/* 2E9C4 8002DDC4 2A210006 */  slti       $at, $s1, 0x6
/* 2E9C8 8002DDC8 1420FFE3 */  bnez       $at, .L8002DD58
/* 2E9CC 8002DDCC A3A80047 */   sb        $t0, 0x47($sp)
/* 2E9D0 8002DDD0 1000005E */  b          .L8002DF4C
/* 2E9D4 8002DDD4 8FBF003C */   lw        $ra, 0x3C($sp)
.L8002DDD8:
/* 2E9D8 8002DDD8 83C20005 */  lb         $v0, 0x5($fp)
/* 2E9DC 8002DDDC 24160005 */  addiu      $s6, $zero, 0x5
/* 2E9E0 8002DDE0 240A0005 */  addiu      $t2, $zero, 0x5
/* 2E9E4 8002DDE4 18400006 */  blez       $v0, .L8002DE00
/* 2E9E8 8002DDE8 28410006 */   slti      $at, $v0, 0x6
/* 2E9EC 8002DDEC 10200004 */  beqz       $at, .L8002DE00
/* 2E9F0 8002DDF0 24090004 */   addiu     $t1, $zero, 0x4
/* 2E9F4 8002DDF4 24160004 */  addiu      $s6, $zero, 0x4
/* 2E9F8 8002DDF8 10000002 */  b          .L8002DE04
/* 2E9FC 8002DDFC A3A90044 */   sb        $t1, 0x44($sp)
.L8002DE00:
/* 2EA00 8002DE00 A3AA0044 */  sb         $t2, 0x44($sp)
.L8002DE04:
/* 2EA04 8002DE04 A3A00047 */  sb         $zero, 0x47($sp)
.L8002DE08:
/* 2EA08 8002DE08 93AB0047 */  lbu        $t3, 0x47($sp)
/* 2EA0C 8002DE0C 2401FFFF */  addiu      $at, $zero, -0x1
/* 2EA10 8002DE10 02C0F025 */  or         $fp, $s6, $zero
/* 2EA14 8002DE14 024BB821 */  addu       $s7, $s2, $t3
/* 2EA18 8002DE18 82EC0000 */  lb         $t4, 0x0($s7)
/* 2EA1C 8002DE1C 0000A025 */  or         $s4, $zero, $zero
/* 2EA20 8002DE20 93B50044 */  lbu        $s5, 0x44($sp)
/* 2EA24 8002DE24 1181003C */  beq        $t4, $at, .L8002DF18
/* 2EA28 8002DE28 023E082A */   slt       $at, $s1, $fp
.L8002DE2C:
/* 2EA2C 8002DE2C 10200010 */  beqz       $at, .L8002DE70
/* 2EA30 8002DE30 00008025 */   or        $s0, $zero, $zero
/* 2EA34 8002DE34 0C009030 */  jal        func_800240C0
/* 2EA38 8002DE38 00000000 */   nop
/* 2EA3C 8002DE3C 0055001A */  div        $zero, $v0, $s5
/* 2EA40 8002DE40 00001810 */  mfhi       $v1
/* 2EA44 8002DE44 16A00002 */  bnez       $s5, .L8002DE50
/* 2EA48 8002DE48 00000000 */   nop
/* 2EA4C 8002DE4C 0007000D */  break      7
.L8002DE50:
/* 2EA50 8002DE50 2401FFFF */  addiu      $at, $zero, -0x1
/* 2EA54 8002DE54 16A10004 */  bne        $s5, $at, .L8002DE68
/* 2EA58 8002DE58 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2EA5C 8002DE5C 14410002 */  bne        $v0, $at, .L8002DE68
/* 2EA60 8002DE60 00000000 */   nop
/* 2EA64 8002DE64 0006000D */  break      6
.L8002DE68:
/* 2EA68 8002DE68 10000010 */  b          .L8002DEAC
/* 2EA6C 8002DE6C 00000000 */   nop
.L8002DE70:
/* 2EA70 8002DE70 240D0007 */  addiu      $t5, $zero, 0x7
/* 2EA74 8002DE74 0C009030 */  jal        func_800240C0
/* 2EA78 8002DE78 01B59823 */   subu      $s3, $t5, $s5
/* 2EA7C 8002DE7C 0053001A */  div        $zero, $v0, $s3
/* 2EA80 8002DE80 00007010 */  mfhi       $t6
/* 2EA84 8002DE84 01D51821 */  addu       $v1, $t6, $s5
/* 2EA88 8002DE88 16600002 */  bnez       $s3, .L8002DE94
/* 2EA8C 8002DE8C 00000000 */   nop
/* 2EA90 8002DE90 0007000D */  break      7
.L8002DE94:
/* 2EA94 8002DE94 2401FFFF */  addiu      $at, $zero, -0x1
/* 2EA98 8002DE98 16610004 */  bne        $s3, $at, .L8002DEAC
/* 2EA9C 8002DE9C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 2EAA0 8002DEA0 14410002 */  bne        $v0, $at, .L8002DEAC
/* 2EAA4 8002DEA4 00000000 */   nop
/* 2EAA8 8002DEA8 0006000D */  break      6
.L8002DEAC:
/* 2EAAC 8002DEAC 1A20000C */  blez       $s1, .L8002DEE0
/* 2EAB0 8002DEB0 3C02801A */   lui       $v0, %hi(D_8019E208)
/* 2EAB4 8002DEB4 00431021 */  addu       $v0, $v0, $v1
/* 2EAB8 8002DEB8 9042E208 */  lbu        $v0, %lo(D_8019E208)($v0)
.L8002DEBC:
/* 2EABC 8002DEBC 02507821 */  addu       $t7, $s2, $s0
/* 2EAC0 8002DEC0 81F80000 */  lb         $t8, 0x0($t7)
/* 2EAC4 8002DEC4 13020006 */  beq        $t8, $v0, .L8002DEE0
/* 2EAC8 8002DEC8 00000000 */   nop
/* 2EACC 8002DECC 26100001 */  addiu      $s0, $s0, 0x1
/* 2EAD0 8002DED0 321900FF */  andi       $t9, $s0, 0xFF
/* 2EAD4 8002DED4 0331082A */  slt        $at, $t9, $s1
/* 2EAD8 8002DED8 1420FFF8 */  bnez       $at, .L8002DEBC
/* 2EADC 8002DEDC 03208025 */   or        $s0, $t9, $zero
.L8002DEE0:
/* 2EAE0 8002DEE0 16300009 */  bne        $s1, $s0, .L8002DF08
/* 2EAE4 8002DEE4 3C02801A */   lui       $v0, %hi(D_8019E208)
/* 2EAE8 8002DEE8 00431021 */  addu       $v0, $v0, $v1
/* 2EAEC 8002DEEC 9042E208 */  lbu        $v0, %lo(D_8019E208)($v0)
/* 2EAF0 8002DEF0 93A80047 */  lbu        $t0, 0x47($sp)
/* 2EAF4 8002DEF4 3C01801A */  lui        $at, %hi(D_8019EC20)
/* 2EAF8 8002DEF8 A2E20000 */  sb         $v0, 0x0($s7)
/* 2EAFC 8002DEFC 00280821 */  addu       $at, $at, $t0
/* 2EB00 8002DF00 24140001 */  addiu      $s4, $zero, 0x1
/* 2EB04 8002DF04 A022EC20 */  sb         $v0, %lo(D_8019EC20)($at)
.L8002DF08:
/* 2EB08 8002DF08 5280FFC8 */  beql       $s4, $zero, .L8002DE2C
/* 2EB0C 8002DF0C 023E082A */   slt       $at, $s1, $fp
/* 2EB10 8002DF10 10000008 */  b          .L8002DF34
/* 2EB14 8002DF14 93AA0047 */   lbu       $t2, 0x47($sp)
.L8002DF18:
/* 2EB18 8002DF18 023E082A */  slt        $at, $s1, $fp
/* 2EB1C 8002DF1C 50200005 */  beql       $at, $zero, .L8002DF34
/* 2EB20 8002DF20 93AA0047 */   lbu       $t2, 0x47($sp)
/* 2EB24 8002DF24 26D60001 */  addiu      $s6, $s6, 0x1
/* 2EB28 8002DF28 32C900FF */  andi       $t1, $s6, 0xFF
/* 2EB2C 8002DF2C 0120B025 */  or         $s6, $t1, $zero
/* 2EB30 8002DF30 93AA0047 */  lbu        $t2, 0x47($sp)
.L8002DF34:
/* 2EB34 8002DF34 254B0001 */  addiu      $t3, $t2, 0x1
/* 2EB38 8002DF38 317100FF */  andi       $s1, $t3, 0xFF
/* 2EB3C 8002DF3C 2A210008 */  slti       $at, $s1, 0x8
/* 2EB40 8002DF40 1420FFB1 */  bnez       $at, .L8002DE08
/* 2EB44 8002DF44 A3AB0047 */   sb        $t3, 0x47($sp)
/* 2EB48 8002DF48 8FBF003C */  lw         $ra, 0x3C($sp)
.L8002DF4C:
/* 2EB4C 8002DF4C 8FB00018 */  lw         $s0, 0x18($sp)
/* 2EB50 8002DF50 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2EB54 8002DF54 8FB20020 */  lw         $s2, 0x20($sp)
/* 2EB58 8002DF58 8FB30024 */  lw         $s3, 0x24($sp)
/* 2EB5C 8002DF5C 8FB40028 */  lw         $s4, 0x28($sp)
/* 2EB60 8002DF60 8FB5002C */  lw         $s5, 0x2C($sp)
/* 2EB64 8002DF64 8FB60030 */  lw         $s6, 0x30($sp)
/* 2EB68 8002DF68 8FB70034 */  lw         $s7, 0x34($sp)
/* 2EB6C 8002DF6C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2EB70 8002DF70 03E00008 */  jr         $ra
/* 2EB74 8002DF74 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8002DF78
/* 2EB78 8002DF78 3C088014 */  lui        $t0, %hi(D_8013FF90)
/* 2EB7C 8002DF7C 2508FF90 */  addiu      $t0, $t0, %lo(D_8013FF90)
/* 2EB80 8002DF80 81020000 */  lb         $v0, 0x0($t0)
/* 2EB84 8002DF84 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 2EB88 8002DF88 24010004 */  addiu      $at, $zero, 0x4
/* 2EB8C 8002DF8C AFB1000C */  sw         $s1, 0xC($sp)
/* 2EB90 8002DF90 1441000A */  bne        $v0, $at, .L8002DFBC
/* 2EB94 8002DF94 AFB00008 */   sw        $s0, 0x8($sp)
/* 2EB98 8002DF98 810E0009 */  lb         $t6, 0x9($t0)
/* 2EB9C 8002DF9C 24020001 */  addiu      $v0, $zero, 0x1
/* 2EBA0 8002DFA0 3C04801A */  lui        $a0, %hi(D_8019ED50)
/* 2EBA4 8002DFA4 144E0156 */  bne        $v0, $t6, .L8002E500
/* 2EBA8 8002DFA8 2484ED50 */   addiu     $a0, $a0, %lo(D_8019ED50)
/* 2EBAC 8002DFAC 908F0028 */  lbu        $t7, 0x28($a0)
/* 2EBB0 8002DFB0 25F80001 */  addiu      $t8, $t7, 0x1
/* 2EBB4 8002DFB4 10000152 */  b          .L8002E500
/* 2EBB8 8002DFB8 A0980028 */   sb        $t8, 0x28($a0)
.L8002DFBC:
/* 2EBBC 8002DFBC 24010003 */  addiu      $at, $zero, 0x3
/* 2EBC0 8002DFC0 54410150 */  bnel       $v0, $at, .L8002E504
/* 2EBC4 8002DFC4 8FB00008 */   lw        $s0, 0x8($sp)
/* 2EBC8 8002DFC8 8107000B */  lb         $a3, 0xB($t0)
/* 2EBCC 8002DFCC 00001825 */  or         $v1, $zero, $zero
/* 2EBD0 8002DFD0 00005825 */  or         $t3, $zero, $zero
/* 2EBD4 8002DFD4 14E00059 */  bnez       $a3, .L8002E13C
/* 2EBD8 8002DFD8 27B10034 */   addiu     $s1, $sp, 0x34
/* 2EBDC 8002DFDC 3C10801A */  lui        $s0, %hi(D_8019E200)
/* 2EBE0 8002DFE0 3C0D801A */  lui        $t5, %hi(D_8019ED30)
/* 2EBE4 8002DFE4 3C0C801A */  lui        $t4, %hi(D_8019EC20)
/* 2EBE8 8002DFE8 3C068009 */  lui        $a2, %hi(D_80097980)
/* 2EBEC 8002DFEC 3C04801A */  lui        $a0, %hi(D_8019ED50)
/* 2EBF0 8002DFF0 2484ED50 */  addiu      $a0, $a0, %lo(D_8019ED50)
/* 2EBF4 8002DFF4 24C67980 */  addiu      $a2, $a2, %lo(D_80097980)
/* 2EBF8 8002DFF8 258CEC20 */  addiu      $t4, $t4, %lo(D_8019EC20)
/* 2EBFC 8002DFFC 25ADED30 */  addiu      $t5, $t5, %lo(D_8019ED30)
/* 2EC00 8002E000 2610E200 */  addiu      $s0, $s0, %lo(D_8019E200)
/* 2EC04 8002E004 27A5002C */  addiu      $a1, $sp, 0x2C
.L8002E008:
/* 2EC08 8002E008 0183C821 */  addu       $t9, $t4, $v1
/* 2EC0C 8002E00C 93220000 */  lbu        $v0, 0x0($t9)
/* 2EC10 8002E010 00C37021 */  addu       $t6, $a2, $v1
/* 2EC14 8002E014 91CA0000 */  lbu        $t2, 0x0($t6)
/* 2EC18 8002E018 00837821 */  addu       $t7, $a0, $v1
/* 2EC1C 8002E01C 29610007 */  slti       $at, $t3, 0x7
/* 2EC20 8002E020 01A24821 */  addu       $t1, $t5, $v0
/* 2EC24 8002E024 A1E20000 */  sb         $v0, 0x0($t7)
/* 2EC28 8002E028 A12A000A */  sb         $t2, 0xA($t1)
/* 2EC2C 8002E02C 10200005 */  beqz       $at, .L8002E044
/* 2EC30 8002E030 A12A0014 */   sb        $t2, 0x14($t1)
/* 2EC34 8002E034 25780001 */  addiu      $t8, $t3, 0x1
/* 2EC38 8002E038 0203C821 */  addu       $t9, $s0, $v1
/* 2EC3C 8002E03C 10000003 */  b          .L8002E04C
/* 2EC40 8002E040 A3380000 */   sb        $t8, 0x0($t9)
.L8002E044:
/* 2EC44 8002E044 02037021 */  addu       $t6, $s0, $v1
/* 2EC48 8002E048 A1C30000 */  sb         $v1, 0x0($t6)
.L8002E04C:
/* 2EC4C 8002E04C 02237821 */  addu       $t7, $s1, $v1
/* 2EC50 8002E050 00A3C021 */  addu       $t8, $a1, $v1
/* 2EC54 8002E054 24630001 */  addiu      $v1, $v1, 0x1
/* 2EC58 8002E058 306B00FF */  andi       $t3, $v1, 0xFF
/* 2EC5C 8002E05C 29610008 */  slti       $at, $t3, 0x8
/* 2EC60 8002E060 A1E00000 */  sb         $zero, 0x0($t7)
/* 2EC64 8002E064 01601825 */  or         $v1, $t3, $zero
/* 2EC68 8002E068 1420FFE7 */  bnez       $at, .L8002E008
/* 2EC6C 8002E06C A3000000 */   sb        $zero, 0x0($t8)
/* 2EC70 8002E070 00001025 */  or         $v0, $zero, $zero
/* 2EC74 8002E074 00001825 */  or         $v1, $zero, $zero
.L8002E078:
/* 2EC78 8002E078 01A34821 */  addu       $t1, $t5, $v1
/* 2EC7C 8002E07C 912E0000 */  lbu        $t6, 0x0($t1)
/* 2EC80 8002E080 24630001 */  addiu      $v1, $v1, 0x1
/* 2EC84 8002E084 00825021 */  addu       $t2, $a0, $v0
/* 2EC88 8002E088 51C00009 */  beql       $t6, $zero, .L8002E0B0
/* 2EC8C 8002E08C 306E00FF */   andi      $t6, $v1, 0xFF
/* 2EC90 8002E090 912F000A */  lbu        $t7, 0xA($t1)
/* 2EC94 8002E094 91380014 */  lbu        $t8, 0x14($t1)
/* 2EC98 8002E098 24420001 */  addiu      $v0, $v0, 0x1
/* 2EC9C 8002E09C 305900FF */  andi       $t9, $v0, 0xFF
/* 2ECA0 8002E0A0 03201025 */  or         $v0, $t9, $zero
/* 2ECA4 8002E0A4 A14F0018 */  sb         $t7, 0x18($t2)
/* 2ECA8 8002E0A8 A1580020 */  sb         $t8, 0x20($t2)
/* 2ECAC 8002E0AC 306E00FF */  andi       $t6, $v1, 0xFF
.L8002E0B0:
/* 2ECB0 8002E0B0 29C1000A */  slti       $at, $t6, 0xA
/* 2ECB4 8002E0B4 1420FFF0 */  bnez       $at, .L8002E078
/* 2ECB8 8002E0B8 01C01825 */   or        $v1, $t6, $zero
/* 2ECBC 8002E0BC 00001825 */  or         $v1, $zero, $zero
/* 2ECC0 8002E0C0 00005825 */  or         $t3, $zero, $zero
.L8002E0C4:
/* 2ECC4 8002E0C4 25690001 */  addiu      $t1, $t3, 0x1
/* 2ECC8 8002E0C8 312F00FF */  andi       $t7, $t1, 0xFF
/* 2ECCC 8002E0CC 29E10008 */  slti       $at, $t7, 0x8
/* 2ECD0 8002E0D0 10200013 */  beqz       $at, .L8002E120
/* 2ECD4 8002E0D4 312200FF */   andi      $v0, $t1, 0xFF
/* 2ECD8 8002E0D8 00834821 */  addu       $t1, $a0, $v1
.L8002E0DC:
/* 2ECDC 8002E0DC 00825021 */  addu       $t2, $a0, $v0
/* 2ECE0 8002E0E0 914D0018 */  lbu        $t5, 0x18($t2)
/* 2ECE4 8002E0E4 912B0018 */  lbu        $t3, 0x18($t1)
/* 2ECE8 8002E0E8 24420001 */  addiu      $v0, $v0, 0x1
/* 2ECEC 8002E0EC 305900FF */  andi       $t9, $v0, 0xFF
/* 2ECF0 8002E0F0 016D082A */  slt        $at, $t3, $t5
/* 2ECF4 8002E0F4 50200008 */  beql       $at, $zero, .L8002E118
/* 2ECF8 8002E0F8 2B210008 */   slti      $at, $t9, 0x8
/* 2ECFC 8002E0FC A12D0018 */  sb         $t5, 0x18($t1)
/* 2ED00 8002E100 91580020 */  lbu        $t8, 0x20($t2)
/* 2ED04 8002E104 A14B0018 */  sb         $t3, 0x18($t2)
/* 2ED08 8002E108 91300020 */  lbu        $s0, 0x20($t1)
/* 2ED0C 8002E10C A1380020 */  sb         $t8, 0x20($t1)
/* 2ED10 8002E110 A1500020 */  sb         $s0, 0x20($t2)
/* 2ED14 8002E114 2B210008 */  slti       $at, $t9, 0x8
.L8002E118:
/* 2ED18 8002E118 1420FFF0 */  bnez       $at, .L8002E0DC
/* 2ED1C 8002E11C 03201025 */   or        $v0, $t9, $zero
.L8002E120:
/* 2ED20 8002E120 24630001 */  addiu      $v1, $v1, 0x1
/* 2ED24 8002E124 306B00FF */  andi       $t3, $v1, 0xFF
/* 2ED28 8002E128 29610007 */  slti       $at, $t3, 0x7
/* 2ED2C 8002E12C 1420FFE5 */  bnez       $at, .L8002E0C4
/* 2ED30 8002E130 01601825 */   or        $v1, $t3, $zero
/* 2ED34 8002E134 100000AF */  b          .L8002E3F4
/* 2ED38 8002E138 A0800008 */   sb        $zero, 0x8($a0)
.L8002E13C:
/* 2ED3C 8002E13C 3C0D801A */  lui        $t5, %hi(D_8019ED30)
/* 2ED40 8002E140 3C0C801A */  lui        $t4, %hi(D_8019EC20)
/* 2ED44 8002E144 3C068009 */  lui        $a2, %hi(D_80097980)
/* 2ED48 8002E148 3C04801A */  lui        $a0, %hi(D_8019ED50)
/* 2ED4C 8002E14C 2484ED50 */  addiu      $a0, $a0, %lo(D_8019ED50)
/* 2ED50 8002E150 24C67980 */  addiu      $a2, $a2, %lo(D_80097980)
/* 2ED54 8002E154 258CEC20 */  addiu      $t4, $t4, %lo(D_8019EC20)
/* 2ED58 8002E158 25ADED30 */  addiu      $t5, $t5, %lo(D_8019ED30)
/* 2ED5C 8002E15C 00001825 */  or         $v1, $zero, $zero
/* 2ED60 8002E160 27A5002C */  addiu      $a1, $sp, 0x2C
.L8002E164:
/* 2ED64 8002E164 01837821 */  addu       $t7, $t4, $v1
/* 2ED68 8002E168 91E20000 */  lbu        $v0, 0x0($t7)
/* 2ED6C 8002E16C 00C3C021 */  addu       $t8, $a2, $v1
/* 2ED70 8002E170 930A0000 */  lbu        $t2, 0x0($t8)
/* 2ED74 8002E174 01A24821 */  addu       $t1, $t5, $v0
/* 2ED78 8002E178 9139000A */  lbu        $t9, 0xA($t1)
/* 2ED7C 8002E17C 00837821 */  addu       $t7, $a0, $v1
/* 2ED80 8002E180 91F80000 */  lbu        $t8, 0x0($t7)
/* 2ED84 8002E184 032A7021 */  addu       $t6, $t9, $t2
/* 2ED88 8002E188 00A3C821 */  addu       $t9, $a1, $v1
/* 2ED8C 8002E18C 24630001 */  addiu      $v1, $v1, 0x1
/* 2ED90 8002E190 A12E000A */  sb         $t6, 0xA($t1)
/* 2ED94 8002E194 306E00FF */  andi       $t6, $v1, 0xFF
/* 2ED98 8002E198 29C10008 */  slti       $at, $t6, 0x8
/* 2ED9C 8002E19C 01C01825 */  or         $v1, $t6, $zero
/* 2EDA0 8002E1A0 A12A0014 */  sb         $t2, 0x14($t1)
/* 2EDA4 8002E1A4 1420FFEF */  bnez       $at, .L8002E164
/* 2EDA8 8002E1A8 A3380000 */   sb        $t8, 0x0($t9)
/* 2EDAC 8002E1AC 00001025 */  or         $v0, $zero, $zero
/* 2EDB0 8002E1B0 00001825 */  or         $v1, $zero, $zero
.L8002E1B4:
/* 2EDB4 8002E1B4 01A34821 */  addu       $t1, $t5, $v1
/* 2EDB8 8002E1B8 912F0000 */  lbu        $t7, 0x0($t1)
/* 2EDBC 8002E1BC 00825021 */  addu       $t2, $a0, $v0
/* 2EDC0 8002E1C0 51E0000A */  beql       $t7, $zero, .L8002E1EC
/* 2EDC4 8002E1C4 24630001 */   addiu     $v1, $v1, 0x1
/* 2EDC8 8002E1C8 9138000A */  lbu        $t8, 0xA($t1)
/* 2EDCC 8002E1CC 91390014 */  lbu        $t9, 0x14($t1)
/* 2EDD0 8002E1D0 24420001 */  addiu      $v0, $v0, 0x1
/* 2EDD4 8002E1D4 304E00FF */  andi       $t6, $v0, 0xFF
/* 2EDD8 8002E1D8 A1430000 */  sb         $v1, 0x0($t2)
/* 2EDDC 8002E1DC 01C01025 */  or         $v0, $t6, $zero
/* 2EDE0 8002E1E0 A1580018 */  sb         $t8, 0x18($t2)
/* 2EDE4 8002E1E4 A1590020 */  sb         $t9, 0x20($t2)
/* 2EDE8 8002E1E8 24630001 */  addiu      $v1, $v1, 0x1
.L8002E1EC:
/* 2EDEC 8002E1EC 306F00FF */  andi       $t7, $v1, 0xFF
/* 2EDF0 8002E1F0 29E1000A */  slti       $at, $t7, 0xA
/* 2EDF4 8002E1F4 1420FFEF */  bnez       $at, .L8002E1B4
/* 2EDF8 8002E1F8 01E01825 */   or        $v1, $t7, $zero
/* 2EDFC 8002E1FC 00001825 */  or         $v1, $zero, $zero
/* 2EE00 8002E200 00005825 */  or         $t3, $zero, $zero
.L8002E204:
/* 2EE04 8002E204 25690001 */  addiu      $t1, $t3, 0x1
/* 2EE08 8002E208 313800FF */  andi       $t8, $t1, 0xFF
/* 2EE0C 8002E20C 2B010008 */  slti       $at, $t8, 0x8
/* 2EE10 8002E210 1020002A */  beqz       $at, .L8002E2BC
/* 2EE14 8002E214 312200FF */   andi      $v0, $t1, 0xFF
/* 2EE18 8002E218 00834821 */  addu       $t1, $a0, $v1
.L8002E21C:
/* 2EE1C 8002E21C 00825021 */  addu       $t2, $a0, $v0
/* 2EE20 8002E220 914D0018 */  lbu        $t5, 0x18($t2)
/* 2EE24 8002E224 912B0018 */  lbu        $t3, 0x18($t1)
/* 2EE28 8002E228 24420001 */  addiu      $v0, $v0, 0x1
/* 2EE2C 8002E22C 01A08025 */  or         $s0, $t5, $zero
/* 2EE30 8002E230 016D082A */  slt        $at, $t3, $t5
/* 2EE34 8002E234 1020000C */  beqz       $at, .L8002E268
/* 2EE38 8002E238 01606025 */   or        $t4, $t3, $zero
/* 2EE3C 8002E23C A12D0018 */  sb         $t5, 0x18($t1)
/* 2EE40 8002E240 91590020 */  lbu        $t9, 0x20($t2)
/* 2EE44 8002E244 A14B0018 */  sb         $t3, 0x18($t2)
/* 2EE48 8002E248 91300020 */  lbu        $s0, 0x20($t1)
/* 2EE4C 8002E24C A1390020 */  sb         $t9, 0x20($t1)
/* 2EE50 8002E250 914E0000 */  lbu        $t6, 0x0($t2)
/* 2EE54 8002E254 A1500020 */  sb         $s0, 0x20($t2)
/* 2EE58 8002E258 91300000 */  lbu        $s0, 0x0($t1)
/* 2EE5C 8002E25C A12E0000 */  sb         $t6, 0x0($t1)
/* 2EE60 8002E260 10000012 */  b          .L8002E2AC
/* 2EE64 8002E264 A1500000 */   sb        $s0, 0x0($t2)
.L8002E268:
/* 2EE68 8002E268 55900011 */  bnel       $t4, $s0, .L8002E2B0
/* 2EE6C 8002E26C 304F00FF */   andi      $t7, $v0, 0xFF
/* 2EE70 8002E270 912F0020 */  lbu        $t7, 0x20($t1)
/* 2EE74 8002E274 91580020 */  lbu        $t8, 0x20($t2)
/* 2EE78 8002E278 01F8082A */  slt        $at, $t7, $t8
/* 2EE7C 8002E27C 5020000C */  beql       $at, $zero, .L8002E2B0
/* 2EE80 8002E280 304F00FF */   andi      $t7, $v0, 0xFF
/* 2EE84 8002E284 A12D0018 */  sb         $t5, 0x18($t1)
/* 2EE88 8002E288 91590020 */  lbu        $t9, 0x20($t2)
/* 2EE8C 8002E28C A14B0018 */  sb         $t3, 0x18($t2)
/* 2EE90 8002E290 91300020 */  lbu        $s0, 0x20($t1)
/* 2EE94 8002E294 A1390020 */  sb         $t9, 0x20($t1)
/* 2EE98 8002E298 914E0000 */  lbu        $t6, 0x0($t2)
/* 2EE9C 8002E29C A1500020 */  sb         $s0, 0x20($t2)
/* 2EEA0 8002E2A0 91300000 */  lbu        $s0, 0x0($t1)
/* 2EEA4 8002E2A4 A12E0000 */  sb         $t6, 0x0($t1)
/* 2EEA8 8002E2A8 A1500000 */  sb         $s0, 0x0($t2)
.L8002E2AC:
/* 2EEAC 8002E2AC 304F00FF */  andi       $t7, $v0, 0xFF
.L8002E2B0:
/* 2EEB0 8002E2B0 29E10008 */  slti       $at, $t7, 0x8
/* 2EEB4 8002E2B4 1420FFD9 */  bnez       $at, .L8002E21C
/* 2EEB8 8002E2B8 01E01025 */   or        $v0, $t7, $zero
.L8002E2BC:
/* 2EEBC 8002E2BC 24630001 */  addiu      $v1, $v1, 0x1
/* 2EEC0 8002E2C0 306B00FF */  andi       $t3, $v1, 0xFF
/* 2EEC4 8002E2C4 29610007 */  slti       $at, $t3, 0x7
/* 2EEC8 8002E2C8 1420FFCE */  bnez       $at, .L8002E204
/* 2EECC 8002E2CC 01601825 */   or        $v1, $t3, $zero
/* 2EED0 8002E2D0 3C10801A */  lui        $s0, %hi(D_8019E200)
/* 2EED4 8002E2D4 2610E200 */  addiu      $s0, $s0, %lo(D_8019E200)
/* 2EED8 8002E2D8 00001825 */  or         $v1, $zero, $zero
/* 2EEDC 8002E2DC 27B10034 */  addiu      $s1, $sp, 0x34
.L8002E2E0:
/* 2EEE0 8002E2E0 0083C821 */  addu       $t9, $a0, $v1
/* 2EEE4 8002E2E4 93290000 */  lbu        $t1, 0x0($t9)
/* 2EEE8 8002E2E8 00001025 */  or         $v0, $zero, $zero
.L8002E2EC:
/* 2EEEC 8002E2EC 00A27021 */  addu       $t6, $a1, $v0
/* 2EEF0 8002E2F0 91CF0000 */  lbu        $t7, 0x0($t6)
/* 2EEF4 8002E2F4 152F0005 */  bne        $t1, $t7, .L8002E30C
/* 2EEF8 8002E2F8 0202C021 */   addu      $t8, $s0, $v0
/* 2EEFC 8002E2FC 93190000 */  lbu        $t9, 0x0($t8)
/* 2EF00 8002E300 02237021 */  addu       $t6, $s1, $v1
/* 2EF04 8002E304 10000006 */  b          .L8002E320
/* 2EF08 8002E308 A1D90000 */   sb        $t9, 0x0($t6)
.L8002E30C:
/* 2EF0C 8002E30C 24420001 */  addiu      $v0, $v0, 0x1
/* 2EF10 8002E310 304F00FF */  andi       $t7, $v0, 0xFF
/* 2EF14 8002E314 29E10008 */  slti       $at, $t7, 0x8
/* 2EF18 8002E318 1420FFF4 */  bnez       $at, .L8002E2EC
/* 2EF1C 8002E31C 01E01025 */   or        $v0, $t7, $zero
.L8002E320:
/* 2EF20 8002E320 24630001 */  addiu      $v1, $v1, 0x1
/* 2EF24 8002E324 307800FF */  andi       $t8, $v1, 0xFF
/* 2EF28 8002E328 2B010008 */  slti       $at, $t8, 0x8
/* 2EF2C 8002E32C 1420FFEC */  bnez       $at, .L8002E2E0
/* 2EF30 8002E330 03001825 */   or        $v1, $t8, $zero
/* 2EF34 8002E334 24090001 */  addiu      $t1, $zero, 0x1
/* 2EF38 8002E338 312200FF */  andi       $v0, $t1, 0xFF
/* 2EF3C 8002E33C 28410008 */  slti       $at, $v0, 0x8
/* 2EF40 8002E340 304300FF */  andi       $v1, $v0, 0xFF
/* 2EF44 8002E344 10200012 */  beqz       $at, .L8002E390
/* 2EF48 8002E348 A2090000 */   sb        $t1, 0x0($s0)
/* 2EF4C 8002E34C 00605825 */  or         $t3, $v1, $zero
.L8002E350:
/* 2EF50 8002E350 0083C821 */  addu       $t9, $a0, $v1
/* 2EF54 8002E354 008B7821 */  addu       $t7, $a0, $t3
/* 2EF58 8002E358 91F80017 */  lbu        $t8, 0x17($t7)
/* 2EF5C 8002E35C 932E0018 */  lbu        $t6, 0x18($t9)
/* 2EF60 8002E360 02037821 */  addu       $t7, $s0, $v1
/* 2EF64 8002E364 24630001 */  addiu      $v1, $v1, 0x1
/* 2EF68 8002E368 51D80005 */  beql       $t6, $t8, .L8002E380
/* 2EF6C 8002E36C 306B00FF */   andi      $t3, $v1, 0xFF
/* 2EF70 8002E370 25620001 */  addiu      $v0, $t3, 0x1
/* 2EF74 8002E374 305900FF */  andi       $t9, $v0, 0xFF
/* 2EF78 8002E378 03201025 */  or         $v0, $t9, $zero
/* 2EF7C 8002E37C 306B00FF */  andi       $t3, $v1, 0xFF
.L8002E380:
/* 2EF80 8002E380 29610008 */  slti       $at, $t3, 0x8
/* 2EF84 8002E384 01601825 */  or         $v1, $t3, $zero
/* 2EF88 8002E388 1420FFF1 */  bnez       $at, .L8002E350
/* 2EF8C 8002E38C A1E20000 */   sb        $v0, 0x0($t7)
.L8002E390:
/* 2EF90 8002E390 00001825 */  or         $v1, $zero, $zero
/* 2EF94 8002E394 240A0002 */  addiu      $t2, $zero, 0x2
.L8002E398:
/* 2EF98 8002E398 0223C021 */  addu       $t8, $s1, $v1
/* 2EF9C 8002E39C 0203C821 */  addu       $t9, $s0, $v1
/* 2EFA0 8002E3A0 93250000 */  lbu        $a1, 0x0($t9)
/* 2EFA4 8002E3A4 93020000 */  lbu        $v0, 0x0($t8)
/* 2EFA8 8002E3A8 00837821 */  addu       $t7, $a0, $v1
/* 2EFAC 8002E3AC 14450003 */  bne        $v0, $a1, .L8002E3BC
/* 2EFB0 8002E3B0 0045082A */   slt       $at, $v0, $a1
/* 2EFB4 8002E3B4 10000009 */  b          .L8002E3DC
/* 2EFB8 8002E3B8 A1E00010 */   sb        $zero, 0x10($t7)
.L8002E3BC:
/* 2EFBC 8002E3BC 10200003 */  beqz       $at, .L8002E3CC
/* 2EFC0 8002E3C0 00837021 */   addu      $t6, $a0, $v1
/* 2EFC4 8002E3C4 10000005 */  b          .L8002E3DC
/* 2EFC8 8002E3C8 A1CA0010 */   sb        $t2, 0x10($t6)
.L8002E3CC:
/* 2EFCC 8002E3CC 00A2082A */  slt        $at, $a1, $v0
/* 2EFD0 8002E3D0 10200002 */  beqz       $at, .L8002E3DC
/* 2EFD4 8002E3D4 0083C021 */   addu      $t8, $a0, $v1
/* 2EFD8 8002E3D8 A3090010 */  sb         $t1, 0x10($t8)
.L8002E3DC:
/* 2EFDC 8002E3DC 24630001 */  addiu      $v1, $v1, 0x1
/* 2EFE0 8002E3E0 307900FF */  andi       $t9, $v1, 0xFF
/* 2EFE4 8002E3E4 2B210008 */  slti       $at, $t9, 0x8
/* 2EFE8 8002E3E8 1420FFEB */  bnez       $at, .L8002E398
/* 2EFEC 8002E3EC 03201825 */   or        $v1, $t9, $zero
/* 2EFF0 8002E3F0 A0800008 */  sb         $zero, 0x8($a0)
.L8002E3F4:
/* 2EFF4 8002E3F4 24030001 */  addiu      $v1, $zero, 0x1
/* 2EFF8 8002E3F8 00001025 */  or         $v0, $zero, $zero
/* 2EFFC 8002E3FC 240B0001 */  addiu      $t3, $zero, 0x1
.L8002E400:
/* 2F000 8002E400 00834821 */  addu       $t1, $a0, $v1
/* 2F004 8002E404 008B7021 */  addu       $t6, $a0, $t3
/* 2F008 8002E408 91D80017 */  lbu        $t8, 0x17($t6)
/* 2F00C 8002E40C 912F0018 */  lbu        $t7, 0x18($t1)
/* 2F010 8002E410 51F80003 */  beql       $t7, $t8, .L8002E420
/* 2F014 8002E414 24630001 */   addiu     $v1, $v1, 0x1
/* 2F018 8002E418 306200FF */  andi       $v0, $v1, 0xFF
/* 2F01C 8002E41C 24630001 */  addiu      $v1, $v1, 0x1
.L8002E420:
/* 2F020 8002E420 306B00FF */  andi       $t3, $v1, 0xFF
/* 2F024 8002E424 29610008 */  slti       $at, $t3, 0x8
/* 2F028 8002E428 01601825 */  or         $v1, $t3, $zero
/* 2F02C 8002E42C 1420FFF4 */  bnez       $at, .L8002E400
/* 2F030 8002E430 A1220008 */   sb        $v0, 0x8($t1)
/* 2F034 8002E434 810E0009 */  lb         $t6, 0x9($t0)
/* 2F038 8002E438 24020001 */  addiu      $v0, $zero, 0x1
/* 2F03C 8002E43C 00001825 */  or         $v1, $zero, $zero
/* 2F040 8002E440 144E0004 */  bne        $v0, $t6, .L8002E454
/* 2F044 8002E444 00000000 */   nop
/* 2F048 8002E448 908F0029 */  lbu        $t7, 0x29($a0)
/* 2F04C 8002E44C 25F80001 */  addiu      $t8, $t7, 0x1
/* 2F050 8002E450 A0980029 */  sb         $t8, 0x29($a0)
.L8002E454:
/* 2F054 8002E454 50E00006 */  beql       $a3, $zero, .L8002E470
/* 2F058 8002E458 81020005 */   lb        $v0, 0x5($t0)
/* 2F05C 8002E45C 10470003 */  beq        $v0, $a3, .L8002E46C
/* 2F060 8002E460 24010002 */   addiu     $at, $zero, 0x2
/* 2F064 8002E464 54E10027 */  bnel       $a3, $at, .L8002E504
/* 2F068 8002E468 8FB00008 */   lw        $s0, 0x8($sp)
.L8002E46C:
/* 2F06C 8002E46C 81020005 */  lb         $v0, 0x5($t0)
.L8002E470:
/* 2F070 8002E470 00834821 */  addu       $t1, $a0, $v1
/* 2F074 8002E474 91390000 */  lbu        $t9, 0x0($t1)
/* 2F078 8002E478 24630001 */  addiu      $v1, $v1, 0x1
/* 2F07C 8002E47C 307800FF */  andi       $t8, $v1, 0xFF
/* 2F080 8002E480 1459001D */  bne        $v0, $t9, .L8002E4F8
/* 2F084 8002E484 2B010008 */   slti      $at, $t8, 0x8
/* 2F088 8002E488 3C038009 */  lui        $v1, %hi(D_80097989)
/* 2F08C 8002E48C 00671821 */  addu       $v1, $v1, $a3
/* 2F090 8002E490 90637989 */  lbu        $v1, %lo(D_80097989)($v1)
/* 2F094 8002E494 912C0018 */  lbu        $t4, 0x18($t1)
/* 2F098 8002E498 240E0008 */  addiu      $t6, $zero, 0x8
/* 2F09C 8002E49C 24020006 */  addiu      $v0, $zero, 0x6
/* 2F0A0 8002E4A0 0183082A */  slt        $at, $t4, $v1
/* 2F0A4 8002E4A4 14200003 */  bnez       $at, .L8002E4B4
/* 2F0A8 8002E4A8 006C8023 */   subu      $s0, $v1, $t4
/* 2F0AC 8002E4AC 10000014 */  b          .L8002E500
/* 2F0B0 8002E4B0 A10E000C */   sb        $t6, 0xC($t0)
.L8002E4B4:
/* 2F0B4 8002E4B4 320400FF */  andi       $a0, $s0, 0xFF
.L8002E4B8:
/* 2F0B8 8002E4B8 00C2C021 */  addu       $t8, $a2, $v0
/* 2F0BC 8002E4BC 9319FFFF */  lbu        $t9, -0x1($t8)
/* 2F0C0 8002E4C0 00401825 */  or         $v1, $v0, $zero
/* 2F0C4 8002E4C4 0099082A */  slt        $at, $a0, $t9
/* 2F0C8 8002E4C8 54200004 */  bnel       $at, $zero, .L8002E4DC
/* 2F0CC 8002E4CC 2442FFFF */   addiu     $v0, $v0, -0x1
/* 2F0D0 8002E4D0 10000005 */  b          .L8002E4E8
/* 2F0D4 8002E4D4 A103000C */   sb        $v1, 0xC($t0)
/* 2F0D8 8002E4D8 2442FFFF */  addiu      $v0, $v0, -0x1
.L8002E4DC:
/* 2F0DC 8002E4DC 304E00FF */  andi       $t6, $v0, 0xFF
/* 2F0E0 8002E4E0 15C0FFF5 */  bnez       $t6, .L8002E4B8
/* 2F0E4 8002E4E4 01C01025 */   or        $v0, $t6, $zero
.L8002E4E8:
/* 2F0E8 8002E4E8 14400005 */  bnez       $v0, .L8002E500
/* 2F0EC 8002E4EC 240FFFFF */   addiu     $t7, $zero, -0x1
/* 2F0F0 8002E4F0 10000003 */  b          .L8002E500
/* 2F0F4 8002E4F4 A10F000C */   sb        $t7, 0xC($t0)
.L8002E4F8:
/* 2F0F8 8002E4F8 1420FFDD */  bnez       $at, .L8002E470
/* 2F0FC 8002E4FC 03001825 */   or        $v1, $t8, $zero
.L8002E500:
/* 2F100 8002E500 8FB00008 */  lw         $s0, 0x8($sp)
.L8002E504:
/* 2F104 8002E504 8FB1000C */  lw         $s1, 0xC($sp)
/* 2F108 8002E508 03E00008 */  jr         $ra
/* 2F10C 8002E50C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8002E510
/* 2F110 8002E510 3C07801A */  lui        $a3, %hi(D_8019E200)
/* 2F114 8002E514 3C06801A */  lui        $a2, %hi(D_8019ED50)
/* 2F118 8002E518 3C05801A */  lui        $a1, %hi(D_8019ED30)
/* 2F11C 8002E51C 24A5ED30 */  addiu      $a1, $a1, %lo(D_8019ED30)
/* 2F120 8002E520 24C6ED50 */  addiu      $a2, $a2, %lo(D_8019ED50)
/* 2F124 8002E524 24E7E200 */  addiu      $a3, $a3, %lo(D_8019E200)
/* 2F128 8002E528 00001025 */  or         $v0, $zero, $zero
/* 2F12C 8002E52C 00002025 */  or         $a0, $zero, $zero
.L8002E530:
/* 2F130 8002E530 00A21821 */  addu       $v1, $a1, $v0
/* 2F134 8002E534 28810008 */  slti       $at, $a0, 0x8
/* 2F138 8002E538 A0600000 */  sb         $zero, 0x0($v1)
/* 2F13C 8002E53C A060000A */  sb         $zero, 0xA($v1)
/* 2F140 8002E540 10200008 */  beqz       $at, .L8002E564
/* 2F144 8002E544 A0600014 */   sb        $zero, 0x14($v1)
/* 2F148 8002E548 00C21821 */  addu       $v1, $a2, $v0
/* 2F14C 8002E54C 00E27021 */  addu       $t6, $a3, $v0
/* 2F150 8002E550 A0600000 */  sb         $zero, 0x0($v1)
/* 2F154 8002E554 A0600010 */  sb         $zero, 0x10($v1)
/* 2F158 8002E558 A0600018 */  sb         $zero, 0x18($v1)
/* 2F15C 8002E55C A0600020 */  sb         $zero, 0x20($v1)
/* 2F160 8002E560 A1C00000 */  sb         $zero, 0x0($t6)
.L8002E564:
/* 2F164 8002E564 24420001 */  addiu      $v0, $v0, 0x1
/* 2F168 8002E568 304400FF */  andi       $a0, $v0, 0xFF
/* 2F16C 8002E56C 2881000A */  slti       $at, $a0, 0xA
/* 2F170 8002E570 1420FFEF */  bnez       $at, .L8002E530
/* 2F174 8002E574 00801025 */   or        $v0, $a0, $zero
/* 2F178 8002E578 A0C00028 */  sb         $zero, 0x28($a2)
/* 2F17C 8002E57C A0C00029 */  sb         $zero, 0x29($a2)
/* 2F180 8002E580 3C098014 */  lui        $t1, %hi(D_8013FF90)
/* 2F184 8002E584 3C078009 */  lui        $a3, %hi(D_8008B6F0)
/* 2F188 8002E588 24E7B6F0 */  addiu      $a3, $a3, %lo(D_8008B6F0)
/* 2F18C 8002E58C 2529FF90 */  addiu      $t1, $t1, %lo(D_8013FF90)
/* 2F190 8002E590 2406FFFF */  addiu      $a2, $zero, -0x1
/* 2F194 8002E594 00001025 */  or         $v0, $zero, $zero
/* 2F198 8002E598 24080001 */  addiu      $t0, $zero, 0x1
.L8002E59C:
/* 2F19C 8002E59C 00E2C021 */  addu       $t8, $a3, $v0
/* 2F1A0 8002E5A0 83030000 */  lb         $v1, 0x0($t8)
/* 2F1A4 8002E5A4 24420001 */  addiu      $v0, $v0, 0x1
/* 2F1A8 8002E5A8 304A00FF */  andi       $t2, $v0, 0xFF
/* 2F1AC 8002E5AC 10C30003 */  beq        $a2, $v1, .L8002E5BC
/* 2F1B0 8002E5B0 01401025 */   or        $v0, $t2, $zero
/* 2F1B4 8002E5B4 10000002 */  b          .L8002E5C0
/* 2F1B8 8002E5B8 306400FF */   andi      $a0, $v1, 0xFF
.L8002E5BC:
/* 2F1BC 8002E5BC 91240005 */  lbu        $a0, 0x5($t1)
.L8002E5C0:
/* 2F1C0 8002E5C0 29410008 */  slti       $at, $t2, 0x8
/* 2F1C4 8002E5C4 00A4C821 */  addu       $t9, $a1, $a0
/* 2F1C8 8002E5C8 1420FFF4 */  bnez       $at, .L8002E59C
/* 2F1CC 8002E5CC A3280000 */   sb        $t0, 0x0($t9)
/* 2F1D0 8002E5D0 03E00008 */  jr         $ra
/* 2F1D4 8002E5D4 00000000 */   nop
/* 2F1D8 8002E5D8 00000000 */  nop
/* 2F1DC 8002E5DC 00000000 */  nop
