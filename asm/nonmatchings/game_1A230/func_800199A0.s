glabel func_800199A0
/* 1A5A0 800199A0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1A5A4 800199A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1A5A8 800199A8 AFA40058 */  sw         $a0, 0x58($sp)
/* 1A5AC 800199AC 3C078014 */  lui        $a3, %hi(D_8013FC94)
/* 1A5B0 800199B0 8CE7FC94 */  lw         $a3, %lo(D_8013FC94)($a3)
/* 1A5B4 800199B4 27A40050 */  addiu      $a0, $sp, 0x50
/* 1A5B8 800199B8 27A5004C */  addiu      $a1, $sp, 0x4C
/* 1A5BC 800199BC 0C00588E */  jal        func_80016238
/* 1A5C0 800199C0 27A60048 */   addiu     $a2, $sp, 0x48
/* 1A5C4 800199C4 3C0E8014 */  lui        $t6, %hi(D_8013FC8C)
/* 1A5C8 800199C8 95CEFC8C */  lhu        $t6, %lo(D_8013FC8C)($t6)
/* 1A5CC 800199CC 240400FF */  addiu      $a0, $zero, 0xFF
/* 1A5D0 800199D0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1A5D4 800199D4 31CF0001 */  andi       $t7, $t6, 0x1
/* 1A5D8 800199D8 11E00008 */  beqz       $t7, .L800199FC
/* 1A5DC 800199DC 240600FF */   addiu     $a2, $zero, 0xFF
/* 1A5E0 800199E0 240400B5 */  addiu      $a0, $zero, 0xB5
/* 1A5E4 800199E4 24050060 */  addiu      $a1, $zero, 0x60
/* 1A5E8 800199E8 24060014 */  addiu      $a2, $zero, 0x14
/* 1A5EC 800199EC 0C007DD7 */  jal        func_8001F75C
/* 1A5F0 800199F0 240700FF */   addiu     $a3, $zero, 0xFF
/* 1A5F4 800199F4 10000004 */  b          .L80019A08
/* 1A5F8 800199F8 8FB80058 */   lw        $t8, 0x58($sp)
.L800199FC:
/* 1A5FC 800199FC 0C007DD7 */  jal        func_8001F75C
/* 1A600 80019A00 240700FF */   addiu     $a3, $zero, 0xFF
/* 1A604 80019A04 8FB80058 */  lw         $t8, 0x58($sp)
.L80019A08:
/* 1A608 80019A08 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 1A60C 80019A0C 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1A610 80019A10 8F190000 */  lw         $t9, 0x0($t8)
/* 1A614 80019A14 240EFFFF */  addiu      $t6, $zero, -0x1
/* 1A618 80019A18 3C088014 */  lui        $t0, %hi(D_8013FBD8)
/* 1A61C 80019A1C AFB90054 */  sw         $t9, 0x54($sp)
/* 1A620 80019A20 27290008 */  addiu      $t1, $t9, 0x8
/* 1A624 80019A24 AFA90054 */  sw         $t1, 0x54($sp)
/* 1A628 80019A28 AF200004 */  sw         $zero, 0x4($t9)
/* 1A62C 80019A2C AF2A0000 */  sw         $t2, 0x0($t9)
/* 1A630 80019A30 8FAB0054 */  lw         $t3, 0x54($sp)
/* 1A634 80019A34 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1A638 80019A38 3C090050 */  lui        $t1, (0x504240 >> 16)
/* 1A63C 80019A3C 256C0008 */  addiu      $t4, $t3, 0x8
/* 1A640 80019A40 AFAC0054 */  sw         $t4, 0x54($sp)
/* 1A644 80019A44 AD6E0004 */  sw         $t6, 0x4($t3)
/* 1A648 80019A48 AD6D0000 */  sw         $t5, 0x0($t3)
/* 1A64C 80019A4C 8FAF0054 */  lw         $t7, 0x54($sp)
/* 1A650 80019A50 35294240 */  ori        $t1, $t1, (0x504240 & 0xFFFF)
/* 1A654 80019A54 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1A658 80019A58 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A65C 80019A5C AFB80054 */  sw         $t8, 0x54($sp)
/* 1A660 80019A60 2508FBD8 */  addiu      $t0, $t0, %lo(D_8013FBD8)
/* 1A664 80019A64 ADE90004 */  sw         $t1, 0x4($t7)
/* 1A668 80019A68 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A66C 80019A6C 95050004 */  lhu        $a1, 0x4($t0)
/* 1A670 80019A70 0C007DAD */  jal        osSetTime
/* 1A674 80019A74 95040002 */   lhu       $a0, 0x2($t0)
/* 1A678 80019A78 3C088014 */  lui        $t0, %hi(D_8013FBD8)
/* 1A67C 80019A7C 2508FBD8 */  addiu      $t0, $t0, %lo(D_8013FBD8)
/* 1A680 80019A80 91020000 */  lbu        $v0, 0x0($t0)
/* 1A684 80019A84 3C058009 */  lui        $a1, %hi(D_80096BE4)
/* 1A688 80019A88 24A56BE4 */  addiu      $a1, $a1, %lo(D_80096BE4)
/* 1A68C 80019A8C 10400006 */  beqz       $v0, .L80019AA8
/* 1A690 80019A90 27A4003C */   addiu     $a0, $sp, 0x3C
/* 1A694 80019A94 24010001 */  addiu      $at, $zero, 0x1
/* 1A698 80019A98 1041001F */  beq        $v0, $at, .L80019B18
/* 1A69C 80019A9C 27A4003C */   addiu     $a0, $sp, 0x3C
/* 1A6A0 80019AA0 10000035 */  b          .L80019B78
/* 1A6A4 80019AA4 8FAD0054 */   lw        $t5, 0x54($sp)
.L80019AA8:
/* 1A6A8 80019AA8 8FAA0048 */  lw         $t2, 0x48($sp)
/* 1A6AC 80019AAC 8FA60050 */  lw         $a2, 0x50($sp)
/* 1A6B0 80019AB0 8FA7004C */  lw         $a3, 0x4C($sp)
/* 1A6B4 80019AB4 0C01AE81 */  jal        sprintf
/* 1A6B8 80019AB8 AFAA0010 */   sw        $t2, 0x10($sp)
/* 1A6BC 80019ABC 3C068009 */  lui        $a2, %hi(D_8008C8CC)
/* 1A6C0 80019AC0 24C6C8CC */  addiu      $a2, $a2, %lo(D_8008C8CC)
/* 1A6C4 80019AC4 27A40054 */  addiu      $a0, $sp, 0x54
/* 1A6C8 80019AC8 0C007DE4 */  jal        func_8001F790
/* 1A6CC 80019ACC 27A5003C */   addiu     $a1, $sp, 0x3C
/* 1A6D0 80019AD0 3C088014 */  lui        $t0, %hi(D_8013FBD8)
/* 1A6D4 80019AD4 2508FBD8 */  addiu      $t0, $t0, %lo(D_8013FBD8)
/* 1A6D8 80019AD8 8D070008 */  lw         $a3, 0x8($t0)
/* 1A6DC 80019ADC 27A40054 */  addiu      $a0, $sp, 0x54
/* 1A6E0 80019AE0 50E00025 */  beql       $a3, $zero, .L80019B78
/* 1A6E4 80019AE4 8FAD0054 */   lw        $t5, 0x54($sp)
/* 1A6E8 80019AE8 95050002 */  lhu        $a1, 0x2($t0)
/* 1A6EC 80019AEC 95060004 */  lhu        $a2, 0x4($t0)
/* 1A6F0 80019AF0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A6F4 80019AF4 24A5FFC1 */  addiu      $a1, $a1, -0x3F
/* 1A6F8 80019AF8 24C60007 */  addiu      $a2, $a2, 0x7
/* 1A6FC 80019AFC 30CCFFFF */  andi       $t4, $a2, 0xFFFF
/* 1A700 80019B00 30ABFFFF */  andi       $t3, $a1, 0xFFFF
/* 1A704 80019B04 01602825 */  or         $a1, $t3, $zero
/* 1A708 80019B08 0C006743 */  jal        func_80019D0C
/* 1A70C 80019B0C 01803025 */   or        $a2, $t4, $zero
/* 1A710 80019B10 10000019 */  b          .L80019B78
/* 1A714 80019B14 8FAD0054 */   lw        $t5, 0x54($sp)
.L80019B18:
/* 1A718 80019B18 3C058009 */  lui        $a1, %hi(D_80096BF4)
/* 1A71C 80019B1C 24A56BF4 */  addiu      $a1, $a1, %lo(D_80096BF4)
/* 1A720 80019B20 8FA60050 */  lw         $a2, 0x50($sp)
/* 1A724 80019B24 0C01AE81 */  jal        sprintf
/* 1A728 80019B28 8FA7004C */   lw        $a3, 0x4C($sp)
/* 1A72C 80019B2C 3C068009 */  lui        $a2, %hi(D_8008C8CC)
/* 1A730 80019B30 24C6C8CC */  addiu      $a2, $a2, %lo(D_8008C8CC)
/* 1A734 80019B34 27A40054 */  addiu      $a0, $sp, 0x54
/* 1A738 80019B38 0C007DE4 */  jal        func_8001F790
/* 1A73C 80019B3C 27A5003C */   addiu     $a1, $sp, 0x3C
/* 1A740 80019B40 00002025 */  or         $a0, $zero, $zero
/* 1A744 80019B44 0C007DB2 */  jal        func_8001F6C8
/* 1A748 80019B48 24050008 */   addiu     $a1, $zero, 0x8
/* 1A74C 80019B4C 3C058009 */  lui        $a1, %hi(D_80096C00)
/* 1A750 80019B50 24A56C00 */  addiu      $a1, $a1, %lo(D_80096C00)
/* 1A754 80019B54 27A40034 */  addiu      $a0, $sp, 0x34
/* 1A758 80019B58 0C01AE81 */  jal        sprintf
/* 1A75C 80019B5C 8FA60048 */   lw        $a2, 0x48($sp)
/* 1A760 80019B60 3C068009 */  lui        $a2, %hi(D_8008C8D4)
/* 1A764 80019B64 24C6C8D4 */  addiu      $a2, $a2, %lo(D_8008C8D4)
/* 1A768 80019B68 27A40054 */  addiu      $a0, $sp, 0x54
/* 1A76C 80019B6C 0C007DE4 */  jal        func_8001F790
/* 1A770 80019B70 27A50034 */   addiu     $a1, $sp, 0x34
/* 1A774 80019B74 8FAD0054 */  lw         $t5, 0x54($sp)
.L80019B78:
/* 1A778 80019B78 8FAE0058 */  lw         $t6, 0x58($sp)
/* 1A77C 80019B7C ADCD0000 */  sw         $t5, 0x0($t6)
/* 1A780 80019B80 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1A784 80019B84 27BD0058 */  addiu      $sp, $sp, 0x58
/* 1A788 80019B88 03E00008 */  jr         $ra
/* 1A78C 80019B8C 00000000 */   nop
