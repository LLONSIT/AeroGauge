.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80001760
/* 2360 80001760 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2364 80001764 AFB30028 */  sw         $s3, 0x28($sp)
/* 2368 80001768 3C0E8000 */  lui        $t6, %hi(func_80002028)
/* 236C 8000176C AFBF0034 */  sw         $ra, 0x34($sp)
/* 2370 80001770 AFB50030 */  sw         $s5, 0x30($sp)
/* 2374 80001774 AFB4002C */  sw         $s4, 0x2C($sp)
/* 2378 80001778 AFB20024 */  sw         $s2, 0x24($sp)
/* 237C 8000177C AFB10020 */  sw         $s1, 0x20($sp)
/* 2380 80001780 AFB0001C */  sw         $s0, 0x1C($sp)
/* 2384 80001784 AFA5003C */  sw         $a1, 0x3C($sp)
/* 2388 80001788 25CE2028 */  addiu      $t6, $t6, %lo(func_80002028)
/* 238C 8000178C 00809825 */  or         $s3, $a0, $zero
/* 2390 80001790 AC8E0010 */  sw         $t6, 0x10($a0)
/* 2394 80001794 00C0A025 */  or         $s4, $a2, $zero
/* 2398 80001798 0C019E64 */  jal        func_80067990
/* 239C 8000179C 8CC40000 */   lw        $a0, 0x0($a2)
/* 23A0 800017A0 AE620018 */  sw         $v0, 0x18($s3)
/* 23A4 800017A4 8E8F0004 */  lw         $t7, 0x4($s4)
/* 23A8 800017A8 3C048011 */  lui        $a0, %hi(D_8010C75C)
/* 23AC 800017AC 44825000 */  mtc1       $v0, $f10
/* 23B0 800017B0 448F2000 */  mtc1       $t7, $f4
/* 23B4 800017B4 2484C75C */  addiu      $a0, $a0, %lo(D_8010C75C)
/* 23B8 800017B8 05E10005 */  bgez       $t7, .L800017D0
/* 23BC 800017BC 468021A0 */   cvt.s.w   $f6, $f4
/* 23C0 800017C0 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 23C4 800017C4 44814000 */  mtc1       $at, $f8
/* 23C8 800017C8 00000000 */  nop
/* 23CC 800017CC 46083180 */  add.s      $f6, $f6, $f8
.L800017D0:
/* 23D0 800017D0 46805420 */  cvt.s.w    $f16, $f10
/* 23D4 800017D4 3C014270 */  lui        $at, (0x42700000 >> 16)
/* 23D8 800017D8 44812000 */  mtc1       $at, $f4
/* 23DC 800017DC 3C158011 */  lui        $s5, %hi(D_8010C760)
/* 23E0 800017E0 26B5C760 */  addiu      $s5, $s5, %lo(D_8010C760)
/* 23E4 800017E4 02602825 */  or         $a1, $s3, $zero
/* 23E8 800017E8 46103482 */  mul.s      $f18, $f6, $f16
/* 23EC 800017EC 46049003 */  div.s      $f0, $f18, $f4
/* 23F0 800017F0 4600020D */  trunc.w.s  $f8, $f0
/* 23F4 800017F4 44034000 */  mfc1       $v1, $f8
/* 23F8 800017F8 00000000 */  nop
/* 23FC 800017FC 44835000 */  mtc1       $v1, $f10
/* 2400 80001800 AC830000 */  sw         $v1, 0x0($a0)
/* 2404 80001804 04610005 */  bgez       $v1, .L8000181C
/* 2408 80001808 468051A0 */   cvt.s.w   $f6, $f10
/* 240C 8000180C 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 2410 80001810 44818000 */  mtc1       $at, $f16
/* 2414 80001814 00000000 */  nop
/* 2418 80001818 46103180 */  add.s      $f6, $f6, $f16
.L8000181C:
/* 241C 8000181C 4600303C */  c.lt.s     $f6, $f0
/* 2420 80001820 00000000 */  nop
/* 2424 80001824 45000003 */  bc1f       .L80001834
/* 2428 80001828 24680001 */   addiu     $t0, $v1, 0x1
/* 242C 8000182C AC880000 */  sw         $t0, 0x0($a0)
/* 2430 80001830 01001825 */  or         $v1, $t0, $zero
.L80001834:
/* 2434 80001834 3069000F */  andi       $t1, $v1, 0xF
/* 2438 80001838 11200004 */  beqz       $t1, .L8000184C
/* 243C 8000183C 2401FFF0 */   addiu     $at, $zero, -0x10
/* 2440 80001840 00615024 */  and        $t2, $v1, $at
/* 2444 80001844 25430010 */  addiu      $v1, $t2, 0x10
/* 2448 80001848 AC830000 */  sw         $v1, 0x0($a0)
.L8000184C:
/* 244C 8000184C 246CFFF0 */  addiu      $t4, $v1, -0x10
/* 2450 80001850 3C018011 */  lui        $at, %hi(D_8010C758)
/* 2454 80001854 AC2CC758 */  sw         $t4, %lo(D_8010C758)($at)
/* 2458 80001858 246D0060 */  addiu      $t5, $v1, 0x60
/* 245C 8000185C 3C048011 */  lui        $a0, %hi(D_8010A3D8)
/* 2460 80001860 AEAD0000 */  sw         $t5, 0x0($s5)
/* 2464 80001864 0C019EDF */  jal        func_80067B7C
/* 2468 80001868 2484A3D8 */   addiu     $a0, $a0, %lo(D_8010A3D8)
/* 246C 8000186C 3C028011 */  lui        $v0, %hi(D_8010C438)
/* 2470 80001870 2442C438 */  addiu      $v0, $v0, %lo(D_8010C438)
/* 2474 80001874 3C118011 */  lui        $s1, %hi(D_8010C438)
/* 2478 80001878 3C108011 */  lui        $s0, %hi(D_8010C44C)
/* 247C 8000187C AC400004 */  sw         $zero, 0x4($v0)
/* 2480 80001880 AC400000 */  sw         $zero, 0x0($v0)
/* 2484 80001884 2610C44C */  addiu      $s0, $s0, %lo(D_8010C44C)
/* 2488 80001888 2631C438 */  addiu      $s1, $s1, %lo(D_8010C438)
/* 248C 8000188C 00009025 */  or         $s2, $zero, $zero
.L80001890:
/* 2490 80001890 02002025 */  or         $a0, $s0, $zero
/* 2494 80001894 0C019EC8 */  jal        alLink
/* 2498 80001898 02202825 */   or        $a1, $s1, $zero
/* 249C 8000189C 8E660014 */  lw         $a2, 0x14($s3)
/* 24A0 800018A0 240E0800 */  addiu      $t6, $zero, 0x800
/* 24A4 800018A4 AFAE0010 */  sw         $t6, 0x10($sp)
/* 24A8 800018A8 00002025 */  or         $a0, $zero, $zero
/* 24AC 800018AC 00002825 */  or         $a1, $zero, $zero
/* 24B0 800018B0 0C0196D0 */  jal        func_80065B40
/* 24B4 800018B4 24070001 */   addiu     $a3, $zero, 0x1
/* 24B8 800018B8 26520001 */  addiu      $s2, $s2, 0x1
/* 24BC 800018BC 2E410027 */  sltiu      $at, $s2, 0x27
/* 24C0 800018C0 26310014 */  addiu      $s1, $s1, 0x14
/* 24C4 800018C4 26100014 */  addiu      $s0, $s0, 0x14
/* 24C8 800018C8 1420FFF1 */  bnez       $at, .L80001890
/* 24CC 800018CC AE22FFFC */   sw        $v0, -0x4($s1)
/* 24D0 800018D0 8E660014 */  lw         $a2, 0x14($s3)
/* 24D4 800018D4 240F0800 */  addiu      $t7, $zero, 0x800
/* 24D8 800018D8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 24DC 800018DC 00002025 */  or         $a0, $zero, $zero
/* 24E0 800018E0 00002825 */  or         $a1, $zero, $zero
/* 24E4 800018E4 0C0196D0 */  jal        func_80065B40
/* 24E8 800018E8 24070001 */   addiu     $a3, $zero, 0x1
/* 24EC 800018EC AE220010 */  sw         $v0, 0x10($s1)
/* 24F0 800018F0 3C118011 */  lui        $s1, %hi(D_8010A198)
/* 24F4 800018F4 3C108011 */  lui        $s0, %hi(D_8010A190)
/* 24F8 800018F8 2610A190 */  addiu      $s0, $s0, %lo(D_8010A190)
/* 24FC 800018FC 2631A198 */  addiu      $s1, $s1, %lo(D_8010A198)
.L80001900:
/* 2500 80001900 8E980008 */  lw         $t8, 0x8($s4)
/* 2504 80001904 8E660014 */  lw         $a2, 0x14($s3)
/* 2508 80001908 00002025 */  or         $a0, $zero, $zero
/* 250C 8000190C 0018C8C0 */  sll        $t9, $t8, 3
/* 2510 80001910 AFB90010 */  sw         $t9, 0x10($sp)
/* 2514 80001914 00002825 */  or         $a1, $zero, $zero
/* 2518 80001918 0C0196D0 */  jal        func_80065B40
/* 251C 8000191C 24070001 */   addiu     $a3, $zero, 0x1
/* 2520 80001920 26100004 */  addiu      $s0, $s0, 0x4
/* 2524 80001924 0211082B */  sltu       $at, $s0, $s1
/* 2528 80001928 1420FFF5 */  bnez       $at, .L80001900
/* 252C 8000192C AE02FFFC */   sw        $v0, -0x4($s0)
/* 2530 80001930 8E880008 */  lw         $t0, 0x8($s4)
/* 2534 80001934 3C018011 */  lui        $at, %hi(D_8010C764)
/* 2538 80001938 3C108011 */  lui        $s0, %hi(D_8010A190)
/* 253C 8000193C 3C128011 */  lui        $s2, %hi(D_8010A19C)
/* 2540 80001940 2652A19C */  addiu      $s2, $s2, %lo(D_8010A19C)
/* 2544 80001944 2610A190 */  addiu      $s0, $s0, %lo(D_8010A190)
/* 2548 80001948 24110002 */  addiu      $s1, $zero, 0x2
/* 254C 8000194C AC28C764 */  sw         $t0, %lo(D_8010C764)($at)
.L80001950:
/* 2550 80001950 8E660014 */  lw         $a2, 0x14($s3)
/* 2554 80001954 24090080 */  addiu      $t1, $zero, 0x80
/* 2558 80001958 AFA90010 */  sw         $t1, 0x10($sp)
/* 255C 8000195C 00002025 */  or         $a0, $zero, $zero
/* 2560 80001960 00002825 */  or         $a1, $zero, $zero
/* 2564 80001964 0C0196D0 */  jal        func_80065B40
/* 2568 80001968 24070001 */   addiu     $a3, $zero, 0x1
/* 256C 8000196C AE020008 */  sw         $v0, 0x8($s0)
/* 2570 80001970 A4510060 */  sh         $s1, 0x60($v0)
/* 2574 80001974 8E030008 */  lw         $v1, 0x8($s0)
/* 2578 80001978 00002025 */  or         $a0, $zero, $zero
/* 257C 8000197C 00002825 */  or         $a1, $zero, $zero
/* 2580 80001980 AC630064 */  sw         $v1, 0x64($v1)
/* 2584 80001984 8EAA0000 */  lw         $t2, 0x0($s5)
/* 2588 80001988 8E660014 */  lw         $a2, 0x14($s3)
/* 258C 8000198C 24070001 */  addiu      $a3, $zero, 0x1
/* 2590 80001990 000A5880 */  sll        $t3, $t2, 2
/* 2594 80001994 0C0196D0 */  jal        func_80065B40
/* 2598 80001998 AFAB0010 */   sw        $t3, 0x10($sp)
/* 259C 8000199C 8E0C0008 */  lw         $t4, 0x8($s0)
/* 25A0 800019A0 26100004 */  addiu      $s0, $s0, 0x4
/* 25A4 800019A4 1612FFEA */  bne        $s0, $s2, .L80001950
/* 25A8 800019A8 AD820000 */   sw        $v0, 0x0($t4)
/* 25AC 800019AC 3C048011 */  lui        $a0, %hi(D_8010A398)
/* 25B0 800019B0 3C058011 */  lui        $a1, %hi(D_8010A3B0)
/* 25B4 800019B4 24A5A3B0 */  addiu      $a1, $a1, %lo(D_8010A3B0)
/* 25B8 800019B8 2484A398 */  addiu      $a0, $a0, %lo(D_8010A398)
/* 25BC 800019BC 0C01978C */  jal        func_80065E30
/* 25C0 800019C0 2406000A */   addiu     $a2, $zero, 0xA
/* 25C4 800019C4 3C048011 */  lui        $a0, %hi(D_8010A358)
/* 25C8 800019C8 3C058011 */  lui        $a1, %hi(D_8010A370)
/* 25CC 800019CC 24A5A370 */  addiu      $a1, $a1, %lo(D_8010A370)
/* 25D0 800019D0 2484A358 */  addiu      $a0, $a0, %lo(D_8010A358)
/* 25D4 800019D4 0C01978C */  jal        func_80065E30
/* 25D8 800019D8 2406000A */   addiu     $a2, $zero, 0xA
/* 25DC 800019DC 3C048011 */  lui        $a0, %hi(D_8010C948)
/* 25E0 800019E0 3C058011 */  lui        $a1, %hi(D_8010C960)
/* 25E4 800019E4 24A5C960 */  addiu      $a1, $a1, %lo(D_8010C960)
/* 25E8 800019E8 2484C948 */  addiu      $a0, $a0, %lo(D_8010C948)
/* 25EC 800019EC 0C01978C */  jal        func_80065E30
/* 25F0 800019F0 24060014 */   addiu     $a2, $zero, 0x14
/* 25F4 800019F4 8FAE003C */  lw         $t6, 0x3C($sp)
/* 25F8 800019F8 3C108011 */  lui        $s0, %hi(D_8010A1A8)
/* 25FC 800019FC 3C0D8011 */  lui        $t5, %hi(D_8010C428)
/* 2600 80001A00 2610A1A8 */  addiu      $s0, $s0, %lo(D_8010A1A8)
/* 2604 80001A04 25ADC428 */  addiu      $t5, $t5, %lo(D_8010C428)
/* 2608 80001A08 3C068000 */  lui        $a2, %hi(func_80001A54)
/* 260C 80001A0C 24C61A54 */  addiu      $a2, $a2, %lo(func_80001A54)
/* 2610 80001A10 AFAD0010 */  sw         $t5, 0x10($sp)
/* 2614 80001A14 02002025 */  or         $a0, $s0, $zero
/* 2618 80001A18 24050003 */  addiu      $a1, $zero, 0x3
/* 261C 80001A1C 00003825 */  or         $a3, $zero, $zero
/* 2620 80001A20 0C019EEC */  jal        osCreateThread
/* 2624 80001A24 AFAE0014 */   sw        $t6, 0x14($sp)
/* 2628 80001A28 0C019F40 */  jal        func_80067D00
/* 262C 80001A2C 02002025 */   or        $a0, $s0, $zero
/* 2630 80001A30 8FBF0034 */  lw         $ra, 0x34($sp)
/* 2634 80001A34 8FB0001C */  lw         $s0, 0x1C($sp)
/* 2638 80001A38 8FB10020 */  lw         $s1, 0x20($sp)
/* 263C 80001A3C 8FB20024 */  lw         $s2, 0x24($sp)
/* 2640 80001A40 8FB30028 */  lw         $s3, 0x28($sp)
/* 2644 80001A44 8FB4002C */  lw         $s4, 0x2C($sp)
/* 2648 80001A48 8FB50030 */  lw         $s5, 0x30($sp)
/* 264C 80001A4C 03E00008 */  jr         $ra
/* 2650 80001A50 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80001A54
/* 2654 80001A54 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 2658 80001A58 AFA40078 */  sw         $a0, 0x78($sp)
/* 265C 80001A5C AFBF003C */  sw         $ra, 0x3C($sp)
/* 2660 80001A60 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 2664 80001A64 3C068011 */  lui        $a2, %hi(D_8010A358)
/* 2668 80001A68 AFBE0038 */  sw         $fp, 0x38($sp)
/* 266C 80001A6C AFB70034 */  sw         $s7, 0x34($sp)
/* 2670 80001A70 AFB60030 */  sw         $s6, 0x30($sp)
/* 2674 80001A74 AFB5002C */  sw         $s5, 0x2C($sp)
/* 2678 80001A78 AFB40028 */  sw         $s4, 0x28($sp)
/* 267C 80001A7C AFB30024 */  sw         $s3, 0x24($sp)
/* 2680 80001A80 AFB20020 */  sw         $s2, 0x20($sp)
/* 2684 80001A84 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2688 80001A88 AFB00018 */  sw         $s0, 0x18($sp)
/* 268C 80001A8C AFA00074 */  sw         $zero, 0x74($sp)
/* 2690 80001A90 AFA00070 */  sw         $zero, 0x70($sp)
/* 2694 80001A94 AFA0006C */  sw         $zero, 0x6C($sp)
/* 2698 80001A98 AFA00068 */  sw         $zero, 0x68($sp)
/* 269C 80001A9C 24C6A358 */  addiu      $a2, $a2, %lo(D_8010A358)
/* 26A0 80001AA0 24848868 */  addiu      $a0, $a0, %lo(D_801A8868)
/* 26A4 80001AA4 0C0192CF */  jal        func_80064B3C
/* 26A8 80001AA8 27A50060 */   addiu     $a1, $sp, 0x60
/* 26AC 80001AAC 3C0E8011 */  lui        $t6, %hi(D_80109CD0)
/* 26B0 80001AB0 25D69CD0 */  addiu      $s6, $t6, %lo(D_80109CD0)
/* 26B4 80001AB4 3C158011 */  lui        $s5, %hi(D_80109BE8)
/* 26B8 80001AB8 3C138011 */  lui        $s3, %hi(D_80109C28)
/* 26BC 80001ABC 26739C28 */  addiu      $s3, $s3, %lo(D_80109C28)
/* 26C0 80001AC0 26B59BE8 */  addiu      $s5, $s5, %lo(D_80109BE8)
/* 26C4 80001AC4 02C0F025 */  or         $fp, $s6, $zero
/* 26C8 80001AC8 2417007F */  addiu      $s7, $zero, 0x7F
/* 26CC 80001ACC 24140018 */  addiu      $s4, $zero, 0x18
.L80001AD0:
/* 26D0 80001AD0 3C048011 */  lui        $a0, %hi(D_8010A358)
/* 26D4 80001AD4 2484A358 */  addiu      $a0, $a0, %lo(D_8010A358)
/* 26D8 80001AD8 27A5006C */  addiu      $a1, $sp, 0x6C
/* 26DC 80001ADC 0C019824 */  jal        func_80066090
/* 26E0 80001AE0 24060001 */   addiu     $a2, $zero, 0x1
/* 26E4 80001AE4 8FAF006C */  lw         $t7, 0x6C($sp)
/* 26E8 80001AE8 24010001 */  addiu      $at, $zero, 0x1
/* 26EC 80001AEC 8FB80070 */  lw         $t8, 0x70($sp)
/* 26F0 80001AF0 85E30000 */  lh         $v1, 0x0($t7)
/* 26F4 80001AF4 1061000B */  beq        $v1, $at, .L80001B24
/* 26F8 80001AF8 24010002 */   addiu     $at, $zero, 0x2
/* 26FC 80001AFC 1061001B */  beq        $v1, $at, .L80001B6C
/* 2700 80001B00 8FAC006C */   lw        $t4, 0x6C($sp)
/* 2704 80001B04 24010004 */  addiu      $at, $zero, 0x4
/* 2708 80001B08 1061001E */  beq        $v1, $at, .L80001B84
/* 270C 80001B0C 3C128011 */   lui       $s2, %hi(D_80109BC8)
/* 2710 80001B10 2401000A */  addiu      $at, $zero, 0xA
/* 2714 80001B14 1061004B */  beq        $v1, $at, .L80001C44
/* 2718 80001B18 240B0001 */   addiu     $t3, $zero, 0x1
/* 271C 80001B1C 1000004B */  b          .L80001C4C
/* 2720 80001B20 8FAC0074 */   lw        $t4, 0x74($sp)
.L80001B24:
/* 2724 80001B24 1700000B */  bnez       $t8, .L80001B54
/* 2728 80001B28 3C198008 */   lui       $t9, %hi(D_8007F554)
/* 272C 80001B2C 8F39F554 */  lw         $t9, %lo(D_8007F554)($t9)
/* 2730 80001B30 24010003 */  addiu      $at, $zero, 0x3
/* 2734 80001B34 3C048011 */  lui        $a0, %hi(D_8010A198)
/* 2738 80001B38 0321001B */  divu       $zero, $t9, $at
/* 273C 80001B3C 00004010 */  mfhi       $t0
/* 2740 80001B40 00084880 */  sll        $t1, $t0, 2
/* 2744 80001B44 00892021 */  addu       $a0, $a0, $t1
/* 2748 80001B48 8C84A198 */  lw         $a0, %lo(D_8010A198)($a0)
/* 274C 80001B4C 0C000728 */  jal        func_80001CA0
/* 2750 80001B50 8FA50068 */   lw        $a1, 0x68($sp)
.L80001B54:
/* 2754 80001B54 3C0A8008 */  lui        $t2, %hi(D_8007F550)
/* 2758 80001B58 8D4AF550 */  lw         $t2, %lo(D_8007F550)($t2)
/* 275C 80001B5C 3C018008 */  lui        $at, %hi(D_8007F550)
/* 2760 80001B60 254B0001 */  addiu      $t3, $t2, 0x1
/* 2764 80001B64 10000038 */  b          .L80001C48
/* 2768 80001B68 AC2BF550 */   sw        $t3, %lo(D_8007F550)($at)
.L80001B6C:
/* 276C 80001B6C 0C000794 */  jal        func_80001E50
/* 2770 80001B70 8D840004 */   lw        $a0, 0x4($t4)
/* 2774 80001B74 8FAD006C */  lw         $t5, 0x6C($sp)
/* 2778 80001B78 8DAE0004 */  lw         $t6, 0x4($t5)
/* 277C 80001B7C 10000032 */  b          .L80001C48
/* 2780 80001B80 AFAE0068 */   sw        $t6, 0x68($sp)
.L80001B84:
/* 2784 80001B84 240F0001 */  addiu      $t7, $zero, 0x1
/* 2788 80001B88 AFAF0070 */  sw         $t7, 0x70($sp)
/* 278C 80001B8C 26529BC8 */  addiu      $s2, $s2, %lo(D_80109BC8)
/* 2790 80001B90 00008825 */  or         $s1, $zero, $zero
/* 2794 80001B94 8E500008 */  lw         $s0, 0x8($s2)
.L80001B98:
/* 2798 80001B98 0C019818 */  jal        func_80066060
/* 279C 80001B9C 02002025 */   or        $a0, $s0, $zero
/* 27A0 80001BA0 0C019F94 */  jal        func_80067E50
/* 27A4 80001BA4 02002025 */   or        $a0, $s0, $zero
/* 27A8 80001BA8 26520020 */  addiu      $s2, $s2, 0x20
/* 27AC 80001BAC 0255082B */  sltu       $at, $s2, $s5
/* 27B0 80001BB0 5420FFF9 */  bnel       $at, $zero, .L80001B98
/* 27B4 80001BB4 8E500008 */   lw        $s0, 0x8($s2)
/* 27B8 80001BB8 3C128011 */  lui        $s2, %hi(D_80109C28)
/* 27BC 80001BBC 26529C28 */  addiu      $s2, $s2, %lo(D_80109C28)
.L80001BC0:
/* 27C0 80001BC0 0C019E18 */  jal        alSndpStop
/* 27C4 80001BC4 8E440000 */   lw        $a0, 0x0($s2)
/* 27C8 80001BC8 26520018 */  addiu      $s2, $s2, 0x18
/* 27CC 80001BCC 1656FFFC */  bne        $s2, $s6, .L80001BC0
/* 27D0 80001BD0 00000000 */   nop
/* 27D4 80001BD4 00008025 */  or         $s0, $zero, $zero
.L80001BD8:
/* 27D8 80001BD8 0211C007 */  srav       $t8, $s1, $s0
.L80001BDC:
/* 27DC 80001BDC 5700000B */  bnel       $t8, $zero, .L80001C0C
/* 27E0 80001BE0 26100001 */   addiu     $s0, $s0, 0x1
/* 27E4 80001BE4 02140019 */  multu      $s0, $s4
/* 27E8 80001BE8 0000C812 */  mflo       $t9
/* 27EC 80001BEC 02794021 */  addu       $t0, $s3, $t9
/* 27F0 80001BF0 0C019E2C */  jal        func_800678B0
/* 27F4 80001BF4 8D040000 */   lw        $a0, 0x0($t0)
/* 27F8 80001BF8 14400003 */  bnez       $v0, .L80001C08
/* 27FC 80001BFC 24090001 */   addiu     $t1, $zero, 0x1
/* 2800 80001C00 02095004 */  sllv       $t2, $t1, $s0
/* 2804 80001C04 022A8825 */  or         $s1, $s1, $t2
.L80001C08:
/* 2808 80001C08 26100001 */  addiu      $s0, $s0, 0x1
.L80001C0C:
/* 280C 80001C0C 2A010007 */  slti       $at, $s0, 0x7
/* 2810 80001C10 5420FFF2 */  bnel       $at, $zero, .L80001BDC
/* 2814 80001C14 0211C007 */   srav      $t8, $s1, $s0
/* 2818 80001C18 5637FFEF */  bnel       $s1, $s7, .L80001BD8
/* 281C 80001C1C 00008025 */   or        $s0, $zero, $zero
/* 2820 80001C20 3C128011 */  lui        $s2, %hi(D_80109C28)
/* 2824 80001C24 26529C28 */  addiu      $s2, $s2, %lo(D_80109C28)
.L80001C28:
/* 2828 80001C28 0C019FA0 */  jal        alSndpDelete
/* 282C 80001C2C 8E440000 */   lw        $a0, 0x0($s2)
/* 2830 80001C30 26520018 */  addiu      $s2, $s2, 0x18
/* 2834 80001C34 165EFFFC */  bne        $s2, $fp, .L80001C28
/* 2838 80001C38 00000000 */   nop
/* 283C 80001C3C 10000003 */  b          .L80001C4C
/* 2840 80001C40 8FAC0074 */   lw        $t4, 0x74($sp)
.L80001C44:
/* 2844 80001C44 AFAB0074 */  sw         $t3, 0x74($sp)
.L80001C48:
/* 2848 80001C48 8FAC0074 */  lw         $t4, 0x74($sp)
.L80001C4C:
/* 284C 80001C4C 1180FFA0 */  beqz       $t4, .L80001AD0
/* 2850 80001C50 00000000 */   nop
/* 2854 80001C54 3C048011 */  lui        $a0, %hi(D_8010A3D8)
/* 2858 80001C58 0C019ED1 */  jal        alClose
/* 285C 80001C5C 2484A3D8 */   addiu     $a0, $a0, %lo(D_8010A3D8)
/* 2860 80001C60 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 2864 80001C64 24848868 */  addiu      $a0, $a0, %lo(D_801A8868)
/* 2868 80001C68 0C0192E3 */  jal        func_80064B8C
/* 286C 80001C6C 27A50060 */   addiu     $a1, $sp, 0x60
/* 2870 80001C70 8FBF003C */  lw         $ra, 0x3C($sp)
/* 2874 80001C74 8FB00018 */  lw         $s0, 0x18($sp)
/* 2878 80001C78 8FB1001C */  lw         $s1, 0x1C($sp)
/* 287C 80001C7C 8FB20020 */  lw         $s2, 0x20($sp)
/* 2880 80001C80 8FB30024 */  lw         $s3, 0x24($sp)
/* 2884 80001C84 8FB40028 */  lw         $s4, 0x28($sp)
/* 2888 80001C88 8FB5002C */  lw         $s5, 0x2C($sp)
/* 288C 80001C8C 8FB60030 */  lw         $s6, 0x30($sp)
/* 2890 80001C90 8FB70034 */  lw         $s7, 0x34($sp)
/* 2894 80001C94 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2898 80001C98 03E00008 */  jr         $ra
/* 289C 80001C9C 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_80001CA0
/* 28A0 80001CA0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 28A4 80001CA4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 28A8 80001CA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 28AC 80001CAC 00808025 */  or         $s0, $a0, $zero
/* 28B0 80001CB0 0C000818 */  jal        func_80002060
/* 28B4 80001CB4 AFA50044 */   sw        $a1, 0x44($sp)
/* 28B8 80001CB8 0C019FAC */  jal        func_80067EB0
/* 28BC 80001CBC 8E040000 */   lw        $a0, 0x0($s0)
/* 28C0 80001CC0 8FA30044 */  lw         $v1, 0x44($sp)
/* 28C4 80001CC4 AFA2003C */  sw         $v0, 0x3C($sp)
/* 28C8 80001CC8 10600006 */  beqz       $v1, .L80001CE4
/* 28CC 80001CCC 00000000 */   nop
/* 28D0 80001CD0 84650004 */  lh         $a1, 0x4($v1)
/* 28D4 80001CD4 8C640000 */  lw         $a0, 0x0($v1)
/* 28D8 80001CD8 00057080 */  sll        $t6, $a1, 2
/* 28DC 80001CDC 0C019FCC */  jal        func_80067F30
/* 28E0 80001CE0 01C02825 */   or        $a1, $t6, $zero
.L80001CE4:
/* 28E4 80001CE4 0C019FF8 */  jal        func_80067FE0
/* 28E8 80001CE8 00000000 */   nop
/* 28EC 80001CEC 3C0F8011 */  lui        $t7, %hi(D_8010C75C)
/* 28F0 80001CF0 8DEFC75C */  lw         $t7, %lo(D_8010C75C)($t7)
/* 28F4 80001CF4 0002C082 */  srl        $t8, $v0, 2
/* 28F8 80001CF8 3C038011 */  lui        $v1, %hi(D_8010C758)
/* 28FC 80001CFC 01F8C823 */  subu       $t9, $t7, $t8
/* 2900 80001D00 272A0060 */  addiu      $t2, $t9, 0x60
/* 2904 80001D04 314BFFF0 */  andi       $t3, $t2, 0xFFF0
/* 2908 80001D08 A60B0004 */  sh         $t3, 0x4($s0)
/* 290C 80001D0C 8C63C758 */  lw         $v1, %lo(D_8010C758)($v1)
/* 2910 80001D10 86070004 */  lh         $a3, 0x4($s0)
/* 2914 80001D14 3C0C8008 */  lui        $t4, %hi(D_8007F55C)
/* 2918 80001D18 3C048011 */  lui        $a0, %hi(D_8010A190)
/* 291C 80001D1C 00E3082B */  sltu       $at, $a3, $v1
/* 2920 80001D20 10200003 */  beqz       $at, .L80001D30
/* 2924 80001D24 00000000 */   nop
/* 2928 80001D28 A6030004 */  sh         $v1, 0x4($s0)
/* 292C 80001D2C 86070004 */  lh         $a3, 0x4($s0)
.L80001D30:
/* 2930 80001D30 8D8CF55C */  lw         $t4, %lo(D_8007F55C)($t4)
/* 2934 80001D34 27A50034 */  addiu      $a1, $sp, 0x34
/* 2938 80001D38 8FA6003C */  lw         $a2, 0x3C($sp)
/* 293C 80001D3C 000C6880 */  sll        $t5, $t4, 2
/* 2940 80001D40 008D2021 */  addu       $a0, $a0, $t5
/* 2944 80001D44 0C01A04E */  jal        func_80068138
/* 2948 80001D48 8C84A190 */   lw        $a0, %lo(D_8010A190)($a0)
/* 294C 80001D4C 8FAE0034 */  lw         $t6, 0x34($sp)
/* 2950 80001D50 3C038008 */  lui        $v1, %hi(D_8007F55C)
/* 2954 80001D54 3C098011 */  lui        $t1, %hi(D_8010A190)
/* 2958 80001D58 2529A190 */  addiu      $t1, $t1, %lo(D_8010A190)
/* 295C 80001D5C 2463F55C */  addiu      $v1, $v1, %lo(D_8007F55C)
/* 2960 80001D60 15C00003 */  bnez       $t6, .L80001D70
/* 2964 80001D64 00403825 */   or        $a3, $v0, $zero
/* 2968 80001D68 10000034 */  b          .L80001E3C
/* 296C 80001D6C 00001025 */   or        $v0, $zero, $zero
.L80001D70:
/* 2970 80001D70 3C0F8011 */  lui        $t7, %hi(D_8010A358)
/* 2974 80001D74 24020002 */  addiu      $v0, $zero, 0x2
/* 2978 80001D78 25EFA358 */  addiu      $t7, $t7, %lo(D_8010A358)
/* 297C 80001D7C 26180060 */  addiu      $t8, $s0, 0x60
/* 2980 80001D80 AE000008 */  sw         $zero, 0x8($s0)
/* 2984 80001D84 AE0F0058 */  sw         $t7, 0x58($s0)
/* 2988 80001D88 AE18005C */  sw         $t8, 0x5C($s0)
/* 298C 80001D8C AE020010 */  sw         $v0, 0x10($s0)
/* 2990 80001D90 8C790000 */  lw         $t9, 0x0($v1)
/* 2994 80001D94 3C088008 */  lui        $t0, %hi(func_8007BE00)
/* 2998 80001D98 2508BE00 */  addiu      $t0, $t0, %lo(func_8007BE00)
/* 299C 80001D9C 00195080 */  sll        $t2, $t9, 2
/* 29A0 80001DA0 012A5821 */  addu       $t3, $t1, $t2
/* 29A4 80001DA4 8D6C0000 */  lw         $t4, 0x0($t3)
/* 29A8 80001DA8 3C04801B */  lui        $a0, %hi(D_801AAAF0)
/* 29AC 80001DAC 26050008 */  addiu      $a1, $s0, 0x8
/* 29B0 80001DB0 AE0C0048 */  sw         $t4, 0x48($s0)
/* 29B4 80001DB4 8C6D0000 */  lw         $t5, 0x0($v1)
/* 29B8 80001DB8 3C0C8008 */  lui        $t4, %hi(func_8007BED0)
/* 29BC 80001DBC 258CBED0 */  addiu      $t4, $t4, %lo(func_8007BED0)
/* 29C0 80001DC0 000D7080 */  sll        $t6, $t5, 2
/* 29C4 80001DC4 012E7821 */  addu       $t7, $t1, $t6
/* 29C8 80001DC8 8DF80000 */  lw         $t8, 0x0($t7)
/* 29CC 80001DCC 3C0E8008 */  lui        $t6, %hi(D_8007E730)
/* 29D0 80001DD0 3C0F800C */  lui        $t7, %hi(D_800C7A10)
/* 29D4 80001DD4 00F8C823 */  subu       $t9, $a3, $t8
/* 29D8 80001DD8 001950C3 */  sra        $t2, $t9, 3
/* 29DC 80001DDC 000A58C0 */  sll        $t3, $t2, 3
/* 29E0 80001DE0 01886823 */  subu       $t5, $t4, $t0
/* 29E4 80001DE4 25CEE730 */  addiu      $t6, $t6, %lo(D_8007E730)
/* 29E8 80001DE8 25EF7A10 */  addiu      $t7, $t7, %lo(D_800C7A10)
/* 29EC 80001DEC 24180800 */  addiu      $t8, $zero, 0x800
/* 29F0 80001DF0 AE0B004C */  sw         $t3, 0x4C($s0)
/* 29F4 80001DF4 AE020018 */  sw         $v0, 0x18($s0)
/* 29F8 80001DF8 AE080020 */  sw         $t0, 0x20($s0)
/* 29FC 80001DFC AE0D0024 */  sw         $t5, 0x24($s0)
/* 2A00 80001E00 AE02001C */  sw         $v0, 0x1C($s0)
/* 2A04 80001E04 AE0E0028 */  sw         $t6, 0x28($s0)
/* 2A08 80001E08 AE0F0030 */  sw         $t7, 0x30($s0)
/* 2A0C 80001E0C AE180034 */  sw         $t8, 0x34($s0)
/* 2A10 80001E10 AE000050 */  sw         $zero, 0x50($s0)
/* 2A14 80001E14 AE000054 */  sw         $zero, 0x54($s0)
/* 2A18 80001E18 8C84AAF0 */  lw         $a0, %lo(D_801AAAF0)($a0)
/* 2A1C 80001E1C 0C01A1B4 */  jal        func_800686D0
/* 2A20 80001E20 24060001 */   addiu     $a2, $zero, 0x1
/* 2A24 80001E24 3C038008 */  lui        $v1, %hi(D_8007F55C)
/* 2A28 80001E28 2463F55C */  addiu      $v1, $v1, %lo(D_8007F55C)
/* 2A2C 80001E2C 8C790000 */  lw         $t9, 0x0($v1)
/* 2A30 80001E30 24020001 */  addiu      $v0, $zero, 0x1
/* 2A34 80001E34 3B2A0001 */  xori       $t2, $t9, 0x1
/* 2A38 80001E38 AC6A0000 */  sw         $t2, 0x0($v1)
.L80001E3C:
/* 2A3C 80001E3C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2A40 80001E40 8FB00018 */  lw         $s0, 0x18($sp)
/* 2A44 80001E44 27BD0040 */  addiu      $sp, $sp, 0x40
/* 2A48 80001E48 03E00008 */  jr         $ra
/* 2A4C 80001E4C 00000000 */   nop

