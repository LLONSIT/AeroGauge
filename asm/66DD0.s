.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_800661D0
/* 66DD0 800661D0 8C8E0004 */  lw         $t6, 0x4($a0)
/* 66DD4 800661D4 00803025 */  or         $a2, $a0, $zero
/* 66DD8 800661D8 00804025 */  or         $t0, $a0, $zero
/* 66DDC 800661DC ACAE0000 */  sw         $t6, 0x0($a1)
/* 66DE0 800661E0 8C8F000C */  lw         $t7, 0xC($a0)
/* 66DE4 800661E4 00001025 */  or         $v0, $zero, $zero
/* 66DE8 800661E8 00A01825 */  or         $v1, $a1, $zero
/* 66DEC 800661EC ACAF0004 */  sw         $t7, 0x4($a1)
/* 66DF0 800661F0 8C980010 */  lw         $t8, 0x10($a0)
/* 66DF4 800661F4 24040010 */  addiu      $a0, $zero, 0x10
/* 66DF8 800661F8 00A03825 */  or         $a3, $a1, $zero
/* 66DFC 800661FC ACB80008 */  sw         $t8, 0x8($a1)
.L80066200:
/* 66E00 80066200 8CD90018 */  lw         $t9, 0x18($a2)
/* 66E04 80066204 24420002 */  addiu      $v0, $v0, 0x2
/* 66E08 80066208 24630008 */  addiu      $v1, $v1, 0x8
/* 66E0C 8006620C AC790004 */  sw         $t9, 0x4($v1)
/* 66E10 80066210 8CC90058 */  lw         $t1, 0x58($a2)
/* 66E14 80066214 24C60008 */  addiu      $a2, $a2, 0x8
/* 66E18 80066218 24E70002 */  addiu      $a3, $a3, 0x2
/* 66E1C 8006621C AC690044 */  sw         $t1, 0x44($v1)
/* 66E20 80066220 910A0098 */  lbu        $t2, 0x98($t0)
/* 66E24 80066224 25080002 */  addiu      $t0, $t0, 0x2
/* 66E28 80066228 A0EA008A */  sb         $t2, 0x8A($a3)
/* 66E2C 8006622C 910B00A6 */  lbu        $t3, 0xA6($t0)
/* 66E30 80066230 A0EB009A */  sb         $t3, 0x9A($a3)
/* 66E34 80066234 8CCC00B0 */  lw         $t4, 0xB0($a2)
/* 66E38 80066238 AC6C00A4 */  sw         $t4, 0xA4($v1)
/* 66E3C 8006623C 8CCD0014 */  lw         $t5, 0x14($a2)
/* 66E40 80066240 AC6D0008 */  sw         $t5, 0x8($v1)
/* 66E44 80066244 8CCE0054 */  lw         $t6, 0x54($a2)
/* 66E48 80066248 AC6E0048 */  sw         $t6, 0x48($v1)
/* 66E4C 8006624C 910F0097 */  lbu        $t7, 0x97($t0)
/* 66E50 80066250 A0EF008B */  sb         $t7, 0x8B($a3)
/* 66E54 80066254 911800A7 */  lbu        $t8, 0xA7($t0)
/* 66E58 80066258 A0F8009B */  sb         $t8, 0x9B($a3)
/* 66E5C 8006625C 8CD900B4 */  lw         $t9, 0xB4($a2)
/* 66E60 80066260 1444FFE7 */  bne        $v0, $a0, .L80066200
/* 66E64 80066264 AC7900A8 */   sw        $t9, 0xA8($v1)
/* 66E68 80066268 03E00008 */  jr         $ra
/* 66E6C 8006626C 00000000 */   nop

glabel func_80066270
/* 66E70 80066270 8CAE0000 */  lw         $t6, 0x0($a1)
/* 66E74 80066274 00801825 */  or         $v1, $a0, $zero
/* 66E78 80066278 00803825 */  or         $a3, $a0, $zero
/* 66E7C 8006627C AC8E0004 */  sw         $t6, 0x4($a0)
/* 66E80 80066280 8CAF0004 */  lw         $t7, 0x4($a1)
/* 66E84 80066284 00001025 */  or         $v0, $zero, $zero
/* 66E88 80066288 00A03025 */  or         $a2, $a1, $zero
/* 66E8C 8006628C AC8F000C */  sw         $t7, 0xC($a0)
/* 66E90 80066290 8CB80008 */  lw         $t8, 0x8($a1)
/* 66E94 80066294 00A04025 */  or         $t0, $a1, $zero
/* 66E98 80066298 AC980010 */  sw         $t8, 0x10($a0)
/* 66E9C 8006629C 24040010 */  addiu      $a0, $zero, 0x10
.L800662A0:
/* 66EA0 800662A0 8CD9000C */  lw         $t9, 0xC($a2)
/* 66EA4 800662A4 24420002 */  addiu      $v0, $v0, 0x2
/* 66EA8 800662A8 24630008 */  addiu      $v1, $v1, 0x8
/* 66EAC 800662AC AC790010 */  sw         $t9, 0x10($v1)
/* 66EB0 800662B0 8CC9004C */  lw         $t1, 0x4C($a2)
/* 66EB4 800662B4 24C60008 */  addiu      $a2, $a2, 0x8
/* 66EB8 800662B8 24E70002 */  addiu      $a3, $a3, 0x2
/* 66EBC 800662BC AC690050 */  sw         $t1, 0x50($v1)
/* 66EC0 800662C0 910A008C */  lbu        $t2, 0x8C($t0)
/* 66EC4 800662C4 25080002 */  addiu      $t0, $t0, 0x2
/* 66EC8 800662C8 A0EA0096 */  sb         $t2, 0x96($a3)
/* 66ECC 800662CC 910B009A */  lbu        $t3, 0x9A($t0)
/* 66ED0 800662D0 A0EB00A6 */  sb         $t3, 0xA6($a3)
/* 66ED4 800662D4 8CCC00A4 */  lw         $t4, 0xA4($a2)
/* 66ED8 800662D8 AC6C00B0 */  sw         $t4, 0xB0($v1)
/* 66EDC 800662DC 8CCD0008 */  lw         $t5, 0x8($a2)
/* 66EE0 800662E0 AC6D0014 */  sw         $t5, 0x14($v1)
/* 66EE4 800662E4 8CCE0048 */  lw         $t6, 0x48($a2)
/* 66EE8 800662E8 AC6E0054 */  sw         $t6, 0x54($v1)
/* 66EEC 800662EC 910F008B */  lbu        $t7, 0x8B($t0)
/* 66EF0 800662F0 A0EF0097 */  sb         $t7, 0x97($a3)
/* 66EF4 800662F4 9118009B */  lbu        $t8, 0x9B($t0)
/* 66EF8 800662F8 A0F800A7 */  sb         $t8, 0xA7($a3)
/* 66EFC 800662FC 8CD900A8 */  lw         $t9, 0xA8($a2)
/* 66F00 80066300 1444FFE7 */  bne        $v0, $a0, .L800662A0
/* 66F04 80066304 AC7900B4 */   sw        $t9, 0xB4($v1)
/* 66F08 80066308 03E00008 */  jr         $ra
/* 66F0C 8006630C 00000000 */   nop

