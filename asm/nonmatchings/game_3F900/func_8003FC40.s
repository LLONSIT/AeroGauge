glabel func_8003FC40
/* 40840 8003FC40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 40844 8003FC44 3C028009 */  lui        $v0, %hi(D_8008EF34)
/* 40848 8003FC48 9042EF34 */  lbu        $v0, %lo(D_8008EF34)($v0)
/* 4084C 8003FC4C AFBF002C */  sw         $ra, 0x2C($sp)
/* 40850 8003FC50 AFBE0028 */  sw         $fp, 0x28($sp)
/* 40854 8003FC54 AFB70024 */  sw         $s7, 0x24($sp)
/* 40858 8003FC58 AFB60020 */  sw         $s6, 0x20($sp)
/* 4085C 8003FC5C AFB5001C */  sw         $s5, 0x1C($sp)
/* 40860 8003FC60 AFB40018 */  sw         $s4, 0x18($sp)
/* 40864 8003FC64 AFB30014 */  sw         $s3, 0x14($sp)
/* 40868 8003FC68 AFB20010 */  sw         $s2, 0x10($sp)
/* 4086C 8003FC6C AFB1000C */  sw         $s1, 0xC($sp)
/* 40870 8003FC70 AFB00008 */  sw         $s0, 0x8($sp)
/* 40874 8003FC74 AFA40030 */  sw         $a0, 0x30($sp)
/* 40878 8003FC78 04400013 */  bltz       $v0, .L8003FCC8
/* 4087C 8003FC7C 00401825 */   or        $v1, $v0, $zero
/* 40880 8003FC80 2861001E */  slti       $at, $v1, 0x1E
/* 40884 8003FC84 50200011 */  beql       $at, $zero, .L8003FCCC
/* 40888 8003FC88 24420001 */   addiu     $v0, $v0, 0x1
/* 4088C 8003FC8C 04610004 */  bgez       $v1, .L8003FCA0
/* 40890 8003FC90 306E0001 */   andi      $t6, $v1, 0x1
/* 40894 8003FC94 11C00002 */  beqz       $t6, .L8003FCA0
/* 40898 8003FC98 00000000 */   nop
/* 4089C 8003FC9C 25CEFFFE */  addiu      $t6, $t6, -0x2
.L8003FCA0:
/* 408A0 8003FCA0 15C00009 */  bnez       $t6, .L8003FCC8
/* 408A4 8003FCA4 3C0F8009 */   lui       $t7, %hi(D_8008EF39)
/* 408A8 8003FCA8 91EFEF39 */  lbu        $t7, %lo(D_8008EF39)($t7)
/* 408AC 8003FCAC 3C018009 */  lui        $at, %hi(D_8008EF39)
/* 408B0 8003FCB0 3C198009 */  lui        $t9, %hi(D_8008EF3A)
/* 408B4 8003FCB4 25F8FFFA */  addiu      $t8, $t7, -0x6
/* 408B8 8003FCB8 A038EF39 */  sb         $t8, %lo(D_8008EF39)($at)
/* 408BC 8003FCBC 9339EF3A */  lbu        $t9, %lo(D_8008EF3A)($t9)
/* 408C0 8003FCC0 272EFFF7 */  addiu      $t6, $t9, -0x9
/* 408C4 8003FCC4 A02EEF3A */  sb         $t6, %lo(D_8008EF3A)($at)
.L8003FCC8:
/* 408C8 8003FCC8 24420001 */  addiu      $v0, $v0, 0x1
.L8003FCCC:
/* 408CC 8003FCCC 304F00FF */  andi       $t7, $v0, 0xFF
/* 408D0 8003FCD0 3C018009 */  lui        $at, %hi(D_8008EF34)
/* 408D4 8003FCD4 A02FEF34 */  sb         $t7, %lo(D_8008EF34)($at)
/* 408D8 8003FCD8 2401001E */  addiu      $at, $zero, 0x1E
/* 408DC 8003FCDC 15E10008 */  bne        $t7, $at, .L8003FD00
/* 408E0 8003FCE0 3C0A8039 */   lui       $t2, %hi(D_803891D8)
/* 408E4 8003FCE4 3C018009 */  lui        $at, %hi(D_8008EF39)
/* 408E8 8003FCE8 2418005A */  addiu      $t8, $zero, 0x5A
/* 408EC 8003FCEC 24190087 */  addiu      $t9, $zero, 0x87
/* 408F0 8003FCF0 A038EF39 */  sb         $t8, %lo(D_8008EF39)($at)
/* 408F4 8003FCF4 A039EF3A */  sb         $t9, %lo(D_8008EF3A)($at)
/* 408F8 8003FCF8 3C018009 */  lui        $at, %hi(D_8008EF34)
/* 408FC 8003FCFC A020EF34 */  sb         $zero, %lo(D_8008EF34)($at)
.L8003FD00:
/* 40900 8003FD00 8FAE0030 */  lw         $t6, 0x30($sp)
/* 40904 8003FD04 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 40908 8003FD08 3C18BA00 */  lui        $t8, (0xBA001402 >> 16)
/* 4090C 8003FD0C 8DC20000 */  lw         $v0, 0x0($t6)
/* 40910 8003FD10 37181402 */  ori        $t8, $t8, (0xBA001402 & 0xFFFF)
/* 40914 8003FD14 3C0E0050 */  lui        $t6, (0x504240 >> 16)
/* 40918 8003FD18 00402025 */  or         $a0, $v0, $zero
/* 4091C 8003FD1C 24420008 */  addiu      $v0, $v0, 0x8
/* 40920 8003FD20 00402825 */  or         $a1, $v0, $zero
/* 40924 8003FD24 AC8F0000 */  sw         $t7, 0x0($a0)
/* 40928 8003FD28 AC800004 */  sw         $zero, 0x4($a0)
/* 4092C 8003FD2C 24420008 */  addiu      $v0, $v0, 0x8
/* 40930 8003FD30 00403025 */  or         $a2, $v0, $zero
/* 40934 8003FD34 ACA00004 */  sw         $zero, 0x4($a1)
/* 40938 8003FD38 ACB80000 */  sw         $t8, 0x0($a1)
/* 4093C 8003FD3C 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 40940 8003FD40 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 40944 8003FD44 24420008 */  addiu      $v0, $v0, 0x8
/* 40948 8003FD48 35CE4240 */  ori        $t6, $t6, (0x504240 & 0xFFFF)
/* 4094C 8003FD4C ACCE0004 */  sw         $t6, 0x4($a2)
/* 40950 8003FD50 ACD90000 */  sw         $t9, 0x0($a2)
/* 40954 8003FD54 00403825 */  or         $a3, $v0, $zero
/* 40958 8003FD58 3C0FFC11 */  lui        $t7, (0xFC11FE23 >> 16)
/* 4095C 8003FD5C 35EFFE23 */  ori        $t7, $t7, (0xFC11FE23 & 0xFFFF)
/* 40960 8003FD60 24420008 */  addiu      $v0, $v0, 0x8
/* 40964 8003FD64 2418F3F9 */  addiu      $t8, $zero, -0xC07
/* 40968 8003FD68 ACF80004 */  sw         $t8, 0x4($a3)
/* 4096C 8003FD6C ACEF0000 */  sw         $t7, 0x0($a3)
/* 40970 8003FD70 00401825 */  or         $v1, $v0, $zero
/* 40974 8003FD74 3C19FA00 */  lui        $t9, (0xFA000000 >> 16)
/* 40978 8003FD78 AC790000 */  sw         $t9, 0x0($v1)
/* 4097C 8003FD7C 3C0E8009 */  lui        $t6, %hi(D_8008EF38)
/* 40980 8003FD80 91CFEF38 */  lbu        $t7, %lo(D_8008EF38)($t6)
/* 40984 8003FD84 3C198009 */  lui        $t9, %hi(D_8008EF39)
/* 40988 8003FD88 932EEF39 */  lbu        $t6, %lo(D_8008EF39)($t9)
/* 4098C 8003FD8C 000FC600 */  sll        $t8, $t7, 24
/* 40990 8003FD90 24420008 */  addiu      $v0, $v0, 0x8
/* 40994 8003FD94 000E7C00 */  sll        $t7, $t6, 16
/* 40998 8003FD98 030FC825 */  or         $t9, $t8, $t7
/* 4099C 8003FD9C 3C0E8009 */  lui        $t6, %hi(D_8008EF3A)
/* 409A0 8003FDA0 91D8EF3A */  lbu        $t8, %lo(D_8008EF3A)($t6)
/* 409A4 8003FDA4 00402025 */  or         $a0, $v0, $zero
/* 409A8 8003FDA8 24420008 */  addiu      $v0, $v0, 0x8
/* 409AC 8003FDAC 00187A00 */  sll        $t7, $t8, 8
/* 409B0 8003FDB0 032F7025 */  or         $t6, $t9, $t7
/* 409B4 8003FDB4 3C188009 */  lui        $t8, %hi(D_8008EF3B)
/* 409B8 8003FDB8 9319EF3B */  lbu        $t9, %lo(D_8008EF3B)($t8)
/* 409BC 8003FDBC 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
/* 409C0 8003FDC0 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
/* 409C4 8003FDC4 01D97825 */  or         $t7, $t6, $t9
/* 409C8 8003FDC8 AC6F0004 */  sw         $t7, 0x4($v1)
/* 409CC 8003FDCC AC980000 */  sw         $t8, 0x0($a0)
/* 409D0 8003FDD0 AC800004 */  sw         $zero, 0x4($a0)
/* 409D4 8003FDD4 3C0EBA00 */  lui        $t6, (0xBA001001 >> 16)
/* 409D8 8003FDD8 00402825 */  or         $a1, $v0, $zero
/* 409DC 8003FDDC 24420008 */  addiu      $v0, $v0, 0x8
/* 409E0 8003FDE0 35CE1001 */  ori        $t6, $t6, (0xBA001001 & 0xFFFF)
/* 409E4 8003FDE4 ACAE0000 */  sw         $t6, 0x0($a1)
/* 409E8 8003FDE8 00403025 */  or         $a2, $v0, $zero
/* 409EC 8003FDEC 3C19BA00 */  lui        $t9, (0xBA000C02 >> 16)
/* 409F0 8003FDF0 ACA00004 */  sw         $zero, 0x4($a1)
/* 409F4 8003FDF4 37390C02 */  ori        $t9, $t9, (0xBA000C02 & 0xFFFF)
/* 409F8 8003FDF8 24420008 */  addiu      $v0, $v0, 0x8
/* 409FC 8003FDFC ACD90000 */  sw         $t9, 0x0($a2)
/* 40A00 8003FE00 240F2000 */  addiu      $t7, $zero, 0x2000
/* 40A04 8003FE04 00403825 */  or         $a3, $v0, $zero
/* 40A08 8003FE08 ACCF0004 */  sw         $t7, 0x4($a2)
/* 40A0C 8003FE0C 24420008 */  addiu      $v0, $v0, 0x8
/* 40A10 8003FE10 3C18BA00 */  lui        $t8, (0xBA000903 >> 16)
/* 40A14 8003FE14 37180903 */  ori        $t8, $t8, (0xBA000903 & 0xFFFF)
/* 40A18 8003FE18 240E0C00 */  addiu      $t6, $zero, 0xC00
/* 40A1C 8003FE1C 00402025 */  or         $a0, $v0, $zero
/* 40A20 8003FE20 ACEE0004 */  sw         $t6, 0x4($a3)
/* 40A24 8003FE24 ACF80000 */  sw         $t8, 0x0($a3)
/* 40A28 8003FE28 3C19BA00 */  lui        $t9, (0xBA000E02 >> 16)
/* 40A2C 8003FE2C 37390E02 */  ori        $t9, $t9, (0xBA000E02 & 0xFFFF)
/* 40A30 8003FE30 3C1F0400 */  lui        $ra, (0x4000400 >> 16)
/* 40A34 8003FE34 3C140008 */  lui        $s4, (0x80200 >> 16)
/* 40A38 8003FE38 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 40A3C 8003FE3C 3C0BFD88 */  lui        $t3, (0xFD88003F >> 16)
/* 40A40 8003FE40 AC990000 */  sw         $t9, 0x0($a0)
/* 40A44 8003FE44 AC800004 */  sw         $zero, 0x4($a0)
/* 40A48 8003FE48 24420008 */  addiu      $v0, $v0, 0x8
/* 40A4C 8003FE4C 356B003F */  ori        $t3, $t3, (0xFD88003F & 0xFFFF)
/* 40A50 8003FE50 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 40A54 8003FE54 36940200 */  ori        $s4, $s4, (0x80200 & 0xFFFF)
/* 40A58 8003FE58 37FF0400 */  ori        $ra, $ra, (0x4000400 & 0xFFFF)
/* 40A5C 8003FE5C 00001825 */  or         $v1, $zero, $zero
/* 40A60 8003FE60 254A91D8 */  addiu      $t2, $t2, %lo(D_803891D8)
/* 40A64 8003FE64 3C1EB300 */  lui        $fp, (0xB3000000 >> 16)
/* 40A68 8003FE68 3C17B400 */  lui        $s7, (0xB4000000 >> 16)
/* 40A6C 8003FE6C 3C16E400 */  lui        $s6, (0xE400030C >> 16)
/* 40A70 8003FE70 3C15F200 */  lui        $s5, (0xF2000000 >> 16)
/* 40A74 8003FE74 3C13F580 */  lui        $s3, (0xF5800000 >> 16)
/* 40A78 8003FE78 3C120700 */  lui        $s2, (0x70001C8 >> 16)
/* 40A7C 8003FE7C 3C11F400 */  lui        $s1, (0xF4000000 >> 16)
/* 40A80 8003FE80 3C10E600 */  lui        $s0, (0xE6000000 >> 16)
/* 40A84 8003FE84 3C0CF588 */  lui        $t4, (0xF5880000 >> 16)
.L8003FE88:
/* 40A88 8003FE88 00634023 */  subu       $t0, $v1, $v1
/* 40A8C 8003FE8C 25080040 */  addiu      $t0, $t0, 0x40
/* 40A90 8003FE90 00087843 */  sra        $t7, $t0, 1
/* 40A94 8003FE94 25E80007 */  addiu      $t0, $t7, 0x7
/* 40A98 8003FE98 0008C0C3 */  sra        $t8, $t0, 3
/* 40A9C 8003FE9C 00402025 */  or         $a0, $v0, $zero
/* 40AA0 8003FEA0 24420008 */  addiu      $v0, $v0, 0x8
/* 40AA4 8003FEA4 330E01FF */  andi       $t6, $t8, 0x1FF
/* 40AA8 8003FEA8 000E4240 */  sll        $t0, $t6, 9
/* 40AAC 8003FEAC 00402825 */  or         $a1, $v0, $zero
/* 40AB0 8003FEB0 24420008 */  addiu      $v0, $v0, 0x8
/* 40AB4 8003FEB4 010C7825 */  or         $t7, $t0, $t4
/* 40AB8 8003FEB8 0003C040 */  sll        $t8, $v1, 1
/* 40ABC 8003FEBC AC8B0000 */  sw         $t3, 0x0($a0)
/* 40AC0 8003FEC0 AC8A0004 */  sw         $t2, 0x4($a0)
/* 40AC4 8003FEC4 ACAF0000 */  sw         $t7, 0x0($a1)
/* 40AC8 8003FEC8 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 40ACC 8003FECC 00403025 */  or         $a2, $v0, $zero
/* 40AD0 8003FED0 000ECB00 */  sll        $t9, $t6, 12
/* 40AD4 8003FED4 ACAD0004 */  sw         $t5, 0x4($a1)
/* 40AD8 8003FED8 2469003F */  addiu      $t1, $v1, 0x3F
/* 40ADC 8003FEDC 0009C040 */  sll        $t8, $t1, 1
/* 40AE0 8003FEE0 03317825 */  or         $t7, $t9, $s1
/* 40AE4 8003FEE4 24420008 */  addiu      $v0, $v0, 0x8
/* 40AE8 8003FEE8 00403825 */  or         $a3, $v0, $zero
/* 40AEC 8003FEEC 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 40AF0 8003FEF0 ACC00004 */  sw         $zero, 0x4($a2)
/* 40AF4 8003FEF4 ACD00000 */  sw         $s0, 0x0($a2)
/* 40AF8 8003FEF8 ACEF0000 */  sw         $t7, 0x0($a3)
/* 40AFC 8003FEFC 000ECB00 */  sll        $t9, $t6, 12
/* 40B00 8003FF00 03327825 */  or         $t7, $t9, $s2
/* 40B04 8003FF04 35F801C8 */  ori        $t8, $t7, (0x70001C8 & 0xFFFF)
/* 40B08 8003FF08 24420008 */  addiu      $v0, $v0, 0x8
/* 40B0C 8003FF0C 00402025 */  or         $a0, $v0, $zero
/* 40B10 8003FF10 ACF80004 */  sw         $t8, 0x4($a3)
/* 40B14 8003FF14 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 40B18 8003FF18 AC8E0000 */  sw         $t6, 0x0($a0)
/* 40B1C 8003FF1C 24420008 */  addiu      $v0, $v0, 0x8
/* 40B20 8003FF20 00037880 */  sll        $t7, $v1, 2
/* 40B24 8003FF24 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 40B28 8003FF28 00402825 */  or         $a1, $v0, $zero
/* 40B2C 8003FF2C AC800004 */  sw         $zero, 0x4($a0)
/* 40B30 8003FF30 0113C825 */  or         $t9, $t0, $s3
/* 40B34 8003FF34 ACB90000 */  sw         $t9, 0x0($a1)
/* 40B38 8003FF38 00187300 */  sll        $t6, $t8, 12
/* 40B3C 8003FF3C 01D5C825 */  or         $t9, $t6, $s5
/* 40B40 8003FF40 24420008 */  addiu      $v0, $v0, 0x8
/* 40B44 8003FF44 00097880 */  sll        $t7, $t1, 2
/* 40B48 8003FF48 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 40B4C 8003FF4C 00403025 */  or         $a2, $v0, $zero
/* 40B50 8003FF50 ACB40004 */  sw         $s4, 0x4($a1)
/* 40B54 8003FF54 ACD90000 */  sw         $t9, 0x0($a2)
/* 40B58 8003FF58 00187300 */  sll        $t6, $t8, 12
/* 40B5C 8003FF5C 35D901C8 */  ori        $t9, $t6, 0x1C8
/* 40B60 8003FF60 246F0049 */  addiu      $t7, $v1, 0x49
/* 40B64 8003FF64 000FC080 */  sll        $t8, $t7, 2
/* 40B68 8003FF68 ACD90004 */  sw         $t9, 0x4($a2)
/* 40B6C 8003FF6C 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 40B70 8003FF70 000ECB00 */  sll        $t9, $t6, 12
/* 40B74 8003FF74 03367825 */  or         $t7, $t9, $s6
/* 40B78 8003FF78 24420008 */  addiu      $v0, $v0, 0x8
/* 40B7C 8003FF7C 35F8030C */  ori        $t8, $t7, (0xE400030C & 0xFFFF)
/* 40B80 8003FF80 246E0009 */  addiu      $t6, $v1, 0x9
/* 40B84 8003FF84 000EC880 */  sll        $t9, $t6, 2
/* 40B88 8003FF88 00403825 */  or         $a3, $v0, $zero
/* 40B8C 8003FF8C ACF80000 */  sw         $t8, 0x0($a3)
/* 40B90 8003FF90 332F0FFF */  andi       $t7, $t9, 0xFFF
/* 40B94 8003FF94 000FC300 */  sll        $t8, $t7, 12
/* 40B98 8003FF98 24420008 */  addiu      $v0, $v0, 0x8
/* 40B9C 8003FF9C 00402025 */  or         $a0, $v0, $zero
/* 40BA0 8003FFA0 370E016C */  ori        $t6, $t8, 0x16C
/* 40BA4 8003FFA4 ACEE0004 */  sw         $t6, 0x4($a3)
/* 40BA8 8003FFA8 24420008 */  addiu      $v0, $v0, 0x8
/* 40BAC 8003FFAC 00607825 */  or         $t7, $v1, $zero
/* 40BB0 8003FFB0 000FC540 */  sll        $t8, $t7, 21
/* 40BB4 8003FFB4 00402825 */  or         $a1, $v0, $zero
/* 40BB8 8003FFB8 24630040 */  addiu      $v1, $v1, 0x40
/* 40BBC 8003FFBC 24010080 */  addiu      $at, $zero, 0x80
/* 40BC0 8003FFC0 AC980004 */  sw         $t8, 0x4($a0)
/* 40BC4 8003FFC4 AC970000 */  sw         $s7, 0x0($a0)
/* 40BC8 8003FFC8 ACBF0004 */  sw         $ra, 0x4($a1)
/* 40BCC 8003FFCC ACBE0000 */  sw         $fp, 0x0($a1)
/* 40BD0 8003FFD0 1461FFAD */  bne        $v1, $at, .L8003FE88
/* 40BD4 8003FFD4 24420008 */   addiu     $v0, $v0, 0x8
/* 40BD8 8003FFD8 8FAE0030 */  lw         $t6, 0x30($sp)
/* 40BDC 8003FFDC ADC20000 */  sw         $v0, 0x0($t6)
/* 40BE0 8003FFE0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 40BE4 8003FFE4 8FBE0028 */  lw         $fp, 0x28($sp)
/* 40BE8 8003FFE8 8FB70024 */  lw         $s7, 0x24($sp)
/* 40BEC 8003FFEC 8FB60020 */  lw         $s6, 0x20($sp)
/* 40BF0 8003FFF0 8FB5001C */  lw         $s5, 0x1C($sp)
/* 40BF4 8003FFF4 8FB40018 */  lw         $s4, 0x18($sp)
/* 40BF8 8003FFF8 8FB30014 */  lw         $s3, 0x14($sp)
/* 40BFC 8003FFFC 8FB20010 */  lw         $s2, 0x10($sp)
/* 40C00 80040000 8FB1000C */  lw         $s1, 0xC($sp)
/* 40C04 80040004 8FB00008 */  lw         $s0, 0x8($sp)
/* 40C08 80040008 03E00008 */  jr         $ra
/* 40C0C 8004000C 27BD0030 */   addiu     $sp, $sp, 0x30
