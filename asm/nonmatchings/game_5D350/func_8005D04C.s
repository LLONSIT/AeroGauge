glabel func_8005D04C
/* 5DC4C 8005D04C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5DC50 8005D050 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DC54 8005D054 8C8E0000 */  lw         $t6, 0x0($a0)
/* 5DC58 8005D058 3C01800A */  lui        $at, %hi(D_80098640)
/* 5DC5C 8005D05C 000E7FC2 */  srl        $t7, $t6, 31
/* 5DC60 8005D060 11E00034 */  beqz       $t7, .L8005D134
/* 5DC64 8005D064 00000000 */   nop
/* 5DC68 8005D068 90980000 */  lbu        $t8, 0x0($a0)
/* 5DC6C 8005D06C D4208640 */  ldc1       $f0, %lo(D_80098640)($at)
/* 5DC70 8005D070 3C098014 */  lui        $t1, %hi(D_8013FF9B)
/* 5DC74 8005D074 3319FF7F */  andi       $t9, $t8, 0xFF7F
/* 5DC78 8005D078 A0990000 */  sb         $t9, 0x0($a0)
/* 5DC7C 8005D07C 8129FF9B */  lb         $t1, %lo(D_8013FF9B)($t1)
/* 5DC80 8005D080 3C0B8009 */  lui        $t3, %hi(D_8008FA08)
/* 5DC84 8005D084 27A8001C */  addiu      $t0, $sp, 0x1C
/* 5DC88 8005D088 00095080 */  sll        $t2, $t1, 2
/* 5DC8C 8005D08C 016A5821 */  addu       $t3, $t3, $t2
/* 5DC90 8005D090 8D6BFA08 */  lw         $t3, %lo(D_8008FA08)($t3)
/* 5DC94 8005D094 44801000 */  mtc1       $zero, $f2
/* 5DC98 8005D098 8961000A */  lwl        $at, 0xA($t3)
/* 5DC9C 8005D09C 9961000D */  lwr        $at, 0xD($t3)
/* 5DCA0 8005D0A0 AD010000 */  sw         $at, 0x0($t0)
/* 5DCA4 8005D0A4 9561000E */  lhu        $at, 0xE($t3)
/* 5DCA8 8005D0A8 A5010004 */  sh         $at, 0x4($t0)
/* 5DCAC 8005D0AC 87AE001C */  lh         $t6, 0x1C($sp)
/* 5DCB0 8005D0B0 3C01C2FA */  lui        $at, (0xC2FA0000 >> 16)
/* 5DCB4 8005D0B4 448E2000 */  mtc1       $t6, $f4
/* 5DCB8 8005D0B8 00000000 */  nop
/* 5DCBC 8005D0BC 468021A1 */  cvt.d.w    $f6, $f4
/* 5DCC0 8005D0C0 46203202 */  mul.d      $f8, $f6, $f0
/* 5DCC4 8005D0C4 462042A0 */  cvt.s.d    $f10, $f8
/* 5DCC8 8005D0C8 E48A0098 */  swc1       $f10, 0x98($a0)
/* 5DCCC 8005D0CC 87AF001E */  lh         $t7, 0x1E($sp)
/* 5DCD0 8005D0D0 448F8000 */  mtc1       $t7, $f16
/* 5DCD4 8005D0D4 00000000 */  nop
/* 5DCD8 8005D0D8 468084A1 */  cvt.d.w    $f18, $f16
/* 5DCDC 8005D0DC 46209102 */  mul.d      $f4, $f18, $f0
/* 5DCE0 8005D0E0 462021A0 */  cvt.s.d    $f6, $f4
/* 5DCE4 8005D0E4 44812000 */  mtc1       $at, $f4
/* 5DCE8 8005D0E8 E486009C */  swc1       $f6, 0x9C($a0)
/* 5DCEC 8005D0EC 87B80020 */  lh         $t8, 0x20($sp)
/* 5DCF0 8005D0F0 E48200A8 */  swc1       $f2, 0xA8($a0)
/* 5DCF4 8005D0F4 E48200A4 */  swc1       $f2, 0xA4($a0)
/* 5DCF8 8005D0F8 44984000 */  mtc1       $t8, $f8
/* 5DCFC 8005D0FC E48400AC */  swc1       $f4, 0xAC($a0)
/* 5DD00 8005D100 468042A1 */  cvt.d.w    $f10, $f8
/* 5DD04 8005D104 46205402 */  mul.d      $f16, $f10, $f0
/* 5DD08 8005D108 462084A0 */  cvt.s.d    $f18, $f16
/* 5DD0C 8005D10C E49200A0 */  swc1       $f18, 0xA0($a0)
/* 5DD10 8005D110 0C015FDE */  jal        func_80057F78
/* 5DD14 8005D114 AFA40028 */   sw        $a0, 0x28($sp)
/* 5DD18 8005D118 0C015FFE */  jal        func_80057FF8
/* 5DD1C 8005D11C 8FA40028 */   lw        $a0, 0x28($sp)
/* 5DD20 8005D120 8FA40028 */  lw         $a0, 0x28($sp)
/* 5DD24 8005D124 8C990020 */  lw         $t9, 0x20($a0)
/* 5DD28 8005D128 C7260008 */  lwc1       $f6, 0x8($t9)
/* 5DD2C 8005D12C 10000003 */  b          .L8005D13C
/* 5DD30 8005D130 E48600C8 */   swc1      $f6, 0xC8($a0)
.L8005D134:
/* 5DD34 8005D134 0C0054BF */  jal        func_800152FC
/* 5DD38 8005D138 00000000 */   nop
.L8005D13C:
/* 5DD3C 8005D13C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5DD40 8005D140 27BD0028 */  addiu      $sp, $sp, 0x28
/* 5DD44 8005D144 03E00008 */  jr         $ra
/* 5DD48 8005D148 00000000 */   nop
