glabel func_8001E218
/* 1EE18 8001E218 3C048014 */  lui        $a0, %hi(D_8013FC88)
/* 1EE1C 8001E21C 2484FC88 */  addiu      $a0, $a0, %lo(D_8013FC88)
/* 1EE20 8001E220 94820004 */  lhu        $v0, 0x4($a0)
/* 1EE24 8001E224 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EE28 8001E228 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EE2C 8001E22C 304E0001 */  andi       $t6, $v0, 0x1
/* 1EE30 8001E230 11C00019 */  beqz       $t6, .L8001E298
/* 1EE34 8001E234 3C0B8009 */   lui       $t3, %hi(D_8008B830)
/* 1EE38 8001E238 3C0F8009 */  lui        $t7, %hi(D_8008B830)
/* 1EE3C 8001E23C 8DEFB830 */  lw         $t7, %lo(D_8008B830)($t7)
/* 1EE40 8001E240 2401001E */  addiu      $at, $zero, 0x1E
/* 1EE44 8001E244 3C028011 */  lui        $v0, %hi(D_80109C28)
/* 1EE48 8001E248 01E1001A */  div        $zero, $t7, $at
/* 1EE4C 8001E24C 0000C010 */  mfhi       $t8
/* 1EE50 8001E250 24429C28 */  addiu      $v0, $v0, %lo(D_80109C28)
/* 1EE54 8001E254 1700000A */  bnez       $t8, .L8001E280
/* 1EE58 8001E258 24197FFF */   addiu     $t9, $zero, 0x7FFF
/* 1EE5C 8001E25C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 1EE60 8001E260 44812000 */  mtc1       $at, $f4
/* 1EE64 8001E264 24080040 */  addiu      $t0, $zero, 0x40
/* 1EE68 8001E268 A459009C */  sh         $t9, 0x9C($v0)
/* 1EE6C 8001E26C A048009E */  sb         $t0, 0x9E($v0)
/* 1EE70 8001E270 24040017 */  addiu      $a0, $zero, 0x17
/* 1EE74 8001E274 24050006 */  addiu      $a1, $zero, 0x6
/* 1EE78 8001E278 0C0004F0 */  jal        func_800013C0
/* 1EE7C 8001E27C E44400A4 */   swc1      $f4, 0xA4($v0)
.L8001E280:
/* 1EE80 8001E280 3C098009 */  lui        $t1, %hi(D_8008B830)
/* 1EE84 8001E284 8D29B830 */  lw         $t1, %lo(D_8008B830)($t1)
/* 1EE88 8001E288 3C018009 */  lui        $at, %hi(D_8008B830)
/* 1EE8C 8001E28C 252A0001 */  addiu      $t2, $t1, 0x1
/* 1EE90 8001E290 10000027 */  b          .L8001E330
/* 1EE94 8001E294 AC2AB830 */   sw        $t2, %lo(D_8008B830)($at)
.L8001E298:
/* 1EE98 8001E298 8D6BB830 */  lw         $t3, %lo(D_8008B830)($t3)
/* 1EE9C 8001E29C 3C018009 */  lui        $at, %hi(D_8008B830)
/* 1EEA0 8001E2A0 304C0C00 */  andi       $t4, $v0, 0xC00
/* 1EEA4 8001E2A4 11600002 */  beqz       $t3, .L8001E2B0
/* 1EEA8 8001E2A8 00000000 */   nop
/* 1EEAC 8001E2AC AC20B830 */  sw         $zero, %lo(D_8008B830)($at)
.L8001E2B0:
/* 1EEB0 8001E2B0 51800020 */  beql       $t4, $zero, .L8001E334
/* 1EEB4 8001E2B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1EEB8 8001E2B8 8C8D0000 */  lw         $t5, 0x0($a0)
/* 1EEBC 8001E2BC 24010015 */  addiu      $at, $zero, 0x15
/* 1EEC0 8001E2C0 24060040 */  addiu      $a2, $zero, 0x40
/* 1EEC4 8001E2C4 01A1001B */  divu       $zero, $t5, $at
/* 1EEC8 8001E2C8 00007010 */  mfhi       $t6
/* 1EECC 8001E2CC 3C0F8014 */  lui        $t7, %hi(D_8013FF90)
/* 1EED0 8001E2D0 15C00017 */  bnez       $t6, .L8001E330
/* 1EED4 8001E2D4 3C028011 */   lui       $v0, %hi(D_80109C28)
/* 1EED8 8001E2D8 81EFFF90 */  lb         $t7, %lo(D_8013FF90)($t7)
/* 1EEDC 8001E2DC 24010005 */  addiu      $at, $zero, 0x5
/* 1EEE0 8001E2E0 24429C28 */  addiu      $v0, $v0, %lo(D_80109C28)
/* 1EEE4 8001E2E4 15E1000D */  bne        $t7, $at, .L8001E31C
/* 1EEE8 8001E2E8 24183FFF */   addiu     $t8, $zero, 0x3FFF
/* 1EEEC 8001E2EC 24010400 */  addiu      $at, $zero, 0x400
/* 1EEF0 8001E2F0 11810007 */  beq        $t4, $at, .L8001E310
/* 1EEF4 8001E2F4 24010800 */   addiu     $at, $zero, 0x800
/* 1EEF8 8001E2F8 11810007 */  beq        $t4, $at, .L8001E318
/* 1EEFC 8001E2FC 24010C00 */   addiu     $at, $zero, 0xC00
/* 1EF00 8001E300 51810007 */  beql       $t4, $at, .L8001E320
/* 1EF04 8001E304 A458009C */   sh        $t8, 0x9C($v0)
/* 1EF08 8001E308 10000005 */  b          .L8001E320
/* 1EF0C 8001E30C A458009C */   sh        $t8, 0x9C($v0)
.L8001E310:
/* 1EF10 8001E310 10000002 */  b          .L8001E31C
/* 1EF14 8001E314 24060020 */   addiu     $a2, $zero, 0x20
.L8001E318:
/* 1EF18 8001E318 24060060 */  addiu      $a2, $zero, 0x60
.L8001E31C:
/* 1EF1C 8001E31C A458009C */  sh         $t8, 0x9C($v0)
.L8001E320:
/* 1EF20 8001E320 A046009E */  sb         $a2, 0x9E($v0)
/* 1EF24 8001E324 24040020 */  addiu      $a0, $zero, 0x20
/* 1EF28 8001E328 0C0004F0 */  jal        func_800013C0
/* 1EF2C 8001E32C 24050006 */   addiu     $a1, $zero, 0x6
.L8001E330:
/* 1EF30 8001E330 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001E334:
/* 1EF34 8001E334 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1EF38 8001E338 03E00008 */  jr         $ra
/* 1EF3C 8001E33C 00000000 */   nop
