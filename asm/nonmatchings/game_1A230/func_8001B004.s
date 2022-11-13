glabel func_8001B004
/* 1BC04 8001B004 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 1BC08 8001B008 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1BC0C 8001B00C AFB00020 */  sw         $s0, 0x20($sp)
/* 1BC10 8001B010 AFA40090 */  sw         $a0, 0x90($sp)
/* 1BC14 8001B014 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1BC18 8001B018 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1BC1C 8001B01C 00A08025 */  or         $s0, $a1, $zero
/* 1BC20 8001B020 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BC24 8001B024 25F80008 */  addiu      $t8, $t7, 0x8
/* 1BC28 8001B028 AFB8008C */  sw         $t8, 0x8C($sp)
/* 1BC2C 8001B02C ADE00004 */  sw         $zero, 0x4($t7)
/* 1BC30 8001B030 ADF90000 */  sw         $t9, 0x0($t7)
/* 1BC34 8001B034 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1BC38 8001B038 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
/* 1BC3C 8001B03C 3C180C08 */  lui        $t8, (0xC084000 >> 16)
/* 1BC40 8001B040 25AE0008 */  addiu      $t6, $t5, 0x8
/* 1BC44 8001B044 AFAE008C */  sw         $t6, 0x8C($sp)
/* 1BC48 8001B048 37184000 */  ori        $t8, $t8, (0xC084000 & 0xFFFF)
/* 1BC4C 8001B04C 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
/* 1BC50 8001B050 ADAF0000 */  sw         $t7, 0x0($t5)
/* 1BC54 8001B054 ADB80004 */  sw         $t8, 0x4($t5)
/* 1BC58 8001B058 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BC5C 8001B05C 3C0FFF2F */  lui        $t7, (0xFF2FFFFF >> 16)
/* 1BC60 8001B060 3C0EFC11 */  lui        $t6, (0xFC119623 >> 16)
/* 1BC64 8001B064 272D0008 */  addiu      $t5, $t9, 0x8
/* 1BC68 8001B068 AFAD008C */  sw         $t5, 0x8C($sp)
/* 1BC6C 8001B06C 35CE9623 */  ori        $t6, $t6, (0xFC119623 & 0xFFFF)
/* 1BC70 8001B070 35EFFFFF */  ori        $t7, $t7, (0xFF2FFFFF & 0xFFFF)
/* 1BC74 8001B074 AF2F0004 */  sw         $t7, 0x4($t9)
/* 1BC78 8001B078 AF2E0000 */  sw         $t6, 0x0($t9)
/* 1BC7C 8001B07C 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1BC80 8001B080 240EFFFF */  addiu      $t6, $zero, -0x1
/* 1BC84 8001B084 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1BC88 8001B088 27190008 */  addiu      $t9, $t8, 0x8
/* 1BC8C 8001B08C AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BC90 8001B090 AF0E0004 */  sw         $t6, 0x4($t8)
/* 1BC94 8001B094 AF0D0000 */  sw         $t5, 0x0($t8)
/* 1BC98 8001B098 96060002 */  lhu        $a2, 0x2($s0)
/* 1BC9C 8001B09C 94A50000 */  lhu        $a1, 0x0($a1)
/* 1BCA0 8001B0A0 8E070010 */  lw         $a3, 0x10($s0)
/* 1BCA4 8001B0A4 24C60003 */  addiu      $a2, $a2, 0x3
/* 1BCA8 8001B0A8 24A50002 */  addiu      $a1, $a1, 0x2
/* 1BCAC 8001B0AC 30AFFFFF */  andi       $t7, $a1, 0xFFFF
/* 1BCB0 8001B0B0 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 1BCB4 8001B0B4 03003025 */  or         $a2, $t8, $zero
/* 1BCB8 8001B0B8 01E02825 */  or         $a1, $t7, $zero
/* 1BCBC 8001B0BC AFA00010 */  sw         $zero, 0x10($sp)
/* 1BCC0 8001B0C0 0C006743 */  jal        func_80019D0C
/* 1BCC4 8001B0C4 27A4008C */   addiu     $a0, $sp, 0x8C
/* 1BCC8 8001B0C8 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BCCC 8001B0CC 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 1BCD0 8001B0D0 3C18BB00 */  lui        $t8, (0xBB000000 >> 16)
/* 1BCD4 8001B0D4 272D0008 */  addiu      $t5, $t9, 0x8
/* 1BCD8 8001B0D8 AFAD008C */  sw         $t5, 0x8C($sp)
/* 1BCDC 8001B0DC AF200004 */  sw         $zero, 0x4($t9)
/* 1BCE0 8001B0E0 AF2A0000 */  sw         $t2, 0x0($t9)
/* 1BCE4 8001B0E4 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BCE8 8001B0E8 3C190800 */  lui        $t9, (0x8000800 >> 16)
/* 1BCEC 8001B0EC 37390800 */  ori        $t9, $t9, (0x8000800 & 0xFFFF)
/* 1BCF0 8001B0F0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BCF4 8001B0F4 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BCF8 8001B0F8 ADD90004 */  sw         $t9, 0x4($t6)
/* 1BCFC 8001B0FC ADD80000 */  sw         $t8, 0x0($t6)
/* 1BD00 8001B100 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1BD04 8001B104 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
/* 1BD08 8001B108 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
/* 1BD0C 8001B10C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 1BD10 8001B110 AFAE008C */  sw         $t6, 0x8C($sp)
/* 1BD14 8001B114 ADA00004 */  sw         $zero, 0x4($t5)
/* 1BD18 8001B118 ADAF0000 */  sw         $t7, 0x0($t5)
/* 1BD1C 8001B11C 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1BD20 8001B120 3C0DBA00 */  lui        $t5, (0xBA001301 >> 16)
/* 1BD24 8001B124 35AD1301 */  ori        $t5, $t5, (0xBA001301 & 0xFFFF)
/* 1BD28 8001B128 27190008 */  addiu      $t9, $t8, 0x8
/* 1BD2C 8001B12C AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BD30 8001B130 AF000004 */  sw         $zero, 0x4($t8)
/* 1BD34 8001B134 AF0D0000 */  sw         $t5, 0x0($t8)
/* 1BD38 8001B138 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BD3C 8001B13C 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
/* 1BD40 8001B140 3C180F0A */  lui        $t8, (0xF0A4000 >> 16)
/* 1BD44 8001B144 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BD48 8001B148 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BD4C 8001B14C 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
/* 1BD50 8001B150 37184000 */  ori        $t8, $t8, (0xF0A4000 & 0xFFFF)
/* 1BD54 8001B154 ADD80004 */  sw         $t8, 0x4($t6)
/* 1BD58 8001B158 ADCB0000 */  sw         $t3, 0x0($t6)
/* 1BD5C 8001B15C 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BD60 8001B160 3C0EFCFF */  lui        $t6, (0xFCFFFFFF >> 16)
/* 1BD64 8001B164 3C0FFFFD */  lui        $t7, (0xFFFDF6FB >> 16)
/* 1BD68 8001B168 272D0008 */  addiu      $t5, $t9, 0x8
/* 1BD6C 8001B16C AFAD008C */  sw         $t5, 0x8C($sp)
/* 1BD70 8001B170 35EFF6FB */  ori        $t7, $t7, (0xFFFDF6FB & 0xFFFF)
/* 1BD74 8001B174 35CEFFFF */  ori        $t6, $t6, (0xFCFFFFFF & 0xFFFF)
/* 1BD78 8001B178 AF2E0000 */  sw         $t6, 0x0($t9)
/* 1BD7C 8001B17C AF2F0004 */  sw         $t7, 0x4($t9)
/* 1BD80 8001B180 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1BD84 8001B184 3C0DB900 */  lui        $t5, (0xB9000002 >> 16)
/* 1BD88 8001B188 35AD0002 */  ori        $t5, $t5, (0xB9000002 & 0xFFFF)
/* 1BD8C 8001B18C 27190008 */  addiu      $t9, $t8, 0x8
/* 1BD90 8001B190 AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BD94 8001B194 AF000004 */  sw         $zero, 0x4($t8)
/* 1BD98 8001B198 AF0D0000 */  sw         $t5, 0x0($t8)
/* 1BD9C 8001B19C 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BDA0 8001B1A0 3C18BA00 */  lui        $t8, (0xBA000402 >> 16)
/* 1BDA4 8001B1A4 37180402 */  ori        $t8, $t8, (0xBA000402 & 0xFFFF)
/* 1BDA8 8001B1A8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BDAC 8001B1AC AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BDB0 8001B1B0 24190030 */  addiu      $t9, $zero, 0x30
/* 1BDB4 8001B1B4 3C078014 */  lui        $a3, %hi(D_8013FC88)
/* 1BDB8 8001B1B8 ADD90004 */  sw         $t9, 0x4($t6)
/* 1BDBC 8001B1BC ADD80000 */  sw         $t8, 0x0($t6)
/* 1BDC0 8001B1C0 8CE7FC88 */  lw         $a3, %lo(D_8013FC88)($a3)
/* 1BDC4 8001B1C4 8FA5008C */  lw         $a1, 0x8C($sp)
/* 1BDC8 8001B1C8 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
/* 1BDCC 8001B1CC 30ED0003 */  andi       $t5, $a3, 0x3
/* 1BDD0 8001B1D0 000D3080 */  sll        $a2, $t5, 2
/* 1BDD4 8001B1D4 00CD3021 */  addu       $a2, $a2, $t5
/* 1BDD8 8001B1D8 00063080 */  sll        $a2, $a2, 2
/* 1BDDC 8001B1DC 00CD3021 */  addu       $a2, $a2, $t5
/* 1BDE0 8001B1E0 00063080 */  sll        $a2, $a2, 2
/* 1BDE4 8001B1E4 00CDC021 */  addu       $t8, $a2, $t5
/* 1BDE8 8001B1E8 331900FF */  andi       $t9, $t8, 0xFF
/* 1BDEC 8001B1EC 00196E00 */  sll        $t5, $t9, 24
/* 1BDF0 8001B1F0 00197400 */  sll        $t6, $t9, 16
/* 1BDF4 8001B1F4 24AF0008 */  addiu      $t7, $a1, 0x8
/* 1BDF8 8001B1F8 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BDFC 8001B1FC 01AEC025 */  or         $t8, $t5, $t6
/* 1BE00 8001B200 3719FFFF */  ori        $t9, $t8, 0xFFFF
/* 1BE04 8001B204 ACB90004 */  sw         $t9, 0x4($a1)
/* 1BE08 8001B208 ACAC0000 */  sw         $t4, 0x0($a1)
/* 1BE0C 8001B20C 820E000C */  lb         $t6, 0xC($s0)
/* 1BE10 8001B210 96080000 */  lhu        $t0, 0x0($s0)
/* 1BE14 8001B214 960D0002 */  lhu        $t5, 0x2($s0)
/* 1BE18 8001B218 000E78C0 */  sll        $t7, $t6, 3
/* 1BE1C 8001B21C 01EE7823 */  subu       $t7, $t7, $t6
/* 1BE20 8001B220 25080003 */  addiu      $t0, $t0, 0x3
/* 1BE24 8001B224 01AF4821 */  addu       $t1, $t5, $t7
/* 1BE28 8001B228 8FA2008C */  lw         $v0, 0x8C($sp)
/* 1BE2C 8001B22C 250E001D */  addiu      $t6, $t0, 0x1D
/* 1BE30 8001B230 000E6880 */  sll        $t5, $t6, 2
/* 1BE34 8001B234 25290003 */  addiu      $t1, $t1, 0x3
/* 1BE38 8001B238 31AF0FFF */  andi       $t7, $t5, 0xFFF
/* 1BE3C 8001B23C 000FC300 */  sll        $t8, $t7, 12
/* 1BE40 8001B240 252E0005 */  addiu      $t6, $t1, 0x5
/* 1BE44 8001B244 24590008 */  addiu      $t9, $v0, 0x8
/* 1BE48 8001B248 AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BE4C 8001B24C 000E6880 */  sll        $t5, $t6, 2
/* 1BE50 8001B250 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 1BE54 8001B254 0301C825 */  or         $t9, $t8, $at
/* 1BE58 8001B258 31AF0FFF */  andi       $t7, $t5, 0xFFF
/* 1BE5C 8001B25C 032FC025 */  or         $t8, $t9, $t7
/* 1BE60 8001B260 00087080 */  sll        $t6, $t0, 2
/* 1BE64 8001B264 31CD0FFF */  andi       $t5, $t6, 0xFFF
/* 1BE68 8001B268 00097880 */  sll        $t7, $t1, 2
/* 1BE6C 8001B26C AC580000 */  sw         $t8, 0x0($v0)
/* 1BE70 8001B270 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 1BE74 8001B274 000DCB00 */  sll        $t9, $t5, 12
/* 1BE78 8001B278 03387025 */  or         $t6, $t9, $t8
/* 1BE7C 8001B27C AC4E0004 */  sw         $t6, 0x4($v0)
/* 1BE80 8001B280 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1BE84 8001B284 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
/* 1BE88 8001B288 27A4008C */  addiu      $a0, $sp, 0x8C
/* 1BE8C 8001B28C 25AF0008 */  addiu      $t7, $t5, 0x8
/* 1BE90 8001B290 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BE94 8001B294 ADA00004 */  sw         $zero, 0x4($t5)
/* 1BE98 8001B298 ADB90000 */  sw         $t9, 0x0($t5)
/* 1BE9C 8001B29C 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1BEA0 8001B2A0 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 1BEA4 8001B2A4 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 1BEA8 8001B2A8 270E0008 */  addiu      $t6, $t8, 0x8
/* 1BEAC 8001B2AC AFAE008C */  sw         $t6, 0x8C($sp)
/* 1BEB0 8001B2B0 3C0DB300 */  lui        $t5, (0xB3000000 >> 16)
/* 1BEB4 8001B2B4 AF0D0000 */  sw         $t5, 0x0($t8)
/* 1BEB8 8001B2B8 AF0F0004 */  sw         $t7, 0x4($t8)
/* 1BEBC 8001B2BC 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BEC0 8001B2C0 3C0F0040 */  lui        $t7, (0x404240 >> 16)
/* 1BEC4 8001B2C4 35EF4240 */  ori        $t7, $t7, (0x404240 & 0xFFFF)
/* 1BEC8 8001B2C8 27380008 */  addiu      $t8, $t9, 0x8
/* 1BECC 8001B2CC AFB8008C */  sw         $t8, 0x8C($sp)
/* 1BED0 8001B2D0 AF200004 */  sw         $zero, 0x4($t9)
/* 1BED4 8001B2D4 AF2A0000 */  sw         $t2, 0x0($t9)
/* 1BED8 8001B2D8 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BEDC 8001B2DC 25CD0008 */  addiu      $t5, $t6, 0x8
/* 1BEE0 8001B2E0 AFAD008C */  sw         $t5, 0x8C($sp)
/* 1BEE4 8001B2E4 ADCF0004 */  sw         $t7, 0x4($t6)
/* 1BEE8 8001B2E8 ADCB0000 */  sw         $t3, 0x0($t6)
/* 1BEEC 8001B2EC 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BEF0 8001B2F0 3C0EFC11 */  lui        $t6, (0xFC119623 >> 16)
/* 1BEF4 8001B2F4 3C0DFF2F */  lui        $t5, (0xFF2FFFFF >> 16)
/* 1BEF8 8001B2F8 27380008 */  addiu      $t8, $t9, 0x8
/* 1BEFC 8001B2FC AFB8008C */  sw         $t8, 0x8C($sp)
/* 1BF00 8001B300 35ADFFFF */  ori        $t5, $t5, (0xFF2FFFFF & 0xFFFF)
/* 1BF04 8001B304 35CE9623 */  ori        $t6, $t6, (0xFC119623 & 0xFFFF)
/* 1BF08 8001B308 AF2E0000 */  sw         $t6, 0x0($t9)
/* 1BF0C 8001B30C AF2D0004 */  sw         $t5, 0x4($t9)
/* 1BF10 8001B310 8FAF008C */  lw         $t7, 0x8C($sp)
/* 1BF14 8001B314 2418FFFF */  addiu      $t8, $zero, -0x1
/* 1BF18 8001B318 25F90008 */  addiu      $t9, $t7, 0x8
/* 1BF1C 8001B31C AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BF20 8001B320 ADF80004 */  sw         $t8, 0x4($t7)
/* 1BF24 8001B324 ADEC0000 */  sw         $t4, 0x0($t7)
/* 1BF28 8001B328 8E070014 */  lw         $a3, 0x14($s0)
/* 1BF2C 8001B32C 96060002 */  lhu        $a2, 0x2($s0)
/* 1BF30 8001B330 96050000 */  lhu        $a1, 0x0($s0)
/* 1BF34 8001B334 0C006743 */  jal        func_80019D0C
/* 1BF38 8001B338 AFA00010 */   sw        $zero, 0x10($sp)
/* 1BF3C 8001B33C 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BF40 8001B340 8FAD0090 */  lw         $t5, 0x90($sp)
/* 1BF44 8001B344 ADAE0000 */  sw         $t6, 0x0($t5)
/* 1BF48 8001B348 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1BF4C 8001B34C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1BF50 8001B350 27BD0090 */  addiu      $sp, $sp, 0x90
/* 1BF54 8001B354 03E00008 */  jr         $ra
/* 1BF58 8001B358 00000000 */   nop
