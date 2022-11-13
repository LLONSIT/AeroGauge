glabel func_8001B35C
/* 1BF5C 8001B35C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1BF60 8001B360 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1BF64 8001B364 AFB00020 */  sw         $s0, 0x20($sp)
/* 1BF68 8001B368 AFA40058 */  sw         $a0, 0x58($sp)
/* 1BF6C 8001B36C AFA60060 */  sw         $a2, 0x60($sp)
/* 1BF70 8001B370 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1BF74 8001B374 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1BF78 8001B378 3C0CB900 */  lui        $t4, (0xB900031D >> 16)
/* 1BF7C 8001B37C AFAF0054 */  sw         $t7, 0x54($sp)
/* 1BF80 8001B380 25F80008 */  addiu      $t8, $t7, 0x8
/* 1BF84 8001B384 AFB80054 */  sw         $t8, 0x54($sp)
/* 1BF88 8001B388 ADE00004 */  sw         $zero, 0x4($t7)
/* 1BF8C 8001B38C ADF90000 */  sw         $t9, 0x0($t7)
/* 1BF90 8001B390 8FAA0054 */  lw         $t2, 0x54($sp)
/* 1BF94 8001B394 3C0D0C08 */  lui        $t5, (0xC084000 >> 16)
/* 1BF98 8001B398 35AD4000 */  ori        $t5, $t5, (0xC084000 & 0xFFFF)
/* 1BF9C 8001B39C 254B0008 */  addiu      $t3, $t2, 0x8
/* 1BFA0 8001B3A0 AFAB0054 */  sw         $t3, 0x54($sp)
/* 1BFA4 8001B3A4 358C031D */  ori        $t4, $t4, (0xB900031D & 0xFFFF)
/* 1BFA8 8001B3A8 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1BFAC 8001B3AC AD4D0004 */  sw         $t5, 0x4($t2)
/* 1BFB0 8001B3B0 8FAE0054 */  lw         $t6, 0x54($sp)
/* 1BFB4 8001B3B4 3C19FF2F */  lui        $t9, (0xFF2FFFFF >> 16)
/* 1BFB8 8001B3B8 3C18FC11 */  lui        $t8, (0xFC119623 >> 16)
/* 1BFBC 8001B3BC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BFC0 8001B3C0 AFAF0054 */  sw         $t7, 0x54($sp)
/* 1BFC4 8001B3C4 37189623 */  ori        $t8, $t8, (0xFC119623 & 0xFFFF)
/* 1BFC8 8001B3C8 3739FFFF */  ori        $t9, $t9, (0xFF2FFFFF & 0xFFFF)
/* 1BFCC 8001B3CC ADD90004 */  sw         $t9, 0x4($t6)
/* 1BFD0 8001B3D0 ADD80000 */  sw         $t8, 0x0($t6)
/* 1BFD4 8001B3D4 8FAA0054 */  lw         $t2, 0x54($sp)
/* 1BFD8 8001B3D8 240DFFFF */  addiu      $t5, $zero, -0x1
/* 1BFDC 8001B3DC 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
/* 1BFE0 8001B3E0 254B0008 */  addiu      $t3, $t2, 0x8
/* 1BFE4 8001B3E4 AFAB0054 */  sw         $t3, 0x54($sp)
/* 1BFE8 8001B3E8 00A08025 */  or         $s0, $a1, $zero
/* 1BFEC 8001B3EC AD4D0004 */  sw         $t5, 0x4($t2)
/* 1BFF0 8001B3F0 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1BFF4 8001B3F4 8E07001C */  lw         $a3, 0x1C($s0)
/* 1BFF8 8001B3F8 9606000E */  lhu        $a2, 0xE($s0)
/* 1BFFC 8001B3FC 94A5000C */  lhu        $a1, 0xC($a1)
/* 1C000 8001B400 AFA00010 */  sw         $zero, 0x10($sp)
/* 1C004 8001B404 0C006743 */  jal        func_80019D0C
/* 1C008 8001B408 27A40054 */   addiu     $a0, $sp, 0x54
/* 1C00C 8001B40C C6040010 */  lwc1       $f4, 0x10($s0)
/* 1C010 8001B410 3C018009 */  lui        $at, %hi(D_80096CD8)
/* 1C014 8001B414 D4286CD8 */  ldc1       $f8, %lo(D_80096CD8)($at)
/* 1C018 8001B418 460021A1 */  cvt.d.s    $f6, $f4
/* 1C01C 8001B41C 3C014059 */  lui        $at, (0x40590000 >> 16)
/* 1C020 8001B420 46283282 */  mul.d      $f10, $f6, $f8
/* 1C024 8001B424 44818800 */  mtc1       $at, $f17
/* 1C028 8001B428 44808000 */  mtc1       $zero, $f16
/* 1C02C 8001B42C 960F000E */  lhu        $t7, 0xE($s0)
/* 1C030 8001B430 9605000C */  lhu        $a1, 0xC($s0)
/* 1C034 8001B434 27A40054 */  addiu      $a0, $sp, 0x54
/* 1C038 8001B438 24070006 */  addiu      $a3, $zero, 0x6
/* 1C03C 8001B43C 46305483 */  div.d      $f18, $f10, $f16
/* 1C040 8001B440 4620910D */  trunc.w.d  $f4, $f18
/* 1C044 8001B444 44022000 */  mfc1       $v0, $f4
/* 1C048 8001B448 00000000 */  nop
/* 1C04C 8001B44C 01E23023 */  subu       $a2, $t7, $v0
/* 1C050 8001B450 24C6002B */  addiu      $a2, $a2, 0x2B
/* 1C054 8001B454 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 1C058 8001B458 03003025 */  or         $a2, $t8, $zero
/* 1C05C 8001B45C 0C006A75 */  jal        func_8001A9D4
/* 1C060 8001B460 AFA20010 */   sw        $v0, 0x10($sp)
/* 1C064 8001B464 8FB90054 */  lw         $t9, 0x54($sp)
/* 1C068 8001B468 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 1C06C 8001B46C 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
/* 1C070 8001B470 272A0008 */  addiu      $t2, $t9, 0x8
/* 1C074 8001B474 AFAA0054 */  sw         $t2, 0x54($sp)
/* 1C078 8001B478 AF200004 */  sw         $zero, 0x4($t9)
/* 1C07C 8001B47C AF2B0000 */  sw         $t3, 0x0($t9)
/* 1C080 8001B480 8FAC0054 */  lw         $t4, 0x54($sp)
/* 1C084 8001B484 240FFFFF */  addiu      $t7, $zero, -0x1
/* 1C088 8001B488 3C0B0040 */  lui        $t3, (0x404340 >> 16)
/* 1C08C 8001B48C 258D0008 */  addiu      $t5, $t4, 0x8
/* 1C090 8001B490 AFAD0054 */  sw         $t5, 0x54($sp)
/* 1C094 8001B494 AD8F0004 */  sw         $t7, 0x4($t4)
/* 1C098 8001B498 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1C09C 8001B49C 8FB80054 */  lw         $t8, 0x54($sp)
/* 1C0A0 8001B4A0 3C0AB900 */  lui        $t2, (0xB900031D >> 16)
/* 1C0A4 8001B4A4 354A031D */  ori        $t2, $t2, (0xB900031D & 0xFFFF)
/* 1C0A8 8001B4A8 27190008 */  addiu      $t9, $t8, 0x8
/* 1C0AC 8001B4AC AFB90054 */  sw         $t9, 0x54($sp)
/* 1C0B0 8001B4B0 356B4340 */  ori        $t3, $t3, (0x404340 & 0xFFFF)
/* 1C0B4 8001B4B4 AF0B0004 */  sw         $t3, 0x4($t8)
/* 1C0B8 8001B4B8 AF0A0000 */  sw         $t2, 0x0($t8)
/* 1C0BC 8001B4BC 8E070014 */  lw         $a3, 0x14($s0)
/* 1C0C0 8001B4C0 96060006 */  lhu        $a2, 0x6($s0)
/* 1C0C4 8001B4C4 96050004 */  lhu        $a1, 0x4($s0)
/* 1C0C8 8001B4C8 AFA00010 */  sw         $zero, 0x10($sp)
/* 1C0CC 8001B4CC 0C006743 */  jal        func_80019D0C
/* 1C0D0 8001B4D0 27A40054 */   addiu     $a0, $sp, 0x54
/* 1C0D4 8001B4D4 8FAC0054 */  lw         $t4, 0x54($sp)
/* 1C0D8 8001B4D8 8FA90060 */  lw         $t1, 0x60($sp)
/* 1C0DC 8001B4DC 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 1C0E0 8001B4E0 258D0008 */  addiu      $t5, $t4, 0x8
/* 1C0E4 8001B4E4 AFAD0054 */  sw         $t5, 0x54($sp)
/* 1C0E8 8001B4E8 AD800004 */  sw         $zero, 0x4($t4)
/* 1C0EC 8001B4EC AD8E0000 */  sw         $t6, 0x0($t4)
/* 1C0F0 8001B4F0 8FAF0054 */  lw         $t7, 0x54($sp)
/* 1C0F4 8001B4F4 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1C0F8 8001B4F8 3C0A0040 */  lui        $t2, (0x404340 >> 16)
/* 1C0FC 8001B4FC 25F80008 */  addiu      $t8, $t7, 0x8
/* 1C100 8001B500 AFB80054 */  sw         $t8, 0x54($sp)
/* 1C104 8001B504 354A4340 */  ori        $t2, $t2, (0x404340 & 0xFFFF)
/* 1C108 8001B508 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1C10C 8001B50C ADF90000 */  sw         $t9, 0x0($t7)
/* 1C110 8001B510 ADEA0004 */  sw         $t2, 0x4($t7)
/* 1C114 8001B514 8FA80054 */  lw         $t0, 0x54($sp)
/* 1C118 8001B518 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1C11C 8001B51C 27A40054 */  addiu      $a0, $sp, 0x54
/* 1C120 8001B520 250C0008 */  addiu      $t4, $t0, 0x8
/* 1C124 8001B524 AFAC0054 */  sw         $t4, 0x54($sp)
/* 1C128 8001B528 AD0D0000 */  sw         $t5, 0x0($t0)
/* 1C12C 8001B52C 912A0001 */  lbu        $t2, 0x1($t1)
/* 1C130 8001B530 912F0000 */  lbu        $t7, 0x0($t1)
/* 1C134 8001B534 912E0002 */  lbu        $t6, 0x2($t1)
/* 1C138 8001B538 000A5C00 */  sll        $t3, $t2, 16
/* 1C13C 8001B53C 000FC600 */  sll        $t8, $t7, 24
/* 1C140 8001B540 030B6025 */  or         $t4, $t8, $t3
/* 1C144 8001B544 91380003 */  lbu        $t8, 0x3($t1)
/* 1C148 8001B548 000E7A00 */  sll        $t7, $t6, 8
/* 1C14C 8001B54C 018FC825 */  or         $t9, $t4, $t7
/* 1C150 8001B550 03385825 */  or         $t3, $t9, $t8
/* 1C154 8001B554 AD0B0004 */  sw         $t3, 0x4($t0)
/* 1C158 8001B558 8E070018 */  lw         $a3, 0x18($s0)
/* 1C15C 8001B55C 9606000A */  lhu        $a2, 0xA($s0)
/* 1C160 8001B560 96050008 */  lhu        $a1, 0x8($s0)
/* 1C164 8001B564 0C006743 */  jal        func_80019D0C
/* 1C168 8001B568 AFA00010 */   sw        $zero, 0x10($sp)
/* 1C16C 8001B56C 8FAD0054 */  lw         $t5, 0x54($sp)
/* 1C170 8001B570 8FAE0058 */  lw         $t6, 0x58($sp)
/* 1C174 8001B574 ADCD0000 */  sw         $t5, 0x0($t6)
/* 1C178 8001B578 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1C17C 8001B57C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1C180 8001B580 27BD0058 */  addiu      $sp, $sp, 0x58
/* 1C184 8001B584 03E00008 */  jr         $ra
/* 1C188 8001B588 00000000 */   nop
