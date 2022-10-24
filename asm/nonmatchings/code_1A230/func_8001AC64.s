glabel func_8001AC64
/* 1B864 8001AC64 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1B868 8001AC68 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1B86C 8001AC6C AFB00020 */  sw         $s0, 0x20($sp)
/* 1B870 8001AC70 AFA40040 */  sw         $a0, 0x40($sp)
/* 1B874 8001AC74 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1B878 8001AC78 00A08025 */  or         $s0, $a1, $zero
/* 1B87C 8001AC7C 00807025 */  or         $t6, $a0, $zero
/* 1B880 8001AC80 AFAF003C */  sw         $t7, 0x3C($sp)
/* 1B884 8001AC84 84B80008 */  lh         $t8, 0x8($a1)
/* 1B888 8001AC88 240500FF */  addiu      $a1, $zero, 0xFF
/* 1B88C 8001AC8C 240400FF */  addiu      $a0, $zero, 0xFF
/* 1B890 8001AC90 07010004 */  bgez       $t8, .L8001ACA4
/* 1B894 8001AC94 3319003F */   andi      $t9, $t8, 0x3F
/* 1B898 8001AC98 13200002 */  beqz       $t9, .L8001ACA4
/* 1B89C 8001AC9C 00000000 */   nop
/* 1B8A0 8001ACA0 2739FFC0 */  addiu      $t9, $t9, -0x40
.L8001ACA4:
/* 1B8A4 8001ACA4 13200008 */  beqz       $t9, .L8001ACC8
/* 1B8A8 8001ACA8 00003025 */   or        $a2, $zero, $zero
/* 1B8AC 8001ACAC 240400FF */  addiu      $a0, $zero, 0xFF
/* 1B8B0 8001ACB0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1B8B4 8001ACB4 00003025 */  or         $a2, $zero, $zero
/* 1B8B8 8001ACB8 0C007DD7 */  jal        func_8001F75C
/* 1B8BC 8001ACBC 240700FF */   addiu     $a3, $zero, 0xFF
/* 1B8C0 8001ACC0 10000004 */  b          .L8001ACD4
/* 1B8C4 8001ACC4 2404006A */   addiu     $a0, $zero, 0x6A
.L8001ACC8:
/* 1B8C8 8001ACC8 0C007DD7 */  jal        func_8001F75C
/* 1B8CC 8001ACCC 2407007F */   addiu     $a3, $zero, 0x7F
/* 1B8D0 8001ACD0 2404006A */  addiu      $a0, $zero, 0x6A
.L8001ACD4:
/* 1B8D4 8001ACD4 0C007DAD */  jal        func_8001F6B4
/* 1B8D8 8001ACD8 96050002 */   lhu       $a1, 0x2($s0)
/* 1B8DC 8001ACDC 3C058009 */  lui        $a1, %hi(D_80096C98)
/* 1B8E0 8001ACE0 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1B8E4 8001ACE4 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1B8E8 8001ACE8 24A56C98 */  addiu      $a1, $a1, %lo(D_80096C98)
/* 1B8EC 8001ACEC 0C007DE4 */  jal        func_8001F790
/* 1B8F0 8001ACF0 27A4003C */   addiu     $a0, $sp, 0x3C
/* 1B8F4 8001ACF4 8FA8003C */  lw         $t0, 0x3C($sp)
/* 1B8F8 8001ACF8 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 1B8FC 8001ACFC 3C0EFFFF */  lui        $t6, (0xFFFF0096 >> 16)
/* 1B900 8001AD00 25090008 */  addiu      $t1, $t0, 0x8
/* 1B904 8001AD04 AFA9003C */  sw         $t1, 0x3C($sp)
/* 1B908 8001AD08 AD000004 */  sw         $zero, 0x4($t0)
/* 1B90C 8001AD0C AD0A0000 */  sw         $t2, 0x0($t0)
/* 1B910 8001AD10 8FAB003C */  lw         $t3, 0x3C($sp)
/* 1B914 8001AD14 35CE0096 */  ori        $t6, $t6, (0xFFFF0096 & 0xFFFF)
/* 1B918 8001AD18 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1B91C 8001AD1C 256C0008 */  addiu      $t4, $t3, 0x8
/* 1B920 8001AD20 AFAC003C */  sw         $t4, 0x3C($sp)
/* 1B924 8001AD24 AD6E0004 */  sw         $t6, 0x4($t3)
/* 1B928 8001AD28 AD6D0000 */  sw         $t5, 0x0($t3)
/* 1B92C 8001AD2C 8FAF003C */  lw         $t7, 0x3C($sp)
/* 1B930 8001AD30 3C080040 */  lui        $t0, (0x404340 >> 16)
/* 1B934 8001AD34 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1B938 8001AD38 25F80008 */  addiu      $t8, $t7, 0x8
/* 1B93C 8001AD3C AFB8003C */  sw         $t8, 0x3C($sp)
/* 1B940 8001AD40 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1B944 8001AD44 35084340 */  ori        $t0, $t0, (0x404340 & 0xFFFF)
/* 1B948 8001AD48 ADE80004 */  sw         $t0, 0x4($t7)
/* 1B94C 8001AD4C ADF90000 */  sw         $t9, 0x0($t7)
/* 1B950 8001AD50 9205000C */  lbu        $a1, 0xC($s0)
/* 1B954 8001AD54 24010001 */  addiu      $at, $zero, 0x1
/* 1B958 8001AD58 27A4003C */  addiu      $a0, $sp, 0x3C
/* 1B95C 8001AD5C 54A10009 */  bnel       $a1, $at, .L8001AD84
/* 1B960 8001AD60 24010002 */   addiu     $at, $zero, 0x2
/* 1B964 8001AD64 96050000 */  lhu        $a1, 0x0($s0)
/* 1B968 8001AD68 96060002 */  lhu        $a2, 0x2($s0)
/* 1B96C 8001AD6C 8E070010 */  lw         $a3, 0x10($s0)
/* 1B970 8001AD70 0C006743 */  jal        func_80019D0C
/* 1B974 8001AD74 AFA00010 */   sw        $zero, 0x10($sp)
/* 1B978 8001AD78 1000000B */  b          .L8001ADA8
/* 1B97C 8001AD7C 8FAA003C */   lw        $t2, 0x3C($sp)
/* 1B980 8001AD80 24010002 */  addiu      $at, $zero, 0x2
.L8001AD84:
/* 1B984 8001AD84 14A10007 */  bne        $a1, $at, .L8001ADA4
/* 1B988 8001AD88 27A4003C */   addiu     $a0, $sp, 0x3C
/* 1B98C 8001AD8C 96050000 */  lhu        $a1, 0x0($s0)
/* 1B990 8001AD90 96060002 */  lhu        $a2, 0x2($s0)
/* 1B994 8001AD94 8E070010 */  lw         $a3, 0x10($s0)
/* 1B998 8001AD98 24090001 */  addiu      $t1, $zero, 0x1
/* 1B99C 8001AD9C 0C006743 */  jal        func_80019D0C
/* 1B9A0 8001ADA0 AFA90010 */   sw        $t1, 0x10($sp)
.L8001ADA4:
/* 1B9A4 8001ADA4 8FAA003C */  lw         $t2, 0x3C($sp)
.L8001ADA8:
/* 1B9A8 8001ADA8 8FAB0040 */  lw         $t3, 0x40($sp)
/* 1B9AC 8001ADAC AD6A0000 */  sw         $t2, 0x0($t3)
/* 1B9B0 8001ADB0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1B9B4 8001ADB4 8FB00020 */  lw         $s0, 0x20($sp)
/* 1B9B8 8001ADB8 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1B9BC 8001ADBC 03E00008 */  jr         $ra
/* 1B9C0 8001ADC0 00000000 */   nop
