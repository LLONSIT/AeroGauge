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
