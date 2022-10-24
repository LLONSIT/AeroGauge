.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000CE40
/* DA40 8000CE40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DA44 8000CE44 AFBF001C */  sw         $ra, 0x1C($sp)
/* DA48 8000CE48 AFB00018 */  sw         $s0, 0x18($sp)
/* DA4C 8000CE4C 948E0014 */  lhu        $t6, 0x14($a0)
/* DA50 8000CE50 44800000 */  mtc1       $zero, $f0
/* DA54 8000CE54 00808025 */  or         $s0, $a0, $zero
/* DA58 8000CE58 11C00007 */  beqz       $t6, .L8000CE78
/* DA5C 8000CE5C 3C0F8014 */   lui       $t7, %hi(D_8013FCE0)
/* DA60 8000CE60 44801000 */  mtc1       $zero, $f2
/* DA64 8000CE64 A4800014 */  sh         $zero, 0x14($a0)
/* DA68 8000CE68 3C018014 */  lui        $at, %hi(D_8013F7C0)
/* DA6C 8000CE6C E422F7C0 */  swc1       $f2, %lo(D_8013F7C0)($at)
/* DA70 8000CE70 3C018014 */  lui        $at, %hi(D_8013F7C4)
/* DA74 8000CE74 E422F7C4 */  swc1       $f2, %lo(D_8013F7C4)($at)
.L8000CE78:
/* DA78 8000CE78 3C018014 */  lui        $at, %hi(D_8013F7C0)
/* DA7C 8000CE7C C422F7C0 */  lwc1       $f2, %lo(D_8013F7C0)($at)
/* DA80 8000CE80 91EFFCE0 */  lbu        $t7, %lo(D_8013FCE0)($t7)
/* DA84 8000CE84 3C018014 */  lui        $at, %hi(D_8013F7C4)
/* DA88 8000CE88 C42CF7C4 */  lwc1       $f12, %lo(D_8013F7C4)($at)
/* DA8C 8000CE8C 24010001 */  addiu      $at, $zero, 0x1
/* DA90 8000CE90 15E1003A */  bne        $t7, $at, .L8000CF7C
/* DA94 8000CE94 3C014060 */   lui       $at, (0x40600000 >> 16)
/* DA98 8000CE98 44812000 */  mtc1       $at, $f4
/* DA9C 8000CE9C 3C014248 */  lui        $at, (0x42480000 >> 16)
/* DAA0 8000CEA0 44813000 */  mtc1       $at, $f6
/* DAA4 8000CEA4 3C014000 */  lui        $at, (0x40000000 >> 16)
/* DAA8 8000CEA8 44818800 */  mtc1       $at, $f17
/* DAAC 8000CEAC 44808000 */  mtc1       $zero, $f16
/* DAB0 8000CEB0 460012A1 */  cvt.d.s    $f10, $f2
/* DAB4 8000CEB4 E6020028 */  swc1       $f2, 0x28($s0)
/* DAB8 8000CEB8 46305481 */  sub.d      $f18, $f10, $f16
/* DABC 8000CEBC E6000020 */  swc1       $f0, 0x20($s0)
/* DAC0 8000CEC0 E600001C */  swc1       $f0, 0x1C($s0)
/* DAC4 8000CEC4 460C3201 */  sub.s      $f8, $f6, $f12
/* DAC8 8000CEC8 E6000018 */  swc1       $f0, 0x18($s0)
/* DACC 8000CECC 3C018014 */  lui        $at, %hi(D_8013F7C0)
/* DAD0 8000CED0 462090A0 */  cvt.s.d    $f2, $f18
/* DAD4 8000CED4 E6080024 */  swc1       $f8, 0x24($s0)
/* DAD8 8000CED8 E604002C */  swc1       $f4, 0x2C($s0)
/* DADC 8000CEDC 4600103E */  c.le.s     $f2, $f0
/* DAE0 8000CEE0 E422F7C0 */  swc1       $f2, %lo(D_8013F7C0)($at)
/* DAE4 8000CEE4 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* DAE8 8000CEE8 45000004 */  bc1f       .L8000CEFC
/* DAEC 8000CEEC 00000000 */   nop
/* DAF0 8000CEF0 44811000 */  mtc1       $at, $f2
/* DAF4 8000CEF4 3C018014 */  lui        $at, %hi(D_8013F7C0)
/* DAF8 8000CEF8 E422F7C0 */  swc1       $f2, %lo(D_8013F7C0)($at)
.L8000CEFC:
/* DAFC 8000CEFC 3C018009 */  lui        $at, %hi(D_80095410)
/* DB00 8000CF00 D4265410 */  ldc1       $f6, %lo(D_80095410)($at)
/* DB04 8000CF04 46006121 */  cvt.d.s    $f4, $f12
/* DB08 8000CF08 3C018014 */  lui        $at, %hi(D_8013F7C4)
/* DB0C 8000CF0C 46262200 */  add.d      $f8, $f4, $f6
/* DB10 8000CF10 46204320 */  cvt.s.d    $f12, $f8
/* DB14 8000CF14 4600603E */  c.le.s     $f12, $f0
/* DB18 8000CF18 E42CF7C4 */  swc1       $f12, %lo(D_8013F7C4)($at)
/* DB1C 8000CF1C 3C018014 */  lui        $at, %hi(D_8013F7C4)
/* DB20 8000CF20 45020003 */  bc1fl      .L8000CF30
/* DB24 8000CF24 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* DB28 8000CF28 E420F7C4 */  swc1       $f0, %lo(D_8013F7C4)($at)
/* DB2C 8000CF2C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L8000CF30:
/* DB30 8000CF30 44815000 */  mtc1       $at, $f10
/* DB34 8000CF34 8E180004 */  lw         $t8, 0x4($s0)
/* DB38 8000CF38 E60000A0 */  swc1       $f0, 0xA0($s0)
/* DB3C 8000CF3C E60000A8 */  swc1       $f0, 0xA8($s0)
/* DB40 8000CF40 E60A00A4 */  swc1       $f10, 0xA4($s0)
/* DB44 8000CF44 8F010098 */  lw         $at, 0x98($t8)
/* DB48 8000CF48 02002025 */  or         $a0, $s0, $zero
/* DB4C 8000CF4C AE010034 */  sw         $at, 0x34($s0)
/* DB50 8000CF50 8F08009C */  lw         $t0, 0x9C($t8)
/* DB54 8000CF54 AE080038 */  sw         $t0, 0x38($s0)
/* DB58 8000CF58 8F0100A0 */  lw         $at, 0xA0($t8)
/* DB5C 8000CF5C 0C0023B4 */  jal        func_80008ED0
/* DB60 8000CF60 AE01003C */   sw        $at, 0x3C($s0)
/* DB64 8000CF64 0C002423 */  jal        func_8000908C
/* DB68 8000CF68 02002025 */   or        $a0, $s0, $zero
/* DB6C 8000CF6C 0C0018C7 */  jal        func_8000631C
/* DB70 8000CF70 02002025 */   or        $a0, $s0, $zero
/* DB74 8000CF74 1000000F */  b          .L8000CFB4
/* DB78 8000CF78 8FBF001C */   lw        $ra, 0x1C($sp)
.L8000CF7C:
/* DB7C 8000CF7C 8E090004 */  lw         $t1, 0x4($s0)
/* DB80 8000CF80 02002025 */  or         $a0, $s0, $zero
/* DB84 8000CF84 8D210098 */  lw         $at, 0x98($t1)
/* DB88 8000CF88 AE010034 */  sw         $at, 0x34($s0)
/* DB8C 8000CF8C 8D2B009C */  lw         $t3, 0x9C($t1)
/* DB90 8000CF90 AE0B0038 */  sw         $t3, 0x38($s0)
/* DB94 8000CF94 8D2100A0 */  lw         $at, 0xA0($t1)
/* DB98 8000CF98 0C00241C */  jal        func_80009070
/* DB9C 8000CF9C AE01003C */   sw        $at, 0x3C($s0)
/* DBA0 8000CFA0 0C002423 */  jal        func_8000908C
/* DBA4 8000CFA4 02002025 */   or        $a0, $s0, $zero
/* DBA8 8000CFA8 0C0018C7 */  jal        func_8000631C
/* DBAC 8000CFAC 02002025 */   or        $a0, $s0, $zero
/* DBB0 8000CFB0 8FBF001C */  lw         $ra, 0x1C($sp)
.L8000CFB4:
/* DBB4 8000CFB4 8FB00018 */  lw         $s0, 0x18($sp)
/* DBB8 8000CFB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* DBBC 8000CFBC 03E00008 */  jr         $ra
/* DBC0 8000CFC0 00000000 */   nop

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

