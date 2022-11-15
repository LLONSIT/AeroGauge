glabel func_8005CD40
/* 5D940 8005CD40 3C028014 */  lui        $v0, %hi(D_8013FF38)
/* 5D944 8005CD44 8C42FF38 */  lw         $v0, %lo(D_8013FF38)($v0)
/* 5D948 8005CD48 24010001 */  addiu      $at, $zero, 0x1
/* 5D94C 8005CD4C 14400006 */  bnez       $v0, .L8005CD68
/* 5D950 8005CD50 00000000 */   nop
/* 5D954 8005CD54 3C01800A */  lui        $at, %hi(D_80098630)
/* 5D958 8005CD58 C4248630 */  lwc1       $f4, %lo(D_80098630)($at)
/* 5D95C 8005CD5C AC800050 */  sw         $zero, 0x50($a0)
/* 5D960 8005CD60 03E00008 */  jr         $ra
/* 5D964 8005CD64 E48400DC */   swc1      $f4, 0xDC($a0)
.L8005CD68:
/* 5D968 8005CD68 1441002B */  bne        $v0, $at, .L8005CE18
/* 5D96C 8005CD6C 3C01800A */   lui       $at, %hi(D_80098634)
/* 5D970 8005CD70 C4208634 */  lwc1       $f0, %lo(D_80098634)($at)
/* 5D974 8005CD74 C48600DC */  lwc1       $f6, 0xDC($a0)
/* 5D978 8005CD78 3C0E8014 */  lui        $t6, %hi(D_8013FF90)
/* 5D97C 8005CD7C 4600303C */  c.lt.s     $f6, $f0
/* 5D980 8005CD80 00000000 */  nop
/* 5D984 8005CD84 4502001A */  bc1fl      .L8005CDF0
/* 5D988 8005CD88 44800000 */   mtc1      $zero, $f0
/* 5D98C 8005CD8C 81CEFF90 */  lb         $t6, %lo(D_8013FF90)($t6)
/* 5D990 8005CD90 55C00004 */  bnel       $t6, $zero, .L8005CDA4
/* 5D994 8005CD94 90820008 */   lbu       $v0, 0x8($a0)
/* 5D998 8005CD98 10000002 */  b          .L8005CDA4
/* 5D99C 8005CD9C 24020001 */   addiu     $v0, $zero, 0x1
/* 5D9A0 8005CDA0 90820008 */  lbu        $v0, 0x8($a0)
.L8005CDA4:
/* 5D9A4 8005CDA4 00027900 */  sll        $t7, $v0, 4
/* 5D9A8 8005CDA8 01E27823 */  subu       $t7, $t7, $v0
/* 5D9AC 8005CDAC 8C830050 */  lw         $v1, 0x50($a0)
/* 5D9B0 8005CDB0 000F7840 */  sll        $t7, $t7, 1
/* 5D9B4 8005CDB4 05E10003 */  bgez       $t7, .L8005CDC4
/* 5D9B8 8005CDB8 000FC0C3 */   sra       $t8, $t7, 3
/* 5D9BC 8005CDBC 25E10007 */  addiu      $at, $t7, 0x7
/* 5D9C0 8005CDC0 0001C0C3 */  sra        $t8, $at, 3
.L8005CDC4:
/* 5D9C4 8005CDC4 17030007 */  bne        $t8, $v1, .L8005CDE4
/* 5D9C8 8005CDC8 24790001 */   addiu     $t9, $v1, 0x1
/* 5D9CC 8005CDCC 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* 5D9D0 8005CDD0 44811000 */  mtc1       $at, $f2
/* 5D9D4 8005CDD4 E48000DC */  swc1       $f0, 0xDC($a0)
/* 5D9D8 8005CDD8 AC800050 */  sw         $zero, 0x50($a0)
/* 5D9DC 8005CDDC 1000000A */  b          .L8005CE08
/* 5D9E0 8005CDE0 E4820060 */   swc1      $f2, 0x60($a0)
.L8005CDE4:
/* 5D9E4 8005CDE4 10000008 */  b          .L8005CE08
/* 5D9E8 8005CDE8 AC990050 */   sw        $t9, 0x50($a0)
/* 5D9EC 8005CDEC 44800000 */  mtc1       $zero, $f0
.L8005CDF0:
/* 5D9F0 8005CDF0 C4880060 */  lwc1       $f8, 0x60($a0)
/* 5D9F4 8005CDF4 46080032 */  c.eq.s     $f0, $f8
/* 5D9F8 8005CDF8 00000000 */  nop
/* 5D9FC 8005CDFC 45010002 */  bc1t       .L8005CE08
/* 5DA00 8005CE00 00000000 */   nop
/* 5DA04 8005CE04 E4800060 */  swc1       $f0, 0x60($a0)
.L8005CE08:
/* 5DA08 8005CE08 3C01800A */  lui        $at, %hi(D_80098638)
/* 5DA0C 8005CE0C C42A8638 */  lwc1       $f10, %lo(D_80098638)($at)
/* 5DA10 8005CE10 03E00008 */  jr         $ra
/* 5DA14 8005CE14 E48A00E0 */   swc1      $f10, 0xE0($a0)
.L8005CE18:
/* 5DA18 8005CE18 3C01800A */  lui        $at, %hi(D_8009863C)
/* 5DA1C 8005CE1C C420863C */  lwc1       $f0, %lo(D_8009863C)($at)
/* 5DA20 8005CE20 C49000E0 */  lwc1       $f16, 0xE0($a0)
/* 5DA24 8005CE24 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* 5DA28 8005CE28 46100032 */  c.eq.s     $f0, $f16
/* 5DA2C 8005CE2C 00000000 */  nop
/* 5DA30 8005CE30 45030003 */  bc1tl      .L8005CE40
/* 5DA34 8005CE34 8C820040 */   lw        $v0, 0x40($a0)
/* 5DA38 8005CE38 E48000E0 */  swc1       $f0, 0xE0($a0)
/* 5DA3C 8005CE3C 8C820040 */  lw         $v0, 0x40($a0)
.L8005CE40:
/* 5DA40 8005CE40 00024840 */  sll        $t1, $v0, 1
/* 5DA44 8005CE44 0521000E */  bgez       $t1, .L8005CE80
/* 5DA48 8005CE48 000257C2 */   srl       $t2, $v0, 31
/* 5DA4C 8005CE4C 44810000 */  mtc1       $at, $f0
/* 5DA50 8005CE50 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5DA54 8005CE54 44812000 */  mtc1       $at, $f4
/* 5DA58 8005CE58 C4920060 */  lwc1       $f18, 0x60($a0)
/* 5DA5C 8005CE5C 46049180 */  add.s      $f6, $f18, $f4
/* 5DA60 8005CE60 E4860060 */  swc1       $f6, 0x60($a0)
/* 5DA64 8005CE64 C4880060 */  lwc1       $f8, 0x60($a0)
/* 5DA68 8005CE68 4608003C */  c.lt.s     $f0, $f8
/* 5DA6C 8005CE6C 00000000 */  nop
/* 5DA70 8005CE70 45020016 */  bc1fl      .L8005CECC
/* 5DA74 8005CE74 A0800059 */   sb        $zero, 0x59($a0)
/* 5DA78 8005CE78 10000013 */  b          .L8005CEC8
/* 5DA7C 8005CE7C E4800060 */   swc1      $f0, 0x60($a0)
.L8005CE80:
/* 5DA80 8005CE80 1140000E */  beqz       $t2, .L8005CEBC
/* 5DA84 8005CE84 3C01C1A0 */   lui       $at, (0xC1A00000 >> 16)
/* 5DA88 8005CE88 44811000 */  mtc1       $at, $f2
/* 5DA8C 8005CE8C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5DA90 8005CE90 44818000 */  mtc1       $at, $f16
/* 5DA94 8005CE94 C48A0060 */  lwc1       $f10, 0x60($a0)
/* 5DA98 8005CE98 46105481 */  sub.s      $f18, $f10, $f16
/* 5DA9C 8005CE9C E4920060 */  swc1       $f18, 0x60($a0)
/* 5DAA0 8005CEA0 C4840060 */  lwc1       $f4, 0x60($a0)
/* 5DAA4 8005CEA4 4602203C */  c.lt.s     $f4, $f2
/* 5DAA8 8005CEA8 00000000 */  nop
/* 5DAAC 8005CEAC 45020007 */  bc1fl      .L8005CECC
/* 5DAB0 8005CEB0 A0800059 */   sb        $zero, 0x59($a0)
/* 5DAB4 8005CEB4 10000004 */  b          .L8005CEC8
/* 5DAB8 8005CEB8 E4820060 */   swc1      $f2, 0x60($a0)
.L8005CEBC:
/* 5DABC 8005CEBC 44800000 */  mtc1       $zero, $f0
/* 5DAC0 8005CEC0 00000000 */  nop
/* 5DAC4 8005CEC4 E4800060 */  swc1       $f0, 0x60($a0)
.L8005CEC8:
/* 5DAC8 8005CEC8 A0800059 */  sb         $zero, 0x59($a0)
.L8005CECC:
/* 5DACC 8005CECC 03E00008 */  jr         $ra
/* 5DAD0 8005CED0 00000000 */   nop