glabel func_80001E50
/* 2A50 80001E50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2A54 80001E54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2A58 80001E58 0C019FF8 */  jal        func_80067FE0
/* 2A5C 80001E5C AFA40018 */   sw        $a0, 0x18($sp)
/* 2A60 80001E60 00027082 */  srl        $t6, $v0, 2
/* 2A64 80001E64 15C00006 */  bnez       $t6, .L80001E80
/* 2A68 80001E68 3C0F8008 */   lui       $t7, %hi(D_8007F560)
/* 2A6C 80001E6C 8DEFF560 */  lw         $t7, %lo(D_8007F560)($t7)
/* 2A70 80001E70 3C018008 */  lui        $at, %hi(D_8007F560)
/* 2A74 80001E74 55E00003 */  bnel       $t7, $zero, .L80001E84
/* 2A78 80001E78 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2A7C 80001E7C AC20F560 */  sw         $zero, %lo(D_8007F560)($at)
.L80001E80:
/* 2A80 80001E80 8FBF0014 */  lw         $ra, 0x14($sp)
.L80001E84:
/* 2A84 80001E84 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2A88 80001E88 03E00008 */  jr         $ra
/* 2A8C 80001E8C 00000000 */   nop

glabel func_80001E90
/* 2A90 80001E90 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2A94 80001E94 3C088011 */  lui        $t0, %hi(D_8010C428)
/* 2A98 80001E98 2508C428 */  addiu      $t0, $t0, %lo(D_8010C428)
/* 2A9C 80001E9C AFB10028 */  sw         $s1, 0x28($sp)
/* 2AA0 80001EA0 8D110004 */  lw         $s1, 0x4($t0)
/* 2AA4 80001EA4 AFB00024 */  sw         $s0, 0x24($sp)
/* 2AA8 80001EA8 AFA60050 */  sw         $a2, 0x50($sp)
/* 2AAC 80001EAC AFBF002C */  sw         $ra, 0x2C($sp)
/* 2AB0 80001EB0 00803825 */  or         $a3, $a0, $zero
/* 2AB4 80001EB4 00003025 */  or         $a2, $zero, $zero
/* 2AB8 80001EB8 12200015 */  beqz       $s1, .L80001F10
/* 2ABC 80001EBC 02208025 */   or        $s0, $s1, $zero
/* 2AC0 80001EC0 8E020008 */  lw         $v0, 0x8($s0)
.L80001EC4:
/* 2AC4 80001EC4 00E57021 */  addu       $t6, $a3, $a1
/* 2AC8 80001EC8 00E2082B */  sltu       $at, $a3, $v0
/* 2ACC 80001ECC 14200010 */  bnez       $at, .L80001F10
/* 2AD0 80001ED0 24430800 */   addiu     $v1, $v0, 0x800
/* 2AD4 80001ED4 006E082A */  slt        $at, $v1, $t6
/* 2AD8 80001ED8 1420000A */  bnez       $at, .L80001F04
/* 2ADC 80001EDC 02003025 */   or        $a2, $s0, $zero
/* 2AE0 80001EE0 8E180010 */  lw         $t8, 0x10($s0)
/* 2AE4 80001EE4 3C0F8008 */  lui        $t7, %hi(D_8007F554)
/* 2AE8 80001EE8 8DEFF554 */  lw         $t7, %lo(D_8007F554)($t7)
/* 2AEC 80001EEC 0307C821 */  addu       $t9, $t8, $a3
/* 2AF0 80001EF0 03222023 */  subu       $a0, $t9, $v0
/* 2AF4 80001EF4 0C019FAC */  jal        func_80067EB0
/* 2AF8 80001EF8 AE0F000C */   sw        $t7, 0xC($s0)
/* 2AFC 80001EFC 10000046 */  b          .L80002018
/* 2B00 80001F00 8FBF002C */   lw        $ra, 0x2C($sp)
.L80001F04:
/* 2B04 80001F04 8E100000 */  lw         $s0, 0x0($s0)
/* 2B08 80001F08 5600FFEE */  bnel       $s0, $zero, .L80001EC4
/* 2B0C 80001F0C 8E020008 */   lw        $v0, 0x8($s0)
.L80001F10:
/* 2B10 80001F10 8D100008 */  lw         $s0, 0x8($t0)
/* 2B14 80001F14 16000005 */  bnez       $s0, .L80001F2C
/* 2B18 80001F18 02002025 */   or        $a0, $s0, $zero
/* 2B1C 80001F1C 0C019FAC */  jal        func_80067EB0
/* 2B20 80001F20 02202025 */   or        $a0, $s1, $zero
/* 2B24 80001F24 1000003C */  b          .L80002018
/* 2B28 80001F28 8FBF002C */   lw        $ra, 0x2C($sp)
.L80001F2C:
/* 2B2C 80001F2C 8E0A0000 */  lw         $t2, 0x0($s0)
/* 2B30 80001F30 AFA70048 */  sw         $a3, 0x48($sp)
/* 2B34 80001F34 AFA60030 */  sw         $a2, 0x30($sp)
/* 2B38 80001F38 0C019EBC */  jal        alUnlink
/* 2B3C 80001F3C AD0A0008 */   sw        $t2, 0x8($t0)
/* 2B40 80001F40 8FA60030 */  lw         $a2, 0x30($sp)
/* 2B44 80001F44 3C088011 */  lui        $t0, %hi(D_8010C428)
/* 2B48 80001F48 2508C428 */  addiu      $t0, $t0, %lo(D_8010C428)
/* 2B4C 80001F4C 10C00007 */  beqz       $a2, .L80001F6C
/* 2B50 80001F50 8FA70048 */   lw        $a3, 0x48($sp)
/* 2B54 80001F54 02002025 */  or         $a0, $s0, $zero
/* 2B58 80001F58 00C02825 */  or         $a1, $a2, $zero
/* 2B5C 80001F5C 0C019EC8 */  jal        alLink
/* 2B60 80001F60 AFA70048 */   sw        $a3, 0x48($sp)
/* 2B64 80001F64 1000000C */  b          .L80001F98
/* 2B68 80001F68 8FA70048 */   lw        $a3, 0x48($sp)
.L80001F6C:
/* 2B6C 80001F6C 8D110004 */  lw         $s1, 0x4($t0)
/* 2B70 80001F70 52200007 */  beql       $s1, $zero, .L80001F90
/* 2B74 80001F74 AD100004 */   sw        $s0, 0x4($t0)
/* 2B78 80001F78 AD100004 */  sw         $s0, 0x4($t0)
/* 2B7C 80001F7C AE110000 */  sw         $s1, 0x0($s0)
/* 2B80 80001F80 AE000004 */  sw         $zero, 0x4($s0)
/* 2B84 80001F84 10000004 */  b          .L80001F98
/* 2B88 80001F88 AE300004 */   sw        $s0, 0x4($s1)
/* 2B8C 80001F8C AD100004 */  sw         $s0, 0x4($t0)
.L80001F90:
/* 2B90 80001F90 AE000000 */  sw         $zero, 0x0($s0)
/* 2B94 80001F94 AE000004 */  sw         $zero, 0x4($s0)
.L80001F98:
/* 2B98 80001F98 30F10001 */  andi       $s1, $a3, 0x1
/* 2B9C 80001F9C 00F13823 */  subu       $a3, $a3, $s1
/* 2BA0 80001FA0 AE070008 */  sw         $a3, 0x8($s0)
/* 2BA4 80001FA4 3C0B8008 */  lui        $t3, %hi(D_8007F554)
/* 2BA8 80001FA8 8D6BF554 */  lw         $t3, %lo(D_8007F554)($t3)
/* 2BAC 80001FAC 3C098008 */  lui        $t1, %hi(D_8007F558)
/* 2BB0 80001FB0 2529F558 */  addiu      $t1, $t1, %lo(D_8007F558)
/* 2BB4 80001FB4 AE0B000C */  sw         $t3, 0xC($s0)
/* 2BB8 80001FB8 8D230000 */  lw         $v1, 0x0($t1)
/* 2BBC 80001FBC 8E080010 */  lw         $t0, 0x10($s0)
/* 2BC0 80001FC0 3C0D8011 */  lui        $t5, %hi(D_8010C768)
/* 2BC4 80001FC4 00036080 */  sll        $t4, $v1, 2
/* 2BC8 80001FC8 3C0F8011 */  lui        $t7, %hi(D_8010C948)
/* 2BCC 80001FCC 01836023 */  subu       $t4, $t4, $v1
/* 2BD0 80001FD0 000C60C0 */  sll        $t4, $t4, 3
/* 2BD4 80001FD4 25EFC948 */  addiu      $t7, $t7, %lo(D_8010C948)
/* 2BD8 80001FD8 25ADC768 */  addiu      $t5, $t5, %lo(D_8010C768)
/* 2BDC 80001FDC 240E0800 */  addiu      $t6, $zero, 0x800
/* 2BE0 80001FE0 24780001 */  addiu      $t8, $v1, 0x1
/* 2BE4 80001FE4 AD380000 */  sw         $t8, 0x0($t1)
/* 2BE8 80001FE8 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2BEC 80001FEC 018D2021 */  addu       $a0, $t4, $t5
/* 2BF0 80001FF0 AFAF0018 */  sw         $t7, 0x18($sp)
/* 2BF4 80001FF4 24050001 */  addiu      $a1, $zero, 0x1
/* 2BF8 80001FF8 00003025 */  or         $a2, $zero, $zero
/* 2BFC 80001FFC AFA80010 */  sw         $t0, 0x10($sp)
/* 2C00 80002000 0C0197C4 */  jal        func_80065F10
/* 2C04 80002004 AFA80044 */   sw        $t0, 0x44($sp)
/* 2C08 80002008 0C019FAC */  jal        func_80067EB0
/* 2C0C 8000200C 8FA40044 */   lw        $a0, 0x44($sp)
/* 2C10 80002010 00511021 */  addu       $v0, $v0, $s1
/* 2C14 80002014 8FBF002C */  lw         $ra, 0x2C($sp)
.L80002018:
/* 2C18 80002018 8FB00024 */  lw         $s0, 0x24($sp)
/* 2C1C 8000201C 8FB10028 */  lw         $s1, 0x28($sp)
/* 2C20 80002020 03E00008 */  jr         $ra
/* 2C24 80002024 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80002028
/* 2C28 80002028 3C038011 */  lui        $v1, %hi(D_8010C428)
/* 2C2C 8000202C 2463C428 */  addiu      $v1, $v1, %lo(D_8010C428)
/* 2C30 80002030 906E0000 */  lbu        $t6, 0x0($v1)
/* 2C34 80002034 3C028000 */  lui        $v0, %hi(func_80001E90)
/* 2C38 80002038 3C0F8011 */  lui        $t7, %hi(D_8010C438)
/* 2C3C 8000203C 15C00006 */  bnez       $t6, .L80002058
/* 2C40 80002040 24421E90 */   addiu     $v0, $v0, %lo(func_80001E90)
/* 2C44 80002044 25EFC438 */  addiu      $t7, $t7, %lo(D_8010C438)
/* 2C48 80002048 24180001 */  addiu      $t8, $zero, 0x1
/* 2C4C 8000204C AC600004 */  sw         $zero, 0x4($v1)
/* 2C50 80002050 AC6F0008 */  sw         $t7, 0x8($v1)
/* 2C54 80002054 A0780000 */  sb         $t8, 0x0($v1)
.L80002058:
/* 2C58 80002058 03E00008 */  jr         $ra
/* 2C5C 8000205C AC830000 */   sw        $v1, 0x0($a0)

