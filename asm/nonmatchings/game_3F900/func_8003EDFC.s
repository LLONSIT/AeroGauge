glabel func_8003EDFC
/* 3F9FC 8003EDFC 3C0E8009 */  lui        $t6, %hi(D_8008EF00)
/* 3FA00 8003EE00 91CEEF00 */  lbu        $t6, %lo(D_8008EF00)($t6)
/* 3FA04 8003EE04 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3FA08 8003EE08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3FA0C 8003EE0C AFA40028 */  sw         $a0, 0x28($sp)
/* 3FA10 8003EE10 AFA5002C */  sw         $a1, 0x2C($sp)
/* 3FA14 8003EE14 11C00015 */  beqz       $t6, .L8003EE6C
/* 3FA18 8003EE18 AFA60030 */   sw        $a2, 0x30($sp)
/* 3FA1C 8003EE1C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 3FA20 8003EE20 44810000 */  mtc1       $at, $f0
/* 3FA24 8003EE24 3C028011 */  lui        $v0, %hi(D_80109C28)
/* 3FA28 8003EE28 24036E14 */  addiu      $v1, $zero, 0x6E14
/* 3FA2C 8003EE2C 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 3FA30 8003EE30 24429C28 */  addiu      $v0, $v0, %lo(D_80109C28)
/* 3FA34 8003EE34 A4239BDC */  sh         $v1, %lo(D_80109BDC)($at)
/* 3FA38 8003EE38 A443006C */  sh         $v1, 0x6C($v0)
/* 3FA3C 8003EE3C A4430084 */  sh         $v1, 0x84($v0)
/* 3FA40 8003EE40 24040013 */  addiu      $a0, $zero, 0x13
/* 3FA44 8003EE44 00002825 */  or         $a1, $zero, $zero
/* 3FA48 8003EE48 E4400074 */  swc1       $f0, 0x74($v0)
/* 3FA4C 8003EE4C 0C000170 */  jal        func_800005C0
/* 3FA50 8003EE50 E440008C */   swc1      $f0, 0x8C($v0)
/* 3FA54 8003EE54 3C018009 */  lui        $at, %hi(D_8008F294)
/* 3FA58 8003EE58 AC20F294 */  sw         $zero, %lo(D_8008F294)($at)
/* 3FA5C 8003EE5C 3C018009 */  lui        $at, %hi(D_8008EE9C)
/* 3FA60 8003EE60 AC20EE9C */  sw         $zero, %lo(D_8008EE9C)($at)
/* 3FA64 8003EE64 3C018009 */  lui        $at, %hi(D_8008EF00)
/* 3FA68 8003EE68 A020EF00 */  sb         $zero, %lo(D_8008EF00)($at)
.L8003EE6C:
/* 3FA6C 8003EE6C 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3FA70 8003EE70 8FB9002C */  lw         $t9, 0x2C($sp)
/* 3FA74 8003EE74 8FA90030 */  lw         $t1, 0x30($sp)
/* 3FA78 8003EE78 8DF80000 */  lw         $t8, 0x0($t7)
/* 3FA7C 8003EE7C 3C0B8009 */  lui        $t3, %hi(D_8008F294)
/* 3FA80 8003EE80 8D6BF294 */  lw         $t3, %lo(D_8008F294)($t3)
/* 3FA84 8003EE84 AFB80024 */  sw         $t8, 0x24($sp)
/* 3FA88 8003EE88 8F280000 */  lw         $t0, 0x0($t9)
/* 3FA8C 8003EE8C 2D610006 */  sltiu      $at, $t3, 0x6
/* 3FA90 8003EE90 000B5880 */  sll        $t3, $t3, 2
/* 3FA94 8003EE94 AFA80020 */  sw         $t0, 0x20($sp)
/* 3FA98 8003EE98 8D2A0000 */  lw         $t2, 0x0($t1)
/* 3FA9C 8003EE9C 10200026 */  beqz       $at, .L8003EF38
/* 3FAA0 8003EEA0 AFAA001C */   sw        $t2, 0x1C($sp)
/* 3FAA4 8003EEA4 3C018009 */  lui        $at, %hi(jtbl_80097680_main)
/* 3FAA8 8003EEA8 002B0821 */  addu       $at, $at, $t3
/* 3FAAC 8003EEAC 8C2B7680 */  lw         $t3, %lo(jtbl_80097680_main)($at)
/* 3FAB0 8003EEB0 01600008 */  jr         $t3
/* 3FAB4 8003EEB4 00000000 */   nop
glabel L8003EEB8
/* 3FAB8 8003EEB8 3C0C8009 */  lui        $t4, %hi(D_8008F290)
/* 3FABC 8003EEBC 8D8CF290 */  lw         $t4, %lo(D_8008F290)($t4)
/* 3FAC0 8003EEC0 24010003 */  addiu      $at, $zero, 0x3
/* 3FAC4 8003EEC4 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FAC8 8003EEC8 15810007 */  bne        $t4, $at, .L8003EEE8
/* 3FACC 8003EECC 27A50020 */   addiu     $a1, $sp, 0x20
/* 3FAD0 8003EED0 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FAD4 8003EED4 27A50020 */  addiu      $a1, $sp, 0x20
/* 3FAD8 8003EED8 0C010A65 */  jal        func_80042994
/* 3FADC 8003EEDC 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3FAE0 8003EEE0 10000016 */  b          .L8003EF3C
/* 3FAE4 8003EEE4 8FAD0024 */   lw        $t5, 0x24($sp)
.L8003EEE8:
/* 3FAE8 8003EEE8 0C00FD2A */  jal        func_8003F4A8
/* 3FAEC 8003EEEC 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3FAF0 8003EEF0 10000012 */  b          .L8003EF3C
/* 3FAF4 8003EEF4 8FAD0024 */   lw        $t5, 0x24($sp)
glabel L8003EEF8
/* 3FAF8 8003EEF8 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FAFC 8003EEFC 27A50020 */  addiu      $a1, $sp, 0x20
/* 3FB00 8003EF00 0C011938 */  jal        func_800464E0
/* 3FB04 8003EF04 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3FB08 8003EF08 1000000C */  b          .L8003EF3C
/* 3FB0C 8003EF0C 8FAD0024 */   lw        $t5, 0x24($sp)
glabel L8003EF10
/* 3FB10 8003EF10 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FB14 8003EF14 27A50020 */  addiu      $a1, $sp, 0x20
/* 3FB18 8003EF18 0C00CAEC */  jal        func_80032BB0
/* 3FB1C 8003EF1C 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3FB20 8003EF20 10000006 */  b          .L8003EF3C
/* 3FB24 8003EF24 8FAD0024 */   lw        $t5, 0x24($sp)
glabel L8003EF28
/* 3FB28 8003EF28 27A40024 */  addiu      $a0, $sp, 0x24
/* 3FB2C 8003EF2C 27A50020 */  addiu      $a1, $sp, 0x20
/* 3FB30 8003EF30 0C01074B */  jal        func_80041D2C
/* 3FB34 8003EF34 27A6001C */   addiu     $a2, $sp, 0x1C
.L8003EF38:
/* 3FB38 8003EF38 8FAD0024 */  lw         $t5, 0x24($sp)
.L8003EF3C:
/* 3FB3C 8003EF3C 8FAE0028 */  lw         $t6, 0x28($sp)
/* 3FB40 8003EF40 3C098009 */  lui        $t1, %hi(D_8008EE9C)
/* 3FB44 8003EF44 240A0001 */  addiu      $t2, $zero, 0x1
/* 3FB48 8003EF48 ADCD0000 */  sw         $t5, 0x0($t6)
/* 3FB4C 8003EF4C 8FB8002C */  lw         $t8, 0x2C($sp)
/* 3FB50 8003EF50 8FAF0020 */  lw         $t7, 0x20($sp)
/* 3FB54 8003EF54 3C018009 */  lui        $at, %hi(D_8008EF00)
/* 3FB58 8003EF58 AF0F0000 */  sw         $t7, 0x0($t8)
/* 3FB5C 8003EF5C 8FA80030 */  lw         $t0, 0x30($sp)
/* 3FB60 8003EF60 8FB9001C */  lw         $t9, 0x1C($sp)
/* 3FB64 8003EF64 AD190000 */  sw         $t9, 0x0($t0)
/* 3FB68 8003EF68 8D29EE9C */  lw         $t1, %lo(D_8008EE9C)($t1)
/* 3FB6C 8003EF6C 51200003 */  beql       $t1, $zero, .L8003EF7C
/* 3FB70 8003EF70 8FBF0014 */   lw        $ra, 0x14($sp)
/* 3FB74 8003EF74 A02AEF00 */  sb         $t2, %lo(D_8008EF00)($at)
/* 3FB78 8003EF78 8FBF0014 */  lw         $ra, 0x14($sp)
.L8003EF7C:
/* 3FB7C 8003EF7C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3FB80 8003EF80 03E00008 */  jr         $ra
/* 3FB84 8003EF84 00000000 */   nop
