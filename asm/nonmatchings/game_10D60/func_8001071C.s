glabel func_8001071C
/* 1131C 8001071C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 11320 80010720 AFB30024 */  sw         $s3, 0x24($sp)
/* 11324 80010724 3C138014 */  lui        $s3, %hi(D_8013FC88)
/* 11328 80010728 2673FC88 */  addiu      $s3, $s3, %lo(D_8013FC88)
/* 1132C 8001072C 926E0009 */  lbu        $t6, 0x9($s3)
/* 11330 80010730 AFB00018 */  sw         $s0, 0x18($sp)
/* 11334 80010734 AFBF0034 */  sw         $ra, 0x34($sp)
/* 11338 80010738 AFB60030 */  sw         $s6, 0x30($sp)
/* 1133C 8001073C AFB5002C */  sw         $s5, 0x2C($sp)
/* 11340 80010740 AFB40028 */  sw         $s4, 0x28($sp)
/* 11344 80010744 AFB20020 */  sw         $s2, 0x20($sp)
/* 11348 80010748 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1134C 8001074C 19C0003E */  blez       $t6, .L80010848
/* 11350 80010750 00008025 */   or        $s0, $zero, $zero
/* 11354 80010754 3C128014 */  lui        $s2, %hi(D_8013FFB0)
/* 11358 80010758 3C158014 */  lui        $s5, %hi(D_8013FFB0)
/* 1135C 8001075C 3C148008 */  lui        $s4, %hi(D_80082C98)
/* 11360 80010760 26942C98 */  addiu      $s4, $s4, %lo(D_80082C98)
/* 11364 80010764 26B5FFB0 */  addiu      $s5, $s5, %lo(D_8013FFB0)
/* 11368 80010768 2652FFB0 */  addiu      $s2, $s2, %lo(D_8013FFB0)
/* 1136C 8001076C 24160001 */  addiu      $s6, $zero, 0x1
/* 11370 80010770 8FB10038 */  lw         $s1, 0x38($sp)
.L80010774:
/* 11374 80010774 1600000F */  bnez       $s0, .L800107B4
/* 11378 80010778 82450009 */   lb        $a1, 0x9($s2)
/* 1137C 8001077C 8E6F0000 */  lw         $t7, 0x0($s3)
/* 11380 80010780 00008825 */  or         $s1, $zero, $zero
/* 11384 80010784 00001825 */  or         $v1, $zero, $zero
/* 11388 80010788 31F80001 */  andi       $t8, $t7, 0x1
/* 1138C 8001078C 13000002 */  beqz       $t8, .L80010798
/* 11390 80010790 0011C880 */   sll       $t9, $s1, 2
/* 11394 80010794 2405000A */  addiu      $a1, $zero, 0xA
.L80010798:
/* 11398 80010798 0331C823 */  subu       $t9, $t9, $s1
/* 1139C 8001079C 3C088014 */  lui        $t0, %hi(D_8013FBE8)
/* 113A0 800107A0 2508FBE8 */  addiu      $t0, $t0, %lo(D_8013FBE8)
/* 113A4 800107A4 0019C880 */  sll        $t9, $t9, 2
/* 113A8 800107A8 03281021 */  addu       $v0, $t9, $t0
/* 113AC 800107AC 10000016 */  b          .L80010808
/* 113B0 800107B0 2444000C */   addiu     $a0, $v0, 0xC
.L800107B4:
/* 113B4 800107B4 92430008 */  lbu        $v1, 0x8($s2)
/* 113B8 800107B8 92A90008 */  lbu        $t1, 0x8($s5)
/* 113BC 800107BC 3C0B8014 */  lui        $t3, %hi(D_8013FBE8)
/* 113C0 800107C0 256BFBE8 */  addiu      $t3, $t3, %lo(D_8013FBE8)
/* 113C4 800107C4 00691023 */  subu       $v0, $v1, $t1
/* 113C8 800107C8 04410003 */  bgez       $v0, .L800107D8
/* 113CC 800107CC 00000000 */   nop
/* 113D0 800107D0 10000004 */  b          .L800107E4
/* 113D4 800107D4 00608825 */   or        $s1, $v1, $zero
.L800107D8:
/* 113D8 800107D8 58400003 */  blezl      $v0, .L800107E8
/* 113DC 800107DC 00115080 */   sll       $t2, $s1, 2
/* 113E0 800107E0 2471FFFF */  addiu      $s1, $v1, -0x1
.L800107E4:
/* 113E4 800107E4 00115080 */  sll        $t2, $s1, 2
.L800107E8:
/* 113E8 800107E8 01515023 */  subu       $t2, $t2, $s1
/* 113EC 800107EC 000A5080 */  sll        $t2, $t2, 2
/* 113F0 800107F0 014B1021 */  addu       $v0, $t2, $t3
/* 113F4 800107F4 16C30003 */  bne        $s6, $v1, .L80010804
/* 113F8 800107F8 2444000C */   addiu     $a0, $v0, 0xC
/* 113FC 800107FC 10000002 */  b          .L80010808
/* 11400 80010800 00001825 */   or        $v1, $zero, $zero
.L80010804:
/* 11404 80010804 02C01825 */  or         $v1, $s6, $zero
.L80010808:
/* 11408 80010808 00036080 */  sll        $t4, $v1, 2
/* 1140C 8001080C 01836023 */  subu       $t4, $t4, $v1
/* 11410 80010810 000C6080 */  sll        $t4, $t4, 2
/* 11414 80010814 028C6821 */  addu       $t5, $s4, $t4
/* 11418 80010818 0C0044DB */  jal        func_8001136C
/* 1141C 8001081C AC4D0010 */   sw        $t5, 0x10($v0)
/* 11420 80010820 02202025 */  or         $a0, $s1, $zero
/* 11424 80010824 0C00421C */  jal        func_80010870
/* 11428 80010828 02002825 */   or        $a1, $s0, $zero
/* 1142C 8001082C 926E0009 */  lbu        $t6, 0x9($s3)
/* 11430 80010830 26100001 */  addiu      $s0, $s0, 0x1
/* 11434 80010834 265220A0 */  addiu      $s2, $s2, 0x20A0
/* 11438 80010838 020E082A */  slt        $at, $s0, $t6
/* 1143C 8001083C 1420FFCD */  bnez       $at, .L80010774
/* 11440 80010840 00000000 */   nop
/* 11444 80010844 AFB10038 */  sw         $s1, 0x38($sp)
.L80010848:
/* 11448 80010848 8FBF0034 */  lw         $ra, 0x34($sp)
/* 1144C 8001084C 8FB00018 */  lw         $s0, 0x18($sp)
/* 11450 80010850 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11454 80010854 8FB20020 */  lw         $s2, 0x20($sp)
/* 11458 80010858 8FB30024 */  lw         $s3, 0x24($sp)
/* 1145C 8001085C 8FB40028 */  lw         $s4, 0x28($sp)
/* 11460 80010860 8FB5002C */  lw         $s5, 0x2C($sp)
/* 11464 80010864 8FB60030 */  lw         $s6, 0x30($sp)
/* 11468 80010868 03E00008 */  jr         $ra
/* 1146C 8001086C 27BD0040 */   addiu     $sp, $sp, 0x40