glabel func_8000D148
/* DD48 8000D148 3C0E8014 */  lui        $t6, %hi(D_8013FFB8)
/* DD4C 8000D14C 91CEFFB8 */  lbu        $t6, %lo(D_8013FFB8)($t6)
/* DD50 8000D150 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DD54 8000D154 24010001 */  addiu      $at, $zero, 0x1
/* DD58 8000D158 15C10005 */  bne        $t6, $at, .L8000D170
/* DD5C 8000D15C AFBF0014 */   sw        $ra, 0x14($sp)
/* DD60 8000D160 0C0034AE */  jal        func_8000D2B8
/* DD64 8000D164 00000000 */   nop
/* DD68 8000D168 10000004 */  b          .L8000D17C
/* DD6C 8000D16C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8000D170:
/* DD70 8000D170 0C003462 */  jal        func_8000D188
/* DD74 8000D174 00000000 */   nop
/* DD78 8000D178 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000D17C:
/* DD7C 8000D17C 27BD0018 */  addiu      $sp, $sp, 0x18
/* DD80 8000D180 03E00008 */  jr         $ra
/* DD84 8000D184 00000000 */   nop

glabel func_8000D188
/* DD88 8000D188 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DD8C 8000D18C AFBF0014 */  sw         $ra, 0x14($sp)
/* DD90 8000D190 948E0014 */  lhu        $t6, 0x14($a0)
/* DD94 8000D194 44808000 */  mtc1       $zero, $f16
/* DD98 8000D198 11C00007 */  beqz       $t6, .L8000D1B8
/* DD9C 8000D19C 00000000 */   nop
/* DDA0 8000D1A0 44801000 */  mtc1       $zero, $f2
/* DDA4 8000D1A4 A4800014 */  sh         $zero, 0x14($a0)
/* DDA8 8000D1A8 3C018014 */  lui        $at, %hi(D_8013F7D0)
/* DDAC 8000D1AC E422F7D0 */  swc1       $f2, %lo(D_8013F7D0)($at)
/* DDB0 8000D1B0 3C018014 */  lui        $at, %hi(D_8013F7D4)
/* DDB4 8000D1B4 E422F7D4 */  swc1       $f2, %lo(D_8013F7D4)($at)
.L8000D1B8:
/* DDB8 8000D1B8 3C018014 */  lui        $at, %hi(D_8013F7D0)
/* DDBC 8000D1BC C422F7D0 */  lwc1       $f2, %lo(D_8013F7D0)($at)
/* DDC0 8000D1C0 3C018014 */  lui        $at, %hi(D_8013F7D4)
/* DDC4 8000D1C4 C42CF7D4 */  lwc1       $f12, %lo(D_8013F7D4)($at)
/* DDC8 8000D1C8 3C014060 */  lui        $at, (0x40600000 >> 16)
/* DDCC 8000D1CC 44812000 */  mtc1       $at, $f4
/* DDD0 8000D1D0 3C014248 */  lui        $at, (0x42480000 >> 16)
/* DDD4 8000D1D4 44813000 */  mtc1       $at, $f6
/* DDD8 8000D1D8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* DDDC 8000D1DC 44818800 */  mtc1       $at, $f17
/* DDE0 8000D1E0 460012A1 */  cvt.d.s    $f10, $f2
/* DDE4 8000D1E4 E4820028 */  swc1       $f2, 0x28($a0)
/* DDE8 8000D1E8 46305481 */  sub.d      $f18, $f10, $f16
/* DDEC 8000D1EC 44800000 */  mtc1       $zero, $f0
/* DDF0 8000D1F0 3C018014 */  lui        $at, %hi(D_8013F7D0)
/* DDF4 8000D1F4 460C3201 */  sub.s      $f8, $f6, $f12
/* DDF8 8000D1F8 E484002C */  swc1       $f4, 0x2C($a0)
/* DDFC 8000D1FC E4800020 */  swc1       $f0, 0x20($a0)
/* DE00 8000D200 462090A0 */  cvt.s.d    $f2, $f18
/* DE04 8000D204 E4880024 */  swc1       $f8, 0x24($a0)
/* DE08 8000D208 E480001C */  swc1       $f0, 0x1C($a0)
/* DE0C 8000D20C E4800018 */  swc1       $f0, 0x18($a0)
/* DE10 8000D210 4600103E */  c.le.s     $f2, $f0
/* DE14 8000D214 E422F7D0 */  swc1       $f2, %lo(D_8013F7D0)($at)
/* DE18 8000D218 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* DE1C 8000D21C 45000004 */  bc1f       .L8000D230
/* DE20 8000D220 00000000 */   nop
/* DE24 8000D224 44811000 */  mtc1       $at, $f2
/* DE28 8000D228 3C018014 */  lui        $at, %hi(D_8013F7D0)
/* DE2C 8000D22C E422F7D0 */  swc1       $f2, %lo(D_8013F7D0)($at)
.L8000D230:
/* DE30 8000D230 3C018009 */  lui        $at, %hi(D_80095420)
/* DE34 8000D234 D4265420 */  ldc1       $f6, %lo(D_80095420)($at)
/* DE38 8000D238 46006121 */  cvt.d.s    $f4, $f12
/* DE3C 8000D23C 3C018014 */  lui        $at, %hi(D_8013F7D4)
/* DE40 8000D240 46262200 */  add.d      $f8, $f4, $f6
/* DE44 8000D244 46204320 */  cvt.s.d    $f12, $f8
/* DE48 8000D248 4600603E */  c.le.s     $f12, $f0
/* DE4C 8000D24C E42CF7D4 */  swc1       $f12, %lo(D_8013F7D4)($at)
/* DE50 8000D250 3C018014 */  lui        $at, %hi(D_8013F7D4)
/* DE54 8000D254 45020003 */  bc1fl      .L8000D264
/* DE58 8000D258 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* DE5C 8000D25C E420F7D4 */  swc1       $f0, %lo(D_8013F7D4)($at)
/* DE60 8000D260 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L8000D264:
/* DE64 8000D264 44815000 */  mtc1       $at, $f10
/* DE68 8000D268 8C8F0004 */  lw         $t7, 0x4($a0)
/* DE6C 8000D26C E48000A0 */  swc1       $f0, 0xA0($a0)
/* DE70 8000D270 E48000A8 */  swc1       $f0, 0xA8($a0)
/* DE74 8000D274 E48A00A4 */  swc1       $f10, 0xA4($a0)
/* DE78 8000D278 8DE10098 */  lw         $at, 0x98($t7)
/* DE7C 8000D27C AC810034 */  sw         $at, 0x34($a0)
/* DE80 8000D280 8DF9009C */  lw         $t9, 0x9C($t7)
/* DE84 8000D284 AC990038 */  sw         $t9, 0x38($a0)
/* DE88 8000D288 8DE100A0 */  lw         $at, 0xA0($t7)
/* DE8C 8000D28C AC81003C */  sw         $at, 0x3C($a0)
/* DE90 8000D290 0C0023B4 */  jal        func_80008ED0
/* DE94 8000D294 AFA40018 */   sw        $a0, 0x18($sp)
/* DE98 8000D298 0C002423 */  jal        func_8000908C
/* DE9C 8000D29C 8FA40018 */   lw        $a0, 0x18($sp)
/* DEA0 8000D2A0 0C0018C7 */  jal        func_8000631C
/* DEA4 8000D2A4 8FA40018 */   lw        $a0, 0x18($sp)
/* DEA8 8000D2A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* DEAC 8000D2AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* DEB0 8000D2B0 03E00008 */  jr         $ra
/* DEB4 8000D2B4 00000000 */   nop

