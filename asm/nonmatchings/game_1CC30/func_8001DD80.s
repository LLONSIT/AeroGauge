glabel func_8001DD80
/* 1E980 8001DD80 A0800001 */  sb         $zero, 0x1($a0)
/* 1E984 8001DD84 18A0006C */  blez       $a1, .L8001DF38
/* 1E988 8001DD88 00A01025 */   or        $v0, $a1, $zero
/* 1E98C 8001DD8C 30A70003 */  andi       $a3, $a1, 0x3
/* 1E990 8001DD90 00073823 */  negu       $a3, $a3
/* 1E994 8001DD94 10E0001A */  beqz       $a3, .L8001DE00
/* 1E998 8001DD98 00E53021 */   addu      $a2, $a3, $a1
/* 1E99C 8001DD9C 00057080 */  sll        $t6, $a1, 2
/* 1E9A0 8001DDA0 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1E9A4 8001DDA4 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1E9A8 8001DDA8 008E1821 */  addu       $v1, $a0, $t6
.L8001DDAC:
/* 1E9AC 8001DDAC 8CAF02D8 */  lw         $t7, 0x2D8($a1)
/* 1E9B0 8001DDB0 8C780004 */  lw         $t8, 0x4($v1)
/* 1E9B4 8001DDB4 240C0001 */  addiu      $t4, $zero, 0x1
/* 1E9B8 8001DDB8 01F8082B */  sltu       $at, $t7, $t8
/* 1E9BC 8001DDBC 54200008 */  bnel       $at, $zero, .L8001DDE0
/* 1E9C0 8001DDC0 908B0001 */   lbu       $t3, 0x1($a0)
/* 1E9C4 8001DDC4 90990001 */  lbu        $t9, 0x1($a0)
/* 1E9C8 8001DDC8 24080001 */  addiu      $t0, $zero, 0x1
/* 1E9CC 8001DDCC 00484804 */  sllv       $t1, $t0, $v0
/* 1E9D0 8001DDD0 03295025 */  or         $t2, $t9, $t1
/* 1E9D4 8001DDD4 10000006 */  b          .L8001DDF0
/* 1E9D8 8001DDD8 A08A0001 */   sb        $t2, 0x1($a0)
/* 1E9DC 8001DDDC 908B0001 */  lbu        $t3, 0x1($a0)
.L8001DDE0:
/* 1E9E0 8001DDE0 004C6804 */  sllv       $t5, $t4, $v0
/* 1E9E4 8001DDE4 01A07027 */  not        $t6, $t5
/* 1E9E8 8001DDE8 016E7824 */  and        $t7, $t3, $t6
/* 1E9EC 8001DDEC A08F0001 */  sb         $t7, 0x1($a0)
.L8001DDF0:
/* 1E9F0 8001DDF0 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1E9F4 8001DDF4 14C2FFED */  bne        $a2, $v0, .L8001DDAC
/* 1E9F8 8001DDF8 2463FFFC */   addiu     $v1, $v1, -0x4
/* 1E9FC 8001DDFC 1040004E */  beqz       $v0, .L8001DF38
.L8001DE00:
/* 1EA00 8001DE00 3C058014 */   lui       $a1, %hi(D_8013FC88)
/* 1EA04 8001DE04 0002C080 */  sll        $t8, $v0, 2
/* 1EA08 8001DE08 00981821 */  addu       $v1, $a0, $t8
/* 1EA0C 8001DE0C 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
.L8001DE10:
/* 1EA10 8001DE10 8CA802D8 */  lw         $t0, 0x2D8($a1)
/* 1EA14 8001DE14 8C790004 */  lw         $t9, 0x4($v1)
/* 1EA18 8001DE18 240E0001 */  addiu      $t6, $zero, 0x1
/* 1EA1C 8001DE1C 0119082B */  sltu       $at, $t0, $t9
/* 1EA20 8001DE20 54200008 */  bnel       $at, $zero, .L8001DE44
/* 1EA24 8001DE24 908B0001 */   lbu       $t3, 0x1($a0)
/* 1EA28 8001DE28 90890001 */  lbu        $t1, 0x1($a0)
/* 1EA2C 8001DE2C 240A0001 */  addiu      $t2, $zero, 0x1
/* 1EA30 8001DE30 004A6004 */  sllv       $t4, $t2, $v0
/* 1EA34 8001DE34 012C6825 */  or         $t5, $t1, $t4
/* 1EA38 8001DE38 10000006 */  b          .L8001DE54
/* 1EA3C 8001DE3C A08D0001 */   sb        $t5, 0x1($a0)
/* 1EA40 8001DE40 908B0001 */  lbu        $t3, 0x1($a0)
.L8001DE44:
/* 1EA44 8001DE44 004E7804 */  sllv       $t7, $t6, $v0
/* 1EA48 8001DE48 01E0C027 */  not        $t8, $t7
/* 1EA4C 8001DE4C 01784024 */  and        $t0, $t3, $t8
/* 1EA50 8001DE50 A0880001 */  sb         $t0, 0x1($a0)
.L8001DE54:
/* 1EA54 8001DE54 8CB902D8 */  lw         $t9, 0x2D8($a1)
/* 1EA58 8001DE58 8C6A0000 */  lw         $t2, 0x0($v1)
/* 1EA5C 8001DE5C 2458001F */  addiu      $t8, $v0, 0x1F
/* 1EA60 8001DE60 24080001 */  addiu      $t0, $zero, 0x1
/* 1EA64 8001DE64 032A082B */  sltu       $at, $t9, $t2
/* 1EA68 8001DE68 14200007 */  bnez       $at, .L8001DE88
/* 1EA6C 8001DE6C 244C001F */   addiu     $t4, $v0, 0x1F
/* 1EA70 8001DE70 90890001 */  lbu        $t1, 0x1($a0)
/* 1EA74 8001DE74 240D0001 */  addiu      $t5, $zero, 0x1
/* 1EA78 8001DE78 018D7004 */  sllv       $t6, $t5, $t4
/* 1EA7C 8001DE7C 012E7825 */  or         $t7, $t1, $t6
/* 1EA80 8001DE80 10000006 */  b          .L8001DE9C
/* 1EA84 8001DE84 A08F0001 */   sb        $t7, 0x1($a0)
.L8001DE88:
/* 1EA88 8001DE88 908B0001 */  lbu        $t3, 0x1($a0)
/* 1EA8C 8001DE8C 0308C804 */  sllv       $t9, $t0, $t8
/* 1EA90 8001DE90 03205027 */  not        $t2, $t9
/* 1EA94 8001DE94 016A6824 */  and        $t5, $t3, $t2
/* 1EA98 8001DE98 A08D0001 */  sb         $t5, 0x1($a0)
.L8001DE9C:
/* 1EA9C 8001DE9C 8CAC02D8 */  lw         $t4, 0x2D8($a1)
/* 1EAA0 8001DEA0 8C69FFFC */  lw         $t1, -0x4($v1)
/* 1EAA4 8001DEA4 244A001E */  addiu      $t2, $v0, 0x1E
/* 1EAA8 8001DEA8 240D0001 */  addiu      $t5, $zero, 0x1
/* 1EAAC 8001DEAC 0189082B */  sltu       $at, $t4, $t1
/* 1EAB0 8001DEB0 14200007 */  bnez       $at, .L8001DED0
/* 1EAB4 8001DEB4 244F001E */   addiu     $t7, $v0, 0x1E
/* 1EAB8 8001DEB8 908E0001 */  lbu        $t6, 0x1($a0)
/* 1EABC 8001DEBC 24080001 */  addiu      $t0, $zero, 0x1
/* 1EAC0 8001DEC0 01E8C004 */  sllv       $t8, $t0, $t7
/* 1EAC4 8001DEC4 01D8C825 */  or         $t9, $t6, $t8
/* 1EAC8 8001DEC8 10000006 */  b          .L8001DEE4
/* 1EACC 8001DECC A0990001 */   sb        $t9, 0x1($a0)
.L8001DED0:
/* 1EAD0 8001DED0 908B0001 */  lbu        $t3, 0x1($a0)
/* 1EAD4 8001DED4 014D6004 */  sllv       $t4, $t5, $t2
/* 1EAD8 8001DED8 01804827 */  not        $t1, $t4
/* 1EADC 8001DEDC 01694024 */  and        $t0, $t3, $t1
/* 1EAE0 8001DEE0 A0880001 */  sb         $t0, 0x1($a0)
.L8001DEE4:
/* 1EAE4 8001DEE4 8CAF02D8 */  lw         $t7, 0x2D8($a1)
/* 1EAE8 8001DEE8 8C6EFFF8 */  lw         $t6, -0x8($v1)
/* 1EAEC 8001DEEC 2449001D */  addiu      $t1, $v0, 0x1D
/* 1EAF0 8001DEF0 24080001 */  addiu      $t0, $zero, 0x1
/* 1EAF4 8001DEF4 01EE082B */  sltu       $at, $t7, $t6
/* 1EAF8 8001DEF8 14200007 */  bnez       $at, .L8001DF18
/* 1EAFC 8001DEFC 2459001D */   addiu     $t9, $v0, 0x1D
/* 1EB00 8001DF00 90980001 */  lbu        $t8, 0x1($a0)
/* 1EB04 8001DF04 240D0001 */  addiu      $t5, $zero, 0x1
/* 1EB08 8001DF08 032D5004 */  sllv       $t2, $t5, $t9
/* 1EB0C 8001DF0C 030A6025 */  or         $t4, $t8, $t2
/* 1EB10 8001DF10 10000006 */  b          .L8001DF2C
/* 1EB14 8001DF14 A08C0001 */   sb        $t4, 0x1($a0)
.L8001DF18:
/* 1EB18 8001DF18 908B0001 */  lbu        $t3, 0x1($a0)
/* 1EB1C 8001DF1C 01287804 */  sllv       $t7, $t0, $t1
/* 1EB20 8001DF20 01E07027 */  not        $t6, $t7
/* 1EB24 8001DF24 016E6824 */  and        $t5, $t3, $t6
/* 1EB28 8001DF28 A08D0001 */  sb         $t5, 0x1($a0)
.L8001DF2C:
/* 1EB2C 8001DF2C 2442FFFC */  addiu      $v0, $v0, -0x4
/* 1EB30 8001DF30 1440FFB7 */  bnez       $v0, .L8001DE10
/* 1EB34 8001DF34 2463FFF0 */   addiu     $v1, $v1, -0x10
.L8001DF38:
/* 1EB38 8001DF38 03E00008 */  jr         $ra
/* 1EB3C 8001DF3C 00000000 */   nop
