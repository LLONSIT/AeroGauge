.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800013C0
/* 1FC0 800013C0 3C188011 */  lui        $t8, %hi(D_80109C20)
/* 1FC4 800013C4 8F189C20 */  lw         $t8, %lo(D_80109C20)($t8)
/* 1FC8 800013C8 AFA40000 */  sw         $a0, 0x0($sp)
/* 1FCC 800013CC AFA50004 */  sw         $a1, 0x4($sp)
/* 1FD0 800013D0 8719000E */  lh         $t9, 0xE($t8)
/* 1FD4 800013D4 308E00FF */  andi       $t6, $a0, 0xFF
/* 1FD8 800013D8 30AF00FF */  andi       $t7, $a1, 0xFF
/* 1FDC 800013DC 01D9082A */  slt        $at, $t6, $t9
/* 1FE0 800013E0 1020000B */  beqz       $at, .L80001410
/* 1FE4 800013E4 29E10007 */   slti      $at, $t7, 0x7
/* 1FE8 800013E8 10200009 */  beqz       $at, .L80001410
/* 1FEC 800013EC 000F4080 */   sll       $t0, $t7, 2
/* 1FF0 800013F0 010F4023 */  subu       $t0, $t0, $t7
/* 1FF4 800013F4 3C098011 */  lui        $t1, %hi(D_80109C28)
/* 1FF8 800013F8 25299C28 */  addiu      $t1, $t1, %lo(D_80109C28)
/* 1FFC 800013FC 000840C0 */  sll        $t0, $t0, 3
/* 2000 80001400 01091021 */  addu       $v0, $t0, $t1
/* 2004 80001404 240A0002 */  addiu      $t2, $zero, 0x2
/* 2008 80001408 A04E0004 */  sb         $t6, 0x4($v0)
/* 200C 8000140C AC4A0008 */  sw         $t2, 0x8($v0)
.L80001410:
/* 2010 80001410 03E00008 */  jr         $ra
/* 2014 80001414 00000000 */   nop

glabel func_80001418
/* 2018 80001418 308E00FF */  andi       $t6, $a0, 0xFF
/* 201C 8000141C 29C10007 */  slti       $at, $t6, 0x7
/* 2020 80001420 10200008 */  beqz       $at, .L80001444
/* 2024 80001424 AFA40000 */   sw        $a0, 0x0($sp)
/* 2028 80001428 000EC080 */  sll        $t8, $t6, 2
/* 202C 8000142C 030EC023 */  subu       $t8, $t8, $t6
/* 2030 80001430 0018C0C0 */  sll        $t8, $t8, 3
/* 2034 80001434 3C018011 */  lui        $at, %hi(D_80109C30)
/* 2038 80001438 00380821 */  addu       $at, $at, $t8
/* 203C 8000143C 240F0001 */  addiu      $t7, $zero, 0x1
/* 2040 80001440 AC2F9C30 */  sw         $t7, %lo(D_80109C30)($at)
.L80001444:
/* 2044 80001444 03E00008 */  jr         $ra
/* 2048 80001448 00000000 */   nop

