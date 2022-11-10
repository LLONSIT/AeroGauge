glabel func_8000CFC4
/* DBC4 8000CFC4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DBC8 8000CFC8 AFBF001C */  sw         $ra, 0x1C($sp)
/* DBCC 8000CFCC AFB00018 */  sw         $s0, 0x18($sp)
/* DBD0 8000CFD0 948E0014 */  lhu        $t6, 0x14($a0)
/* DBD4 8000CFD4 44800000 */  mtc1       $zero, $f0
/* DBD8 8000CFD8 00808025 */  or         $s0, $a0, $zero
/* DBDC 8000CFDC 11C00007 */  beqz       $t6, .L8000CFFC
/* DBE0 8000CFE0 3C0F8014 */   lui       $t7, %hi(D_8013FD34)
/* DBE4 8000CFE4 44801000 */  mtc1       $zero, $f2
/* DBE8 8000CFE8 A4800014 */  sh         $zero, 0x14($a0)
/* DBEC 8000CFEC 3C018014 */  lui        $at, %hi(D_8013F7C8)
/* DBF0 8000CFF0 E422F7C8 */  swc1       $f2, %lo(D_8013F7C8)($at)
/* DBF4 8000CFF4 3C018014 */  lui        $at, %hi(D_8013F7CC)
/* DBF8 8000CFF8 E422F7CC */  swc1       $f2, %lo(D_8013F7CC)($at)
.L8000CFFC:
/* DBFC 8000CFFC 3C018014 */  lui        $at, %hi(D_8013F7C8)
/* DC00 8000D000 C422F7C8 */  lwc1       $f2, %lo(D_8013F7C8)($at)
/* DC04 8000D004 91EFFD34 */  lbu        $t7, %lo(D_8013FD34)($t7)
/* DC08 8000D008 3C018014 */  lui        $at, %hi(D_8013F7CC)
/* DC0C 8000D00C C42CF7CC */  lwc1       $f12, %lo(D_8013F7CC)($at)
/* DC10 8000D010 24010001 */  addiu      $at, $zero, 0x1
/* DC14 8000D014 15E1003A */  bne        $t7, $at, .L8000D100
/* DC18 8000D018 3C014060 */   lui       $at, (0x40600000 >> 16)
/* DC1C 8000D01C 44812000 */  mtc1       $at, $f4
/* DC20 8000D020 3C014248 */  lui        $at, (0x42480000 >> 16)
/* DC24 8000D024 44813000 */  mtc1       $at, $f6
/* DC28 8000D028 3C014000 */  lui        $at, (0x40000000 >> 16)
/* DC2C 8000D02C 44818800 */  mtc1       $at, $f17
/* DC30 8000D030 44808000 */  mtc1       $zero, $f16
/* DC34 8000D034 460012A1 */  cvt.d.s    $f10, $f2
/* DC38 8000D038 E6020028 */  swc1       $f2, 0x28($s0)
/* DC3C 8000D03C 46305481 */  sub.d      $f18, $f10, $f16
/* DC40 8000D040 E6000020 */  swc1       $f0, 0x20($s0)
/* DC44 8000D044 E600001C */  swc1       $f0, 0x1C($s0)
/* DC48 8000D048 460C3201 */  sub.s      $f8, $f6, $f12
/* DC4C 8000D04C E6000018 */  swc1       $f0, 0x18($s0)
/* DC50 8000D050 3C018014 */  lui        $at, %hi(D_8013F7C8)
/* DC54 8000D054 462090A0 */  cvt.s.d    $f2, $f18
/* DC58 8000D058 E6080024 */  swc1       $f8, 0x24($s0)
/* DC5C 8000D05C E604002C */  swc1       $f4, 0x2C($s0)
/* DC60 8000D060 4600103E */  c.le.s     $f2, $f0
/* DC64 8000D064 E422F7C8 */  swc1       $f2, %lo(D_8013F7C8)($at)
/* DC68 8000D068 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* DC6C 8000D06C 45000004 */  bc1f       .L8000D080
/* DC70 8000D070 00000000 */   nop
/* DC74 8000D074 44811000 */  mtc1       $at, $f2
/* DC78 8000D078 3C018014 */  lui        $at, %hi(D_8013F7C8)
/* DC7C 8000D07C E422F7C8 */  swc1       $f2, %lo(D_8013F7C8)($at)
.L8000D080:
/* DC80 8000D080 3C018009 */  lui        $at, %hi(D_80095418)
/* DC84 8000D084 D4265418 */  ldc1       $f6, %lo(D_80095418)($at)
/* DC88 8000D088 46006121 */  cvt.d.s    $f4, $f12
/* DC8C 8000D08C 3C018014 */  lui        $at, %hi(D_8013F7CC)
/* DC90 8000D090 46262200 */  add.d      $f8, $f4, $f6
/* DC94 8000D094 46204320 */  cvt.s.d    $f12, $f8
/* DC98 8000D098 4600603E */  c.le.s     $f12, $f0
/* DC9C 8000D09C E42CF7CC */  swc1       $f12, %lo(D_8013F7CC)($at)
/* DCA0 8000D0A0 3C018014 */  lui        $at, %hi(D_8013F7CC)
/* DCA4 8000D0A4 45020003 */  bc1fl      .L8000D0B4
/* DCA8 8000D0A8 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* DCAC 8000D0AC E420F7CC */  swc1       $f0, %lo(D_8013F7CC)($at)
/* DCB0 8000D0B0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L8000D0B4:
/* DCB4 8000D0B4 44815000 */  mtc1       $at, $f10
/* DCB8 8000D0B8 8E180004 */  lw         $t8, 0x4($s0)
/* DCBC 8000D0BC E60000A0 */  swc1       $f0, 0xA0($s0)
/* DCC0 8000D0C0 E60000A8 */  swc1       $f0, 0xA8($s0)
/* DCC4 8000D0C4 E60A00A4 */  swc1       $f10, 0xA4($s0)
/* DCC8 8000D0C8 8F010098 */  lw         $at, 0x98($t8)
/* DCCC 8000D0CC 02002025 */  or         $a0, $s0, $zero
/* DCD0 8000D0D0 AE010034 */  sw         $at, 0x34($s0)
/* DCD4 8000D0D4 8F08009C */  lw         $t0, 0x9C($t8)
/* DCD8 8000D0D8 AE080038 */  sw         $t0, 0x38($s0)
/* DCDC 8000D0DC 8F0100A0 */  lw         $at, 0xA0($t8)
/* DCE0 8000D0E0 0C0023B4 */  jal        func_80008ED0
/* DCE4 8000D0E4 AE01003C */   sw        $at, 0x3C($s0)
/* DCE8 8000D0E8 0C002423 */  jal        func_8000908C
/* DCEC 8000D0EC 02002025 */   or        $a0, $s0, $zero
/* DCF0 8000D0F0 0C0018C7 */  jal        func_8000631C
/* DCF4 8000D0F4 02002025 */   or        $a0, $s0, $zero
/* DCF8 8000D0F8 1000000F */  b          .L8000D138
/* DCFC 8000D0FC 8FBF001C */   lw        $ra, 0x1C($sp)
.L8000D100:
/* DD00 8000D100 8E090004 */  lw         $t1, 0x4($s0)
/* DD04 8000D104 02002025 */  or         $a0, $s0, $zero
/* DD08 8000D108 8D210098 */  lw         $at, 0x98($t1)
/* DD0C 8000D10C AE010034 */  sw         $at, 0x34($s0)
/* DD10 8000D110 8D2B009C */  lw         $t3, 0x9C($t1)
/* DD14 8000D114 AE0B0038 */  sw         $t3, 0x38($s0)
/* DD18 8000D118 8D2100A0 */  lw         $at, 0xA0($t1)
/* DD1C 8000D11C 0C00241C */  jal        func_80009070
/* DD20 8000D120 AE01003C */   sw        $at, 0x3C($s0)
/* DD24 8000D124 0C002423 */  jal        func_8000908C
/* DD28 8000D128 02002025 */   or        $a0, $s0, $zero
/* DD2C 8000D12C 0C0018C7 */  jal        func_8000631C
/* DD30 8000D130 02002025 */   or        $a0, $s0, $zero
/* DD34 8000D134 8FBF001C */  lw         $ra, 0x1C($sp)
.L8000D138:
/* DD38 8000D138 8FB00018 */  lw         $s0, 0x18($sp)
/* DD3C 8000D13C 27BD0020 */  addiu      $sp, $sp, 0x20
/* DD40 8000D140 03E00008 */  jr         $ra
/* DD44 8000D144 00000000 */   nop
