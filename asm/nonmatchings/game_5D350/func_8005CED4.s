glabel func_8005CED4
/* 5DAD4 8005CED4 8C8E0000 */  lw         $t6, 0x0($a0)
/* 5DAD8 8005CED8 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* 5DADC 8005CEDC 000E7FC2 */  srl        $t7, $t6, 31
/* 5DAE0 8005CEE0 51E0001B */  beql       $t7, $zero, .L8005CF50
/* 5DAE4 8005CEE4 8C8B0040 */   lw        $t3, 0x40($a0)
/* 5DAE8 8005CEE8 44812000 */  mtc1       $at, $f4
/* 5DAEC 8005CEEC C4860228 */  lwc1       $f6, 0x228($a0)
/* 5DAF0 8005CEF0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 5DAF4 8005CEF4 44815800 */  mtc1       $at, $f11
/* 5DAF8 8005CEF8 44805000 */  mtc1       $zero, $f10
/* 5DAFC 8005CEFC 46003221 */  cvt.d.s    $f8, $f6
/* 5DB00 8005CF00 E4840060 */  swc1       $f4, 0x60($a0)
/* 5DB04 8005CF04 462A403C */  c.lt.d     $f8, $f10
/* 5DB08 8005CF08 00000000 */  nop
/* 5DB0C 8005CF0C 4502000C */  bc1fl      .L8005CF40
/* 5DB10 8005CF10 90890000 */   lbu       $t1, 0x0($a0)
/* 5DB14 8005CF14 8C980040 */  lw         $t8, 0x40($a0)
/* 5DB18 8005CF18 0018CFC2 */  srl        $t9, $t8, 31
/* 5DB1C 8005CF1C 53200008 */  beql       $t9, $zero, .L8005CF40
/* 5DB20 8005CF20 90890000 */   lbu       $t1, 0x0($a0)
/* 5DB24 8005CF24 8C880020 */  lw         $t0, 0x20($a0)
/* 5DB28 8005CF28 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 5DB2C 8005CF2C 44819000 */  mtc1       $at, $f18
/* 5DB30 8005CF30 C5100008 */  lwc1       $f16, 0x8($t0)
/* 5DB34 8005CF34 46128102 */  mul.s      $f4, $f16, $f18
/* 5DB38 8005CF38 E48400C8 */  swc1       $f4, 0xC8($a0)
/* 5DB3C 8005CF3C 90890000 */  lbu        $t1, 0x0($a0)
.L8005CF40:
/* 5DB40 8005CF40 312AFF7F */  andi       $t2, $t1, 0xFF7F
/* 5DB44 8005CF44 03E00008 */  jr         $ra
/* 5DB48 8005CF48 A08A0000 */   sb        $t2, 0x0($a0)
/* 5DB4C 8005CF4C 8C8B0040 */  lw         $t3, 0x40($a0)
.L8005CF50:
/* 5DB50 8005CF50 240D0001 */  addiu      $t5, $zero, 0x1
/* 5DB54 8005CF54 24190001 */  addiu      $t9, $zero, 0x1
/* 5DB58 8005CF58 000B67C2 */  srl        $t4, $t3, 31
/* 5DB5C 8005CF5C 51800004 */  beql       $t4, $zero, .L8005CF70
/* 5DB60 8005CF60 A0800057 */   sb        $zero, 0x57($a0)
/* 5DB64 8005CF64 10000002 */  b          .L8005CF70
/* 5DB68 8005CF68 A08D0057 */   sb        $t5, 0x57($a0)
/* 5DB6C 8005CF6C A0800057 */  sb         $zero, 0x57($a0)
.L8005CF70:
/* 5DB70 8005CF70 8C8E0040 */  lw         $t6, 0x40($a0)
/* 5DB74 8005CF74 000EC0C0 */  sll        $t8, $t6, 3
/* 5DB78 8005CF78 07030004 */  bgezl      $t8, .L8005CF8C
/* 5DB7C 8005CF7C A080005A */   sb        $zero, 0x5A($a0)
/* 5DB80 8005CF80 10000002 */  b          .L8005CF8C
/* 5DB84 8005CF84 A099005A */   sb        $t9, 0x5A($a0)
/* 5DB88 8005CF88 A080005A */  sb         $zero, 0x5A($a0)
.L8005CF8C:
/* 5DB8C 8005CF8C 8C820040 */  lw         $v0, 0x40($a0)
/* 5DB90 8005CF90 00024840 */  sll        $t1, $v0, 1
/* 5DB94 8005CF94 05230009 */  bgezl      $t1, .L8005CFBC
/* 5DB98 8005CF98 A0800058 */   sb        $zero, 0x58($a0)
/* 5DB9C 8005CF9C 90830058 */  lbu        $v1, 0x58($a0)
/* 5DBA0 8005CFA0 2861003C */  slti       $at, $v1, 0x3C
/* 5DBA4 8005CFA4 10200006 */  beqz       $at, .L8005CFC0
/* 5DBA8 8005CFA8 246A0001 */   addiu     $t2, $v1, 0x1
/* 5DBAC 8005CFAC A08A0058 */  sb         $t2, 0x58($a0)
/* 5DBB0 8005CFB0 10000003 */  b          .L8005CFC0
/* 5DBB4 8005CFB4 8C820040 */   lw        $v0, 0x40($a0)
/* 5DBB8 8005CFB8 A0800058 */  sb         $zero, 0x58($a0)
.L8005CFBC:
/* 5DBBC 8005CFBC 8C820040 */  lw         $v0, 0x40($a0)
.L8005CFC0:
/* 5DBC0 8005CFC0 00026080 */  sll        $t4, $v0, 2
/* 5DBC4 8005CFC4 05830009 */  bgezl      $t4, .L8005CFEC
/* 5DBC8 8005CFC8 A0800059 */   sb        $zero, 0x59($a0)
/* 5DBCC 8005CFCC 90830059 */  lbu        $v1, 0x59($a0)
/* 5DBD0 8005CFD0 2861000A */  slti       $at, $v1, 0xA
/* 5DBD4 8005CFD4 10200006 */  beqz       $at, .L8005CFF0
/* 5DBD8 8005CFD8 246D0001 */   addiu     $t5, $v1, 0x1
/* 5DBDC 8005CFDC A08D0059 */  sb         $t5, 0x59($a0)
/* 5DBE0 8005CFE0 10000003 */  b          .L8005CFF0
/* 5DBE4 8005CFE4 8C820040 */   lw        $v0, 0x40($a0)
/* 5DBE8 8005CFE8 A0800059 */  sb         $zero, 0x59($a0)
.L8005CFEC:
/* 5DBEC 8005CFEC 8C820040 */  lw         $v0, 0x40($a0)
.L8005CFF0:
/* 5DBF0 8005CFF0 94990040 */  lhu        $t9, 0x40($a0)
/* 5DBF4 8005CFF4 00027100 */  sll        $t6, $v0, 4
/* 5DBF8 8005CFF8 000E7E82 */  srl        $t7, $t6, 26
/* 5DBFC 8005CFFC 3328003F */  andi       $t0, $t9, 0x3F
/* 5DC00 8005D000 25F8FFEC */  addiu      $t8, $t7, -0x14
/* 5DC04 8005D004 2509FFEC */  addiu      $t1, $t0, -0x14
/* 5DC08 8005D008 44983000 */  mtc1       $t8, $f6
/* 5DC0C 8005D00C 44895000 */  mtc1       $t1, $f10
/* 5DC10 8005D010 848B0036 */  lh         $t3, 0x36($a0)
/* 5DC14 8005D014 46803220 */  cvt.s.w    $f8, $f6
/* 5DC18 8005D018 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 5DC1C 8005D01C 46805420 */  cvt.s.w    $f16, $f10
/* 5DC20 8005D020 E488005C */  swc1       $f8, 0x5C($a0)
/* 5DC24 8005D024 05610004 */  bgez       $t3, .L8005D038
/* 5DC28 8005D028 E4900060 */   swc1      $f16, 0x60($a0)
/* 5DC2C 8005D02C 44819000 */  mtc1       $at, $f18
/* 5DC30 8005D030 03E00008 */  jr         $ra
/* 5DC34 8005D034 E4920068 */   swc1      $f18, 0x68($a0)
.L8005D038:
/* 5DC38 8005D038 44802000 */  mtc1       $zero, $f4
/* 5DC3C 8005D03C 00000000 */  nop
/* 5DC40 8005D040 E4840068 */  swc1       $f4, 0x68($a0)
/* 5DC44 8005D044 03E00008 */  jr         $ra
/* 5DC48 8005D048 00000000 */   nop
