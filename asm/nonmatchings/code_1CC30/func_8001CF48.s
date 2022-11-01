glabel func_8001CF48
/* 1DB48 8001CF48 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1DB4C 8001CF4C 3C0E8017 */  lui        $t6, %hi(D_8016C470)
/* 1DB50 8001CF50 8DCEC470 */  lw         $t6, %lo(D_8016C470)($t6)
/* 1DB54 8001CF54 AFBF0034 */  sw         $ra, 0x34($sp)
/* 1DB58 8001CF58 AFB60030 */  sw         $s6, 0x30($sp)
/* 1DB5C 8001CF5C AFB5002C */  sw         $s5, 0x2C($sp)
/* 1DB60 8001CF60 AFB40028 */  sw         $s4, 0x28($sp)
/* 1DB64 8001CF64 AFB30024 */  sw         $s3, 0x24($sp)
/* 1DB68 8001CF68 AFB20020 */  sw         $s2, 0x20($sp)
/* 1DB6C 8001CF6C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1DB70 8001CF70 11C0009F */  beqz       $t6, .L8001D1F0
/* 1DB74 8001CF74 AFB00018 */   sw        $s0, 0x18($sp)
/* 1DB78 8001CF78 3C028017 */  lui        $v0, %hi(D_8016C474)
/* 1DB7C 8001CF7C 2442C474 */  addiu      $v0, $v0, %lo(D_8016C474)
/* 1DB80 8001CF80 8C4F0000 */  lw         $t7, 0x0($v0)
/* 1DB84 8001CF84 3C068014 */  lui        $a2, %hi(D_8013FC88)
/* 1DB88 8001CF88 24C6FC88 */  addiu      $a2, $a2, %lo(D_8013FC88)
/* 1DB8C 8001CF8C 51E00099 */  beql       $t7, $zero, .L8001D1F4
/* 1DB90 8001CF90 8FBF0034 */   lw        $ra, 0x34($sp)
/* 1DB94 8001CF94 90C40009 */  lbu        $a0, 0x9($a2)
/* 1DB98 8001CF98 3C158014 */  lui        $s5, %hi(D_8013FFB0)
/* 1DB9C 8001CF9C 26B5FFB0 */  addiu      $s5, $s5, %lo(D_8013FFB0)
/* 1DBA0 8001CFA0 18800060 */  blez       $a0, .L8001D124
/* 1DBA4 8001CFA4 0000A025 */   or        $s4, $zero, $zero
/* 1DBA8 8001CFA8 3C138014 */  lui        $s3, %hi(D_8013FC88)
/* 1DBAC 8001CFAC 2673FC88 */  addiu      $s3, $s3, %lo(D_8013FC88)
.L8001CFB0:
/* 1DBB0 8001CFB0 3C028017 */  lui        $v0, %hi(D_8016C474)
/* 1DBB4 8001CFB4 2442C474 */  addiu      $v0, $v0, %lo(D_8016C474)
/* 1DBB8 8001CFB8 8C490000 */  lw         $t1, 0x0($v0)
/* 1DBBC 8001CFBC 96A80042 */  lhu        $t0, 0x42($s5)
/* 1DBC0 8001CFC0 92780010 */  lbu        $t8, 0x10($s3)
/* 1DBC4 8001CFC4 9279005B */  lbu        $t9, 0x5B($s3)
/* 1DBC8 8001CFC8 01095021 */  addu       $t2, $t0, $t1
/* 1DBCC 8001CFCC 91510000 */  lbu        $s1, 0x0($t2)
/* 1DBD0 8001CFD0 02808025 */  or         $s0, $s4, $zero
/* 1DBD4 8001CFD4 02A0B025 */  or         $s6, $s5, $zero
/* 1DBD8 8001CFD8 02A02025 */  or         $a0, $s5, $zero
/* 1DBDC 8001CFDC 03199023 */  subu       $s2, $t8, $t9
/* 1DBE0 8001CFE0 0C007566 */  jal        func_8001D598
/* 1DBE4 8001CFE4 02202825 */   or        $a1, $s1, $zero
/* 1DBE8 8001CFE8 3C068014 */  lui        $a2, %hi(D_8013FC88)
/* 1DBEC 8001CFEC 1A80003C */  blez       $s4, .L8001D0E0
/* 1DBF0 8001CFF0 24C6FC88 */   addiu     $a2, $a2, %lo(D_8013FC88)
/* 1DBF4 8001CFF4 1A80003A */  blez       $s4, .L8001D0E0
/* 1DBF8 8001CFF8 00105880 */   sll       $t3, $s0, 2
/* 1DBFC 8001CFFC 01705823 */  subu       $t3, $t3, $s0
/* 1DC00 8001D000 3C0C8017 */  lui        $t4, %hi(D_8016C478)
/* 1DC04 8001D004 258CC478 */  addiu      $t4, $t4, %lo(D_8016C478)
/* 1DC08 8001D008 000B5880 */  sll        $t3, $t3, 2
/* 1DC0C 8001D00C 016C1021 */  addu       $v0, $t3, $t4
/* 1DC10 8001D010 8043FFF8 */  lb         $v1, -0x8($v0)
.L8001D014:
/* 1DC14 8001D014 0072082A */  slt        $at, $v1, $s2
/* 1DC18 8001D018 5020000B */  beql       $at, $zero, .L8001D048
/* 1DC1C 8001D01C 0243082A */   slt       $at, $s2, $v1
/* 1DC20 8001D020 8C41FFF4 */  lw         $at, -0xC($v0)
/* 1DC24 8001D024 8C4EFFF8 */  lw         $t6, -0x8($v0)
/* 1DC28 8001D028 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1DC2C 8001D02C AC410000 */  sw         $at, 0x0($v0)
/* 1DC30 8001D030 8C41FFFC */  lw         $at, -0x4($v0)
/* 1DC34 8001D034 2442FFF4 */  addiu      $v0, $v0, -0xC
/* 1DC38 8001D038 AC4E0010 */  sw         $t6, 0x10($v0)
/* 1DC3C 8001D03C 10000026 */  b          .L8001D0D8
/* 1DC40 8001D040 AC410014 */   sw        $at, 0x14($v0)
/* 1DC44 8001D044 0243082A */  slt        $at, $s2, $v1
.L8001D048:
/* 1DC48 8001D048 54200026 */  bnel       $at, $zero, .L8001D0E4
/* 1DC4C 8001D04C 00104880 */   sll       $t1, $s0, 2
/* 1DC50 8001D050 9043FFF9 */  lbu        $v1, -0x7($v0)
/* 1DC54 8001D054 0071082A */  slt        $at, $v1, $s1
/* 1DC58 8001D058 5020000B */  beql       $at, $zero, .L8001D088
/* 1DC5C 8001D05C 0223082A */   slt       $at, $s1, $v1
/* 1DC60 8001D060 8C41FFF4 */  lw         $at, -0xC($v0)
/* 1DC64 8001D064 8C58FFF8 */  lw         $t8, -0x8($v0)
/* 1DC68 8001D068 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1DC6C 8001D06C AC410000 */  sw         $at, 0x0($v0)
/* 1DC70 8001D070 8C41FFFC */  lw         $at, -0x4($v0)
/* 1DC74 8001D074 2442FFF4 */  addiu      $v0, $v0, -0xC
/* 1DC78 8001D078 AC580010 */  sw         $t8, 0x10($v0)
/* 1DC7C 8001D07C 10000016 */  b          .L8001D0D8
/* 1DC80 8001D080 AC410014 */   sw        $at, 0x14($v0)
/* 1DC84 8001D084 0223082A */  slt        $at, $s1, $v1
.L8001D088:
/* 1DC88 8001D088 54200016 */  bnel       $at, $zero, .L8001D0E4
/* 1DC8C 8001D08C 00104880 */   sll       $t1, $s0, 2
/* 1DC90 8001D090 C442FFFC */  lwc1       $f2, -0x4($v0)
/* 1DC94 8001D094 4602003C */  c.lt.s     $f0, $f2
/* 1DC98 8001D098 00000000 */  nop
/* 1DC9C 8001D09C 4502000B */  bc1fl      .L8001D0CC
/* 1DCA0 8001D0A0 4600103E */   c.le.s    $f2, $f0
/* 1DCA4 8001D0A4 8C41FFF4 */  lw         $at, -0xC($v0)
/* 1DCA8 8001D0A8 8C48FFF8 */  lw         $t0, -0x8($v0)
/* 1DCAC 8001D0AC 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1DCB0 8001D0B0 AC410000 */  sw         $at, 0x0($v0)
/* 1DCB4 8001D0B4 8C41FFFC */  lw         $at, -0x4($v0)
/* 1DCB8 8001D0B8 2442FFF4 */  addiu      $v0, $v0, -0xC
/* 1DCBC 8001D0BC AC480010 */  sw         $t0, 0x10($v0)
/* 1DCC0 8001D0C0 10000005 */  b          .L8001D0D8
/* 1DCC4 8001D0C4 AC410014 */   sw        $at, 0x14($v0)
/* 1DCC8 8001D0C8 4600103E */  c.le.s     $f2, $f0
.L8001D0CC:
/* 1DCCC 8001D0CC 00000000 */  nop
/* 1DCD0 8001D0D0 45030004 */  bc1tl      .L8001D0E4
/* 1DCD4 8001D0D4 00104880 */   sll       $t1, $s0, 2
.L8001D0D8:
/* 1DCD8 8001D0D8 5E00FFCE */  bgtzl      $s0, .L8001D014
/* 1DCDC 8001D0DC 8043FFF8 */   lb        $v1, -0x8($v0)
.L8001D0E0:
/* 1DCE0 8001D0E0 00104880 */  sll        $t1, $s0, 2
.L8001D0E4:
/* 1DCE4 8001D0E4 01304823 */  subu       $t1, $t1, $s0
/* 1DCE8 8001D0E8 3C0A8017 */  lui        $t2, %hi(D_8016C478)
/* 1DCEC 8001D0EC 90C40009 */  lbu        $a0, 0x9($a2)
/* 1DCF0 8001D0F0 254AC478 */  addiu      $t2, $t2, %lo(D_8016C478)
/* 1DCF4 8001D0F4 00094880 */  sll        $t1, $t1, 2
/* 1DCF8 8001D0F8 012A1021 */  addu       $v0, $t1, $t2
/* 1DCFC 8001D0FC 26940001 */  addiu      $s4, $s4, 0x1
/* 1DD00 8001D100 0284082A */  slt        $at, $s4, $a0
/* 1DD04 8001D104 26B520A0 */  addiu      $s5, $s5, 0x20A0
/* 1DD08 8001D108 26730054 */  addiu      $s3, $s3, 0x54
/* 1DD0C 8001D10C AC560000 */  sw         $s6, 0x0($v0)
/* 1DD10 8001D110 A0520004 */  sb         $s2, 0x4($v0)
/* 1DD14 8001D114 A0510005 */  sb         $s1, 0x5($v0)
/* 1DD18 8001D118 1420FFA5 */  bnez       $at, .L8001CFB0
/* 1DD1C 8001D11C E4400008 */   swc1      $f0, 0x8($v0)
/* 1DD20 8001D120 0000A025 */  or         $s4, $zero, $zero
.L8001D124:
/* 1DD24 8001D124 1880000C */  blez       $a0, .L8001D158
/* 1DD28 8001D128 3C038017 */   lui       $v1, %hi(D_8016C478)
/* 1DD2C 8001D12C 2463C478 */  addiu      $v1, $v1, %lo(D_8016C478)
/* 1DD30 8001D130 8C6B0000 */  lw         $t3, 0x0($v1)
.L8001D134:
/* 1DD34 8001D134 26820001 */  addiu      $v0, $s4, 0x1
/* 1DD38 8001D138 0040A025 */  or         $s4, $v0, $zero
/* 1DD3C 8001D13C A1620008 */  sb         $v0, 0x8($t3)
/* 1DD40 8001D140 90C40009 */  lbu        $a0, 0x9($a2)
/* 1DD44 8001D144 2463000C */  addiu      $v1, $v1, 0xC
/* 1DD48 8001D148 0044082A */  slt        $at, $v0, $a0
/* 1DD4C 8001D14C 5420FFF9 */  bnel       $at, $zero, .L8001D134
/* 1DD50 8001D150 8C6B0000 */   lw        $t3, 0x0($v1)
/* 1DD54 8001D154 0000A025 */  or         $s4, $zero, $zero
.L8001D158:
/* 1DD58 8001D158 18800025 */  blez       $a0, .L8001D1F0
/* 1DD5C 8001D15C 3C158014 */   lui       $s5, %hi(D_8013FFB0)
/* 1DD60 8001D160 3C138014 */  lui        $s3, %hi(D_8013FC88)
/* 1DD64 8001D164 3C038014 */  lui        $v1, %hi(gPlayerLapCount)
/* 1DD68 8001D168 2463FC98 */  addiu      $v1, $v1, %lo(gPlayerLapCount)
/* 1DD6C 8001D16C 2673FC88 */  addiu      $s3, $s3, %lo(D_8013FC88)
/* 1DD70 8001D170 26B5FFB0 */  addiu      $s5, $s5, %lo(D_8013FFB0)
/* 1DD74 8001D174 2405FFE2 */  addiu      $a1, $zero, -0x1E
/* 1DD78 8001D178 2404001E */  addiu      $a0, $zero, 0x1E
.L8001D17C:
/* 1DD7C 8001D17C 926C0058 */  lbu        $t4, 0x58($s3)
/* 1DD80 8001D180 92AD0008 */  lbu        $t5, 0x8($s5)
/* 1DD84 8001D184 26940001 */  addiu      $s4, $s4, 0x1
/* 1DD88 8001D188 318F00FF */  andi       $t7, $t4, 0xFF
/* 1DD8C 8001D18C 31AE00FF */  andi       $t6, $t5, 0xFF
/* 1DD90 8001D190 01CF1023 */  subu       $v0, $t6, $t7
/* 1DD94 8001D194 A26C0059 */  sb         $t4, 0x59($s3)
/* 1DD98 8001D198 18400003 */  blez       $v0, .L8001D1A8
/* 1DD9C 8001D19C A26D0058 */   sb        $t5, 0x58($s3)
/* 1DDA0 8001D1A0 1000000D */  b          .L8001D1D8
/* 1DDA4 8001D1A4 A0640050 */   sb        $a0, 0x50($v1)
.L8001D1A8:
/* 1DDA8 8001D1A8 04430004 */  bgezl      $v0, .L8001D1BC
/* 1DDAC 8001D1AC 80620050 */   lb        $v0, 0x50($v1)
/* 1DDB0 8001D1B0 10000009 */  b          .L8001D1D8
/* 1DDB4 8001D1B4 A0650050 */   sb        $a1, 0x50($v1)
/* 1DDB8 8001D1B8 80620050 */  lb         $v0, 0x50($v1)
.L8001D1BC:
/* 1DDBC 8001D1BC 18400003 */  blez       $v0, .L8001D1CC
/* 1DDC0 8001D1C0 2458FFFF */   addiu     $t8, $v0, -0x1
/* 1DDC4 8001D1C4 10000004 */  b          .L8001D1D8
/* 1DDC8 8001D1C8 A0780050 */   sb        $t8, 0x50($v1)
.L8001D1CC:
/* 1DDCC 8001D1CC 04410002 */  bgez       $v0, .L8001D1D8
/* 1DDD0 8001D1D0 24590001 */   addiu     $t9, $v0, 0x1
/* 1DDD4 8001D1D4 A0790050 */  sb         $t9, 0x50($v1)
.L8001D1D8:
/* 1DDD8 8001D1D8 90C80009 */  lbu        $t0, 0x9($a2)
/* 1DDDC 8001D1DC 26B520A0 */  addiu      $s5, $s5, 0x20A0
/* 1DDE0 8001D1E0 26730054 */  addiu      $s3, $s3, 0x54
/* 1DDE4 8001D1E4 0288082A */  slt        $at, $s4, $t0
/* 1DDE8 8001D1E8 1420FFE4 */  bnez       $at, .L8001D17C
/* 1DDEC 8001D1EC 24630054 */   addiu     $v1, $v1, 0x54
.L8001D1F0:
/* 1DDF0 8001D1F0 8FBF0034 */  lw         $ra, 0x34($sp)
.L8001D1F4:
/* 1DDF4 8001D1F4 8FB00018 */  lw         $s0, 0x18($sp)
/* 1DDF8 8001D1F8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1DDFC 8001D1FC 8FB20020 */  lw         $s2, 0x20($sp)
/* 1DE00 8001D200 8FB30024 */  lw         $s3, 0x24($sp)
/* 1DE04 8001D204 8FB40028 */  lw         $s4, 0x28($sp)
/* 1DE08 8001D208 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1DE0C 8001D20C 8FB60030 */  lw         $s6, 0x30($sp)
/* 1DE10 8001D210 03E00008 */  jr         $ra
/* 1DE14 8001D214 27BD0038 */   addiu     $sp, $sp, 0x38