glabel func_80066310
/* 66F10 80066310 00851021 */  addu       $v0, $a0, $a1
/* 66F14 80066314 904E0098 */  lbu        $t6, 0x98($v0)
/* 66F18 80066318 00057880 */  sll        $t7, $a1, 2
/* 66F1C 8006631C 008F3021 */  addu       $a2, $a0, $t7
/* 66F20 80066320 51C0000D */  beql       $t6, $zero, .L80066358
/* 66F24 80066324 8CC70018 */   lw        $a3, 0x18($a2)
/* 66F28 80066328 00057880 */  sll        $t7, $a1, 2
/* 66F2C 8006632C 008F3021 */  addu       $a2, $a0, $t7
/* 66F30 80066330 8CC70058 */  lw         $a3, 0x58($a2)
/* 66F34 80066334 90E30000 */  lbu        $v1, 0x0($a3)
/* 66F38 80066338 24F80001 */  addiu      $t8, $a3, 0x1
/* 66F3C 8006633C ACD80058 */  sw         $t8, 0x58($a2)
/* 66F40 80066340 90590098 */  lbu        $t9, 0x98($v0)
/* 66F44 80066344 272EFFFF */  addiu      $t6, $t9, -0x1
/* 66F48 80066348 A04E0098 */  sb         $t6, 0x98($v0)
/* 66F4C 8006634C 03E00008 */  jr         $ra
/* 66F50 80066350 00601025 */   or        $v0, $v1, $zero
/* 66F54 80066354 8CC70018 */  lw         $a3, 0x18($a2)
.L80066358:
/* 66F58 80066358 240800FE */  addiu      $t0, $zero, 0xFE
/* 66F5C 8006635C 90E30000 */  lbu        $v1, 0x0($a3)
/* 66F60 80066360 24F80001 */  addiu      $t8, $a3, 0x1
/* 66F64 80066364 ACD80018 */  sw         $t8, 0x18($a2)
/* 66F68 80066368 15030018 */  bne        $t0, $v1, .L800663CC
/* 66F6C 8006636C 00000000 */   nop
/* 66F70 80066370 93040000 */  lbu        $a0, 0x0($t8)
/* 66F74 80066374 27190001 */  addiu      $t9, $t8, 0x1
/* 66F78 80066378 ACD90018 */  sw         $t9, 0x18($a2)
/* 66F7C 8006637C 11040013 */  beq        $t0, $a0, .L800663CC
/* 66F80 80066380 272E0001 */   addiu     $t6, $t9, 0x1
/* 66F84 80066384 93230000 */  lbu        $v1, 0x0($t9)
/* 66F88 80066388 ACCE0018 */  sw         $t6, 0x18($a2)
/* 66F8C 8006638C 91C50000 */  lbu        $a1, 0x0($t6)
/* 66F90 80066390 25CF0001 */  addiu      $t7, $t6, 0x1
/* 66F94 80066394 0004CA00 */  sll        $t9, $a0, 8
/* 66F98 80066398 ACCF0018 */  sw         $t7, 0x18($a2)
/* 66F9C 8006639C 03237021 */  addu       $t6, $t9, $v1
/* 66FA0 800663A0 01EE7823 */  subu       $t7, $t7, $t6
/* 66FA4 800663A4 25F9FFFC */  addiu      $t9, $t7, -0x4
/* 66FA8 800663A8 ACD90058 */  sw         $t9, 0x58($a2)
/* 66FAC 800663AC A0450098 */  sb         $a1, 0x98($v0)
/* 66FB0 800663B0 8CC70058 */  lw         $a3, 0x58($a2)
/* 66FB4 800663B4 90E30000 */  lbu        $v1, 0x0($a3)
/* 66FB8 800663B8 24F80001 */  addiu      $t8, $a3, 0x1
/* 66FBC 800663BC ACD80058 */  sw         $t8, 0x58($a2)
/* 66FC0 800663C0 904E0098 */  lbu        $t6, 0x98($v0)
/* 66FC4 800663C4 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 66FC8 800663C8 A04F0098 */  sb         $t7, 0x98($v0)
.L800663CC:
/* 66FCC 800663CC 03E00008 */  jr         $ra
/* 66FD0 800663D0 00601025 */   or        $v0, $v1, $zero

glabel func_800663D4
/* 66FD4 800663D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 66FD8 800663D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 66FDC 800663DC 01402025 */  or         $a0, $t2, $zero
/* 66FE0 800663E0 0C0198C4 */  jal        func_80066310
/* 66FE4 800663E4 01602825 */   or        $a1, $t3, $zero
/* 66FE8 800663E8 304E0080 */  andi       $t6, $v0, 0x80
/* 66FEC 800663EC 11C0000A */  beqz       $t6, .L80066418
/* 66FF0 800663F0 00404825 */   or        $t1, $v0, $zero
/* 66FF4 800663F4 3049007F */  andi       $t1, $v0, 0x7F
.L800663F8:
/* 66FF8 800663F8 01402025 */  or         $a0, $t2, $zero
/* 66FFC 800663FC 0C0198C4 */  jal        func_80066310
/* 67000 80066400 01602825 */   or        $a1, $t3, $zero
/* 67004 80066404 000979C0 */  sll        $t7, $t1, 7
/* 67008 80066408 3058007F */  andi       $t8, $v0, 0x7F
/* 6700C 8006640C 30590080 */  andi       $t9, $v0, 0x80
/* 67010 80066410 1720FFF9 */  bnez       $t9, .L800663F8
/* 67014 80066414 01F84821 */   addu      $t1, $t7, $t8
.L80066418:
/* 67018 80066418 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6701C 8006641C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 67020 80066420 01201025 */  or         $v0, $t1, $zero
/* 67024 80066424 03E00008 */  jr         $ra
/* 67028 80066428 00000000 */   nop

glabel func_8006642C
/* 6702C 8006642C 03E00008 */  jr         $ra
/* 67030 80066430 00000000 */   nop

