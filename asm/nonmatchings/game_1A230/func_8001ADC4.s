glabel func_8001ADC4
/* 1B9C4 8001ADC4 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 1B9C8 8001ADC8 2463FF90 */  addiu      $v1, $v1, %lo(D_8013FF90)
/* 1B9CC 8001ADCC 80620000 */  lb         $v0, 0x0($v1)
/* 1B9D0 8001ADD0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1B9D4 8001ADD4 AFB00020 */  sw         $s0, 0x20($sp)
/* 1B9D8 8001ADD8 00A08025 */  or         $s0, $a1, $zero
/* 1B9DC 8001ADDC AFBF0024 */  sw         $ra, 0x24($sp)
/* 1B9E0 8001ADE0 AFA40048 */  sw         $a0, 0x48($sp)
/* 1B9E4 8001ADE4 14400003 */  bnez       $v0, .L8001ADF4
/* 1B9E8 8001ADE8 AFA60050 */   sw        $a2, 0x50($sp)
/* 1B9EC 8001ADEC 906E0019 */  lbu        $t6, 0x19($v1)
/* 1B9F0 8001ADF0 11C0007D */  beqz       $t6, .L8001AFE8
.L8001ADF4:
/* 1B9F4 8001ADF4 24010004 */   addiu     $at, $zero, 0x4
/* 1B9F8 8001ADF8 1041007B */  beq        $v0, $at, .L8001AFE8
/* 1B9FC 8001ADFC 24010002 */   addiu     $at, $zero, 0x2
/* 1BA00 8001AE00 10410079 */  beq        $v0, $at, .L8001AFE8
/* 1BA04 8001AE04 8FAF0048 */   lw        $t7, 0x48($sp)
/* 1BA08 8001AE08 8DF80000 */  lw         $t8, 0x0($t7)
/* 1BA0C 8001AE0C 8FB90050 */  lw         $t9, 0x50($sp)
/* 1BA10 8001AE10 AFB80044 */  sw         $t8, 0x44($sp)
/* 1BA14 8001AE14 83220050 */  lb         $v0, 0x50($t9)
/* 1BA18 8001AE18 04420004 */  bltzl      $v0, .L8001AE2C
/* 1BA1C 8001AE1C 00021823 */   negu      $v1, $v0
/* 1BA20 8001AE20 10000002 */  b          .L8001AE2C
/* 1BA24 8001AE24 00401825 */   or        $v1, $v0, $zero
/* 1BA28 8001AE28 00021823 */  negu       $v1, $v0
.L8001AE2C:
/* 1BA2C 8001AE2C 04610004 */  bgez       $v1, .L8001AE40
/* 1BA30 8001AE30 30690001 */   andi      $t1, $v1, 0x1
/* 1BA34 8001AE34 11200002 */  beqz       $t1, .L8001AE40
/* 1BA38 8001AE38 00000000 */   nop
/* 1BA3C 8001AE3C 2529FFFE */  addiu      $t1, $t1, -0x2
.L8001AE40:
/* 1BA40 8001AE40 11200011 */  beqz       $t1, .L8001AE88
/* 1BA44 8001AE44 240400FF */   addiu     $a0, $zero, 0xFF
/* 1BA48 8001AE48 18400007 */  blez       $v0, .L8001AE68
/* 1BA4C 8001AE4C 00002025 */   or        $a0, $zero, $zero
/* 1BA50 8001AE50 24050015 */  addiu      $a1, $zero, 0x15
/* 1BA54 8001AE54 240600AE */  addiu      $a2, $zero, 0xAE
/* 1BA58 8001AE58 0C007DD7 */  jal        func_8001F75C
/* 1BA5C 8001AE5C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1BA60 8001AE60 1000000E */  b          .L8001AE9C
/* 1BA64 8001AE64 96040000 */   lhu       $a0, 0x0($s0)
.L8001AE68:
/* 1BA68 8001AE68 0441000B */  bgez       $v0, .L8001AE98
/* 1BA6C 8001AE6C 240400B5 */   addiu     $a0, $zero, 0xB5
/* 1BA70 8001AE70 24050060 */  addiu      $a1, $zero, 0x60
/* 1BA74 8001AE74 24060014 */  addiu      $a2, $zero, 0x14
/* 1BA78 8001AE78 0C007DD7 */  jal        func_8001F75C
/* 1BA7C 8001AE7C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1BA80 8001AE80 10000006 */  b          .L8001AE9C
/* 1BA84 8001AE84 96040000 */   lhu       $a0, 0x0($s0)
.L8001AE88:
/* 1BA88 8001AE88 240500FF */  addiu      $a1, $zero, 0xFF
/* 1BA8C 8001AE8C 240600FF */  addiu      $a2, $zero, 0xFF
/* 1BA90 8001AE90 0C007DD7 */  jal        func_8001F75C
/* 1BA94 8001AE94 240700FF */   addiu     $a3, $zero, 0xFF
.L8001AE98:
/* 1BA98 8001AE98 96040000 */  lhu        $a0, 0x0($s0)
.L8001AE9C:
/* 1BA9C 8001AE9C 0C007DAD */  jal        osSetTime
/* 1BAA0 8001AEA0 96050002 */   lhu       $a1, 0x2($s0)
/* 1BAA4 8001AEA4 8FAA0050 */  lw         $t2, 0x50($sp)
/* 1BAA8 8001AEA8 3C058009 */  lui        $a1, %hi(D_80096CA4)
/* 1BAAC 8001AEAC 24A56CA4 */  addiu      $a1, $a1, %lo(D_80096CA4)
/* 1BAB0 8001AEB0 27A40040 */  addiu      $a0, $sp, 0x40
/* 1BAB4 8001AEB4 0C01AE81 */  jal        sprintf
/* 1BAB8 8001AEB8 91460048 */   lbu       $a2, 0x48($t2)
/* 1BABC 8001AEBC 27A40044 */  addiu      $a0, $sp, 0x44
/* 1BAC0 8001AEC0 27A50040 */  addiu      $a1, $sp, 0x40
/* 1BAC4 8001AEC4 0C007DE4 */  jal        func_8001F790
/* 1BAC8 8001AEC8 8E06000C */   lw        $a2, 0xC($s0)
/* 1BACC 8001AECC 240400FF */  addiu      $a0, $zero, 0xFF
/* 1BAD0 8001AED0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1BAD4 8001AED4 240600FF */  addiu      $a2, $zero, 0xFF
/* 1BAD8 8001AED8 0C007DD7 */  jal        func_8001F75C
/* 1BADC 8001AEDC 240700FF */   addiu     $a3, $zero, 0xFF
/* 1BAE0 8001AEE0 96040000 */  lhu        $a0, 0x0($s0)
/* 1BAE4 8001AEE4 96050002 */  lhu        $a1, 0x2($s0)
/* 1BAE8 8001AEE8 2484002A */  addiu      $a0, $a0, 0x2A
/* 1BAEC 8001AEEC 0C007DAD */  jal        osSetTime
/* 1BAF0 8001AEF0 24A50010 */   addiu     $a1, $a1, 0x10
/* 1BAF4 8001AEF4 3C058009 */  lui        $a1, %hi(D_80096CA8)
/* 1BAF8 8001AEF8 3C068014 */  lui        $a2, %hi(gPlayerRacePos)
/* 1BAFC 8001AEFC 90C6FC91 */  lbu        $a2, %lo(gPlayerRacePos)($a2)
/* 1BB00 8001AF00 24A56CA8 */  addiu      $a1, $a1, %lo(D_80096CA8)
/* 1BB04 8001AF04 0C01AE81 */  jal        sprintf
/* 1BB08 8001AF08 27A40040 */   addiu     $a0, $sp, 0x40
/* 1BB0C 8001AF0C 27A40044 */  addiu      $a0, $sp, 0x44
/* 1BB10 8001AF10 27A50040 */  addiu      $a1, $sp, 0x40
/* 1BB14 8001AF14 0C007DE4 */  jal        func_8001F790
/* 1BB18 8001AF18 8E060010 */   lw        $a2, 0x10($s0)
/* 1BB1C 8001AF1C 8FAB0044 */  lw         $t3, 0x44($sp)
/* 1BB20 8001AF20 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 1BB24 8001AF24 3C18FA00 */  lui        $t8, (0xFA000000 >> 16)
/* 1BB28 8001AF28 256C0008 */  addiu      $t4, $t3, 0x8
/* 1BB2C 8001AF2C AFAC0044 */  sw         $t4, 0x44($sp)
/* 1BB30 8001AF30 AD600004 */  sw         $zero, 0x4($t3)
/* 1BB34 8001AF34 AD6D0000 */  sw         $t5, 0x0($t3)
/* 1BB38 8001AF38 8FAE0044 */  lw         $t6, 0x44($sp)
/* 1BB3C 8001AF3C 2419FFFF */  addiu      $t9, $zero, -0x1
/* 1BB40 8001AF40 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
/* 1BB44 8001AF44 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BB48 8001AF48 AFAF0044 */  sw         $t7, 0x44($sp)
/* 1BB4C 8001AF4C ADD90004 */  sw         $t9, 0x4($t6)
/* 1BB50 8001AF50 ADD80000 */  sw         $t8, 0x0($t6)
/* 1BB54 8001AF54 8FA90044 */  lw         $t1, 0x44($sp)
/* 1BB58 8001AF58 3C0C0050 */  lui        $t4, (0x504240 >> 16)
/* 1BB5C 8001AF5C 358C4240 */  ori        $t4, $t4, (0x504240 & 0xFFFF)
/* 1BB60 8001AF60 252A0008 */  addiu      $t2, $t1, 0x8
/* 1BB64 8001AF64 AFAA0044 */  sw         $t2, 0x44($sp)
/* 1BB68 8001AF68 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
/* 1BB6C 8001AF6C AD2B0000 */  sw         $t3, 0x0($t1)
/* 1BB70 8001AF70 AD2C0004 */  sw         $t4, 0x4($t1)
/* 1BB74 8001AF74 96060002 */  lhu        $a2, 0x2($s0)
/* 1BB78 8001AF78 96050000 */  lhu        $a1, 0x0($s0)
/* 1BB7C 8001AF7C 8E070014 */  lw         $a3, 0x14($s0)
/* 1BB80 8001AF80 24C60010 */  addiu      $a2, $a2, 0x10
/* 1BB84 8001AF84 24A5001E */  addiu      $a1, $a1, 0x1E
/* 1BB88 8001AF88 30ADFFFF */  andi       $t5, $a1, 0xFFFF
/* 1BB8C 8001AF8C 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* 1BB90 8001AF90 01C03025 */  or         $a2, $t6, $zero
/* 1BB94 8001AF94 01A02825 */  or         $a1, $t5, $zero
/* 1BB98 8001AF98 AFA00010 */  sw         $zero, 0x10($sp)
/* 1BB9C 8001AF9C 0C006743 */  jal        func_80019D0C
/* 1BBA0 8001AFA0 27A40044 */   addiu     $a0, $sp, 0x44
/* 1BBA4 8001AFA4 8E070018 */  lw         $a3, 0x18($s0)
/* 1BBA8 8001AFA8 27A40044 */  addiu      $a0, $sp, 0x44
/* 1BBAC 8001AFAC 50E0000C */  beql       $a3, $zero, .L8001AFE0
/* 1BBB0 8001AFB0 8FB90044 */   lw        $t9, 0x44($sp)
/* 1BBB4 8001AFB4 96050000 */  lhu        $a1, 0x0($s0)
/* 1BBB8 8001AFB8 96060002 */  lhu        $a2, 0x2($s0)
/* 1BBBC 8001AFBC AFA00010 */  sw         $zero, 0x10($sp)
/* 1BBC0 8001AFC0 24A5001F */  addiu      $a1, $a1, 0x1F
/* 1BBC4 8001AFC4 24C60004 */  addiu      $a2, $a2, 0x4
/* 1BBC8 8001AFC8 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 1BBCC 8001AFCC 30AFFFFF */  andi       $t7, $a1, 0xFFFF
/* 1BBD0 8001AFD0 01E02825 */  or         $a1, $t7, $zero
/* 1BBD4 8001AFD4 0C006743 */  jal        func_80019D0C
/* 1BBD8 8001AFD8 03003025 */   or        $a2, $t8, $zero
/* 1BBDC 8001AFDC 8FB90044 */  lw         $t9, 0x44($sp)
.L8001AFE0:
/* 1BBE0 8001AFE0 8FA90048 */  lw         $t1, 0x48($sp)
/* 1BBE4 8001AFE4 AD390000 */  sw         $t9, 0x0($t1)
.L8001AFE8:
/* 1BBE8 8001AFE8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1BBEC 8001AFEC 8FB00020 */  lw         $s0, 0x20($sp)
/* 1BBF0 8001AFF0 27BD0048 */  addiu      $sp, $sp, 0x48
/* 1BBF4 8001AFF4 03E00008 */  jr         $ra
/* 1BBF8 8001AFF8 00000000 */   nop
