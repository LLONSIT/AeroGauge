glabel func_8000D188
/* DD88 8000D188 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DD8C 8000D18C AFBF0014 */  sw         $ra, 0x14($sp)
/* DD90 8000D190 948E0014 */  lhu        $t6, 0x14($a0)
/* DD94 8000D194 44808000 */  mtc1       $zero, $f16
/* DD98 8000D198 11C00007 */  beqz       $t6, .L8000D1B8
/* DD9C 8000D19C 00000000 */   nop
/* DDA0 8000D1A0 44801000 */  mtc1       $zero, $f2
/* DDA4 8000D1A4 A4800014 */  sh         $zero, 0x14($a0)
/* DDA8 8000D1A8 3C018014 */  lui        $at, %hi(D_8013F7D0)
/* DDAC 8000D1AC E422F7D0 */  swc1       $f2, %lo(D_8013F7D0)($at)
/* DDB0 8000D1B0 3C018014 */  lui        $at, %hi(D_8013F7D4)
/* DDB4 8000D1B4 E422F7D4 */  swc1       $f2, %lo(D_8013F7D4)($at)
.L8000D1B8:
/* DDB8 8000D1B8 3C018014 */  lui        $at, %hi(D_8013F7D0)
/* DDBC 8000D1BC C422F7D0 */  lwc1       $f2, %lo(D_8013F7D0)($at)
/* DDC0 8000D1C0 3C018014 */  lui        $at, %hi(D_8013F7D4)
/* DDC4 8000D1C4 C42CF7D4 */  lwc1       $f12, %lo(D_8013F7D4)($at)
/* DDC8 8000D1C8 3C014060 */  lui        $at, (0x40600000 >> 16)
/* DDCC 8000D1CC 44812000 */  mtc1       $at, $f4
/* DDD0 8000D1D0 3C014248 */  lui        $at, (0x42480000 >> 16)
/* DDD4 8000D1D4 44813000 */  mtc1       $at, $f6
/* DDD8 8000D1D8 3C014000 */  lui        $at, (0x40000000 >> 16)
/* DDDC 8000D1DC 44818800 */  mtc1       $at, $f17
/* DDE0 8000D1E0 460012A1 */  cvt.d.s    $f10, $f2
/* DDE4 8000D1E4 E4820028 */  swc1       $f2, 0x28($a0)
/* DDE8 8000D1E8 46305481 */  sub.d      $f18, $f10, $f16
/* DDEC 8000D1EC 44800000 */  mtc1       $zero, $f0
/* DDF0 8000D1F0 3C018014 */  lui        $at, %hi(D_8013F7D0)
/* DDF4 8000D1F4 460C3201 */  sub.s      $f8, $f6, $f12
/* DDF8 8000D1F8 E484002C */  swc1       $f4, 0x2C($a0)
/* DDFC 8000D1FC E4800020 */  swc1       $f0, 0x20($a0)
/* DE00 8000D200 462090A0 */  cvt.s.d    $f2, $f18
/* DE04 8000D204 E4880024 */  swc1       $f8, 0x24($a0)
/* DE08 8000D208 E480001C */  swc1       $f0, 0x1C($a0)
/* DE0C 8000D20C E4800018 */  swc1       $f0, 0x18($a0)
/* DE10 8000D210 4600103E */  c.le.s     $f2, $f0
/* DE14 8000D214 E422F7D0 */  swc1       $f2, %lo(D_8013F7D0)($at)
/* DE18 8000D218 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* DE1C 8000D21C 45000004 */  bc1f       .L8000D230
/* DE20 8000D220 00000000 */   nop
/* DE24 8000D224 44811000 */  mtc1       $at, $f2
/* DE28 8000D228 3C018014 */  lui        $at, %hi(D_8013F7D0)
/* DE2C 8000D22C E422F7D0 */  swc1       $f2, %lo(D_8013F7D0)($at)
.L8000D230:
/* DE30 8000D230 3C018009 */  lui        $at, %hi(D_80095420)
/* DE34 8000D234 D4265420 */  ldc1       $f6, %lo(D_80095420)($at)
/* DE38 8000D238 46006121 */  cvt.d.s    $f4, $f12
/* DE3C 8000D23C 3C018014 */  lui        $at, %hi(D_8013F7D4)
/* DE40 8000D240 46262200 */  add.d      $f8, $f4, $f6
/* DE44 8000D244 46204320 */  cvt.s.d    $f12, $f8
/* DE48 8000D248 4600603E */  c.le.s     $f12, $f0
/* DE4C 8000D24C E42CF7D4 */  swc1       $f12, %lo(D_8013F7D4)($at)
/* DE50 8000D250 3C018014 */  lui        $at, %hi(D_8013F7D4)
/* DE54 8000D254 45020003 */  bc1fl      .L8000D264
/* DE58 8000D258 3C013F80 */   lui       $at, (0x3F800000 >> 16)
/* DE5C 8000D25C E420F7D4 */  swc1       $f0, %lo(D_8013F7D4)($at)
/* DE60 8000D260 3C013F80 */  lui        $at, (0x3F800000 >> 16)
.L8000D264:
/* DE64 8000D264 44815000 */  mtc1       $at, $f10
/* DE68 8000D268 8C8F0004 */  lw         $t7, 0x4($a0)
/* DE6C 8000D26C E48000A0 */  swc1       $f0, 0xA0($a0)
/* DE70 8000D270 E48000A8 */  swc1       $f0, 0xA8($a0)
/* DE74 8000D274 E48A00A4 */  swc1       $f10, 0xA4($a0)
/* DE78 8000D278 8DE10098 */  lw         $at, 0x98($t7)
/* DE7C 8000D27C AC810034 */  sw         $at, 0x34($a0)
/* DE80 8000D280 8DF9009C */  lw         $t9, 0x9C($t7)
/* DE84 8000D284 AC990038 */  sw         $t9, 0x38($a0)
/* DE88 8000D288 8DE100A0 */  lw         $at, 0xA0($t7)
/* DE8C 8000D28C AC81003C */  sw         $at, 0x3C($a0)
/* DE90 8000D290 0C0023B4 */  jal        func_80008ED0
/* DE94 8000D294 AFA40018 */   sw        $a0, 0x18($sp)
/* DE98 8000D298 0C002423 */  jal        func_8000908C
/* DE9C 8000D29C 8FA40018 */   lw        $a0, 0x18($sp)
/* DEA0 8000D2A0 0C0018C7 */  jal        func_8000631C
/* DEA4 8000D2A4 8FA40018 */   lw        $a0, 0x18($sp)
/* DEA8 8000D2A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* DEAC 8000D2AC 27BD0018 */  addiu      $sp, $sp, 0x18
/* DEB0 8000D2B0 03E00008 */  jr         $ra
/* DEB4 8000D2B4 00000000 */   nop
