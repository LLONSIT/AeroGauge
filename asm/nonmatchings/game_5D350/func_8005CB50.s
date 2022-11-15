glabel func_8005CB50
/* 5D750 8005CB50 50A0003B */  beql       $a1, $zero, .L8005CC40
/* 5D754 8005CB54 AC800000 */   sw        $zero, 0x0($a0)
/* 5D758 8005CB58 44852000 */  mtc1       $a1, $f4
/* 5D75C 8005CB5C 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D760 8005CB60 44814800 */  mtc1       $at, $f9
/* 5D764 8005CB64 468021A1 */  cvt.d.w    $f6, $f4
/* 5D768 8005CB68 44804000 */  mtc1       $zero, $f8
/* 5D76C 8005CB6C 00000000 */  nop
/* 5D770 8005CB70 46283283 */  div.d      $f10, $f6, $f8
/* 5D774 8005CB74 4620540D */  trunc.w.d  $f16, $f10
/* 5D778 8005CB78 44058000 */  mfc1       $a1, $f16
/* 5D77C 8005CB7C 00000000 */  nop
/* 5D780 8005CB80 28A10015 */  slti       $at, $a1, 0x15
/* 5D784 8005CB84 54200003 */  bnel       $at, $zero, .L8005CB94
/* 5D788 8005CB88 28A1FFEC */   slti      $at, $a1, -0x14
/* 5D78C 8005CB8C 24050014 */  addiu      $a1, $zero, 0x14
/* 5D790 8005CB90 28A1FFEC */  slti       $at, $a1, -0x14
.L8005CB94:
/* 5D794 8005CB94 50200003 */  beql       $at, $zero, .L8005CBA4
/* 5D798 8005CB98 8C820000 */   lw        $v0, 0x0($a0)
/* 5D79C 8005CB9C 2405FFEC */  addiu      $a1, $zero, -0x14
/* 5D7A0 8005CBA0 8C820000 */  lw         $v0, 0x0($a0)
.L8005CBA4:
/* 5D7A4 8005CBA4 00450019 */  multu      $v0, $a1
/* 5D7A8 8005CBA8 00007812 */  mflo       $t7
/* 5D7AC 8005CBAC 05E10003 */  bgez       $t7, .L8005CBBC
/* 5D7B0 8005CBB0 00000000 */   nop
/* 5D7B4 8005CBB4 03E00008 */  jr         $ra
/* 5D7B8 8005CBB8 AC800000 */   sw        $zero, 0x0($a0)
.L8005CBBC:
/* 5D7BC 8005CBBC 58A00011 */  blezl      $a1, .L8005CC04
/* 5D7C0 8005CBC0 44828000 */   mtc1      $v0, $f16
/* 5D7C4 8005CBC4 44829000 */  mtc1       $v0, $f18
/* 5D7C8 8005CBC8 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D7CC 8005CBCC 44813800 */  mtc1       $at, $f7
/* 5D7D0 8005CBD0 46809121 */  cvt.d.w    $f4, $f18
/* 5D7D4 8005CBD4 44803000 */  mtc1       $zero, $f6
/* 5D7D8 8005CBD8 00000000 */  nop
/* 5D7DC 8005CBDC 46262200 */  add.d      $f8, $f4, $f6
/* 5D7E0 8005CBE0 4620428D */  trunc.w.d  $f10, $f8
/* 5D7E4 8005CBE4 E48A0000 */  swc1       $f10, 0x0($a0)
/* 5D7E8 8005CBE8 8C990000 */  lw         $t9, 0x0($a0)
/* 5D7EC 8005CBEC 00B9082A */  slt        $at, $a1, $t9
/* 5D7F0 8005CBF0 10200013 */  beqz       $at, .L8005CC40
/* 5D7F4 8005CBF4 00000000 */   nop
/* 5D7F8 8005CBF8 03E00008 */  jr         $ra
/* 5D7FC 8005CBFC AC850000 */   sw        $a1, 0x0($a0)
/* 5D800 8005CC00 44828000 */  mtc1       $v0, $f16
.L8005CC04:
/* 5D804 8005CC04 3C014004 */  lui        $at, (0x40040000 >> 16)
/* 5D808 8005CC08 44812800 */  mtc1       $at, $f5
/* 5D80C 8005CC0C 468084A1 */  cvt.d.w    $f18, $f16
/* 5D810 8005CC10 44802000 */  mtc1       $zero, $f4
/* 5D814 8005CC14 00000000 */  nop
/* 5D818 8005CC18 46249181 */  sub.d      $f6, $f18, $f4
/* 5D81C 8005CC1C 4620320D */  trunc.w.d  $f8, $f6
/* 5D820 8005CC20 E4880000 */  swc1       $f8, 0x0($a0)
/* 5D824 8005CC24 8C890000 */  lw         $t1, 0x0($a0)
/* 5D828 8005CC28 0125082A */  slt        $at, $t1, $a1
/* 5D82C 8005CC2C 10200004 */  beqz       $at, .L8005CC40
/* 5D830 8005CC30 00000000 */   nop
/* 5D834 8005CC34 03E00008 */  jr         $ra
/* 5D838 8005CC38 AC850000 */   sw        $a1, 0x0($a0)
/* 5D83C 8005CC3C AC800000 */  sw         $zero, 0x0($a0)
.L8005CC40:
/* 5D840 8005CC40 03E00008 */  jr         $ra
/* 5D844 8005CC44 00000000 */   nop