glabel func_80066434
/* 67034 80066434 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 67038 80066438 AFB00018 */  sw         $s0, 0x18($sp)
/* 6703C 8006643C 00A08025 */  or         $s0, $a1, $zero
/* 67040 80066440 AFBF001C */  sw         $ra, 0x1C($sp)
/* 67044 80066444 00806025 */  or         $t4, $a0, $zero
/* 67048 80066448 2409FFFF */  addiu      $t1, $zero, -0x1
/* 6704C 8006644C 8C860010 */  lw         $a2, 0x10($a0)
/* 67050 80066450 24050010 */  addiu      $a1, $zero, 0x10
/* 67054 80066454 8FAB0024 */  lw         $t3, 0x24($sp)
/* 67058 80066458 00001025 */  or         $v0, $zero, $zero
/* 6705C 8006645C 8D8E0004 */  lw         $t6, 0x4($t4)
.L80066460:
/* 67060 80066460 004E7806 */  srlv       $t7, $t6, $v0
/* 67064 80066464 31F80001 */  andi       $t8, $t7, 0x1
/* 67068 80066468 53000010 */  beql       $t8, $zero, .L800664AC
/* 6706C 8006646C 24420001 */   addiu     $v0, $v0, 0x1
/* 67070 80066470 8D8E0014 */  lw         $t6, 0x14($t4)
/* 67074 80066474 0002C880 */  sll        $t9, $v0, 2
/* 67078 80066478 01991821 */  addu       $v1, $t4, $t9
/* 6707C 8006647C 51C00005 */  beql       $t6, $zero, .L80066494
/* 67080 80066480 8C6400B8 */   lw        $a0, 0xB8($v1)
/* 67084 80066484 8C6F00B8 */  lw         $t7, 0xB8($v1)
/* 67088 80066488 01E6C023 */  subu       $t8, $t7, $a2
/* 6708C 8006648C AC7800B8 */  sw         $t8, 0xB8($v1)
/* 67090 80066490 8C6400B8 */  lw         $a0, 0xB8($v1)
.L80066494:
/* 67094 80066494 0089082B */  sltu       $at, $a0, $t1
/* 67098 80066498 50200004 */  beql       $at, $zero, .L800664AC
/* 6709C 8006649C 24420001 */   addiu     $v0, $v0, 0x1
/* 670A0 800664A0 00804825 */  or         $t1, $a0, $zero
/* 670A4 800664A4 00405825 */  or         $t3, $v0, $zero
/* 670A8 800664A8 24420001 */  addiu      $v0, $v0, 0x1
.L800664AC:
/* 670AC 800664AC 5445FFEC */  bnel       $v0, $a1, .L80066460
/* 670B0 800664B0 8D8E0004 */   lw        $t6, 0x4($t4)
/* 670B4 800664B4 01802025 */  or         $a0, $t4, $zero
/* 670B8 800664B8 0C0198C4 */  jal        func_80066310
/* 670BC 800664BC 01602825 */   or        $a1, $t3, $zero
/* 670C0 800664C0 240100FF */  addiu      $at, $zero, 0xFF
/* 670C4 800664C4 304A00FF */  andi       $t2, $v0, 0xFF
/* 670C8 800664C8 1441005A */  bne        $v0, $at, .L80066634
/* 670CC 800664CC 00401825 */   or        $v1, $v0, $zero
/* 670D0 800664D0 01802025 */  or         $a0, $t4, $zero
/* 670D4 800664D4 0C0198C4 */  jal        func_80066310
/* 670D8 800664D8 01602825 */   or        $a1, $t3, $zero
/* 670DC 800664DC 24010051 */  addiu      $at, $zero, 0x51
/* 670E0 800664E0 304600FF */  andi       $a2, $v0, 0xFF
/* 670E4 800664E4 14410014 */  bne        $v0, $at, .L80066538
/* 670E8 800664E8 00401825 */   or        $v1, $v0, $zero
/* 670EC 800664EC 24190003 */  addiu      $t9, $zero, 0x3
/* 670F0 800664F0 A6190000 */  sh         $t9, 0x0($s0)
/* 670F4 800664F4 A20A0008 */  sb         $t2, 0x8($s0)
/* 670F8 800664F8 A2060009 */  sb         $a2, 0x9($s0)
/* 670FC 800664FC 01802025 */  or         $a0, $t4, $zero
/* 67100 80066500 0C0198C4 */  jal        func_80066310
/* 67104 80066504 01602825 */   or        $a1, $t3, $zero
/* 67108 80066508 A202000B */  sb         $v0, 0xB($s0)
/* 6710C 8006650C 01802025 */  or         $a0, $t4, $zero
/* 67110 80066510 0C0198C4 */  jal        func_80066310
/* 67114 80066514 01602825 */   or        $a1, $t3, $zero
/* 67118 80066518 A202000C */  sb         $v0, 0xC($s0)
/* 6711C 8006651C 01802025 */  or         $a0, $t4, $zero
/* 67120 80066520 0C0198C4 */  jal        func_80066310
/* 67124 80066524 01602825 */   or        $a1, $t3, $zero
/* 67128 80066528 A202000D */  sb         $v0, 0xD($s0)
/* 6712C 8006652C 018B7021 */  addu       $t6, $t4, $t3
/* 67130 80066530 10000067 */  b          .L800666D0
/* 67134 80066534 A1C000A8 */   sb        $zero, 0xA8($t6)
.L80066538:
/* 67138 80066538 2401002F */  addiu      $at, $zero, 0x2F
/* 6713C 8006653C 5461000E */  bnel       $v1, $at, .L80066578
/* 67140 80066540 2401002E */   addiu     $at, $zero, 0x2E
/* 67144 80066544 8D8F0004 */  lw         $t7, 0x4($t4)
/* 67148 80066548 24180001 */  addiu      $t8, $zero, 0x1
/* 6714C 8006654C 0178C804 */  sllv       $t9, $t8, $t3
/* 67150 80066550 01F97026 */  xor        $t6, $t7, $t9
/* 67154 80066554 11C00004 */  beqz       $t6, .L80066568
/* 67158 80066558 AD8E0004 */   sw        $t6, 0x4($t4)
/* 6715C 8006655C 240F0012 */  addiu      $t7, $zero, 0x12
/* 67160 80066560 1000005B */  b          .L800666D0
/* 67164 80066564 A60F0000 */   sh        $t7, 0x0($s0)
.L80066568:
/* 67168 80066568 24190004 */  addiu      $t9, $zero, 0x4
/* 6716C 8006656C 10000058 */  b          .L800666D0
/* 67170 80066570 A6190000 */   sh        $t9, 0x0($s0)
/* 67174 80066574 2401002E */  addiu      $at, $zero, 0x2E
.L80066578:
/* 67178 80066578 1461000B */  bne        $v1, $at, .L800665A8
/* 6717C 8006657C 01802025 */   or        $a0, $t4, $zero
/* 67180 80066580 0C0198C4 */  jal        func_80066310
/* 67184 80066584 01602825 */   or        $a1, $t3, $zero
/* 67188 80066588 01802025 */  or         $a0, $t4, $zero
/* 6718C 8006658C 0C0198C4 */  jal        func_80066310
/* 67190 80066590 01602825 */   or        $a1, $t3, $zero
/* 67194 80066594 018B7021 */  addu       $t6, $t4, $t3
/* 67198 80066598 A1C000A8 */  sb         $zero, 0xA8($t6)
/* 6719C 8006659C 24180013 */  addiu      $t8, $zero, 0x13
/* 671A0 800665A0 1000004B */  b          .L800666D0
/* 671A4 800665A4 A6180000 */   sh        $t8, 0x0($s0)
.L800665A8:
/* 671A8 800665A8 2401002D */  addiu      $at, $zero, 0x2D
/* 671AC 800665AC 14610048 */  bne        $v1, $at, .L800666D0
/* 671B0 800665B0 000B7880 */   sll       $t7, $t3, 2
/* 671B4 800665B4 018F6821 */  addu       $t5, $t4, $t7
/* 671B8 800665B8 8DA20018 */  lw         $v0, 0x18($t5)
/* 671BC 800665BC 240100FF */  addiu      $at, $zero, 0xFF
/* 671C0 800665C0 90440001 */  lbu        $a0, 0x1($v0)
/* 671C4 800665C4 24420001 */  addiu      $v0, $v0, 0x1
/* 671C8 800665C8 24590005 */  addiu      $t9, $v0, 0x5
/* 671CC 800665CC 14800004 */  bnez       $a0, .L800665E0
/* 671D0 800665D0 9045FFFF */   lbu       $a1, -0x1($v0)
/* 671D4 800665D4 A0450000 */  sb         $a1, 0x0($v0)
/* 671D8 800665D8 10000011 */  b          .L80066620
/* 671DC 800665DC ADB90018 */   sw        $t9, 0x18($t5)
.L800665E0:
/* 671E0 800665E0 10810002 */  beq        $a0, $at, .L800665EC
/* 671E4 800665E4 248EFFFF */   addiu     $t6, $a0, -0x1
/* 671E8 800665E8 A04E0000 */  sb         $t6, 0x0($v0)
.L800665EC:
/* 671EC 800665EC 904F0002 */  lbu        $t7, 0x2($v0)
/* 671F0 800665F0 90430001 */  lbu        $v1, 0x1($v0)
/* 671F4 800665F4 904E0003 */  lbu        $t6, 0x3($v0)
/* 671F8 800665F8 000FCC00 */  sll        $t9, $t7, 16
/* 671FC 800665FC 0003C600 */  sll        $t8, $v1, 24
/* 67200 80066600 904F0004 */  lbu        $t7, 0x4($v0)
/* 67204 80066604 03191821 */  addu       $v1, $t8, $t9
/* 67208 80066608 000EC200 */  sll        $t8, $t6, 8
/* 6720C 8006660C 00781821 */  addu       $v1, $v1, $t8
/* 67210 80066610 24420005 */  addiu      $v0, $v0, 0x5
/* 67214 80066614 006F1821 */  addu       $v1, $v1, $t7
/* 67218 80066618 0043C823 */  subu       $t9, $v0, $v1
/* 6721C 8006661C ADB90018 */  sw         $t9, 0x18($t5)
.L80066620:
/* 67220 80066620 018B7021 */  addu       $t6, $t4, $t3
/* 67224 80066624 A1C000A8 */  sb         $zero, 0xA8($t6)
/* 67228 80066628 24180014 */  addiu      $t8, $zero, 0x14
/* 6722C 8006662C 10000028 */  b          .L800666D0
/* 67230 80066630 A6180000 */   sh        $t8, 0x0($s0)
.L80066634:
/* 67234 80066634 240F0001 */  addiu      $t7, $zero, 0x1
/* 67238 80066638 30790080 */  andi       $t9, $v1, 0x80
/* 6723C 8006663C 13200009 */  beqz       $t9, .L80066664
/* 67240 80066640 A60F0000 */   sh        $t7, 0x0($s0)
/* 67244 80066644 A20A0008 */  sb         $t2, 0x8($s0)
/* 67248 80066648 01802025 */  or         $a0, $t4, $zero
/* 6724C 8006664C 0C0198C4 */  jal        func_80066310
/* 67250 80066650 01602825 */   or        $a1, $t3, $zero
/* 67254 80066654 A2020009 */  sb         $v0, 0x9($s0)
/* 67258 80066658 018B7021 */  addu       $t6, $t4, $t3
/* 6725C 8006665C 10000005 */  b          .L80066674
/* 67260 80066660 A1CA00A8 */   sb        $t2, 0xA8($t6)
.L80066664:
/* 67264 80066664 018BC021 */  addu       $t8, $t4, $t3
/* 67268 80066668 930F00A8 */  lbu        $t7, 0xA8($t8)
/* 6726C 8006666C A2020009 */  sb         $v0, 0x9($s0)
/* 67270 80066670 A20F0008 */  sb         $t7, 0x8($s0)
.L80066674:
/* 67274 80066674 92020008 */  lbu        $v0, 0x8($s0)
/* 67278 80066678 240100C0 */  addiu      $at, $zero, 0xC0
/* 6727C 8006667C 305900F0 */  andi       $t9, $v0, 0xF0
/* 67280 80066680 13210012 */  beq        $t9, $at, .L800666CC
/* 67284 80066684 240100D0 */   addiu     $at, $zero, 0xD0
/* 67288 80066688 13210010 */  beq        $t9, $at, .L800666CC
/* 6728C 8006668C 01802025 */   or        $a0, $t4, $zero
/* 67290 80066690 0C0198C4 */  jal        func_80066310
/* 67294 80066694 01602825 */   or        $a1, $t3, $zero
/* 67298 80066698 920E0008 */  lbu        $t6, 0x8($s0)
/* 6729C 8006669C 24010090 */  addiu      $at, $zero, 0x90
/* 672A0 800666A0 A202000A */  sb         $v0, 0xA($s0)
/* 672A4 800666A4 31D800F0 */  andi       $t8, $t6, 0xF0
/* 672A8 800666A8 17010009 */  bne        $t8, $at, .L800666D0
/* 672AC 800666AC 01805025 */   or        $t2, $t4, $zero
/* 672B0 800666B0 AFA90028 */  sw         $t1, 0x28($sp)
/* 672B4 800666B4 0C0198F5 */  jal        func_800663D4
/* 672B8 800666B8 AFAB0024 */   sw        $t3, 0x24($sp)
/* 672BC 800666BC 8FA90028 */  lw         $t1, 0x28($sp)
/* 672C0 800666C0 8FAB0024 */  lw         $t3, 0x24($sp)
/* 672C4 800666C4 10000002 */  b          .L800666D0
/* 672C8 800666C8 AE02000C */   sw        $v0, 0xC($s0)
.L800666CC:
/* 672CC 800666CC A200000A */  sb         $zero, 0xA($s0)
.L800666D0:
/* 672D0 800666D0 AE090004 */  sw         $t1, 0x4($s0)
/* 672D4 800666D4 8D8F000C */  lw         $t7, 0xC($t4)
/* 672D8 800666D8 AD890010 */  sw         $t1, 0x10($t4)
/* 672DC 800666DC 24010012 */  addiu      $at, $zero, 0x12
/* 672E0 800666E0 01E9C821 */  addu       $t9, $t7, $t1
/* 672E4 800666E4 AD99000C */  sw         $t9, 0xC($t4)
/* 672E8 800666E8 860E0000 */  lh         $t6, 0x0($s0)
/* 672EC 800666EC 01805025 */  or         $t2, $t4, $zero
/* 672F0 800666F0 000BC080 */  sll        $t8, $t3, 2
/* 672F4 800666F4 51C10007 */  beql       $t6, $at, .L80066714
/* 672F8 800666F8 240E0001 */   addiu     $t6, $zero, 0x1
/* 672FC 800666FC 0C0198F5 */  jal        func_800663D4
/* 67300 80066700 01986821 */   addu      $t5, $t4, $t8
/* 67304 80066704 8DAF00B8 */  lw         $t7, 0xB8($t5)
/* 67308 80066708 01E2C821 */  addu       $t9, $t7, $v0
/* 6730C 8006670C ADB900B8 */  sw         $t9, 0xB8($t5)
/* 67310 80066710 240E0001 */  addiu      $t6, $zero, 0x1
.L80066714:
/* 67314 80066714 AD8E0014 */  sw         $t6, 0x14($t4)
/* 67318 80066718 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6731C 8006671C 8FB00018 */  lw         $s0, 0x18($sp)
/* 67320 80066720 27BD0030 */  addiu      $sp, $sp, 0x30
/* 67324 80066724 03E00008 */  jr         $ra
/* 67328 80066728 00000000 */   nop

