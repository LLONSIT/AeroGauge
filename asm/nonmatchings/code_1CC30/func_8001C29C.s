glabel func_8001C29C
/* 1CE9C 8001C29C 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 1CEA0 8001C2A0 24A2FFFF */  addiu      $v0, $a1, -0x1
/* 1CEA4 8001C2A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1CEA8 8001C2A8 AFA40090 */  sw         $a0, 0x90($sp)
/* 1CEAC 8001C2AC AFA50094 */  sw         $a1, 0x94($sp)
/* 1CEB0 8001C2B0 AFA60098 */  sw         $a2, 0x98($sp)
/* 1CEB4 8001C2B4 30C700FF */  andi       $a3, $a2, 0xFF
/* 1CEB8 8001C2B8 04400004 */  bltz       $v0, .L8001C2CC
/* 1CEBC 8001C2BC 00401825 */   or        $v1, $v0, $zero
/* 1CEC0 8001C2C0 28410005 */  slti       $at, $v0, 0x5
/* 1CEC4 8001C2C4 54200003 */  bnel       $at, $zero, .L8001C2D4
/* 1CEC8 8001C2C8 8FAE0090 */   lw        $t6, 0x90($sp)
.L8001C2CC:
/* 1CECC 8001C2CC 00001825 */  or         $v1, $zero, $zero
/* 1CED0 8001C2D0 8FAE0090 */  lw         $t6, 0x90($sp)
.L8001C2D4:
/* 1CED4 8001C2D4 240400FF */  addiu      $a0, $zero, 0xFF
/* 1CED8 8001C2D8 240500FF */  addiu      $a1, $zero, 0xFF
/* 1CEDC 8001C2DC 8DCF0000 */  lw         $t7, 0x0($t6)
/* 1CEE0 8001C2E0 AFA3008C */  sw         $v1, 0x8C($sp)
/* 1CEE4 8001C2E4 240600FF */  addiu      $a2, $zero, 0xFF
/* 1CEE8 8001C2E8 0C007DD7 */  jal        func_8001F75C
/* 1CEEC 8001C2EC AFAF0088 */   sw        $t7, 0x88($sp)
/* 1CEF0 8001C2F0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 1CEF4 8001C2F4 44816800 */  mtc1       $at, $f13
/* 1CEF8 8001C2F8 44806000 */  mtc1       $zero, $f12
/* 1CEFC 8001C2FC 0C007DC0 */  jal        func_8001F700
/* 1CF00 8001C300 46206386 */   mov.d     $f14, $f12
/* 1CF04 8001C304 2404001C */  addiu      $a0, $zero, 0x1C
/* 1CF08 8001C308 0C007DAD */  jal        func_8001F6B4
/* 1CF0C 8001C30C 24050040 */   addiu     $a1, $zero, 0x40
/* 1CF10 8001C310 3C058009 */  lui        $a1, %hi(D_80096D84)
/* 1CF14 8001C314 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1CF18 8001C318 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1CF1C 8001C31C 24A56D84 */  addiu      $a1, $a1, %lo(D_80096D84)
/* 1CF20 8001C320 0C007DE4 */  jal        func_8001F790
/* 1CF24 8001C324 27A40088 */   addiu     $a0, $sp, 0x88
/* 1CF28 8001C328 2404005B */  addiu      $a0, $zero, 0x5B
/* 1CF2C 8001C32C 0C007DAD */  jal        func_8001F6B4
/* 1CF30 8001C330 2405003D */   addiu     $a1, $zero, 0x3D
/* 1CF34 8001C334 3C058009 */  lui        $a1, %hi(D_80096D8C)
/* 1CF38 8001C338 24A56D8C */  addiu      $a1, $a1, %lo(D_80096D8C)
/* 1CF3C 8001C33C 27A40038 */  addiu      $a0, $sp, 0x38
/* 1CF40 8001C340 0C01AE81 */  jal        func_8006BA04
/* 1CF44 8001C344 8FA60094 */   lw        $a2, 0x94($sp)
/* 1CF48 8001C348 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1CF4C 8001C34C 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1CF50 8001C350 27A40088 */  addiu      $a0, $sp, 0x88
/* 1CF54 8001C354 0C007DE4 */  jal        func_8001F790
/* 1CF58 8001C358 27A50038 */   addiu     $a1, $sp, 0x38
/* 1CF5C 8001C35C 2404001C */  addiu      $a0, $zero, 0x1C
/* 1CF60 8001C360 0C007DAD */  jal        func_8001F6B4
/* 1CF64 8001C364 24050048 */   addiu     $a1, $zero, 0x48
/* 1CF68 8001C368 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1CF6C 8001C36C 3C058009 */  lui        $a1, %hi(D_8008B800)
/* 1CF70 8001C370 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1CF74 8001C374 0018C880 */  sll        $t9, $t8, 2
/* 1CF78 8001C378 00B92821 */  addu       $a1, $a1, $t9
/* 1CF7C 8001C37C 8CA5B800 */  lw         $a1, %lo(D_8008B800)($a1)
/* 1CF80 8001C380 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1CF84 8001C384 0C007DE4 */  jal        func_8001F790
/* 1CF88 8001C388 27A40088 */   addiu     $a0, $sp, 0x88
/* 1CF8C 8001C38C 2404001C */  addiu      $a0, $zero, 0x1C
/* 1CF90 8001C390 0C007DAD */  jal        func_8001F6B4
/* 1CF94 8001C394 24050068 */   addiu     $a1, $zero, 0x68
/* 1CF98 8001C398 3C058009 */  lui        $a1, %hi(D_80096D90)
/* 1CF9C 8001C39C 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1CFA0 8001C3A0 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1CFA4 8001C3A4 24A56D90 */  addiu      $a1, $a1, %lo(D_80096D90)
/* 1CFA8 8001C3A8 0C007DE4 */  jal        func_8001F790
/* 1CFAC 8001C3AC 27A40088 */   addiu     $a0, $sp, 0x88
/* 1CFB0 8001C3B0 2404008C */  addiu      $a0, $zero, 0x8C
/* 1CFB4 8001C3B4 0C007DAD */  jal        func_8001F6B4
/* 1CFB8 8001C3B8 24050060 */   addiu     $a1, $zero, 0x60
/* 1CFBC 8001C3BC 3C058009 */  lui        $a1, %hi(D_80096D98)
/* 1CFC0 8001C3C0 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1CFC4 8001C3C4 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1CFC8 8001C3C8 24A56D98 */  addiu      $a1, $a1, %lo(D_80096D98)
/* 1CFCC 8001C3CC 0C007DE4 */  jal        func_8001F790
/* 1CFD0 8001C3D0 27A40088 */   addiu     $a0, $sp, 0x88
/* 1CFD4 8001C3D4 2404008C */  addiu      $a0, $zero, 0x8C
/* 1CFD8 8001C3D8 0C007DAD */  jal        func_8001F6B4
/* 1CFDC 8001C3DC 24050068 */   addiu     $a1, $zero, 0x68
/* 1CFE0 8001C3E0 8FA8008C */  lw         $t0, 0x8C($sp)
/* 1CFE4 8001C3E4 3C0A8017 */  lui        $t2, %hi(D_8016C338)
/* 1CFE8 8001C3E8 254AC338 */  addiu      $t2, $t2, %lo(D_8016C338)
/* 1CFEC 8001C3EC 00084880 */  sll        $t1, $t0, 2
/* 1CFF0 8001C3F0 01284823 */  subu       $t1, $t1, $t0
/* 1CFF4 8001C3F4 00094880 */  sll        $t1, $t1, 2
/* 1CFF8 8001C3F8 01284823 */  subu       $t1, $t1, $t0
/* 1CFFC 8001C3FC 00094880 */  sll        $t1, $t1, 2
/* 1D000 8001C400 012A5821 */  addu       $t3, $t1, $t2
/* 1D004 8001C404 AFAB0024 */  sw         $t3, 0x24($sp)
/* 1D008 8001C408 8D670000 */  lw         $a3, 0x0($t3)
/* 1D00C 8001C40C 10E0000E */  beqz       $a3, .L8001C448
/* 1D010 8001C410 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D014 8001C414 27A5002C */  addiu      $a1, $sp, 0x2C
/* 1D018 8001C418 0C00588E */  jal        func_80016238
/* 1D01C 8001C41C 27A60028 */   addiu     $a2, $sp, 0x28
/* 1D020 8001C420 8FAC0028 */  lw         $t4, 0x28($sp)
/* 1D024 8001C424 3C058009 */  lui        $a1, %hi(D_80096DA0)
/* 1D028 8001C428 24A56DA0 */  addiu      $a1, $a1, %lo(D_80096DA0)
/* 1D02C 8001C42C 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D030 8001C430 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D034 8001C434 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D038 8001C438 0C01AE81 */  jal        func_8006BA04
/* 1D03C 8001C43C AFAC0010 */   sw        $t4, 0x10($sp)
/* 1D040 8001C440 10000005 */  b          .L8001C458
/* 1D044 8001C444 00000000 */   nop
.L8001C448:
/* 1D048 8001C448 3C058009 */  lui        $a1, %hi(D_80096DB0)
/* 1D04C 8001C44C 24A56DB0 */  addiu      $a1, $a1, %lo(D_80096DB0)
/* 1D050 8001C450 0C01AE81 */  jal        func_8006BA04
/* 1D054 8001C454 27A40038 */   addiu     $a0, $sp, 0x38
.L8001C458:
/* 1D058 8001C458 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D05C 8001C45C 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D060 8001C460 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D064 8001C464 0C007DE4 */  jal        func_8001F790
/* 1D068 8001C468 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D06C 8001C46C 240400FC */  addiu      $a0, $zero, 0xFC
/* 1D070 8001C470 0C007DAD */  jal        func_8001F6B4
/* 1D074 8001C474 24050060 */   addiu     $a1, $zero, 0x60
/* 1D078 8001C478 3C058009 */  lui        $a1, %hi(D_80096DBC)
/* 1D07C 8001C47C 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1D080 8001C480 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1D084 8001C484 24A56DBC */  addiu      $a1, $a1, %lo(D_80096DBC)
/* 1D088 8001C488 0C007DE4 */  jal        func_8001F790
/* 1D08C 8001C48C 27A40088 */   addiu     $a0, $sp, 0x88
/* 1D090 8001C490 24040114 */  addiu      $a0, $zero, 0x114
/* 1D094 8001C494 0C007DAD */  jal        func_8001F6B4
/* 1D098 8001C498 24050068 */   addiu     $a1, $zero, 0x68
/* 1D09C 8001C49C 8FAD0024 */  lw         $t5, 0x24($sp)
/* 1D0A0 8001C4A0 3C058009 */  lui        $a1, %hi(D_80096DC4)
/* 1D0A4 8001C4A4 24A56DC4 */  addiu      $a1, $a1, %lo(D_80096DC4)
/* 1D0A8 8001C4A8 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D0AC 8001C4AC 0C01AE81 */  jal        func_8006BA04
/* 1D0B0 8001C4B0 81A60004 */   lb        $a2, 0x4($t5)
/* 1D0B4 8001C4B4 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D0B8 8001C4B8 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D0BC 8001C4BC 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D0C0 8001C4C0 0C007DE4 */  jal        func_8001F790
/* 1D0C4 8001C4C4 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D0C8 8001C4C8 0C007DBD */  jal        func_8001F6F4
/* 1D0CC 8001C4CC 24040013 */   addiu     $a0, $zero, 0x13
/* 1D0D0 8001C4D0 2404001C */  addiu      $a0, $zero, 0x1C
/* 1D0D4 8001C4D4 0C007DAD */  jal        func_8001F6B4
/* 1D0D8 8001C4D8 24050076 */   addiu     $a1, $zero, 0x76
/* 1D0DC 8001C4DC 3C058009 */  lui        $a1, %hi(D_80096DC8)
/* 1D0E0 8001C4E0 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D0E4 8001C4E4 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D0E8 8001C4E8 24A56DC8 */  addiu      $a1, $a1, %lo(D_80096DC8)
/* 1D0EC 8001C4EC 0C007DE4 */  jal        func_8001F790
/* 1D0F0 8001C4F0 27A40088 */   addiu     $a0, $sp, 0x88
/* 1D0F4 8001C4F4 0C007DBD */  jal        func_8001F6F4
/* 1D0F8 8001C4F8 2404FFFF */   addiu     $a0, $zero, -0x1
/* 1D0FC 8001C4FC 2404008C */  addiu      $a0, $zero, 0x8C
/* 1D100 8001C500 0C007DAD */  jal        func_8001F6B4
/* 1D104 8001C504 24050076 */   addiu     $a1, $zero, 0x76
/* 1D108 8001C508 8FAE0024 */  lw         $t6, 0x24($sp)
/* 1D10C 8001C50C 8DC7000C */  lw         $a3, 0xC($t6)
/* 1D110 8001C510 10E0000E */  beqz       $a3, .L8001C54C
/* 1D114 8001C514 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D118 8001C518 27A5002C */  addiu      $a1, $sp, 0x2C
/* 1D11C 8001C51C 0C00588E */  jal        func_80016238
/* 1D120 8001C520 27A60028 */   addiu     $a2, $sp, 0x28
/* 1D124 8001C524 8FAF0028 */  lw         $t7, 0x28($sp)
/* 1D128 8001C528 3C058009 */  lui        $a1, %hi(D_80096DD0)
/* 1D12C 8001C52C 24A56DD0 */  addiu      $a1, $a1, %lo(D_80096DD0)
/* 1D130 8001C530 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D134 8001C534 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D138 8001C538 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D13C 8001C53C 0C01AE81 */  jal        func_8006BA04
/* 1D140 8001C540 AFAF0010 */   sw        $t7, 0x10($sp)
/* 1D144 8001C544 10000005 */  b          .L8001C55C
/* 1D148 8001C548 00000000 */   nop
.L8001C54C:
/* 1D14C 8001C54C 3C058009 */  lui        $a1, %hi(D_80096DE0)
/* 1D150 8001C550 24A56DE0 */  addiu      $a1, $a1, %lo(D_80096DE0)
/* 1D154 8001C554 0C01AE81 */  jal        func_8006BA04
/* 1D158 8001C558 27A40038 */   addiu     $a0, $sp, 0x38
.L8001C55C:
/* 1D15C 8001C55C 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D160 8001C560 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D164 8001C564 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D168 8001C568 0C007DE4 */  jal        func_8001F790
/* 1D16C 8001C56C 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D170 8001C570 2404008C */  addiu      $a0, $zero, 0x8C
/* 1D174 8001C574 0C007DAD */  jal        func_8001F6B4
/* 1D178 8001C578 24050084 */   addiu     $a1, $zero, 0x84
/* 1D17C 8001C57C 8FB80024 */  lw         $t8, 0x24($sp)
/* 1D180 8001C580 8F070010 */  lw         $a3, 0x10($t8)
/* 1D184 8001C584 10E0000E */  beqz       $a3, .L8001C5C0
/* 1D188 8001C588 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D18C 8001C58C 27A5002C */  addiu      $a1, $sp, 0x2C
/* 1D190 8001C590 0C00588E */  jal        func_80016238
/* 1D194 8001C594 27A60028 */   addiu     $a2, $sp, 0x28
/* 1D198 8001C598 8FB90028 */  lw         $t9, 0x28($sp)
/* 1D19C 8001C59C 3C058009 */  lui        $a1, %hi(D_80096DEC)
/* 1D1A0 8001C5A0 24A56DEC */  addiu      $a1, $a1, %lo(D_80096DEC)
/* 1D1A4 8001C5A4 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D1A8 8001C5A8 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D1AC 8001C5AC 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D1B0 8001C5B0 0C01AE81 */  jal        func_8006BA04
/* 1D1B4 8001C5B4 AFB90010 */   sw        $t9, 0x10($sp)
/* 1D1B8 8001C5B8 10000005 */  b          .L8001C5D0
/* 1D1BC 8001C5BC 00000000 */   nop
.L8001C5C0:
/* 1D1C0 8001C5C0 3C058009 */  lui        $a1, %hi(D_80096DFC)
/* 1D1C4 8001C5C4 24A56DFC */  addiu      $a1, $a1, %lo(D_80096DFC)
/* 1D1C8 8001C5C8 0C01AE81 */  jal        func_8006BA04
/* 1D1CC 8001C5CC 27A40038 */   addiu     $a0, $sp, 0x38
.L8001C5D0:
/* 1D1D0 8001C5D0 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D1D4 8001C5D4 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D1D8 8001C5D8 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D1DC 8001C5DC 0C007DE4 */  jal        func_8001F790
/* 1D1E0 8001C5E0 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D1E4 8001C5E4 2404008C */  addiu      $a0, $zero, 0x8C
/* 1D1E8 8001C5E8 0C007DAD */  jal        func_8001F6B4
/* 1D1EC 8001C5EC 24050092 */   addiu     $a1, $zero, 0x92
/* 1D1F0 8001C5F0 8FA80024 */  lw         $t0, 0x24($sp)
/* 1D1F4 8001C5F4 8D070014 */  lw         $a3, 0x14($t0)
/* 1D1F8 8001C5F8 10E0000E */  beqz       $a3, .L8001C634
/* 1D1FC 8001C5FC 27A40030 */   addiu     $a0, $sp, 0x30
/* 1D200 8001C600 27A5002C */  addiu      $a1, $sp, 0x2C
/* 1D204 8001C604 0C00588E */  jal        func_80016238
/* 1D208 8001C608 27A60028 */   addiu     $a2, $sp, 0x28
/* 1D20C 8001C60C 8FA90028 */  lw         $t1, 0x28($sp)
/* 1D210 8001C610 3C058009 */  lui        $a1, %hi(D_80096E08)
/* 1D214 8001C614 24A56E08 */  addiu      $a1, $a1, %lo(D_80096E08)
/* 1D218 8001C618 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D21C 8001C61C 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D220 8001C620 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D224 8001C624 0C01AE81 */  jal        func_8006BA04
/* 1D228 8001C628 AFA90010 */   sw        $t1, 0x10($sp)
/* 1D22C 8001C62C 10000005 */  b          .L8001C644
/* 1D230 8001C630 00000000 */   nop
.L8001C634:
/* 1D234 8001C634 3C058009 */  lui        $a1, %hi(D_80096E18)
/* 1D238 8001C638 24A56E18 */  addiu      $a1, $a1, %lo(D_80096E18)
/* 1D23C 8001C63C 0C01AE81 */  jal        func_8006BA04
/* 1D240 8001C640 27A40038 */   addiu     $a0, $sp, 0x38
.L8001C644:
/* 1D244 8001C644 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D248 8001C648 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D24C 8001C64C 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D250 8001C650 0C007DE4 */  jal        func_8001F790
/* 1D254 8001C654 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D258 8001C658 0C007DBD */  jal        func_8001F6F4
/* 1D25C 8001C65C 24040013 */   addiu     $a0, $zero, 0x13
/* 1D260 8001C660 2404001C */  addiu      $a0, $zero, 0x1C
/* 1D264 8001C664 0C007DAD */  jal        func_8001F6B4
/* 1D268 8001C668 240500A0 */   addiu     $a1, $zero, 0xA0
/* 1D26C 8001C66C 3C058009 */  lui        $a1, %hi(D_80096E24)
/* 1D270 8001C670 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D274 8001C674 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D278 8001C678 24A56E24 */  addiu      $a1, $a1, %lo(D_80096E24)
/* 1D27C 8001C67C 0C007DE4 */  jal        func_8001F790
/* 1D280 8001C680 27A40088 */   addiu     $a0, $sp, 0x88
/* 1D284 8001C684 0C007DBD */  jal        func_8001F6F4
/* 1D288 8001C688 2404FFFF */   addiu     $a0, $zero, -0x1
/* 1D28C 8001C68C 2404008C */  addiu      $a0, $zero, 0x8C
/* 1D290 8001C690 0C007DAD */  jal        func_8001F6B4
/* 1D294 8001C694 240500A0 */   addiu     $a1, $zero, 0xA0
/* 1D298 8001C698 8FAA0024 */  lw         $t2, 0x24($sp)
/* 1D29C 8001C69C 27A60028 */  addiu      $a2, $sp, 0x28
/* 1D2A0 8001C6A0 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D2A4 8001C6A4 8D470024 */  lw         $a3, 0x24($t2)
/* 1D2A8 8001C6A8 3C058009 */  lui        $a1, %hi(D_80096E3C)
/* 1D2AC 8001C6AC 10E0000E */  beqz       $a3, .L8001C6E8
/* 1D2B0 8001C6B0 00000000 */   nop
/* 1D2B4 8001C6B4 27A40030 */  addiu      $a0, $sp, 0x30
/* 1D2B8 8001C6B8 0C00588E */  jal        func_80016238
/* 1D2BC 8001C6BC 27A5002C */   addiu     $a1, $sp, 0x2C
/* 1D2C0 8001C6C0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 1D2C4 8001C6C4 3C058009 */  lui        $a1, %hi(D_80096E2C)
/* 1D2C8 8001C6C8 24A56E2C */  addiu      $a1, $a1, %lo(D_80096E2C)
/* 1D2CC 8001C6CC 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D2D0 8001C6D0 8FA60030 */  lw         $a2, 0x30($sp)
/* 1D2D4 8001C6D4 8FA7002C */  lw         $a3, 0x2C($sp)
/* 1D2D8 8001C6D8 0C01AE81 */  jal        func_8006BA04
/* 1D2DC 8001C6DC AFAB0010 */   sw        $t3, 0x10($sp)
/* 1D2E0 8001C6E0 10000003 */  b          .L8001C6F0
/* 1D2E4 8001C6E4 00000000 */   nop
.L8001C6E8:
/* 1D2E8 8001C6E8 0C01AE81 */  jal        func_8006BA04
/* 1D2EC 8001C6EC 24A56E3C */   addiu     $a1, $a1, %lo(D_80096E3C)
.L8001C6F0:
/* 1D2F0 8001C6F0 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D2F4 8001C6F4 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D2F8 8001C6F8 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D2FC 8001C6FC 0C007DE4 */  jal        func_8001F790
/* 1D300 8001C700 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D304 8001C704 24040114 */  addiu      $a0, $zero, 0x114
/* 1D308 8001C708 0C007DAD */  jal        func_8001F6B4
/* 1D30C 8001C70C 240500A0 */   addiu     $a1, $zero, 0xA0
/* 1D310 8001C710 8FAC0024 */  lw         $t4, 0x24($sp)
/* 1D314 8001C714 3C058009 */  lui        $a1, %hi(D_80096E48)
/* 1D318 8001C718 24A56E48 */  addiu      $a1, $a1, %lo(D_80096E48)
/* 1D31C 8001C71C 27A40038 */  addiu      $a0, $sp, 0x38
/* 1D320 8001C720 0C01AE81 */  jal        func_8006BA04
/* 1D324 8001C724 81860028 */   lb        $a2, 0x28($t4)
/* 1D328 8001C728 3C068009 */  lui        $a2, %hi(D_8008C31C)
/* 1D32C 8001C72C 24C6C31C */  addiu      $a2, $a2, %lo(D_8008C31C)
/* 1D330 8001C730 27A40088 */  addiu      $a0, $sp, 0x88
/* 1D334 8001C734 0C007DE4 */  jal        func_8001F790
/* 1D338 8001C738 27A50038 */   addiu     $a1, $sp, 0x38
/* 1D33C 8001C73C 8FAD0088 */  lw         $t5, 0x88($sp)
/* 1D340 8001C740 8FAE0090 */  lw         $t6, 0x90($sp)
/* 1D344 8001C744 ADCD0000 */  sw         $t5, 0x0($t6)
/* 1D348 8001C748 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1D34C 8001C74C 27BD0090 */  addiu      $sp, $sp, 0x90
/* 1D350 8001C750 03E00008 */  jr         $ra
/* 1D354 8001C754 00000000 */   nop
