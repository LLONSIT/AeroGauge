glabel func_80023E7C
/* 24A7C 80023E7C 44801000 */  mtc1       $zero, $f2
/* 24A80 80023E80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 24A84 80023E84 F7B40010 */  sdc1       $f20, 0x10($sp)
/* 24A88 80023E88 46027032 */  c.eq.s     $f14, $f2
/* 24A8C 80023E8C 46006506 */  mov.s      $f20, $f12
/* 24A90 80023E90 AFBF001C */  sw         $ra, 0x1C($sp)
/* 24A94 80023E94 4502000E */  bc1fl      .L80023ED0
/* 24A98 80023E98 4602703C */   c.lt.s    $f14, $f2
/* 24A9C 80023E9C 460C103C */  c.lt.s     $f2, $f12
/* 24AA0 80023EA0 3C018009 */  lui        $at, %hi(D_80097230)
/* 24AA4 80023EA4 45020004 */  bc1fl      .L80023EB8
/* 24AA8 80023EA8 4602A03C */   c.lt.s    $f20, $f2
/* 24AAC 80023EAC 10000028 */  b          .L80023F50
/* 24AB0 80023EB0 C4207230 */   lwc1      $f0, %lo(D_80097230)($at)
/* 24AB4 80023EB4 4602A03C */  c.lt.s     $f20, $f2
.L80023EB8:
/* 24AB8 80023EB8 3C018009 */  lui        $at, %hi(D_80097234)
/* 24ABC 80023EBC 45020004 */  bc1fl      .L80023ED0
/* 24AC0 80023EC0 4602703C */   c.lt.s    $f14, $f2
/* 24AC4 80023EC4 10000022 */  b          .L80023F50
/* 24AC8 80023EC8 C4207234 */   lwc1      $f0, %lo(D_80097234)($at)
/* 24ACC 80023ECC 4602703C */  c.lt.s     $f14, $f2
.L80023ED0:
/* 24AD0 80023ED0 00000000 */  nop
/* 24AD4 80023ED4 4502000A */  bc1fl      .L80023F00
/* 24AD8 80023ED8 460E103C */   c.lt.s    $f2, $f14
/* 24ADC 80023EDC 0C008F24 */  jal        func_80023C90
/* 24AE0 80023EE0 460EA303 */   div.s     $f12, $f20, $f14
/* 24AE4 80023EE4 3C018009 */  lui        $at, %hi(D_80097238)
/* 24AE8 80023EE8 D4267238 */  ldc1       $f6, %lo(D_80097238)($at)
/* 24AEC 80023EEC 46000121 */  cvt.d.s    $f4, $f0
/* 24AF0 80023EF0 46262200 */  add.d      $f8, $f4, $f6
/* 24AF4 80023EF4 10000016 */  b          .L80023F50
/* 24AF8 80023EF8 46204020 */   cvt.s.d   $f0, $f8
/* 24AFC 80023EFC 460E103C */  c.lt.s     $f2, $f14
.L80023F00:
/* 24B00 80023F00 00000000 */  nop
/* 24B04 80023F04 45020012 */  bc1fl      .L80023F50
/* 24B08 80023F08 46001006 */   mov.s     $f0, $f2
/* 24B0C 80023F0C 4614103E */  c.le.s     $f2, $f20
/* 24B10 80023F10 00000000 */  nop
/* 24B14 80023F14 45000005 */  bc1f       .L80023F2C
/* 24B18 80023F18 00000000 */   nop
/* 24B1C 80023F1C 0C008F24 */  jal        func_80023C90
/* 24B20 80023F20 460EA303 */   div.s     $f12, $f20, $f14
/* 24B24 80023F24 1000000B */  b          .L80023F54
/* 24B28 80023F28 8FBF001C */   lw        $ra, 0x1C($sp)
.L80023F2C:
/* 24B2C 80023F2C 0C008F24 */  jal        func_80023C90
/* 24B30 80023F30 460EA303 */   div.s     $f12, $f20, $f14
/* 24B34 80023F34 3C018009 */  lui        $at, %hi(D_80097240)
/* 24B38 80023F38 D4307240 */  ldc1       $f16, %lo(D_80097240)($at)
/* 24B3C 80023F3C 460002A1 */  cvt.d.s    $f10, $f0
/* 24B40 80023F40 46305480 */  add.d      $f18, $f10, $f16
/* 24B44 80023F44 10000002 */  b          .L80023F50
/* 24B48 80023F48 46209020 */   cvt.s.d   $f0, $f18
/* 24B4C 80023F4C 46001006 */  mov.s      $f0, $f2
.L80023F50:
/* 24B50 80023F50 8FBF001C */  lw         $ra, 0x1C($sp)
.L80023F54:
/* 24B54 80023F54 D7B40010 */  ldc1       $f20, 0x10($sp)
/* 24B58 80023F58 27BD0020 */  addiu      $sp, $sp, 0x20
/* 24B5C 80023F5C 03E00008 */  jr         $ra
/* 24B60 80023F60 00000000 */   nop
/* 24B64 80023F64 00000000 */  nop
/* 24B68 80023F68 00000000 */  nop
/* 24B6C 80023F6C 00000000 */  nop