glabel func_8006672C
/* 6732C 8006672C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 67330 80066730 AFB40028 */  sw         $s4, 0x28($sp)
/* 67334 80066734 AFB30024 */  sw         $s3, 0x24($sp)
/* 67338 80066738 AFB20020 */  sw         $s2, 0x20($sp)
/* 6733C 8006673C AFB1001C */  sw         $s1, 0x1C($sp)
/* 67340 80066740 AFB00018 */  sw         $s0, 0x18($sp)
/* 67344 80066744 AFBF002C */  sw         $ra, 0x2C($sp)
/* 67348 80066748 240E0001 */  addiu      $t6, $zero, 0x1
/* 6734C 8006674C 00808025 */  or         $s0, $a0, $zero
/* 67350 80066750 00A0A025 */  or         $s4, $a1, $zero
/* 67354 80066754 AC850000 */  sw         $a1, 0x0($a0)
/* 67358 80066758 AC800004 */  sw         $zero, 0x4($a0)
/* 6735C 8006675C AC800010 */  sw         $zero, 0x10($a0)
/* 67360 80066760 AC80000C */  sw         $zero, 0xC($a0)
/* 67364 80066764 AC8E0014 */  sw         $t6, 0x14($a0)
/* 67368 80066768 00808825 */  or         $s1, $a0, $zero
/* 6736C 8006676C 00009025 */  or         $s2, $zero, $zero
/* 67370 80066770 24130010 */  addiu      $s3, $zero, 0x10
/* 67374 80066774 00006825 */  or         $t5, $zero, $zero
/* 67378 80066778 00806025 */  or         $t4, $a0, $zero
.L8006677C:
/* 6737C 8006677C A22000A8 */  sb         $zero, 0xA8($s1)
/* 67380 80066780 AD800058 */  sw         $zero, 0x58($t4)
/* 67384 80066784 A2200098 */  sb         $zero, 0x98($s1)
/* 67388 80066788 8E0F0000 */  lw         $t7, 0x0($s0)
/* 6738C 8006678C 240E0001 */  addiu      $t6, $zero, 0x1
/* 67390 80066790 01F2C021 */  addu       $t8, $t7, $s2
/* 67394 80066794 8F020000 */  lw         $v0, 0x0($t8)
/* 67398 80066798 01AE7804 */  sllv       $t7, $t6, $t5
/* 6739C 8006679C 1040000A */  beqz       $v0, .L800667C8
/* 673A0 800667A0 02827021 */   addu      $t6, $s4, $v0
/* 673A4 800667A4 8E190004 */  lw         $t9, 0x4($s0)
/* 673A8 800667A8 02005025 */  or         $t2, $s0, $zero
/* 673AC 800667AC 01A05825 */  or         $t3, $t5, $zero
/* 673B0 800667B0 032FC025 */  or         $t8, $t9, $t7
/* 673B4 800667B4 AE180004 */  sw         $t8, 0x4($s0)
/* 673B8 800667B8 0C0198F5 */  jal        func_800663D4
/* 673BC 800667BC AD8E0018 */   sw        $t6, 0x18($t4)
/* 673C0 800667C0 10000002 */  b          .L800667CC
/* 673C4 800667C4 AD8200B8 */   sw        $v0, 0xB8($t4)
.L800667C8:
/* 673C8 800667C8 AD800018 */  sw         $zero, 0x18($t4)
.L800667CC:
/* 673CC 800667CC 25AD0001 */  addiu      $t5, $t5, 0x1
/* 673D0 800667D0 26310001 */  addiu      $s1, $s1, 0x1
/* 673D4 800667D4 26520004 */  addiu      $s2, $s2, 0x4
/* 673D8 800667D8 15B3FFE8 */  bne        $t5, $s3, .L8006677C
/* 673DC 800667DC 258C0004 */   addiu     $t4, $t4, 0x4
/* 673E0 800667E0 8E190000 */  lw         $t9, 0x0($s0)
/* 673E4 800667E4 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 673E8 800667E8 44812800 */  mtc1       $at, $f5
/* 673EC 800667EC 8F2F0040 */  lw         $t7, 0x40($t9)
/* 673F0 800667F0 44802000 */  mtc1       $zero, $f4
/* 673F4 800667F4 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 673F8 800667F8 448F3000 */  mtc1       $t7, $f6
/* 673FC 800667FC 05E10004 */  bgez       $t7, .L80066810
/* 67400 80066800 46803220 */   cvt.s.w   $f8, $f6
/* 67404 80066804 44815000 */  mtc1       $at, $f10
/* 67408 80066808 00000000 */  nop
/* 6740C 8006680C 460A4200 */  add.s      $f8, $f8, $f10
.L80066810:
/* 67410 80066810 460041A1 */  cvt.d.s    $f6, $f8
/* 67414 80066814 46262283 */  div.d      $f10, $f4, $f6
/* 67418 80066818 46205220 */  cvt.s.d    $f8, $f10
/* 6741C 8006681C E6080008 */  swc1       $f8, 0x8($s0)
/* 67420 80066820 8FBF002C */  lw         $ra, 0x2C($sp)
/* 67424 80066824 8FB40028 */  lw         $s4, 0x28($sp)
/* 67428 80066828 8FB30024 */  lw         $s3, 0x24($sp)
/* 6742C 8006682C 8FB20020 */  lw         $s2, 0x20($sp)
/* 67430 80066830 8FB1001C */  lw         $s1, 0x1C($sp)
/* 67434 80066834 8FB00018 */  lw         $s0, 0x18($sp)
/* 67438 80066838 03E00008 */  jr         $ra
/* 6743C 8006683C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80066840
/* 67440 80066840 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* 67444 80066844 AFB30020 */  sw         $s3, 0x20($sp)
/* 67448 80066848 AFB10018 */  sw         $s1, 0x18($sp)
/* 6744C 8006684C 00A08825 */  or         $s1, $a1, $zero
/* 67450 80066850 27B30048 */  addiu      $s3, $sp, 0x48
/* 67454 80066854 AFBF002C */  sw         $ra, 0x2C($sp)
/* 67458 80066858 AFB50028 */  sw         $s5, 0x28($sp)
/* 6745C 8006685C AFB40024 */  sw         $s4, 0x24($sp)
/* 67460 80066860 AFB2001C */  sw         $s2, 0x1C($sp)
/* 67464 80066864 AFB00014 */  sw         $s0, 0x14($sp)
/* 67468 80066868 00803825 */  or         $a3, $a0, $zero
/* 6746C 8006686C 00C09025 */  or         $s2, $a2, $zero
/* 67470 80066870 8CE50000 */  lw         $a1, 0x0($a3)
/* 67474 80066874 0C0199CB */  jal        func_8006672C
/* 67478 80066878 02602025 */   or        $a0, $s3, $zero
/* 6747C 8006687C 24150004 */  addiu      $s5, $zero, 0x4
/* 67480 80066880 27B40140 */  addiu      $s4, $sp, 0x140
/* 67484 80066884 27B00058 */  addiu      $s0, $sp, 0x58
/* 67488 80066888 8FAE004C */  lw         $t6, 0x4C($sp)
.L8006688C:
/* 6748C 8006688C 27A40048 */  addiu      $a0, $sp, 0x48
/* 67490 80066890 00801825 */  or         $v1, $a0, $zero
/* 67494 80066894 AE2E0000 */  sw         $t6, 0x0($s1)
/* 67498 80066898 8FAF0054 */  lw         $t7, 0x54($sp)
/* 6749C 8006689C 02201025 */  or         $v0, $s1, $zero
/* 674A0 800668A0 02202825 */  or         $a1, $s1, $zero
/* 674A4 800668A4 AE2F0004 */  sw         $t7, 0x4($s1)
/* 674A8 800668A8 8FB80058 */  lw         $t8, 0x58($sp)
/* 674AC 800668AC AE380008 */  sw         $t8, 0x8($s1)
.L800668B0:
/* 674B0 800668B0 8C680018 */  lw         $t0, 0x18($v1)
/* 674B4 800668B4 24840004 */  addiu      $a0, $a0, 0x4
/* 674B8 800668B8 24420010 */  addiu      $v0, $v0, 0x10
/* 674BC 800668BC AC48FFFC */  sw         $t0, -0x4($v0)
/* 674C0 800668C0 8C690058 */  lw         $t1, 0x58($v1)
/* 674C4 800668C4 24630010 */  addiu      $v1, $v1, 0x10
/* 674C8 800668C8 24A50004 */  addiu      $a1, $a1, 0x4
/* 674CC 800668CC AC49003C */  sw         $t1, 0x3C($v0)
/* 674D0 800668D0 908A0094 */  lbu        $t2, 0x94($a0)
/* 674D4 800668D4 A0AA0088 */  sb         $t2, 0x88($a1)
/* 674D8 800668D8 908B00A4 */  lbu        $t3, 0xA4($a0)
/* 674DC 800668DC A0AB0098 */  sb         $t3, 0x98($a1)
/* 674E0 800668E0 8C6C00A8 */  lw         $t4, 0xA8($v1)
/* 674E4 800668E4 AC4C009C */  sw         $t4, 0x9C($v0)
/* 674E8 800668E8 8C6D000C */  lw         $t5, 0xC($v1)
/* 674EC 800668EC AC4D0000 */  sw         $t5, 0x0($v0)
/* 674F0 800668F0 8C6E004C */  lw         $t6, 0x4C($v1)
/* 674F4 800668F4 AC4E0040 */  sw         $t6, 0x40($v0)
/* 674F8 800668F8 908F0095 */  lbu        $t7, 0x95($a0)
/* 674FC 800668FC A0AF0089 */  sb         $t7, 0x89($a1)
/* 67500 80066900 909800A5 */  lbu        $t8, 0xA5($a0)
/* 67504 80066904 A0B80099 */  sb         $t8, 0x99($a1)
/* 67508 80066908 8C7900AC */  lw         $t9, 0xAC($v1)
/* 6750C 8006690C AC5900A0 */  sw         $t9, 0xA0($v0)
/* 67510 80066910 8C680010 */  lw         $t0, 0x10($v1)
/* 67514 80066914 AC480004 */  sw         $t0, 0x4($v0)
/* 67518 80066918 8C690050 */  lw         $t1, 0x50($v1)
/* 6751C 8006691C AC490044 */  sw         $t1, 0x44($v0)
/* 67520 80066920 908A0096 */  lbu        $t2, 0x96($a0)
/* 67524 80066924 A0AA008A */  sb         $t2, 0x8A($a1)
/* 67528 80066928 908B00A6 */  lbu        $t3, 0xA6($a0)
/* 6752C 8006692C A0AB009A */  sb         $t3, 0x9A($a1)
/* 67530 80066930 8C6C00B0 */  lw         $t4, 0xB0($v1)
/* 67534 80066934 AC4C00A4 */  sw         $t4, 0xA4($v0)
/* 67538 80066938 8C6D0014 */  lw         $t5, 0x14($v1)
/* 6753C 8006693C AC4D0008 */  sw         $t5, 0x8($v0)
/* 67540 80066940 8C6E0054 */  lw         $t6, 0x54($v1)
/* 67544 80066944 AC4E0048 */  sw         $t6, 0x48($v0)
/* 67548 80066948 908F0097 */  lbu        $t7, 0x97($a0)
/* 6754C 8006694C A0AF008B */  sb         $t7, 0x8B($a1)
/* 67550 80066950 909800A7 */  lbu        $t8, 0xA7($a0)
/* 67554 80066954 A0B8009B */  sb         $t8, 0x9B($a1)
/* 67558 80066958 8C7900B4 */  lw         $t9, 0xB4($v1)
/* 6755C 8006695C 1490FFD4 */  bne        $a0, $s0, .L800668B0
/* 67560 80066960 AC5900A8 */   sw        $t9, 0xA8($v0)
/* 67564 80066964 02602025 */  or         $a0, $s3, $zero
/* 67568 80066968 0C01990D */  jal        func_80066434
/* 6756C 8006696C 02802825 */   or        $a1, $s4, $zero
/* 67570 80066970 87A80140 */  lh         $t0, 0x140($sp)
/* 67574 80066974 8FA90054 */  lw         $t1, 0x54($sp)
/* 67578 80066978 11150003 */  beq        $t0, $s5, .L80066988
/* 6757C 8006697C 0132082B */   sltu      $at, $t1, $s2
/* 67580 80066980 5420FFC2 */  bnel       $at, $zero, .L8006688C
/* 67584 80066984 8FAE004C */   lw        $t6, 0x4C($sp)
.L80066988:
/* 67588 80066988 8FBF002C */  lw         $ra, 0x2C($sp)
/* 6758C 8006698C 8FB00014 */  lw         $s0, 0x14($sp)
/* 67590 80066990 8FB10018 */  lw         $s1, 0x18($sp)
/* 67594 80066994 8FB2001C */  lw         $s2, 0x1C($sp)
/* 67598 80066998 8FB30020 */  lw         $s3, 0x20($sp)
/* 6759C 8006699C 8FB40024 */  lw         $s4, 0x24($sp)
/* 675A0 800669A0 8FB50028 */  lw         $s5, 0x28($sp)
/* 675A4 800669A4 03E00008 */  jr         $ra
/* 675A8 800669A8 27BD0150 */   addiu     $sp, $sp, 0x150

