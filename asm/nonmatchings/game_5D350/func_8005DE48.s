glabel func_8005DE48
/* 5EA48 8005DE48 3C0E8014 */  lui        $t6, %hi(D_8013FC88)
/* 5EA4C 8005DE4C 8DCEFC88 */  lw         $t6, %lo(D_8013FC88)($t6)
/* 5EA50 8005DE50 2401003C */  addiu      $at, $zero, 0x3C
/* 5EA54 8005DE54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5EA58 8005DE58 01C1001B */  divu       $zero, $t6, $at
/* 5EA5C 8005DE5C 00007810 */  mfhi       $t7
/* 5EA60 8005DE60 448F2000 */  mtc1       $t7, $f4
/* 5EA64 8005DE64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5EA68 8005DE68 05E10006 */  bgez       $t7, .L8005DE84
/* 5EA6C 8005DE6C 468021A1 */   cvt.d.w   $f6, $f4
/* 5EA70 8005DE70 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 5EA74 8005DE74 44814800 */  mtc1       $at, $f9
/* 5EA78 8005DE78 44804000 */  mtc1       $zero, $f8
/* 5EA7C 8005DE7C 00000000 */  nop
/* 5EA80 8005DE80 46283180 */  add.d      $f6, $f6, $f8
.L8005DE84:
/* 5EA84 8005DE84 3C01800A */  lui        $at, %hi(D_80098688)
/* 5EA88 8005DE88 D42A8688 */  ldc1       $f10, %lo(D_80098688)($at)
/* 5EA8C 8005DE8C 3C01404E */  lui        $at, (0x404E0000 >> 16)
/* 5EA90 8005DE90 44819800 */  mtc1       $at, $f19
/* 5EA94 8005DE94 462A3402 */  mul.d      $f16, $f6, $f10
/* 5EA98 8005DE98 44809000 */  mtc1       $zero, $f18
/* 5EA9C 8005DE9C 3C01800A */  lui        $at, %hi(D_80098690)
/* 5EAA0 8005DEA0 D4288690 */  ldc1       $f8, %lo(D_80098690)($at)
/* 5EAA4 8005DEA4 AFA40018 */  sw         $a0, 0x18($sp)
/* 5EAA8 8005DEA8 46328103 */  div.d      $f4, $f16, $f18
/* 5EAAC 8005DEAC 46282182 */  mul.d      $f6, $f4, $f8
/* 5EAB0 8005DEB0 0C01AB20 */  jal        __cosf
/* 5EAB4 8005DEB4 46203320 */   cvt.s.d   $f12, $f6
/* 5EAB8 8005DEB8 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* 5EABC 8005DEBC 44815000 */  mtc1       $at, $f10
/* 5EAC0 8005DEC0 3C0142DC */  lui        $at, (0x42DC0000 >> 16)
/* 5EAC4 8005DEC4 44819000 */  mtc1       $at, $f18
/* 5EAC8 8005DEC8 460A0402 */  mul.s      $f16, $f0, $f10
/* 5EACC 8005DECC 24060001 */  addiu      $a2, $zero, 0x1
/* 5EAD0 8005DED0 44801000 */  mtc1       $zero, $f2
/* 5EAD4 8005DED4 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5EAD8 8005DED8 8FA40018 */  lw         $a0, 0x18($sp)
/* 5EADC 8005DEDC 241900FF */  addiu      $t9, $zero, 0xFF
/* 5EAE0 8005DEE0 240D0014 */  addiu      $t5, $zero, 0x14
/* 5EAE4 8005DEE4 46128100 */  add.s      $f4, $f16, $f18
/* 5EAE8 8005DEE8 4458F800 */  cfc1       $t8, $31
/* 5EAEC 8005DEEC 44C6F800 */  ctc1       $a2, $31
/* 5EAF0 8005DEF0 00000000 */  nop
/* 5EAF4 8005DEF4 46002224 */  cvt.w.s    $f8, $f4
/* 5EAF8 8005DEF8 4446F800 */  cfc1       $a2, $31
/* 5EAFC 8005DEFC 00000000 */  nop
/* 5EB00 8005DF00 30C60078 */  andi       $a2, $a2, 0x78
/* 5EB04 8005DF04 50C00013 */  beql       $a2, $zero, .L8005DF54
/* 5EB08 8005DF08 44064000 */   mfc1      $a2, $f8
/* 5EB0C 8005DF0C 44814000 */  mtc1       $at, $f8
/* 5EB10 8005DF10 24060001 */  addiu      $a2, $zero, 0x1
/* 5EB14 8005DF14 46082201 */  sub.s      $f8, $f4, $f8
/* 5EB18 8005DF18 44C6F800 */  ctc1       $a2, $31
/* 5EB1C 8005DF1C 00000000 */  nop
/* 5EB20 8005DF20 46004224 */  cvt.w.s    $f8, $f8
/* 5EB24 8005DF24 4446F800 */  cfc1       $a2, $31
/* 5EB28 8005DF28 00000000 */  nop
/* 5EB2C 8005DF2C 30C60078 */  andi       $a2, $a2, 0x78
/* 5EB30 8005DF30 14C00005 */  bnez       $a2, .L8005DF48
/* 5EB34 8005DF34 00000000 */   nop
/* 5EB38 8005DF38 44064000 */  mfc1       $a2, $f8
/* 5EB3C 8005DF3C 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5EB40 8005DF40 10000007 */  b          .L8005DF60
/* 5EB44 8005DF44 00C13025 */   or        $a2, $a2, $at
.L8005DF48:
/* 5EB48 8005DF48 10000005 */  b          .L8005DF60
/* 5EB4C 8005DF4C 2406FFFF */   addiu     $a2, $zero, -0x1
/* 5EB50 8005DF50 44064000 */  mfc1       $a2, $f8
.L8005DF54:
/* 5EB54 8005DF54 00000000 */  nop
/* 5EB58 8005DF58 04C0FFFB */  bltz       $a2, .L8005DF48
/* 5EB5C 8005DF5C 00000000 */   nop
.L8005DF60:
/* 5EB60 8005DF60 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 5EB64 8005DF64 44D8F800 */  ctc1       $t8, $31
/* 5EB68 8005DF68 44815000 */  mtc1       $at, $f10
/* 5EB6C 8005DF6C C4860228 */  lwc1       $f6, 0x228($a0)
/* 5EB70 8005DF70 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 5EB74 8005DF74 44819000 */  mtc1       $at, $f18
/* 5EB78 8005DF78 460A3401 */  sub.s      $f16, $f6, $f10
/* 5EB7C 8005DF7C 44994000 */  mtc1       $t9, $f8
/* 5EB80 8005DF80 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 5EB84 8005DF84 44817000 */  mtc1       $at, $f14
/* 5EB88 8005DF88 46128303 */  div.s      $f12, $f16, $f18
/* 5EB8C 8005DF8C 30CA00FF */  andi       $t2, $a2, 0xFF
/* 5EB90 8005DF90 2418007F */  addiu      $t8, $zero, 0x7F
/* 5EB94 8005DF94 468041A0 */  cvt.s.w    $f6, $f8
/* 5EB98 8005DF98 4602603C */  c.lt.s     $f12, $f2
/* 5EB9C 8005DF9C 00000000 */  nop
/* 5EBA0 8005DFA0 45020003 */  bc1fl      .L8005DFB0
/* 5EBA4 8005DFA4 460C703C */   c.lt.s    $f14, $f12
/* 5EBA8 8005DFA8 46001306 */  mov.s      $f12, $f2
/* 5EBAC 8005DFAC 460C703C */  c.lt.s     $f14, $f12
.L8005DFB0:
/* 5EBB0 8005DFB0 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* 5EBB4 8005DFB4 44812000 */  mtc1       $at, $f4
/* 5EBB8 8005DFB8 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5EBBC 8005DFBC 45020003 */  bc1fl      .L8005DFCC
/* 5EBC0 8005DFC0 460C7001 */   sub.s     $f0, $f14, $f12
/* 5EBC4 8005DFC4 46007306 */  mov.s      $f12, $f14
/* 5EBC8 8005DFC8 460C7001 */  sub.s      $f0, $f14, $f12
.L8005DFCC:
/* 5EBCC 8005DFCC 46046082 */  mul.s      $f2, $f12, $f4
/* 5EBD0 8005DFD0 24030001 */  addiu      $v1, $zero, 0x1
/* 5EBD4 8005DFD4 240200FF */  addiu      $v0, $zero, 0xFF
/* 5EBD8 8005DFD8 46060282 */  mul.s      $f10, $f0, $f6
/* 5EBDC 8005DFDC 46025400 */  add.s      $f16, $f10, $f2
/* 5EBE0 8005DFE0 4448F800 */  cfc1       $t0, $31
/* 5EBE4 8005DFE4 44C3F800 */  ctc1       $v1, $31
/* 5EBE8 8005DFE8 00000000 */  nop
/* 5EBEC 8005DFEC 460084A4 */  cvt.w.s    $f18, $f16
/* 5EBF0 8005DFF0 4443F800 */  cfc1       $v1, $31
/* 5EBF4 8005DFF4 00000000 */  nop
/* 5EBF8 8005DFF8 30630078 */  andi       $v1, $v1, 0x78
/* 5EBFC 8005DFFC 50600013 */  beql       $v1, $zero, .L8005E04C
/* 5EC00 8005E000 44039000 */   mfc1      $v1, $f18
/* 5EC04 8005E004 44819000 */  mtc1       $at, $f18
/* 5EC08 8005E008 24030001 */  addiu      $v1, $zero, 0x1
/* 5EC0C 8005E00C 46128481 */  sub.s      $f18, $f16, $f18
/* 5EC10 8005E010 44C3F800 */  ctc1       $v1, $31
/* 5EC14 8005E014 00000000 */  nop
/* 5EC18 8005E018 460094A4 */  cvt.w.s    $f18, $f18
/* 5EC1C 8005E01C 4443F800 */  cfc1       $v1, $31
/* 5EC20 8005E020 00000000 */  nop
/* 5EC24 8005E024 30630078 */  andi       $v1, $v1, 0x78
/* 5EC28 8005E028 14600005 */  bnez       $v1, .L8005E040
/* 5EC2C 8005E02C 00000000 */   nop
/* 5EC30 8005E030 44039000 */  mfc1       $v1, $f18
/* 5EC34 8005E034 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5EC38 8005E038 10000007 */  b          .L8005E058
/* 5EC3C 8005E03C 00611825 */   or        $v1, $v1, $at
.L8005E040:
/* 5EC40 8005E040 10000005 */  b          .L8005E058
/* 5EC44 8005E044 2403FFFF */   addiu     $v1, $zero, -0x1
/* 5EC48 8005E048 44039000 */  mfc1       $v1, $f18
.L8005E04C:
/* 5EC4C 8005E04C 00000000 */  nop
/* 5EC50 8005E050 0460FFFB */  bltz       $v1, .L8005E040
/* 5EC54 8005E054 00000000 */   nop
.L8005E058:
/* 5EC58 8005E058 44C8F800 */  ctc1       $t0, $31
/* 5EC5C 8005E05C 448A2000 */  mtc1       $t2, $f4
/* 5EC60 8005E060 306900FF */  andi       $t1, $v1, 0xFF
/* 5EC64 8005E064 01201825 */  or         $v1, $t1, $zero
/* 5EC68 8005E068 05410005 */  bgez       $t2, .L8005E080
/* 5EC6C 8005E06C 46802220 */   cvt.s.w   $f8, $f4
/* 5EC70 8005E070 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 5EC74 8005E074 44813000 */  mtc1       $at, $f6
/* 5EC78 8005E078 00000000 */  nop
/* 5EC7C 8005E07C 46064200 */  add.s      $f8, $f8, $f6
.L8005E080:
/* 5EC80 8005E080 46080282 */  mul.s      $f10, $f0, $f8
/* 5EC84 8005E084 24050001 */  addiu      $a1, $zero, 0x1
/* 5EC88 8005E088 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5EC8C 8005E08C 46025400 */  add.s      $f16, $f10, $f2
/* 5EC90 8005E090 444BF800 */  cfc1       $t3, $31
/* 5EC94 8005E094 44C5F800 */  ctc1       $a1, $31
/* 5EC98 8005E098 00000000 */  nop
/* 5EC9C 8005E09C 460084A4 */  cvt.w.s    $f18, $f16
/* 5ECA0 8005E0A0 4445F800 */  cfc1       $a1, $31
/* 5ECA4 8005E0A4 00000000 */  nop
/* 5ECA8 8005E0A8 30A50078 */  andi       $a1, $a1, 0x78
/* 5ECAC 8005E0AC 50A00013 */  beql       $a1, $zero, .L8005E0FC
/* 5ECB0 8005E0B0 44059000 */   mfc1      $a1, $f18
/* 5ECB4 8005E0B4 44819000 */  mtc1       $at, $f18
/* 5ECB8 8005E0B8 24050001 */  addiu      $a1, $zero, 0x1
/* 5ECBC 8005E0BC 46128481 */  sub.s      $f18, $f16, $f18
/* 5ECC0 8005E0C0 44C5F800 */  ctc1       $a1, $31
/* 5ECC4 8005E0C4 00000000 */  nop
/* 5ECC8 8005E0C8 460094A4 */  cvt.w.s    $f18, $f18
/* 5ECCC 8005E0CC 4445F800 */  cfc1       $a1, $31
/* 5ECD0 8005E0D0 00000000 */  nop
/* 5ECD4 8005E0D4 30A50078 */  andi       $a1, $a1, 0x78
/* 5ECD8 8005E0D8 14A00005 */  bnez       $a1, .L8005E0F0
/* 5ECDC 8005E0DC 00000000 */   nop
/* 5ECE0 8005E0E0 44059000 */  mfc1       $a1, $f18
/* 5ECE4 8005E0E4 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5ECE8 8005E0E8 10000007 */  b          .L8005E108
/* 5ECEC 8005E0EC 00A12825 */   or        $a1, $a1, $at
.L8005E0F0:
/* 5ECF0 8005E0F0 10000005 */  b          .L8005E108
/* 5ECF4 8005E0F4 2405FFFF */   addiu     $a1, $zero, -0x1
/* 5ECF8 8005E0F8 44059000 */  mfc1       $a1, $f18
.L8005E0FC:
/* 5ECFC 8005E0FC 00000000 */  nop
/* 5ED00 8005E100 04A0FFFB */  bltz       $a1, .L8005E0F0
/* 5ED04 8005E104 00000000 */   nop
.L8005E108:
/* 5ED08 8005E108 44CBF800 */  ctc1       $t3, $31
/* 5ED0C 8005E10C 448D2000 */  mtc1       $t5, $f4
/* 5ED10 8005E110 24070001 */  addiu      $a3, $zero, 0x1
/* 5ED14 8005E114 30AC00FF */  andi       $t4, $a1, 0xFF
/* 5ED18 8005E118 468021A0 */  cvt.s.w    $f6, $f4
/* 5ED1C 8005E11C 01802825 */  or         $a1, $t4, $zero
/* 5ED20 8005E120 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* 5ED24 8005E124 46060202 */  mul.s      $f8, $f0, $f6
/* 5ED28 8005E128 46024280 */  add.s      $f10, $f8, $f2
/* 5ED2C 8005E12C 444EF800 */  cfc1       $t6, $31
/* 5ED30 8005E130 44C7F800 */  ctc1       $a3, $31
/* 5ED34 8005E134 00000000 */  nop
/* 5ED38 8005E138 46005424 */  cvt.w.s    $f16, $f10
/* 5ED3C 8005E13C 4447F800 */  cfc1       $a3, $31
/* 5ED40 8005E140 00000000 */  nop
/* 5ED44 8005E144 30E70078 */  andi       $a3, $a3, 0x78
/* 5ED48 8005E148 50E00013 */  beql       $a3, $zero, .L8005E198
/* 5ED4C 8005E14C 44078000 */   mfc1      $a3, $f16
/* 5ED50 8005E150 44818000 */  mtc1       $at, $f16
/* 5ED54 8005E154 24070001 */  addiu      $a3, $zero, 0x1
/* 5ED58 8005E158 46105401 */  sub.s      $f16, $f10, $f16
/* 5ED5C 8005E15C 44C7F800 */  ctc1       $a3, $31
/* 5ED60 8005E160 00000000 */  nop
/* 5ED64 8005E164 46008424 */  cvt.w.s    $f16, $f16
/* 5ED68 8005E168 4447F800 */  cfc1       $a3, $31
/* 5ED6C 8005E16C 00000000 */  nop
/* 5ED70 8005E170 30E70078 */  andi       $a3, $a3, 0x78
/* 5ED74 8005E174 14E00005 */  bnez       $a3, .L8005E18C
/* 5ED78 8005E178 00000000 */   nop
/* 5ED7C 8005E17C 44078000 */  mfc1       $a3, $f16
/* 5ED80 8005E180 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 5ED84 8005E184 10000007 */  b          .L8005E1A4
/* 5ED88 8005E188 00E13825 */   or        $a3, $a3, $at
.L8005E18C:
/* 5ED8C 8005E18C 10000005 */  b          .L8005E1A4
/* 5ED90 8005E190 2407FFFF */   addiu     $a3, $zero, -0x1
/* 5ED94 8005E194 44078000 */  mfc1       $a3, $f16
.L8005E198:
/* 5ED98 8005E198 00000000 */  nop
/* 5ED9C 8005E19C 04E0FFFB */  bltz       $a3, .L8005E18C
/* 5EDA0 8005E1A0 00000000 */   nop
.L8005E1A4:
/* 5EDA4 8005E1A4 A0830010 */  sb         $v1, 0x10($a0)
/* 5EDA8 8005E1A8 A0850011 */  sb         $a1, 0x11($a0)
/* 5EDAC 8005E1AC A0870012 */  sb         $a3, 0x12($a0)
/* 5EDB0 8005E1B0 A0820013 */  sb         $v0, 0x13($a0)
/* 5EDB4 8005E1B4 A0820014 */  sb         $v0, 0x14($a0)
/* 5EDB8 8005E1B8 A0820015 */  sb         $v0, 0x15($a0)
/* 5EDBC 8005E1BC A0800016 */  sb         $zero, 0x16($a0)
/* 5EDC0 8005E1C0 A0980017 */  sb         $t8, 0x17($a0)
/* 5EDC4 8005E1C4 A0800018 */  sb         $zero, 0x18($a0)
/* 5EDC8 8005E1C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 5EDCC 8005E1CC 44CEF800 */  ctc1       $t6, $31
/* 5EDD0 8005E1D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5EDD4 8005E1D4 03E00008 */  jr         $ra
/* 5EDD8 8005E1D8 00000000 */   nop
