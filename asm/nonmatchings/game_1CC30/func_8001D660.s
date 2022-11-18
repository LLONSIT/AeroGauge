glabel func_8001D660
/* 1E260 8001D660 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1E264 8001D664 AFBF002C */  sw         $ra, 0x2C($sp)
/* 1E268 8001D668 3C048017 */  lui        $a0, %hi(D_8016C4E0)
/* 1E26C 8001D66C 3C058017 */  lui        $a1, %hi(D_8016C4E4)
/* 1E270 8001D670 AFB40028 */  sw         $s4, 0x28($sp)
/* 1E274 8001D674 AFB30024 */  sw         $s3, 0x24($sp)
/* 1E278 8001D678 AFB20020 */  sw         $s2, 0x20($sp)
/* 1E27C 8001D67C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1E280 8001D680 AFB00018 */  sw         $s0, 0x18($sp)
/* 1E284 8001D684 8CA5C4E4 */  lw         $a1, %lo(D_8016C4E4)($a1)
/* 1E288 8001D688 8C84C4E0 */  lw         $a0, %lo(D_8016C4E0)($a0)
/* 1E28C 8001D68C 24060000 */  addiu      $a2, $zero, 0x0
/* 1E290 8001D690 0C01B1AA */  jal        __ll_mul
/* 1E294 8001D694 24070040 */   addiu     $a3, $zero, 0x40
/* 1E298 8001D698 00402025 */  or         $a0, $v0, $zero
/* 1E29C 8001D69C 00602825 */  or         $a1, $v1, $zero
/* 1E2A0 8001D6A0 24060000 */  addiu      $a2, $zero, 0x0
/* 1E2A4 8001D6A4 0C01B16A */  jal        func_8006C5A8
/* 1E2A8 8001D6A8 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 1E2AC 8001D6AC 3C0E8014 */  lui        $t6, %hi(D_8013FC94)
/* 1E2B0 8001D6B0 8DCEFC94 */  lw         $t6, %lo(D_8013FC94)($t6)
/* 1E2B4 8001D6B4 3C148014 */  lui        $s4, %hi(D_8013FC88)
/* 1E2B8 8001D6B8 3C018014 */  lui        $at, %hi(D_8013FC94)
/* 1E2BC 8001D6BC 006E4821 */  addu       $t1, $v1, $t6
/* 1E2C0 8001D6C0 AC29FC94 */  sw         $t1, %lo(D_8013FC94)($at)
/* 1E2C4 8001D6C4 2694FC88 */  addiu      $s4, $s4, %lo(D_8013FC88)
/* 1E2C8 8001D6C8 8E8402C4 */  lw         $a0, 0x2C4($s4)
/* 1E2CC 8001D6CC 8E85000C */  lw         $a1, 0xC($s4)
/* 1E2D0 8001D6D0 3C108014 */  lui        $s0, %hi(D_8013FFB0)
/* 1E2D4 8001D6D4 3C0A8014 */  lui        $t2, %hi(D_8013FF90)
/* 1E2D8 8001D6D8 0085082B */  sltu       $at, $a0, $a1
/* 1E2DC 8001D6DC 10200017 */  beqz       $at, .L8001D73C
/* 1E2E0 8001D6E0 2610FFB0 */   addiu     $s0, $s0, %lo(D_8013FFB0)
/* 1E2E4 8001D6E4 AE84000C */  sw         $a0, 0xC($s4)
/* 1E2E8 8001D6E8 814AFF90 */  lb         $t2, %lo(D_8013FF90)($t2)
/* 1E2EC 8001D6EC 24010005 */  addiu      $at, $zero, 0x5
/* 1E2F0 8001D6F0 5541000D */  bnel       $t2, $at, .L8001D728
/* 1E2F4 8001D6F4 8E9802B4 */   lw        $t8, 0x2B4($s4)
/* 1E2F8 8001D6F8 8E8B02B4 */  lw         $t3, 0x2B4($s4)
/* 1E2FC 8001D6FC 240C0004 */  addiu      $t4, $zero, 0x4
/* 1E300 8001D700 240E0004 */  addiu      $t6, $zero, 0x4
/* 1E304 8001D704 55600003 */  bnel       $t3, $zero, .L8001D714
/* 1E308 8001D708 8E8D02B8 */   lw        $t5, 0x2B8($s4)
/* 1E30C 8001D70C AE8C02B4 */  sw         $t4, 0x2B4($s4)
/* 1E310 8001D710 8E8D02B8 */  lw         $t5, 0x2B8($s4)
.L8001D714:
/* 1E314 8001D714 55A00017 */  bnel       $t5, $zero, .L8001D774
/* 1E318 8001D718 92820009 */   lbu       $v0, 0x9($s4)
/* 1E31C 8001D71C 10000014 */  b          .L8001D770
/* 1E320 8001D720 AE8E02B8 */   sw        $t6, 0x2B8($s4)
/* 1E324 8001D724 8E9802B4 */  lw         $t8, 0x2B4($s4)
.L8001D728:
/* 1E328 8001D728 24190004 */  addiu      $t9, $zero, 0x4
/* 1E32C 8001D72C 57000011 */  bnel       $t8, $zero, .L8001D774
/* 1E330 8001D730 92820009 */   lbu       $v0, 0x9($s4)
/* 1E334 8001D734 1000000E */  b          .L8001D770
/* 1E338 8001D738 AE9902B4 */   sw        $t9, 0x2B4($s4)
.L8001D73C:
/* 1E33C 8001D73C 3C01FF67 */  lui        $at, (0xFF676980 >> 16)
/* 1E340 8001D740 34216980 */  ori        $at, $at, (0xFF676980 & 0xFFFF)
/* 1E344 8001D744 00814021 */  addu       $t0, $a0, $at
/* 1E348 8001D748 0105082B */  sltu       $at, $t0, $a1
/* 1E34C 8001D74C 50200006 */  beql       $at, $zero, .L8001D768
/* 1E350 8001D750 968A0004 */   lhu       $t2, 0x4($s4)
/* 1E354 8001D754 96890004 */  lhu        $t1, 0x4($s4)
/* 1E358 8001D758 352F0001 */  ori        $t7, $t1, 0x1
/* 1E35C 8001D75C 10000004 */  b          .L8001D770
/* 1E360 8001D760 A68F0004 */   sh        $t7, 0x4($s4)
/* 1E364 8001D764 968A0004 */  lhu        $t2, 0x4($s4)
.L8001D768:
/* 1E368 8001D768 314BFFFE */  andi       $t3, $t2, 0xFFFE
/* 1E36C 8001D76C A68B0004 */  sh         $t3, 0x4($s4)
.L8001D770:
/* 1E370 8001D770 92820009 */  lbu        $v0, 0x9($s4)
.L8001D774:
/* 1E374 8001D774 00008825 */  or         $s1, $zero, $zero
/* 1E378 8001D778 24130054 */  addiu      $s3, $zero, 0x54
/* 1E37C 8001D77C 1840000F */  blez       $v0, .L8001D7BC
/* 1E380 8001D780 24120001 */   addiu     $s2, $zero, 0x1
.L8001D784:
/* 1E384 8001D784 920C0002 */  lbu        $t4, 0x2($s0)
/* 1E388 8001D788 564C0009 */  bnel       $s2, $t4, .L8001D7B0
/* 1E38C 8001D78C 26310001 */   addiu     $s1, $s1, 0x1
/* 1E390 8001D790 02330019 */  multu      $s1, $s3
/* 1E394 8001D794 02002025 */  or         $a0, $s0, $zero
/* 1E398 8001D798 00006812 */  mflo       $t5
/* 1E39C 8001D79C 028D2821 */  addu       $a1, $s4, $t5
/* 1E3A0 8001D7A0 0C007634 */  jal        func_8001D8D0
/* 1E3A4 8001D7A4 24A50010 */   addiu     $a1, $a1, 0x10
/* 1E3A8 8001D7A8 92820009 */  lbu        $v0, 0x9($s4)
/* 1E3AC 8001D7AC 26310001 */  addiu      $s1, $s1, 0x1
.L8001D7B0:
/* 1E3B0 8001D7B0 0222082A */  slt        $at, $s1, $v0
/* 1E3B4 8001D7B4 1420FFF3 */  bnez       $at, .L8001D784
/* 1E3B8 8001D7B8 261020A0 */   addiu     $s0, $s0, 0x20A0
.L8001D7BC:
/* 1E3BC 8001D7BC 3C02801A */  lui        $v0, %hi(D_8019DDF0)
/* 1E3C0 8001D7C0 2442DDF0 */  addiu      $v0, $v0, %lo(D_8019DDF0)
/* 1E3C4 8001D7C4 8C4E0004 */  lw         $t6, 0x4($v0)
/* 1E3C8 8001D7C8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1E3CC 8001D7CC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E3D0 8001D7D0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1E3D4 8001D7D4 8FB20020 */  lw         $s2, 0x20($sp)
/* 1E3D8 8001D7D8 8FB30024 */  lw         $s3, 0x24($sp)
/* 1E3DC 8001D7DC 8FB40028 */  lw         $s4, 0x28($sp)
/* 1E3E0 8001D7E0 25D80001 */  addiu      $t8, $t6, 0x1
/* 1E3E4 8001D7E4 AC580004 */  sw         $t8, 0x4($v0)
/* 1E3E8 8001D7E8 03E00008 */  jr         $ra
/* 1E3EC 8001D7EC 27BD0030 */   addiu     $sp, $sp, 0x30