glabel func_8000144C
/* 204C 8000144C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 2050 80001450 3C188011 */  lui        $t8, %hi(D_80109B9C)
/* 2054 80001454 8F189B9C */  lw         $t8, %lo(D_80109B9C)($t8)
/* 2058 80001458 3C068011 */  lui        $a2, %hi(D_80109B88)
/* 205C 8000145C 24C69B88 */  addiu      $a2, $a2, %lo(D_80109B88)
/* 2060 80001460 240E0007 */  addiu      $t6, $zero, 0x7
/* 2064 80001464 240F0100 */  addiu      $t7, $zero, 0x100
/* 2068 80001468 AFBF004C */  sw         $ra, 0x4C($sp)
/* 206C 8000146C AFBE0048 */  sw         $fp, 0x48($sp)
/* 2070 80001470 AFB70044 */  sw         $s7, 0x44($sp)
/* 2074 80001474 AFB60040 */  sw         $s6, 0x40($sp)
/* 2078 80001478 AFB5003C */  sw         $s5, 0x3C($sp)
/* 207C 8000147C AFB40038 */  sw         $s4, 0x38($sp)
/* 2080 80001480 AFB30034 */  sw         $s3, 0x34($sp)
/* 2084 80001484 AFB20030 */  sw         $s2, 0x30($sp)
/* 2088 80001488 AFB1002C */  sw         $s1, 0x2C($sp)
/* 208C 8000148C AFB00028 */  sw         $s0, 0x28($sp)
/* 2090 80001490 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 2094 80001494 AFAE0060 */  sw         $t6, 0x60($sp)
/* 2098 80001498 AFAF0064 */  sw         $t7, 0x64($sp)
/* 209C 8000149C AFA60068 */  sw         $a2, 0x68($sp)
/* 20A0 800014A0 8F190004 */  lw         $t9, 0x4($t8)
/* 20A4 800014A4 3C028011 */  lui        $v0, %hi(D_80109C1C)
/* 20A8 800014A8 24429C1C */  addiu      $v0, $v0, %lo(D_80109C1C)
/* 20AC 800014AC AC590000 */  sw         $t9, 0x0($v0)
/* 20B0 800014B0 8F29000C */  lw         $t1, 0xC($t9)
/* 20B4 800014B4 3C038011 */  lui        $v1, %hi(D_80109C20)
/* 20B8 800014B8 24639C20 */  addiu      $v1, $v1, %lo(D_80109C20)
/* 20BC 800014BC AC690000 */  sw         $t1, 0x0($v1)
/* 20C0 800014C0 8D2B0010 */  lw         $t3, 0x10($t1)
/* 20C4 800014C4 3C018011 */  lui        $at, %hi(D_80109C24)
/* 20C8 800014C8 240C0054 */  addiu      $t4, $zero, 0x54
/* 20CC 800014CC AFAC0010 */  sw         $t4, 0x10($sp)
/* 20D0 800014D0 00002025 */  or         $a0, $zero, $zero
/* 20D4 800014D4 00002825 */  or         $a1, $zero, $zero
/* 20D8 800014D8 24070001 */  addiu      $a3, $zero, 0x1
/* 20DC 800014DC 0C0196D0 */  jal        func_80065B40
/* 20E0 800014E0 AC2B9C24 */   sw        $t3, %lo(D_80109C24)($at)
/* 20E4 800014E4 00409025 */  or         $s2, $v0, $zero
/* 20E8 800014E8 00402025 */  or         $a0, $v0, $zero
/* 20EC 800014EC 0C019D39 */  jal        func_800674E4
/* 20F0 800014F0 27A50060 */   addiu     $a1, $sp, 0x60
/* 20F4 800014F4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 20F8 800014F8 3C108011 */  lui        $s0, %hi(D_80109C28)
/* 20FC 800014FC 3C11801A */  lui        $s1, %hi(D_8019E4A0)
/* 2100 80001500 3C1E801A */  lui        $fp, %hi(D_8019E4AE)
/* 2104 80001504 3C14801A */  lui        $s4, %hi(D_8019E4A2)
/* 2108 80001508 3C13801A */  lui        $s3, %hi(D_8019E4A0)
/* 210C 8000150C 4481A000 */  mtc1       $at, $f20
/* 2110 80001510 2673E4A0 */  addiu      $s3, $s3, %lo(D_8019E4A0)
/* 2114 80001514 2694E4A2 */  addiu      $s4, $s4, %lo(D_8019E4A2)
/* 2118 80001518 27DEE4AE */  addiu      $fp, $fp, %lo(D_8019E4AE)
/* 211C 8000151C 2631E4A0 */  addiu      $s1, $s1, %lo(D_8019E4A0)
/* 2120 80001520 26109C28 */  addiu      $s0, $s0, %lo(D_80109C28)
/* 2124 80001524 24170005 */  addiu      $s7, $zero, 0x5
/* 2128 80001528 24160040 */  addiu      $s6, $zero, 0x40
/* 212C 8000152C 24156312 */  addiu      $s5, $zero, 0x6312
.L80001530:
/* 2130 80001530 AE120000 */  sw         $s2, 0x0($s0)
/* 2134 80001534 A2000004 */  sb         $zero, 0x4($s0)
/* 2138 80001538 3C058011 */  lui        $a1, %hi(D_80109C24)
/* 213C 8000153C 8CA59C24 */  lw         $a1, %lo(D_80109C24)($a1)
/* 2140 80001540 0C019D88 */  jal        func_80067620
/* 2144 80001544 02402025 */   or        $a0, $s2, $zero
/* 2148 80001548 A6020006 */  sh         $v0, 0x6($s0)
/* 214C 8000154C 12330003 */  beq        $s1, $s3, .L8000155C
/* 2150 80001550 AE000008 */   sw        $zero, 0x8($s0)
/* 2154 80001554 16340004 */  bne        $s1, $s4, .L80001568
/* 2158 80001558 240D6E14 */   addiu     $t5, $zero, 0x6E14
.L8000155C:
/* 215C 8000155C A6350004 */  sh         $s5, 0x4($s1)
/* 2160 80001560 10000003 */  b          .L80001570
/* 2164 80001564 E6140014 */   swc1      $f20, 0x14($s0)
.L80001568:
/* 2168 80001568 A62D0004 */  sh         $t5, 0x4($s1)
/* 216C 8000156C E6140014 */  swc1       $f20, 0x14($s0)
.L80001570:
/* 2170 80001570 962E0004 */  lhu        $t6, 0x4($s1)
/* 2174 80001574 26310002 */  addiu      $s1, $s1, 0x2
/* 2178 80001578 26100018 */  addiu      $s0, $s0, 0x18
/* 217C 8000157C A216FFF6 */  sb         $s6, -0xA($s0)
/* 2180 80001580 A200FFF7 */  sb         $zero, -0x9($s0)
/* 2184 80001584 A217FFF8 */  sb         $s7, -0x8($s0)
/* 2188 80001588 163EFFE9 */  bne        $s1, $fp, .L80001530
/* 218C 8000158C A60EFFF4 */   sh        $t6, -0xC($s0)
/* 2190 80001590 8FBF004C */  lw         $ra, 0x4C($sp)
/* 2194 80001594 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 2198 80001598 8FB00028 */  lw         $s0, 0x28($sp)
/* 219C 8000159C 8FB1002C */  lw         $s1, 0x2C($sp)
/* 21A0 800015A0 8FB20030 */  lw         $s2, 0x30($sp)
/* 21A4 800015A4 8FB30034 */  lw         $s3, 0x34($sp)
/* 21A8 800015A8 8FB40038 */  lw         $s4, 0x38($sp)
/* 21AC 800015AC 8FB5003C */  lw         $s5, 0x3C($sp)
/* 21B0 800015B0 8FB60040 */  lw         $s6, 0x40($sp)
/* 21B4 800015B4 8FB70044 */  lw         $s7, 0x44($sp)
/* 21B8 800015B8 8FBE0048 */  lw         $fp, 0x48($sp)
/* 21BC 800015BC 03E00008 */  jr         $ra
/* 21C0 800015C0 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800015C4
/* 21C4 800015C4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 21C8 800015C8 AFB60030 */  sw         $s6, 0x30($sp)
/* 21CC 800015CC AFB5002C */  sw         $s5, 0x2C($sp)
/* 21D0 800015D0 AFBE0038 */  sw         $fp, 0x38($sp)
/* 21D4 800015D4 AFB70034 */  sw         $s7, 0x34($sp)
/* 21D8 800015D8 AFB40028 */  sw         $s4, 0x28($sp)
/* 21DC 800015DC AFB30024 */  sw         $s3, 0x24($sp)
/* 21E0 800015E0 AFB20020 */  sw         $s2, 0x20($sp)
/* 21E4 800015E4 3C158011 */  lui        $s5, %hi(D_80109C24)
/* 21E8 800015E8 3C168011 */  lui        $s6, %hi(D_80109C28)
/* 21EC 800015EC AFBF003C */  sw         $ra, 0x3C($sp)
/* 21F0 800015F0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 21F4 800015F4 AFB00018 */  sw         $s0, 0x18($sp)
/* 21F8 800015F8 26D69C28 */  addiu      $s6, $s6, %lo(D_80109C28)
/* 21FC 800015FC 26B59C24 */  addiu      $s5, $s5, %lo(D_80109C24)
/* 2200 80001600 00009025 */  or         $s2, $zero, $zero
/* 2204 80001604 24130001 */  addiu      $s3, $zero, 0x1
/* 2208 80001608 24140003 */  addiu      $s4, $zero, 0x3
/* 220C 8000160C 24170018 */  addiu      $s7, $zero, 0x18
/* 2210 80001610 241E0002 */  addiu      $fp, $zero, 0x2
.L80001614:
/* 2214 80001614 02570019 */  multu      $s2, $s7
/* 2218 80001618 00007012 */  mflo       $t6
/* 221C 8000161C 02CE8821 */  addu       $s1, $s6, $t6
/* 2220 80001620 8E300000 */  lw         $s0, 0x0($s1)
/* 2224 80001624 86250006 */  lh         $a1, 0x6($s1)
/* 2228 80001628 0C019DB0 */  jal        func_800676C0
/* 222C 8000162C 02002025 */   or        $a0, $s0, $zero
/* 2230 80001630 02002025 */  or         $a0, $s0, $zero
/* 2234 80001634 0C019DB8 */  jal        func_800676E0
/* 2238 80001638 8625000C */   lh        $a1, 0xC($s1)
/* 223C 8000163C 02002025 */  or         $a0, $s0, $zero
/* 2240 80001640 0C019DD0 */  jal        alSndpSetPan
/* 2244 80001644 9225000E */   lbu       $a1, 0xE($s1)
/* 2248 80001648 02002025 */  or         $a0, $s0, $zero
/* 224C 8000164C 0C019DE8 */  jal        func_800677A0
/* 2250 80001650 9225000F */   lbu       $a1, 0xF($s1)
/* 2254 80001654 02002025 */  or         $a0, $s0, $zero
/* 2258 80001658 0C019E00 */  jal        func_80067800
/* 225C 8000165C 8E250014 */   lw        $a1, 0x14($s1)
/* 2260 80001660 8E220008 */  lw         $v0, 0x8($s1)
/* 2264 80001664 5040002C */  beql       $v0, $zero, .L80001718
/* 2268 80001668 26520001 */   addiu     $s2, $s2, 0x1
/* 226C 8000166C 10530007 */  beq        $v0, $s3, .L8000168C
/* 2270 80001670 00000000 */   nop
/* 2274 80001674 105E0009 */  beq        $v0, $fp, .L8000169C
/* 2278 80001678 00000000 */   nop
/* 227C 8000167C 1054000F */  beq        $v0, $s4, .L800016BC
/* 2280 80001680 00000000 */   nop
/* 2284 80001684 10000024 */  b          .L80001718
/* 2288 80001688 26520001 */   addiu     $s2, $s2, 0x1
.L8000168C:
/* 228C 8000168C 0C019E18 */  jal        alSndpStop
/* 2290 80001690 02002025 */   or        $a0, $s0, $zero
/* 2294 80001694 1000001F */  b          .L80001714
/* 2298 80001698 AE200008 */   sw        $zero, 0x8($s1)
.L8000169C:
/* 229C 8000169C 0C019E2C */  jal        func_800678B0
/* 22A0 800016A0 02002025 */   or        $a0, $s0, $zero
/* 22A4 800016A4 14530003 */  bne        $v0, $s3, .L800016B4
/* 22A8 800016A8 00000000 */   nop
/* 22AC 800016AC 0C019E18 */  jal        alSndpStop
/* 22B0 800016B0 02002025 */   or        $a0, $s0, $zero
.L800016B4:
/* 22B4 800016B4 10000017 */  b          .L80001714
/* 22B8 800016B8 AE340008 */   sw        $s4, 0x8($s1)
.L800016BC:
/* 22BC 800016BC 0C019E2C */  jal        func_800678B0
/* 22C0 800016C0 02002025 */   or        $a0, $s0, $zero
/* 22C4 800016C4 14400013 */  bnez       $v0, .L80001714
/* 22C8 800016C8 02002025 */   or        $a0, $s0, $zero
/* 22CC 800016CC 0C019E34 */  jal        func_800678D0
/* 22D0 800016D0 86250006 */   lh        $a1, 0x6($s1)
/* 22D4 800016D4 92380004 */  lbu        $t8, 0x4($s1)
/* 22D8 800016D8 3C0F8011 */  lui        $t7, %hi(D_80109C20)
/* 22DC 800016DC 8DEF9C20 */  lw         $t7, %lo(D_80109C20)($t7)
/* 22E0 800016E0 0018C880 */  sll        $t9, $t8, 2
/* 22E4 800016E4 02002025 */  or         $a0, $s0, $zero
/* 22E8 800016E8 01F94021 */  addu       $t0, $t7, $t9
/* 22EC 800016EC 8D050010 */  lw         $a1, 0x10($t0)
/* 22F0 800016F0 0C019D88 */  jal        func_80067620
/* 22F4 800016F4 AEA50000 */   sw        $a1, 0x0($s5)
/* 22F8 800016F8 A6220006 */  sh         $v0, 0x6($s1)
/* 22FC 800016FC 86250006 */  lh         $a1, 0x6($s1)
/* 2300 80001700 0C019DB0 */  jal        func_800676C0
/* 2304 80001704 02002025 */   or        $a0, $s0, $zero
/* 2308 80001708 0C019E48 */  jal        func_80067920
/* 230C 8000170C 02002025 */   or        $a0, $s0, $zero
/* 2310 80001710 AE200008 */  sw         $zero, 0x8($s1)
.L80001714:
/* 2314 80001714 26520001 */  addiu      $s2, $s2, 0x1
.L80001718:
/* 2318 80001718 324A00FF */  andi       $t2, $s2, 0xFF
/* 231C 8000171C 29410007 */  slti       $at, $t2, 0x7
/* 2320 80001720 1420FFBC */  bnez       $at, .L80001614
/* 2324 80001724 01409025 */   or        $s2, $t2, $zero
/* 2328 80001728 8FBF003C */  lw         $ra, 0x3C($sp)
/* 232C 8000172C 8FB00018 */  lw         $s0, 0x18($sp)
/* 2330 80001730 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2334 80001734 8FB20020 */  lw         $s2, 0x20($sp)
/* 2338 80001738 8FB30024 */  lw         $s3, 0x24($sp)
/* 233C 8000173C 8FB40028 */  lw         $s4, 0x28($sp)
/* 2340 80001740 8FB5002C */  lw         $s5, 0x2C($sp)
/* 2344 80001744 8FB60030 */  lw         $s6, 0x30($sp)
/* 2348 80001748 8FB70034 */  lw         $s7, 0x34($sp)
/* 234C 8000174C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 2350 80001750 03E00008 */  jr         $ra
/* 2354 80001754 27BD0040 */   addiu     $sp, $sp, 0x40
/* 2358 80001758 00000000 */  nop
/* 235C 8000175C 00000000 */  nop
