glabel func_8001D418
/* 1E018 8001D418 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1E01C 8001D41C 00047980 */  sll        $t7, $a0, 6
/* 1E020 8001D420 01E47821 */  addu       $t7, $t7, $a0
/* 1E024 8001D424 00807025 */  or         $t6, $a0, $zero
/* 1E028 8001D428 3C0B8017 */  lui        $t3, %hi(D_8016C430)
/* 1E02C 8001D42C AFB10028 */  sw         $s1, 0x28($sp)
/* 1E030 8001D430 256BC430 */  addiu      $t3, $t3, %lo(D_8016C430)
/* 1E034 8001D434 000E5080 */  sll        $t2, $t6, 2
/* 1E038 8001D438 000F7880 */  sll        $t7, $t7, 2
/* 1E03C 8001D43C AFA50034 */  sw         $a1, 0x34($sp)
/* 1E040 8001D440 01E47821 */  addu       $t7, $t7, $a0
/* 1E044 8001D444 014B8821 */  addu       $s1, $t2, $t3
/* 1E048 8001D448 3C188014 */  lui        $t8, %hi(D_8013FFB0)
/* 1E04C 8001D44C 8E2C0000 */  lw         $t4, 0x0($s1)
/* 1E050 8001D450 8FB90034 */  lw         $t9, 0x34($sp)
/* 1E054 8001D454 8FA80044 */  lw         $t0, 0x44($sp)
/* 1E058 8001D458 AFB00024 */  sw         $s0, 0x24($sp)
/* 1E05C 8001D45C AFA7003C */  sw         $a3, 0x3C($sp)
/* 1E060 8001D460 2718FFB0 */  addiu      $t8, $t8, %lo(D_8013FFB0)
/* 1E064 8001D464 000F7940 */  sll        $t7, $t7, 5
/* 1E068 8001D468 00C03825 */  or         $a3, $a2, $zero
/* 1E06C 8001D46C AFBF002C */  sw         $ra, 0x2C($sp)
/* 1E070 8001D470 AFA40030 */  sw         $a0, 0x30($sp)
/* 1E074 8001D474 AFA60038 */  sw         $a2, 0x38($sp)
/* 1E078 8001D478 01F88021 */  addu       $s0, $t7, $t8
/* 1E07C 8001D47C 25C90003 */  addiu      $t1, $t6, 0x3
/* 1E080 8001D480 AFA90018 */  sw         $t1, 0x18($sp)
/* 1E084 8001D484 02002025 */  or         $a0, $s0, $zero
/* 1E088 8001D488 8FA60040 */  lw         $a2, 0x40($sp)
/* 1E08C 8001D48C 8FA5003C */  lw         $a1, 0x3C($sp)
/* 1E090 8001D490 AFAC001C */  sw         $t4, 0x1C($sp)
/* 1E094 8001D494 AFB90010 */  sw         $t9, 0x10($sp)
/* 1E098 8001D498 0C015EC4 */  jal        func_80057B10
/* 1E09C 8001D49C AFA80014 */   sw        $t0, 0x14($sp)
/* 1E0A0 8001D4A0 3C0D8014 */  lui        $t5, %hi(D_8013FF90)
/* 1E0A4 8001D4A4 81ADFF90 */  lb         $t5, %lo(D_8013FF90)($t5)
/* 1E0A8 8001D4A8 15A00007 */  bnez       $t5, .L8001D4C8
/* 1E0AC 8001D4AC 3C0F8017 */   lui       $t7, %hi(D_8016C434)
/* 1E0B0 8001D4B0 25EFC434 */  addiu      $t7, $t7, %lo(D_8016C434)
/* 1E0B4 8001D4B4 562F0005 */  bnel       $s1, $t7, .L8001D4CC
/* 1E0B8 8001D4B8 8FAE0048 */   lw        $t6, 0x48($sp)
/* 1E0BC 8001D4BC 92190000 */  lbu        $t9, 0x0($s0)
/* 1E0C0 8001D4C0 37280020 */  ori        $t0, $t9, 0x20
/* 1E0C4 8001D4C4 A2080000 */  sb         $t0, 0x0($s0)
.L8001D4C8:
/* 1E0C8 8001D4C8 8FAE0048 */  lw         $t6, 0x48($sp)
.L8001D4CC:
/* 1E0CC 8001D4CC 920C0000 */  lbu        $t4, 0x0($s0)
/* 1E0D0 8001D4D0 02002025 */  or         $a0, $s0, $zero
/* 1E0D4 8001D4D4 000E5100 */  sll        $t2, $t6, 4
/* 1E0D8 8001D4D8 314B0010 */  andi       $t3, $t2, 0x10
/* 1E0DC 8001D4DC 318DFFEF */  andi       $t5, $t4, 0xFFEF
/* 1E0E0 8001D4E0 016D7825 */  or         $t7, $t3, $t5
/* 1E0E4 8001D4E4 0C015F65 */  jal        func_80057D94
/* 1E0E8 8001D4E8 A20F0000 */   sb        $t7, 0x0($s0)
/* 1E0EC 8001D4EC 3C11801A */  lui        $s1, %hi(D_8019DDF0)
/* 1E0F0 8001D4F0 2631DDF0 */  addiu      $s1, $s1, %lo(D_8019DDF0)
/* 1E0F4 8001D4F4 02202025 */  or         $a0, $s1, $zero
/* 1E0F8 8001D4F8 26050498 */  addiu      $a1, $s0, 0x498
/* 1E0FC 8001D4FC 0C0081A1 */  jal        func_80020684
/* 1E100 8001D500 24060001 */   addiu     $a2, $zero, 0x1
/* 1E104 8001D504 02202025 */  or         $a0, $s1, $zero
/* 1E108 8001D508 26050830 */  addiu      $a1, $s0, 0x830
/* 1E10C 8001D50C 0C0081A1 */  jal        func_80020684
/* 1E110 8001D510 24060001 */   addiu     $a2, $zero, 0x1
/* 1E114 8001D514 02202025 */  or         $a0, $s1, $zero
/* 1E118 8001D518 26050F60 */  addiu      $a1, $s0, 0xF60
/* 1E11C 8001D51C 0C0081A1 */  jal        func_80020684
/* 1E120 8001D520 24060001 */   addiu     $a2, $zero, 0x1
/* 1E124 8001D524 02202025 */  or         $a0, $s1, $zero
/* 1E128 8001D528 260508E8 */  addiu      $a1, $s0, 0x8E8
/* 1E12C 8001D52C 0C0081A1 */  jal        func_80020684
/* 1E130 8001D530 24060001 */   addiu     $a2, $zero, 0x1
/* 1E134 8001D534 02202025 */  or         $a0, $s1, $zero
/* 1E138 8001D538 26050BC8 */  addiu      $a1, $s0, 0xBC8
/* 1E13C 8001D53C 0C0081A1 */  jal        func_80020684
/* 1E140 8001D540 24060001 */   addiu     $a2, $zero, 0x1
/* 1E144 8001D544 02202025 */  or         $a0, $s1, $zero
/* 1E148 8001D548 26050D38 */  addiu      $a1, $s0, 0xD38
/* 1E14C 8001D54C 0C0081A1 */  jal        func_80020684
/* 1E150 8001D550 24060001 */   addiu     $a2, $zero, 0x1
/* 1E154 8001D554 02202025 */  or         $a0, $s1, $zero
/* 1E158 8001D558 26051018 */  addiu      $a1, $s0, 0x1018
/* 1E15C 8001D55C 0C0081A1 */  jal        func_80020684
/* 1E160 8001D560 24060001 */   addiu     $a2, $zero, 0x1
/* 1E164 8001D564 02202025 */  or         $a0, $s1, $zero
/* 1E168 8001D568 26051748 */  addiu      $a1, $s0, 0x1748
/* 1E16C 8001D56C 0C0081A1 */  jal        func_80020684
/* 1E170 8001D570 24060001 */   addiu     $a2, $zero, 0x1
/* 1E174 8001D574 02202025 */  or         $a0, $s1, $zero
/* 1E178 8001D578 26051E78 */  addiu      $a1, $s0, 0x1E78
/* 1E17C 8001D57C 0C0081A1 */  jal        func_80020684
/* 1E180 8001D580 24060001 */   addiu     $a2, $zero, 0x1
/* 1E184 8001D584 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1E188 8001D588 8FB00024 */  lw         $s0, 0x24($sp)
/* 1E18C 8001D58C 8FB10028 */  lw         $s1, 0x28($sp)
/* 1E190 8001D590 03E00008 */  jr         $ra
/* 1E194 8001D594 27BD0030 */   addiu     $sp, $sp, 0x30