glabel func_800669AC
/* 675AC 800669AC 03E00008 */  jr         $ra
/* 675B0 800669B0 8C82000C */   lw        $v0, 0xC($a0)

glabel func_800669B4
/* 675B4 800669B4 8C8E0000 */  lw         $t6, 0x0($a0)
/* 675B8 800669B8 44856000 */  mtc1       $a1, $f12
/* 675BC 800669BC 3C01800A */  lui        $at, %hi(D_80098940)
/* 675C0 800669C0 8DCF0040 */  lw         $t7, 0x40($t6)
/* 675C4 800669C4 D4268940 */  ldc1       $f6, %lo(D_80098940)($at)
/* 675C8 800669C8 46006121 */  cvt.d.s    $f4, $f12
/* 675CC 800669CC 448F5000 */  mtc1       $t7, $f10
/* 675D0 800669D0 46262202 */  mul.d      $f8, $f4, $f6
/* 675D4 800669D4 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 675D8 800669D8 05E10005 */  bgez       $t7, .L800669F0
/* 675DC 800669DC 46805421 */   cvt.d.w   $f16, $f10
/* 675E0 800669E0 44819800 */  mtc1       $at, $f19
/* 675E4 800669E4 44809000 */  mtc1       $zero, $f18
/* 675E8 800669E8 00000000 */  nop
/* 675EC 800669EC 46328400 */  add.d      $f16, $f16, $f18
.L800669F0:
/* 675F0 800669F0 44863000 */  mtc1       $a2, $f6
/* 675F4 800669F4 46304102 */  mul.d      $f4, $f8, $f16
/* 675F8 800669F8 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 675FC 800669FC 04C10005 */  bgez       $a2, .L80066A14
/* 67600 80066A00 468032A1 */   cvt.d.w   $f10, $f6
/* 67604 80066A04 44819800 */  mtc1       $at, $f19
/* 67608 80066A08 44809000 */  mtc1       $zero, $f18
/* 6760C 80066A0C 00000000 */  nop
/* 67610 80066A10 46325280 */  add.d      $f10, $f10, $f18
.L80066A14:
/* 67614 80066A14 462A2203 */  div.d      $f8, $f4, $f10
/* 67618 80066A18 24020001 */  addiu      $v0, $zero, 0x1
/* 6761C 80066A1C 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 67620 80066A20 4458F800 */  cfc1       $t8, $31
/* 67624 80066A24 44C2F800 */  ctc1       $v0, $31
/* 67628 80066A28 00000000 */  nop
/* 6762C 80066A2C 46204424 */  cvt.w.d    $f16, $f8
/* 67630 80066A30 4442F800 */  cfc1       $v0, $31
/* 67634 80066A34 00000000 */  nop
/* 67638 80066A38 30420078 */  andi       $v0, $v0, 0x78
/* 6763C 80066A3C 50400016 */  beql       $v0, $zero, .L80066A98
/* 67640 80066A40 44028000 */   mfc1      $v0, $f16
/* 67644 80066A44 44818800 */  mtc1       $at, $f17
/* 67648 80066A48 44808000 */  mtc1       $zero, $f16
/* 6764C 80066A4C 24020001 */  addiu      $v0, $zero, 0x1
/* 67650 80066A50 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 67654 80066A54 46304401 */  sub.d      $f16, $f8, $f16
/* 67658 80066A58 44C2F800 */  ctc1       $v0, $31
/* 6765C 80066A5C 00000000 */  nop
/* 67660 80066A60 46208424 */  cvt.w.d    $f16, $f16
/* 67664 80066A64 4442F800 */  cfc1       $v0, $31
/* 67668 80066A68 00000000 */  nop
/* 6766C 80066A6C 30420078 */  andi       $v0, $v0, 0x78
/* 67670 80066A70 54400006 */  bnel       $v0, $zero, .L80066A8C
/* 67674 80066A74 44D8F800 */   ctc1      $t8, $31
/* 67678 80066A78 44028000 */  mfc1       $v0, $f16
/* 6767C 80066A7C 44D8F800 */  ctc1       $t8, $31
/* 67680 80066A80 03E00008 */  jr         $ra
/* 67684 80066A84 00411025 */   or        $v0, $v0, $at
/* 67688 80066A88 44D8F800 */  ctc1       $t8, $31
.L80066A8C:
/* 6768C 80066A8C 03E00008 */  jr         $ra
/* 67690 80066A90 2402FFFF */   addiu     $v0, $zero, -0x1
/* 67694 80066A94 44028000 */  mfc1       $v0, $f16
.L80066A98:
/* 67698 80066A98 00000000 */  nop
/* 6769C 80066A9C 0442FFFB */  bltzl      $v0, .L80066A8C
/* 676A0 80066AA0 44D8F800 */   ctc1      $t8, $31
/* 676A4 80066AA4 44D8F800 */  ctc1       $t8, $31
/* 676A8 80066AA8 03E00008 */  jr         $ra
/* 676AC 80066AAC 00000000 */   nop

