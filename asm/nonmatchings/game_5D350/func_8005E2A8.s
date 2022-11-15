glabel func_8005E2A8
/* 5EEA8 8005E2A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5EEAC 8005E2AC AFB10018 */  sw         $s1, 0x18($sp)
/* 5EEB0 8005E2B0 3C11801A */  lui        $s1, %hi(D_8019EE60)
/* 5EEB4 8005E2B4 2631EE60 */  addiu      $s1, $s1, %lo(D_8019EE60)
/* 5EEB8 8005E2B8 8E2E0000 */  lw         $t6, 0x0($s1)
/* 5EEBC 8005E2BC AFB00014 */  sw         $s0, 0x14($sp)
/* 5EEC0 8005E2C0 00808025 */  or         $s0, $a0, $zero
/* 5EEC4 8005E2C4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 5EEC8 8005E2C8 24840010 */  addiu      $a0, $a0, 0x10
/* 5EECC 8005E2CC 24060003 */  addiu      $a2, $zero, 0x3
/* 5EED0 8005E2D0 0C0095B0 */  jal        func_800256C0
/* 5EED4 8005E2D4 91C50000 */   lbu       $a1, 0x0($t6)
/* 5EED8 8005E2D8 8E2F0000 */  lw         $t7, 0x0($s1)
/* 5EEDC 8005E2DC 26040011 */  addiu      $a0, $s0, 0x11
/* 5EEE0 8005E2E0 24060003 */  addiu      $a2, $zero, 0x3
/* 5EEE4 8005E2E4 0C0095B0 */  jal        func_800256C0
/* 5EEE8 8005E2E8 91E50001 */   lbu       $a1, 0x1($t7)
/* 5EEEC 8005E2EC 8E380000 */  lw         $t8, 0x0($s1)
/* 5EEF0 8005E2F0 26040012 */  addiu      $a0, $s0, 0x12
/* 5EEF4 8005E2F4 24060003 */  addiu      $a2, $zero, 0x3
/* 5EEF8 8005E2F8 0C0095B0 */  jal        func_800256C0
/* 5EEFC 8005E2FC 93050002 */   lbu       $a1, 0x2($t8)
/* 5EF00 8005E300 26040013 */  addiu      $a0, $s0, 0x13
/* 5EF04 8005E304 240500FF */  addiu      $a1, $zero, 0xFF
/* 5EF08 8005E308 0C0095B0 */  jal        func_800256C0
/* 5EF0C 8005E30C 24060003 */   addiu     $a2, $zero, 0x3
/* 5EF10 8005E310 26040014 */  addiu      $a0, $s0, 0x14
/* 5EF14 8005E314 240500FF */  addiu      $a1, $zero, 0xFF
/* 5EF18 8005E318 0C0095B0 */  jal        func_800256C0
/* 5EF1C 8005E31C 24060003 */   addiu     $a2, $zero, 0x3
/* 5EF20 8005E320 26040015 */  addiu      $a0, $s0, 0x15
/* 5EF24 8005E324 00002825 */  or         $a1, $zero, $zero
/* 5EF28 8005E328 0C0095B0 */  jal        func_800256C0
/* 5EF2C 8005E32C 24060003 */   addiu     $a2, $zero, 0x3
/* 5EF30 8005E330 8E390000 */  lw         $t9, 0x0($s1)
/* 5EF34 8005E334 26040016 */  addiu      $a0, $s0, 0x16
/* 5EF38 8005E338 24060003 */  addiu      $a2, $zero, 0x3
/* 5EF3C 8005E33C 0C0095DE */  jal        func_80025778
/* 5EF40 8005E340 83250006 */   lb        $a1, 0x6($t9)
/* 5EF44 8005E344 8E280000 */  lw         $t0, 0x0($s1)
/* 5EF48 8005E348 26040017 */  addiu      $a0, $s0, 0x17
/* 5EF4C 8005E34C 24060003 */  addiu      $a2, $zero, 0x3
/* 5EF50 8005E350 0C0095DE */  jal        func_80025778
/* 5EF54 8005E354 81050007 */   lb        $a1, 0x7($t0)
/* 5EF58 8005E358 8E290000 */  lw         $t1, 0x0($s1)
/* 5EF5C 8005E35C 26040018 */  addiu      $a0, $s0, 0x18
/* 5EF60 8005E360 24060003 */  addiu      $a2, $zero, 0x3
/* 5EF64 8005E364 0C0095DE */  jal        func_80025778
/* 5EF68 8005E368 81250008 */   lb        $a1, 0x8($t1)
/* 5EF6C 8005E36C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 5EF70 8005E370 8FB00014 */  lw         $s0, 0x14($sp)
/* 5EF74 8005E374 8FB10018 */  lw         $s1, 0x18($sp)
/* 5EF78 8005E378 03E00008 */  jr         $ra
/* 5EF7C 8005E37C 27BD0020 */   addiu     $sp, $sp, 0x20