glabel func_8000D2B8
/* DEB8 8000D2B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DEBC 8000D2BC AFBF0014 */  sw         $ra, 0x14($sp)
/* DEC0 8000D2C0 948E0014 */  lhu        $t6, 0x14($a0)
/* DEC4 8000D2C4 3C058009 */  lui        $a1, %hi(D_80095400)
/* DEC8 8000D2C8 00803825 */  or         $a3, $a0, $zero
/* DECC 8000D2CC 11C0000B */  beqz       $t6, .L8000D2FC
/* DED0 8000D2D0 24A55400 */   addiu     $a1, $a1, %lo(D_80095400)
/* DED4 8000D2D4 44800000 */  mtc1       $zero, $f0
/* DED8 8000D2D8 A4800014 */  sh         $zero, 0x14($a0)
/* DEDC 8000D2DC 3C018014 */  lui        $at, %hi(D_8013F7D8)
/* DEE0 8000D2E0 E420F7D8 */  swc1       $f0, %lo(D_8013F7D8)($at)
/* DEE4 8000D2E4 3C018014 */  lui        $at, %hi(D_8013F7DC)
/* DEE8 8000D2E8 E420F7DC */  swc1       $f0, %lo(D_8013F7DC)($at)
/* DEEC 8000D2EC 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* DEF0 8000D2F0 44812000 */  mtc1       $at, $f4
/* DEF4 8000D2F4 3C018008 */  lui        $at, %hi(D_80082110)
/* DEF8 8000D2F8 E4242110 */  swc1       $f4, %lo(D_80082110)($at)
.L8000D2FC:
/* DEFC 8000D2FC 24E400A0 */  addiu      $a0, $a3, 0xA0
/* DF00 8000D300 24060001 */  addiu      $a2, $zero, 0x1
/* DF04 8000D304 0C0094F0 */  jal        func_800253C0
/* DF08 8000D308 AFA70018 */   sw        $a3, 0x18($sp)
/* DF0C 8000D30C 8FA70018 */  lw         $a3, 0x18($sp)
/* DF10 8000D310 3C038014 */  lui        $v1, %hi(D_8013FF9B)
/* DF14 8000D314 24010001 */  addiu      $at, $zero, 0x1
/* DF18 8000D318 8CE20004 */  lw         $v0, 0x4($a3)
/* DF1C 8000D31C 00E02025 */  or         $a0, $a3, $zero
/* DF20 8000D320 C4460098 */  lwc1       $f6, 0x98($v0)
/* DF24 8000D324 E4E60094 */  swc1       $f6, 0x94($a3)
/* DF28 8000D328 C448009C */  lwc1       $f8, 0x9C($v0)
/* DF2C 8000D32C E4E80098 */  swc1       $f8, 0x98($a3)
/* DF30 8000D330 C44A00A0 */  lwc1       $f10, 0xA0($v0)
/* DF34 8000D334 3C028014 */  lui        $v0, %hi(D_8013FFF2)
/* DF38 8000D338 E4EA009C */  swc1       $f10, 0x9C($a3)
/* DF3C 8000D33C 8063FF9B */  lb         $v1, %lo(D_8013FF9B)($v1)
/* DF40 8000D340 14600024 */  bnez       $v1, .L8000D3D4
/* DF44 8000D344 00000000 */   nop
/* DF48 8000D348 9442FFF2 */  lhu        $v0, %lo(D_8013FFF2)($v0)
/* DF4C 8000D34C 28410008 */  slti       $at, $v0, 0x8
/* DF50 8000D350 1020000A */  beqz       $at, .L8000D37C
/* DF54 8000D354 3C018009 */   lui       $at, %hi(D_80095428)
/* DF58 8000D358 C4305428 */  lwc1       $f16, %lo(D_80095428)($at)
/* DF5C 8000D35C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* DF60 8000D360 44819000 */  mtc1       $at, $f18
/* DF64 8000D364 3C018009 */  lui        $at, %hi(D_8009542C)
/* DF68 8000D368 E4F00088 */  swc1       $f16, 0x88($a3)
/* DF6C 8000D36C E4F2008C */  swc1       $f18, 0x8C($a3)
/* DF70 8000D370 C424542C */  lwc1       $f4, %lo(D_8009542C)($at)
/* DF74 8000D374 100000B0 */  b          .L8000D638
/* DF78 8000D378 E4E40090 */   swc1      $f4, 0x90($a3)
.L8000D37C:
/* DF7C 8000D37C 28410011 */  slti       $at, $v0, 0x11
/* DF80 8000D380 1020000A */  beqz       $at, .L8000D3AC
/* DF84 8000D384 3C01C3AD */   lui       $at, (0xC3AD0000 >> 16)
/* DF88 8000D388 44813000 */  mtc1       $at, $f6
/* DF8C 8000D38C 3C014120 */  lui        $at, (0x41200000 >> 16)
/* DF90 8000D390 44814000 */  mtc1       $at, $f8
/* DF94 8000D394 3C018009 */  lui        $at, %hi(D_80095430)
/* DF98 8000D398 E4E60088 */  swc1       $f6, 0x88($a3)
/* DF9C 8000D39C E4E8008C */  swc1       $f8, 0x8C($a3)
/* DFA0 8000D3A0 C42A5430 */  lwc1       $f10, %lo(D_80095430)($at)
/* DFA4 8000D3A4 100000A4 */  b          .L8000D638
/* DFA8 8000D3A8 E4EA0090 */   swc1      $f10, 0x90($a3)
.L8000D3AC:
/* DFAC 8000D3AC 3C018009 */  lui        $at, %hi(D_80095434)
/* DFB0 8000D3B0 C4305434 */  lwc1       $f16, %lo(D_80095434)($at)
/* DFB4 8000D3B4 3C014200 */  lui        $at, (0x42000000 >> 16)
/* DFB8 8000D3B8 44819000 */  mtc1       $at, $f18
/* DFBC 8000D3BC 3C018009 */  lui        $at, %hi(D_80095438)
/* DFC0 8000D3C0 E4F00088 */  swc1       $f16, 0x88($a3)
/* DFC4 8000D3C4 E4F2008C */  swc1       $f18, 0x8C($a3)
/* DFC8 8000D3C8 C4245438 */  lwc1       $f4, %lo(D_80095438)($at)
/* DFCC 8000D3CC 1000009A */  b          .L8000D638
/* DFD0 8000D3D0 E4E40090 */   swc1      $f4, 0x90($a3)
.L8000D3D4:
/* DFD4 8000D3D4 14610024 */  bne        $v1, $at, .L8000D468
/* DFD8 8000D3D8 3C028014 */   lui       $v0, %hi(D_8013FFF2)
/* DFDC 8000D3DC 9442FFF2 */  lhu        $v0, %lo(D_8013FFF2)($v0)
/* DFE0 8000D3E0 28410007 */  slti       $at, $v0, 0x7
/* DFE4 8000D3E4 1020000A */  beqz       $at, .L8000D410
/* DFE8 8000D3E8 3C018009 */   lui       $at, %hi(D_8009543C)
/* DFEC 8000D3EC C426543C */  lwc1       $f6, %lo(D_8009543C)($at)
/* DFF0 8000D3F0 3C018009 */  lui        $at, %hi(D_80095440)
/* DFF4 8000D3F4 E4E60088 */  swc1       $f6, 0x88($a3)
/* DFF8 8000D3F8 C4285440 */  lwc1       $f8, %lo(D_80095440)($at)
/* DFFC 8000D3FC 3C018009 */  lui        $at, %hi(D_80095444)
/* E000 8000D400 E4E8008C */  swc1       $f8, 0x8C($a3)
/* E004 8000D404 C42A5444 */  lwc1       $f10, %lo(D_80095444)($at)
/* E008 8000D408 1000008B */  b          .L8000D638
/* E00C 8000D40C E4EA0090 */   swc1      $f10, 0x90($a3)
.L8000D410:
/* E010 8000D410 2841000B */  slti       $at, $v0, 0xB
/* E014 8000D414 1020000A */  beqz       $at, .L8000D440
/* E018 8000D418 3C018009 */   lui       $at, %hi(D_80095448)
/* E01C 8000D41C C4305448 */  lwc1       $f16, %lo(D_80095448)($at)
/* E020 8000D420 3C018009 */  lui        $at, %hi(D_8009544C)
/* E024 8000D424 E4F00088 */  swc1       $f16, 0x88($a3)
/* E028 8000D428 C432544C */  lwc1       $f18, %lo(D_8009544C)($at)
/* E02C 8000D42C 3C018009 */  lui        $at, %hi(D_80095450)
/* E030 8000D430 E4F2008C */  swc1       $f18, 0x8C($a3)
/* E034 8000D434 C4245450 */  lwc1       $f4, %lo(D_80095450)($at)
/* E038 8000D438 1000007F */  b          .L8000D638
/* E03C 8000D43C E4E40090 */   swc1      $f4, 0x90($a3)
.L8000D440:
/* E040 8000D440 3C018009 */  lui        $at, %hi(D_80095454)
/* E044 8000D444 C4265454 */  lwc1       $f6, %lo(D_80095454)($at)
/* E048 8000D448 3C018009 */  lui        $at, %hi(D_80095458)
/* E04C 8000D44C E4E60088 */  swc1       $f6, 0x88($a3)
/* E050 8000D450 C4285458 */  lwc1       $f8, %lo(D_80095458)($at)
/* E054 8000D454 3C018009 */  lui        $at, %hi(D_8009545C)
/* E058 8000D458 E4E8008C */  swc1       $f8, 0x8C($a3)
/* E05C 8000D45C C42A545C */  lwc1       $f10, %lo(D_8009545C)($at)
/* E060 8000D460 10000075 */  b          .L8000D638
/* E064 8000D464 E4EA0090 */   swc1      $f10, 0x90($a3)
.L8000D468:
/* E068 8000D468 24010002 */  addiu      $at, $zero, 0x2
/* E06C 8000D46C 10610004 */  beq        $v1, $at, .L8000D480
/* E070 8000D470 3C028014 */   lui       $v0, %hi(D_8013FFF2)
/* E074 8000D474 24010004 */  addiu      $at, $zero, 0x4
/* E078 8000D478 54610025 */  bnel       $v1, $at, .L8000D510
/* E07C 8000D47C 24010003 */   addiu     $at, $zero, 0x3
.L8000D480:
/* E080 8000D480 9442FFF2 */  lhu        $v0, %lo(D_8013FFF2)($v0)
/* E084 8000D484 2841000B */  slti       $at, $v0, 0xB
/* E088 8000D488 1020000A */  beqz       $at, .L8000D4B4
/* E08C 8000D48C 3C018009 */   lui       $at, %hi(D_80095460)
/* E090 8000D490 C4305460 */  lwc1       $f16, %lo(D_80095460)($at)
/* E094 8000D494 3C014120 */  lui        $at, (0x41200000 >> 16)
/* E098 8000D498 44819000 */  mtc1       $at, $f18
/* E09C 8000D49C 3C018009 */  lui        $at, %hi(D_80095464)
/* E0A0 8000D4A0 E4F00088 */  swc1       $f16, 0x88($a3)
/* E0A4 8000D4A4 E4F2008C */  swc1       $f18, 0x8C($a3)
/* E0A8 8000D4A8 C4245464 */  lwc1       $f4, %lo(D_80095464)($at)
/* E0AC 8000D4AC 10000062 */  b          .L8000D638
/* E0B0 8000D4B0 E4E40090 */   swc1      $f4, 0x90($a3)
.L8000D4B4:
/* E0B4 8000D4B4 28410011 */  slti       $at, $v0, 0x11
/* E0B8 8000D4B8 1020000A */  beqz       $at, .L8000D4E4
/* E0BC 8000D4BC 3C018009 */   lui       $at, %hi(D_80095468)
/* E0C0 8000D4C0 C4265468 */  lwc1       $f6, %lo(D_80095468)($at)
/* E0C4 8000D4C4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* E0C8 8000D4C8 44814000 */  mtc1       $at, $f8
/* E0CC 8000D4CC 3C014397 */  lui        $at, (0x43970000 >> 16)
/* E0D0 8000D4D0 44815000 */  mtc1       $at, $f10
/* E0D4 8000D4D4 E4E60088 */  swc1       $f6, 0x88($a3)
/* E0D8 8000D4D8 E4E8008C */  swc1       $f8, 0x8C($a3)
/* E0DC 8000D4DC 10000056 */  b          .L8000D638
/* E0E0 8000D4E0 E4EA0090 */   swc1      $f10, 0x90($a3)
.L8000D4E4:
/* E0E4 8000D4E4 3C018009 */  lui        $at, %hi(D_8009546C)
/* E0E8 8000D4E8 C430546C */  lwc1       $f16, %lo(D_8009546C)($at)
/* E0EC 8000D4EC 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* E0F0 8000D4F0 44819000 */  mtc1       $at, $f18
/* E0F4 8000D4F4 3C018009 */  lui        $at, %hi(D_80095470)
/* E0F8 8000D4F8 E4F00088 */  swc1       $f16, 0x88($a3)
/* E0FC 8000D4FC E4F2008C */  swc1       $f18, 0x8C($a3)
/* E100 8000D500 C4245470 */  lwc1       $f4, %lo(D_80095470)($at)
/* E104 8000D504 1000004C */  b          .L8000D638
/* E108 8000D508 E4E40090 */   swc1      $f4, 0x90($a3)
/* E10C 8000D50C 24010003 */  addiu      $at, $zero, 0x3
.L8000D510:
/* E110 8000D510 14610024 */  bne        $v1, $at, .L8000D5A4
/* E114 8000D514 3C028014 */   lui       $v0, %hi(D_8013FFF2)
/* E118 8000D518 9442FFF2 */  lhu        $v0, %lo(D_8013FFF2)($v0)
/* E11C 8000D51C 28410005 */  slti       $at, $v0, 0x5
/* E120 8000D520 1020000A */  beqz       $at, .L8000D54C
/* E124 8000D524 3C018009 */   lui       $at, %hi(D_80095474)
/* E128 8000D528 C4265474 */  lwc1       $f6, %lo(D_80095474)($at)
/* E12C 8000D52C 3C014180 */  lui        $at, (0x41800000 >> 16)
/* E130 8000D530 44814000 */  mtc1       $at, $f8
/* E134 8000D534 3C018009 */  lui        $at, %hi(D_80095478)
/* E138 8000D538 E4E60088 */  swc1       $f6, 0x88($a3)
/* E13C 8000D53C E4E8008C */  swc1       $f8, 0x8C($a3)
/* E140 8000D540 C42A5478 */  lwc1       $f10, %lo(D_80095478)($at)
/* E144 8000D544 1000003C */  b          .L8000D638
/* E148 8000D548 E4EA0090 */   swc1      $f10, 0x90($a3)
.L8000D54C:
/* E14C 8000D54C 28410007 */  slti       $at, $v0, 0x7
/* E150 8000D550 1020000A */  beqz       $at, .L8000D57C
/* E154 8000D554 3C01C307 */   lui       $at, (0xC3070000 >> 16)
/* E158 8000D558 44818000 */  mtc1       $at, $f16
/* E15C 8000D55C 3C014190 */  lui        $at, (0x41900000 >> 16)
/* E160 8000D560 44819000 */  mtc1       $at, $f18
/* E164 8000D564 3C018009 */  lui        $at, %hi(D_8009547C)
/* E168 8000D568 E4F00088 */  swc1       $f16, 0x88($a3)
/* E16C 8000D56C E4F2008C */  swc1       $f18, 0x8C($a3)
/* E170 8000D570 C424547C */  lwc1       $f4, %lo(D_8009547C)($at)
/* E174 8000D574 10000030 */  b          .L8000D638
/* E178 8000D578 E4E40090 */   swc1      $f4, 0x90($a3)
.L8000D57C:
/* E17C 8000D57C 3C01C29A */  lui        $at, (0xC29A0000 >> 16)
/* E180 8000D580 44813000 */  mtc1       $at, $f6
/* E184 8000D584 3C01C140 */  lui        $at, (0xC1400000 >> 16)
/* E188 8000D588 44814000 */  mtc1       $at, $f8
/* E18C 8000D58C 3C018009 */  lui        $at, %hi(D_80095480)
/* E190 8000D590 E4E60088 */  swc1       $f6, 0x88($a3)
/* E194 8000D594 E4E8008C */  swc1       $f8, 0x8C($a3)
/* E198 8000D598 C42A5480 */  lwc1       $f10, %lo(D_80095480)($at)
/* E19C 8000D59C 10000026 */  b          .L8000D638
/* E1A0 8000D5A0 E4EA0090 */   swc1      $f10, 0x90($a3)
.L8000D5A4:
/* E1A4 8000D5A4 24010005 */  addiu      $at, $zero, 0x5
/* E1A8 8000D5A8 14610023 */  bne        $v1, $at, .L8000D638
/* E1AC 8000D5AC 3C028014 */   lui       $v0, %hi(D_8013FFF2)
/* E1B0 8000D5B0 9442FFF2 */  lhu        $v0, %lo(D_8013FFF2)($v0)
/* E1B4 8000D5B4 28410005 */  slti       $at, $v0, 0x5
/* E1B8 8000D5B8 1020000A */  beqz       $at, .L8000D5E4
/* E1BC 8000D5BC 3C018009 */   lui       $at, %hi(D_80095484)
/* E1C0 8000D5C0 C4305484 */  lwc1       $f16, %lo(D_80095484)($at)
/* E1C4 8000D5C4 3C014180 */  lui        $at, (0x41800000 >> 16)
/* E1C8 8000D5C8 44819000 */  mtc1       $at, $f18
/* E1CC 8000D5CC 3C018009 */  lui        $at, %hi(D_80095488)
/* E1D0 8000D5D0 E4F00088 */  swc1       $f16, 0x88($a3)
/* E1D4 8000D5D4 E4F2008C */  swc1       $f18, 0x8C($a3)
/* E1D8 8000D5D8 C4245488 */  lwc1       $f4, %lo(D_80095488)($at)
/* E1DC 8000D5DC 10000016 */  b          .L8000D638
/* E1E0 8000D5E0 E4E40090 */   swc1      $f4, 0x90($a3)
.L8000D5E4:
/* E1E4 8000D5E4 2841006A */  slti       $at, $v0, 0x6A
/* E1E8 8000D5E8 1020000A */  beqz       $at, .L8000D614
/* E1EC 8000D5EC 3C018009 */   lui       $at, %hi(D_8009548C)
/* E1F0 8000D5F0 C426548C */  lwc1       $f6, %lo(D_8009548C)($at)
/* E1F4 8000D5F4 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* E1F8 8000D5F8 44814000 */  mtc1       $at, $f8
/* E1FC 8000D5FC 3C018009 */  lui        $at, %hi(D_80095490)
/* E200 8000D600 E4E60088 */  swc1       $f6, 0x88($a3)
/* E204 8000D604 E4E8008C */  swc1       $f8, 0x8C($a3)
/* E208 8000D608 C42A5490 */  lwc1       $f10, %lo(D_80095490)($at)
/* E20C 8000D60C 1000000A */  b          .L8000D638
/* E210 8000D610 E4EA0090 */   swc1      $f10, 0x90($a3)
.L8000D614:
/* E214 8000D614 3C018009 */  lui        $at, %hi(D_80095494)
/* E218 8000D618 C4305494 */  lwc1       $f16, %lo(D_80095494)($at)
/* E21C 8000D61C 3C0141B0 */  lui        $at, (0x41B00000 >> 16)
/* E220 8000D620 44819000 */  mtc1       $at, $f18
/* E224 8000D624 3C01435C */  lui        $at, (0x435C0000 >> 16)
/* E228 8000D628 44812000 */  mtc1       $at, $f4
/* E22C 8000D62C E4F00088 */  swc1       $f16, 0x88($a3)
/* E230 8000D630 E4F2008C */  swc1       $f18, 0x8C($a3)
/* E234 8000D634 E4E40090 */  swc1       $f4, 0x90($a3)
.L8000D638:
/* E238 8000D638 0C002423 */  jal        func_8000908C
/* E23C 8000D63C AFA70018 */   sw        $a3, 0x18($sp)
/* E240 8000D640 0C0018C7 */  jal        func_8000631C
/* E244 8000D644 8FA40018 */   lw        $a0, 0x18($sp)
/* E248 8000D648 8FBF0014 */  lw         $ra, 0x14($sp)
/* E24C 8000D64C 27BD0018 */  addiu      $sp, $sp, 0x18
/* E250 8000D650 03E00008 */  jr         $ra
/* E254 8000D654 00000000 */   nop

glabel func_8000D658
/* E258 8000D658 03E00008 */  jr         $ra
/* E25C 8000D65C AFA40000 */   sw        $a0, 0x0($sp)

glabel func_8000D660
/* E260 8000D660 03E00008 */  jr         $ra
/* E264 8000D664 00000000 */   nop
/* E268 8000D668 00000000 */  nop
/* E26C 8000D66C 00000000 */  nop