glabel func_80066AB0
/* 676B0 80066AB0 44852000 */  mtc1       $a1, $f4
/* 676B4 80066AB4 44864000 */  mtc1       $a2, $f8
/* 676B8 80066AB8 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 676BC 80066ABC 468021A0 */  cvt.s.w    $f6, $f4
/* 676C0 80066AC0 04C10004 */  bgez       $a2, .L80066AD4
/* 676C4 80066AC4 468042A0 */   cvt.s.w   $f10, $f8
/* 676C8 80066AC8 44818000 */  mtc1       $at, $f16
/* 676CC 80066ACC 00000000 */  nop
/* 676D0 80066AD0 46105280 */  add.s      $f10, $f10, $f16
.L80066AD4:
/* 676D4 80066AD4 8C8E0000 */  lw         $t6, 0x0($a0)
/* 676D8 80066AD8 460A3482 */  mul.s      $f18, $f6, $f10
/* 676DC 80066ADC 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* 676E0 80066AE0 8DCF0040 */  lw         $t7, 0x40($t6)
/* 676E4 80066AE4 448F4000 */  mtc1       $t7, $f8
/* 676E8 80066AE8 46009121 */  cvt.d.s    $f4, $f18
/* 676EC 80066AEC 05E10004 */  bgez       $t7, .L80066B00
/* 676F0 80066AF0 46804420 */   cvt.s.w   $f16, $f8
/* 676F4 80066AF4 44813000 */  mtc1       $at, $f6
/* 676F8 80066AF8 00000000 */  nop
/* 676FC 80066AFC 46068400 */  add.s      $f16, $f16, $f6
.L80066B00:
/* 67700 80066B00 3C01800A */  lui        $at, %hi(D_80098948)
/* 67704 80066B04 D4328948 */  ldc1       $f18, %lo(D_80098948)($at)
/* 67708 80066B08 460082A1 */  cvt.d.s    $f10, $f16
/* 6770C 80066B0C 46325202 */  mul.d      $f8, $f10, $f18
/* 67710 80066B10 46282183 */  div.d      $f6, $f4, $f8
/* 67714 80066B14 03E00008 */  jr         $ra
/* 67718 80066B18 46203020 */   cvt.s.d   $f0, $f6

