glabel func_8005CC48
/* 5D848 8005CC48 50A0003B */  beql       $a1, $zero, .L8005CD38
/* 5D84C 8005CC4C AC800000 */   sw        $zero, 0x0($a0)
/* 5D850 8005CC50 44852000 */  mtc1       $a1, $f4
/* 5D854 8005CC54 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D858 8005CC58 44814800 */  mtc1       $at, $f9
/* 5D85C 8005CC5C 468021A1 */  cvt.d.w    $f6, $f4
/* 5D860 8005CC60 44804000 */  mtc1       $zero, $f8
/* 5D864 8005CC64 00000000 */  nop
/* 5D868 8005CC68 46283283 */  div.d      $f10, $f6, $f8
/* 5D86C 8005CC6C 4620540D */  trunc.w.d  $f16, $f10
/* 5D870 8005CC70 44058000 */  mfc1       $a1, $f16
/* 5D874 8005CC74 00000000 */  nop
/* 5D878 8005CC78 28A10015 */  slti       $at, $a1, 0x15
/* 5D87C 8005CC7C 54200003 */  bnel       $at, $zero, .L8005CC8C
/* 5D880 8005CC80 28A1FFEC */   slti      $at, $a1, -0x14
/* 5D884 8005CC84 24050014 */  addiu      $a1, $zero, 0x14
/* 5D888 8005CC88 28A1FFEC */  slti       $at, $a1, -0x14
.L8005CC8C:
/* 5D88C 8005CC8C 50200003 */  beql       $at, $zero, .L8005CC9C
/* 5D890 8005CC90 8C820000 */   lw        $v0, 0x0($a0)
/* 5D894 8005CC94 2405FFEC */  addiu      $a1, $zero, -0x14
/* 5D898 8005CC98 8C820000 */  lw         $v0, 0x0($a0)
.L8005CC9C:
/* 5D89C 8005CC9C 00450019 */  multu      $v0, $a1
/* 5D8A0 8005CCA0 00007812 */  mflo       $t7
/* 5D8A4 8005CCA4 05E10003 */  bgez       $t7, .L8005CCB4
/* 5D8A8 8005CCA8 00000000 */   nop
/* 5D8AC 8005CCAC 03E00008 */  jr         $ra
/* 5D8B0 8005CCB0 AC800000 */   sw        $zero, 0x0($a0)
.L8005CCB4:
/* 5D8B4 8005CCB4 58A00011 */  blezl      $a1, .L8005CCFC
/* 5D8B8 8005CCB8 44828000 */   mtc1      $v0, $f16
/* 5D8BC 8005CCBC 44829000 */  mtc1       $v0, $f18
/* 5D8C0 8005CCC0 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D8C4 8005CCC4 44813800 */  mtc1       $at, $f7
/* 5D8C8 8005CCC8 46809121 */  cvt.d.w    $f4, $f18
/* 5D8CC 8005CCCC 44803000 */  mtc1       $zero, $f6
/* 5D8D0 8005CCD0 00000000 */  nop
/* 5D8D4 8005CCD4 46262200 */  add.d      $f8, $f4, $f6
/* 5D8D8 8005CCD8 4620428D */  trunc.w.d  $f10, $f8
/* 5D8DC 8005CCDC E48A0000 */  swc1       $f10, 0x0($a0)
/* 5D8E0 8005CCE0 8C990000 */  lw         $t9, 0x0($a0)
/* 5D8E4 8005CCE4 00B9082A */  slt        $at, $a1, $t9
/* 5D8E8 8005CCE8 10200013 */  beqz       $at, .L8005CD38
/* 5D8EC 8005CCEC 00000000 */   nop
/* 5D8F0 8005CCF0 03E00008 */  jr         $ra
/* 5D8F4 8005CCF4 AC850000 */   sw        $a1, 0x0($a0)
/* 5D8F8 8005CCF8 44828000 */  mtc1       $v0, $f16
.L8005CCFC:
/* 5D8FC 8005CCFC 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D900 8005CD00 44812800 */  mtc1       $at, $f5
/* 5D904 8005CD04 468084A1 */  cvt.d.w    $f18, $f16
/* 5D908 8005CD08 44802000 */  mtc1       $zero, $f4
/* 5D90C 8005CD0C 00000000 */  nop
/* 5D910 8005CD10 46249181 */  sub.d      $f6, $f18, $f4
/* 5D914 8005CD14 4620320D */  trunc.w.d  $f8, $f6
/* 5D918 8005CD18 E4880000 */  swc1       $f8, 0x0($a0)
/* 5D91C 8005CD1C 8C890000 */  lw         $t1, 0x0($a0)
/* 5D920 8005CD20 0125082A */  slt        $at, $t1, $a1
/* 5D924 8005CD24 10200004 */  beqz       $at, .L8005CD38
/* 5D928 8005CD28 00000000 */   nop
/* 5D92C 8005CD2C 03E00008 */  jr         $ra
/* 5D930 8005CD30 AC850000 */   sw        $a1, 0x0($a0)
/* 5D934 8005CD34 AC800000 */  sw         $zero, 0x0($a0)
.L8005CD38:
/* 5D938 8005CD38 03E00008 */  jr         $ra
/* 5D93C 8005CD3C 00000000 */   nop
