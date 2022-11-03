glabel func_8001D218
/* 1DE18 8001D218 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 1DE1C 8001D21C AFB00018 */  sw         $s0, 0x18($sp)
/* 1DE20 8001D220 3C108014 */  lui        $s0, %hi(D_8013FC88)
/* 1DE24 8001D224 2610FC88 */  addiu      $s0, $s0, %lo(D_8013FC88)
/* 1DE28 8001D228 920E0009 */  lbu        $t6, 0x9($s0)
/* 1DE2C 8001D22C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1DE30 8001D230 AFBF003C */  sw         $ra, 0x3C($sp)
/* 1DE34 8001D234 AFBE0038 */  sw         $fp, 0x38($sp)
/* 1DE38 8001D238 AFB70034 */  sw         $s7, 0x34($sp)
/* 1DE3C 8001D23C AFB60030 */  sw         $s6, 0x30($sp)
/* 1DE40 8001D240 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1DE44 8001D244 AFB40028 */  sw         $s4, 0x28($sp)
/* 1DE48 8001D248 AFB30024 */  sw         $s3, 0x24($sp)
/* 1DE4C 8001D24C AFB20020 */  sw         $s2, 0x20($sp)
/* 1DE50 8001D250 19C00065 */  blez       $t6, .L8001D3E8
/* 1DE54 8001D254 00008825 */   or        $s1, $zero, $zero
/* 1DE58 8001D258 3C128014 */  lui        $s2, %hi(D_8013FFB0)
/* 1DE5C 8001D25C 3C1E8014 */  lui        $fp, %hi(D_8013FF90)
/* 1DE60 8001D260 3C13801A */  lui        $s3, %hi(D_8019DDF0)
/* 1DE64 8001D264 2673DDF0 */  addiu      $s3, $s3, %lo(D_8019DDF0)
/* 1DE68 8001D268 27DEFF90 */  addiu      $fp, $fp, %lo(D_8013FF90)
/* 1DE6C 8001D26C 2652FFB0 */  addiu      $s2, $s2, %lo(D_8013FFB0)
/* 1DE70 8001D270 2417001E */  addiu      $s7, $zero, 0x1E
/* 1DE74 8001D274 24160003 */  addiu      $s6, $zero, 0x3
/* 1DE78 8001D278 24150001 */  addiu      $s5, $zero, 0x1
/* 1DE7C 8001D27C 24140005 */  addiu      $s4, $zero, 0x5
/* 1DE80 8001D280 27A40054 */  addiu      $a0, $sp, 0x54
.L8001D284:
/* 1DE84 8001D284 0C016045 */  jal        func_80058114
/* 1DE88 8001D288 02402825 */   or        $a1, $s2, $zero
/* 1DE8C 8001D28C 1620000C */  bnez       $s1, .L8001D2C0
/* 1DE90 8001D290 8FA20054 */   lw        $v0, 0x54($sp)
/* 1DE94 8001D294 00027B00 */  sll        $t7, $v0, 12
/* 1DE98 8001D298 000FC782 */  srl        $t8, $t7, 30
/* 1DE9C 8001D29C 53000006 */  beql       $t8, $zero, .L8001D2B8
/* 1DEA0 8001D2A0 96090004 */   lhu       $t1, 0x4($s0)
/* 1DEA4 8001D2A4 96190004 */  lhu        $t9, 0x4($s0)
/* 1DEA8 8001D2A8 37280400 */  ori        $t0, $t9, 0x400
/* 1DEAC 8001D2AC 10000004 */  b          .L8001D2C0
/* 1DEB0 8001D2B0 A6080004 */   sh        $t0, 0x4($s0)
/* 1DEB4 8001D2B4 96090004 */  lhu        $t1, 0x4($s0)
.L8001D2B8:
/* 1DEB8 8001D2B8 312AFBFF */  andi       $t2, $t1, 0xFBFF
/* 1DEBC 8001D2BC A60A0004 */  sh         $t2, 0x4($s0)
.L8001D2C0:
/* 1DEC0 8001D2C0 83C40000 */  lb         $a0, 0x0($fp)
/* 1DEC4 8001D2C4 8FA20054 */  lw         $v0, 0x54($sp)
/* 1DEC8 8001D2C8 00114880 */  sll        $t1, $s1, 2
/* 1DECC 8001D2CC 1684000D */  bne        $s4, $a0, .L8001D304
/* 1DED0 8001D2D0 00024380 */   sll       $t0, $v0, 14
/* 1DED4 8001D2D4 1635000B */  bne        $s1, $s5, .L8001D304
/* 1DED8 8001D2D8 00025B00 */   sll       $t3, $v0, 12
/* 1DEDC 8001D2DC 000B6782 */  srl        $t4, $t3, 30
/* 1DEE0 8001D2E0 51800006 */  beql       $t4, $zero, .L8001D2FC
/* 1DEE4 8001D2E4 960F0004 */   lhu       $t7, 0x4($s0)
/* 1DEE8 8001D2E8 960D0004 */  lhu        $t5, 0x4($s0)
/* 1DEEC 8001D2EC 35AE0800 */  ori        $t6, $t5, 0x800
/* 1DEF0 8001D2F0 10000004 */  b          .L8001D304
/* 1DEF4 8001D2F4 A60E0004 */   sh        $t6, 0x4($s0)
/* 1DEF8 8001D2F8 960F0004 */  lhu        $t7, 0x4($s0)
.L8001D2FC:
/* 1DEFC 8001D2FC 31F8F7FF */  andi       $t8, $t7, 0xF7FF
/* 1DF00 8001D300 A6180004 */  sh         $t8, 0x4($s0)
.L8001D304:
/* 1DF04 8001D304 05010032 */  bgez       $t0, .L8001D3D0
/* 1DF08 8001D308 01314821 */   addu      $t1, $t1, $s1
/* 1DF0C 8001D30C 924A0002 */  lbu        $t2, 0x2($s2)
/* 1DF10 8001D310 00094880 */  sll        $t1, $t1, 2
/* 1DF14 8001D314 01314821 */  addu       $t1, $t1, $s1
/* 1DF18 8001D318 00094880 */  sll        $t1, $t1, 2
/* 1DF1C 8001D31C 12CA0005 */  beq        $s6, $t2, .L8001D334
/* 1DF20 8001D320 02092821 */   addu      $a1, $s0, $t1
/* 1DF24 8001D324 240B0003 */  addiu      $t3, $zero, 0x3
/* 1DF28 8001D328 A24B0002 */  sb         $t3, 0x2($s2)
/* 1DF2C 8001D32C AE400050 */  sw         $zero, 0x50($s2)
/* 1DF30 8001D330 83C40000 */  lb         $a0, 0x0($fp)
.L8001D334:
/* 1DF34 8001D334 16200005 */  bnez       $s1, .L8001D34C
/* 1DF38 8001D338 00000000 */   nop
/* 1DF3C 8001D33C 8E0C02B4 */  lw         $t4, 0x2B4($s0)
/* 1DF40 8001D340 15800002 */  bnez       $t4, .L8001D34C
/* 1DF44 8001D344 00000000 */   nop
/* 1DF48 8001D348 AE1602B4 */  sw         $s6, 0x2B4($s0)
.L8001D34C:
/* 1DF4C 8001D34C 56840008 */  bnel       $s4, $a0, .L8001D370
/* 1DF50 8001D350 94A2005E */   lhu       $v0, 0x5E($a1)
/* 1DF54 8001D354 56350006 */  bnel       $s1, $s5, .L8001D370
/* 1DF58 8001D358 94A2005E */   lhu       $v0, 0x5E($a1)
/* 1DF5C 8001D35C 8E0D02B8 */  lw         $t5, 0x2B8($s0)
/* 1DF60 8001D360 55A00003 */  bnel       $t5, $zero, .L8001D370
/* 1DF64 8001D364 94A2005E */   lhu       $v0, 0x5E($a1)
/* 1DF68 8001D368 AE1602B8 */  sw         $s6, 0x2B8($s0)
/* 1DF6C 8001D36C 94A2005E */  lhu        $v0, 0x5E($a1)
.L8001D370:
/* 1DF70 8001D370 284100A0 */  slti       $at, $v0, 0xA0
/* 1DF74 8001D374 10200004 */  beqz       $at, .L8001D388
/* 1DF78 8001D378 00401825 */   or        $v1, $v0, $zero
/* 1DF7C 8001D37C 244E0001 */  addiu      $t6, $v0, 0x1
/* 1DF80 8001D380 10000013 */  b          .L8001D3D0
/* 1DF84 8001D384 A4AE005E */   sh        $t6, 0x5E($a1)
.L8001D388:
/* 1DF88 8001D388 240100A0 */  addiu      $at, $zero, 0xA0
/* 1DF8C 8001D38C 54610011 */  bnel       $v1, $at, .L8001D3D4
/* 1DF90 8001D390 92190009 */   lbu       $t9, 0x9($s0)
/* 1DF94 8001D394 5684000F */  bnel       $s4, $a0, .L8001D3D4
/* 1DF98 8001D398 92190009 */   lbu       $t9, 0x9($s0)
/* 1DF9C 8001D39C 16200006 */  bnez       $s1, .L8001D3B8
/* 1DFA0 8001D3A0 00000000 */   nop
/* 1DFA4 8001D3A4 826F0049 */  lb         $t7, 0x49($s3)
/* 1DFA8 8001D3A8 05E3000A */  bgezl      $t7, .L8001D3D4
/* 1DFAC 8001D3AC 92190009 */   lbu       $t9, 0x9($s0)
/* 1DFB0 8001D3B0 10000007 */  b          .L8001D3D0
/* 1DFB4 8001D3B4 A2770049 */   sb        $s7, 0x49($s3)
.L8001D3B8:
/* 1DFB8 8001D3B8 56350006 */  bnel       $s1, $s5, .L8001D3D4
/* 1DFBC 8001D3BC 92190009 */   lbu       $t9, 0x9($s0)
/* 1DFC0 8001D3C0 82780081 */  lb         $t8, 0x81($s3)
/* 1DFC4 8001D3C4 07030003 */  bgezl      $t8, .L8001D3D4
/* 1DFC8 8001D3C8 92190009 */   lbu       $t9, 0x9($s0)
/* 1DFCC 8001D3CC A2770081 */  sb         $s7, 0x81($s3)
.L8001D3D0:
/* 1DFD0 8001D3D0 92190009 */  lbu        $t9, 0x9($s0)
.L8001D3D4:
/* 1DFD4 8001D3D4 26310001 */  addiu      $s1, $s1, 0x1
/* 1DFD8 8001D3D8 265220A0 */  addiu      $s2, $s2, 0x20A0
/* 1DFDC 8001D3DC 0239082A */  slt        $at, $s1, $t9
/* 1DFE0 8001D3E0 5420FFA8 */  bnel       $at, $zero, .L8001D284
/* 1DFE4 8001D3E4 27A40054 */   addiu     $a0, $sp, 0x54
.L8001D3E8:
/* 1DFE8 8001D3E8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1DFEC 8001D3EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1DFF0 8001D3F0 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1DFF4 8001D3F4 8FB20020 */  lw         $s2, 0x20($sp)
/* 1DFF8 8001D3F8 8FB30024 */  lw         $s3, 0x24($sp)
/* 1DFFC 8001D3FC 8FB40028 */  lw         $s4, 0x28($sp)
/* 1E000 8001D400 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1E004 8001D404 8FB60030 */  lw         $s6, 0x30($sp)
/* 1E008 8001D408 8FB70034 */  lw         $s7, 0x34($sp)
/* 1E00C 8001D40C 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1E010 8001D410 03E00008 */  jr         $ra
/* 1E014 8001D414 27BD0060 */   addiu     $sp, $sp, 0x60
