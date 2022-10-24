glabel func_8001A020
/* 1AC20 8001A020 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 1AC24 8001A024 3C0E8014 */  lui        $t6, %hi(D_8013FF90)
/* 1AC28 8001A028 81CEFF90 */  lb         $t6, %lo(D_8013FF90)($t6)
/* 1AC2C 8001A02C AFB50030 */  sw         $s5, 0x30($sp)
/* 1AC30 8001A030 AFB4002C */  sw         $s4, 0x2C($sp)
/* 1AC34 8001A034 00C0A025 */  or         $s4, $a2, $zero
/* 1AC38 8001A038 00A0A825 */  or         $s5, $a1, $zero
/* 1AC3C 8001A03C AFBF003C */  sw         $ra, 0x3C($sp)
/* 1AC40 8001A040 AFB70038 */  sw         $s7, 0x38($sp)
/* 1AC44 8001A044 AFB60034 */  sw         $s6, 0x34($sp)
/* 1AC48 8001A048 AFB30028 */  sw         $s3, 0x28($sp)
/* 1AC4C 8001A04C AFB20024 */  sw         $s2, 0x24($sp)
/* 1AC50 8001A050 AFB10020 */  sw         $s1, 0x20($sp)
/* 1AC54 8001A054 AFB0001C */  sw         $s0, 0x1C($sp)
/* 1AC58 8001A058 15C00008 */  bnez       $t6, .L8001A07C
/* 1AC5C 8001A05C AFA40098 */   sw        $a0, 0x98($sp)
/* 1AC60 8001A060 3C0F8014 */  lui        $t7, %hi(D_8013FFA8)
/* 1AC64 8001A064 91EFFFA8 */  lbu        $t7, %lo(D_8013FFA8)($t7)
/* 1AC68 8001A068 24010001 */  addiu      $at, $zero, 0x1
/* 1AC6C 8001A06C 15E10003 */  bne        $t7, $at, .L8001A07C
/* 1AC70 8001A070 00000000 */   nop
/* 1AC74 8001A074 10000003 */  b          .L8001A084
/* 1AC78 8001A078 24160005 */   addiu     $s6, $zero, 0x5
.L8001A07C:
/* 1AC7C 8001A07C 3C168014 */  lui        $s6, %hi(D_8013FC8F)
/* 1AC80 8001A080 82D6FC8F */  lb         $s6, %lo(D_8013FC8F)($s6)
.L8001A084:
/* 1AC84 8001A084 8FB80098 */  lw         $t8, 0x98($sp)
/* 1AC88 8001A088 3C09E700 */  lui        $t1, (0xE7000000 >> 16)
/* 1AC8C 8001A08C 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
/* 1AC90 8001A090 8F190000 */  lw         $t9, 0x0($t8)
/* 1AC94 8001A094 240DFFFF */  addiu      $t5, $zero, -0x1
/* 1AC98 8001A098 3C18B900 */  lui        $t8, (0xB900031D >> 16)
/* 1AC9C 8001A09C AFB90094 */  sw         $t9, 0x94($sp)
/* 1ACA0 8001A0A0 27280008 */  addiu      $t0, $t9, 0x8
/* 1ACA4 8001A0A4 AFA80094 */  sw         $t0, 0x94($sp)
/* 1ACA8 8001A0A8 AF200004 */  sw         $zero, 0x4($t9)
/* 1ACAC 8001A0AC AF290000 */  sw         $t1, 0x0($t9)
/* 1ACB0 8001A0B0 8FAA0094 */  lw         $t2, 0x94($sp)
/* 1ACB4 8001A0B4 3C190050 */  lui        $t9, (0x504240 >> 16)
/* 1ACB8 8001A0B8 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
/* 1ACBC 8001A0BC 254B0008 */  addiu      $t3, $t2, 0x8
/* 1ACC0 8001A0C0 AFAB0094 */  sw         $t3, 0x94($sp)
/* 1ACC4 8001A0C4 AD4D0004 */  sw         $t5, 0x4($t2)
/* 1ACC8 8001A0C8 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1ACCC 8001A0CC 8FAE0094 */  lw         $t6, 0x94($sp)
/* 1ACD0 8001A0D0 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
/* 1ACD4 8001A0D4 27A40094 */  addiu      $a0, $sp, 0x94
/* 1ACD8 8001A0D8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1ACDC 8001A0DC AFAF0094 */  sw         $t7, 0x94($sp)
/* 1ACE0 8001A0E0 ADD90004 */  sw         $t9, 0x4($t6)
/* 1ACE4 8001A0E4 ADD80000 */  sw         $t8, 0x0($t6)
/* 1ACE8 8001A0E8 8EA70010 */  lw         $a3, 0x10($s5)
/* 1ACEC 8001A0EC 50E00009 */  beql       $a3, $zero, .L8001A114
/* 1ACF0 8001A0F0 27B70094 */   addiu     $s7, $sp, 0x94
/* 1ACF4 8001A0F4 96A50000 */  lhu        $a1, 0x0($s5)
/* 1ACF8 8001A0F8 96A60002 */  lhu        $a2, 0x2($s5)
/* 1ACFC 8001A0FC AFA00010 */  sw         $zero, 0x10($sp)
/* 1AD00 8001A100 24A5FFC7 */  addiu      $a1, $a1, -0x39
/* 1AD04 8001A104 30A8FFFF */  andi       $t0, $a1, 0xFFFF
/* 1AD08 8001A108 0C006743 */  jal        func_80019D0C
/* 1AD0C 8001A10C 01002825 */   or        $a1, $t0, $zero
/* 1AD10 8001A110 27B70094 */  addiu      $s7, $sp, 0x94
.L8001A114:
/* 1AD14 8001A114 240400FF */  addiu      $a0, $zero, 0xFF
/* 1AD18 8001A118 240500FF */  addiu      $a1, $zero, 0xFF
/* 1AD1C 8001A11C 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AD20 8001A120 0C007DD7 */  jal        func_8001F75C
/* 1AD24 8001A124 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AD28 8001A128 1AC00023 */  blez       $s6, .L8001A1B8
/* 1AD2C 8001A12C 00008025 */   or        $s0, $zero, $zero
/* 1AD30 8001A130 3C118009 */  lui        $s1, %hi(D_8008B700)
/* 1AD34 8001A134 2631B700 */  addiu      $s1, $s1, %lo(D_8008B700)
/* 1AD38 8001A138 00009825 */  or         $s3, $zero, $zero
.L8001A13C:
/* 1AD3C 8001A13C 92890001 */  lbu        $t1, 0x1($s4)
/* 1AD40 8001A140 26120001 */  addiu      $s2, $s0, 0x1
/* 1AD44 8001A144 240400FF */  addiu      $a0, $zero, 0xFF
/* 1AD48 8001A148 02495007 */  srav       $t2, $t1, $s2
/* 1AD4C 8001A14C 314B0001 */  andi       $t3, $t2, 0x1
/* 1AD50 8001A150 11600008 */  beqz       $t3, .L8001A174
/* 1AD54 8001A154 240500FF */   addiu     $a1, $zero, 0xFF
/* 1AD58 8001A158 240400DC */  addiu      $a0, $zero, 0xDC
/* 1AD5C 8001A15C 24050082 */  addiu      $a1, $zero, 0x82
/* 1AD60 8001A160 24060019 */  addiu      $a2, $zero, 0x19
/* 1AD64 8001A164 0C007DD7 */  jal        func_8001F75C
/* 1AD68 8001A168 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AD6C 8001A16C 10000005 */  b          .L8001A184
/* 1AD70 8001A170 96AC0002 */   lhu       $t4, 0x2($s5)
.L8001A174:
/* 1AD74 8001A174 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AD78 8001A178 0C007DD7 */  jal        func_8001F75C
/* 1AD7C 8001A17C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AD80 8001A180 96AC0002 */  lhu        $t4, 0x2($s5)
.L8001A184:
/* 1AD84 8001A184 96A40000 */  lhu        $a0, 0x0($s5)
/* 1AD88 8001A188 01932821 */  addu       $a1, $t4, $s3
/* 1AD8C 8001A18C 0C007DAD */  jal        func_8001F6B4
/* 1AD90 8001A190 24A50002 */   addiu     $a1, $a1, 0x2
/* 1AD94 8001A194 3C068008 */  lui        $a2, %hi(D_80082B40)
/* 1AD98 8001A198 24C62B40 */  addiu      $a2, $a2, %lo(D_80082B40)
/* 1AD9C 8001A19C 02E02025 */  or         $a0, $s7, $zero
/* 1ADA0 8001A1A0 0C007DE4 */  jal        func_8001F790
/* 1ADA4 8001A1A4 8E250000 */   lw        $a1, 0x0($s1)
/* 1ADA8 8001A1A8 02408025 */  or         $s0, $s2, $zero
/* 1ADAC 8001A1AC 26730008 */  addiu      $s3, $s3, 0x8
/* 1ADB0 8001A1B0 1656FFE2 */  bne        $s2, $s6, .L8001A13C
/* 1ADB4 8001A1B4 26310004 */   addiu     $s1, $s1, 0x4
.L8001A1B8:
/* 1ADB8 8001A1B8 3C0D8014 */  lui        $t5, %hi(D_8013FF90)
/* 1ADBC 8001A1BC 81ADFF90 */  lb         $t5, %lo(D_8013FF90)($t5)
/* 1ADC0 8001A1C0 3C0E8014 */  lui        $t6, %hi(D_8013FFA8)
/* 1ADC4 8001A1C4 55A00006 */  bnel       $t5, $zero, .L8001A1E0
/* 1ADC8 8001A1C8 92820000 */   lbu       $v0, 0x0($s4)
/* 1ADCC 8001A1CC 91CEFFA8 */  lbu        $t6, %lo(D_8013FFA8)($t6)
/* 1ADD0 8001A1D0 24010001 */  addiu      $at, $zero, 0x1
/* 1ADD4 8001A1D4 51C100AA */  beql       $t6, $at, .L8001A480
/* 1ADD8 8001A1D8 92960000 */   lbu       $s6, 0x0($s4)
/* 1ADDC 8001A1DC 92820000 */  lbu        $v0, 0x0($s4)
.L8001A1E0:
/* 1ADE0 8001A1E0 27A40088 */  addiu      $a0, $sp, 0x88
/* 1ADE4 8001A1E4 27A50084 */  addiu      $a1, $sp, 0x84
/* 1ADE8 8001A1E8 1C40001D */  bgtz       $v0, .L8001A260
/* 1ADEC 8001A1EC 27A60080 */   addiu     $a2, $sp, 0x80
/* 1ADF0 8001A1F0 0C00588E */  jal        func_80016238
/* 1ADF4 8001A1F4 8E870008 */   lw        $a3, 0x8($s4)
/* 1ADF8 8001A1F8 8FAF0080 */  lw         $t7, 0x80($sp)
/* 1ADFC 8001A1FC 27B2006C */  addiu      $s2, $sp, 0x6C
/* 1AE00 8001A200 3C058009 */  lui        $a1, %hi(D_80096C08)
/* 1AE04 8001A204 24A56C08 */  addiu      $a1, $a1, %lo(D_80096C08)
/* 1AE08 8001A208 02402025 */  or         $a0, $s2, $zero
/* 1AE0C 8001A20C 8FA60088 */  lw         $a2, 0x88($sp)
/* 1AE10 8001A210 8FA70084 */  lw         $a3, 0x84($sp)
/* 1AE14 8001A214 0C01AE81 */  jal        func_8006BA04
/* 1AE18 8001A218 AFAF0010 */   sw        $t7, 0x10($sp)
/* 1AE1C 8001A21C 240400FF */  addiu      $a0, $zero, 0xFF
/* 1AE20 8001A220 240500FF */  addiu      $a1, $zero, 0xFF
/* 1AE24 8001A224 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AE28 8001A228 0C007DD7 */  jal        func_8001F75C
/* 1AE2C 8001A22C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AE30 8001A230 96A40000 */  lhu        $a0, 0x0($s5)
/* 1AE34 8001A234 96A50002 */  lhu        $a1, 0x2($s5)
/* 1AE38 8001A238 24840015 */  addiu      $a0, $a0, 0x15
/* 1AE3C 8001A23C 0C007DAD */  jal        func_8001F6B4
/* 1AE40 8001A240 24A50002 */   addiu     $a1, $a1, 0x2
/* 1AE44 8001A244 3C068009 */  lui        $a2, %hi(D_8008C8D4)
/* 1AE48 8001A248 24C6C8D4 */  addiu      $a2, $a2, %lo(D_8008C8D4)
/* 1AE4C 8001A24C 02E02025 */  or         $a0, $s7, $zero
/* 1AE50 8001A250 0C007DE4 */  jal        func_8001F790
/* 1AE54 8001A254 02402825 */   or        $a1, $s2, $zero
/* 1AE58 8001A258 1000004D */  b          .L8001A390
/* 1AE5C 8001A25C 00002025 */   or        $a0, $zero, $zero
.L8001A260:
/* 1AE60 8001A260 1840004A */  blez       $v0, .L8001A38C
/* 1AE64 8001A264 24100001 */   addiu     $s0, $zero, 0x1
/* 1AE68 8001A268 3C118009 */  lui        $s1, %hi(D_80096C18)
/* 1AE6C 8001A26C 26316C18 */  addiu      $s1, $s1, %lo(D_80096C18)
/* 1AE70 8001A270 27B2006C */  addiu      $s2, $sp, 0x6C
/* 1AE74 8001A274 02D0082A */  slt        $at, $s6, $s0
.L8001A278:
/* 1AE78 8001A278 14200040 */  bnez       $at, .L8001A37C
/* 1AE7C 8001A27C 27A40088 */   addiu     $a0, $sp, 0x88
/* 1AE80 8001A280 0010C080 */  sll        $t8, $s0, 2
/* 1AE84 8001A284 0298C821 */  addu       $t9, $s4, $t8
/* 1AE88 8001A288 8F270004 */  lw         $a3, 0x4($t9)
/* 1AE8C 8001A28C 27A50084 */  addiu      $a1, $sp, 0x84
/* 1AE90 8001A290 27A60080 */  addiu      $a2, $sp, 0x80
/* 1AE94 8001A294 0C00588E */  jal        func_80016238
/* 1AE98 8001A298 001098C0 */   sll       $s3, $s0, 3
/* 1AE9C 8001A29C 8FA80080 */  lw         $t0, 0x80($sp)
/* 1AEA0 8001A2A0 02402025 */  or         $a0, $s2, $zero
/* 1AEA4 8001A2A4 02202825 */  or         $a1, $s1, $zero
/* 1AEA8 8001A2A8 8FA60088 */  lw         $a2, 0x88($sp)
/* 1AEAC 8001A2AC 8FA70084 */  lw         $a3, 0x84($sp)
/* 1AEB0 8001A2B0 0C01AE81 */  jal        func_8006BA04
/* 1AEB4 8001A2B4 AFA80010 */   sw        $t0, 0x10($sp)
/* 1AEB8 8001A2B8 1A000020 */  blez       $s0, .L8001A33C
/* 1AEBC 8001A2BC 240400FF */   addiu     $a0, $zero, 0xFF
/* 1AEC0 8001A2C0 92890001 */  lbu        $t1, 0x1($s4)
/* 1AEC4 8001A2C4 02095007 */  srav       $t2, $t1, $s0
/* 1AEC8 8001A2C8 314B0001 */  andi       $t3, $t2, 0x1
/* 1AECC 8001A2CC 5160001C */  beql       $t3, $zero, .L8001A340
/* 1AED0 8001A2D0 240500FF */   addiu     $a1, $zero, 0xFF
/* 1AED4 8001A2D4 928D0000 */  lbu        $t5, 0x0($s4)
/* 1AED8 8001A2D8 260C0001 */  addiu      $t4, $s0, 0x1
/* 1AEDC 8001A2DC 240400DC */  addiu      $a0, $zero, 0xDC
/* 1AEE0 8001A2E0 158D0011 */  bne        $t4, $t5, .L8001A328
/* 1AEE4 8001A2E4 24050082 */   addiu     $a1, $zero, 0x82
/* 1AEE8 8001A2E8 828E004C */  lb         $t6, 0x4C($s4)
/* 1AEEC 8001A2EC 3C0F8014 */  lui        $t7, %hi(D_8013FC88)
/* 1AEF0 8001A2F0 29C10015 */  slti       $at, $t6, 0x15
/* 1AEF4 8001A2F4 5420000D */  bnel       $at, $zero, .L8001A32C
/* 1AEF8 8001A2F8 24060019 */   addiu     $a2, $zero, 0x19
/* 1AEFC 8001A2FC 8DEFFC88 */  lw         $t7, %lo(D_8013FC88)($t7)
/* 1AF00 8001A300 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AF04 8001A304 240700FF */  addiu      $a3, $zero, 0xFF
/* 1AF08 8001A308 31F80001 */  andi       $t8, $t7, 0x1
/* 1AF0C 8001A30C 53000007 */  beql       $t8, $zero, .L8001A32C
/* 1AF10 8001A310 24060019 */   addiu     $a2, $zero, 0x19
/* 1AF14 8001A314 240400FF */  addiu      $a0, $zero, 0xFF
/* 1AF18 8001A318 0C007DD7 */  jal        func_8001F75C
/* 1AF1C 8001A31C 240500FF */   addiu     $a1, $zero, 0xFF
/* 1AF20 8001A320 1000000B */  b          .L8001A350
/* 1AF24 8001A324 96B90002 */   lhu       $t9, 0x2($s5)
.L8001A328:
/* 1AF28 8001A328 24060019 */  addiu      $a2, $zero, 0x19
.L8001A32C:
/* 1AF2C 8001A32C 0C007DD7 */  jal        func_8001F75C
/* 1AF30 8001A330 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AF34 8001A334 10000006 */  b          .L8001A350
/* 1AF38 8001A338 96B90002 */   lhu       $t9, 0x2($s5)
.L8001A33C:
/* 1AF3C 8001A33C 240500FF */  addiu      $a1, $zero, 0xFF
.L8001A340:
/* 1AF40 8001A340 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AF44 8001A344 0C007DD7 */  jal        func_8001F75C
/* 1AF48 8001A348 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AF4C 8001A34C 96B90002 */  lhu        $t9, 0x2($s5)
.L8001A350:
/* 1AF50 8001A350 96A40000 */  lhu        $a0, 0x0($s5)
/* 1AF54 8001A354 03332821 */  addu       $a1, $t9, $s3
/* 1AF58 8001A358 24A5FFFA */  addiu      $a1, $a1, -0x6
/* 1AF5C 8001A35C 0C007DAD */  jal        func_8001F6B4
/* 1AF60 8001A360 24840015 */   addiu     $a0, $a0, 0x15
/* 1AF64 8001A364 3C068009 */  lui        $a2, %hi(D_8008C8D4)
/* 1AF68 8001A368 24C6C8D4 */  addiu      $a2, $a2, %lo(D_8008C8D4)
/* 1AF6C 8001A36C 02E02025 */  or         $a0, $s7, $zero
/* 1AF70 8001A370 0C007DE4 */  jal        func_8001F790
/* 1AF74 8001A374 02402825 */   or        $a1, $s2, $zero
/* 1AF78 8001A378 92820000 */  lbu        $v0, 0x0($s4)
.L8001A37C:
/* 1AF7C 8001A37C 26100001 */  addiu      $s0, $s0, 0x1
/* 1AF80 8001A380 0050082A */  slt        $at, $v0, $s0
/* 1AF84 8001A384 5020FFBC */  beql       $at, $zero, .L8001A278
/* 1AF88 8001A388 02D0082A */   slt       $at, $s6, $s0
.L8001A38C:
/* 1AF8C 8001A38C 00002025 */  or         $a0, $zero, $zero
.L8001A390:
/* 1AF90 8001A390 240500C8 */  addiu      $a1, $zero, 0xC8
/* 1AF94 8001A394 00003025 */  or         $a2, $zero, $zero
/* 1AF98 8001A398 0C007DD7 */  jal        func_8001F75C
/* 1AF9C 8001A39C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AFA0 8001A3A0 8282004C */  lb         $v0, 0x4C($s4)
/* 1AFA4 8001A3A4 584000DD */  blezl      $v0, .L8001A71C
/* 1AFA8 8001A3A8 8FA80094 */   lw        $t0, 0x94($sp)
/* 1AFAC 8001A3AC 92880000 */  lbu        $t0, 0x0($s4)
/* 1AFB0 8001A3B0 24010014 */  addiu      $at, $zero, 0x14
/* 1AFB4 8001A3B4 02C88023 */  subu       $s0, $s6, $t0
/* 1AFB8 8001A3B8 26100001 */  addiu      $s0, $s0, 0x1
/* 1AFBC 8001A3BC 5A0000D7 */  blezl      $s0, .L8001A71C
/* 1AFC0 8001A3C0 8FA80094 */   lw        $t0, 0x94($sp)
/* 1AFC4 8001A3C4 0041001A */  div        $zero, $v0, $at
/* 1AFC8 8001A3C8 00004810 */  mfhi       $t1
/* 1AFCC 8001A3CC 2921000B */  slti       $at, $t1, 0xB
/* 1AFD0 8001A3D0 542000D2 */  bnel       $at, $zero, .L8001A71C
/* 1AFD4 8001A3D4 8FA80094 */   lw        $t0, 0x94($sp)
/* 1AFD8 8001A3D8 86A4000C */  lh         $a0, 0xC($s5)
/* 1AFDC 8001A3DC 0C007DAD */  jal        func_8001F6B4
/* 1AFE0 8001A3E0 86A5000E */   lh        $a1, 0xE($s5)
/* 1AFE4 8001A3E4 24010001 */  addiu      $at, $zero, 0x1
/* 1AFE8 8001A3E8 16010009 */  bne        $s0, $at, .L8001A410
/* 1AFEC 8001A3EC 3C118009 */   lui       $s1, %hi(D_8008C31C)
/* 1AFF0 8001A3F0 3C118009 */  lui        $s1, %hi(D_8008C31C)
/* 1AFF4 8001A3F4 3C058009 */  lui        $a1, %hi(D_80096C28)
/* 1AFF8 8001A3F8 2626C31C */  addiu      $a2, $s1, %lo(D_8008C31C)
/* 1AFFC 8001A3FC 24A56C28 */  addiu      $a1, $a1, %lo(D_80096C28)
/* 1B000 8001A400 0C007DE4 */  jal        func_8001F790
/* 1B004 8001A404 02E02025 */   or        $a0, $s7, $zero
/* 1B008 8001A408 100000C4 */  b          .L8001A71C
/* 1B00C 8001A40C 8FA80094 */   lw        $t0, 0x94($sp)
.L8001A410:
/* 1B010 8001A410 00105080 */  sll        $t2, $s0, 2
/* 1B014 8001A414 3C058009 */  lui        $a1, %hi(D_8008B6FC)
/* 1B018 8001A418 00AA2821 */  addu       $a1, $a1, $t2
/* 1B01C 8001A41C 2626C31C */  addiu      $a2, $s1, %lo(D_8008C31C)
/* 1B020 8001A420 8CA5B6FC */  lw         $a1, %lo(D_8008B6FC)($a1)
/* 1B024 8001A424 0C007DE4 */  jal        func_8001F790
/* 1B028 8001A428 02E02025 */   or        $a0, $s7, $zero
/* 1B02C 8001A42C 24040004 */  addiu      $a0, $zero, 0x4
/* 1B030 8001A430 0C007DB2 */  jal        func_8001F6C8
/* 1B034 8001A434 24050003 */   addiu     $a1, $zero, 0x3
/* 1B038 8001A438 3C108009 */  lui        $s0, %hi(D_8008C540)
/* 1B03C 8001A43C 2610C540 */  addiu      $s0, $s0, %lo(D_8008C540)
/* 1B040 8001A440 3C058009 */  lui        $a1, %hi(D_80096C34)
/* 1B044 8001A444 24A56C34 */  addiu      $a1, $a1, %lo(D_80096C34)
/* 1B048 8001A448 02003025 */  or         $a2, $s0, $zero
/* 1B04C 8001A44C 0C007DE4 */  jal        func_8001F790
/* 1B050 8001A450 02E02025 */   or        $a0, $s7, $zero
/* 1B054 8001A454 24040004 */  addiu      $a0, $zero, 0x4
/* 1B058 8001A458 0C007DB2 */  jal        func_8001F6C8
/* 1B05C 8001A45C 00002825 */   or        $a1, $zero, $zero
/* 1B060 8001A460 3C058009 */  lui        $a1, %hi(D_80096C3C)
/* 1B064 8001A464 24A56C3C */  addiu      $a1, $a1, %lo(D_80096C3C)
/* 1B068 8001A468 02E02025 */  or         $a0, $s7, $zero
/* 1B06C 8001A46C 0C007DE4 */  jal        func_8001F790
/* 1B070 8001A470 02003025 */   or        $a2, $s0, $zero
/* 1B074 8001A474 100000A9 */  b          .L8001A71C
/* 1B078 8001A478 8FA80094 */   lw        $t0, 0x94($sp)
/* 1B07C 8001A47C 92960000 */  lbu        $s6, 0x0($s4)
.L8001A480:
/* 1B080 8001A480 24130008 */  addiu      $s3, $zero, 0x8
/* 1B084 8001A484 26910004 */  addiu      $s1, $s4, 0x4
/* 1B088 8001A488 26D6FFFF */  addiu      $s6, $s6, -0x1
/* 1B08C 8001A48C 2AC10006 */  slti       $at, $s6, 0x6
/* 1B090 8001A490 14200002 */  bnez       $at, .L8001A49C
/* 1B094 8001A494 27B2006C */   addiu     $s2, $sp, 0x6C
/* 1B098 8001A498 24160005 */  addiu      $s6, $zero, 0x5
.L8001A49C:
/* 1B09C 8001A49C 1AC0003F */  blez       $s6, .L8001A59C
/* 1B0A0 8001A4A0 24100001 */   addiu     $s0, $zero, 0x1
/* 1B0A4 8001A4A4 26CB0001 */  addiu      $t3, $s6, 0x1
/* 1B0A8 8001A4A8 AFAB0040 */  sw         $t3, 0x40($sp)
.L8001A4AC:
/* 1B0AC 8001A4AC 27A40088 */  addiu      $a0, $sp, 0x88
/* 1B0B0 8001A4B0 27A50084 */  addiu      $a1, $sp, 0x84
/* 1B0B4 8001A4B4 27A60080 */  addiu      $a2, $sp, 0x80
/* 1B0B8 8001A4B8 0C00588E */  jal        func_80016238
/* 1B0BC 8001A4BC 8E270004 */   lw        $a3, 0x4($s1)
/* 1B0C0 8001A4C0 8FAC0080 */  lw         $t4, 0x80($sp)
/* 1B0C4 8001A4C4 3C058009 */  lui        $a1, %hi(D_80096C44)
/* 1B0C8 8001A4C8 24A56C44 */  addiu      $a1, $a1, %lo(D_80096C44)
/* 1B0CC 8001A4CC 02402025 */  or         $a0, $s2, $zero
/* 1B0D0 8001A4D0 8FA60088 */  lw         $a2, 0x88($sp)
/* 1B0D4 8001A4D4 8FA70084 */  lw         $a3, 0x84($sp)
/* 1B0D8 8001A4D8 0C01AE81 */  jal        func_8006BA04
/* 1B0DC 8001A4DC AFAC0010 */   sw        $t4, 0x10($sp)
/* 1B0E0 8001A4E0 928D0001 */  lbu        $t5, 0x1($s4)
/* 1B0E4 8001A4E4 240400FF */  addiu      $a0, $zero, 0xFF
/* 1B0E8 8001A4E8 240500FF */  addiu      $a1, $zero, 0xFF
/* 1B0EC 8001A4EC 020D7007 */  srav       $t6, $t5, $s0
/* 1B0F0 8001A4F0 31CF0001 */  andi       $t7, $t6, 0x1
/* 1B0F4 8001A4F4 11E00008 */  beqz       $t7, .L8001A518
/* 1B0F8 8001A4F8 240600FF */   addiu     $a2, $zero, 0xFF
/* 1B0FC 8001A4FC 240400DC */  addiu      $a0, $zero, 0xDC
/* 1B100 8001A500 24050082 */  addiu      $a1, $zero, 0x82
/* 1B104 8001A504 24060019 */  addiu      $a2, $zero, 0x19
/* 1B108 8001A508 0C007DD7 */  jal        func_8001F75C
/* 1B10C 8001A50C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1B110 8001A510 10000004 */  b          .L8001A524
/* 1B114 8001A514 92980020 */   lbu       $t8, 0x20($s4)
.L8001A518:
/* 1B118 8001A518 0C007DD7 */  jal        func_8001F75C
/* 1B11C 8001A51C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1B120 8001A520 92980020 */  lbu        $t8, 0x20($s4)
.L8001A524:
/* 1B124 8001A524 5618000E */  bnel       $s0, $t8, .L8001A560
/* 1B128 8001A528 96A90002 */   lhu       $t1, 0x2($s5)
/* 1B12C 8001A52C 8299004C */  lb         $t9, 0x4C($s4)
/* 1B130 8001A530 00002025 */  or         $a0, $zero, $zero
/* 1B134 8001A534 00002825 */  or         $a1, $zero, $zero
/* 1B138 8001A538 07210004 */  bgez       $t9, .L8001A54C
/* 1B13C 8001A53C 33280001 */   andi      $t0, $t9, 0x1
/* 1B140 8001A540 11000002 */  beqz       $t0, .L8001A54C
/* 1B144 8001A544 00000000 */   nop
/* 1B148 8001A548 2508FFFE */  addiu      $t0, $t0, -0x2
.L8001A54C:
/* 1B14C 8001A54C 11000003 */  beqz       $t0, .L8001A55C
/* 1B150 8001A550 240600FF */   addiu     $a2, $zero, 0xFF
/* 1B154 8001A554 0C007DD7 */  jal        func_8001F75C
/* 1B158 8001A558 240700FF */   addiu     $a3, $zero, 0xFF
.L8001A55C:
/* 1B15C 8001A55C 96A90002 */  lhu        $t1, 0x2($s5)
.L8001A560:
/* 1B160 8001A560 96A40000 */  lhu        $a0, 0x0($s5)
/* 1B164 8001A564 01332821 */  addu       $a1, $t1, $s3
/* 1B168 8001A568 24A5FFFA */  addiu      $a1, $a1, -0x6
/* 1B16C 8001A56C 0C007DAD */  jal        func_8001F6B4
/* 1B170 8001A570 24840015 */   addiu     $a0, $a0, 0x15
/* 1B174 8001A574 3C068009 */  lui        $a2, %hi(D_8008C8D4)
/* 1B178 8001A578 24C6C8D4 */  addiu      $a2, $a2, %lo(D_8008C8D4)
/* 1B17C 8001A57C 02E02025 */  or         $a0, $s7, $zero
/* 1B180 8001A580 0C007DE4 */  jal        func_8001F790
/* 1B184 8001A584 02402825 */   or        $a1, $s2, $zero
/* 1B188 8001A588 8FAA0040 */  lw         $t2, 0x40($sp)
/* 1B18C 8001A58C 26100001 */  addiu      $s0, $s0, 0x1
/* 1B190 8001A590 26730008 */  addiu      $s3, $s3, 0x8
/* 1B194 8001A594 1550FFC5 */  bne        $t2, $s0, .L8001A4AC
/* 1B198 8001A598 26310004 */   addiu     $s1, $s1, 0x4
.L8001A59C:
/* 1B19C 8001A59C 27B2006C */  addiu      $s2, $sp, 0x6C
/* 1B1A0 8001A5A0 00002025 */  or         $a0, $zero, $zero
/* 1B1A4 8001A5A4 240500C8 */  addiu      $a1, $zero, 0xC8
/* 1B1A8 8001A5A8 00003025 */  or         $a2, $zero, $zero
/* 1B1AC 8001A5AC 0C007DD7 */  jal        func_8001F75C
/* 1B1B0 8001A5B0 240700FF */   addiu     $a3, $zero, 0xFF
/* 1B1B4 8001A5B4 8282004C */  lb         $v0, 0x4C($s4)
/* 1B1B8 8001A5B8 58400058 */  blezl      $v0, .L8001A71C
/* 1B1BC 8001A5BC 8FA80094 */   lw        $t0, 0x94($sp)
/* 1B1C0 8001A5C0 92900000 */  lbu        $s0, 0x0($s4)
/* 1B1C4 8001A5C4 24010014 */  addiu      $at, $zero, 0x14
/* 1B1C8 8001A5C8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1B1CC 8001A5CC 5A000053 */  blezl      $s0, .L8001A71C
/* 1B1D0 8001A5D0 8FA80094 */   lw        $t0, 0x94($sp)
/* 1B1D4 8001A5D4 0041001A */  div        $zero, $v0, $at
/* 1B1D8 8001A5D8 00005810 */  mfhi       $t3
/* 1B1DC 8001A5DC 2961000B */  slti       $at, $t3, 0xB
/* 1B1E0 8001A5E0 1420004D */  bnez       $at, .L8001A718
/* 1B1E4 8001A5E4 27A40054 */   addiu     $a0, $sp, 0x54
/* 1B1E8 8001A5E8 27A50050 */  addiu      $a1, $sp, 0x50
/* 1B1EC 8001A5EC 27A6004C */  addiu      $a2, $sp, 0x4C
/* 1B1F0 8001A5F0 0C00588E */  jal        func_80016238
/* 1B1F4 8001A5F4 8E870004 */   lw        $a3, 0x4($s4)
/* 1B1F8 8001A5F8 86A4000C */  lh         $a0, 0xC($s5)
/* 1B1FC 8001A5FC 86A5000E */  lh         $a1, 0xE($s5)
/* 1B200 8001A600 0C007DAD */  jal        func_8001F6B4
/* 1B204 8001A604 2484FFE0 */   addiu     $a0, $a0, -0x20
/* 1B208 8001A608 24010001 */  addiu      $at, $zero, 0x1
/* 1B20C 8001A60C 1601000A */  bne        $s0, $at, .L8001A638
/* 1B210 8001A610 02402025 */   or        $a0, $s2, $zero
/* 1B214 8001A614 8FAC004C */  lw         $t4, 0x4C($sp)
/* 1B218 8001A618 3C058009 */  lui        $a1, %hi(D_80096C54)
/* 1B21C 8001A61C 24A56C54 */  addiu      $a1, $a1, %lo(D_80096C54)
/* 1B220 8001A620 8FA60054 */  lw         $a2, 0x54($sp)
/* 1B224 8001A624 8FA70050 */  lw         $a3, 0x50($sp)
/* 1B228 8001A628 0C01AE81 */  jal        func_8006BA04
/* 1B22C 8001A62C AFAC0010 */   sw        $t4, 0x10($sp)
/* 1B230 8001A630 10000023 */  b          .L8001A6C0
/* 1B234 8001A634 00000000 */   nop
.L8001A638:
/* 1B238 8001A638 24010002 */  addiu      $at, $zero, 0x2
/* 1B23C 8001A63C 1601000A */  bne        $s0, $at, .L8001A668
/* 1B240 8001A640 02402025 */   or        $a0, $s2, $zero
/* 1B244 8001A644 8FAD004C */  lw         $t5, 0x4C($sp)
/* 1B248 8001A648 3C058009 */  lui        $a1, %hi(D_80096C60)
/* 1B24C 8001A64C 24A56C60 */  addiu      $a1, $a1, %lo(D_80096C60)
/* 1B250 8001A650 8FA60054 */  lw         $a2, 0x54($sp)
/* 1B254 8001A654 8FA70050 */  lw         $a3, 0x50($sp)
/* 1B258 8001A658 0C01AE81 */  jal        func_8006BA04
/* 1B25C 8001A65C AFAD0010 */   sw        $t5, 0x10($sp)
/* 1B260 8001A660 10000017 */  b          .L8001A6C0
/* 1B264 8001A664 00000000 */   nop
.L8001A668:
/* 1B268 8001A668 24010003 */  addiu      $at, $zero, 0x3
/* 1B26C 8001A66C 1601000B */  bne        $s0, $at, .L8001A69C
/* 1B270 8001A670 02402025 */   or        $a0, $s2, $zero
/* 1B274 8001A674 8FAE004C */  lw         $t6, 0x4C($sp)
/* 1B278 8001A678 3C058009 */  lui        $a1, %hi(D_80096C6C)
/* 1B27C 8001A67C 24A56C6C */  addiu      $a1, $a1, %lo(D_80096C6C)
/* 1B280 8001A680 02402025 */  or         $a0, $s2, $zero
/* 1B284 8001A684 8FA60054 */  lw         $a2, 0x54($sp)
/* 1B288 8001A688 8FA70050 */  lw         $a3, 0x50($sp)
/* 1B28C 8001A68C 0C01AE81 */  jal        func_8006BA04
/* 1B290 8001A690 AFAE0010 */   sw        $t6, 0x10($sp)
/* 1B294 8001A694 1000000A */  b          .L8001A6C0
/* 1B298 8001A698 00000000 */   nop
.L8001A69C:
/* 1B29C 8001A69C 8FAF0050 */  lw         $t7, 0x50($sp)
/* 1B2A0 8001A6A0 8FB8004C */  lw         $t8, 0x4C($sp)
/* 1B2A4 8001A6A4 3C058009 */  lui        $a1, %hi(D_80096C78)
/* 1B2A8 8001A6A8 24A56C78 */  addiu      $a1, $a1, %lo(D_80096C78)
/* 1B2AC 8001A6AC 02003025 */  or         $a2, $s0, $zero
/* 1B2B0 8001A6B0 8FA70054 */  lw         $a3, 0x54($sp)
/* 1B2B4 8001A6B4 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1B2B8 8001A6B8 0C01AE81 */  jal        func_8006BA04
/* 1B2BC 8001A6BC AFB80014 */   sw        $t8, 0x14($sp)
.L8001A6C0:
/* 1B2C0 8001A6C0 3C118009 */  lui        $s1, %hi(D_8008C31C)
/* 1B2C4 8001A6C4 2631C31C */  addiu      $s1, $s1, %lo(D_8008C31C)
/* 1B2C8 8001A6C8 02203025 */  or         $a2, $s1, $zero
/* 1B2CC 8001A6CC 02E02025 */  or         $a0, $s7, $zero
/* 1B2D0 8001A6D0 0C007DE4 */  jal        func_8001F790
/* 1B2D4 8001A6D4 02402825 */   or        $a1, $s2, $zero
/* 1B2D8 8001A6D8 86A5000E */  lh         $a1, 0xE($s5)
/* 1B2DC 8001A6DC 86A4000C */  lh         $a0, 0xC($s5)
/* 1B2E0 8001A6E0 0C007DAD */  jal        func_8001F6B4
/* 1B2E4 8001A6E4 24A50010 */   addiu     $a1, $a1, 0x10
/* 1B2E8 8001A6E8 8FB9004C */  lw         $t9, 0x4C($sp)
/* 1B2EC 8001A6EC 3C058009 */  lui        $a1, %hi(D_80096C84)
/* 1B2F0 8001A6F0 24A56C84 */  addiu      $a1, $a1, %lo(D_80096C84)
/* 1B2F4 8001A6F4 02402025 */  or         $a0, $s2, $zero
/* 1B2F8 8001A6F8 8FA60054 */  lw         $a2, 0x54($sp)
/* 1B2FC 8001A6FC 8FA70050 */  lw         $a3, 0x50($sp)
/* 1B300 8001A700 0C01AE81 */  jal        func_8006BA04
/* 1B304 8001A704 AFB90010 */   sw        $t9, 0x10($sp)
/* 1B308 8001A708 02E02025 */  or         $a0, $s7, $zero
/* 1B30C 8001A70C 02402825 */  or         $a1, $s2, $zero
/* 1B310 8001A710 0C007DE4 */  jal        func_8001F790
/* 1B314 8001A714 02203025 */   or        $a2, $s1, $zero
.L8001A718:
/* 1B318 8001A718 8FA80094 */  lw         $t0, 0x94($sp)
.L8001A71C:
/* 1B31C 8001A71C 8FA90098 */  lw         $t1, 0x98($sp)
/* 1B320 8001A720 AD280000 */  sw         $t0, 0x0($t1)
/* 1B324 8001A724 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1B328 8001A728 8FB70038 */  lw         $s7, 0x38($sp)
/* 1B32C 8001A72C 8FB60034 */  lw         $s6, 0x34($sp)
/* 1B330 8001A730 8FB50030 */  lw         $s5, 0x30($sp)
/* 1B334 8001A734 8FB4002C */  lw         $s4, 0x2C($sp)
/* 1B338 8001A738 8FB30028 */  lw         $s3, 0x28($sp)
/* 1B33C 8001A73C 8FB20024 */  lw         $s2, 0x24($sp)
/* 1B340 8001A740 8FB10020 */  lw         $s1, 0x20($sp)
/* 1B344 8001A744 8FB0001C */  lw         $s0, 0x1C($sp)
/* 1B348 8001A748 03E00008 */  jr         $ra
/* 1B34C 8001A74C 27BD0098 */   addiu     $sp, $sp, 0x98
