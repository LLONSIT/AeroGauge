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
/* 20DC 800014DC 0C0196D0 */  jal        alHeapDBAlloc
/* 20E0 800014E0 AC2B9C24 */   sw        $t3, %lo(D_80109C24)($at)
/* 20E4 800014E4 00409025 */  or         $s2, $v0, $zero
/* 20E8 800014E8 00402025 */  or         $a0, $v0, $zero
/* 20EC 800014EC 0C019D39 */  jal        alSndpNew
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
/* 2140 80001540 0C019D88 */  jal        alSndpAllocate
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