glabel func_80066B1C
/* 6771C 80066B1C 8C8E0004 */  lw         $t6, 0x4($a0)
/* 67720 80066B20 00A04825 */  or         $t1, $a1, $zero
/* 67724 80066B24 2403FFFF */  addiu      $v1, $zero, -0x1
/* 67728 80066B28 15C00003 */  bnez       $t6, .L80066B38
/* 6772C 80066B2C 8C820010 */   lw        $v0, 0x10($a0)
/* 67730 80066B30 03E00008 */  jr         $ra
/* 67734 80066B34 00001025 */   or        $v0, $zero, $zero
.L80066B38:
/* 67738 80066B38 00003025 */  or         $a2, $zero, $zero
/* 6773C 80066B3C 240A0010 */  addiu      $t2, $zero, 0x10
/* 67740 80066B40 8C850004 */  lw         $a1, 0x4($a0)
.L80066B44:
/* 67744 80066B44 24CE0001 */  addiu      $t6, $a2, 0x1
/* 67748 80066B48 00C57806 */  srlv       $t7, $a1, $a2
/* 6774C 80066B4C 31F80001 */  andi       $t8, $t7, 0x1
/* 67750 80066B50 53000010 */  beql       $t8, $zero, .L80066B94
/* 67754 80066B54 01C57806 */   srlv      $t7, $a1, $t6
/* 67758 80066B58 8C8B0014 */  lw         $t3, 0x14($a0)
/* 6775C 80066B5C 0006C880 */  sll        $t9, $a2, 2
/* 67760 80066B60 00993821 */  addu       $a3, $a0, $t9
/* 67764 80066B64 51600006 */  beql       $t3, $zero, .L80066B80
/* 67768 80066B68 8CE800B8 */   lw        $t0, 0xB8($a3)
/* 6776C 80066B6C 8CEC00B8 */  lw         $t4, 0xB8($a3)
/* 67770 80066B70 01826823 */  subu       $t5, $t4, $v0
/* 67774 80066B74 ACED00B8 */  sw         $t5, 0xB8($a3)
/* 67778 80066B78 8C850004 */  lw         $a1, 0x4($a0)
/* 6777C 80066B7C 8CE800B8 */  lw         $t0, 0xB8($a3)
.L80066B80:
/* 67780 80066B80 0103082B */  sltu       $at, $t0, $v1
/* 67784 80066B84 50200003 */  beql       $at, $zero, .L80066B94
/* 67788 80066B88 01C57806 */   srlv      $t7, $a1, $t6
/* 6778C 80066B8C 01001825 */  or         $v1, $t0, $zero
/* 67790 80066B90 01C57806 */  srlv       $t7, $a1, $t6
.L80066B94:
/* 67794 80066B94 31F80001 */  andi       $t8, $t7, 0x1
/* 67798 80066B98 1300000F */  beqz       $t8, .L80066BD8
/* 6779C 80066B9C 24CE0002 */   addiu     $t6, $a2, 0x2
/* 677A0 80066BA0 8C8B0014 */  lw         $t3, 0x14($a0)
/* 677A4 80066BA4 0006C880 */  sll        $t9, $a2, 2
/* 677A8 80066BA8 00993821 */  addu       $a3, $a0, $t9
/* 677AC 80066BAC 51600006 */  beql       $t3, $zero, .L80066BC8
/* 677B0 80066BB0 8CE800BC */   lw        $t0, 0xBC($a3)
/* 677B4 80066BB4 8CEC00BC */  lw         $t4, 0xBC($a3)
/* 677B8 80066BB8 01826823 */  subu       $t5, $t4, $v0
/* 677BC 80066BBC ACED00BC */  sw         $t5, 0xBC($a3)
/* 677C0 80066BC0 8C850004 */  lw         $a1, 0x4($a0)
/* 677C4 80066BC4 8CE800BC */  lw         $t0, 0xBC($a3)
.L80066BC8:
/* 677C8 80066BC8 0103082B */  sltu       $at, $t0, $v1
/* 677CC 80066BCC 50200003 */  beql       $at, $zero, .L80066BDC
/* 677D0 80066BD0 01C57806 */   srlv      $t7, $a1, $t6
/* 677D4 80066BD4 01001825 */  or         $v1, $t0, $zero
.L80066BD8:
/* 677D8 80066BD8 01C57806 */  srlv       $t7, $a1, $t6
.L80066BDC:
/* 677DC 80066BDC 31F80001 */  andi       $t8, $t7, 0x1
/* 677E0 80066BE0 1300000F */  beqz       $t8, .L80066C20
/* 677E4 80066BE4 24CE0003 */   addiu     $t6, $a2, 0x3
/* 677E8 80066BE8 8C8B0014 */  lw         $t3, 0x14($a0)
/* 677EC 80066BEC 0006C880 */  sll        $t9, $a2, 2
/* 677F0 80066BF0 00993821 */  addu       $a3, $a0, $t9
/* 677F4 80066BF4 51600006 */  beql       $t3, $zero, .L80066C10
/* 677F8 80066BF8 8CE800C0 */   lw        $t0, 0xC0($a3)
/* 677FC 80066BFC 8CEC00C0 */  lw         $t4, 0xC0($a3)
/* 67800 80066C00 01826823 */  subu       $t5, $t4, $v0
/* 67804 80066C04 ACED00C0 */  sw         $t5, 0xC0($a3)
/* 67808 80066C08 8C850004 */  lw         $a1, 0x4($a0)
/* 6780C 80066C0C 8CE800C0 */  lw         $t0, 0xC0($a3)
.L80066C10:
/* 67810 80066C10 0103082B */  sltu       $at, $t0, $v1
/* 67814 80066C14 50200003 */  beql       $at, $zero, .L80066C24
/* 67818 80066C18 01C57806 */   srlv      $t7, $a1, $t6
/* 6781C 80066C1C 01001825 */  or         $v1, $t0, $zero
.L80066C20:
/* 67820 80066C20 01C57806 */  srlv       $t7, $a1, $t6
.L80066C24:
/* 67824 80066C24 31F80001 */  andi       $t8, $t7, 0x1
/* 67828 80066C28 5300000F */  beql       $t8, $zero, .L80066C68
/* 6782C 80066C2C 24C60004 */   addiu     $a2, $a2, 0x4
/* 67830 80066C30 8C8B0014 */  lw         $t3, 0x14($a0)
/* 67834 80066C34 0006C880 */  sll        $t9, $a2, 2
/* 67838 80066C38 00993821 */  addu       $a3, $a0, $t9
/* 6783C 80066C3C 51600005 */  beql       $t3, $zero, .L80066C54
/* 67840 80066C40 8CE500C4 */   lw        $a1, 0xC4($a3)
/* 67844 80066C44 8CEC00C4 */  lw         $t4, 0xC4($a3)
/* 67848 80066C48 01826823 */  subu       $t5, $t4, $v0
/* 6784C 80066C4C ACED00C4 */  sw         $t5, 0xC4($a3)
/* 67850 80066C50 8CE500C4 */  lw         $a1, 0xC4($a3)
.L80066C54:
/* 67854 80066C54 00A3082B */  sltu       $at, $a1, $v1
/* 67858 80066C58 50200003 */  beql       $at, $zero, .L80066C68
/* 6785C 80066C5C 24C60004 */   addiu     $a2, $a2, 0x4
/* 67860 80066C60 00A01825 */  or         $v1, $a1, $zero
/* 67864 80066C64 24C60004 */  addiu      $a2, $a2, 0x4
.L80066C68:
/* 67868 80066C68 54CAFFB6 */  bnel       $a2, $t2, .L80066B44
/* 6786C 80066C6C 8C850004 */   lw        $a1, 0x4($a0)
/* 67870 80066C70 AC800014 */  sw         $zero, 0x14($a0)
/* 67874 80066C74 AD230000 */  sw         $v1, 0x0($t1)
/* 67878 80066C78 24020001 */  addiu      $v0, $zero, 0x1
/* 6787C 80066C7C 03E00008 */  jr         $ra
/* 67880 80066C80 00000000 */   nop
/* 67884 80066C84 00000000 */  nop
/* 67888 80066C88 00000000 */  nop
/* 6788C 80066C8C 00000000 */  nop
