glabel func_8003EF88
/* 3FB88 8003EF88 3C0E8009 */  lui        $t6, %hi(D_8008F290)
/* 3FB8C 8003EF8C 8DCEF290 */  lw         $t6, %lo(D_8008F290)($t6)
/* 3FB90 8003EF90 3C02801A */  lui        $v0, %hi(D_8019E5E0)
/* 3FB94 8003EF94 2442E5E0 */  addiu      $v0, $v0, %lo(D_8019E5E0)
/* 3FB98 8003EF98 15C00004 */  bnez       $t6, .L8003EFAC
/* 3FB9C 8003EF9C 3C04801A */   lui       $a0, %hi(D_8019E6D8)
/* 3FBA0 8003EFA0 240F0006 */  addiu      $t7, $zero, 0x6
/* 3FBA4 8003EFA4 3C018014 */  lui        $at, %hi(D_8013FF9C)
/* 3FBA8 8003EFA8 A02FFF9C */  sb         $t7, %lo(D_8013FF9C)($at)
.L8003EFAC:
/* 3FBAC 8003EFAC 3C01C2C8 */  lui        $at, (0xC2C80000 >> 16)
/* 3FBB0 8003EFB0 44811000 */  mtc1       $at, $f2
/* 3FBB4 8003EFB4 3C01801A */  lui        $at, %hi(D_8019E6A8)
/* 3FBB8 8003EFB8 A020E6A8 */  sb         $zero, %lo(D_8019E6A8)($at)
/* 3FBBC 8003EFBC 3C01801A */  lui        $at, %hi(D_8019E0F6)
/* 3FBC0 8003EFC0 A020E0F6 */  sb         $zero, %lo(D_8019E0F6)($at)
/* 3FBC4 8003EFC4 2418004B */  addiu      $t8, $zero, 0x4B
/* 3FBC8 8003EFC8 2419002A */  addiu      $t9, $zero, 0x2A
/* 3FBCC 8003EFCC 3C0E803A */  lui        $t6, %hi(D_803993F0)
/* 3FBD0 8003EFD0 25CE93F0 */  addiu      $t6, $t6, %lo(D_803993F0)
/* 3FBD4 8003EFD4 A459000A */  sh         $t9, 0xA($v0)
/* 3FBD8 8003EFD8 A4580008 */  sh         $t8, 0x8($v0)
/* 3FBDC 8003EFDC AC4E000C */  sw         $t6, 0xC($v0)
/* 3FBE0 8003EFE0 3C0F803A */  lui        $t7, %hi(D_80399F98)
/* 3FBE4 8003EFE4 24180090 */  addiu      $t8, $zero, 0x90
/* 3FBE8 8003EFE8 2419000E */  addiu      $t9, $zero, 0xE
/* 3FBEC 8003EFEC 25EF9F98 */  addiu      $t7, $t7, %lo(D_80399F98)
/* 3FBF0 8003EFF0 A4590016 */  sh         $t9, 0x16($v0)
/* 3FBF4 8003EFF4 A4580014 */  sh         $t8, 0x14($v0)
/* 3FBF8 8003EFF8 240E008C */  addiu      $t6, $zero, 0x8C
/* 3FBFC 8003EFFC AC4F0010 */  sw         $t7, 0x10($v0)
/* 3FC00 8003F000 A44E0018 */  sh         $t6, 0x18($v0)
/* 3FC04 8003F004 2418001A */  addiu      $t8, $zero, 0x1A
/* 3FC08 8003F008 2419004A */  addiu      $t9, $zero, 0x4A
/* 3FC0C 8003F00C A459001E */  sh         $t9, 0x1E($v0)
/* 3FC10 8003F010 A458001C */  sh         $t8, 0x1C($v0)
/* 3FC14 8003F014 3C0E803A */  lui        $t6, %hi(D_8039A010)
/* 3FC18 8003F018 240F000E */  addiu      $t7, $zero, 0xE
/* 3FC1C 8003F01C A44F001A */  sh         $t7, 0x1A($v0)
/* 3FC20 8003F020 25CEA010 */  addiu      $t6, $t6, %lo(D_8039A010)
/* 3FC24 8003F024 2418004E */  addiu      $t8, $zero, 0x4E
/* 3FC28 8003F028 2419004E */  addiu      $t9, $zero, 0x4E
/* 3FC2C 8003F02C AC4E0020 */  sw         $t6, 0x20($v0)
/* 3FC30 8003F030 3C0F803A */  lui        $t7, %hi(D_8039A7F8)
/* 3FC34 8003F034 A459002E */  sh         $t9, 0x2E($v0)
/* 3FC38 8003F038 A458002A */  sh         $t8, 0x2A($v0)
/* 3FC3C 8003F03C 25EFA7F8 */  addiu      $t7, $t7, %lo(D_8039A7F8)
/* 3FC40 8003F040 3C18803A */  lui        $t8, %hi(D_803A2968)
/* 3FC44 8003F044 3C19803A */  lui        $t9, %hi(D_803A3810)
/* 3FC48 8003F048 240E001A */  addiu      $t6, $zero, 0x1A
/* 3FC4C 8003F04C AC4F0024 */  sw         $t7, 0x24($v0)
/* 3FC50 8003F050 A44E0030 */  sh         $t6, 0x30($v0)
/* 3FC54 8003F054 27393810 */  addiu      $t9, $t9, %lo(D_803A3810)
/* 3FC58 8003F058 27182968 */  addiu      $t8, $t8, %lo(D_803A2968)
/* 3FC5C 8003F05C AC580034 */  sw         $t8, 0x34($v0)
/* 3FC60 8003F060 AC590038 */  sw         $t9, 0x38($v0)
/* 3FC64 8003F064 240F006F */  addiu      $t7, $zero, 0x6F
/* 3FC68 8003F068 240E0085 */  addiu      $t6, $zero, 0x85
/* 3FC6C 8003F06C A44F0032 */  sh         $t7, 0x32($v0)
/* 3FC70 8003F070 A44E0044 */  sh         $t6, 0x44($v0)
/* 3FC74 8003F074 3C19803A */  lui        $t9, %hi(D_8039E7A8)
/* 3FC78 8003F078 3C18803A */  lui        $t8, %hi(D_8039E688)
/* 3FC7C 8003F07C 2718E688 */  addiu      $t8, $t8, %lo(D_8039E688)
/* 3FC80 8003F080 2739E7A8 */  addiu      $t9, $t9, %lo(D_8039E7A8)
/* 3FC84 8003F084 240F0077 */  addiu      $t7, $zero, 0x77
/* 3FC88 8003F088 240E0010 */  addiu      $t6, $zero, 0x10
/* 3FC8C 8003F08C A44F0046 */  sh         $t7, 0x46($v0)
/* 3FC90 8003F090 AC59004C */  sw         $t9, 0x4C($v0)
/* 3FC94 8003F094 AC580048 */  sw         $t8, 0x48($v0)
/* 3FC98 8003F098 A44E0050 */  sh         $t6, 0x50($v0)
/* 3FC9C 8003F09C 3C0E803A */  lui        $t6, %hi(D_8039E7D0)
/* 3FCA0 8003F0A0 2418007A */  addiu      $t8, $zero, 0x7A
/* 3FCA4 8003F0A4 24190077 */  addiu      $t9, $zero, 0x77
/* 3FCA8 8003F0A8 240F0010 */  addiu      $t7, $zero, 0x10
/* 3FCAC 8003F0AC A44F0054 */  sh         $t7, 0x54($v0)
/* 3FCB0 8003F0B0 A459005A */  sh         $t9, 0x5A($v0)
/* 3FCB4 8003F0B4 A4580058 */  sh         $t8, 0x58($v0)
/* 3FCB8 8003F0B8 25CEE7D0 */  addiu      $t6, $t6, %lo(D_8039E7D0)
/* 3FCBC 8003F0BC AC4E005C */  sw         $t6, 0x5C($v0)
/* 3FCC0 8003F0C0 3C0F803A */  lui        $t7, %hi(D_8039E810)
/* 3FCC4 8003F0C4 2418000A */  addiu      $t8, $zero, 0xA
/* 3FCC8 8003F0C8 2419000A */  addiu      $t9, $zero, 0xA
/* 3FCCC 8003F0CC 25EFE810 */  addiu      $t7, $t7, %lo(D_8039E810)
/* 3FCD0 8003F0D0 A459006A */  sh         $t9, 0x6A($v0)
/* 3FCD4 8003F0D4 A4580066 */  sh         $t8, 0x66($v0)
/* 3FCD8 8003F0D8 240E00DA */  addiu      $t6, $zero, 0xDA
/* 3FCDC 8003F0DC AC4F0060 */  sw         $t7, 0x60($v0)
/* 3FCE0 8003F0E0 A44E006C */  sh         $t6, 0x6C($v0)
/* 3FCE4 8003F0E4 3C188039 */  lui        $t8, %hi(D_80395F10)
/* 3FCE8 8003F0E8 3C198039 */  lui        $t9, %hi(D_803960A8)
/* 3FCEC 8003F0EC 273960A8 */  addiu      $t9, $t9, %lo(D_803960A8)
/* 3FCF0 8003F0F0 27185F10 */  addiu      $t8, $t8, %lo(D_80395F10)
/* 3FCF4 8003F0F4 240F0074 */  addiu      $t7, $zero, 0x74
/* 3FCF8 8003F0F8 240E000D */  addiu      $t6, $zero, 0xD
/* 3FCFC 8003F0FC A44F006E */  sh         $t7, 0x6E($v0)
/* 3FD00 8003F100 AC580070 */  sw         $t8, 0x70($v0)
/* 3FD04 8003F104 AC590074 */  sw         $t9, 0x74($v0)
/* 3FD08 8003F108 A44E007A */  sh         $t6, 0x7A($v0)
/* 3FD0C 8003F10C 3C0E803A */  lui        $t6, %hi(D_803A0AA8)
/* 3FD10 8003F110 3C19803A */  lui        $t9, %hi(D_803A0900)
/* 3FD14 8003F114 24180081 */  addiu      $t8, $zero, 0x81
/* 3FD18 8003F118 240F000D */  addiu      $t7, $zero, 0xD
/* 3FD1C 8003F11C A44F007E */  sh         $t7, 0x7E($v0)
/* 3FD20 8003F120 A4580082 */  sh         $t8, 0x82($v0)
/* 3FD24 8003F124 27390900 */  addiu      $t9, $t9, %lo(D_803A0900)
/* 3FD28 8003F128 25CE0AA8 */  addiu      $t6, $t6, %lo(D_803A0AA8)
/* 3FD2C 8003F12C AC4E0088 */  sw         $t6, 0x88($v0)
/* 3FD30 8003F130 AC590084 */  sw         $t9, 0x84($v0)
/* 3FD34 8003F134 24180032 */  addiu      $t8, $zero, 0x32
/* 3FD38 8003F138 240F0080 */  addiu      $t7, $zero, 0x80
/* 3FD3C 8003F13C A44F008C */  sh         $t7, 0x8C($v0)
/* 3FD40 8003F140 A458008E */  sh         $t8, 0x8E($v0)
/* 3FD44 8003F144 24190032 */  addiu      $t9, $zero, 0x32
/* 3FD48 8003F148 240E00B0 */  addiu      $t6, $zero, 0xB0
/* 3FD4C 8003F14C A44E0094 */  sh         $t6, 0x94($v0)
/* 3FD50 8003F150 A4590092 */  sh         $t9, 0x92($v0)
/* 3FD54 8003F154 3C18803A */  lui        $t8, %hi(D_803A08E8)
/* 3FD58 8003F158 3C0F803A */  lui        $t7, %hi(D_8039FC60)
/* 3FD5C 8003F15C 25EFFC60 */  addiu      $t7, $t7, %lo(D_8039FC60)
/* 3FD60 8003F160 271808E8 */  addiu      $t8, $t8, %lo(D_803A08E8)
/* 3FD64 8003F164 2419000C */  addiu      $t9, $zero, 0xC
/* 3FD68 8003F168 240E000C */  addiu      $t6, $zero, 0xC
/* 3FD6C 8003F16C AC58009C */  sw         $t8, 0x9C($v0)
/* 3FD70 8003F170 AC4F0098 */  sw         $t7, 0x98($v0)
/* 3FD74 8003F174 A44E00A6 */  sh         $t6, 0xA6($v0)
/* 3FD78 8003F178 A45900A2 */  sh         $t9, 0xA2($v0)
/* 3FD7C 8003F17C 3C198039 */  lui        $t9, %hi(D_80395EE8)
/* 3FD80 8003F180 240F00B2 */  addiu      $t7, $zero, 0xB2
/* 3FD84 8003F184 3C188039 */  lui        $t8, %hi(D_80395CA0)
/* 3FD88 8003F188 240E0004 */  addiu      $t6, $zero, 0x4
/* 3FD8C 8003F18C 24050040 */  addiu      $a1, $zero, 0x40
/* 3FD90 8003F190 3C09801A */  lui        $t1, %hi(D_8019EDDC)
/* 3FD94 8003F194 3C0A801A */  lui        $t2, %hi(D_8019EDE8)
/* 3FD98 8003F198 27185CA0 */  addiu      $t8, $t8, %lo(D_80395CA0)
/* 3FD9C 8003F19C A44F00AA */  sh         $t7, 0xAA($v0)
/* 3FDA0 8003F1A0 27395EE8 */  addiu      $t9, $t9, %lo(D_80395EE8)
/* 3FDA4 8003F1A4 A44E00B6 */  sh         $t6, 0xB6($v0)
/* 3FDA8 8003F1A8 254AEDE8 */  addiu      $t2, $t2, %lo(D_8019EDE8)
/* 3FDAC 8003F1AC 2529EDDC */  addiu      $t1, $t1, %lo(D_8019EDDC)
/* 3FDB0 8003F1B0 24060060 */  addiu      $a2, $zero, 0x60
/* 3FDB4 8003F1B4 24070050 */  addiu      $a3, $zero, 0x50
/* 3FDB8 8003F1B8 24080007 */  addiu      $t0, $zero, 0x7
/* 3FDBC 8003F1BC AC5900B0 */  sw         $t9, 0xB0($v0)
/* 3FDC0 8003F1C0 AC5800AC */  sw         $t8, 0xAC($v0)
/* 3FDC4 8003F1C4 3C0E803A */  lui        $t6, %hi(D_80399310)
/* 3FDC8 8003F1C8 240F0004 */  addiu      $t7, $zero, 0x4
/* 3FDCC 8003F1CC 240B0080 */  addiu      $t3, $zero, 0x80
/* 3FDD0 8003F1D0 A44F00BA */  sh         $t7, 0xBA($v0)
/* 3FDD4 8003F1D4 25CE9310 */  addiu      $t6, $t6, %lo(D_80399310)
/* 3FDD8 8003F1D8 24180082 */  addiu      $t8, $zero, 0x82
/* 3FDDC 8003F1DC 241900AC */  addiu      $t9, $zero, 0xAC
/* 3FDE0 8003F1E0 240C001F */  addiu      $t4, $zero, 0x1F
/* 3FDE4 8003F1E4 240D0030 */  addiu      $t5, $zero, 0x30
/* 3FDE8 8003F1E8 A45900BE */  sh         $t9, 0xBE($v0)
/* 3FDEC 8003F1EC A45800BC */  sh         $t8, 0xBC($v0)
/* 3FDF0 8003F1F0 AC4E00C0 */  sw         $t6, 0xC0($v0)
/* 3FDF4 8003F1F4 3C0F803A */  lui        $t7, %hi(D_803993D8)
/* 3FDF8 8003F1F8 25EF93D8 */  addiu      $t7, $t7, %lo(D_803993D8)
/* 3FDFC 8003F1FC 241800FF */  addiu      $t8, $zero, 0xFF
/* 3FE00 8003F200 240E00EF */  addiu      $t6, $zero, 0xEF
/* 3FE04 8003F204 2419013F */  addiu      $t9, $zero, 0x13F
/* 3FE08 8003F208 A44D0004 */  sh         $t5, 0x4($v0)
/* 3FE0C 8003F20C A44C0002 */  sh         $t4, 0x2($v0)
/* 3FE10 8003F210 A44C0006 */  sh         $t4, 0x6($v0)
/* 3FE14 8003F214 A4460000 */  sh         $a2, 0x0($v0)
/* 3FE18 8003F218 A44D002C */  sh         $t5, 0x2C($v0)
/* 3FE1C 8003F21C A4460028 */  sh         $a2, 0x28($v0)
/* 3FE20 8003F220 A448003E */  sh         $t0, 0x3E($v0)
/* 3FE24 8003F224 A4480042 */  sh         $t0, 0x42($v0)
/* 3FE28 8003F228 A447003C */  sh         $a3, 0x3C($v0)
/* 3FE2C 8003F22C A4470040 */  sh         $a3, 0x40($v0)
/* 3FE30 8003F230 A4480052 */  sh         $t0, 0x52($v0)
/* 3FE34 8003F234 A4480056 */  sh         $t0, 0x56($v0)
/* 3FE38 8003F238 A4470064 */  sh         $a3, 0x64($v0)
/* 3FE3C 8003F23C A4470068 */  sh         $a3, 0x68($v0)
/* 3FE40 8003F240 A44B0080 */  sh         $t3, 0x80($v0)
/* 3FE44 8003F244 A4450078 */  sh         $a1, 0x78($v0)
/* 3FE48 8003F248 A445007C */  sh         $a1, 0x7C($v0)
/* 3FE4C 8003F24C A44B0096 */  sh         $t3, 0x96($v0)
/* 3FE50 8003F250 A4450090 */  sh         $a1, 0x90($v0)
/* 3FE54 8003F254 A44B00A8 */  sh         $t3, 0xA8($v0)
/* 3FE58 8003F258 A44600A0 */  sh         $a2, 0xA0($v0)
/* 3FE5C 8003F25C A44600A4 */  sh         $a2, 0xA4($v0)
/* 3FE60 8003F260 AC4F00C4 */  sw         $t7, 0xC4($v0)
/* 3FE64 8003F264 A44500B4 */  sh         $a1, 0xB4($v0)
/* 3FE68 8003F268 A44500B8 */  sh         $a1, 0xB8($v0)
/* 3FE6C 8003F26C A1380003 */  sb         $t8, 0x3($t1)
/* 3FE70 8003F270 A1200000 */  sb         $zero, 0x0($t1)
/* 3FE74 8003F274 A1200001 */  sb         $zero, 0x1($t1)
/* 3FE78 8003F278 A1200002 */  sb         $zero, 0x2($t1)
/* 3FE7C 8003F27C A5590004 */  sh         $t9, 0x4($t2)
/* 3FE80 8003F280 A54E0006 */  sh         $t6, 0x6($t2)
/* 3FE84 8003F284 A5400000 */  sh         $zero, 0x0($t2)
/* 3FE88 8003F288 A5400002 */  sh         $zero, 0x2($t2)
/* 3FE8C 8003F28C 3C01801A */  lui        $at, %hi(D_8019E6AC)
/* 3FE90 8003F290 AC20E6AC */  sw         $zero, %lo(D_8019E6AC)($at)
/* 3FE94 8003F294 2484E6D8 */  addiu      $a0, $a0, %lo(D_8019E6D8)
/* 3FE98 8003F298 3C014170 */  lui        $at, (0x41700000 >> 16)
/* 3FE9C 8003F29C 44812000 */  mtc1       $at, $f4
/* 3FEA0 8003F2A0 44800000 */  mtc1       $zero, $f0
/* 3FEA4 8003F2A4 3C01C170 */  lui        $at, (0xC1700000 >> 16)
/* 3FEA8 8003F2A8 44813000 */  mtc1       $at, $f6
/* 3FEAC 8003F2AC 3C02801A */  lui        $v0, %hi(D_8019E6F0)
/* 3FEB0 8003F2B0 2442E6F0 */  addiu      $v0, $v0, %lo(D_8019E6F0)
/* 3FEB4 8003F2B4 00001825 */  or         $v1, $zero, $zero
/* 3FEB8 8003F2B8 E4820008 */  swc1       $f2, 0x8($a0)
/* 3FEBC 8003F2BC E4820014 */  swc1       $f2, 0x14($a0)
/* 3FEC0 8003F2C0 E4840000 */  swc1       $f4, 0x0($a0)
/* 3FEC4 8003F2C4 E4800004 */  swc1       $f0, 0x4($a0)
/* 3FEC8 8003F2C8 E4800010 */  swc1       $f0, 0x10($a0)
/* 3FECC 8003F2CC E486000C */  swc1       $f6, 0xC($a0)
.L8003F2D0:
/* 3FED0 8003F2D0 00437821 */  addu       $t7, $v0, $v1
/* 3FED4 8003F2D4 24630001 */  addiu      $v1, $v1, 0x1
/* 3FED8 8003F2D8 307800FF */  andi       $t8, $v1, 0xFF
/* 3FEDC 8003F2DC 2B010006 */  slti       $at, $t8, 0x6
/* 3FEE0 8003F2E0 03001825 */  or         $v1, $t8, $zero
/* 3FEE4 8003F2E4 1420FFFA */  bnez       $at, .L8003F2D0
/* 3FEE8 8003F2E8 A1E00000 */   sb        $zero, 0x0($t7)
/* 3FEEC 8003F2EC 3C068009 */  lui        $a2, %hi(D_8008B4A8)
/* 3FEF0 8003F2F0 8CC6B4A8 */  lw         $a2, %lo(D_8008B4A8)($a2)
/* 3FEF4 8003F2F4 00001825 */  or         $v1, $zero, $zero
/* 3FEF8 8003F2F8 2404003E */  addiu      $a0, $zero, 0x3E
/* 3FEFC 8003F2FC 00001025 */  or         $v0, $zero, $zero
/* 3FF00 8003F300 00063D82 */  srl        $a3, $a2, 22
.L8003F304:
/* 3FF04 8003F304 10870017 */  beq        $a0, $a3, .L8003F364
/* 3FF08 8003F308 00802825 */   or        $a1, $a0, $zero
/* 3FF0C 8003F30C 04410004 */  bgez       $v0, .L8003F320
/* 3FF10 8003F310 30590001 */   andi      $t9, $v0, 0x1
/* 3FF14 8003F314 13200002 */  beqz       $t9, .L8003F320
/* 3FF18 8003F318 00000000 */   nop
/* 3FF1C 8003F31C 2739FFFE */  addiu      $t9, $t9, -0x2
.L8003F320:
/* 3FF20 8003F320 17200005 */  bnez       $t9, .L8003F338
/* 3FF24 8003F324 24A4FFFF */   addiu     $a0, $a1, -0x1
/* 3FF28 8003F328 24A40001 */  addiu      $a0, $a1, 0x1
/* 3FF2C 8003F32C 308EFFFF */  andi       $t6, $a0, 0xFFFF
/* 3FF30 8003F330 10000007 */  b          .L8003F350
/* 3FF34 8003F334 01C02025 */   or        $a0, $t6, $zero
.L8003F338:
/* 3FF38 8003F338 308FFFFF */  andi       $t7, $a0, 0xFFFF
/* 3FF3C 8003F33C 10600004 */  beqz       $v1, .L8003F350
/* 3FF40 8003F340 01E02025 */   or        $a0, $t7, $zero
/* 3FF44 8003F344 25E40040 */  addiu      $a0, $t7, 0x40
/* 3FF48 8003F348 3098FFFF */  andi       $t8, $a0, 0xFFFF
/* 3FF4C 8003F34C 03002025 */  or         $a0, $t8, $zero
.L8003F350:
/* 3FF50 8003F350 24630001 */  addiu      $v1, $v1, 0x1
/* 3FF54 8003F354 306200FF */  andi       $v0, $v1, 0xFF
/* 3FF58 8003F358 28410020 */  slti       $at, $v0, 0x20
/* 3FF5C 8003F35C 1420FFE9 */  bnez       $at, .L8003F304
/* 3FF60 8003F360 00401825 */   or        $v1, $v0, $zero
.L8003F364:
/* 3FF64 8003F364 38440020 */  xori       $a0, $v0, 0x20
/* 3FF68 8003F368 14800011 */  bnez       $a0, .L8003F3B0
/* 3FF6C 8003F36C 00001825 */   or        $v1, $zero, $zero
/* 3FF70 8003F370 3C058009 */  lui        $a1, %hi(D_8008B4A8)
/* 3FF74 8003F374 24A5B4A8 */  addiu      $a1, $a1, %lo(D_8008B4A8)
/* 3FF78 8003F378 94AE0000 */  lhu        $t6, 0x0($a1)
/* 3FF7C 8003F37C 3C07801A */  lui        $a3, %hi(D_8019E0F6)
/* 3FF80 8003F380 24E7E0F6 */  addiu      $a3, $a3, %lo(D_8019E0F6)
/* 3FF84 8003F384 31CF003F */  andi       $t7, $t6, 0x3F
/* 3FF88 8003F388 35F80F80 */  ori        $t8, $t7, 0xF80
/* 3FF8C 8003F38C A4B80000 */  sh         $t8, 0x0($a1)
/* 3FF90 8003F390 90B90001 */  lbu        $t9, 0x1($a1)
/* 3FF94 8003F394 90F80000 */  lbu        $t8, 0x0($a3)
/* 3FF98 8003F398 332EFFC3 */  andi       $t6, $t9, 0xFFC3
/* 3FF9C 8003F39C 35CF0014 */  ori        $t7, $t6, 0x14
/* 3FFA0 8003F3A0 27190001 */  addiu      $t9, $t8, 0x1
/* 3FFA4 8003F3A4 A0AF0001 */  sb         $t7, 0x1($a1)
/* 3FFA8 8003F3A8 10000023 */  b          .L8003F438
/* 3FFAC 8003F3AC A0F90000 */   sb        $t9, 0x0($a3)
.L8003F3B0:
/* 3FFB0 8003F3B0 00062A80 */  sll        $a1, $a2, 10
/* 3FFB4 8003F3B4 3C07801A */  lui        $a3, %hi(D_8019E0F6)
/* 3FFB8 8003F3B8 00057702 */  srl        $t6, $a1, 28
/* 3FFBC 8003F3BC 24E7E0F6 */  addiu      $a3, $a3, %lo(D_8019E0F6)
/* 3FFC0 8003F3C0 01C02825 */  or         $a1, $t6, $zero
/* 3FFC4 8003F3C4 24040005 */  addiu      $a0, $zero, 0x5
.L8003F3C8:
/* 3FFC8 8003F3C8 54850004 */  bnel       $a0, $a1, .L8003F3DC
/* 3FFCC 8003F3CC 24630001 */   addiu     $v1, $v1, 0x1
/* 3FFD0 8003F3D0 10000009 */  b          .L8003F3F8
/* 3FFD4 8003F3D4 00601025 */   or        $v0, $v1, $zero
/* 3FFD8 8003F3D8 24630001 */  addiu      $v1, $v1, 0x1
.L8003F3DC:
/* 3FFDC 8003F3DC 306200FF */  andi       $v0, $v1, 0xFF
/* 3FFE0 8003F3E0 24840001 */  addiu      $a0, $a0, 0x1
/* 3FFE4 8003F3E4 3098FFFF */  andi       $t8, $a0, 0xFFFF
/* 3FFE8 8003F3E8 28410006 */  slti       $at, $v0, 0x6
/* 3FFEC 8003F3EC 03002025 */  or         $a0, $t8, $zero
/* 3FFF0 8003F3F0 1420FFF5 */  bnez       $at, .L8003F3C8
/* 3FFF4 8003F3F4 00401825 */   or        $v1, $v0, $zero
.L8003F3F8:
/* 3FFF8 8003F3F8 38440006 */  xori       $a0, $v0, 0x6
/* 3FFFC 8003F3FC 1480000E */  bnez       $a0, .L8003F438
/* 40000 8003F400 00001825 */   or        $v1, $zero, $zero
/* 40004 8003F404 3C058009 */  lui        $a1, %hi(D_8008B4A8)
/* 40008 8003F408 24A5B4A8 */  addiu      $a1, $a1, %lo(D_8008B4A8)
/* 4000C 8003F40C 94B90000 */  lhu        $t9, 0x0($a1)
/* 40010 8003F410 332E003F */  andi       $t6, $t9, 0x3F
/* 40014 8003F414 35CF0F80 */  ori        $t7, $t6, 0xF80
/* 40018 8003F418 A4AF0000 */  sh         $t7, 0x0($a1)
/* 4001C 8003F41C 90B80001 */  lbu        $t8, 0x1($a1)
/* 40020 8003F420 90EF0000 */  lbu        $t7, 0x0($a3)
/* 40024 8003F424 3319FFC3 */  andi       $t9, $t8, 0xFFC3
/* 40028 8003F428 372E0014 */  ori        $t6, $t9, 0x14
/* 4002C 8003F42C 25F80001 */  addiu      $t8, $t7, 0x1
/* 40030 8003F430 A0AE0001 */  sb         $t6, 0x1($a1)
/* 40034 8003F434 A0F80000 */  sb         $t8, 0x0($a3)
.L8003F438:
/* 40038 8003F438 3C058009 */  lui        $a1, %hi(D_8008B4A8)
/* 4003C 8003F43C 3C028009 */  lui        $v0, %hi(D_8008F29C)
/* 40040 8003F440 3C068009 */  lui        $a2, %hi(D_8008EEA4)
/* 40044 8003F444 24A5B4A8 */  addiu      $a1, $a1, %lo(D_8008B4A8)
/* 40048 8003F448 24C6EEA4 */  addiu      $a2, $a2, %lo(D_8008EEA4)
/* 4004C 8003F44C 9042F29C */  lbu        $v0, %lo(D_8008F29C)($v0)
/* 40050 8003F450 24070001 */  addiu      $a3, $zero, 0x1
.L8003F454:
/* 40054 8003F454 1440000B */  bnez       $v0, .L8003F484
/* 40058 8003F458 00C3C821 */   addu      $t9, $a2, $v1
/* 4005C 8003F45C 8CB90000 */  lw         $t9, 0x0($a1)
/* 40060 8003F460 00C32021 */  addu       $a0, $a2, $v1
/* 40064 8003F464 A0800000 */  sb         $zero, 0x0($a0)
/* 40068 8003F468 00197582 */  srl        $t6, $t9, 22
/* 4006C 8003F46C 006E7807 */  srav       $t7, $t6, $v1
/* 40070 8003F470 31F80001 */  andi       $t8, $t7, 0x1
/* 40074 8003F474 53000005 */  beql       $t8, $zero, .L8003F48C
/* 40078 8003F478 24630001 */   addiu     $v1, $v1, 0x1
/* 4007C 8003F47C 10000002 */  b          .L8003F488
/* 40080 8003F480 A0870000 */   sb        $a3, 0x0($a0)
.L8003F484:
/* 40084 8003F484 A3270000 */  sb         $a3, 0x0($t9)
.L8003F488:
/* 40088 8003F488 24630001 */  addiu      $v1, $v1, 0x1
.L8003F48C:
/* 4008C 8003F48C 306E00FF */  andi       $t6, $v1, 0xFF
/* 40090 8003F490 29C1000A */  slti       $at, $t6, 0xA
/* 40094 8003F494 1420FFEF */  bnez       $at, .L8003F454
/* 40098 8003F498 01C01825 */   or        $v1, $t6, $zero
/* 4009C 8003F49C 3C01801A */  lui        $at, %hi(D_8019E6A9)
/* 400A0 8003F4A0 03E00008 */  jr         $ra
/* 400A4 8003F4A4 A020E6A9 */   sb        $zero, %lo(D_8019E6A9)($at)