glabel func_80002060
/* 2C60 80002060 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2C64 80002064 AFB40028 */  sw         $s4, 0x28($sp)
/* 2C68 80002068 3C148008 */  lui        $s4, %hi(D_8007F558)
/* 2C6C 8000206C 2694F558 */  addiu      $s4, $s4, %lo(D_8007F558)
/* 2C70 80002070 8E8E0000 */  lw         $t6, 0x0($s4)
/* 2C74 80002074 AFB00018 */  sw         $s0, 0x18($sp)
/* 2C78 80002078 AFBF002C */  sw         $ra, 0x2C($sp)
/* 2C7C 8000207C AFB30024 */  sw         $s3, 0x24($sp)
/* 2C80 80002080 AFB20020 */  sw         $s2, 0x20($sp)
/* 2C84 80002084 AFB1001C */  sw         $s1, 0x1C($sp)
/* 2C88 80002088 AFA00040 */  sw         $zero, 0x40($sp)
/* 2C8C 8000208C 11C0000D */  beqz       $t6, .L800020C4
/* 2C90 80002090 00008025 */   or        $s0, $zero, $zero
/* 2C94 80002094 3C118011 */  lui        $s1, %hi(D_8010C948)
/* 2C98 80002098 2631C948 */  addiu      $s1, $s1, %lo(D_8010C948)
/* 2C9C 8000209C 27B20040 */  addiu      $s2, $sp, 0x40
/* 2CA0 800020A0 02202025 */  or         $a0, $s1, $zero
.L800020A4:
/* 2CA4 800020A4 02402825 */  or         $a1, $s2, $zero
/* 2CA8 800020A8 0C019824 */  jal        func_80066090
/* 2CAC 800020AC 00003025 */   or        $a2, $zero, $zero
/* 2CB0 800020B0 8E8F0000 */  lw         $t7, 0x0($s4)
/* 2CB4 800020B4 26100001 */  addiu      $s0, $s0, 0x1
/* 2CB8 800020B8 020F082B */  sltu       $at, $s0, $t7
/* 2CBC 800020BC 5420FFF9 */  bnel       $at, $zero, .L800020A4
/* 2CC0 800020C0 02202025 */   or        $a0, $s1, $zero
.L800020C4:
/* 2CC4 800020C4 3C128011 */  lui        $s2, %hi(D_8010C428)
/* 2CC8 800020C8 2652C428 */  addiu      $s2, $s2, %lo(D_8010C428)
/* 2CCC 800020CC 8E500004 */  lw         $s0, 0x4($s2)
/* 2CD0 800020D0 3C138008 */  lui        $s3, %hi(D_8007F554)
/* 2CD4 800020D4 2673F554 */  addiu      $s3, $s3, %lo(D_8007F554)
/* 2CD8 800020D8 1200001A */  beqz       $s0, .L80002144
/* 2CDC 800020DC 00000000 */   nop
.L800020E0:
/* 2CE0 800020E0 8E19000C */  lw         $t9, 0xC($s0)
/* 2CE4 800020E4 8E780000 */  lw         $t8, 0x0($s3)
/* 2CE8 800020E8 8E020000 */  lw         $v0, 0x0($s0)
/* 2CEC 800020EC 27280005 */  addiu      $t0, $t9, 0x5
/* 2CF0 800020F0 0118082B */  sltu       $at, $t0, $t8
/* 2CF4 800020F4 10200011 */  beqz       $at, .L8000213C
/* 2CF8 800020F8 00408825 */   or        $s1, $v0, $zero
/* 2CFC 800020FC 8E490004 */  lw         $t1, 0x4($s2)
/* 2D00 80002100 16090002 */  bne        $s0, $t1, .L8000210C
/* 2D04 80002104 00000000 */   nop
/* 2D08 80002108 AE420004 */  sw         $v0, 0x4($s2)
.L8000210C:
/* 2D0C 8000210C 0C019EBC */  jal        alUnlink
/* 2D10 80002110 02002025 */   or        $a0, $s0, $zero
/* 2D14 80002114 8E450008 */  lw         $a1, 0x8($s2)
/* 2D18 80002118 50A00006 */  beql       $a1, $zero, .L80002134
/* 2D1C 8000211C AE500008 */   sw        $s0, 0x8($s2)
/* 2D20 80002120 0C019EC8 */  jal        alLink
/* 2D24 80002124 02002025 */   or        $a0, $s0, $zero
/* 2D28 80002128 10000004 */  b          .L8000213C
/* 2D2C 8000212C 00000000 */   nop
/* 2D30 80002130 AE500008 */  sw         $s0, 0x8($s2)
.L80002134:
/* 2D34 80002134 AE000000 */  sw         $zero, 0x0($s0)
/* 2D38 80002138 AE000004 */  sw         $zero, 0x4($s0)
.L8000213C:
/* 2D3C 8000213C 1620FFE8 */  bnez       $s1, .L800020E0
/* 2D40 80002140 02208025 */   or        $s0, $s1, $zero
.L80002144:
/* 2D44 80002144 3C138008 */  lui        $s3, %hi(D_8007F554)
/* 2D48 80002148 2673F554 */  addiu      $s3, $s3, %lo(D_8007F554)
/* 2D4C 8000214C 8E6A0000 */  lw         $t2, 0x0($s3)
/* 2D50 80002150 8FBF002C */  lw         $ra, 0x2C($sp)
/* 2D54 80002154 AE800000 */  sw         $zero, 0x0($s4)
/* 2D58 80002158 254B0001 */  addiu      $t3, $t2, 0x1
/* 2D5C 8000215C AE6B0000 */  sw         $t3, 0x0($s3)
/* 2D60 80002160 8FB30024 */  lw         $s3, 0x24($sp)
/* 2D64 80002164 8FB40028 */  lw         $s4, 0x28($sp)
/* 2D68 80002168 8FB00018 */  lw         $s0, 0x18($sp)
/* 2D6C 8000216C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2D70 80002170 8FB20020 */  lw         $s2, 0x20($sp)
/* 2D74 80002174 03E00008 */  jr         $ra
/* 2D78 80002178 27BD0048 */   addiu     $sp, $sp, 0x48
/* 2D7C 8000217C 00000000 */  nop
