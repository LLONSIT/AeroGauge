.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80009D10
/* A910 80009D10 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* A914 80009D14 AFBF001C */  sw         $ra, 0x1C($sp)
/* A918 80009D18 AFA40060 */  sw         $a0, 0x60($sp)
/* A91C 80009D1C AFA50064 */  sw         $a1, 0x64($sp)
/* A920 80009D20 AFA60068 */  sw         $a2, 0x68($sp)
/* A924 80009D24 00A07025 */  or         $t6, $a1, $zero
/* A928 80009D28 240F0004 */  addiu      $t7, $zero, 0x4
/* A92C 80009D2C AFAF0010 */  sw         $t7, 0x10($sp)
/* A930 80009D30 25C60014 */  addiu      $a2, $t6, 0x14
/* A934 80009D34 24A50008 */  addiu      $a1, $a1, 0x8
/* A938 80009D38 27A40020 */  addiu      $a0, $sp, 0x20
/* A93C 80009D3C 0C008347 */  jal        func_80020D1C
/* A940 80009D40 00003825 */   or        $a3, $zero, $zero
/* A944 80009D44 8FA20060 */  lw         $v0, 0x60($sp)
/* A948 80009D48 27A40020 */  addiu      $a0, $sp, 0x20
/* A94C 80009D4C 94580004 */  lhu        $t8, 0x4($v0)
/* A950 80009D50 2445005C */  addiu      $a1, $v0, 0x5C
/* A954 80009D54 37190002 */  ori        $t9, $t8, 0x2
/* A958 80009D58 0C00907C */  jal        func_800241F0
/* A95C 80009D5C A4590004 */   sh        $t9, 0x4($v0)
/* A960 80009D60 8FBF001C */  lw         $ra, 0x1C($sp)
/* A964 80009D64 27BD0060 */  addiu      $sp, $sp, 0x60
/* A968 80009D68 03E00008 */  jr         $ra
/* A96C 80009D6C 00000000 */   nop

glabel func_80009D70
/* A970 80009D70 AFA60008 */  sw         $a2, 0x8($sp)
/* A974 80009D74 948F0004 */  lhu        $t7, 0x4($a0)
/* A978 80009D78 240E0004 */  addiu      $t6, $zero, 0x4
/* A97C 80009D7C A08E0008 */  sb         $t6, 0x8($a0)
/* A980 80009D80 35F80002 */  ori        $t8, $t7, 0x2
/* A984 80009D84 A4980004 */  sh         $t8, 0x4($a0)
/* A988 80009D88 C4A40008 */  lwc1       $f4, 0x8($a1)
/* A98C 80009D8C E4840038 */  swc1       $f4, 0x38($a0)
/* A990 80009D90 C4A6000C */  lwc1       $f6, 0xC($a1)
/* A994 80009D94 E486003C */  swc1       $f6, 0x3C($a0)
/* A998 80009D98 C4A80010 */  lwc1       $f8, 0x10($a1)
/* A99C 80009D9C 03E00008 */  jr         $ra
/* A9A0 80009DA0 E4880040 */   swc1      $f8, 0x40($a0)

glabel func_80009DA4
/* A9A4 80009DA4 AFA60008 */  sw         $a2, 0x8($sp)
/* A9A8 80009DA8 948F0004 */  lhu        $t7, 0x4($a0)
/* A9AC 80009DAC 240E0001 */  addiu      $t6, $zero, 0x1
/* A9B0 80009DB0 A08E0008 */  sb         $t6, 0x8($a0)
/* A9B4 80009DB4 35F80002 */  ori        $t8, $t7, 0x2
/* A9B8 80009DB8 A4980004 */  sh         $t8, 0x4($a0)
/* A9BC 80009DBC C4A40008 */  lwc1       $f4, 0x8($a1)
/* A9C0 80009DC0 E4840038 */  swc1       $f4, 0x38($a0)
/* A9C4 80009DC4 C4A6000C */  lwc1       $f6, 0xC($a1)
/* A9C8 80009DC8 E486003C */  swc1       $f6, 0x3C($a0)
/* A9CC 80009DCC C4A80010 */  lwc1       $f8, 0x10($a1)
/* A9D0 80009DD0 03E00008 */  jr         $ra
/* A9D4 80009DD4 E4880040 */   swc1      $f8, 0x40($a0)

glabel func_80009DD8
/* A9D8 80009DD8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* A9DC 80009DDC AFB00020 */  sw         $s0, 0x20($sp)
/* A9E0 80009DE0 00808025 */  or         $s0, $a0, $zero
/* A9E4 80009DE4 AFBF0024 */  sw         $ra, 0x24($sp)
/* A9E8 80009DE8 AFA5006C */  sw         $a1, 0x6C($sp)
/* A9EC 80009DEC AFA60070 */  sw         $a2, 0x70($sp)
/* A9F0 80009DF0 00A07025 */  or         $t6, $a1, $zero
/* A9F4 80009DF4 240F0004 */  addiu      $t7, $zero, 0x4
/* A9F8 80009DF8 AFAF0010 */  sw         $t7, 0x10($sp)
/* A9FC 80009DFC 25C60014 */  addiu      $a2, $t6, 0x14
/* AA00 80009E00 24A50008 */  addiu      $a1, $a1, 0x8
/* AA04 80009E04 27A40028 */  addiu      $a0, $sp, 0x28
/* AA08 80009E08 0C008347 */  jal        func_80020D1C
/* AA0C 80009E0C 00003825 */   or        $a3, $zero, $zero
/* AA10 80009E10 96180004 */  lhu        $t8, 0x4($s0)
/* AA14 80009E14 27A40028 */  addiu      $a0, $sp, 0x28
/* AA18 80009E18 2605005C */  addiu      $a1, $s0, 0x5C
/* AA1C 80009E1C 37190002 */  ori        $t9, $t8, 0x2
/* AA20 80009E20 0C00907C */  jal        func_800241F0
/* AA24 80009E24 A6190004 */   sh        $t9, 0x4($s0)
/* AA28 80009E28 96080004 */  lhu        $t0, 0x4($s0)
/* AA2C 80009E2C 240A0078 */  addiu      $t2, $zero, 0x78
/* AA30 80009E30 A20A0037 */  sb         $t2, 0x37($s0)
/* AA34 80009E34 35090010 */  ori        $t1, $t0, 0x10
/* AA38 80009E38 A6090004 */  sh         $t1, 0x4($s0)
/* AA3C 80009E3C A2000034 */  sb         $zero, 0x34($s0)
/* AA40 80009E40 A2000035 */  sb         $zero, 0x35($s0)
/* AA44 80009E44 A2000036 */  sb         $zero, 0x36($s0)
/* AA48 80009E48 8FBF0024 */  lw         $ra, 0x24($sp)
/* AA4C 80009E4C 8FB00020 */  lw         $s0, 0x20($sp)
/* AA50 80009E50 27BD0068 */  addiu      $sp, $sp, 0x68
/* AA54 80009E54 03E00008 */  jr         $ra
/* AA58 80009E58 00000000 */   nop

glabel func_80009E5C
/* AA5C 80009E5C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* AA60 80009E60 AFB00020 */  sw         $s0, 0x20($sp)
/* AA64 80009E64 00808025 */  or         $s0, $a0, $zero
/* AA68 80009E68 AFBF0024 */  sw         $ra, 0x24($sp)
/* AA6C 80009E6C AFA5006C */  sw         $a1, 0x6C($sp)
/* AA70 80009E70 AFA60070 */  sw         $a2, 0x70($sp)
/* AA74 80009E74 00A07025 */  or         $t6, $a1, $zero
/* AA78 80009E78 240F0004 */  addiu      $t7, $zero, 0x4
/* AA7C 80009E7C AFAF0010 */  sw         $t7, 0x10($sp)
/* AA80 80009E80 25C60014 */  addiu      $a2, $t6, 0x14
/* AA84 80009E84 24A50008 */  addiu      $a1, $a1, 0x8
/* AA88 80009E88 27A40028 */  addiu      $a0, $sp, 0x28
/* AA8C 80009E8C 0C008347 */  jal        func_80020D1C
/* AA90 80009E90 00003825 */   or        $a3, $zero, $zero
/* AA94 80009E94 96180004 */  lhu        $t8, 0x4($s0)
/* AA98 80009E98 27A40028 */  addiu      $a0, $sp, 0x28
/* AA9C 80009E9C 2605005C */  addiu      $a1, $s0, 0x5C
/* AAA0 80009EA0 37190002 */  ori        $t9, $t8, 0x2
/* AAA4 80009EA4 0C00907C */  jal        func_800241F0
/* AAA8 80009EA8 A6190004 */   sh        $t9, 0x4($s0)
/* AAAC 80009EAC 96080004 */  lhu        $t0, 0x4($s0)
/* AAB0 80009EB0 240A0078 */  addiu      $t2, $zero, 0x78
/* AAB4 80009EB4 A20A0037 */  sb         $t2, 0x37($s0)
/* AAB8 80009EB8 35090010 */  ori        $t1, $t0, 0x10
/* AABC 80009EBC A6090004 */  sh         $t1, 0x4($s0)
/* AAC0 80009EC0 A2000034 */  sb         $zero, 0x34($s0)
/* AAC4 80009EC4 A2000035 */  sb         $zero, 0x35($s0)
/* AAC8 80009EC8 A2000036 */  sb         $zero, 0x36($s0)
/* AACC 80009ECC 8FBF0024 */  lw         $ra, 0x24($sp)
/* AAD0 80009ED0 8FB00020 */  lw         $s0, 0x20($sp)
/* AAD4 80009ED4 27BD0068 */  addiu      $sp, $sp, 0x68
/* AAD8 80009ED8 03E00008 */  jr         $ra
/* AADC 80009EDC 00000000 */   nop

glabel func_80009EE0
/* AAE0 80009EE0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* AAE4 80009EE4 AFB00020 */  sw         $s0, 0x20($sp)
/* AAE8 80009EE8 00808025 */  or         $s0, $a0, $zero
/* AAEC 80009EEC AFBF0024 */  sw         $ra, 0x24($sp)
/* AAF0 80009EF0 AFA50074 */  sw         $a1, 0x74($sp)
/* AAF4 80009EF4 AFA60078 */  sw         $a2, 0x78($sp)
/* AAF8 80009EF8 00A07025 */  or         $t6, $a1, $zero
/* AAFC 80009EFC 240F0004 */  addiu      $t7, $zero, 0x4
/* AB00 80009F00 AFAF0010 */  sw         $t7, 0x10($sp)
/* AB04 80009F04 25C60014 */  addiu      $a2, $t6, 0x14
/* AB08 80009F08 24A50008 */  addiu      $a1, $a1, 0x8
/* AB0C 80009F0C 27A4002C */  addiu      $a0, $sp, 0x2C
/* AB10 80009F10 0C008347 */  jal        func_80020D1C
/* AB14 80009F14 00003825 */   or        $a3, $zero, $zero
/* AB18 80009F18 96180004 */  lhu        $t8, 0x4($s0)
/* AB1C 80009F1C 27A4002C */  addiu      $a0, $sp, 0x2C
/* AB20 80009F20 2605005C */  addiu      $a1, $s0, 0x5C
/* AB24 80009F24 37190002 */  ori        $t9, $t8, 0x2
/* AB28 80009F28 0C00907C */  jal        func_800241F0
/* AB2C 80009F2C A6190004 */   sh        $t9, 0x4($s0)
/* AB30 80009F30 8FA80078 */  lw         $t0, 0x78($sp)
/* AB34 80009F34 240400FF */  addiu      $a0, $zero, 0xFF
/* AB38 80009F38 240A007F */  addiu      $t2, $zero, 0x7F
/* AB3C 80009F3C 8D030000 */  lw         $v1, 0x0($t0)
/* AB40 80009F40 3069007F */  andi       $t1, $v1, 0x7F
/* AB44 80009F44 29210040 */  slti       $at, $t1, 0x40
/* AB48 80009F48 14200002 */  bnez       $at, .L80009F54
/* AB4C 80009F4C 01201825 */   or        $v1, $t1, $zero
/* AB50 80009F50 01491823 */  subu       $v1, $t2, $t1
.L80009F54:
/* AB54 80009F54 960B0004 */  lhu        $t3, 0x4($s0)
/* AB58 80009F58 00031080 */  sll        $v0, $v1, 2
/* AB5C 80009F5C A2020035 */  sb         $v0, 0x35($s0)
/* AB60 80009F60 356C0010 */  ori        $t4, $t3, 0x10
/* AB64 80009F64 A60C0004 */  sh         $t4, 0x4($s0)
/* AB68 80009F68 A2020036 */  sb         $v0, 0x36($s0)
/* AB6C 80009F6C A2040034 */  sb         $a0, 0x34($s0)
/* AB70 80009F70 A2040037 */  sb         $a0, 0x37($s0)
/* AB74 80009F74 8FBF0024 */  lw         $ra, 0x24($sp)
/* AB78 80009F78 8FB00020 */  lw         $s0, 0x20($sp)
/* AB7C 80009F7C 27BD0070 */  addiu      $sp, $sp, 0x70
/* AB80 80009F80 03E00008 */  jr         $ra
/* AB84 80009F84 00000000 */   nop

glabel func_80009F88
/* AB88 80009F88 27BDFF90 */  addiu      $sp, $sp, -0x70
/* AB8C 80009F8C AFBF0024 */  sw         $ra, 0x24($sp)
/* AB90 80009F90 AFB00020 */  sw         $s0, 0x20($sp)
/* AB94 80009F94 AFA50074 */  sw         $a1, 0x74($sp)
/* AB98 80009F98 AFA60078 */  sw         $a2, 0x78($sp)
/* AB9C 80009F9C 8CCF0000 */  lw         $t7, 0x0($a2)
/* ABA0 80009FA0 00808025 */  or         $s0, $a0, $zero
/* ABA4 80009FA4 00A04025 */  or         $t0, $a1, $zero
/* ABA8 80009FA8 31F8007F */  andi       $t8, $t7, 0x7F
/* ABAC 80009FAC 0018C842 */  srl        $t9, $t8, 1
/* ABB0 80009FB0 24090004 */  addiu      $t1, $zero, 0x4
/* ABB4 80009FB4 AFB9002C */  sw         $t9, 0x2C($sp)
/* ABB8 80009FB8 AFA90010 */  sw         $t1, 0x10($sp)
/* ABBC 80009FBC 25060014 */  addiu      $a2, $t0, 0x14
/* ABC0 80009FC0 24A50008 */  addiu      $a1, $a1, 0x8
/* ABC4 80009FC4 27A40030 */  addiu      $a0, $sp, 0x30
/* ABC8 80009FC8 0C008347 */  jal        func_80020D1C
/* ABCC 80009FCC 00003825 */   or        $a3, $zero, $zero
/* ABD0 80009FD0 960A0004 */  lhu        $t2, 0x4($s0)
/* ABD4 80009FD4 27A40030 */  addiu      $a0, $sp, 0x30
/* ABD8 80009FD8 2605005C */  addiu      $a1, $s0, 0x5C
/* ABDC 80009FDC 354B0002 */  ori        $t3, $t2, 0x2
/* ABE0 80009FE0 0C00907C */  jal        func_800241F0
/* ABE4 80009FE4 A60B0004 */   sh        $t3, 0x4($s0)
/* ABE8 80009FE8 8FA4002C */  lw         $a0, 0x2C($sp)
/* ABEC 80009FEC 960C0006 */  lhu        $t4, 0x6($s0)
/* ABF0 80009FF0 96080004 */  lhu        $t0, 0x4($s0)
/* ABF4 80009FF4 24020040 */  addiu      $v0, $zero, 0x40
/* ABF8 80009FF8 3C0E800A */  lui        $t6, %hi(D_8009F268)
/* ABFC 80009FFC 25CEF268 */  addiu      $t6, $t6, %lo(D_8009F268)
/* AC00 8000A000 AE0E000C */  sw         $t6, 0xC($s0)
/* AC04 8000A004 A6020014 */  sh         $v0, 0x14($s0)
/* AC08 8000A008 A6020016 */  sh         $v0, 0x16($s0)
/* AC0C 8000A00C 3C18800A */  lui        $t8, %hi(D_8009FA70)
/* AC10 8000A010 358D8040 */  ori        $t5, $t4, 0x8040
/* AC14 8000A014 350A0020 */  ori        $t2, $t0, 0x20
/* AC18 8000A018 2718FA70 */  addiu      $t8, $t8, %lo(D_8009FA70)
/* AC1C 8000A01C 240F0004 */  addiu      $t7, $zero, 0x4
/* AC20 8000A020 354E0040 */  ori        $t6, $t2, 0x40
/* AC24 8000A024 240200FF */  addiu      $v0, $zero, 0xFF
/* AC28 8000A028 24030040 */  addiu      $v1, $zero, 0x40
/* AC2C 8000A02C A60D0006 */  sh         $t5, 0x6($s0)
/* AC30 8000A030 AE0F0010 */  sw         $t7, 0x10($s0)
/* AC34 8000A034 AE180018 */  sw         $t8, 0x18($s0)
/* AC38 8000A038 A60A0004 */  sh         $t2, 0x4($s0)
/* AC3C 8000A03C 248C001F */  addiu      $t4, $a0, 0x1F
/* AC40 8000A040 24190001 */  addiu      $t9, $zero, 0x1
/* AC44 8000A044 318D003F */  andi       $t5, $t4, 0x3F
/* AC48 8000A048 A60E0004 */  sh         $t6, 0x4($s0)
/* AC4C 8000A04C 24180088 */  addiu      $t8, $zero, 0x88
/* AC50 8000A050 35CF0010 */  ori        $t7, $t6, 0x10
/* AC54 8000A054 AE19001C */  sw         $t9, 0x1C($s0)
/* AC58 8000A058 A2000021 */  sb         $zero, 0x21($s0)
/* AC5C 8000A05C A2000020 */  sb         $zero, 0x20($s0)
/* AC60 8000A060 A6030030 */  sh         $v1, 0x30($s0)
/* AC64 8000A064 A6030032 */  sh         $v1, 0x32($s0)
/* AC68 8000A068 A600002A */  sh         $zero, 0x2A($s0)
/* AC6C 8000A06C A6000026 */  sh         $zero, 0x26($s0)
/* AC70 8000A070 A6000024 */  sh         $zero, 0x24($s0)
/* AC74 8000A074 A60D002E */  sh         $t5, 0x2E($s0)
/* AC78 8000A078 A600002C */  sh         $zero, 0x2C($s0)
/* AC7C 8000A07C A60F0004 */  sh         $t7, 0x4($s0)
/* AC80 8000A080 A2180037 */  sb         $t8, 0x37($s0)
/* AC84 8000A084 A2020034 */  sb         $v0, 0x34($s0)
/* AC88 8000A088 A2020035 */  sb         $v0, 0x35($s0)
/* AC8C 8000A08C A2020036 */  sb         $v0, 0x36($s0)
/* AC90 8000A090 A6040028 */  sh         $a0, 0x28($s0)
/* AC94 8000A094 8FBF0024 */  lw         $ra, 0x24($sp)
/* AC98 8000A098 8FB00020 */  lw         $s0, 0x20($sp)
/* AC9C 8000A09C 27BD0070 */  addiu      $sp, $sp, 0x70
/* ACA0 8000A0A0 03E00008 */  jr         $ra
/* ACA4 8000A0A4 00000000 */   nop

glabel func_8000A0A8
/* ACA8 8000A0A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ACAC 8000A0AC AFBF0014 */  sw         $ra, 0x14($sp)
/* ACB0 8000A0B0 8CC20000 */  lw         $v0, 0x0($a2)
/* ACB4 8000A0B4 2401005A */  addiu      $at, $zero, 0x5A
/* ACB8 8000A0B8 AFA5001C */  sw         $a1, 0x1C($sp)
/* ACBC 8000A0BC 0041001B */  divu       $zero, $v0, $at
/* ACC0 8000A0C0 00007010 */  mfhi       $t6
/* ACC4 8000A0C4 000E7880 */  sll        $t7, $t6, 2
/* ACC8 8000A0C8 448F2000 */  mtc1       $t7, $f4
/* ACCC 8000A0CC 3C018009 */  lui        $at, %hi(D_800952C0)
/* ACD0 8000A0D0 D42852C0 */  ldc1       $f8, %lo(D_800952C0)($at)
/* ACD4 8000A0D4 468021A1 */  cvt.d.w    $f6, $f4
/* ACD8 8000A0D8 AFA40018 */  sw         $a0, 0x18($sp)
/* ACDC 8000A0DC 46283282 */  mul.d      $f10, $f6, $f8
/* ACE0 8000A0E0 0C019B54 */  jal        __sinf
/* ACE4 8000A0E4 46205320 */   cvt.s.d   $f12, $f10
/* ACE8 8000A0E8 8FA40018 */  lw         $a0, 0x18($sp)
/* ACEC 8000A0EC 8FA5001C */  lw         $a1, 0x1C($sp)
/* ACF0 8000A0F0 3C014080 */  lui        $at, (0x40800000 >> 16)
/* ACF4 8000A0F4 94990004 */  lhu        $t9, 0x4($a0)
/* ACF8 8000A0F8 44812000 */  mtc1       $at, $f4
/* ACFC 8000A0FC 24180004 */  addiu      $t8, $zero, 0x4
/* AD00 8000A100 37290002 */  ori        $t1, $t9, 0x2
/* AD04 8000A104 A0980008 */  sb         $t8, 0x8($a0)
/* AD08 8000A108 A4890004 */  sh         $t1, 0x4($a0)
/* AD0C 8000A10C 46040182 */  mul.s      $f6, $f0, $f4
/* AD10 8000A110 C4B00008 */  lwc1       $f16, 0x8($a1)
/* AD14 8000A114 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* AD18 8000A118 44815000 */  mtc1       $at, $f10
/* AD1C 8000A11C E4900038 */  swc1       $f16, 0x38($a0)
/* AD20 8000A120 C4B2000C */  lwc1       $f18, 0xC($a1)
/* AD24 8000A124 240200FF */  addiu      $v0, $zero, 0xFF
/* AD28 8000A128 352A0010 */  ori        $t2, $t1, 0x10
/* AD2C 8000A12C 46069200 */  add.s      $f8, $f18, $f6
/* AD30 8000A130 460A4401 */  sub.s      $f16, $f8, $f10
/* AD34 8000A134 E490003C */  swc1       $f16, 0x3C($a0)
/* AD38 8000A138 C4A40010 */  lwc1       $f4, 0x10($a1)
/* AD3C 8000A13C A0820037 */  sb         $v0, 0x37($a0)
/* AD40 8000A140 A0820036 */  sb         $v0, 0x36($a0)
/* AD44 8000A144 A0820035 */  sb         $v0, 0x35($a0)
/* AD48 8000A148 A0820034 */  sb         $v0, 0x34($a0)
/* AD4C 8000A14C A48A0004 */  sh         $t2, 0x4($a0)
/* AD50 8000A150 E4840040 */  swc1       $f4, 0x40($a0)
/* AD54 8000A154 8FBF0014 */  lw         $ra, 0x14($sp)
/* AD58 8000A158 27BD0018 */  addiu      $sp, $sp, 0x18
/* AD5C 8000A15C 03E00008 */  jr         $ra
/* AD60 8000A160 00000000 */   nop

glabel func_8000A164
/* AD64 8000A164 27BDFF80 */  addiu      $sp, $sp, -0x80
/* AD68 8000A168 AFB00020 */  sw         $s0, 0x20($sp)
/* AD6C 8000A16C 00808025 */  or         $s0, $a0, $zero
/* AD70 8000A170 AFBF0024 */  sw         $ra, 0x24($sp)
/* AD74 8000A174 AFA50084 */  sw         $a1, 0x84($sp)
/* AD78 8000A178 AFA60088 */  sw         $a2, 0x88($sp)
/* AD7C 8000A17C 00A07025 */  or         $t6, $a1, $zero
/* AD80 8000A180 240F0004 */  addiu      $t7, $zero, 0x4
/* AD84 8000A184 AFAF0010 */  sw         $t7, 0x10($sp)
/* AD88 8000A188 25C60014 */  addiu      $a2, $t6, 0x14
/* AD8C 8000A18C 24A50008 */  addiu      $a1, $a1, 0x8
/* AD90 8000A190 27A40034 */  addiu      $a0, $sp, 0x34
/* AD94 8000A194 0C008347 */  jal        func_80020D1C
/* AD98 8000A198 00003825 */   or        $a3, $zero, $zero
/* AD9C 8000A19C 96180004 */  lhu        $t8, 0x4($s0)
/* ADA0 8000A1A0 27A40034 */  addiu      $a0, $sp, 0x34
/* ADA4 8000A1A4 2605005C */  addiu      $a1, $s0, 0x5C
/* ADA8 8000A1A8 37190002 */  ori        $t9, $t8, 0x2
/* ADAC 8000A1AC 0C00907C */  jal        func_800241F0
/* ADB0 8000A1B0 A6190004 */   sh        $t9, 0x4($s0)
/* ADB4 8000A1B4 8FA80088 */  lw         $t0, 0x88($sp)
/* ADB8 8000A1B8 8FAB0084 */  lw         $t3, 0x84($sp)
/* ADBC 8000A1BC 00003025 */  or         $a2, $zero, $zero
/* ADC0 8000A1C0 8D090000 */  lw         $t1, 0x0($t0)
/* ADC4 8000A1C4 856C0024 */  lh         $t4, 0x24($t3)
/* ADC8 8000A1C8 240F00FF */  addiu      $t7, $zero, 0xFF
/* ADCC 8000A1CC 00095082 */  srl        $t2, $t1, 2
/* ADD0 8000A1D0 014C1821 */  addu       $v1, $t2, $t4
/* ADD4 8000A1D4 306D001F */  andi       $t5, $v1, 0x1F
/* ADD8 8000A1D8 000D10C3 */  sra        $v0, $t5, 3
/* ADDC 8000A1DC 1040000E */  beqz       $v0, .L8000A218
/* ADE0 8000A1E0 01A01825 */   or        $v1, $t5, $zero
/* ADE4 8000A1E4 24010001 */  addiu      $at, $zero, 0x1
/* ADE8 8000A1E8 10410010 */  beq        $v0, $at, .L8000A22C
/* ADEC 8000A1EC 0003C140 */   sll       $t8, $v1, 5
/* ADF0 8000A1F0 24010002 */  addiu      $at, $zero, 0x2
/* ADF4 8000A1F4 10410014 */  beq        $v0, $at, .L8000A248
/* ADF8 8000A1F8 00002825 */   or        $a1, $zero, $zero
/* ADFC 8000A1FC 24010003 */  addiu      $at, $zero, 0x3
/* AE00 8000A200 10410018 */  beq        $v0, $at, .L8000A264
/* AE04 8000A204 30640007 */   andi      $a0, $v1, 0x7
/* AE08 8000A208 93A7007D */  lbu        $a3, 0x7D($sp)
/* AE0C 8000A20C 93A6007E */  lbu        $a2, 0x7E($sp)
/* AE10 8000A210 10000021 */  b          .L8000A298
/* AE14 8000A214 93A5007F */   lbu       $a1, 0x7F($sp)
.L8000A218:
/* AE18 8000A218 00602825 */  or         $a1, $v1, $zero
/* AE1C 8000A21C 00057140 */  sll        $t6, $a1, 5
/* AE20 8000A220 31C500FF */  andi       $a1, $t6, 0xFF
/* AE24 8000A224 1000001C */  b          .L8000A298
/* AE28 8000A228 00003825 */   or        $a3, $zero, $zero
.L8000A22C:
/* AE2C 8000A22C 241900FF */  addiu      $t9, $zero, 0xFF
/* AE30 8000A230 03382823 */  subu       $a1, $t9, $t8
/* AE34 8000A234 30A800FF */  andi       $t0, $a1, 0xFF
/* AE38 8000A238 01002825 */  or         $a1, $t0, $zero
/* AE3C 8000A23C 330600FF */  andi       $a2, $t8, 0xFF
/* AE40 8000A240 10000015 */  b          .L8000A298
/* AE44 8000A244 00003825 */   or        $a3, $zero, $zero
.L8000A248:
/* AE48 8000A248 00034940 */  sll        $t1, $v1, 5
/* AE4C 8000A24C 240B00FF */  addiu      $t3, $zero, 0xFF
/* AE50 8000A250 01693023 */  subu       $a2, $t3, $t1
/* AE54 8000A254 30CA00FF */  andi       $t2, $a2, 0xFF
/* AE58 8000A258 01403025 */  or         $a2, $t2, $zero
/* AE5C 8000A25C 1000000E */  b          .L8000A298
/* AE60 8000A260 312700FF */   andi      $a3, $t1, 0xFF
.L8000A264:
/* AE64 8000A264 28810004 */  slti       $at, $a0, 0x4
/* AE68 8000A268 10200006 */  beqz       $at, .L8000A284
/* AE6C 8000A26C 00041023 */   negu      $v0, $a0
/* AE70 8000A270 00041180 */  sll        $v0, $a0, 6
/* AE74 8000A274 304600FF */  andi       $a2, $v0, 0xFF
/* AE78 8000A278 304500FF */  andi       $a1, $v0, 0xFF
/* AE7C 8000A27C 10000006 */  b          .L8000A298
/* AE80 8000A280 240700FF */   addiu     $a3, $zero, 0xFF
.L8000A284:
/* AE84 8000A284 00026180 */  sll        $t4, $v0, 6
/* AE88 8000A288 258201C0 */  addiu      $v0, $t4, 0x1C0
/* AE8C 8000A28C 304700FF */  andi       $a3, $v0, 0xFF
/* AE90 8000A290 304600FF */  andi       $a2, $v0, 0xFF
/* AE94 8000A294 304500FF */  andi       $a1, $v0, 0xFF
.L8000A298:
/* AE98 8000A298 960D0004 */  lhu        $t5, 0x4($s0)
/* AE9C 8000A29C A2050034 */  sb         $a1, 0x34($s0)
/* AEA0 8000A2A0 A2060035 */  sb         $a2, 0x35($s0)
/* AEA4 8000A2A4 35AE0010 */  ori        $t6, $t5, 0x10
/* AEA8 8000A2A8 A60E0004 */  sh         $t6, 0x4($s0)
/* AEAC 8000A2AC A2070036 */  sb         $a3, 0x36($s0)
/* AEB0 8000A2B0 A20F0037 */  sb         $t7, 0x37($s0)
/* AEB4 8000A2B4 8FBF0024 */  lw         $ra, 0x24($sp)
/* AEB8 8000A2B8 8FB00020 */  lw         $s0, 0x20($sp)
/* AEBC 8000A2BC 27BD0080 */  addiu      $sp, $sp, 0x80
/* AEC0 8000A2C0 03E00008 */  jr         $ra
/* AEC4 8000A2C4 00000000 */   nop

glabel func_8000A2C8
/* AEC8 8000A2C8 27BDFF98 */  addiu      $sp, $sp, -0x68
/* AECC 8000A2CC AFB00020 */  sw         $s0, 0x20($sp)
/* AED0 8000A2D0 00808025 */  or         $s0, $a0, $zero
/* AED4 8000A2D4 AFBF0024 */  sw         $ra, 0x24($sp)
/* AED8 8000A2D8 AFA5006C */  sw         $a1, 0x6C($sp)
/* AEDC 8000A2DC AFA60070 */  sw         $a2, 0x70($sp)
/* AEE0 8000A2E0 00A07025 */  or         $t6, $a1, $zero
/* AEE4 8000A2E4 240F0004 */  addiu      $t7, $zero, 0x4
/* AEE8 8000A2E8 AFAF0010 */  sw         $t7, 0x10($sp)
/* AEEC 8000A2EC 25C60014 */  addiu      $a2, $t6, 0x14
/* AEF0 8000A2F0 24A50008 */  addiu      $a1, $a1, 0x8
/* AEF4 8000A2F4 27A40028 */  addiu      $a0, $sp, 0x28
/* AEF8 8000A2F8 0C008347 */  jal        func_80020D1C
/* AEFC 8000A2FC 00003825 */   or        $a3, $zero, $zero
/* AF00 8000A300 96180004 */  lhu        $t8, 0x4($s0)
/* AF04 8000A304 27A40028 */  addiu      $a0, $sp, 0x28
/* AF08 8000A308 2605005C */  addiu      $a1, $s0, 0x5C
/* AF0C 8000A30C 37190002 */  ori        $t9, $t8, 0x2
/* AF10 8000A310 0C00907C */  jal        func_800241F0
/* AF14 8000A314 A6190004 */   sh        $t9, 0x4($s0)
/* AF18 8000A318 96080004 */  lhu        $t0, 0x4($s0)
/* AF1C 8000A31C 240200FF */  addiu      $v0, $zero, 0xFF
/* AF20 8000A320 240A00B4 */  addiu      $t2, $zero, 0xB4
/* AF24 8000A324 35090010 */  ori        $t1, $t0, 0x10
/* AF28 8000A328 A6090004 */  sh         $t1, 0x4($s0)
/* AF2C 8000A32C A20A0037 */  sb         $t2, 0x37($s0)
/* AF30 8000A330 A2020034 */  sb         $v0, 0x34($s0)
/* AF34 8000A334 A2020035 */  sb         $v0, 0x35($s0)
/* AF38 8000A338 A2020036 */  sb         $v0, 0x36($s0)
/* AF3C 8000A33C 8FBF0024 */  lw         $ra, 0x24($sp)
/* AF40 8000A340 8FB00020 */  lw         $s0, 0x20($sp)
/* AF44 8000A344 27BD0068 */  addiu      $sp, $sp, 0x68
/* AF48 8000A348 03E00008 */  jr         $ra
/* AF4C 8000A34C 00000000 */   nop

glabel func_8000A350
/* AF50 8000A350 27BDFF98 */  addiu      $sp, $sp, -0x68
/* AF54 8000A354 AFBF001C */  sw         $ra, 0x1C($sp)
/* AF58 8000A358 AFA40068 */  sw         $a0, 0x68($sp)
/* AF5C 8000A35C AFA5006C */  sw         $a1, 0x6C($sp)
/* AF60 8000A360 AFA60070 */  sw         $a2, 0x70($sp)
/* AF64 8000A364 84B90024 */  lh         $t9, 0x24($a1)
/* AF68 8000A368 8CCF0000 */  lw         $t7, 0x0($a2)
/* AF6C 8000A36C 00A0C025 */  or         $t8, $a1, $zero
/* AF70 8000A370 00194100 */  sll        $t0, $t9, 4
/* AF74 8000A374 01E81021 */  addu       $v0, $t7, $t0
/* AF78 8000A378 3049003F */  andi       $t1, $v0, 0x3F
/* AF7C 8000A37C 240A0004 */  addiu      $t2, $zero, 0x4
/* AF80 8000A380 AFAA0010 */  sw         $t2, 0x10($sp)
/* AF84 8000A384 AFA90020 */  sw         $t1, 0x20($sp)
/* AF88 8000A388 27060014 */  addiu      $a2, $t8, 0x14
/* AF8C 8000A38C 24A50008 */  addiu      $a1, $a1, 0x8
/* AF90 8000A390 27A40028 */  addiu      $a0, $sp, 0x28
/* AF94 8000A394 0C008347 */  jal        func_80020D1C
/* AF98 8000A398 00003825 */   or        $a3, $zero, $zero
/* AF9C 8000A39C 8FA60068 */  lw         $a2, 0x68($sp)
/* AFA0 8000A3A0 27A40028 */  addiu      $a0, $sp, 0x28
/* AFA4 8000A3A4 94CB0004 */  lhu        $t3, 0x4($a2)
/* AFA8 8000A3A8 24C5005C */  addiu      $a1, $a2, 0x5C
/* AFAC 8000A3AC 356C0002 */  ori        $t4, $t3, 0x2
/* AFB0 8000A3B0 0C00907C */  jal        func_800241F0
/* AFB4 8000A3B4 A4CC0004 */   sh        $t4, 0x4($a2)
/* AFB8 8000A3B8 8FA20020 */  lw         $v0, 0x20($sp)
/* AFBC 8000A3BC 8FA60068 */  lw         $a2, 0x68($sp)
/* AFC0 8000A3C0 04400006 */  bltz       $v0, .L8000A3DC
/* AFC4 8000A3C4 28410003 */   slti      $at, $v0, 0x3
/* AFC8 8000A3C8 50200005 */  beql       $at, $zero, .L8000A3E0
/* AFCC 8000A3CC 28410003 */   slti      $at, $v0, 0x3
/* AFD0 8000A3D0 A3A00025 */  sb         $zero, 0x25($sp)
/* AFD4 8000A3D4 A3A00026 */  sb         $zero, 0x26($sp)
/* AFD8 8000A3D8 A3A00027 */  sb         $zero, 0x27($sp)
.L8000A3DC:
/* AFDC 8000A3DC 28410003 */  slti       $at, $v0, 0x3
.L8000A3E0:
/* AFE0 8000A3E0 93A30025 */  lbu        $v1, 0x25($sp)
/* AFE4 8000A3E4 93A40026 */  lbu        $a0, 0x26($sp)
/* AFE8 8000A3E8 14200007 */  bnez       $at, .L8000A408
/* AFEC 8000A3EC 93A50027 */   lbu       $a1, 0x27($sp)
/* AFF0 8000A3F0 28410006 */  slti       $at, $v0, 0x6
/* AFF4 8000A3F4 50200005 */  beql       $at, $zero, .L8000A40C
/* AFF8 8000A3F8 28410006 */   slti      $at, $v0, 0x6
/* AFFC 8000A3FC 240300FF */  addiu      $v1, $zero, 0xFF
/* B000 8000A400 240400FF */  addiu      $a0, $zero, 0xFF
/* B004 8000A404 240500FF */  addiu      $a1, $zero, 0xFF
.L8000A408:
/* B008 8000A408 28410006 */  slti       $at, $v0, 0x6
.L8000A40C:
/* B00C 8000A40C 14200006 */  bnez       $at, .L8000A428
/* B010 8000A410 28410009 */   slti      $at, $v0, 0x9
/* B014 8000A414 50200005 */  beql       $at, $zero, .L8000A42C
/* B018 8000A418 28410009 */   slti      $at, $v0, 0x9
/* B01C 8000A41C 00001825 */  or         $v1, $zero, $zero
/* B020 8000A420 00002025 */  or         $a0, $zero, $zero
/* B024 8000A424 00002825 */  or         $a1, $zero, $zero
.L8000A428:
/* B028 8000A428 28410009 */  slti       $at, $v0, 0x9
.L8000A42C:
/* B02C 8000A42C 14200007 */  bnez       $at, .L8000A44C
/* B030 8000A430 241900FF */   addiu     $t9, $zero, 0xFF
/* B034 8000A434 2841000C */  slti       $at, $v0, 0xC
/* B038 8000A438 50200005 */  beql       $at, $zero, .L8000A450
/* B03C 8000A43C 2841000C */   slti      $at, $v0, 0xC
/* B040 8000A440 240300FF */  addiu      $v1, $zero, 0xFF
/* B044 8000A444 240400FF */  addiu      $a0, $zero, 0xFF
/* B048 8000A448 240500FF */  addiu      $a1, $zero, 0xFF
.L8000A44C:
/* B04C 8000A44C 2841000C */  slti       $at, $v0, 0xC
.L8000A450:
/* B050 8000A450 14200006 */  bnez       $at, .L8000A46C
/* B054 8000A454 2841000F */   slti      $at, $v0, 0xF
/* B058 8000A458 50200005 */  beql       $at, $zero, .L8000A470
/* B05C 8000A45C 2841000F */   slti      $at, $v0, 0xF
/* B060 8000A460 00001825 */  or         $v1, $zero, $zero
/* B064 8000A464 00002025 */  or         $a0, $zero, $zero
/* B068 8000A468 00002825 */  or         $a1, $zero, $zero
.L8000A46C:
/* B06C 8000A46C 2841000F */  slti       $at, $v0, 0xF
.L8000A470:
/* B070 8000A470 14200006 */  bnez       $at, .L8000A48C
/* B074 8000A474 28410012 */   slti      $at, $v0, 0x12
/* B078 8000A478 50200005 */  beql       $at, $zero, .L8000A490
/* B07C 8000A47C 28410012 */   slti      $at, $v0, 0x12
/* B080 8000A480 240300FF */  addiu      $v1, $zero, 0xFF
/* B084 8000A484 240400FF */  addiu      $a0, $zero, 0xFF
/* B088 8000A488 240500FF */  addiu      $a1, $zero, 0xFF
.L8000A48C:
/* B08C 8000A48C 28410012 */  slti       $at, $v0, 0x12
.L8000A490:
/* B090 8000A490 14200006 */  bnez       $at, .L8000A4AC
/* B094 8000A494 28410015 */   slti      $at, $v0, 0x15
/* B098 8000A498 50200005 */  beql       $at, $zero, .L8000A4B0
/* B09C 8000A49C 28410015 */   slti      $at, $v0, 0x15
/* B0A0 8000A4A0 00001825 */  or         $v1, $zero, $zero
/* B0A4 8000A4A4 00002025 */  or         $a0, $zero, $zero
/* B0A8 8000A4A8 00002825 */  or         $a1, $zero, $zero
.L8000A4AC:
/* B0AC 8000A4AC 28410015 */  slti       $at, $v0, 0x15
.L8000A4B0:
/* B0B0 8000A4B0 14200006 */  bnez       $at, .L8000A4CC
/* B0B4 8000A4B4 28410018 */   slti      $at, $v0, 0x18
/* B0B8 8000A4B8 50200005 */  beql       $at, $zero, .L8000A4D0
/* B0BC 8000A4BC 28410018 */   slti      $at, $v0, 0x18
/* B0C0 8000A4C0 240300FF */  addiu      $v1, $zero, 0xFF
/* B0C4 8000A4C4 240400FF */  addiu      $a0, $zero, 0xFF
/* B0C8 8000A4C8 240500FF */  addiu      $a1, $zero, 0xFF
.L8000A4CC:
/* B0CC 8000A4CC 28410018 */  slti       $at, $v0, 0x18
.L8000A4D0:
/* B0D0 8000A4D0 14200006 */  bnez       $at, .L8000A4EC
/* B0D4 8000A4D4 2841001B */   slti      $at, $v0, 0x1B
/* B0D8 8000A4D8 50200005 */  beql       $at, $zero, .L8000A4F0
/* B0DC 8000A4DC 2841001B */   slti      $at, $v0, 0x1B
/* B0E0 8000A4E0 00001825 */  or         $v1, $zero, $zero
/* B0E4 8000A4E4 00002025 */  or         $a0, $zero, $zero
/* B0E8 8000A4E8 00002825 */  or         $a1, $zero, $zero
.L8000A4EC:
/* B0EC 8000A4EC 2841001B */  slti       $at, $v0, 0x1B
.L8000A4F0:
/* B0F0 8000A4F0 14200006 */  bnez       $at, .L8000A50C
/* B0F4 8000A4F4 2841001E */   slti      $at, $v0, 0x1E
/* B0F8 8000A4F8 50200005 */  beql       $at, $zero, .L8000A510
/* B0FC 8000A4FC 2841001E */   slti      $at, $v0, 0x1E
/* B100 8000A500 240300FF */  addiu      $v1, $zero, 0xFF
/* B104 8000A504 240400FF */  addiu      $a0, $zero, 0xFF
/* B108 8000A508 240500FF */  addiu      $a1, $zero, 0xFF
.L8000A50C:
/* B10C 8000A50C 2841001E */  slti       $at, $v0, 0x1E
.L8000A510:
/* B110 8000A510 14200006 */  bnez       $at, .L8000A52C
/* B114 8000A514 28410021 */   slti      $at, $v0, 0x21
/* B118 8000A518 50200005 */  beql       $at, $zero, .L8000A530
/* B11C 8000A51C 28410021 */   slti      $at, $v0, 0x21
/* B120 8000A520 00001825 */  or         $v1, $zero, $zero
/* B124 8000A524 00002025 */  or         $a0, $zero, $zero
/* B128 8000A528 00002825 */  or         $a1, $zero, $zero
.L8000A52C:
/* B12C 8000A52C 28410021 */  slti       $at, $v0, 0x21
.L8000A530:
/* B130 8000A530 14200006 */  bnez       $at, .L8000A54C
/* B134 8000A534 28410024 */   slti      $at, $v0, 0x24
/* B138 8000A538 50200005 */  beql       $at, $zero, .L8000A550
/* B13C 8000A53C 28410024 */   slti      $at, $v0, 0x24
/* B140 8000A540 240300FF */  addiu      $v1, $zero, 0xFF
/* B144 8000A544 240400FF */  addiu      $a0, $zero, 0xFF
/* B148 8000A548 240500FF */  addiu      $a1, $zero, 0xFF
.L8000A54C:
/* B14C 8000A54C 28410024 */  slti       $at, $v0, 0x24
.L8000A550:
/* B150 8000A550 14200006 */  bnez       $at, .L8000A56C
/* B154 8000A554 28410027 */   slti      $at, $v0, 0x27
/* B158 8000A558 50200005 */  beql       $at, $zero, .L8000A570
/* B15C 8000A55C 28410027 */   slti      $at, $v0, 0x27
/* B160 8000A560 00001825 */  or         $v1, $zero, $zero
/* B164 8000A564 00002025 */  or         $a0, $zero, $zero
/* B168 8000A568 00002825 */  or         $a1, $zero, $zero
.L8000A56C:
/* B16C 8000A56C 28410027 */  slti       $at, $v0, 0x27
.L8000A570:
/* B170 8000A570 54200005 */  bnel       $at, $zero, .L8000A588
/* B174 8000A574 94CD0004 */   lhu       $t5, 0x4($a2)
/* B178 8000A578 240300FF */  addiu      $v1, $zero, 0xFF
/* B17C 8000A57C 240400FF */  addiu      $a0, $zero, 0xFF
/* B180 8000A580 240500FF */  addiu      $a1, $zero, 0xFF
/* B184 8000A584 94CD0004 */  lhu        $t5, 0x4($a2)
.L8000A588:
/* B188 8000A588 A0C50034 */  sb         $a1, 0x34($a2)
/* B18C 8000A58C A0C40035 */  sb         $a0, 0x35($a2)
/* B190 8000A590 35AE0010 */  ori        $t6, $t5, 0x10
/* B194 8000A594 A4CE0004 */  sh         $t6, 0x4($a2)
/* B198 8000A598 A0C30036 */  sb         $v1, 0x36($a2)
/* B19C 8000A59C A0D90037 */  sb         $t9, 0x37($a2)
/* B1A0 8000A5A0 8FBF001C */  lw         $ra, 0x1C($sp)
/* B1A4 8000A5A4 27BD0068 */  addiu      $sp, $sp, 0x68
/* B1A8 8000A5A8 03E00008 */  jr         $ra
/* B1AC 8000A5AC 00000000 */   nop

glabel func_8000A5B0
/* B1B0 8000A5B0 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B1B4 8000A5B4 AFBF0024 */  sw         $ra, 0x24($sp)
/* B1B8 8000A5B8 AFB00020 */  sw         $s0, 0x20($sp)
/* B1BC 8000A5BC AFA50074 */  sw         $a1, 0x74($sp)
/* B1C0 8000A5C0 8CC20000 */  lw         $v0, 0x0($a2)
/* B1C4 8000A5C4 00808025 */  or         $s0, $a0, $zero
/* B1C8 8000A5C8 240C00FF */  addiu      $t4, $zero, 0xFF
/* B1CC 8000A5CC 304E001F */  andi       $t6, $v0, 0x1F
/* B1D0 8000A5D0 29C10010 */  slti       $at, $t6, 0x10
/* B1D4 8000A5D4 14200003 */  bnez       $at, .L8000A5E4
/* B1D8 8000A5D8 01C01025 */   or        $v0, $t6, $zero
/* B1DC 8000A5DC 240F001F */  addiu      $t7, $zero, 0x1F
/* B1E0 8000A5E0 01EE1023 */  subu       $v0, $t7, $t6
.L8000A5E4:
/* B1E4 8000A5E4 96180004 */  lhu        $t8, 0x4($s0)
/* B1E8 8000A5E8 00024080 */  sll        $t0, $v0, 2
/* B1EC 8000A5EC 25030040 */  addiu      $v1, $t0, 0x40
/* B1F0 8000A5F0 000250C0 */  sll        $t2, $v0, 3
/* B1F4 8000A5F4 254B0080 */  addiu      $t3, $t2, 0x80
/* B1F8 8000A5F8 37190010 */  ori        $t9, $t8, 0x10
/* B1FC 8000A5FC A6190004 */  sh         $t9, 0x4($s0)
/* B200 8000A600 A20B0036 */  sb         $t3, 0x36($s0)
/* B204 8000A604 A2030034 */  sb         $v1, 0x34($s0)
/* B208 8000A608 A2030035 */  sb         $v1, 0x35($s0)
/* B20C 8000A60C A20C0037 */  sb         $t4, 0x37($s0)
/* B210 8000A610 8FAD0074 */  lw         $t5, 0x74($sp)
/* B214 8000A614 240E0004 */  addiu      $t6, $zero, 0x4
/* B218 8000A618 AFAE0010 */  sw         $t6, 0x10($sp)
/* B21C 8000A61C 27A4002C */  addiu      $a0, $sp, 0x2C
/* B220 8000A620 00003825 */  or         $a3, $zero, $zero
/* B224 8000A624 25A50008 */  addiu      $a1, $t5, 0x8
/* B228 8000A628 0C008347 */  jal        func_80020D1C
/* B22C 8000A62C 25A60014 */   addiu     $a2, $t5, 0x14
/* B230 8000A630 960F0004 */  lhu        $t7, 0x4($s0)
/* B234 8000A634 27A4002C */  addiu      $a0, $sp, 0x2C
/* B238 8000A638 2605005C */  addiu      $a1, $s0, 0x5C
/* B23C 8000A63C 35F80002 */  ori        $t8, $t7, 0x2
/* B240 8000A640 0C00907C */  jal        func_800241F0
/* B244 8000A644 A6180004 */   sh        $t8, 0x4($s0)
/* B248 8000A648 8FBF0024 */  lw         $ra, 0x24($sp)
/* B24C 8000A64C 8FB00020 */  lw         $s0, 0x20($sp)
/* B250 8000A650 27BD0070 */  addiu      $sp, $sp, 0x70
/* B254 8000A654 03E00008 */  jr         $ra
/* B258 8000A658 00000000 */   nop

glabel func_8000A65C
/* B25C 8000A65C 27BDFF88 */  addiu      $sp, $sp, -0x78
/* B260 8000A660 AFBF001C */  sw         $ra, 0x1C($sp)
/* B264 8000A664 AFA40078 */  sw         $a0, 0x78($sp)
/* B268 8000A668 AFA5007C */  sw         $a1, 0x7C($sp)
/* B26C 8000A66C 8CC20000 */  lw         $v0, 0x0($a2)
/* B270 8000A670 24010708 */  addiu      $at, $zero, 0x708
/* B274 8000A674 0041001A */  div        $zero, $v0, $at
/* B278 8000A678 00001010 */  mfhi       $v0
/* B27C 8000A67C 44822000 */  mtc1       $v0, $f4
/* B280 8000A680 3C018009 */  lui        $at, %hi(D_800952C8)
/* B284 8000A684 D42852C8 */  ldc1       $f8, %lo(D_800952C8)($at)
/* B288 8000A688 468021A1 */  cvt.d.w    $f6, $f4
/* B28C 8000A68C 46283282 */  mul.d      $f10, $f6, $f8
/* B290 8000A690 0C01AB20 */  jal        func_8006AC80
/* B294 8000A694 46205320 */   cvt.s.d   $f12, $f10
/* B298 8000A698 8FA2007C */  lw         $v0, 0x7C($sp)
/* B29C 8000A69C 27A60024 */  addiu      $a2, $sp, 0x24
/* B2A0 8000A6A0 24080004 */  addiu      $t0, $zero, 0x4
/* B2A4 8000A6A4 8C410014 */  lw         $at, 0x14($v0)
/* B2A8 8000A6A8 27A40034 */  addiu      $a0, $sp, 0x34
/* B2AC 8000A6AC 00003825 */  or         $a3, $zero, $zero
/* B2B0 8000A6B0 ACC10000 */  sw         $at, 0x0($a2)
/* B2B4 8000A6B4 8C590018 */  lw         $t9, 0x18($v0)
/* B2B8 8000A6B8 24450008 */  addiu      $a1, $v0, 0x8
/* B2BC 8000A6BC ACD90004 */  sw         $t9, 0x4($a2)
/* B2C0 8000A6C0 8C41001C */  lw         $at, 0x1C($v0)
/* B2C4 8000A6C4 ACC10008 */  sw         $at, 0x8($a2)
/* B2C8 8000A6C8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* B2CC 8000A6CC 44818000 */  mtc1       $at, $f16
/* B2D0 8000A6D0 3C018009 */  lui        $at, %hi(D_800952D0)
/* B2D4 8000A6D4 D42652D0 */  ldc1       $f6, %lo(D_800952D0)($at)
/* B2D8 8000A6D8 46008481 */  sub.s      $f18, $f16, $f0
/* B2DC 8000A6DC C7B00028 */  lwc1       $f16, 0x28($sp)
/* B2E0 8000A6E0 AFA80010 */  sw         $t0, 0x10($sp)
/* B2E4 8000A6E4 46009121 */  cvt.d.s    $f4, $f18
/* B2E8 8000A6E8 46262202 */  mul.d      $f8, $f4, $f6
/* B2EC 8000A6EC 462042A0 */  cvt.s.d    $f10, $f8
/* B2F0 8000A6F0 460A8480 */  add.s      $f18, $f16, $f10
/* B2F4 8000A6F4 0C008347 */  jal        func_80020D1C
/* B2F8 8000A6F8 E7B20028 */   swc1      $f18, 0x28($sp)
/* B2FC 8000A6FC 8FA20078 */  lw         $v0, 0x78($sp)
/* B300 8000A700 27A40034 */  addiu      $a0, $sp, 0x34
/* B304 8000A704 94490004 */  lhu        $t1, 0x4($v0)
/* B308 8000A708 2445005C */  addiu      $a1, $v0, 0x5C
/* B30C 8000A70C 352A0002 */  ori        $t2, $t1, 0x2
/* B310 8000A710 0C00907C */  jal        func_800241F0
/* B314 8000A714 A44A0004 */   sh        $t2, 0x4($v0)
/* B318 8000A718 8FBF001C */  lw         $ra, 0x1C($sp)
/* B31C 8000A71C 27BD0078 */  addiu      $sp, $sp, 0x78
/* B320 8000A720 03E00008 */  jr         $ra
/* B324 8000A724 00000000 */   nop

glabel func_8000A728
/* B328 8000A728 27BDFF80 */  addiu      $sp, $sp, -0x80
/* B32C 8000A72C AFBF001C */  sw         $ra, 0x1C($sp)
/* B330 8000A730 AFA40080 */  sw         $a0, 0x80($sp)
/* B334 8000A734 AFA50084 */  sw         $a1, 0x84($sp)
/* B338 8000A738 8CC20000 */  lw         $v0, 0x0($a2)
/* B33C 8000A73C 3C018009 */  lui        $at, %hi(D_800952D8)
/* B340 8000A740 D42852D8 */  ldc1       $f8, %lo(D_800952D8)($at)
/* B344 8000A744 00027080 */  sll        $t6, $v0, 2
/* B348 8000A748 448E2000 */  mtc1       $t6, $f4
/* B34C 8000A74C 00000000 */  nop
/* B350 8000A750 468021A1 */  cvt.d.w    $f6, $f4
/* B354 8000A754 46283282 */  mul.d      $f10, $f6, $f8
/* B358 8000A758 0C01AB20 */  jal        func_8006AC80
/* B35C 8000A75C 46205320 */   cvt.s.d   $f12, $f10
/* B360 8000A760 3C014348 */  lui        $at, (0x43480000 >> 16)
/* B364 8000A764 44818000 */  mtc1       $at, $f16
/* B368 8000A768 8FB80084 */  lw         $t8, 0x84($sp)
/* B36C 8000A76C 27AF002C */  addiu      $t7, $sp, 0x2C
/* B370 8000A770 46100082 */  mul.s      $f2, $f0, $f16
/* B374 8000A774 E7A20038 */  swc1       $f2, 0x38($sp)
/* B378 8000A778 8F010008 */  lw         $at, 0x8($t8)
/* B37C 8000A77C ADE10000 */  sw         $at, 0x0($t7)
/* B380 8000A780 8F09000C */  lw         $t1, 0xC($t8)
/* B384 8000A784 ADE90004 */  sw         $t1, 0x4($t7)
/* B388 8000A788 8F010010 */  lw         $at, 0x10($t8)
/* B38C 8000A78C ADE10008 */  sw         $at, 0x8($t7)
/* B390 8000A790 C7B2002C */  lwc1       $f18, 0x2C($sp)
/* B394 8000A794 3C018009 */  lui        $at, %hi(D_800952E0)
/* B398 8000A798 C42C52E0 */  lwc1       $f12, %lo(D_800952E0)($at)
/* B39C 8000A79C 46029101 */  sub.s      $f4, $f18, $f2
/* B3A0 8000A7A0 0C019B54 */  jal        __sinf
/* B3A4 8000A7A4 E7A4002C */   swc1      $f4, 0x2C($sp)
/* B3A8 8000A7A8 C7A80038 */  lwc1       $f8, 0x38($sp)
/* B3AC 8000A7AC C7A60034 */  lwc1       $f6, 0x34($sp)
/* B3B0 8000A7B0 8FA60084 */  lw         $a2, 0x84($sp)
/* B3B4 8000A7B4 46080282 */  mul.s      $f10, $f0, $f8
/* B3B8 8000A7B8 240A0004 */  addiu      $t2, $zero, 0x4
/* B3BC 8000A7BC AFAA0010 */  sw         $t2, 0x10($sp)
/* B3C0 8000A7C0 27A4003C */  addiu      $a0, $sp, 0x3C
/* B3C4 8000A7C4 27A5002C */  addiu      $a1, $sp, 0x2C
/* B3C8 8000A7C8 00003825 */  or         $a3, $zero, $zero
/* B3CC 8000A7CC 24C60014 */  addiu      $a2, $a2, 0x14
/* B3D0 8000A7D0 460A3401 */  sub.s      $f16, $f6, $f10
/* B3D4 8000A7D4 0C008347 */  jal        func_80020D1C
/* B3D8 8000A7D8 E7B00034 */   swc1      $f16, 0x34($sp)
/* B3DC 8000A7DC 8FA20080 */  lw         $v0, 0x80($sp)
/* B3E0 8000A7E0 27A4003C */  addiu      $a0, $sp, 0x3C
/* B3E4 8000A7E4 944B0004 */  lhu        $t3, 0x4($v0)
/* B3E8 8000A7E8 2445005C */  addiu      $a1, $v0, 0x5C
/* B3EC 8000A7EC 356C0002 */  ori        $t4, $t3, 0x2
/* B3F0 8000A7F0 0C00907C */  jal        func_800241F0
/* B3F4 8000A7F4 A44C0004 */   sh        $t4, 0x4($v0)
/* B3F8 8000A7F8 8FBF001C */  lw         $ra, 0x1C($sp)
/* B3FC 8000A7FC 27BD0080 */  addiu      $sp, $sp, 0x80
/* B400 8000A800 03E00008 */  jr         $ra
/* B404 8000A804 00000000 */   nop

glabel func_8000A808
/* B408 8000A808 27BDFF88 */  addiu      $sp, $sp, -0x78
/* B40C 8000A80C AFBF001C */  sw         $ra, 0x1C($sp)
/* B410 8000A810 AFA40078 */  sw         $a0, 0x78($sp)
/* B414 8000A814 AFA5007C */  sw         $a1, 0x7C($sp)
/* B418 8000A818 8CC20000 */  lw         $v0, 0x0($a2)
/* B41C 8000A81C 24010078 */  addiu      $at, $zero, 0x78
/* B420 8000A820 0041001A */  div        $zero, $v0, $at
/* B424 8000A824 00001010 */  mfhi       $v0
/* B428 8000A828 44822000 */  mtc1       $v0, $f4
/* B42C 8000A82C 3C018009 */  lui        $at, %hi(D_800952E8)
/* B430 8000A830 D42852E8 */  ldc1       $f8, %lo(D_800952E8)($at)
/* B434 8000A834 468021A1 */  cvt.d.w    $f6, $f4
/* B438 8000A838 46283282 */  mul.d      $f10, $f6, $f8
/* B43C 8000A83C 0C01AB20 */  jal        func_8006AC80
/* B440 8000A840 46205320 */   cvt.s.d   $f12, $f10
/* B444 8000A844 8FA2007C */  lw         $v0, 0x7C($sp)
/* B448 8000A848 27A60024 */  addiu      $a2, $sp, 0x24
/* B44C 8000A84C 44803000 */  mtc1       $zero, $f6
/* B450 8000A850 8C410014 */  lw         $at, 0x14($v0)
/* B454 8000A854 24080004 */  addiu      $t0, $zero, 0x4
/* B458 8000A858 27A40034 */  addiu      $a0, $sp, 0x34
/* B45C 8000A85C ACC10000 */  sw         $at, 0x0($a2)
/* B460 8000A860 8C590018 */  lw         $t9, 0x18($v0)
/* B464 8000A864 00003825 */  or         $a3, $zero, $zero
/* B468 8000A868 24450008 */  addiu      $a1, $v0, 0x8
/* B46C 8000A86C ACD90004 */  sw         $t9, 0x4($a2)
/* B470 8000A870 8C41001C */  lw         $at, 0x1C($v0)
/* B474 8000A874 ACC10008 */  sw         $at, 0x8($a2)
/* B478 8000A878 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* B47C 8000A87C 44818000 */  mtc1       $at, $f16
/* B480 8000A880 3C01C020 */  lui        $at, (0xC0200000 >> 16)
/* B484 8000A884 44813800 */  mtc1       $at, $f7
/* B488 8000A888 46008481 */  sub.s      $f18, $f16, $f0
/* B48C 8000A88C 3C014014 */  lui        $at, (0x40140000 >> 16)
/* B490 8000A890 44819800 */  mtc1       $at, $f19
/* B494 8000A894 AFA80010 */  sw         $t0, 0x10($sp)
/* B498 8000A898 46009121 */  cvt.d.s    $f4, $f18
/* B49C 8000A89C 44809000 */  mtc1       $zero, $f18
/* B4A0 8000A8A0 46262202 */  mul.d      $f8, $f4, $f6
/* B4A4 8000A8A4 C7A60024 */  lwc1       $f6, 0x24($sp)
/* B4A8 8000A8A8 462042A0 */  cvt.s.d    $f10, $f8
/* B4AC 8000A8AC 46003221 */  cvt.d.s    $f8, $f6
/* B4B0 8000A8B0 46005421 */  cvt.d.s    $f16, $f10
/* B4B4 8000A8B4 46328100 */  add.d      $f4, $f16, $f18
/* B4B8 8000A8B8 46244280 */  add.d      $f10, $f8, $f4
/* B4BC 8000A8BC 46205420 */  cvt.s.d    $f16, $f10
/* B4C0 8000A8C0 0C008347 */  jal        func_80020D1C
/* B4C4 8000A8C4 E7B00024 */   swc1      $f16, 0x24($sp)
/* B4C8 8000A8C8 8FA20078 */  lw         $v0, 0x78($sp)
/* B4CC 8000A8CC 27A40034 */  addiu      $a0, $sp, 0x34
/* B4D0 8000A8D0 94490004 */  lhu        $t1, 0x4($v0)
/* B4D4 8000A8D4 2445005C */  addiu      $a1, $v0, 0x5C
/* B4D8 8000A8D8 352A0002 */  ori        $t2, $t1, 0x2
/* B4DC 8000A8DC 0C00907C */  jal        func_800241F0
/* B4E0 8000A8E0 A44A0004 */   sh        $t2, 0x4($v0)
/* B4E4 8000A8E4 8FBF001C */  lw         $ra, 0x1C($sp)
/* B4E8 8000A8E8 27BD0078 */  addiu      $sp, $sp, 0x78
/* B4EC 8000A8EC 03E00008 */  jr         $ra
/* B4F0 8000A8F0 00000000 */   nop

glabel func_8000A8F4
/* B4F4 8000A8F4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* B4F8 8000A8F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* B4FC 8000A8FC AFB00020 */  sw         $s0, 0x20($sp)
/* B500 8000A900 AFA50084 */  sw         $a1, 0x84($sp)
/* B504 8000A904 AFA60088 */  sw         $a2, 0x88($sp)
/* B508 8000A908 84A20024 */  lh         $v0, 0x24($a1)
/* B50C 8000A90C 00808025 */  or         $s0, $a0, $zero
/* B510 8000A910 00A07025 */  or         $t6, $a1, $zero
/* B514 8000A914 14400002 */  bnez       $v0, .L8000A920
/* B518 8000A918 27A6002C */   addiu     $a2, $sp, 0x2C
/* B51C 8000A91C 24020168 */  addiu      $v0, $zero, 0x168
.L8000A920:
/* B520 8000A920 04400003 */  bltz       $v0, .L8000A930
/* B524 8000A924 00024023 */   negu      $t0, $v0
/* B528 8000A928 10000001 */  b          .L8000A930
/* B52C 8000A92C 00404025 */   or        $t0, $v0, $zero
.L8000A930:
/* B530 8000A930 8FAF0088 */  lw         $t7, 0x88($sp)
/* B534 8000A934 44824000 */  mtc1       $v0, $f8
/* B538 8000A938 8FB90084 */  lw         $t9, 0x84($sp)
/* B53C 8000A93C 8DF80000 */  lw         $t8, 0x0($t7)
/* B540 8000A940 468042A0 */  cvt.s.w    $f10, $f8
/* B544 8000A944 8F210014 */  lw         $at, 0x14($t9)
/* B548 8000A948 0308001B */  divu       $zero, $t8, $t0
/* B54C 8000A94C 00001810 */  mfhi       $v1
/* B550 8000A950 44832000 */  mtc1       $v1, $f4
/* B554 8000A954 ACC10000 */  sw         $at, 0x0($a2)
/* B558 8000A958 8F2A0018 */  lw         $t2, 0x18($t9)
/* B55C 8000A95C 468021A0 */  cvt.s.w    $f6, $f4
/* B560 8000A960 15000002 */  bnez       $t0, .L8000A96C
/* B564 8000A964 00000000 */   nop
/* B568 8000A968 0007000D */  break      7
.L8000A96C:
/* B56C 8000A96C 460A3403 */  div.s      $f16, $f6, $f10
/* B570 8000A970 ACCA0004 */  sw         $t2, 0x4($a2)
/* B574 8000A974 8F21001C */  lw         $at, 0x1C($t9)
/* B578 8000A978 240B0004 */  addiu      $t3, $zero, 0x4
/* B57C 8000A97C 27A40038 */  addiu      $a0, $sp, 0x38
/* B580 8000A980 ACC10008 */  sw         $at, 0x8($a2)
/* B584 8000A984 3C018009 */  lui        $at, %hi(D_800952F0)
/* B588 8000A988 D42452F0 */  ldc1       $f4, %lo(D_800952F0)($at)
/* B58C 8000A98C 8FA50084 */  lw         $a1, 0x84($sp)
/* B590 8000A990 AFAB0010 */  sw         $t3, 0x10($sp)
/* B594 8000A994 00003825 */  or         $a3, $zero, $zero
/* B598 8000A998 24A50008 */  addiu      $a1, $a1, 0x8
/* B59C 8000A99C 460084A1 */  cvt.d.s    $f18, $f16
/* B5A0 8000A9A0 46249202 */  mul.d      $f8, $f18, $f4
/* B5A4 8000A9A4 462041A0 */  cvt.s.d    $f6, $f8
/* B5A8 8000A9A8 0C008347 */  jal        func_80020D1C
/* B5AC 8000A9AC E7A60030 */   swc1      $f6, 0x30($sp)
/* B5B0 8000A9B0 960C0004 */  lhu        $t4, 0x4($s0)
/* B5B4 8000A9B4 27A40038 */  addiu      $a0, $sp, 0x38
/* B5B8 8000A9B8 2605005C */  addiu      $a1, $s0, 0x5C
/* B5BC 8000A9BC 358D0002 */  ori        $t5, $t4, 0x2
/* B5C0 8000A9C0 0C00907C */  jal        func_800241F0
/* B5C4 8000A9C4 A60D0004 */   sh        $t5, 0x4($s0)
/* B5C8 8000A9C8 960E0004 */  lhu        $t6, 0x4($s0)
/* B5CC 8000A9CC 240200FF */  addiu      $v0, $zero, 0xFF
/* B5D0 8000A9D0 A2020034 */  sb         $v0, 0x34($s0)
/* B5D4 8000A9D4 35CF0010 */  ori        $t7, $t6, 0x10
/* B5D8 8000A9D8 A60F0004 */  sh         $t7, 0x4($s0)
/* B5DC 8000A9DC A2020035 */  sb         $v0, 0x35($s0)
/* B5E0 8000A9E0 A2020036 */  sb         $v0, 0x36($s0)
/* B5E4 8000A9E4 A2020037 */  sb         $v0, 0x37($s0)
/* B5E8 8000A9E8 8FBF0024 */  lw         $ra, 0x24($sp)
/* B5EC 8000A9EC 8FB00020 */  lw         $s0, 0x20($sp)
/* B5F0 8000A9F0 27BD0080 */  addiu      $sp, $sp, 0x80
/* B5F4 8000A9F4 03E00008 */  jr         $ra
/* B5F8 8000A9F8 00000000 */   nop

glabel func_8000A9FC
/* B5FC 8000A9FC 27BDFF90 */  addiu      $sp, $sp, -0x70
/* B600 8000AA00 AFB00020 */  sw         $s0, 0x20($sp)
/* B604 8000AA04 00808025 */  or         $s0, $a0, $zero
/* B608 8000AA08 AFBF0024 */  sw         $ra, 0x24($sp)
/* B60C 8000AA0C AFA50074 */  sw         $a1, 0x74($sp)
/* B610 8000AA10 AFA60078 */  sw         $a2, 0x78($sp)
/* B614 8000AA14 00A07025 */  or         $t6, $a1, $zero
/* B618 8000AA18 240F0004 */  addiu      $t7, $zero, 0x4
/* B61C 8000AA1C AFAF0010 */  sw         $t7, 0x10($sp)
/* B620 8000AA20 25C60014 */  addiu      $a2, $t6, 0x14
/* B624 8000AA24 24A50008 */  addiu      $a1, $a1, 0x8
/* B628 8000AA28 27A40028 */  addiu      $a0, $sp, 0x28
/* B62C 8000AA2C 0C008347 */  jal        func_80020D1C
/* B630 8000AA30 00003825 */   or        $a3, $zero, $zero
/* B634 8000AA34 96180004 */  lhu        $t8, 0x4($s0)
/* B638 8000AA38 27A40028 */  addiu      $a0, $sp, 0x28
/* B63C 8000AA3C 2605005C */  addiu      $a1, $s0, 0x5C
/* B640 8000AA40 37190002 */  ori        $t9, $t8, 0x2
/* B644 8000AA44 0C00907C */  jal        func_800241F0
/* B648 8000AA48 A6190004 */   sh        $t9, 0x4($s0)
/* B64C 8000AA4C 8FA80078 */  lw         $t0, 0x78($sp)
/* B650 8000AA50 24010065 */  addiu      $at, $zero, 0x65
/* B654 8000AA54 8FA60074 */  lw         $a2, 0x74($sp)
/* B658 8000AA58 8D040000 */  lw         $a0, 0x0($t0)
/* B65C 8000AA5C 0081001B */  divu       $zero, $a0, $at
/* B660 8000AA60 00004810 */  mfhi       $t1
/* B664 8000AA64 01202025 */  or         $a0, $t1, $zero
/* B668 8000AA68 0520000F */  bltz       $t1, .L8000AAA8
/* B66C 8000AA6C 29210011 */   slti      $at, $t1, 0x11
/* B670 8000AA70 1020000D */  beqz       $at, .L8000AAA8
/* B674 8000AA74 00091100 */   sll       $v0, $t1, 4
/* B678 8000AA78 284100FF */  slti       $at, $v0, 0xFF
/* B67C 8000AA7C 54200003 */  bnel       $at, $zero, .L8000AA8C
/* B680 8000AA80 960A0004 */   lhu       $t2, 0x4($s0)
/* B684 8000AA84 240200FF */  addiu      $v0, $zero, 0xFF
/* B688 8000AA88 960A0004 */  lhu        $t2, 0x4($s0)
.L8000AA8C:
/* B68C 8000AA8C A2020034 */  sb         $v0, 0x34($s0)
/* B690 8000AA90 A2000035 */  sb         $zero, 0x35($s0)
/* B694 8000AA94 354B0010 */  ori        $t3, $t2, 0x10
/* B698 8000AA98 A60B0004 */  sh         $t3, 0x4($s0)
/* B69C 8000AA9C A2000036 */  sb         $zero, 0x36($s0)
/* B6A0 8000AAA0 84CC0024 */  lh         $t4, 0x24($a2)
/* B6A4 8000AAA4 A20C0037 */  sb         $t4, 0x37($s0)
.L8000AAA8:
/* B6A8 8000AAA8 28810011 */  slti       $at, $a0, 0x11
/* B6AC 8000AAAC 14200011 */  bnez       $at, .L8000AAF4
/* B6B0 8000AAB0 28810022 */   slti      $at, $a0, 0x22
/* B6B4 8000AAB4 1020000F */  beqz       $at, .L8000AAF4
/* B6B8 8000AAB8 00041900 */   sll       $v1, $a0, 4
/* B6BC 8000AABC 2462FEF0 */  addiu      $v0, $v1, -0x110
/* B6C0 8000AAC0 284500FF */  slti       $a1, $v0, 0xFF
/* B6C4 8000AAC4 A2000035 */  sb         $zero, 0x35($s0)
/* B6C8 8000AAC8 14A00002 */  bnez       $a1, .L8000AAD4
/* B6CC 8000AACC A2000036 */   sb        $zero, 0x36($s0)
/* B6D0 8000AAD0 240200FF */  addiu      $v0, $zero, 0xFF
.L8000AAD4:
/* B6D4 8000AAD4 960D0004 */  lhu        $t5, 0x4($s0)
/* B6D8 8000AAD8 240700FF */  addiu      $a3, $zero, 0xFF
/* B6DC 8000AADC 00E2C023 */  subu       $t8, $a3, $v0
/* B6E0 8000AAE0 35AE0010 */  ori        $t6, $t5, 0x10
/* B6E4 8000AAE4 A60E0004 */  sh         $t6, 0x4($s0)
/* B6E8 8000AAE8 A2180034 */  sb         $t8, 0x34($s0)
/* B6EC 8000AAEC 84D90024 */  lh         $t9, 0x24($a2)
/* B6F0 8000AAF0 A2190037 */  sb         $t9, 0x37($s0)
.L8000AAF4:
/* B6F4 8000AAF4 28810022 */  slti       $at, $a0, 0x22
/* B6F8 8000AAF8 14200010 */  bnez       $at, .L8000AB3C
/* B6FC 8000AAFC 240700FF */   addiu     $a3, $zero, 0xFF
/* B700 8000AB00 28810033 */  slti       $at, $a0, 0x33
/* B704 8000AB04 1020000D */  beqz       $at, .L8000AB3C
/* B708 8000AB08 00041900 */   sll       $v1, $a0, 4
/* B70C 8000AB0C 2462FDE0 */  addiu      $v0, $v1, -0x220
/* B710 8000AB10 284500FF */  slti       $a1, $v0, 0xFF
/* B714 8000AB14 14A00002 */  bnez       $a1, .L8000AB20
/* B718 8000AB18 A2000036 */   sb        $zero, 0x36($s0)
/* B71C 8000AB1C 00E01025 */  or         $v0, $a3, $zero
.L8000AB20:
/* B720 8000AB20 96080004 */  lhu        $t0, 0x4($s0)
/* B724 8000AB24 A2000034 */  sb         $zero, 0x34($s0)
/* B728 8000AB28 A2020035 */  sb         $v0, 0x35($s0)
/* B72C 8000AB2C 35090010 */  ori        $t1, $t0, 0x10
/* B730 8000AB30 A6090004 */  sh         $t1, 0x4($s0)
/* B734 8000AB34 84CA0024 */  lh         $t2, 0x24($a2)
/* B738 8000AB38 A20A0037 */  sb         $t2, 0x37($s0)
.L8000AB3C:
/* B73C 8000AB3C 28810033 */  slti       $at, $a0, 0x33
/* B740 8000AB40 14200010 */  bnez       $at, .L8000AB84
/* B744 8000AB44 28810044 */   slti      $at, $a0, 0x44
/* B748 8000AB48 1020000E */  beqz       $at, .L8000AB84
/* B74C 8000AB4C 00041900 */   sll       $v1, $a0, 4
/* B750 8000AB50 2462FCD0 */  addiu      $v0, $v1, -0x330
/* B754 8000AB54 284500FF */  slti       $a1, $v0, 0xFF
/* B758 8000AB58 A2000036 */  sb         $zero, 0x36($s0)
/* B75C 8000AB5C 14A00002 */  bnez       $a1, .L8000AB68
/* B760 8000AB60 A2000034 */   sb        $zero, 0x34($s0)
/* B764 8000AB64 00E01025 */  or         $v0, $a3, $zero
.L8000AB68:
/* B768 8000AB68 960B0004 */  lhu        $t3, 0x4($s0)
/* B76C 8000AB6C 00E27023 */  subu       $t6, $a3, $v0
/* B770 8000AB70 A20E0035 */  sb         $t6, 0x35($s0)
/* B774 8000AB74 356C0010 */  ori        $t4, $t3, 0x10
/* B778 8000AB78 A60C0004 */  sh         $t4, 0x4($s0)
/* B77C 8000AB7C 84CF0024 */  lh         $t7, 0x24($a2)
/* B780 8000AB80 A20F0037 */  sb         $t7, 0x37($s0)
.L8000AB84:
/* B784 8000AB84 28810044 */  slti       $at, $a0, 0x44
/* B788 8000AB88 1420000F */  bnez       $at, .L8000ABC8
/* B78C 8000AB8C 28810055 */   slti      $at, $a0, 0x55
/* B790 8000AB90 1020000D */  beqz       $at, .L8000ABC8
/* B794 8000AB94 00041900 */   sll       $v1, $a0, 4
/* B798 8000AB98 2462FBC0 */  addiu      $v0, $v1, -0x440
/* B79C 8000AB9C 284500FF */  slti       $a1, $v0, 0xFF
/* B7A0 8000ABA0 A2000035 */  sb         $zero, 0x35($s0)
/* B7A4 8000ABA4 14A00002 */  bnez       $a1, .L8000ABB0
/* B7A8 8000ABA8 A2000034 */   sb        $zero, 0x34($s0)
/* B7AC 8000ABAC 00E01025 */  or         $v0, $a3, $zero
.L8000ABB0:
/* B7B0 8000ABB0 96180004 */  lhu        $t8, 0x4($s0)
/* B7B4 8000ABB4 A2020036 */  sb         $v0, 0x36($s0)
/* B7B8 8000ABB8 37190010 */  ori        $t9, $t8, 0x10
/* B7BC 8000ABBC A6190004 */  sh         $t9, 0x4($s0)
/* B7C0 8000ABC0 84C80024 */  lh         $t0, 0x24($a2)
/* B7C4 8000ABC4 A2080037 */  sb         $t0, 0x37($s0)
.L8000ABC8:
/* B7C8 8000ABC8 28810055 */  slti       $at, $a0, 0x55
/* B7CC 8000ABCC 14200010 */  bnez       $at, .L8000AC10
/* B7D0 8000ABD0 28810066 */   slti      $at, $a0, 0x66
/* B7D4 8000ABD4 1020000E */  beqz       $at, .L8000AC10
/* B7D8 8000ABD8 00041900 */   sll       $v1, $a0, 4
/* B7DC 8000ABDC 2462FAB0 */  addiu      $v0, $v1, -0x550
/* B7E0 8000ABE0 284500FF */  slti       $a1, $v0, 0xFF
/* B7E4 8000ABE4 A2000035 */  sb         $zero, 0x35($s0)
/* B7E8 8000ABE8 14A00002 */  bnez       $a1, .L8000ABF4
/* B7EC 8000ABEC A2000034 */   sb        $zero, 0x34($s0)
/* B7F0 8000ABF0 00E01025 */  or         $v0, $a3, $zero
.L8000ABF4:
/* B7F4 8000ABF4 96090004 */  lhu        $t1, 0x4($s0)
/* B7F8 8000ABF8 00E26023 */  subu       $t4, $a3, $v0
/* B7FC 8000ABFC A20C0036 */  sb         $t4, 0x36($s0)
/* B800 8000AC00 352A0010 */  ori        $t2, $t1, 0x10
/* B804 8000AC04 A60A0004 */  sh         $t2, 0x4($s0)
/* B808 8000AC08 84CD0024 */  lh         $t5, 0x24($a2)
/* B80C 8000AC0C A20D0037 */  sb         $t5, 0x37($s0)
.L8000AC10:
/* B810 8000AC10 8FBF0024 */  lw         $ra, 0x24($sp)
/* B814 8000AC14 8FB00020 */  lw         $s0, 0x20($sp)
/* B818 8000AC18 27BD0070 */  addiu      $sp, $sp, 0x70
/* B81C 8000AC1C 03E00008 */  jr         $ra
/* B820 8000AC20 00000000 */   nop

glabel func_8000AC24
/* B824 8000AC24 27BDFF78 */  addiu      $sp, $sp, -0x88
/* B828 8000AC28 AFBF0024 */  sw         $ra, 0x24($sp)
/* B82C 8000AC2C AFB00020 */  sw         $s0, 0x20($sp)
/* B830 8000AC30 AFA5008C */  sw         $a1, 0x8C($sp)
/* B834 8000AC34 AFA60090 */  sw         $a2, 0x90($sp)
/* B838 8000AC38 8CC20000 */  lw         $v0, 0x0($a2)
/* B83C 8000AC3C 3C018009 */  lui        $at, %hi(D_800952F8)
/* B840 8000AC40 D42852F8 */  ldc1       $f8, %lo(D_800952F8)($at)
/* B844 8000AC44 00027880 */  sll        $t7, $v0, 2
/* B848 8000AC48 448F2000 */  mtc1       $t7, $f4
/* B84C 8000AC4C 00808025 */  or         $s0, $a0, $zero
/* B850 8000AC50 468021A1 */  cvt.d.w    $f6, $f4
/* B854 8000AC54 46283282 */  mul.d      $f10, $f6, $f8
/* B858 8000AC58 0C01AB20 */  jal        func_8006AC80
/* B85C 8000AC5C 46205320 */   cvt.s.d   $f12, $f10
/* B860 8000AC60 3C014348 */  lui        $at, (0x43480000 >> 16)
/* B864 8000AC64 44818000 */  mtc1       $at, $f16
/* B868 8000AC68 8FB9008C */  lw         $t9, 0x8C($sp)
/* B86C 8000AC6C 27B80030 */  addiu      $t8, $sp, 0x30
/* B870 8000AC70 46100082 */  mul.s      $f2, $f0, $f16
/* B874 8000AC74 E7A2007C */  swc1       $f2, 0x7C($sp)
/* B878 8000AC78 8F210008 */  lw         $at, 0x8($t9)
/* B87C 8000AC7C AF010000 */  sw         $at, 0x0($t8)
/* B880 8000AC80 8F2A000C */  lw         $t2, 0xC($t9)
/* B884 8000AC84 AF0A0004 */  sw         $t2, 0x4($t8)
/* B888 8000AC88 8F210010 */  lw         $at, 0x10($t9)
/* B88C 8000AC8C AF010008 */  sw         $at, 0x8($t8)
/* B890 8000AC90 C7B20030 */  lwc1       $f18, 0x30($sp)
/* B894 8000AC94 3C018009 */  lui        $at, %hi(D_80095300)
/* B898 8000AC98 C42C5300 */  lwc1       $f12, %lo(D_80095300)($at)
/* B89C 8000AC9C 46029101 */  sub.s      $f4, $f18, $f2
/* B8A0 8000ACA0 0C019B54 */  jal        __sinf
/* B8A4 8000ACA4 E7A40030 */   swc1      $f4, 0x30($sp)
/* B8A8 8000ACA8 C7A8007C */  lwc1       $f8, 0x7C($sp)
/* B8AC 8000ACAC C7A60038 */  lwc1       $f6, 0x38($sp)
/* B8B0 8000ACB0 8FA6008C */  lw         $a2, 0x8C($sp)
/* B8B4 8000ACB4 46080282 */  mul.s      $f10, $f0, $f8
/* B8B8 8000ACB8 240B0004 */  addiu      $t3, $zero, 0x4
/* B8BC 8000ACBC AFAB0010 */  sw         $t3, 0x10($sp)
/* B8C0 8000ACC0 27A4003C */  addiu      $a0, $sp, 0x3C
/* B8C4 8000ACC4 27A50030 */  addiu      $a1, $sp, 0x30
/* B8C8 8000ACC8 00003825 */  or         $a3, $zero, $zero
/* B8CC 8000ACCC 24C60014 */  addiu      $a2, $a2, 0x14
/* B8D0 8000ACD0 460A3401 */  sub.s      $f16, $f6, $f10
/* B8D4 8000ACD4 0C008347 */  jal        func_80020D1C
/* B8D8 8000ACD8 E7B00038 */   swc1      $f16, 0x38($sp)
/* B8DC 8000ACDC 960C0004 */  lhu        $t4, 0x4($s0)
/* B8E0 8000ACE0 27A4003C */  addiu      $a0, $sp, 0x3C
/* B8E4 8000ACE4 2605005C */  addiu      $a1, $s0, 0x5C
/* B8E8 8000ACE8 358D0002 */  ori        $t5, $t4, 0x2
/* B8EC 8000ACEC 0C00907C */  jal        func_800241F0
/* B8F0 8000ACF0 A60D0004 */   sh        $t5, 0x4($s0)
/* B8F4 8000ACF4 8FAE0090 */  lw         $t6, 0x90($sp)
/* B8F8 8000ACF8 24010021 */  addiu      $at, $zero, 0x21
/* B8FC 8000ACFC 8DC20000 */  lw         $v0, 0x0($t6)
/* B900 8000AD00 0041001B */  divu       $zero, $v0, $at
/* B904 8000AD04 00007810 */  mfhi       $t7
/* B908 8000AD08 01E01025 */  or         $v0, $t7, $zero
/* B90C 8000AD0C 05E0000F */  bltz       $t7, .L8000AD4C
/* B910 8000AD10 29E10011 */   slti      $at, $t7, 0x11
/* B914 8000AD14 1020000D */  beqz       $at, .L8000AD4C
/* B918 8000AD18 000F2100 */   sll       $a0, $t7, 4
/* B91C 8000AD1C 288100FF */  slti       $at, $a0, 0xFF
/* B920 8000AD20 14200002 */  bnez       $at, .L8000AD2C
/* B924 8000AD24 240300C8 */   addiu     $v1, $zero, 0xC8
/* B928 8000AD28 240400FF */  addiu      $a0, $zero, 0xFF
.L8000AD2C:
/* B92C 8000AD2C 96090004 */  lhu        $t1, 0x4($s0)
/* B930 8000AD30 241800FF */  addiu      $t8, $zero, 0xFF
/* B934 8000AD34 A2180034 */  sb         $t8, 0x34($s0)
/* B938 8000AD38 35280010 */  ori        $t0, $t1, 0x10
/* B93C 8000AD3C A6080004 */  sh         $t0, 0x4($s0)
/* B940 8000AD40 A2030035 */  sb         $v1, 0x35($s0)
/* B944 8000AD44 A2030036 */  sb         $v1, 0x36($s0)
/* B948 8000AD48 A2040037 */  sb         $a0, 0x37($s0)
.L8000AD4C:
/* B94C 8000AD4C 28410011 */  slti       $at, $v0, 0x11
/* B950 8000AD50 14200013 */  bnez       $at, .L8000ADA0
/* B954 8000AD54 28410022 */   slti      $at, $v0, 0x22
/* B958 8000AD58 10200011 */  beqz       $at, .L8000ADA0
/* B95C 8000AD5C 00021900 */   sll       $v1, $v0, 4
/* B960 8000AD60 2464FEF0 */  addiu      $a0, $v1, -0x110
/* B964 8000AD64 288500FF */  slti       $a1, $a0, 0xFF
/* B968 8000AD68 241900FF */  addiu      $t9, $zero, 0xFF
/* B96C 8000AD6C 240A00C8 */  addiu      $t2, $zero, 0xC8
/* B970 8000AD70 240B00C8 */  addiu      $t3, $zero, 0xC8
/* B974 8000AD74 A20B0036 */  sb         $t3, 0x36($s0)
/* B978 8000AD78 A20A0035 */  sb         $t2, 0x35($s0)
/* B97C 8000AD7C 14A00002 */  bnez       $a1, .L8000AD88
/* B980 8000AD80 A2190034 */   sb        $t9, 0x34($s0)
/* B984 8000AD84 240400FF */  addiu      $a0, $zero, 0xFF
.L8000AD88:
/* B988 8000AD88 960C0004 */  lhu        $t4, 0x4($s0)
/* B98C 8000AD8C 240F00FF */  addiu      $t7, $zero, 0xFF
/* B990 8000AD90 01E44823 */  subu       $t1, $t7, $a0
/* B994 8000AD94 358D0010 */  ori        $t5, $t4, 0x10
/* B998 8000AD98 A60D0004 */  sh         $t5, 0x4($s0)
/* B99C 8000AD9C A2090037 */  sb         $t1, 0x37($s0)
.L8000ADA0:
/* B9A0 8000ADA0 8FBF0024 */  lw         $ra, 0x24($sp)
/* B9A4 8000ADA4 8FB00020 */  lw         $s0, 0x20($sp)
/* B9A8 8000ADA8 27BD0088 */  addiu      $sp, $sp, 0x88
/* B9AC 8000ADAC 03E00008 */  jr         $ra
/* B9B0 8000ADB0 00000000 */   nop

glabel func_8000ADB4
/* B9B4 8000ADB4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* B9B8 8000ADB8 AFBF001C */  sw         $ra, 0x1C($sp)
/* B9BC 8000ADBC AFA40078 */  sw         $a0, 0x78($sp)
/* B9C0 8000ADC0 AFA5007C */  sw         $a1, 0x7C($sp)
/* B9C4 8000ADC4 8CC20000 */  lw         $v0, 0x0($a2)
/* B9C8 8000ADC8 3C018009 */  lui        $at, %hi(D_80095308)
/* B9CC 8000ADCC D4285308 */  ldc1       $f8, %lo(D_80095308)($at)
/* B9D0 8000ADD0 00027080 */  sll        $t6, $v0, 2
/* B9D4 8000ADD4 448E2000 */  mtc1       $t6, $f4
/* B9D8 8000ADD8 00000000 */  nop
/* B9DC 8000ADDC 468021A1 */  cvt.d.w    $f6, $f4
/* B9E0 8000ADE0 46283282 */  mul.d      $f10, $f6, $f8
/* B9E4 8000ADE4 0C01AB20 */  jal        func_8006AC80
/* B9E8 8000ADE8 46205320 */   cvt.s.d   $f12, $f10
/* B9EC 8000ADEC 8FB8007C */  lw         $t8, 0x7C($sp)
/* B9F0 8000ADF0 3C014348 */  lui        $at, (0x43480000 >> 16)
/* B9F4 8000ADF4 44818000 */  mtc1       $at, $f16
/* B9F8 8000ADF8 8F010008 */  lw         $at, 0x8($t8)
/* B9FC 8000ADFC 27AF0024 */  addiu      $t7, $sp, 0x24
/* BA00 8000AE00 46100082 */  mul.s      $f2, $f0, $f16
/* BA04 8000AE04 ADE10000 */  sw         $at, 0x0($t7)
/* BA08 8000AE08 8F09000C */  lw         $t1, 0xC($t8)
/* BA0C 8000AE0C ADE90004 */  sw         $t1, 0x4($t7)
/* BA10 8000AE10 8F010010 */  lw         $at, 0x10($t8)
/* BA14 8000AE14 ADE10008 */  sw         $at, 0x8($t7)
/* BA18 8000AE18 3C018009 */  lui        $at, %hi(D_80095310)
/* BA1C 8000AE1C C42C5310 */  lwc1       $f12, %lo(D_80095310)($at)
/* BA20 8000AE20 0C019B54 */  jal        __sinf
/* BA24 8000AE24 E7A20030 */   swc1      $f2, 0x30($sp)
/* BA28 8000AE28 C7A20030 */  lwc1       $f2, 0x30($sp)
/* BA2C 8000AE2C C7B20024 */  lwc1       $f18, 0x24($sp)
/* BA30 8000AE30 C7A8002C */  lwc1       $f8, 0x2C($sp)
/* BA34 8000AE34 46020102 */  mul.s      $f4, $f0, $f2
/* BA38 8000AE38 8FA6007C */  lw         $a2, 0x7C($sp)
/* BA3C 8000AE3C 46024280 */  add.s      $f10, $f8, $f2
/* BA40 8000AE40 240A0004 */  addiu      $t2, $zero, 0x4
/* BA44 8000AE44 AFAA0010 */  sw         $t2, 0x10($sp)
/* BA48 8000AE48 27A40034 */  addiu      $a0, $sp, 0x34
/* BA4C 8000AE4C E7AA002C */  swc1       $f10, 0x2C($sp)
/* BA50 8000AE50 46049180 */  add.s      $f6, $f18, $f4
/* BA54 8000AE54 27A50024 */  addiu      $a1, $sp, 0x24
/* BA58 8000AE58 00003825 */  or         $a3, $zero, $zero
/* BA5C 8000AE5C 24C60014 */  addiu      $a2, $a2, 0x14
/* BA60 8000AE60 0C008347 */  jal        func_80020D1C
/* BA64 8000AE64 E7A60024 */   swc1      $f6, 0x24($sp)
/* BA68 8000AE68 8FA20078 */  lw         $v0, 0x78($sp)
/* BA6C 8000AE6C 27A40034 */  addiu      $a0, $sp, 0x34
/* BA70 8000AE70 944B0004 */  lhu        $t3, 0x4($v0)
/* BA74 8000AE74 2445005C */  addiu      $a1, $v0, 0x5C
/* BA78 8000AE78 356C0002 */  ori        $t4, $t3, 0x2
/* BA7C 8000AE7C 0C00907C */  jal        func_800241F0
/* BA80 8000AE80 A44C0004 */   sh        $t4, 0x4($v0)
/* BA84 8000AE84 8FBF001C */  lw         $ra, 0x1C($sp)
/* BA88 8000AE88 27BD0078 */  addiu      $sp, $sp, 0x78
/* BA8C 8000AE8C 03E00008 */  jr         $ra
/* BA90 8000AE90 00000000 */   nop

glabel func_8000AE94
/* BA94 8000AE94 27BDFF78 */  addiu      $sp, $sp, -0x88
/* BA98 8000AE98 AFBF0024 */  sw         $ra, 0x24($sp)
/* BA9C 8000AE9C AFB00020 */  sw         $s0, 0x20($sp)
/* BAA0 8000AEA0 AFA5008C */  sw         $a1, 0x8C($sp)
/* BAA4 8000AEA4 AFA60090 */  sw         $a2, 0x90($sp)
/* BAA8 8000AEA8 8CC20000 */  lw         $v0, 0x0($a2)
/* BAAC 8000AEAC 3C018009 */  lui        $at, %hi(D_80095318)
/* BAB0 8000AEB0 D4285318 */  ldc1       $f8, %lo(D_80095318)($at)
/* BAB4 8000AEB4 00027880 */  sll        $t7, $v0, 2
/* BAB8 8000AEB8 448F2000 */  mtc1       $t7, $f4
/* BABC 8000AEBC 00808025 */  or         $s0, $a0, $zero
/* BAC0 8000AEC0 468021A1 */  cvt.d.w    $f6, $f4
/* BAC4 8000AEC4 46283282 */  mul.d      $f10, $f6, $f8
/* BAC8 8000AEC8 0C01AB20 */  jal        func_8006AC80
/* BACC 8000AECC 46205320 */   cvt.s.d   $f12, $f10
/* BAD0 8000AED0 8FB9008C */  lw         $t9, 0x8C($sp)
/* BAD4 8000AED4 3C014348 */  lui        $at, (0x43480000 >> 16)
/* BAD8 8000AED8 44818000 */  mtc1       $at, $f16
/* BADC 8000AEDC 8F210008 */  lw         $at, 0x8($t9)
/* BAE0 8000AEE0 27B80034 */  addiu      $t8, $sp, 0x34
/* BAE4 8000AEE4 46100082 */  mul.s      $f2, $f0, $f16
/* BAE8 8000AEE8 AF010000 */  sw         $at, 0x0($t8)
/* BAEC 8000AEEC 8F2A000C */  lw         $t2, 0xC($t9)
/* BAF0 8000AEF0 AF0A0004 */  sw         $t2, 0x4($t8)
/* BAF4 8000AEF4 8F210010 */  lw         $at, 0x10($t9)
/* BAF8 8000AEF8 AF010008 */  sw         $at, 0x8($t8)
/* BAFC 8000AEFC 3C018009 */  lui        $at, %hi(D_80095320)
/* BB00 8000AF00 C42C5320 */  lwc1       $f12, %lo(D_80095320)($at)
/* BB04 8000AF04 0C019B54 */  jal        __sinf
/* BB08 8000AF08 E7A20030 */   swc1      $f2, 0x30($sp)
/* BB0C 8000AF0C C7A20030 */  lwc1       $f2, 0x30($sp)
/* BB10 8000AF10 C7B20034 */  lwc1       $f18, 0x34($sp)
/* BB14 8000AF14 C7A8003C */  lwc1       $f8, 0x3C($sp)
/* BB18 8000AF18 46020102 */  mul.s      $f4, $f0, $f2
/* BB1C 8000AF1C 8FA6008C */  lw         $a2, 0x8C($sp)
/* BB20 8000AF20 46024280 */  add.s      $f10, $f8, $f2
/* BB24 8000AF24 240B0004 */  addiu      $t3, $zero, 0x4
/* BB28 8000AF28 AFAB0010 */  sw         $t3, 0x10($sp)
/* BB2C 8000AF2C 27A40040 */  addiu      $a0, $sp, 0x40
/* BB30 8000AF30 E7AA003C */  swc1       $f10, 0x3C($sp)
/* BB34 8000AF34 46049180 */  add.s      $f6, $f18, $f4
/* BB38 8000AF38 27A50034 */  addiu      $a1, $sp, 0x34
/* BB3C 8000AF3C 00003825 */  or         $a3, $zero, $zero
/* BB40 8000AF40 24C60014 */  addiu      $a2, $a2, 0x14
/* BB44 8000AF44 0C008347 */  jal        func_80020D1C
/* BB48 8000AF48 E7A60034 */   swc1      $f6, 0x34($sp)
/* BB4C 8000AF4C 960C0004 */  lhu        $t4, 0x4($s0)
/* BB50 8000AF50 27A40040 */  addiu      $a0, $sp, 0x40
/* BB54 8000AF54 2605005C */  addiu      $a1, $s0, 0x5C
/* BB58 8000AF58 358D0002 */  ori        $t5, $t4, 0x2
/* BB5C 8000AF5C 0C00907C */  jal        func_800241F0
/* BB60 8000AF60 A60D0004 */   sh        $t5, 0x4($s0)
/* BB64 8000AF64 8FAE0090 */  lw         $t6, 0x90($sp)
/* BB68 8000AF68 24010021 */  addiu      $at, $zero, 0x21
/* BB6C 8000AF6C 8DC20000 */  lw         $v0, 0x0($t6)
/* BB70 8000AF70 0041001B */  divu       $zero, $v0, $at
/* BB74 8000AF74 00007810 */  mfhi       $t7
/* BB78 8000AF78 01E01025 */  or         $v0, $t7, $zero
/* BB7C 8000AF7C 05E0000F */  bltz       $t7, .L8000AFBC
/* BB80 8000AF80 29E10011 */   slti      $at, $t7, 0x11
/* BB84 8000AF84 1020000D */  beqz       $at, .L8000AFBC
/* BB88 8000AF88 000F2100 */   sll       $a0, $t7, 4
/* BB8C 8000AF8C 288100FF */  slti       $at, $a0, 0xFF
/* BB90 8000AF90 14200002 */  bnez       $at, .L8000AF9C
/* BB94 8000AF94 240300C8 */   addiu     $v1, $zero, 0xC8
/* BB98 8000AF98 240400FF */  addiu      $a0, $zero, 0xFF
.L8000AF9C:
/* BB9C 8000AF9C 96090004 */  lhu        $t1, 0x4($s0)
/* BBA0 8000AFA0 241800FF */  addiu      $t8, $zero, 0xFF
/* BBA4 8000AFA4 A2180035 */  sb         $t8, 0x35($s0)
/* BBA8 8000AFA8 35280010 */  ori        $t0, $t1, 0x10
/* BBAC 8000AFAC A6080004 */  sh         $t0, 0x4($s0)
/* BBB0 8000AFB0 A2030034 */  sb         $v1, 0x34($s0)
/* BBB4 8000AFB4 A2030036 */  sb         $v1, 0x36($s0)
/* BBB8 8000AFB8 A2040037 */  sb         $a0, 0x37($s0)
.L8000AFBC:
/* BBBC 8000AFBC 28410011 */  slti       $at, $v0, 0x11
/* BBC0 8000AFC0 14200013 */  bnez       $at, .L8000B010
/* BBC4 8000AFC4 28410022 */   slti      $at, $v0, 0x22
/* BBC8 8000AFC8 10200011 */  beqz       $at, .L8000B010
/* BBCC 8000AFCC 00021900 */   sll       $v1, $v0, 4
/* BBD0 8000AFD0 2464FEF0 */  addiu      $a0, $v1, -0x110
/* BBD4 8000AFD4 288500FF */  slti       $a1, $a0, 0xFF
/* BBD8 8000AFD8 241900C8 */  addiu      $t9, $zero, 0xC8
/* BBDC 8000AFDC 240A00FF */  addiu      $t2, $zero, 0xFF
/* BBE0 8000AFE0 240B00C8 */  addiu      $t3, $zero, 0xC8
/* BBE4 8000AFE4 A20B0036 */  sb         $t3, 0x36($s0)
/* BBE8 8000AFE8 A20A0035 */  sb         $t2, 0x35($s0)
/* BBEC 8000AFEC 14A00002 */  bnez       $a1, .L8000AFF8
/* BBF0 8000AFF0 A2190034 */   sb        $t9, 0x34($s0)
/* BBF4 8000AFF4 240400FF */  addiu      $a0, $zero, 0xFF
.L8000AFF8:
/* BBF8 8000AFF8 960C0004 */  lhu        $t4, 0x4($s0)
/* BBFC 8000AFFC 240F00FF */  addiu      $t7, $zero, 0xFF
/* BC00 8000B000 01E44823 */  subu       $t1, $t7, $a0
/* BC04 8000B004 358D0010 */  ori        $t5, $t4, 0x10
/* BC08 8000B008 A60D0004 */  sh         $t5, 0x4($s0)
/* BC0C 8000B00C A2090037 */  sb         $t1, 0x37($s0)
.L8000B010:
/* BC10 8000B010 8FBF0024 */  lw         $ra, 0x24($sp)
/* BC14 8000B014 8FB00020 */  lw         $s0, 0x20($sp)
/* BC18 8000B018 27BD0088 */  addiu      $sp, $sp, 0x88
/* BC1C 8000B01C 03E00008 */  jr         $ra
/* BC20 8000B020 00000000 */   nop

glabel func_8000B024
/* BC24 8000B024 27BDFF80 */  addiu      $sp, $sp, -0x80
/* BC28 8000B028 AFBF001C */  sw         $ra, 0x1C($sp)
/* BC2C 8000B02C AFA40080 */  sw         $a0, 0x80($sp)
/* BC30 8000B030 AFA50084 */  sw         $a1, 0x84($sp)
/* BC34 8000B034 8CC20000 */  lw         $v0, 0x0($a2)
/* BC38 8000B038 3C018009 */  lui        $at, %hi(D_80095328)
/* BC3C 8000B03C D4285328 */  ldc1       $f8, %lo(D_80095328)($at)
/* BC40 8000B040 00027080 */  sll        $t6, $v0, 2
/* BC44 8000B044 448E2000 */  mtc1       $t6, $f4
/* BC48 8000B048 00000000 */  nop
/* BC4C 8000B04C 468021A1 */  cvt.d.w    $f6, $f4
/* BC50 8000B050 46283282 */  mul.d      $f10, $f6, $f8
/* BC54 8000B054 0C01AB20 */  jal        func_8006AC80
/* BC58 8000B058 46205320 */   cvt.s.d   $f12, $f10
/* BC5C 8000B05C 3C014348 */  lui        $at, (0x43480000 >> 16)
/* BC60 8000B060 44818000 */  mtc1       $at, $f16
/* BC64 8000B064 8FB80084 */  lw         $t8, 0x84($sp)
/* BC68 8000B068 27AF002C */  addiu      $t7, $sp, 0x2C
/* BC6C 8000B06C 46100082 */  mul.s      $f2, $f0, $f16
/* BC70 8000B070 E7A20038 */  swc1       $f2, 0x38($sp)
/* BC74 8000B074 8F010008 */  lw         $at, 0x8($t8)
/* BC78 8000B078 ADE10000 */  sw         $at, 0x0($t7)
/* BC7C 8000B07C 8F09000C */  lw         $t1, 0xC($t8)
/* BC80 8000B080 ADE90004 */  sw         $t1, 0x4($t7)
/* BC84 8000B084 8F010010 */  lw         $at, 0x10($t8)
/* BC88 8000B088 ADE10008 */  sw         $at, 0x8($t7)
/* BC8C 8000B08C C7B2002C */  lwc1       $f18, 0x2C($sp)
/* BC90 8000B090 3C018009 */  lui        $at, %hi(D_80095330)
/* BC94 8000B094 C42C5330 */  lwc1       $f12, %lo(D_80095330)($at)
/* BC98 8000B098 46029100 */  add.s      $f4, $f18, $f2
/* BC9C 8000B09C 0C019B54 */  jal        __sinf
/* BCA0 8000B0A0 E7A4002C */   swc1      $f4, 0x2C($sp)
/* BCA4 8000B0A4 C7A80038 */  lwc1       $f8, 0x38($sp)
/* BCA8 8000B0A8 C7A60034 */  lwc1       $f6, 0x34($sp)
/* BCAC 8000B0AC 8FA60084 */  lw         $a2, 0x84($sp)
/* BCB0 8000B0B0 46080282 */  mul.s      $f10, $f0, $f8
/* BCB4 8000B0B4 240A0004 */  addiu      $t2, $zero, 0x4
/* BCB8 8000B0B8 AFAA0010 */  sw         $t2, 0x10($sp)
/* BCBC 8000B0BC 27A4003C */  addiu      $a0, $sp, 0x3C
/* BCC0 8000B0C0 27A5002C */  addiu      $a1, $sp, 0x2C
/* BCC4 8000B0C4 00003825 */  or         $a3, $zero, $zero
/* BCC8 8000B0C8 24C60014 */  addiu      $a2, $a2, 0x14
/* BCCC 8000B0CC 460A3400 */  add.s      $f16, $f6, $f10
/* BCD0 8000B0D0 0C008347 */  jal        func_80020D1C
/* BCD4 8000B0D4 E7B00034 */   swc1      $f16, 0x34($sp)
/* BCD8 8000B0D8 8FA20080 */  lw         $v0, 0x80($sp)
/* BCDC 8000B0DC 27A4003C */  addiu      $a0, $sp, 0x3C
/* BCE0 8000B0E0 944B0004 */  lhu        $t3, 0x4($v0)
/* BCE4 8000B0E4 2445005C */  addiu      $a1, $v0, 0x5C
/* BCE8 8000B0E8 356C0002 */  ori        $t4, $t3, 0x2
/* BCEC 8000B0EC 0C00907C */  jal        func_800241F0
/* BCF0 8000B0F0 A44C0004 */   sh        $t4, 0x4($v0)
/* BCF4 8000B0F4 8FBF001C */  lw         $ra, 0x1C($sp)
/* BCF8 8000B0F8 27BD0080 */  addiu      $sp, $sp, 0x80
/* BCFC 8000B0FC 03E00008 */  jr         $ra
/* BD00 8000B100 00000000 */   nop

glabel func_8000B104
/* BD04 8000B104 27BDFF78 */  addiu      $sp, $sp, -0x88
/* BD08 8000B108 AFBF0024 */  sw         $ra, 0x24($sp)
/* BD0C 8000B10C AFB00020 */  sw         $s0, 0x20($sp)
/* BD10 8000B110 AFA5008C */  sw         $a1, 0x8C($sp)
/* BD14 8000B114 AFA60090 */  sw         $a2, 0x90($sp)
/* BD18 8000B118 8CC20000 */  lw         $v0, 0x0($a2)
/* BD1C 8000B11C 3C018009 */  lui        $at, %hi(D_80095338)
/* BD20 8000B120 D4285338 */  ldc1       $f8, %lo(D_80095338)($at)
/* BD24 8000B124 00027880 */  sll        $t7, $v0, 2
/* BD28 8000B128 448F2000 */  mtc1       $t7, $f4
/* BD2C 8000B12C 00808025 */  or         $s0, $a0, $zero
/* BD30 8000B130 468021A1 */  cvt.d.w    $f6, $f4
/* BD34 8000B134 46283282 */  mul.d      $f10, $f6, $f8
/* BD38 8000B138 0C01AB20 */  jal        func_8006AC80
/* BD3C 8000B13C 46205320 */   cvt.s.d   $f12, $f10
/* BD40 8000B140 3C014348 */  lui        $at, (0x43480000 >> 16)
/* BD44 8000B144 44818000 */  mtc1       $at, $f16
/* BD48 8000B148 8FB9008C */  lw         $t9, 0x8C($sp)
/* BD4C 8000B14C 27B80030 */  addiu      $t8, $sp, 0x30
/* BD50 8000B150 46100082 */  mul.s      $f2, $f0, $f16
/* BD54 8000B154 E7A2007C */  swc1       $f2, 0x7C($sp)
/* BD58 8000B158 8F210008 */  lw         $at, 0x8($t9)
/* BD5C 8000B15C AF010000 */  sw         $at, 0x0($t8)
/* BD60 8000B160 8F2A000C */  lw         $t2, 0xC($t9)
/* BD64 8000B164 AF0A0004 */  sw         $t2, 0x4($t8)
/* BD68 8000B168 8F210010 */  lw         $at, 0x10($t9)
/* BD6C 8000B16C AF010008 */  sw         $at, 0x8($t8)
/* BD70 8000B170 C7B20030 */  lwc1       $f18, 0x30($sp)
/* BD74 8000B174 3C018009 */  lui        $at, %hi(D_80095340)
/* BD78 8000B178 C42C5340 */  lwc1       $f12, %lo(D_80095340)($at)
/* BD7C 8000B17C 46029100 */  add.s      $f4, $f18, $f2
/* BD80 8000B180 0C019B54 */  jal        __sinf
/* BD84 8000B184 E7A40030 */   swc1      $f4, 0x30($sp)
/* BD88 8000B188 C7A8007C */  lwc1       $f8, 0x7C($sp)
/* BD8C 8000B18C C7A60038 */  lwc1       $f6, 0x38($sp)
/* BD90 8000B190 8FA6008C */  lw         $a2, 0x8C($sp)
/* BD94 8000B194 46080282 */  mul.s      $f10, $f0, $f8
/* BD98 8000B198 240B0004 */  addiu      $t3, $zero, 0x4
/* BD9C 8000B19C AFAB0010 */  sw         $t3, 0x10($sp)
/* BDA0 8000B1A0 27A4003C */  addiu      $a0, $sp, 0x3C
/* BDA4 8000B1A4 27A50030 */  addiu      $a1, $sp, 0x30
/* BDA8 8000B1A8 00003825 */  or         $a3, $zero, $zero
/* BDAC 8000B1AC 24C60014 */  addiu      $a2, $a2, 0x14
/* BDB0 8000B1B0 460A3400 */  add.s      $f16, $f6, $f10
/* BDB4 8000B1B4 0C008347 */  jal        func_80020D1C
/* BDB8 8000B1B8 E7B00038 */   swc1      $f16, 0x38($sp)
/* BDBC 8000B1BC 960C0004 */  lhu        $t4, 0x4($s0)
/* BDC0 8000B1C0 27A4003C */  addiu      $a0, $sp, 0x3C
/* BDC4 8000B1C4 2605005C */  addiu      $a1, $s0, 0x5C
/* BDC8 8000B1C8 358D0002 */  ori        $t5, $t4, 0x2
/* BDCC 8000B1CC 0C00907C */  jal        func_800241F0
/* BDD0 8000B1D0 A60D0004 */   sh        $t5, 0x4($s0)
/* BDD4 8000B1D4 8FAE0090 */  lw         $t6, 0x90($sp)
/* BDD8 8000B1D8 24010021 */  addiu      $at, $zero, 0x21
/* BDDC 8000B1DC 8DC20000 */  lw         $v0, 0x0($t6)
/* BDE0 8000B1E0 0041001B */  divu       $zero, $v0, $at
/* BDE4 8000B1E4 00007810 */  mfhi       $t7
/* BDE8 8000B1E8 01E01025 */  or         $v0, $t7, $zero
/* BDEC 8000B1EC 05E0000F */  bltz       $t7, .L8000B22C
/* BDF0 8000B1F0 29E10011 */   slti      $at, $t7, 0x11
/* BDF4 8000B1F4 1020000D */  beqz       $at, .L8000B22C
/* BDF8 8000B1F8 000F2100 */   sll       $a0, $t7, 4
/* BDFC 8000B1FC 288100FF */  slti       $at, $a0, 0xFF
/* BE00 8000B200 14200002 */  bnez       $at, .L8000B20C
/* BE04 8000B204 240300FF */   addiu     $v1, $zero, 0xFF
/* BE08 8000B208 240400FF */  addiu      $a0, $zero, 0xFF
.L8000B20C:
/* BE0C 8000B20C 96090004 */  lhu        $t1, 0x4($s0)
/* BE10 8000B210 241800C8 */  addiu      $t8, $zero, 0xC8
/* BE14 8000B214 A2180036 */  sb         $t8, 0x36($s0)
/* BE18 8000B218 35280010 */  ori        $t0, $t1, 0x10
/* BE1C 8000B21C A6080004 */  sh         $t0, 0x4($s0)
/* BE20 8000B220 A2030034 */  sb         $v1, 0x34($s0)
/* BE24 8000B224 A2030035 */  sb         $v1, 0x35($s0)
/* BE28 8000B228 A2040037 */  sb         $a0, 0x37($s0)
.L8000B22C:
/* BE2C 8000B22C 28410011 */  slti       $at, $v0, 0x11
/* BE30 8000B230 14200013 */  bnez       $at, .L8000B280
/* BE34 8000B234 28410022 */   slti      $at, $v0, 0x22
/* BE38 8000B238 10200011 */  beqz       $at, .L8000B280
/* BE3C 8000B23C 00021900 */   sll       $v1, $v0, 4
/* BE40 8000B240 2464FEF0 */  addiu      $a0, $v1, -0x110
/* BE44 8000B244 288500FF */  slti       $a1, $a0, 0xFF
/* BE48 8000B248 241900FF */  addiu      $t9, $zero, 0xFF
/* BE4C 8000B24C 240A00FF */  addiu      $t2, $zero, 0xFF
/* BE50 8000B250 240B00C8 */  addiu      $t3, $zero, 0xC8
/* BE54 8000B254 A20B0036 */  sb         $t3, 0x36($s0)
/* BE58 8000B258 A20A0035 */  sb         $t2, 0x35($s0)
/* BE5C 8000B25C 14A00002 */  bnez       $a1, .L8000B268
/* BE60 8000B260 A2190034 */   sb        $t9, 0x34($s0)
/* BE64 8000B264 240400FF */  addiu      $a0, $zero, 0xFF
.L8000B268:
/* BE68 8000B268 960C0004 */  lhu        $t4, 0x4($s0)
/* BE6C 8000B26C 240F00FF */  addiu      $t7, $zero, 0xFF
/* BE70 8000B270 01E44823 */  subu       $t1, $t7, $a0
/* BE74 8000B274 358D0010 */  ori        $t5, $t4, 0x10
/* BE78 8000B278 A60D0004 */  sh         $t5, 0x4($s0)
/* BE7C 8000B27C A2090037 */  sb         $t1, 0x37($s0)
.L8000B280:
/* BE80 8000B280 8FBF0024 */  lw         $ra, 0x24($sp)
/* BE84 8000B284 8FB00020 */  lw         $s0, 0x20($sp)
/* BE88 8000B288 27BD0088 */  addiu      $sp, $sp, 0x88
/* BE8C 8000B28C 03E00008 */  jr         $ra
/* BE90 8000B290 00000000 */   nop

glabel func_8000B294
/* BE94 8000B294 27BDFF80 */  addiu      $sp, $sp, -0x80
/* BE98 8000B298 AFBF0024 */  sw         $ra, 0x24($sp)
/* BE9C 8000B29C AFB00020 */  sw         $s0, 0x20($sp)
/* BEA0 8000B2A0 AFA50084 */  sw         $a1, 0x84($sp)
/* BEA4 8000B2A4 8CC20000 */  lw         $v0, 0x0($a2)
/* BEA8 8000B2A8 3C018009 */  lui        $at, %hi(D_80095348)
/* BEAC 8000B2AC D4285348 */  ldc1       $f8, %lo(D_80095348)($at)
/* BEB0 8000B2B0 44822000 */  mtc1       $v0, $f4
/* BEB4 8000B2B4 00808025 */  or         $s0, $a0, $zero
/* BEB8 8000B2B8 468021A1 */  cvt.d.w    $f6, $f4
/* BEBC 8000B2BC 46283282 */  mul.d      $f10, $f6, $f8
/* BEC0 8000B2C0 0C01AB20 */  jal        func_8006AC80
/* BEC4 8000B2C4 46205320 */   cvt.s.d   $f12, $f10
/* BEC8 8000B2C8 8FA20084 */  lw         $v0, 0x84($sp)
/* BECC 8000B2CC 27A5002C */  addiu      $a1, $sp, 0x2C
/* BED0 8000B2D0 44803000 */  mtc1       $zero, $f6
/* BED4 8000B2D4 8C410008 */  lw         $at, 0x8($v0)
/* BED8 8000B2D8 24190004 */  addiu      $t9, $zero, 0x4
/* BEDC 8000B2DC 27A40038 */  addiu      $a0, $sp, 0x38
/* BEE0 8000B2E0 ACA10000 */  sw         $at, 0x0($a1)
/* BEE4 8000B2E4 8C58000C */  lw         $t8, 0xC($v0)
/* BEE8 8000B2E8 00003825 */  or         $a3, $zero, $zero
/* BEEC 8000B2EC 24460014 */  addiu      $a2, $v0, 0x14
/* BEF0 8000B2F0 ACB80004 */  sw         $t8, 0x4($a1)
/* BEF4 8000B2F4 8C410010 */  lw         $at, 0x10($v0)
/* BEF8 8000B2F8 ACA10008 */  sw         $at, 0x8($a1)
/* BEFC 8000B2FC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BF00 8000B300 44818000 */  mtc1       $at, $f16
/* BF04 8000B304 3C01C049 */  lui        $at, (0xC0490000 >> 16)
/* BF08 8000B308 44813800 */  mtc1       $at, $f7
/* BF0C 8000B30C 46008481 */  sub.s      $f18, $f16, $f0
/* BF10 8000B310 C7AA002C */  lwc1       $f10, 0x2C($sp)
/* BF14 8000B314 AFB90010 */  sw         $t9, 0x10($sp)
/* BF18 8000B318 46009121 */  cvt.d.s    $f4, $f18
/* BF1C 8000B31C C7B20034 */  lwc1       $f18, 0x34($sp)
/* BF20 8000B320 46262202 */  mul.d      $f8, $f4, $f6
/* BF24 8000B324 462040A0 */  cvt.s.d    $f2, $f8
/* BF28 8000B328 46025400 */  add.s      $f16, $f10, $f2
/* BF2C 8000B32C 46029100 */  add.s      $f4, $f18, $f2
/* BF30 8000B330 E7B0002C */  swc1       $f16, 0x2C($sp)
/* BF34 8000B334 0C008347 */  jal        func_80020D1C
/* BF38 8000B338 E7A40034 */   swc1      $f4, 0x34($sp)
/* BF3C 8000B33C 96080004 */  lhu        $t0, 0x4($s0)
/* BF40 8000B340 27A40038 */  addiu      $a0, $sp, 0x38
/* BF44 8000B344 2605005C */  addiu      $a1, $s0, 0x5C
/* BF48 8000B348 35090002 */  ori        $t1, $t0, 0x2
/* BF4C 8000B34C 0C00907C */  jal        func_800241F0
/* BF50 8000B350 A6090004 */   sh        $t1, 0x4($s0)
/* BF54 8000B354 960A0004 */  lhu        $t2, 0x4($s0)
/* BF58 8000B358 240C0078 */  addiu      $t4, $zero, 0x78
/* BF5C 8000B35C A20C0037 */  sb         $t4, 0x37($s0)
/* BF60 8000B360 354B0010 */  ori        $t3, $t2, 0x10
/* BF64 8000B364 A60B0004 */  sh         $t3, 0x4($s0)
/* BF68 8000B368 A2000034 */  sb         $zero, 0x34($s0)
/* BF6C 8000B36C A2000035 */  sb         $zero, 0x35($s0)
/* BF70 8000B370 A2000036 */  sb         $zero, 0x36($s0)
/* BF74 8000B374 8FBF0024 */  lw         $ra, 0x24($sp)
/* BF78 8000B378 8FB00020 */  lw         $s0, 0x20($sp)
/* BF7C 8000B37C 27BD0080 */  addiu      $sp, $sp, 0x80
/* BF80 8000B380 03E00008 */  jr         $ra
/* BF84 8000B384 00000000 */   nop

glabel func_8000B388
/* BF88 8000B388 27BDFF80 */  addiu      $sp, $sp, -0x80
/* BF8C 8000B38C AFBF0024 */  sw         $ra, 0x24($sp)
/* BF90 8000B390 AFB00020 */  sw         $s0, 0x20($sp)
/* BF94 8000B394 AFA50084 */  sw         $a1, 0x84($sp)
/* BF98 8000B398 8CC20000 */  lw         $v0, 0x0($a2)
/* BF9C 8000B39C 3C018009 */  lui        $at, %hi(D_80095350)
/* BFA0 8000B3A0 D4285350 */  ldc1       $f8, %lo(D_80095350)($at)
/* BFA4 8000B3A4 2442FFD8 */  addiu      $v0, $v0, -0x28
/* BFA8 8000B3A8 44822000 */  mtc1       $v0, $f4
/* BFAC 8000B3AC 00808025 */  or         $s0, $a0, $zero
/* BFB0 8000B3B0 468021A1 */  cvt.d.w    $f6, $f4
/* BFB4 8000B3B4 46283282 */  mul.d      $f10, $f6, $f8
/* BFB8 8000B3B8 0C01AB20 */  jal        func_8006AC80
/* BFBC 8000B3BC 46205320 */   cvt.s.d   $f12, $f10
/* BFC0 8000B3C0 8FA20084 */  lw         $v0, 0x84($sp)
/* BFC4 8000B3C4 27A5002C */  addiu      $a1, $sp, 0x2C
/* BFC8 8000B3C8 44803000 */  mtc1       $zero, $f6
/* BFCC 8000B3CC 8C410008 */  lw         $at, 0x8($v0)
/* BFD0 8000B3D0 24190004 */  addiu      $t9, $zero, 0x4
/* BFD4 8000B3D4 27A40038 */  addiu      $a0, $sp, 0x38
/* BFD8 8000B3D8 ACA10000 */  sw         $at, 0x0($a1)
/* BFDC 8000B3DC 8C58000C */  lw         $t8, 0xC($v0)
/* BFE0 8000B3E0 00003825 */  or         $a3, $zero, $zero
/* BFE4 8000B3E4 24460014 */  addiu      $a2, $v0, 0x14
/* BFE8 8000B3E8 ACB80004 */  sw         $t8, 0x4($a1)
/* BFEC 8000B3EC 8C410010 */  lw         $at, 0x10($v0)
/* BFF0 8000B3F0 ACA10008 */  sw         $at, 0x8($a1)
/* BFF4 8000B3F4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* BFF8 8000B3F8 44818000 */  mtc1       $at, $f16
/* BFFC 8000B3FC 3C01C049 */  lui        $at, (0xC0490000 >> 16)
/* C000 8000B400 44813800 */  mtc1       $at, $f7
/* C004 8000B404 46008481 */  sub.s      $f18, $f16, $f0
/* C008 8000B408 C7AA002C */  lwc1       $f10, 0x2C($sp)
/* C00C 8000B40C AFB90010 */  sw         $t9, 0x10($sp)
/* C010 8000B410 46009121 */  cvt.d.s    $f4, $f18
/* C014 8000B414 C7B20034 */  lwc1       $f18, 0x34($sp)
/* C018 8000B418 46262202 */  mul.d      $f8, $f4, $f6
/* C01C 8000B41C 462040A0 */  cvt.s.d    $f2, $f8
/* C020 8000B420 46025400 */  add.s      $f16, $f10, $f2
/* C024 8000B424 46029100 */  add.s      $f4, $f18, $f2
/* C028 8000B428 E7B0002C */  swc1       $f16, 0x2C($sp)
/* C02C 8000B42C 0C008347 */  jal        func_80020D1C
/* C030 8000B430 E7A40034 */   swc1      $f4, 0x34($sp)
/* C034 8000B434 96080004 */  lhu        $t0, 0x4($s0)
/* C038 8000B438 27A40038 */  addiu      $a0, $sp, 0x38
/* C03C 8000B43C 2605005C */  addiu      $a1, $s0, 0x5C
/* C040 8000B440 35090002 */  ori        $t1, $t0, 0x2
/* C044 8000B444 0C00907C */  jal        func_800241F0
/* C048 8000B448 A6090004 */   sh        $t1, 0x4($s0)
/* C04C 8000B44C 960A0004 */  lhu        $t2, 0x4($s0)
/* C050 8000B450 240C0078 */  addiu      $t4, $zero, 0x78
/* C054 8000B454 A20C0037 */  sb         $t4, 0x37($s0)
/* C058 8000B458 354B0010 */  ori        $t3, $t2, 0x10
/* C05C 8000B45C A60B0004 */  sh         $t3, 0x4($s0)
/* C060 8000B460 A2000034 */  sb         $zero, 0x34($s0)
/* C064 8000B464 A2000035 */  sb         $zero, 0x35($s0)
/* C068 8000B468 A2000036 */  sb         $zero, 0x36($s0)
/* C06C 8000B46C 8FBF0024 */  lw         $ra, 0x24($sp)
/* C070 8000B470 8FB00020 */  lw         $s0, 0x20($sp)
/* C074 8000B474 27BD0080 */  addiu      $sp, $sp, 0x80
/* C078 8000B478 03E00008 */  jr         $ra
/* C07C 8000B47C 00000000 */   nop

glabel func_8000B480
/* C080 8000B480 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C084 8000B484 AFBF0024 */  sw         $ra, 0x24($sp)
/* C088 8000B488 AFB00020 */  sw         $s0, 0x20($sp)
/* C08C 8000B48C AFA50084 */  sw         $a1, 0x84($sp)
/* C090 8000B490 8CC20000 */  lw         $v0, 0x0($a2)
/* C094 8000B494 3C018009 */  lui        $at, %hi(D_80095358)
/* C098 8000B498 D4285358 */  ldc1       $f8, %lo(D_80095358)($at)
/* C09C 8000B49C 44822000 */  mtc1       $v0, $f4
/* C0A0 8000B4A0 00808025 */  or         $s0, $a0, $zero
/* C0A4 8000B4A4 468021A1 */  cvt.d.w    $f6, $f4
/* C0A8 8000B4A8 46283282 */  mul.d      $f10, $f6, $f8
/* C0AC 8000B4AC 0C01AB20 */  jal        func_8006AC80
/* C0B0 8000B4B0 46205320 */   cvt.s.d   $f12, $f10
/* C0B4 8000B4B4 8FA20084 */  lw         $v0, 0x84($sp)
/* C0B8 8000B4B8 27A5002C */  addiu      $a1, $sp, 0x2C
/* C0BC 8000B4BC 44803000 */  mtc1       $zero, $f6
/* C0C0 8000B4C0 8C410008 */  lw         $at, 0x8($v0)
/* C0C4 8000B4C4 24190004 */  addiu      $t9, $zero, 0x4
/* C0C8 8000B4C8 27A40038 */  addiu      $a0, $sp, 0x38
/* C0CC 8000B4CC ACA10000 */  sw         $at, 0x0($a1)
/* C0D0 8000B4D0 8C58000C */  lw         $t8, 0xC($v0)
/* C0D4 8000B4D4 00003825 */  or         $a3, $zero, $zero
/* C0D8 8000B4D8 24460014 */  addiu      $a2, $v0, 0x14
/* C0DC 8000B4DC ACB80004 */  sw         $t8, 0x4($a1)
/* C0E0 8000B4E0 8C410010 */  lw         $at, 0x10($v0)
/* C0E4 8000B4E4 ACA10008 */  sw         $at, 0x8($a1)
/* C0E8 8000B4E8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C0EC 8000B4EC 44818000 */  mtc1       $at, $f16
/* C0F0 8000B4F0 3C01C049 */  lui        $at, (0xC0490000 >> 16)
/* C0F4 8000B4F4 44813800 */  mtc1       $at, $f7
/* C0F8 8000B4F8 46008481 */  sub.s      $f18, $f16, $f0
/* C0FC 8000B4FC C7AA002C */  lwc1       $f10, 0x2C($sp)
/* C100 8000B500 AFB90010 */  sw         $t9, 0x10($sp)
/* C104 8000B504 46009121 */  cvt.d.s    $f4, $f18
/* C108 8000B508 C7B20034 */  lwc1       $f18, 0x34($sp)
/* C10C 8000B50C 46262202 */  mul.d      $f8, $f4, $f6
/* C110 8000B510 462040A0 */  cvt.s.d    $f2, $f8
/* C114 8000B514 46025401 */  sub.s      $f16, $f10, $f2
/* C118 8000B518 46029101 */  sub.s      $f4, $f18, $f2
/* C11C 8000B51C E7B0002C */  swc1       $f16, 0x2C($sp)
/* C120 8000B520 0C008347 */  jal        func_80020D1C
/* C124 8000B524 E7A40034 */   swc1      $f4, 0x34($sp)
/* C128 8000B528 96080004 */  lhu        $t0, 0x4($s0)
/* C12C 8000B52C 27A40038 */  addiu      $a0, $sp, 0x38
/* C130 8000B530 2605005C */  addiu      $a1, $s0, 0x5C
/* C134 8000B534 35090002 */  ori        $t1, $t0, 0x2
/* C138 8000B538 0C00907C */  jal        func_800241F0
/* C13C 8000B53C A6090004 */   sh        $t1, 0x4($s0)
/* C140 8000B540 960A0004 */  lhu        $t2, 0x4($s0)
/* C144 8000B544 240C0078 */  addiu      $t4, $zero, 0x78
/* C148 8000B548 A20C0037 */  sb         $t4, 0x37($s0)
/* C14C 8000B54C 354B0010 */  ori        $t3, $t2, 0x10
/* C150 8000B550 A60B0004 */  sh         $t3, 0x4($s0)
/* C154 8000B554 A2000034 */  sb         $zero, 0x34($s0)
/* C158 8000B558 A2000035 */  sb         $zero, 0x35($s0)
/* C15C 8000B55C A2000036 */  sb         $zero, 0x36($s0)
/* C160 8000B560 8FBF0024 */  lw         $ra, 0x24($sp)
/* C164 8000B564 8FB00020 */  lw         $s0, 0x20($sp)
/* C168 8000B568 27BD0080 */  addiu      $sp, $sp, 0x80
/* C16C 8000B56C 03E00008 */  jr         $ra
/* C170 8000B570 00000000 */   nop

glabel func_8000B574
/* C174 8000B574 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C178 8000B578 AFBF0024 */  sw         $ra, 0x24($sp)
/* C17C 8000B57C AFB00020 */  sw         $s0, 0x20($sp)
/* C180 8000B580 AFA50084 */  sw         $a1, 0x84($sp)
/* C184 8000B584 8CC20000 */  lw         $v0, 0x0($a2)
/* C188 8000B588 3C018009 */  lui        $at, %hi(D_80095360)
/* C18C 8000B58C D4285360 */  ldc1       $f8, %lo(D_80095360)($at)
/* C190 8000B590 2442FFD8 */  addiu      $v0, $v0, -0x28
/* C194 8000B594 44822000 */  mtc1       $v0, $f4
/* C198 8000B598 00808025 */  or         $s0, $a0, $zero
/* C19C 8000B59C 468021A1 */  cvt.d.w    $f6, $f4
/* C1A0 8000B5A0 46283282 */  mul.d      $f10, $f6, $f8
/* C1A4 8000B5A4 0C01AB20 */  jal        func_8006AC80
/* C1A8 8000B5A8 46205320 */   cvt.s.d   $f12, $f10
/* C1AC 8000B5AC 8FA20084 */  lw         $v0, 0x84($sp)
/* C1B0 8000B5B0 27A5002C */  addiu      $a1, $sp, 0x2C
/* C1B4 8000B5B4 44803000 */  mtc1       $zero, $f6
/* C1B8 8000B5B8 8C410008 */  lw         $at, 0x8($v0)
/* C1BC 8000B5BC 24190004 */  addiu      $t9, $zero, 0x4
/* C1C0 8000B5C0 27A40038 */  addiu      $a0, $sp, 0x38
/* C1C4 8000B5C4 ACA10000 */  sw         $at, 0x0($a1)
/* C1C8 8000B5C8 8C58000C */  lw         $t8, 0xC($v0)
/* C1CC 8000B5CC 00003825 */  or         $a3, $zero, $zero
/* C1D0 8000B5D0 24460014 */  addiu      $a2, $v0, 0x14
/* C1D4 8000B5D4 ACB80004 */  sw         $t8, 0x4($a1)
/* C1D8 8000B5D8 8C410010 */  lw         $at, 0x10($v0)
/* C1DC 8000B5DC ACA10008 */  sw         $at, 0x8($a1)
/* C1E0 8000B5E0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C1E4 8000B5E4 44818000 */  mtc1       $at, $f16
/* C1E8 8000B5E8 3C01C049 */  lui        $at, (0xC0490000 >> 16)
/* C1EC 8000B5EC 44813800 */  mtc1       $at, $f7
/* C1F0 8000B5F0 46008481 */  sub.s      $f18, $f16, $f0
/* C1F4 8000B5F4 C7AA002C */  lwc1       $f10, 0x2C($sp)
/* C1F8 8000B5F8 AFB90010 */  sw         $t9, 0x10($sp)
/* C1FC 8000B5FC 46009121 */  cvt.d.s    $f4, $f18
/* C200 8000B600 C7B20034 */  lwc1       $f18, 0x34($sp)
/* C204 8000B604 46262202 */  mul.d      $f8, $f4, $f6
/* C208 8000B608 462040A0 */  cvt.s.d    $f2, $f8
/* C20C 8000B60C 46025401 */  sub.s      $f16, $f10, $f2
/* C210 8000B610 46029101 */  sub.s      $f4, $f18, $f2
/* C214 8000B614 E7B0002C */  swc1       $f16, 0x2C($sp)
/* C218 8000B618 0C008347 */  jal        func_80020D1C
/* C21C 8000B61C E7A40034 */   swc1      $f4, 0x34($sp)
/* C220 8000B620 96080004 */  lhu        $t0, 0x4($s0)
/* C224 8000B624 27A40038 */  addiu      $a0, $sp, 0x38
/* C228 8000B628 2605005C */  addiu      $a1, $s0, 0x5C
/* C22C 8000B62C 35090002 */  ori        $t1, $t0, 0x2
/* C230 8000B630 0C00907C */  jal        func_800241F0
/* C234 8000B634 A6090004 */   sh        $t1, 0x4($s0)
/* C238 8000B638 960A0004 */  lhu        $t2, 0x4($s0)
/* C23C 8000B63C 240C0078 */  addiu      $t4, $zero, 0x78
/* C240 8000B640 A20C0037 */  sb         $t4, 0x37($s0)
/* C244 8000B644 354B0010 */  ori        $t3, $t2, 0x10
/* C248 8000B648 A60B0004 */  sh         $t3, 0x4($s0)
/* C24C 8000B64C A2000034 */  sb         $zero, 0x34($s0)
/* C250 8000B650 A2000035 */  sb         $zero, 0x35($s0)
/* C254 8000B654 A2000036 */  sb         $zero, 0x36($s0)
/* C258 8000B658 8FBF0024 */  lw         $ra, 0x24($sp)
/* C25C 8000B65C 8FB00020 */  lw         $s0, 0x20($sp)
/* C260 8000B660 27BD0080 */  addiu      $sp, $sp, 0x80
/* C264 8000B664 03E00008 */  jr         $ra
/* C268 8000B668 00000000 */   nop

glabel func_8000B66C
/* C26C 8000B66C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C270 8000B670 AFBF0024 */  sw         $ra, 0x24($sp)
/* C274 8000B674 AFB00020 */  sw         $s0, 0x20($sp)
/* C278 8000B678 AFA50084 */  sw         $a1, 0x84($sp)
/* C27C 8000B67C 8CC20000 */  lw         $v0, 0x0($a2)
/* C280 8000B680 3C018009 */  lui        $at, %hi(D_80095368)
/* C284 8000B684 D4285368 */  ldc1       $f8, %lo(D_80095368)($at)
/* C288 8000B688 2442FFB0 */  addiu      $v0, $v0, -0x50
/* C28C 8000B68C 44822000 */  mtc1       $v0, $f4
/* C290 8000B690 00808025 */  or         $s0, $a0, $zero
/* C294 8000B694 468021A1 */  cvt.d.w    $f6, $f4
/* C298 8000B698 46283282 */  mul.d      $f10, $f6, $f8
/* C29C 8000B69C 0C01AB20 */  jal        func_8006AC80
/* C2A0 8000B6A0 46205320 */   cvt.s.d   $f12, $f10
/* C2A4 8000B6A4 8FA20084 */  lw         $v0, 0x84($sp)
/* C2A8 8000B6A8 27A5002C */  addiu      $a1, $sp, 0x2C
/* C2AC 8000B6AC 44803000 */  mtc1       $zero, $f6
/* C2B0 8000B6B0 8C410008 */  lw         $at, 0x8($v0)
/* C2B4 8000B6B4 24190004 */  addiu      $t9, $zero, 0x4
/* C2B8 8000B6B8 27A40038 */  addiu      $a0, $sp, 0x38
/* C2BC 8000B6BC ACA10000 */  sw         $at, 0x0($a1)
/* C2C0 8000B6C0 8C58000C */  lw         $t8, 0xC($v0)
/* C2C4 8000B6C4 00003825 */  or         $a3, $zero, $zero
/* C2C8 8000B6C8 24460014 */  addiu      $a2, $v0, 0x14
/* C2CC 8000B6CC ACB80004 */  sw         $t8, 0x4($a1)
/* C2D0 8000B6D0 8C410010 */  lw         $at, 0x10($v0)
/* C2D4 8000B6D4 ACA10008 */  sw         $at, 0x8($a1)
/* C2D8 8000B6D8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C2DC 8000B6DC 44818000 */  mtc1       $at, $f16
/* C2E0 8000B6E0 3C01C049 */  lui        $at, (0xC0490000 >> 16)
/* C2E4 8000B6E4 44813800 */  mtc1       $at, $f7
/* C2E8 8000B6E8 46008481 */  sub.s      $f18, $f16, $f0
/* C2EC 8000B6EC C7AA002C */  lwc1       $f10, 0x2C($sp)
/* C2F0 8000B6F0 AFB90010 */  sw         $t9, 0x10($sp)
/* C2F4 8000B6F4 46009121 */  cvt.d.s    $f4, $f18
/* C2F8 8000B6F8 C7B20034 */  lwc1       $f18, 0x34($sp)
/* C2FC 8000B6FC 46262202 */  mul.d      $f8, $f4, $f6
/* C300 8000B700 462040A0 */  cvt.s.d    $f2, $f8
/* C304 8000B704 46025400 */  add.s      $f16, $f10, $f2
/* C308 8000B708 46029100 */  add.s      $f4, $f18, $f2
/* C30C 8000B70C E7B0002C */  swc1       $f16, 0x2C($sp)
/* C310 8000B710 0C008347 */  jal        func_80020D1C
/* C314 8000B714 E7A40034 */   swc1      $f4, 0x34($sp)
/* C318 8000B718 96080004 */  lhu        $t0, 0x4($s0)
/* C31C 8000B71C 27A40038 */  addiu      $a0, $sp, 0x38
/* C320 8000B720 2605005C */  addiu      $a1, $s0, 0x5C
/* C324 8000B724 35090002 */  ori        $t1, $t0, 0x2
/* C328 8000B728 0C00907C */  jal        func_800241F0
/* C32C 8000B72C A6090004 */   sh        $t1, 0x4($s0)
/* C330 8000B730 960A0004 */  lhu        $t2, 0x4($s0)
/* C334 8000B734 240C0078 */  addiu      $t4, $zero, 0x78
/* C338 8000B738 A20C0037 */  sb         $t4, 0x37($s0)
/* C33C 8000B73C 354B0010 */  ori        $t3, $t2, 0x10
/* C340 8000B740 A60B0004 */  sh         $t3, 0x4($s0)
/* C344 8000B744 A2000034 */  sb         $zero, 0x34($s0)
/* C348 8000B748 A2000035 */  sb         $zero, 0x35($s0)
/* C34C 8000B74C A2000036 */  sb         $zero, 0x36($s0)
/* C350 8000B750 8FBF0024 */  lw         $ra, 0x24($sp)
/* C354 8000B754 8FB00020 */  lw         $s0, 0x20($sp)
/* C358 8000B758 27BD0080 */  addiu      $sp, $sp, 0x80
/* C35C 8000B75C 03E00008 */  jr         $ra
/* C360 8000B760 00000000 */   nop

glabel func_8000B764
/* C364 8000B764 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C368 8000B768 AFBF0024 */  sw         $ra, 0x24($sp)
/* C36C 8000B76C AFB00020 */  sw         $s0, 0x20($sp)
/* C370 8000B770 AFA50084 */  sw         $a1, 0x84($sp)
/* C374 8000B774 8CC20000 */  lw         $v0, 0x0($a2)
/* C378 8000B778 3C018009 */  lui        $at, %hi(D_80095370)
/* C37C 8000B77C D4285370 */  ldc1       $f8, %lo(D_80095370)($at)
/* C380 8000B780 2442FF88 */  addiu      $v0, $v0, -0x78
/* C384 8000B784 44822000 */  mtc1       $v0, $f4
/* C388 8000B788 00808025 */  or         $s0, $a0, $zero
/* C38C 8000B78C 468021A1 */  cvt.d.w    $f6, $f4
/* C390 8000B790 46283282 */  mul.d      $f10, $f6, $f8
/* C394 8000B794 0C01AB20 */  jal        func_8006AC80
/* C398 8000B798 46205320 */   cvt.s.d   $f12, $f10
/* C39C 8000B79C 8FA20084 */  lw         $v0, 0x84($sp)
/* C3A0 8000B7A0 27A5002C */  addiu      $a1, $sp, 0x2C
/* C3A4 8000B7A4 44803000 */  mtc1       $zero, $f6
/* C3A8 8000B7A8 8C410008 */  lw         $at, 0x8($v0)
/* C3AC 8000B7AC 24190004 */  addiu      $t9, $zero, 0x4
/* C3B0 8000B7B0 27A40038 */  addiu      $a0, $sp, 0x38
/* C3B4 8000B7B4 ACA10000 */  sw         $at, 0x0($a1)
/* C3B8 8000B7B8 8C58000C */  lw         $t8, 0xC($v0)
/* C3BC 8000B7BC 00003825 */  or         $a3, $zero, $zero
/* C3C0 8000B7C0 24460014 */  addiu      $a2, $v0, 0x14
/* C3C4 8000B7C4 ACB80004 */  sw         $t8, 0x4($a1)
/* C3C8 8000B7C8 8C410010 */  lw         $at, 0x10($v0)
/* C3CC 8000B7CC ACA10008 */  sw         $at, 0x8($a1)
/* C3D0 8000B7D0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C3D4 8000B7D4 44818000 */  mtc1       $at, $f16
/* C3D8 8000B7D8 3C01C049 */  lui        $at, (0xC0490000 >> 16)
/* C3DC 8000B7DC 44813800 */  mtc1       $at, $f7
/* C3E0 8000B7E0 46008481 */  sub.s      $f18, $f16, $f0
/* C3E4 8000B7E4 C7AA002C */  lwc1       $f10, 0x2C($sp)
/* C3E8 8000B7E8 AFB90010 */  sw         $t9, 0x10($sp)
/* C3EC 8000B7EC 46009121 */  cvt.d.s    $f4, $f18
/* C3F0 8000B7F0 C7B20034 */  lwc1       $f18, 0x34($sp)
/* C3F4 8000B7F4 46262202 */  mul.d      $f8, $f4, $f6
/* C3F8 8000B7F8 462040A0 */  cvt.s.d    $f2, $f8
/* C3FC 8000B7FC 46025400 */  add.s      $f16, $f10, $f2
/* C400 8000B800 46029100 */  add.s      $f4, $f18, $f2
/* C404 8000B804 E7B0002C */  swc1       $f16, 0x2C($sp)
/* C408 8000B808 0C008347 */  jal        func_80020D1C
/* C40C 8000B80C E7A40034 */   swc1      $f4, 0x34($sp)
/* C410 8000B810 96080004 */  lhu        $t0, 0x4($s0)
/* C414 8000B814 27A40038 */  addiu      $a0, $sp, 0x38
/* C418 8000B818 2605005C */  addiu      $a1, $s0, 0x5C
/* C41C 8000B81C 35090002 */  ori        $t1, $t0, 0x2
/* C420 8000B820 0C00907C */  jal        func_800241F0
/* C424 8000B824 A6090004 */   sh        $t1, 0x4($s0)
/* C428 8000B828 960A0004 */  lhu        $t2, 0x4($s0)
/* C42C 8000B82C 240C0078 */  addiu      $t4, $zero, 0x78
/* C430 8000B830 A20C0037 */  sb         $t4, 0x37($s0)
/* C434 8000B834 354B0010 */  ori        $t3, $t2, 0x10
/* C438 8000B838 A60B0004 */  sh         $t3, 0x4($s0)
/* C43C 8000B83C A2000034 */  sb         $zero, 0x34($s0)
/* C440 8000B840 A2000035 */  sb         $zero, 0x35($s0)
/* C444 8000B844 A2000036 */  sb         $zero, 0x36($s0)
/* C448 8000B848 8FBF0024 */  lw         $ra, 0x24($sp)
/* C44C 8000B84C 8FB00020 */  lw         $s0, 0x20($sp)
/* C450 8000B850 27BD0080 */  addiu      $sp, $sp, 0x80
/* C454 8000B854 03E00008 */  jr         $ra
/* C458 8000B858 00000000 */   nop

glabel func_8000B85C
/* C45C 8000B85C 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C460 8000B860 AFBF0024 */  sw         $ra, 0x24($sp)
/* C464 8000B864 AFB00020 */  sw         $s0, 0x20($sp)
/* C468 8000B868 AFA50084 */  sw         $a1, 0x84($sp)
/* C46C 8000B86C 8CC20000 */  lw         $v0, 0x0($a2)
/* C470 8000B870 3C018009 */  lui        $at, %hi(D_80095378)
/* C474 8000B874 D4285378 */  ldc1       $f8, %lo(D_80095378)($at)
/* C478 8000B878 2442FFB0 */  addiu      $v0, $v0, -0x50
/* C47C 8000B87C 44822000 */  mtc1       $v0, $f4
/* C480 8000B880 00808025 */  or         $s0, $a0, $zero
/* C484 8000B884 468021A1 */  cvt.d.w    $f6, $f4
/* C488 8000B888 46283282 */  mul.d      $f10, $f6, $f8
/* C48C 8000B88C 0C01AB20 */  jal        func_8006AC80
/* C490 8000B890 46205320 */   cvt.s.d   $f12, $f10
/* C494 8000B894 8FA20084 */  lw         $v0, 0x84($sp)
/* C498 8000B898 27A5002C */  addiu      $a1, $sp, 0x2C
/* C49C 8000B89C 44803000 */  mtc1       $zero, $f6
/* C4A0 8000B8A0 8C410008 */  lw         $at, 0x8($v0)
/* C4A4 8000B8A4 24190004 */  addiu      $t9, $zero, 0x4
/* C4A8 8000B8A8 27A40038 */  addiu      $a0, $sp, 0x38
/* C4AC 8000B8AC ACA10000 */  sw         $at, 0x0($a1)
/* C4B0 8000B8B0 8C58000C */  lw         $t8, 0xC($v0)
/* C4B4 8000B8B4 00003825 */  or         $a3, $zero, $zero
/* C4B8 8000B8B8 24460014 */  addiu      $a2, $v0, 0x14
/* C4BC 8000B8BC ACB80004 */  sw         $t8, 0x4($a1)
/* C4C0 8000B8C0 8C410010 */  lw         $at, 0x10($v0)
/* C4C4 8000B8C4 ACA10008 */  sw         $at, 0x8($a1)
/* C4C8 8000B8C8 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C4CC 8000B8CC 44818000 */  mtc1       $at, $f16
/* C4D0 8000B8D0 3C01C049 */  lui        $at, (0xC0490000 >> 16)
/* C4D4 8000B8D4 44813800 */  mtc1       $at, $f7
/* C4D8 8000B8D8 46008481 */  sub.s      $f18, $f16, $f0
/* C4DC 8000B8DC C7AA002C */  lwc1       $f10, 0x2C($sp)
/* C4E0 8000B8E0 AFB90010 */  sw         $t9, 0x10($sp)
/* C4E4 8000B8E4 46009121 */  cvt.d.s    $f4, $f18
/* C4E8 8000B8E8 C7B20034 */  lwc1       $f18, 0x34($sp)
/* C4EC 8000B8EC 46262202 */  mul.d      $f8, $f4, $f6
/* C4F0 8000B8F0 462040A0 */  cvt.s.d    $f2, $f8
/* C4F4 8000B8F4 46025401 */  sub.s      $f16, $f10, $f2
/* C4F8 8000B8F8 46029101 */  sub.s      $f4, $f18, $f2
/* C4FC 8000B8FC E7B0002C */  swc1       $f16, 0x2C($sp)
/* C500 8000B900 0C008347 */  jal        func_80020D1C
/* C504 8000B904 E7A40034 */   swc1      $f4, 0x34($sp)
/* C508 8000B908 96080004 */  lhu        $t0, 0x4($s0)
/* C50C 8000B90C 27A40038 */  addiu      $a0, $sp, 0x38
/* C510 8000B910 2605005C */  addiu      $a1, $s0, 0x5C
/* C514 8000B914 35090002 */  ori        $t1, $t0, 0x2
/* C518 8000B918 0C00907C */  jal        func_800241F0
/* C51C 8000B91C A6090004 */   sh        $t1, 0x4($s0)
/* C520 8000B920 960A0004 */  lhu        $t2, 0x4($s0)
/* C524 8000B924 240C0078 */  addiu      $t4, $zero, 0x78
/* C528 8000B928 A20C0037 */  sb         $t4, 0x37($s0)
/* C52C 8000B92C 354B0010 */  ori        $t3, $t2, 0x10
/* C530 8000B930 A60B0004 */  sh         $t3, 0x4($s0)
/* C534 8000B934 A2000034 */  sb         $zero, 0x34($s0)
/* C538 8000B938 A2000035 */  sb         $zero, 0x35($s0)
/* C53C 8000B93C A2000036 */  sb         $zero, 0x36($s0)
/* C540 8000B940 8FBF0024 */  lw         $ra, 0x24($sp)
/* C544 8000B944 8FB00020 */  lw         $s0, 0x20($sp)
/* C548 8000B948 27BD0080 */  addiu      $sp, $sp, 0x80
/* C54C 8000B94C 03E00008 */  jr         $ra
/* C550 8000B950 00000000 */   nop

glabel func_8000B954
/* C554 8000B954 27BDFF80 */  addiu      $sp, $sp, -0x80
/* C558 8000B958 AFBF0024 */  sw         $ra, 0x24($sp)
/* C55C 8000B95C AFB00020 */  sw         $s0, 0x20($sp)
/* C560 8000B960 AFA50084 */  sw         $a1, 0x84($sp)
/* C564 8000B964 8CC20000 */  lw         $v0, 0x0($a2)
/* C568 8000B968 3C018009 */  lui        $at, %hi(D_80095380)
/* C56C 8000B96C D4285380 */  ldc1       $f8, %lo(D_80095380)($at)
/* C570 8000B970 2442FF88 */  addiu      $v0, $v0, -0x78
/* C574 8000B974 44822000 */  mtc1       $v0, $f4
/* C578 8000B978 00808025 */  or         $s0, $a0, $zero
/* C57C 8000B97C 468021A1 */  cvt.d.w    $f6, $f4
/* C580 8000B980 46283282 */  mul.d      $f10, $f6, $f8
/* C584 8000B984 0C01AB20 */  jal        func_8006AC80
/* C588 8000B988 46205320 */   cvt.s.d   $f12, $f10
/* C58C 8000B98C 8FA20084 */  lw         $v0, 0x84($sp)
/* C590 8000B990 27A5002C */  addiu      $a1, $sp, 0x2C
/* C594 8000B994 44803000 */  mtc1       $zero, $f6
/* C598 8000B998 8C410008 */  lw         $at, 0x8($v0)
/* C59C 8000B99C 24190004 */  addiu      $t9, $zero, 0x4
/* C5A0 8000B9A0 27A40038 */  addiu      $a0, $sp, 0x38
/* C5A4 8000B9A4 ACA10000 */  sw         $at, 0x0($a1)
/* C5A8 8000B9A8 8C58000C */  lw         $t8, 0xC($v0)
/* C5AC 8000B9AC 00003825 */  or         $a3, $zero, $zero
/* C5B0 8000B9B0 24460014 */  addiu      $a2, $v0, 0x14
/* C5B4 8000B9B4 ACB80004 */  sw         $t8, 0x4($a1)
/* C5B8 8000B9B8 8C410010 */  lw         $at, 0x10($v0)
/* C5BC 8000B9BC ACA10008 */  sw         $at, 0x8($a1)
/* C5C0 8000B9C0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C5C4 8000B9C4 44818000 */  mtc1       $at, $f16
/* C5C8 8000B9C8 3C01C049 */  lui        $at, (0xC0490000 >> 16)
/* C5CC 8000B9CC 44813800 */  mtc1       $at, $f7
/* C5D0 8000B9D0 46008481 */  sub.s      $f18, $f16, $f0
/* C5D4 8000B9D4 C7AA002C */  lwc1       $f10, 0x2C($sp)
/* C5D8 8000B9D8 AFB90010 */  sw         $t9, 0x10($sp)
/* C5DC 8000B9DC 46009121 */  cvt.d.s    $f4, $f18
/* C5E0 8000B9E0 C7B20034 */  lwc1       $f18, 0x34($sp)
/* C5E4 8000B9E4 46262202 */  mul.d      $f8, $f4, $f6
/* C5E8 8000B9E8 462040A0 */  cvt.s.d    $f2, $f8
/* C5EC 8000B9EC 46025401 */  sub.s      $f16, $f10, $f2
/* C5F0 8000B9F0 46029101 */  sub.s      $f4, $f18, $f2
/* C5F4 8000B9F4 E7B0002C */  swc1       $f16, 0x2C($sp)
/* C5F8 8000B9F8 0C008347 */  jal        func_80020D1C
/* C5FC 8000B9FC E7A40034 */   swc1      $f4, 0x34($sp)
/* C600 8000BA00 96080004 */  lhu        $t0, 0x4($s0)
/* C604 8000BA04 27A40038 */  addiu      $a0, $sp, 0x38
/* C608 8000BA08 2605005C */  addiu      $a1, $s0, 0x5C
/* C60C 8000BA0C 35090002 */  ori        $t1, $t0, 0x2
/* C610 8000BA10 0C00907C */  jal        func_800241F0
/* C614 8000BA14 A6090004 */   sh        $t1, 0x4($s0)
/* C618 8000BA18 960A0004 */  lhu        $t2, 0x4($s0)
/* C61C 8000BA1C 240C0078 */  addiu      $t4, $zero, 0x78
/* C620 8000BA20 A20C0037 */  sb         $t4, 0x37($s0)
/* C624 8000BA24 354B0010 */  ori        $t3, $t2, 0x10
/* C628 8000BA28 A60B0004 */  sh         $t3, 0x4($s0)
/* C62C 8000BA2C A2000034 */  sb         $zero, 0x34($s0)
/* C630 8000BA30 A2000035 */  sb         $zero, 0x35($s0)
/* C634 8000BA34 A2000036 */  sb         $zero, 0x36($s0)
/* C638 8000BA38 8FBF0024 */  lw         $ra, 0x24($sp)
/* C63C 8000BA3C 8FB00020 */  lw         $s0, 0x20($sp)
/* C640 8000BA40 27BD0080 */  addiu      $sp, $sp, 0x80
/* C644 8000BA44 03E00008 */  jr         $ra
/* C648 8000BA48 00000000 */   nop

glabel func_8000BA4C
/* C64C 8000BA4C 27BDFF88 */  addiu      $sp, $sp, -0x78
/* C650 8000BA50 AFBF001C */  sw         $ra, 0x1C($sp)
/* C654 8000BA54 AFA40078 */  sw         $a0, 0x78($sp)
/* C658 8000BA58 AFA5007C */  sw         $a1, 0x7C($sp)
/* C65C 8000BA5C 8CC20000 */  lw         $v0, 0x0($a2)
/* C660 8000BA60 24010078 */  addiu      $at, $zero, 0x78
/* C664 8000BA64 2442FFC4 */  addiu      $v0, $v0, -0x3C
/* C668 8000BA68 0041001A */  div        $zero, $v0, $at
/* C66C 8000BA6C 00001010 */  mfhi       $v0
/* C670 8000BA70 44822000 */  mtc1       $v0, $f4
/* C674 8000BA74 3C018009 */  lui        $at, %hi(D_80095388)
/* C678 8000BA78 D4285388 */  ldc1       $f8, %lo(D_80095388)($at)
/* C67C 8000BA7C 468021A1 */  cvt.d.w    $f6, $f4
/* C680 8000BA80 46283282 */  mul.d      $f10, $f6, $f8
/* C684 8000BA84 0C01AB20 */  jal        func_8006AC80
/* C688 8000BA88 46205320 */   cvt.s.d   $f12, $f10
/* C68C 8000BA8C 8FA2007C */  lw         $v0, 0x7C($sp)
/* C690 8000BA90 27A60024 */  addiu      $a2, $sp, 0x24
/* C694 8000BA94 44803000 */  mtc1       $zero, $f6
/* C698 8000BA98 8C410014 */  lw         $at, 0x14($v0)
/* C69C 8000BA9C 24080004 */  addiu      $t0, $zero, 0x4
/* C6A0 8000BAA0 27A40034 */  addiu      $a0, $sp, 0x34
/* C6A4 8000BAA4 ACC10000 */  sw         $at, 0x0($a2)
/* C6A8 8000BAA8 8C590018 */  lw         $t9, 0x18($v0)
/* C6AC 8000BAAC 00003825 */  or         $a3, $zero, $zero
/* C6B0 8000BAB0 24450008 */  addiu      $a1, $v0, 0x8
/* C6B4 8000BAB4 ACD90004 */  sw         $t9, 0x4($a2)
/* C6B8 8000BAB8 8C41001C */  lw         $at, 0x1C($v0)
/* C6BC 8000BABC ACC10008 */  sw         $at, 0x8($a2)
/* C6C0 8000BAC0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* C6C4 8000BAC4 44818000 */  mtc1       $at, $f16
/* C6C8 8000BAC8 3C01C020 */  lui        $at, (0xC0200000 >> 16)
/* C6CC 8000BACC 44813800 */  mtc1       $at, $f7
/* C6D0 8000BAD0 46008481 */  sub.s      $f18, $f16, $f0
/* C6D4 8000BAD4 3C014014 */  lui        $at, (0x40140000 >> 16)
/* C6D8 8000BAD8 44819800 */  mtc1       $at, $f19
/* C6DC 8000BADC AFA80010 */  sw         $t0, 0x10($sp)
/* C6E0 8000BAE0 46009121 */  cvt.d.s    $f4, $f18
/* C6E4 8000BAE4 44809000 */  mtc1       $zero, $f18
/* C6E8 8000BAE8 46262202 */  mul.d      $f8, $f4, $f6
/* C6EC 8000BAEC C7A60024 */  lwc1       $f6, 0x24($sp)
/* C6F0 8000BAF0 462042A0 */  cvt.s.d    $f10, $f8
/* C6F4 8000BAF4 46003221 */  cvt.d.s    $f8, $f6
/* C6F8 8000BAF8 46005421 */  cvt.d.s    $f16, $f10
/* C6FC 8000BAFC 46328100 */  add.d      $f4, $f16, $f18
/* C700 8000BB00 46244280 */  add.d      $f10, $f8, $f4
/* C704 8000BB04 46205420 */  cvt.s.d    $f16, $f10
/* C708 8000BB08 0C008347 */  jal        func_80020D1C
/* C70C 8000BB0C E7B00024 */   swc1      $f16, 0x24($sp)
/* C710 8000BB10 8FA20078 */  lw         $v0, 0x78($sp)
/* C714 8000BB14 27A40034 */  addiu      $a0, $sp, 0x34
/* C718 8000BB18 94490004 */  lhu        $t1, 0x4($v0)
/* C71C 8000BB1C 2445005C */  addiu      $a1, $v0, 0x5C
/* C720 8000BB20 352A0002 */  ori        $t2, $t1, 0x2
/* C724 8000BB24 0C00907C */  jal        func_800241F0
/* C728 8000BB28 A44A0004 */   sh        $t2, 0x4($v0)
/* C72C 8000BB2C 8FBF001C */  lw         $ra, 0x1C($sp)
/* C730 8000BB30 27BD0078 */  addiu      $sp, $sp, 0x78
/* C734 8000BB34 03E00008 */  jr         $ra
/* C738 8000BB38 00000000 */   nop

glabel func_8000BB3C
/* C73C 8000BB3C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* C740 8000BB40 AFB10020 */  sw         $s1, 0x20($sp)
/* C744 8000BB44 AFB0001C */  sw         $s0, 0x1C($sp)
/* C748 8000BB48 00808025 */  or         $s0, $a0, $zero
/* C74C 8000BB4C 00A08825 */  or         $s1, $a1, $zero
/* C750 8000BB50 AFBF0024 */  sw         $ra, 0x24($sp)
/* C754 8000BB54 AFA60070 */  sw         $a2, 0x70($sp)
/* C758 8000BB58 240E0004 */  addiu      $t6, $zero, 0x4
/* C75C 8000BB5C AFAE0010 */  sw         $t6, 0x10($sp)
/* C760 8000BB60 26260014 */  addiu      $a2, $s1, 0x14
/* C764 8000BB64 24A50008 */  addiu      $a1, $a1, 0x8
/* C768 8000BB68 27A40028 */  addiu      $a0, $sp, 0x28
/* C76C 8000BB6C 0C008347 */  jal        func_80020D1C
/* C770 8000BB70 00003825 */   or        $a3, $zero, $zero
/* C774 8000BB74 960F0004 */  lhu        $t7, 0x4($s0)
/* C778 8000BB78 27A40028 */  addiu      $a0, $sp, 0x28
/* C77C 8000BB7C 2605005C */  addiu      $a1, $s0, 0x5C
/* C780 8000BB80 35F80002 */  ori        $t8, $t7, 0x2
/* C784 8000BB84 0C00907C */  jal        func_800241F0
/* C788 8000BB88 A6180004 */   sh        $t8, 0x4($s0)
/* C78C 8000BB8C 96190004 */  lhu        $t9, 0x4($s0)
/* C790 8000BB90 3C028008 */  lui        $v0, %hi(D_80081FE0)
/* C794 8000BB94 24421FE0 */  addiu      $v0, $v0, %lo(D_80081FE0)
/* C798 8000BB98 37280010 */  ori        $t0, $t9, 0x10
/* C79C 8000BB9C A6080004 */  sh         $t0, 0x4($s0)
/* C7A0 8000BBA0 86290024 */  lh         $t1, 0x24($s1)
/* C7A4 8000BBA4 00095080 */  sll        $t2, $t1, 2
/* C7A8 8000BBA8 004A5821 */  addu       $t3, $v0, $t2
/* C7AC 8000BBAC 916C0000 */  lbu        $t4, 0x0($t3)
/* C7B0 8000BBB0 A20C0034 */  sb         $t4, 0x34($s0)
/* C7B4 8000BBB4 862D0024 */  lh         $t5, 0x24($s1)
/* C7B8 8000BBB8 000D7080 */  sll        $t6, $t5, 2
/* C7BC 8000BBBC 004E7821 */  addu       $t7, $v0, $t6
/* C7C0 8000BBC0 91F80001 */  lbu        $t8, 0x1($t7)
/* C7C4 8000BBC4 A2180035 */  sb         $t8, 0x35($s0)
/* C7C8 8000BBC8 86390024 */  lh         $t9, 0x24($s1)
/* C7CC 8000BBCC 00194080 */  sll        $t0, $t9, 2
/* C7D0 8000BBD0 00484821 */  addu       $t1, $v0, $t0
/* C7D4 8000BBD4 912A0002 */  lbu        $t2, 0x2($t1)
/* C7D8 8000BBD8 A20A0036 */  sb         $t2, 0x36($s0)
/* C7DC 8000BBDC 862B0024 */  lh         $t3, 0x24($s1)
/* C7E0 8000BBE0 000B6080 */  sll        $t4, $t3, 2
/* C7E4 8000BBE4 004C6821 */  addu       $t5, $v0, $t4
/* C7E8 8000BBE8 91AE0003 */  lbu        $t6, 0x3($t5)
/* C7EC 8000BBEC A20E0037 */  sb         $t6, 0x37($s0)
/* C7F0 8000BBF0 8FBF0024 */  lw         $ra, 0x24($sp)
/* C7F4 8000BBF4 8FB10020 */  lw         $s1, 0x20($sp)
/* C7F8 8000BBF8 8FB0001C */  lw         $s0, 0x1C($sp)
/* C7FC 8000BBFC 03E00008 */  jr         $ra
/* C800 8000BC00 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8000BC04
/* C804 8000BC04 27BDFF90 */  addiu      $sp, $sp, -0x70
/* C808 8000BC08 AFBF0024 */  sw         $ra, 0x24($sp)
/* C80C 8000BC0C AFB00020 */  sw         $s0, 0x20($sp)
/* C810 8000BC10 AFA50074 */  sw         $a1, 0x74($sp)
/* C814 8000BC14 8CC30000 */  lw         $v1, 0x0($a2)
/* C818 8000BC18 00808025 */  or         $s0, $a0, $zero
/* C81C 8000BC1C 240C00FF */  addiu      $t4, $zero, 0xFF
/* C820 8000BC20 306E001F */  andi       $t6, $v1, 0x1F
/* C824 8000BC24 29C10010 */  slti       $at, $t6, 0x10
/* C828 8000BC28 14200003 */  bnez       $at, .L8000BC38
/* C82C 8000BC2C 01C01825 */   or        $v1, $t6, $zero
/* C830 8000BC30 240F001F */  addiu      $t7, $zero, 0x1F
/* C834 8000BC34 01EE1823 */  subu       $v1, $t7, $t6
.L8000BC38:
/* C838 8000BC38 96180004 */  lhu        $t8, 0x4($s0)
/* C83C 8000BC3C 00034080 */  sll        $t0, $v1, 2
/* C840 8000BC40 25090082 */  addiu      $t1, $t0, 0x82
/* C844 8000BC44 250A00A5 */  addiu      $t2, $t0, 0xA5
/* C848 8000BC48 250B00AA */  addiu      $t3, $t0, 0xAA
/* C84C 8000BC4C 37190010 */  ori        $t9, $t8, 0x10
/* C850 8000BC50 A6190004 */  sh         $t9, 0x4($s0)
/* C854 8000BC54 A20B0036 */  sb         $t3, 0x36($s0)
/* C858 8000BC58 A20A0035 */  sb         $t2, 0x35($s0)
/* C85C 8000BC5C A2090034 */  sb         $t1, 0x34($s0)
/* C860 8000BC60 A20C0037 */  sb         $t4, 0x37($s0)
/* C864 8000BC64 8FAD0074 */  lw         $t5, 0x74($sp)
/* C868 8000BC68 240E0004 */  addiu      $t6, $zero, 0x4
/* C86C 8000BC6C AFAE0010 */  sw         $t6, 0x10($sp)
/* C870 8000BC70 27A4002C */  addiu      $a0, $sp, 0x2C
/* C874 8000BC74 00003825 */  or         $a3, $zero, $zero
/* C878 8000BC78 25A50008 */  addiu      $a1, $t5, 0x8
/* C87C 8000BC7C 0C008347 */  jal        func_80020D1C
/* C880 8000BC80 25A60014 */   addiu     $a2, $t5, 0x14
/* C884 8000BC84 960F0004 */  lhu        $t7, 0x4($s0)
/* C888 8000BC88 27A4002C */  addiu      $a0, $sp, 0x2C
/* C88C 8000BC8C 2605005C */  addiu      $a1, $s0, 0x5C
/* C890 8000BC90 35F80002 */  ori        $t8, $t7, 0x2
/* C894 8000BC94 0C00907C */  jal        func_800241F0
/* C898 8000BC98 A6180004 */   sh        $t8, 0x4($s0)
/* C89C 8000BC9C 8FBF0024 */  lw         $ra, 0x24($sp)
/* C8A0 8000BCA0 8FB00020 */  lw         $s0, 0x20($sp)
/* C8A4 8000BCA4 27BD0070 */  addiu      $sp, $sp, 0x70
/* C8A8 8000BCA8 03E00008 */  jr         $ra
/* C8AC 8000BCAC 00000000 */   nop

glabel func_8000BCB0
/* C8B0 8000BCB0 27BDFF30 */  addiu      $sp, $sp, -0xD0
/* C8B4 8000BCB4 AFBF0024 */  sw         $ra, 0x24($sp)
/* C8B8 8000BCB8 AFB00020 */  sw         $s0, 0x20($sp)
/* C8BC 8000BCBC AFA500D4 */  sw         $a1, 0xD4($sp)
/* C8C0 8000BCC0 8CC50000 */  lw         $a1, 0x0($a2)
/* C8C4 8000BCC4 3C018009 */  lui        $at, %hi(D_80095390)
/* C8C8 8000BCC8 C4205390 */  lwc1       $f0, %lo(D_80095390)($at)
/* C8CC 8000BCCC 30B9007F */  andi       $t9, $a1, 0x7F
/* C8D0 8000BCD0 3327000F */  andi       $a3, $t9, 0xF
/* C8D4 8000BCD4 00808025 */  or         $s0, $a0, $zero
/* C8D8 8000BCD8 03202825 */  or         $a1, $t9, $zero
/* C8DC 8000BCDC E4800058 */  swc1       $f0, 0x58($a0)
/* C8E0 8000BCE0 E4800054 */  swc1       $f0, 0x54($a0)
/* C8E4 8000BCE4 14E00015 */  bnez       $a3, .L8000BD3C
/* C8E8 8000BCE8 E4800050 */   swc1      $f0, 0x50($a0)
/* C8EC 8000BCEC 00194103 */  sra        $t0, $t9, 4
/* C8F0 8000BCF0 00084880 */  sll        $t1, $t0, 2
/* C8F4 8000BCF4 01284823 */  subu       $t1, $t1, $t0
/* C8F8 8000BCF8 3C0A8008 */  lui        $t2, %hi(D_80081FEC)
/* C8FC 8000BCFC 254A1FEC */  addiu      $t2, $t2, %lo(D_80081FEC)
/* C900 8000BD00 000948C0 */  sll        $t1, $t1, 3
/* C904 8000BD04 012A1021 */  addu       $v0, $t1, $t2
/* C908 8000BD08 C44A0000 */  lwc1       $f10, 0x0($v0)
/* C90C 8000BD0C E7AA0084 */  swc1       $f10, 0x84($sp)
/* C910 8000BD10 C4460004 */  lwc1       $f6, 0x4($v0)
/* C914 8000BD14 E7A60088 */  swc1       $f6, 0x88($sp)
/* C918 8000BD18 C4480008 */  lwc1       $f8, 0x8($v0)
/* C91C 8000BD1C E7A8008C */  swc1       $f8, 0x8C($sp)
/* C920 8000BD20 C444000C */  lwc1       $f4, 0xC($v0)
/* C924 8000BD24 E7A40078 */  swc1       $f4, 0x78($sp)
/* C928 8000BD28 C44A0010 */  lwc1       $f10, 0x10($v0)
/* C92C 8000BD2C E7AA007C */  swc1       $f10, 0x7C($sp)
/* C930 8000BD30 C4460014 */  lwc1       $f6, 0x14($v0)
/* C934 8000BD34 1000004F */  b          .L8000BE74
/* C938 8000BD38 E7A60080 */   swc1      $f6, 0x80($sp)
.L8000BD3C:
/* C93C 8000BD3C 00055903 */  sra        $t3, $a1, 4
/* C940 8000BD40 000B6080 */  sll        $t4, $t3, 2
/* C944 8000BD44 018B6023 */  subu       $t4, $t4, $t3
/* C948 8000BD48 3C0D8008 */  lui        $t5, %hi(D_80081FEC)
/* C94C 8000BD4C 25AD1FEC */  addiu      $t5, $t5, %lo(D_80081FEC)
/* C950 8000BD50 000C60C0 */  sll        $t4, $t4, 3
/* C954 8000BD54 018D1021 */  addu       $v0, $t4, $t5
/* C958 8000BD58 24430018 */  addiu      $v1, $v0, 0x18
/* C95C 8000BD5C C4680000 */  lwc1       $f8, 0x0($v1)
/* C960 8000BD60 C44C0000 */  lwc1       $f12, 0x0($v0)
/* C964 8000BD64 3C013FB0 */  lui        $at, (0x3FB00000 >> 16)
/* C968 8000BD68 44810800 */  mtc1       $at, $f1
/* C96C 8000BD6C 460C4101 */  sub.s      $f4, $f8, $f12
/* C970 8000BD70 44800000 */  mtc1       $zero, $f0
/* C974 8000BD74 C4680004 */  lwc1       $f8, 0x4($v1)
/* C978 8000BD78 460022A1 */  cvt.d.s    $f10, $f4
/* C97C 8000BD7C C4440004 */  lwc1       $f4, 0x4($v0)
/* C980 8000BD80 46205182 */  mul.d      $f6, $f10, $f0
/* C984 8000BD84 46044281 */  sub.s      $f10, $f8, $f4
/* C988 8000BD88 C4640008 */  lwc1       $f4, 0x8($v1)
/* C98C 8000BD8C 462033A0 */  cvt.s.d    $f14, $f6
/* C990 8000BD90 460051A1 */  cvt.d.s    $f6, $f10
/* C994 8000BD94 C44A0008 */  lwc1       $f10, 0x8($v0)
/* C998 8000BD98 46203202 */  mul.d      $f8, $f6, $f0
/* C99C 8000BD9C 460A2181 */  sub.s      $f6, $f4, $f10
/* C9A0 8000BDA0 C46A000C */  lwc1       $f10, 0xC($v1)
/* C9A4 8000BDA4 46204420 */  cvt.s.d    $f16, $f8
/* C9A8 8000BDA8 46003221 */  cvt.d.s    $f8, $f6
/* C9AC 8000BDAC C446000C */  lwc1       $f6, 0xC($v0)
/* C9B0 8000BDB0 46204102 */  mul.d      $f4, $f8, $f0
/* C9B4 8000BDB4 46065201 */  sub.s      $f8, $f10, $f6
/* C9B8 8000BDB8 462024A0 */  cvt.s.d    $f18, $f4
/* C9BC 8000BDBC 46004121 */  cvt.d.s    $f4, $f8
/* C9C0 8000BDC0 46202282 */  mul.d      $f10, $f4, $f0
/* C9C4 8000BDC4 462051A0 */  cvt.s.d    $f6, $f10
/* C9C8 8000BDC8 E7A60068 */  swc1       $f6, 0x68($sp)
/* C9CC 8000BDCC C4440010 */  lwc1       $f4, 0x10($v0)
/* C9D0 8000BDD0 C4680010 */  lwc1       $f8, 0x10($v1)
/* C9D4 8000BDD4 46044281 */  sub.s      $f10, $f8, $f4
/* C9D8 8000BDD8 46005221 */  cvt.d.s    $f8, $f10
/* C9DC 8000BDDC 46204102 */  mul.d      $f4, $f8, $f0
/* C9E0 8000BDE0 462022A0 */  cvt.s.d    $f10, $f4
/* C9E4 8000BDE4 E7AA0064 */  swc1       $f10, 0x64($sp)
/* C9E8 8000BDE8 C4440014 */  lwc1       $f4, 0x14($v0)
/* C9EC 8000BDEC C4680014 */  lwc1       $f8, 0x14($v1)
/* C9F0 8000BDF0 46044201 */  sub.s      $f8, $f8, $f4
/* C9F4 8000BDF4 46004121 */  cvt.d.s    $f4, $f8
/* C9F8 8000BDF8 46202202 */  mul.d      $f8, $f4, $f0
/* C9FC 8000BDFC 46204120 */  cvt.s.d    $f4, $f8
/* CA00 8000BE00 44874000 */  mtc1       $a3, $f8
/* CA04 8000BE04 00000000 */  nop
/* CA08 8000BE08 468040A0 */  cvt.s.w    $f2, $f8
/* CA0C 8000BE0C E7A40060 */  swc1       $f4, 0x60($sp)
/* CA10 8000BE10 46027202 */  mul.s      $f8, $f14, $f2
/* CA14 8000BE14 46086200 */  add.s      $f8, $f12, $f8
/* CA18 8000BE18 E7A80084 */  swc1       $f8, 0x84($sp)
/* CA1C 8000BE1C C4480004 */  lwc1       $f8, 0x4($v0)
/* CA20 8000BE20 E7A60028 */  swc1       $f6, 0x28($sp)
/* CA24 8000BE24 46028182 */  mul.s      $f6, $f16, $f2
/* CA28 8000BE28 46064200 */  add.s      $f8, $f8, $f6
/* CA2C 8000BE2C E7A80088 */  swc1       $f8, 0x88($sp)
/* CA30 8000BE30 46029202 */  mul.s      $f8, $f18, $f2
/* CA34 8000BE34 C4460008 */  lwc1       $f6, 0x8($v0)
/* CA38 8000BE38 46083180 */  add.s      $f6, $f6, $f8
/* CA3C 8000BE3C C7A80028 */  lwc1       $f8, 0x28($sp)
/* CA40 8000BE40 E7A6008C */  swc1       $f6, 0x8C($sp)
/* CA44 8000BE44 46024182 */  mul.s      $f6, $f8, $f2
/* CA48 8000BE48 C448000C */  lwc1       $f8, 0xC($v0)
/* CA4C 8000BE4C 46064200 */  add.s      $f8, $f8, $f6
/* CA50 8000BE50 46025182 */  mul.s      $f6, $f10, $f2
/* CA54 8000BE54 E7A80078 */  swc1       $f8, 0x78($sp)
/* CA58 8000BE58 C4480010 */  lwc1       $f8, 0x10($v0)
/* CA5C 8000BE5C 46064280 */  add.s      $f10, $f8, $f6
/* CA60 8000BE60 46022202 */  mul.s      $f8, $f4, $f2
/* CA64 8000BE64 E7AA007C */  swc1       $f10, 0x7C($sp)
/* CA68 8000BE68 C4460014 */  lwc1       $f6, 0x14($v0)
/* CA6C 8000BE6C 46083280 */  add.s      $f10, $f6, $f8
/* CA70 8000BE70 E7AA0080 */  swc1       $f10, 0x80($sp)
.L8000BE74:
/* CA74 8000BE74 240E0004 */  addiu      $t6, $zero, 0x4
/* CA78 8000BE78 AFAE0010 */  sw         $t6, 0x10($sp)
/* CA7C 8000BE7C 27A40090 */  addiu      $a0, $sp, 0x90
/* CA80 8000BE80 27A50084 */  addiu      $a1, $sp, 0x84
/* CA84 8000BE84 27A60078 */  addiu      $a2, $sp, 0x78
/* CA88 8000BE88 0C008347 */  jal        func_80020D1C
/* CA8C 8000BE8C 26070050 */   addiu     $a3, $s0, 0x50
/* CA90 8000BE90 960F0004 */  lhu        $t7, 0x4($s0)
/* CA94 8000BE94 27A40090 */  addiu      $a0, $sp, 0x90
/* CA98 8000BE98 2605005C */  addiu      $a1, $s0, 0x5C
/* CA9C 8000BE9C 35F80002 */  ori        $t8, $t7, 0x2
/* CAA0 8000BEA0 0C00907C */  jal        func_800241F0
/* CAA4 8000BEA4 A6180004 */   sh        $t8, 0x4($s0)
/* CAA8 8000BEA8 96190004 */  lhu        $t9, 0x4($s0)
/* CAAC 8000BEAC 24090078 */  addiu      $t1, $zero, 0x78
/* CAB0 8000BEB0 A2090037 */  sb         $t1, 0x37($s0)
/* CAB4 8000BEB4 37280010 */  ori        $t0, $t9, 0x10
/* CAB8 8000BEB8 A6080004 */  sh         $t0, 0x4($s0)
/* CABC 8000BEBC A2000034 */  sb         $zero, 0x34($s0)
/* CAC0 8000BEC0 A2000035 */  sb         $zero, 0x35($s0)
/* CAC4 8000BEC4 A2000036 */  sb         $zero, 0x36($s0)
/* CAC8 8000BEC8 8FBF0024 */  lw         $ra, 0x24($sp)
/* CACC 8000BECC 8FB00020 */  lw         $s0, 0x20($sp)
/* CAD0 8000BED0 27BD00D0 */  addiu      $sp, $sp, 0xD0
/* CAD4 8000BED4 03E00008 */  jr         $ra
/* CAD8 8000BED8 00000000 */   nop

glabel func_8000BEDC
/* CADC 8000BEDC 27BDFF90 */  addiu      $sp, $sp, -0x70
/* CAE0 8000BEE0 AFBF0024 */  sw         $ra, 0x24($sp)
/* CAE4 8000BEE4 AFB00020 */  sw         $s0, 0x20($sp)
/* CAE8 8000BEE8 AFA50074 */  sw         $a1, 0x74($sp)
/* CAEC 8000BEEC AFA60078 */  sw         $a2, 0x78($sp)
/* CAF0 8000BEF0 8CCF0000 */  lw         $t7, 0x0($a2)
/* CAF4 8000BEF4 00808025 */  or         $s0, $a0, $zero
/* CAF8 8000BEF8 00A04025 */  or         $t0, $a1, $zero
/* CAFC 8000BEFC 31F8007F */  andi       $t8, $t7, 0x7F
/* CB00 8000BF00 0018C842 */  srl        $t9, $t8, 1
/* CB04 8000BF04 24090004 */  addiu      $t1, $zero, 0x4
/* CB08 8000BF08 AFB9002C */  sw         $t9, 0x2C($sp)
/* CB0C 8000BF0C AFA90010 */  sw         $t1, 0x10($sp)
/* CB10 8000BF10 25060014 */  addiu      $a2, $t0, 0x14
/* CB14 8000BF14 24A50008 */  addiu      $a1, $a1, 0x8
/* CB18 8000BF18 27A40030 */  addiu      $a0, $sp, 0x30
/* CB1C 8000BF1C 0C008347 */  jal        func_80020D1C
/* CB20 8000BF20 00003825 */   or        $a3, $zero, $zero
/* CB24 8000BF24 960A0004 */  lhu        $t2, 0x4($s0)
/* CB28 8000BF28 27A40030 */  addiu      $a0, $sp, 0x30
/* CB2C 8000BF2C 2605005C */  addiu      $a1, $s0, 0x5C
/* CB30 8000BF30 354B0002 */  ori        $t3, $t2, 0x2
/* CB34 8000BF34 0C00907C */  jal        func_800241F0
/* CB38 8000BF38 A60B0004 */   sh        $t3, 0x4($s0)
/* CB3C 8000BF3C 8FA3002C */  lw         $v1, 0x2C($sp)
/* CB40 8000BF40 960C0006 */  lhu        $t4, 0x6($s0)
/* CB44 8000BF44 960A0004 */  lhu        $t2, 0x4($s0)
/* CB48 8000BF48 3C0E8037 */  lui        $t6, %hi(D_80370E10)
/* CB4C 8000BF4C 25CE0E10 */  addiu      $t6, $t6, %lo(D_80370E10)
/* CB50 8000BF50 3C088037 */  lui        $t0, %hi(D_80377D18)
/* CB54 8000BF54 25087D18 */  addiu      $t0, $t0, %lo(D_80377D18)
/* CB58 8000BF58 AE0E000C */  sw         $t6, 0xC($s0)
/* CB5C 8000BF5C AE080018 */  sw         $t0, 0x18($s0)
/* CB60 8000BF60 24180020 */  addiu      $t8, $zero, 0x20
/* CB64 8000BF64 240200FF */  addiu      $v0, $zero, 0xFF
/* CB68 8000BF68 358D8040 */  ori        $t5, $t4, 0x8040
/* CB6C 8000BF6C 354E0020 */  ori        $t6, $t2, 0x20
/* CB70 8000BF70 A6180014 */  sh         $t8, 0x14($s0)
/* CB74 8000BF74 24190040 */  addiu      $t9, $zero, 0x40
/* CB78 8000BF78 24090001 */  addiu      $t1, $zero, 0x1
/* CB7C 8000BF7C 35C80040 */  ori        $t0, $t6, 0x40
/* CB80 8000BF80 A60D0006 */  sh         $t5, 0x6($s0)
/* CB84 8000BF84 AE09001C */  sw         $t1, 0x1C($s0)
/* CB88 8000BF88 A6190016 */  sh         $t9, 0x16($s0)
/* CB8C 8000BF8C A60E0004 */  sh         $t6, 0x4($s0)
/* CB90 8000BF90 2478000F */  addiu      $t8, $v1, 0xF
/* CB94 8000BF94 240F0003 */  addiu      $t7, $zero, 0x3
/* CB98 8000BF98 240D0020 */  addiu      $t5, $zero, 0x20
/* CB9C 8000BF9C 240C0040 */  addiu      $t4, $zero, 0x40
/* CBA0 8000BFA0 3319001F */  andi       $t9, $t8, 0x1F
/* CBA4 8000BFA4 A6080004 */  sh         $t0, 0x4($s0)
/* CBA8 8000BFA8 35090010 */  ori        $t1, $t0, 0x10
/* CBAC 8000BFAC AE0F0010 */  sw         $t7, 0x10($s0)
/* CBB0 8000BFB0 A2000021 */  sb         $zero, 0x21($s0)
/* CBB4 8000BFB4 A2000020 */  sb         $zero, 0x20($s0)
/* CBB8 8000BFB8 A60C0030 */  sh         $t4, 0x30($s0)
/* CBBC 8000BFBC A60D0032 */  sh         $t5, 0x32($s0)
/* CBC0 8000BFC0 A600002A */  sh         $zero, 0x2A($s0)
/* CBC4 8000BFC4 A6000026 */  sh         $zero, 0x26($s0)
/* CBC8 8000BFC8 A6000024 */  sh         $zero, 0x24($s0)
/* CBCC 8000BFCC A619002E */  sh         $t9, 0x2E($s0)
/* CBD0 8000BFD0 A600002C */  sh         $zero, 0x2C($s0)
/* CBD4 8000BFD4 A6090004 */  sh         $t1, 0x4($s0)
/* CBD8 8000BFD8 A2020034 */  sb         $v0, 0x34($s0)
/* CBDC 8000BFDC A2020035 */  sb         $v0, 0x35($s0)
/* CBE0 8000BFE0 A2020036 */  sb         $v0, 0x36($s0)
/* CBE4 8000BFE4 A2020037 */  sb         $v0, 0x37($s0)
/* CBE8 8000BFE8 A6030028 */  sh         $v1, 0x28($s0)
/* CBEC 8000BFEC 8FBF0024 */  lw         $ra, 0x24($sp)
/* CBF0 8000BFF0 8FB00020 */  lw         $s0, 0x20($sp)
/* CBF4 8000BFF4 27BD0070 */  addiu      $sp, $sp, 0x70
/* CBF8 8000BFF8 03E00008 */  jr         $ra
/* CBFC 8000BFFC 00000000 */   nop

glabel func_8000C000
/* CC00 8000C000 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC04 8000C004 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC08 8000C008 0C002744 */  jal        func_80009D10
/* CC0C 8000C00C 00000000 */   nop
/* CC10 8000C010 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC14 8000C014 27BD0018 */  addiu      $sp, $sp, 0x18
/* CC18 8000C018 03E00008 */  jr         $ra
/* CC1C 8000C01C 00000000 */   nop

glabel func_8000C020
/* CC20 8000C020 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC24 8000C024 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC28 8000C028 0C002744 */  jal        func_80009D10
/* CC2C 8000C02C 00000000 */   nop
/* CC30 8000C030 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC34 8000C034 27BD0018 */  addiu      $sp, $sp, 0x18
/* CC38 8000C038 03E00008 */  jr         $ra
/* CC3C 8000C03C 00000000 */   nop

glabel func_8000C040
/* CC40 8000C040 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC44 8000C044 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC48 8000C048 0C002744 */  jal        func_80009D10
/* CC4C 8000C04C 00000000 */   nop
/* CC50 8000C050 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC54 8000C054 27BD0018 */  addiu      $sp, $sp, 0x18
/* CC58 8000C058 03E00008 */  jr         $ra
/* CC5C 8000C05C 00000000 */   nop

glabel func_8000C060
/* CC60 8000C060 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC64 8000C064 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC68 8000C068 0C002744 */  jal        func_80009D10
/* CC6C 8000C06C 00000000 */   nop
/* CC70 8000C070 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC74 8000C074 27BD0018 */  addiu      $sp, $sp, 0x18
/* CC78 8000C078 03E00008 */  jr         $ra
/* CC7C 8000C07C 00000000 */   nop

glabel func_8000C080
/* CC80 8000C080 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CC84 8000C084 AFBF0014 */  sw         $ra, 0x14($sp)
/* CC88 8000C088 0C002744 */  jal        func_80009D10
/* CC8C 8000C08C 00000000 */   nop
/* CC90 8000C090 8FBF0014 */  lw         $ra, 0x14($sp)
/* CC94 8000C094 27BD0018 */  addiu      $sp, $sp, 0x18
/* CC98 8000C098 03E00008 */  jr         $ra
/* CC9C 8000C09C 00000000 */   nop

glabel func_8000C0A0
/* CCA0 8000C0A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CCA4 8000C0A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CCA8 8000C0A8 0C002744 */  jal        func_80009D10
/* CCAC 8000C0AC 00000000 */   nop
/* CCB0 8000C0B0 8FBF0014 */  lw         $ra, 0x14($sp)
/* CCB4 8000C0B4 27BD0018 */  addiu      $sp, $sp, 0x18
/* CCB8 8000C0B8 03E00008 */  jr         $ra
/* CCBC 8000C0BC 00000000 */   nop

glabel func_8000C0C0
/* CCC0 8000C0C0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CCC4 8000C0C4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CCC8 8000C0C8 0C002744 */  jal        func_80009D10
/* CCCC 8000C0CC 00000000 */   nop
/* CCD0 8000C0D0 8FBF0014 */  lw         $ra, 0x14($sp)
/* CCD4 8000C0D4 27BD0018 */  addiu      $sp, $sp, 0x18
/* CCD8 8000C0D8 03E00008 */  jr         $ra
/* CCDC 8000C0DC 00000000 */   nop

glabel func_8000C0E0
/* CCE0 8000C0E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CCE4 8000C0E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* CCE8 8000C0E8 0C002744 */  jal        func_80009D10
/* CCEC 8000C0EC 00000000 */   nop
/* CCF0 8000C0F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* CCF4 8000C0F4 27BD0018 */  addiu      $sp, $sp, 0x18
/* CCF8 8000C0F8 03E00008 */  jr         $ra
/* CCFC 8000C0FC 00000000 */   nop

glabel func_8000C100
/* CD00 8000C100 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD04 8000C104 AFBF0014 */  sw         $ra, 0x14($sp)
/* CD08 8000C108 0C002744 */  jal        func_80009D10
/* CD0C 8000C10C 00000000 */   nop
/* CD10 8000C110 8FBF0014 */  lw         $ra, 0x14($sp)
/* CD14 8000C114 27BD0018 */  addiu      $sp, $sp, 0x18
/* CD18 8000C118 03E00008 */  jr         $ra
/* CD1C 8000C11C 00000000 */   nop

glabel func_8000C120
/* CD20 8000C120 27BDFF90 */  addiu      $sp, $sp, -0x70
/* CD24 8000C124 AFBF001C */  sw         $ra, 0x1C($sp)
/* CD28 8000C128 AFA40070 */  sw         $a0, 0x70($sp)
/* CD2C 8000C12C AFA50074 */  sw         $a1, 0x74($sp)
/* CD30 8000C130 AFA60078 */  sw         $a2, 0x78($sp)
/* CD34 8000C134 8CA10014 */  lw         $at, 0x14($a1)
/* CD38 8000C138 27A60024 */  addiu      $a2, $sp, 0x24
/* CD3C 8000C13C ACC10000 */  sw         $at, 0x0($a2)
/* CD40 8000C140 8CB90018 */  lw         $t9, 0x18($a1)
/* CD44 8000C144 ACD90004 */  sw         $t9, 0x4($a2)
/* CD48 8000C148 8CA1001C */  lw         $at, 0x1C($a1)
/* CD4C 8000C14C ACC10008 */  sw         $at, 0x8($a2)
/* CD50 8000C150 8FA80078 */  lw         $t0, 0x78($sp)
/* CD54 8000C154 2401008C */  addiu      $at, $zero, 0x8C
/* CD58 8000C158 8D090000 */  lw         $t1, 0x0($t0)
/* CD5C 8000C15C 0121001B */  divu       $zero, $t1, $at
/* CD60 8000C160 00005010 */  mfhi       $t2
/* CD64 8000C164 448A2000 */  mtc1       $t2, $f4
/* CD68 8000C168 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* CD6C 8000C16C 05410004 */  bgez       $t2, .L8000C180
/* CD70 8000C170 468021A0 */   cvt.s.w   $f6, $f4
/* CD74 8000C174 44814000 */  mtc1       $at, $f8
/* CD78 8000C178 00000000 */  nop
/* CD7C 8000C17C 46083180 */  add.s      $f6, $f6, $f8
.L8000C180:
/* CD80 8000C180 3C018009 */  lui        $at, %hi(D_80095398)
/* CD84 8000C184 D4305398 */  ldc1       $f16, %lo(D_80095398)($at)
/* CD88 8000C188 460032A1 */  cvt.d.s    $f10, $f6
/* CD8C 8000C18C 3C018009 */  lui        $at, %hi(D_800953A0)
/* CD90 8000C190 46305482 */  mul.d      $f18, $f10, $f16
/* CD94 8000C194 D42453A0 */  ldc1       $f4, %lo(D_800953A0)($at)
/* CD98 8000C198 8FA50074 */  lw         $a1, 0x74($sp)
/* CD9C 8000C19C 240B0004 */  addiu      $t3, $zero, 0x4
/* CDA0 8000C1A0 AFAB0010 */  sw         $t3, 0x10($sp)
/* CDA4 8000C1A4 27A40030 */  addiu      $a0, $sp, 0x30
/* CDA8 8000C1A8 00003825 */  or         $a3, $zero, $zero
/* CDAC 8000C1AC 24A50008 */  addiu      $a1, $a1, 0x8
/* CDB0 8000C1B0 46249203 */  div.d      $f8, $f18, $f4
/* CDB4 8000C1B4 462041A0 */  cvt.s.d    $f6, $f8
/* CDB8 8000C1B8 0C008347 */  jal        func_80020D1C
/* CDBC 8000C1BC E7A6002C */   swc1      $f6, 0x2C($sp)
/* CDC0 8000C1C0 8FA20070 */  lw         $v0, 0x70($sp)
/* CDC4 8000C1C4 27A40030 */  addiu      $a0, $sp, 0x30
/* CDC8 8000C1C8 944C0004 */  lhu        $t4, 0x4($v0)
/* CDCC 8000C1CC 2445005C */  addiu      $a1, $v0, 0x5C
/* CDD0 8000C1D0 358D0002 */  ori        $t5, $t4, 0x2
/* CDD4 8000C1D4 0C00907C */  jal        func_800241F0
/* CDD8 8000C1D8 A44D0004 */   sh        $t5, 0x4($v0)
/* CDDC 8000C1DC 8FBF001C */  lw         $ra, 0x1C($sp)
/* CDE0 8000C1E0 27BD0070 */  addiu      $sp, $sp, 0x70
/* CDE4 8000C1E4 03E00008 */  jr         $ra
/* CDE8 8000C1E8 00000000 */   nop

glabel func_8000C1EC
/* CDEC 8000C1EC 27BDFF10 */  addiu      $sp, $sp, -0xF0
/* CDF0 8000C1F0 AFBF001C */  sw         $ra, 0x1C($sp)
/* CDF4 8000C1F4 AFA400F0 */  sw         $a0, 0xF0($sp)
/* CDF8 8000C1F8 AFA500F4 */  sw         $a1, 0xF4($sp)
/* CDFC 8000C1FC 8CC20000 */  lw         $v0, 0x0($a2)
/* CE00 8000C200 24010190 */  addiu      $at, $zero, 0x190
/* CE04 8000C204 0041001B */  divu       $zero, $v0, $at
/* CE08 8000C208 00007010 */  mfhi       $t6
/* CE0C 8000C20C 448E2000 */  mtc1       $t6, $f4
/* CE10 8000C210 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* CE14 8000C214 05C10004 */  bgez       $t6, .L8000C228
/* CE18 8000C218 468021A0 */   cvt.s.w   $f6, $f4
/* CE1C 8000C21C 44814000 */  mtc1       $at, $f8
/* CE20 8000C220 00000000 */  nop
/* CE24 8000C224 46083180 */  add.s      $f6, $f6, $f8
.L8000C228:
/* CE28 8000C228 3C018009 */  lui        $at, %hi(D_800953A8)
/* CE2C 8000C22C D43053A8 */  ldc1       $f16, %lo(D_800953A8)($at)
/* CE30 8000C230 3C014079 */  lui        $at, (0x40790000 >> 16)
/* CE34 8000C234 44812800 */  mtc1       $at, $f5
/* CE38 8000C238 2401012C */  addiu      $at, $zero, 0x12C
/* CE3C 8000C23C 0041001B */  divu       $zero, $v0, $at
/* CE40 8000C240 460032A1 */  cvt.d.s    $f10, $f6
/* CE44 8000C244 44802000 */  mtc1       $zero, $f4
/* CE48 8000C248 46305482 */  mul.d      $f18, $f10, $f16
/* CE4C 8000C24C 00007810 */  mfhi       $t7
/* CE50 8000C250 448F5000 */  mtc1       $t7, $f10
/* CE54 8000C254 3C014F80 */  lui        $at, (0x4F800000 >> 16)
/* CE58 8000C258 46805420 */  cvt.s.w    $f16, $f10
/* CE5C 8000C25C 46249203 */  div.d      $f8, $f18, $f4
/* CE60 8000C260 462041A0 */  cvt.s.d    $f6, $f8
/* CE64 8000C264 05E10004 */  bgez       $t7, .L8000C278
/* CE68 8000C268 E7A6002C */   swc1      $f6, 0x2C($sp)
/* CE6C 8000C26C 44819000 */  mtc1       $at, $f18
/* CE70 8000C270 00000000 */  nop
/* CE74 8000C274 46128400 */  add.s      $f16, $f16, $f18
.L8000C278:
/* CE78 8000C278 3C018009 */  lui        $at, %hi(D_800953B0)
/* CE7C 8000C27C D42853B0 */  ldc1       $f8, %lo(D_800953B0)($at)
/* CE80 8000C280 46008121 */  cvt.d.s    $f4, $f16
/* CE84 8000C284 3C018009 */  lui        $at, %hi(D_800953B8)
/* CE88 8000C288 46282183 */  div.d      $f6, $f4, $f8
/* CE8C 8000C28C C42A53B8 */  lwc1       $f10, %lo(D_800953B8)($at)
/* CE90 8000C290 24040001 */  addiu      $a0, $zero, 0x1
/* CE94 8000C294 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* CE98 8000C298 46203020 */  cvt.s.d    $f0, $f6
/* CE9C 8000C29C 46005482 */  mul.s      $f18, $f10, $f0
/* CEA0 8000C2A0 4458F800 */  cfc1       $t8, $31
/* CEA4 8000C2A4 44C4F800 */  ctc1       $a0, $31
/* CEA8 8000C2A8 00000000 */  nop
/* CEAC 8000C2AC 46009424 */  cvt.w.s    $f16, $f18
/* CEB0 8000C2B0 4444F800 */  cfc1       $a0, $31
/* CEB4 8000C2B4 00000000 */  nop
/* CEB8 8000C2B8 30840078 */  andi       $a0, $a0, 0x78
/* CEBC 8000C2BC 50800013 */  beql       $a0, $zero, .L8000C30C
/* CEC0 8000C2C0 44048000 */   mfc1      $a0, $f16
/* CEC4 8000C2C4 44818000 */  mtc1       $at, $f16
/* CEC8 8000C2C8 24040001 */  addiu      $a0, $zero, 0x1
/* CECC 8000C2CC 46109401 */  sub.s      $f16, $f18, $f16
/* CED0 8000C2D0 44C4F800 */  ctc1       $a0, $31
/* CED4 8000C2D4 00000000 */  nop
/* CED8 8000C2D8 46008424 */  cvt.w.s    $f16, $f16
/* CEDC 8000C2DC 4444F800 */  cfc1       $a0, $31
/* CEE0 8000C2E0 00000000 */  nop
/* CEE4 8000C2E4 30840078 */  andi       $a0, $a0, 0x78
/* CEE8 8000C2E8 14800005 */  bnez       $a0, .L8000C300
/* CEEC 8000C2EC 00000000 */   nop
/* CEF0 8000C2F0 44048000 */  mfc1       $a0, $f16
/* CEF4 8000C2F4 3C018000 */  lui        $at, (0x80000000 >> 16)
/* CEF8 8000C2F8 10000007 */  b          .L8000C318
/* CEFC 8000C2FC 00812025 */   or        $a0, $a0, $at
.L8000C300:
/* CF00 8000C300 10000005 */  b          .L8000C318
/* CF04 8000C304 2404FFFF */   addiu     $a0, $zero, -0x1
/* CF08 8000C308 44048000 */  mfc1       $a0, $f16
.L8000C30C:
/* CF0C 8000C30C 00000000 */  nop
/* CF10 8000C310 0480FFFB */  bltz       $a0, .L8000C300
/* CF14 8000C314 00000000 */   nop
.L8000C318:
/* CF18 8000C318 44D8F800 */  ctc1       $t8, $31
/* CF1C 8000C31C 3099FFFF */  andi       $t9, $a0, 0xFFFF
/* CF20 8000C320 0C01ADB8 */  jal        func_8006B6E0
/* CF24 8000C324 03202025 */   or        $a0, $t9, $zero
/* CF28 8000C328 44822000 */  mtc1       $v0, $f4
/* CF2C 8000C32C 3C018009 */  lui        $at, %hi(D_800953C0)
/* CF30 8000C330 D42653C0 */  ldc1       $f6, %lo(D_800953C0)($at)
/* CF34 8000C334 46802221 */  cvt.d.w    $f8, $f4
/* CF38 8000C338 3C018009 */  lui        $at, %hi(D_800953C8)
/* CF3C 8000C33C D43253C8 */  ldc1       $f18, %lo(D_800953C8)($at)
/* CF40 8000C340 8FA300F4 */  lw         $v1, 0xF4($sp)
/* CF44 8000C344 27A400B0 */  addiu      $a0, $sp, 0xB0
/* CF48 8000C348 46264282 */  mul.d      $f10, $f8, $f6
/* CF4C 8000C34C C4680010 */  lwc1       $f8, 0x10($v1)
/* CF50 8000C350 8C650008 */  lw         $a1, 0x8($v1)
/* CF54 8000C354 8C66000C */  lw         $a2, 0xC($v1)
/* CF58 8000C358 46325403 */  div.d      $f16, $f10, $f18
/* CF5C 8000C35C 46208120 */  cvt.s.d    $f4, $f16
/* CF60 8000C360 46044180 */  add.s      $f6, $f8, $f4
/* CF64 8000C364 44073000 */  mfc1       $a3, $f6
/* CF68 8000C368 0C01ADD4 */  jal        func_8006B750
/* CF6C 8000C36C 00000000 */   nop
/* CF70 8000C370 44800000 */  mtc1       $zero, $f0
/* CF74 8000C374 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* CF78 8000C378 44815000 */  mtc1       $at, $f10
/* CF7C 8000C37C 44060000 */  mfc1       $a2, $f0
/* CF80 8000C380 44070000 */  mfc1       $a3, $f0
/* CF84 8000C384 27A40070 */  addiu      $a0, $sp, 0x70
/* CF88 8000C388 8FA5002C */  lw         $a1, 0x2C($sp)
/* CF8C 8000C38C 0C01ADFC */  jal        func_8006B7F0
/* CF90 8000C390 E7AA0010 */   swc1      $f10, 0x10($sp)
/* CF94 8000C394 27A40070 */  addiu      $a0, $sp, 0x70
/* CF98 8000C398 27A500B0 */  addiu      $a1, $sp, 0xB0
/* CF9C 8000C39C 0C0090DC */  jal        func_80024370
/* CFA0 8000C3A0 27A60030 */   addiu     $a2, $sp, 0x30
/* CFA4 8000C3A4 8FA200F0 */  lw         $v0, 0xF0($sp)
/* CFA8 8000C3A8 27A40030 */  addiu      $a0, $sp, 0x30
/* CFAC 8000C3AC 94480004 */  lhu        $t0, 0x4($v0)
/* CFB0 8000C3B0 2445005C */  addiu      $a1, $v0, 0x5C
/* CFB4 8000C3B4 35090002 */  ori        $t1, $t0, 0x2
/* CFB8 8000C3B8 0C00907C */  jal        func_800241F0
/* CFBC 8000C3BC A4490004 */   sh        $t1, 0x4($v0)
/* CFC0 8000C3C0 8FBF001C */  lw         $ra, 0x1C($sp)
/* CFC4 8000C3C4 27BD00F0 */  addiu      $sp, $sp, 0xF0
/* CFC8 8000C3C8 03E00008 */  jr         $ra
/* CFCC 8000C3CC 00000000 */   nop

glabel func_8000C3D0
/* CFD0 8000C3D0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* CFD4 8000C3D4 240100B4 */  addiu      $at, $zero, 0xB4
/* CFD8 8000C3D8 AFBF0024 */  sw         $ra, 0x24($sp)
/* CFDC 8000C3DC AFB00020 */  sw         $s0, 0x20($sp)
/* CFE0 8000C3E0 AFA5007C */  sw         $a1, 0x7C($sp)
/* CFE4 8000C3E4 8CC20000 */  lw         $v0, 0x0($a2)
/* CFE8 8000C3E8 27AF0028 */  addiu      $t7, $sp, 0x28
/* CFEC 8000C3EC 00808025 */  or         $s0, $a0, $zero
/* CFF0 8000C3F0 0041001B */  divu       $zero, $v0, $at
/* CFF4 8000C3F4 8CA10014 */  lw         $at, 0x14($a1)
/* CFF8 8000C3F8 00007010 */  mfhi       $t6
/* CFFC 8000C3FC 000E5040 */  sll        $t2, $t6, 1
/* D000 8000C400 ADE10000 */  sw         $at, 0x0($t7)
/* D004 8000C404 8CA90018 */  lw         $t1, 0x18($a1)
/* D008 8000C408 448A2000 */  mtc1       $t2, $f4
/* D00C 8000C40C ADE90004 */  sw         $t1, 0x4($t7)
/* D010 8000C410 8CA1001C */  lw         $at, 0x1C($a1)
/* D014 8000C414 468021A1 */  cvt.d.w    $f6, $f4
/* D018 8000C418 ADE10008 */  sw         $at, 0x8($t7)
/* D01C 8000C41C 3C018009 */  lui        $at, %hi(D_800953D0)
/* D020 8000C420 D42853D0 */  ldc1       $f8, %lo(D_800953D0)($at)
/* D024 8000C424 46283282 */  mul.d      $f10, $f6, $f8
/* D028 8000C428 0C01AB20 */  jal        func_8006AC80
/* D02C 8000C42C 46205320 */   cvt.s.d   $f12, $f10
/* D030 8000C430 3C014120 */  lui        $at, (0x41200000 >> 16)
/* D034 8000C434 44818000 */  mtc1       $at, $f16
/* D038 8000C438 8FA5007C */  lw         $a1, 0x7C($sp)
/* D03C 8000C43C 240B0004 */  addiu      $t3, $zero, 0x4
/* D040 8000C440 46100482 */  mul.s      $f18, $f0, $f16
/* D044 8000C444 AFAB0010 */  sw         $t3, 0x10($sp)
/* D048 8000C448 27A40034 */  addiu      $a0, $sp, 0x34
/* D04C 8000C44C 27A60028 */  addiu      $a2, $sp, 0x28
/* D050 8000C450 00003825 */  or         $a3, $zero, $zero
/* D054 8000C454 24A50008 */  addiu      $a1, $a1, 0x8
/* D058 8000C458 0C008347 */  jal        func_80020D1C
/* D05C 8000C45C E7B20028 */   swc1      $f18, 0x28($sp)
/* D060 8000C460 960C0004 */  lhu        $t4, 0x4($s0)
/* D064 8000C464 27A40034 */  addiu      $a0, $sp, 0x34
/* D068 8000C468 2605005C */  addiu      $a1, $s0, 0x5C
/* D06C 8000C46C 358D0002 */  ori        $t5, $t4, 0x2
/* D070 8000C470 0C00907C */  jal        func_800241F0
/* D074 8000C474 A60D0004 */   sh        $t5, 0x4($s0)
/* D078 8000C478 960E0004 */  lhu        $t6, 0x4($s0)
/* D07C 8000C47C 240200FF */  addiu      $v0, $zero, 0xFF
/* D080 8000C480 A2020034 */  sb         $v0, 0x34($s0)
/* D084 8000C484 35C80010 */  ori        $t0, $t6, 0x10
/* D088 8000C488 A6080004 */  sh         $t0, 0x4($s0)
/* D08C 8000C48C A2020035 */  sb         $v0, 0x35($s0)
/* D090 8000C490 A2020036 */  sb         $v0, 0x36($s0)
/* D094 8000C494 A2020037 */  sb         $v0, 0x37($s0)
/* D098 8000C498 8FBF0024 */  lw         $ra, 0x24($sp)
/* D09C 8000C49C 8FB00020 */  lw         $s0, 0x20($sp)
/* D0A0 8000C4A0 27BD0078 */  addiu      $sp, $sp, 0x78
/* D0A4 8000C4A4 03E00008 */  jr         $ra
/* D0A8 8000C4A8 00000000 */   nop

glabel func_8000C4AC
/* D0AC 8000C4AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0B0 8000C4B0 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0B4 8000C4B4 0C0031AD */  jal        func_8000C6B4
/* D0B8 8000C4B8 00003825 */   or        $a3, $zero, $zero
/* D0BC 8000C4BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0C0 8000C4C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* D0C4 8000C4C4 03E00008 */  jr         $ra
/* D0C8 8000C4C8 00000000 */   nop

glabel func_8000C4CC
/* D0CC 8000C4CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D0D0 8000C4D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* D0D4 8000C4D4 0C0031AD */  jal        func_8000C6B4
/* D0D8 8000C4D8 24070001 */   addiu     $a3, $zero, 0x1
/* D0DC 8000C4DC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0E0 8000C4E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* D0E4 8000C4E4 03E00008 */  jr         $ra
/* D0E8 8000C4E8 00000000 */   nop

glabel func_8000C4EC
/* D0EC 8000C4EC 27BDFF88 */  addiu      $sp, $sp, -0x78
/* D0F0 8000C4F0 AFA60080 */  sw         $a2, 0x80($sp)
/* D0F4 8000C4F4 8FAE0080 */  lw         $t6, 0x80($sp)
/* D0F8 8000C4F8 AFBF0024 */  sw         $ra, 0x24($sp)
/* D0FC 8000C4FC AFB00020 */  sw         $s0, 0x20($sp)
/* D100 8000C500 AFA5007C */  sw         $a1, 0x7C($sp)
/* D104 8000C504 240100B4 */  addiu      $at, $zero, 0xB4
/* D108 8000C508 8DC20000 */  lw         $v0, 0x0($t6)
/* D10C 8000C50C 27A60028 */  addiu      $a2, $sp, 0x28
/* D110 8000C510 240B0167 */  addiu      $t3, $zero, 0x167
/* D114 8000C514 0041001B */  divu       $zero, $v0, $at
/* D118 8000C518 8CA10014 */  lw         $at, 0x14($a1)
/* D11C 8000C51C 00007810 */  mfhi       $t7
/* D120 8000C520 000F5040 */  sll        $t2, $t7, 1
/* D124 8000C524 ACC10000 */  sw         $at, 0x0($a2)
/* D128 8000C528 8CA90018 */  lw         $t1, 0x18($a1)
/* D12C 8000C52C 016A6023 */  subu       $t4, $t3, $t2
/* D130 8000C530 448C2000 */  mtc1       $t4, $f4
/* D134 8000C534 ACC90004 */  sw         $t1, 0x4($a2)
/* D138 8000C538 8CA1001C */  lw         $at, 0x1C($a1)
/* D13C 8000C53C 468021A0 */  cvt.s.w    $f6, $f4
/* D140 8000C540 00808025 */  or         $s0, $a0, $zero
/* D144 8000C544 ACC10008 */  sw         $at, 0x8($a2)
/* D148 8000C548 8FA5007C */  lw         $a1, 0x7C($sp)
/* D14C 8000C54C 240D0004 */  addiu      $t5, $zero, 0x4
/* D150 8000C550 AFAD0010 */  sw         $t5, 0x10($sp)
/* D154 8000C554 E7A6002C */  swc1       $f6, 0x2C($sp)
/* D158 8000C558 27A40034 */  addiu      $a0, $sp, 0x34
/* D15C 8000C55C 00003825 */  or         $a3, $zero, $zero
/* D160 8000C560 0C008347 */  jal        func_80020D1C
/* D164 8000C564 24A50008 */   addiu     $a1, $a1, 0x8
/* D168 8000C568 960E0004 */  lhu        $t6, 0x4($s0)
/* D16C 8000C56C 27A40034 */  addiu      $a0, $sp, 0x34
/* D170 8000C570 2605005C */  addiu      $a1, $s0, 0x5C
/* D174 8000C574 35CF0002 */  ori        $t7, $t6, 0x2
/* D178 8000C578 0C00907C */  jal        func_800241F0
/* D17C 8000C57C A60F0004 */   sh        $t7, 0x4($s0)
/* D180 8000C580 96080004 */  lhu        $t0, 0x4($s0)
/* D184 8000C584 240200FF */  addiu      $v0, $zero, 0xFF
/* D188 8000C588 A2020034 */  sb         $v0, 0x34($s0)
/* D18C 8000C58C 35190010 */  ori        $t9, $t0, 0x10
/* D190 8000C590 A6190004 */  sh         $t9, 0x4($s0)
/* D194 8000C594 A2020035 */  sb         $v0, 0x35($s0)
/* D198 8000C598 A2020036 */  sb         $v0, 0x36($s0)
/* D19C 8000C59C A2020037 */  sb         $v0, 0x37($s0)
/* D1A0 8000C5A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* D1A4 8000C5A4 8FB00020 */  lw         $s0, 0x20($sp)
/* D1A8 8000C5A8 27BD0078 */  addiu      $sp, $sp, 0x78
/* D1AC 8000C5AC 03E00008 */  jr         $ra
/* D1B0 8000C5B0 00000000 */   nop

glabel func_8000C5B4
/* D1B4 8000C5B4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* D1B8 8000C5B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* D1BC 8000C5BC AFB00020 */  sw         $s0, 0x20($sp)
/* D1C0 8000C5C0 AFA5007C */  sw         $a1, 0x7C($sp)
/* D1C4 8000C5C4 AFA60080 */  sw         $a2, 0x80($sp)
/* D1C8 8000C5C8 AFA70084 */  sw         $a3, 0x84($sp)
/* D1CC 8000C5CC 8CCF0000 */  lw         $t7, 0x0($a2)
/* D1D0 8000C5D0 00808025 */  or         $s0, $a0, $zero
/* D1D4 8000C5D4 00A0C825 */  or         $t9, $a1, $zero
/* D1D8 8000C5D8 24080004 */  addiu      $t0, $zero, 0x4
/* D1DC 8000C5DC 31F8003F */  andi       $t8, $t7, 0x3F
/* D1E0 8000C5E0 AFB80034 */  sw         $t8, 0x34($sp)
/* D1E4 8000C5E4 AFA80010 */  sw         $t0, 0x10($sp)
/* D1E8 8000C5E8 27260014 */  addiu      $a2, $t9, 0x14
/* D1EC 8000C5EC 24A50008 */  addiu      $a1, $a1, 0x8
/* D1F0 8000C5F0 27A40038 */  addiu      $a0, $sp, 0x38
/* D1F4 8000C5F4 0C008347 */  jal        func_80020D1C
/* D1F8 8000C5F8 00003825 */   or        $a3, $zero, $zero
/* D1FC 8000C5FC 96090004 */  lhu        $t1, 0x4($s0)
/* D200 8000C600 27A40038 */  addiu      $a0, $sp, 0x38
/* D204 8000C604 2605005C */  addiu      $a1, $s0, 0x5C
/* D208 8000C608 352A0002 */  ori        $t2, $t1, 0x2
/* D20C 8000C60C 0C00907C */  jal        func_800241F0
/* D210 8000C610 A60A0004 */   sh        $t2, 0x4($s0)
/* D214 8000C614 960B0004 */  lhu        $t3, 0x4($s0)
/* D218 8000C618 240D0078 */  addiu      $t5, $zero, 0x78
/* D21C 8000C61C A20D0037 */  sb         $t5, 0x37($s0)
/* D220 8000C620 356C0010 */  ori        $t4, $t3, 0x10
/* D224 8000C624 A60C0004 */  sh         $t4, 0x4($s0)
/* D228 8000C628 A2000034 */  sb         $zero, 0x34($s0)
/* D22C 8000C62C A2000035 */  sb         $zero, 0x35($s0)
/* D230 8000C630 A2000036 */  sb         $zero, 0x36($s0)
/* D234 8000C634 8FAE0084 */  lw         $t6, 0x84($sp)
/* D238 8000C638 11C00006 */  beqz       $t6, .L8000C654
/* D23C 8000C63C 00000000 */   nop
/* D240 8000C640 0C00325E */  jal        func_8000C978
/* D244 8000C644 8FA40080 */   lw        $a0, 0x80($sp)
/* D248 8000C648 00021980 */  sll        $v1, $v0, 6
/* D24C 8000C64C 10000005 */  b          .L8000C664
/* D250 8000C650 00602025 */   or        $a0, $v1, $zero
.L8000C654:
/* D254 8000C654 0C00325E */  jal        func_8000C978
/* D258 8000C658 8FA40080 */   lw        $a0, 0x80($sp)
/* D25C 8000C65C 00021980 */  sll        $v1, $v0, 6
/* D260 8000C660 00602025 */  or         $a0, $v1, $zero
.L8000C664:
/* D264 8000C664 28610081 */  slti       $at, $v1, 0x81
/* D268 8000C668 14200002 */  bnez       $at, .L8000C674
/* D26C 8000C66C 24080040 */   addiu     $t0, $zero, 0x40
/* D270 8000C670 24040080 */  addiu      $a0, $zero, 0x80
.L8000C674:
/* D274 8000C674 960F0004 */  lhu        $t7, 0x4($s0)
/* D278 8000C678 A6040024 */  sh         $a0, 0x24($s0)
/* D27C 8000C67C A6000026 */  sh         $zero, 0x26($s0)
/* D280 8000C680 35F80020 */  ori        $t8, $t7, 0x20
/* D284 8000C684 A6180004 */  sh         $t8, 0x4($s0)
/* D288 8000C688 8FB90034 */  lw         $t9, 0x34($sp)
/* D28C 8000C68C 24090020 */  addiu      $t1, $zero, 0x20
/* D290 8000C690 A6090032 */  sh         $t1, 0x32($s0)
/* D294 8000C694 A6080030 */  sh         $t0, 0x30($s0)
/* D298 8000C698 A600002A */  sh         $zero, 0x2A($s0)
/* D29C 8000C69C A6190028 */  sh         $t9, 0x28($s0)
/* D2A0 8000C6A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* D2A4 8000C6A4 8FB00020 */  lw         $s0, 0x20($sp)
/* D2A8 8000C6A8 27BD0078 */  addiu      $sp, $sp, 0x78
/* D2AC 8000C6AC 03E00008 */  jr         $ra
/* D2B0 8000C6B0 00000000 */   nop

glabel func_8000C6B4
/* D2B4 8000C6B4 27BDFF78 */  addiu      $sp, $sp, -0x88
/* D2B8 8000C6B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* D2BC 8000C6BC AFB00020 */  sw         $s0, 0x20($sp)
/* D2C0 8000C6C0 AFA5008C */  sw         $a1, 0x8C($sp)
/* D2C4 8000C6C4 8CA10014 */  lw         $at, 0x14($a1)
/* D2C8 8000C6C8 8CC20000 */  lw         $v0, 0x0($a2)
/* D2CC 8000C6CC 27B90030 */  addiu      $t9, $sp, 0x30
/* D2D0 8000C6D0 AF210000 */  sw         $at, 0x0($t9)
/* D2D4 8000C6D4 8CAB0018 */  lw         $t3, 0x18($a1)
/* D2D8 8000C6D8 304E007F */  andi       $t6, $v0, 0x7F
/* D2DC 8000C6DC 000E7943 */  sra        $t7, $t6, 5
/* D2E0 8000C6E0 AF2B0004 */  sw         $t3, 0x4($t9)
/* D2E4 8000C6E4 8CA1001C */  lw         $at, 0x1C($a1)
/* D2E8 8000C6E8 01E71821 */  addu       $v1, $t7, $a3
/* D2EC 8000C6EC 30780003 */  andi       $t8, $v1, 0x3
/* D2F0 8000C6F0 00808025 */  or         $s0, $a0, $zero
/* D2F4 8000C6F4 01C01025 */  or         $v0, $t6, $zero
/* D2F8 8000C6F8 03001825 */  or         $v1, $t8, $zero
/* D2FC 8000C6FC 10E00013 */  beqz       $a3, .L8000C74C
/* D300 8000C700 AF210008 */   sw        $at, 0x8($t9)
/* D304 8000C704 31CC003F */  andi       $t4, $t6, 0x3F
/* D308 8000C708 448C2000 */  mtc1       $t4, $f4
/* D30C 8000C70C 3C018009 */  lui        $at, %hi(D_800953D8)
/* D310 8000C710 D42053D8 */  ldc1       $f0, %lo(D_800953D8)($at)
/* D314 8000C714 468021A0 */  cvt.s.w    $f6, $f4
/* D318 8000C718 3C014010 */  lui        $at, (0x40100000 >> 16)
/* D31C 8000C71C 44818800 */  mtc1       $at, $f17
/* D320 8000C720 44808000 */  mtc1       $zero, $f16
/* D324 8000C724 3C018009 */  lui        $at, %hi(D_800953E0)
/* D328 8000C728 D42453E0 */  ldc1       $f4, %lo(D_800953E0)($at)
/* D32C 8000C72C 46003221 */  cvt.d.s    $f8, $f6
/* D330 8000C730 46204282 */  mul.d      $f10, $f8, $f0
/* D334 8000C734 00000000 */  nop
/* D338 8000C738 46305482 */  mul.d      $f18, $f10, $f16
/* D33C 8000C73C 46322181 */  sub.d      $f6, $f4, $f18
/* D340 8000C740 46203220 */  cvt.s.d    $f8, $f6
/* D344 8000C744 1000000D */  b          .L8000C77C
/* D348 8000C748 E7A80034 */   swc1      $f8, 0x34($sp)
.L8000C74C:
/* D34C 8000C74C 44825000 */  mtc1       $v0, $f10
/* D350 8000C750 3C018009 */  lui        $at, %hi(D_800953E8)
/* D354 8000C754 D42053E8 */  ldc1       $f0, %lo(D_800953E8)($at)
/* D358 8000C758 46805421 */  cvt.d.w    $f16, $f10
/* D35C 8000C75C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* D360 8000C760 44819800 */  mtc1       $at, $f19
/* D364 8000C764 44809000 */  mtc1       $zero, $f18
/* D368 8000C768 46208102 */  mul.d      $f4, $f16, $f0
/* D36C 8000C76C 00000000 */  nop
/* D370 8000C770 46322182 */  mul.d      $f6, $f4, $f18
/* D374 8000C774 46203220 */  cvt.s.d    $f8, $f6
/* D378 8000C778 E7A80034 */  swc1       $f8, 0x34($sp)
.L8000C77C:
/* D37C 8000C77C 00026883 */  sra        $t5, $v0, 2
/* D380 8000C780 448D5000 */  mtc1       $t5, $f10
/* D384 8000C784 3C014020 */  lui        $at, (0x40200000 >> 16)
/* D388 8000C788 44819800 */  mtc1       $at, $f19
/* D38C 8000C78C 46805421 */  cvt.d.w    $f16, $f10
/* D390 8000C790 44809000 */  mtc1       $zero, $f18
/* D394 8000C794 3C018009 */  lui        $at, %hi(D_800953F0)
/* D398 8000C798 D42853F0 */  ldc1       $f8, %lo(D_800953F0)($at)
/* D39C 8000C79C AFA30080 */  sw         $v1, 0x80($sp)
/* D3A0 8000C7A0 46208102 */  mul.d      $f4, $f16, $f0
/* D3A4 8000C7A4 00000000 */  nop
/* D3A8 8000C7A8 46322182 */  mul.d      $f6, $f4, $f18
/* D3AC 8000C7AC 00000000 */  nop
/* D3B0 8000C7B0 46283282 */  mul.d      $f10, $f6, $f8
/* D3B4 8000C7B4 0C019B54 */  jal        __sinf
/* D3B8 8000C7B8 46205320 */   cvt.s.d   $f12, $f10
/* D3BC 8000C7BC 3C01437F */  lui        $at, (0x437F0000 >> 16)
/* D3C0 8000C7C0 44818000 */  mtc1       $at, $f16
/* D3C4 8000C7C4 24020001 */  addiu      $v0, $zero, 0x1
/* D3C8 8000C7C8 8FA5008C */  lw         $a1, 0x8C($sp)
/* D3CC 8000C7CC 46100102 */  mul.s      $f4, $f0, $f16
/* D3D0 8000C7D0 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* D3D4 8000C7D4 27A4003C */  addiu      $a0, $sp, 0x3C
/* D3D8 8000C7D8 27A60030 */  addiu      $a2, $sp, 0x30
/* D3DC 8000C7DC 00003825 */  or         $a3, $zero, $zero
/* D3E0 8000C7E0 24180004 */  addiu      $t8, $zero, 0x4
/* D3E4 8000C7E4 24A50008 */  addiu      $a1, $a1, 0x8
/* D3E8 8000C7E8 444EF800 */  cfc1       $t6, $31
/* D3EC 8000C7EC 44C2F800 */  ctc1       $v0, $31
/* D3F0 8000C7F0 00000000 */  nop
/* D3F4 8000C7F4 460024A4 */  cvt.w.s    $f18, $f4
/* D3F8 8000C7F8 4442F800 */  cfc1       $v0, $31
/* D3FC 8000C7FC 00000000 */  nop
/* D400 8000C800 30420078 */  andi       $v0, $v0, 0x78
/* D404 8000C804 50400013 */  beql       $v0, $zero, .L8000C854
/* D408 8000C808 44029000 */   mfc1      $v0, $f18
/* D40C 8000C80C 44819000 */  mtc1       $at, $f18
/* D410 8000C810 24020001 */  addiu      $v0, $zero, 0x1
/* D414 8000C814 46122481 */  sub.s      $f18, $f4, $f18
/* D418 8000C818 44C2F800 */  ctc1       $v0, $31
/* D41C 8000C81C 00000000 */  nop
/* D420 8000C820 460094A4 */  cvt.w.s    $f18, $f18
/* D424 8000C824 4442F800 */  cfc1       $v0, $31
/* D428 8000C828 00000000 */  nop
/* D42C 8000C82C 30420078 */  andi       $v0, $v0, 0x78
/* D430 8000C830 14400005 */  bnez       $v0, .L8000C848
/* D434 8000C834 00000000 */   nop
/* D438 8000C838 44029000 */  mfc1       $v0, $f18
/* D43C 8000C83C 3C018000 */  lui        $at, (0x80000000 >> 16)
/* D440 8000C840 10000007 */  b          .L8000C860
/* D444 8000C844 00411025 */   or        $v0, $v0, $at
.L8000C848:
/* D448 8000C848 10000005 */  b          .L8000C860
/* D44C 8000C84C 2402FFFF */   addiu     $v0, $zero, -0x1
/* D450 8000C850 44029000 */  mfc1       $v0, $f18
.L8000C854:
/* D454 8000C854 00000000 */  nop
/* D458 8000C858 0440FFFB */  bltz       $v0, .L8000C848
/* D45C 8000C85C 00000000 */   nop
.L8000C860:
/* D460 8000C860 44CEF800 */  ctc1       $t6, $31
/* D464 8000C864 AFB80010 */  sw         $t8, 0x10($sp)
/* D468 8000C868 0C008347 */  jal        func_80020D1C
/* D46C 8000C86C A3A2007C */   sb        $v0, 0x7C($sp)
/* D470 8000C870 960A0004 */  lhu        $t2, 0x4($s0)
/* D474 8000C874 27A4003C */  addiu      $a0, $sp, 0x3C
/* D478 8000C878 2605005C */  addiu      $a1, $s0, 0x5C
/* D47C 8000C87C 35490002 */  ori        $t1, $t2, 0x2
/* D480 8000C880 0C00907C */  jal        func_800241F0
/* D484 8000C884 A6090004 */   sh        $t1, 0x4($s0)
/* D488 8000C888 8FA30080 */  lw         $v1, 0x80($sp)
/* D48C 8000C88C 93A2007C */  lbu        $v0, 0x7C($sp)
/* D490 8000C890 24010001 */  addiu      $at, $zero, 0x1
/* D494 8000C894 5060000A */  beql       $v1, $zero, .L8000C8C0
/* D498 8000C898 A3A2007F */   sb        $v0, 0x7F($sp)
/* D49C 8000C89C 1061000B */  beq        $v1, $at, .L8000C8CC
/* D4A0 8000C8A0 24010002 */   addiu     $at, $zero, 0x2
/* D4A4 8000C8A4 1061000D */  beq        $v1, $at, .L8000C8DC
/* D4A8 8000C8A8 24010003 */   addiu     $at, $zero, 0x3
/* D4AC 8000C8AC 50610010 */  beql       $v1, $at, .L8000C8F0
/* D4B0 8000C8B0 A3A2007D */   sb        $v0, 0x7D($sp)
/* D4B4 8000C8B4 10000011 */  b          .L8000C8FC
/* D4B8 8000C8B8 96190004 */   lhu       $t9, 0x4($s0)
/* D4BC 8000C8BC A3A2007F */  sb         $v0, 0x7F($sp)
.L8000C8C0:
/* D4C0 8000C8C0 A3A0007D */  sb         $zero, 0x7D($sp)
/* D4C4 8000C8C4 1000000C */  b          .L8000C8F8
/* D4C8 8000C8C8 A3A0007E */   sb        $zero, 0x7E($sp)
.L8000C8CC:
/* D4CC 8000C8CC A3A2007E */  sb         $v0, 0x7E($sp)
/* D4D0 8000C8D0 A3A0007D */  sb         $zero, 0x7D($sp)
/* D4D4 8000C8D4 10000008 */  b          .L8000C8F8
/* D4D8 8000C8D8 A3A0007F */   sb        $zero, 0x7F($sp)
.L8000C8DC:
/* D4DC 8000C8DC A3A2007D */  sb         $v0, 0x7D($sp)
/* D4E0 8000C8E0 A3A0007E */  sb         $zero, 0x7E($sp)
/* D4E4 8000C8E4 10000004 */  b          .L8000C8F8
/* D4E8 8000C8E8 A3A0007F */   sb        $zero, 0x7F($sp)
/* D4EC 8000C8EC A3A2007D */  sb         $v0, 0x7D($sp)
.L8000C8F0:
/* D4F0 8000C8F0 A3A2007E */  sb         $v0, 0x7E($sp)
/* D4F4 8000C8F4 A3A2007F */  sb         $v0, 0x7F($sp)
.L8000C8F8:
/* D4F8 8000C8F8 96190004 */  lhu        $t9, 0x4($s0)
.L8000C8FC:
/* D4FC 8000C8FC 240E00FF */  addiu      $t6, $zero, 0xFF
/* D500 8000C900 37280010 */  ori        $t0, $t9, 0x10
/* D504 8000C904 A6080004 */  sh         $t0, 0x4($s0)
/* D508 8000C908 93AB007F */  lbu        $t3, 0x7F($sp)
/* D50C 8000C90C A20B0034 */  sb         $t3, 0x34($s0)
/* D510 8000C910 93AC007E */  lbu        $t4, 0x7E($sp)
/* D514 8000C914 A20C0035 */  sb         $t4, 0x35($s0)
/* D518 8000C918 93AD007D */  lbu        $t5, 0x7D($sp)
/* D51C 8000C91C A20E0037 */  sb         $t6, 0x37($s0)
/* D520 8000C920 A20D0036 */  sb         $t5, 0x36($s0)
/* D524 8000C924 8FBF0024 */  lw         $ra, 0x24($sp)
/* D528 8000C928 8FB00020 */  lw         $s0, 0x20($sp)
/* D52C 8000C92C 27BD0088 */  addiu      $sp, $sp, 0x88
/* D530 8000C930 03E00008 */  jr         $ra
/* D534 8000C934 00000000 */   nop

glabel func_8000C938
/* D538 8000C938 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D53C 8000C93C AFBF0014 */  sw         $ra, 0x14($sp)
/* D540 8000C940 0C002744 */  jal        func_80009D10
/* D544 8000C944 00000000 */   nop
/* D548 8000C948 8FBF0014 */  lw         $ra, 0x14($sp)
/* D54C 8000C94C 27BD0018 */  addiu      $sp, $sp, 0x18
/* D550 8000C950 03E00008 */  jr         $ra
/* D554 8000C954 00000000 */   nop

glabel func_8000C958
/* D558 8000C958 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D55C 8000C95C AFBF0014 */  sw         $ra, 0x14($sp)
/* D560 8000C960 0C002744 */  jal        func_80009D10
/* D564 8000C964 00000000 */   nop
/* D568 8000C968 8FBF0014 */  lw         $ra, 0x14($sp)
/* D56C 8000C96C 27BD0018 */  addiu      $sp, $sp, 0x18
/* D570 8000C970 03E00008 */  jr         $ra
/* D574 8000C974 00000000 */   nop

glabel func_8000C978
/* D578 8000C978 90830010 */  lbu        $v1, 0x10($a0)
/* D57C 8000C97C 90850064 */  lbu        $a1, 0x64($a0)
/* D580 8000C980 00A3082A */  slt        $at, $a1, $v1
/* D584 8000C984 10200003 */  beqz       $at, .L8000C994
/* D588 8000C988 00A01025 */   or        $v0, $a1, $zero
/* D58C 8000C98C 03E00008 */  jr         $ra
/* D590 8000C990 00601025 */   or        $v0, $v1, $zero
.L8000C994:
/* D594 8000C994 03E00008 */  jr         $ra
/* D598 8000C998 00000000 */   nop

glabel func_8000C99C
/* D59C 8000C99C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5A0 8000C9A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* D5A4 8000C9A4 0C002744 */  jal        func_80009D10
/* D5A8 8000C9A8 00000000 */   nop
/* D5AC 8000C9AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D5B0 8000C9B0 27BD0018 */  addiu      $sp, $sp, 0x18
/* D5B4 8000C9B4 03E00008 */  jr         $ra
/* D5B8 8000C9B8 00000000 */   nop

glabel func_8000C9BC
/* D5BC 8000C9BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5C0 8000C9C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* D5C4 8000C9C4 0C003277 */  jal        func_8000C9DC
/* D5C8 8000C9C8 00003825 */   or        $a3, $zero, $zero
/* D5CC 8000C9CC 8FBF0014 */  lw         $ra, 0x14($sp)
/* D5D0 8000C9D0 27BD0018 */  addiu      $sp, $sp, 0x18
/* D5D4 8000C9D4 03E00008 */  jr         $ra
/* D5D8 8000C9D8 00000000 */   nop

glabel func_8000C9DC
/* D5DC 8000C9DC 27BDFF80 */  addiu      $sp, $sp, -0x80
/* D5E0 8000C9E0 24010168 */  addiu      $at, $zero, 0x168
/* D5E4 8000C9E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* D5E8 8000C9E8 AFB00020 */  sw         $s0, 0x20($sp)
/* D5EC 8000C9EC AFA50084 */  sw         $a1, 0x84($sp)
/* D5F0 8000C9F0 AFA7008C */  sw         $a3, 0x8C($sp)
/* D5F4 8000C9F4 8CC20000 */  lw         $v0, 0x0($a2)
/* D5F8 8000C9F8 27AF002C */  addiu      $t7, $sp, 0x2C
/* D5FC 8000C9FC 240B0167 */  addiu      $t3, $zero, 0x167
/* D600 8000CA00 0041001B */  divu       $zero, $v0, $at
/* D604 8000CA04 8CA10014 */  lw         $at, 0x14($a1)
/* D608 8000CA08 00007010 */  mfhi       $t6
/* D60C 8000CA0C 01C01025 */  or         $v0, $t6, $zero
/* D610 8000CA10 ADE10000 */  sw         $at, 0x0($t7)
/* D614 8000CA14 8CA90018 */  lw         $t1, 0x18($a1)
/* D618 8000CA18 00808025 */  or         $s0, $a0, $zero
/* D61C 8000CA1C 016E6023 */  subu       $t4, $t3, $t6
/* D620 8000CA20 ADE90004 */  sw         $t1, 0x4($t7)
/* D624 8000CA24 8CA1001C */  lw         $at, 0x1C($a1)
/* D628 8000CA28 304D005A */  andi       $t5, $v0, 0x5A
/* D62C 8000CA2C ADE10008 */  sw         $at, 0x8($t7)
/* D630 8000CA30 8FAA008C */  lw         $t2, 0x8C($sp)
/* D634 8000CA34 51400007 */  beql       $t2, $zero, .L8000CA54
/* D638 8000CA38 44824000 */   mtc1      $v0, $f8
/* D63C 8000CA3C 448C2000 */  mtc1       $t4, $f4
/* D640 8000CA40 00000000 */  nop
/* D644 8000CA44 468021A0 */  cvt.s.w    $f6, $f4
/* D648 8000CA48 10000005 */  b          .L8000CA60
/* D64C 8000CA4C E7A60030 */   swc1      $f6, 0x30($sp)
/* D650 8000CA50 44824000 */  mtc1       $v0, $f8
.L8000CA54:
/* D654 8000CA54 00000000 */  nop
/* D658 8000CA58 468042A0 */  cvt.s.w    $f10, $f8
/* D65C 8000CA5C E7AA0030 */  swc1       $f10, 0x30($sp)
.L8000CA60:
/* D660 8000CA60 000D7080 */  sll        $t6, $t5, 2
/* D664 8000CA64 448E8000 */  mtc1       $t6, $f16
/* D668 8000CA68 3C018009 */  lui        $at, %hi(D_800953F8)
/* D66C 8000CA6C D42453F8 */  ldc1       $f4, %lo(D_800953F8)($at)
/* D670 8000CA70 468084A1 */  cvt.d.w    $f18, $f16
/* D674 8000CA74 46249182 */  mul.d      $f6, $f18, $f4
/* D678 8000CA78 0C019B54 */  jal        __sinf
/* D67C 8000CA7C 46203320 */   cvt.s.d   $f12, $f6
/* D680 8000CA80 3C01437F */  lui        $at, (0x437F0000 >> 16)
/* D684 8000CA84 44814000 */  mtc1       $at, $f8
/* D688 8000CA88 24020001 */  addiu      $v0, $zero, 0x1
/* D68C 8000CA8C 8FA50084 */  lw         $a1, 0x84($sp)
/* D690 8000CA90 46080282 */  mul.s      $f10, $f0, $f8
/* D694 8000CA94 3C014F00 */  lui        $at, (0x4F000000 >> 16)
/* D698 8000CA98 27A40038 */  addiu      $a0, $sp, 0x38
/* D69C 8000CA9C 27A6002C */  addiu      $a2, $sp, 0x2C
/* D6A0 8000CAA0 00003825 */  or         $a3, $zero, $zero
/* D6A4 8000CAA4 240F0004 */  addiu      $t7, $zero, 0x4
/* D6A8 8000CAA8 24A50008 */  addiu      $a1, $a1, 0x8
/* D6AC 8000CAAC 4448F800 */  cfc1       $t0, $31
/* D6B0 8000CAB0 44C2F800 */  ctc1       $v0, $31
/* D6B4 8000CAB4 00000000 */  nop
/* D6B8 8000CAB8 46005424 */  cvt.w.s    $f16, $f10
/* D6BC 8000CABC 4442F800 */  cfc1       $v0, $31
/* D6C0 8000CAC0 00000000 */  nop
/* D6C4 8000CAC4 30420078 */  andi       $v0, $v0, 0x78
/* D6C8 8000CAC8 50400013 */  beql       $v0, $zero, .L8000CB18
/* D6CC 8000CACC 44028000 */   mfc1      $v0, $f16
/* D6D0 8000CAD0 44818000 */  mtc1       $at, $f16
/* D6D4 8000CAD4 24020001 */  addiu      $v0, $zero, 0x1
/* D6D8 8000CAD8 46105401 */  sub.s      $f16, $f10, $f16
/* D6DC 8000CADC 44C2F800 */  ctc1       $v0, $31
/* D6E0 8000CAE0 00000000 */  nop
/* D6E4 8000CAE4 46008424 */  cvt.w.s    $f16, $f16
/* D6E8 8000CAE8 4442F800 */  cfc1       $v0, $31
/* D6EC 8000CAEC 00000000 */  nop
/* D6F0 8000CAF0 30420078 */  andi       $v0, $v0, 0x78
/* D6F4 8000CAF4 14400005 */  bnez       $v0, .L8000CB0C
/* D6F8 8000CAF8 00000000 */   nop
/* D6FC 8000CAFC 44028000 */  mfc1       $v0, $f16
/* D700 8000CB00 3C018000 */  lui        $at, (0x80000000 >> 16)
/* D704 8000CB04 10000007 */  b          .L8000CB24
/* D708 8000CB08 00411025 */   or        $v0, $v0, $at
.L8000CB0C:
/* D70C 8000CB0C 10000005 */  b          .L8000CB24
/* D710 8000CB10 2402FFFF */   addiu     $v0, $zero, -0x1
/* D714 8000CB14 44028000 */  mfc1       $v0, $f16
.L8000CB18:
/* D718 8000CB18 00000000 */  nop
/* D71C 8000CB1C 0440FFFB */  bltz       $v0, .L8000CB0C
/* D720 8000CB20 00000000 */   nop
.L8000CB24:
/* D724 8000CB24 44C8F800 */  ctc1       $t0, $31
/* D728 8000CB28 AFAF0010 */  sw         $t7, 0x10($sp)
/* D72C 8000CB2C 0C008347 */  jal        func_80020D1C
/* D730 8000CB30 A3A2007B */   sb        $v0, 0x7B($sp)
/* D734 8000CB34 96180004 */  lhu        $t8, 0x4($s0)
/* D738 8000CB38 27A40038 */  addiu      $a0, $sp, 0x38
/* D73C 8000CB3C 2605005C */  addiu      $a1, $s0, 0x5C
/* D740 8000CB40 37090002 */  ori        $t1, $t8, 0x2
/* D744 8000CB44 0C00907C */  jal        func_800241F0
/* D748 8000CB48 A6090004 */   sh        $t1, 0x4($s0)
/* D74C 8000CB4C 8FAA008C */  lw         $t2, 0x8C($sp)
/* D750 8000CB50 93A2007B */  lbu        $v0, 0x7B($sp)
/* D754 8000CB54 240300FF */  addiu      $v1, $zero, 0xFF
/* D758 8000CB58 5140000B */  beql       $t2, $zero, .L8000CB88
/* D75C 8000CB5C 960D0004 */   lhu       $t5, 0x4($s0)
/* D760 8000CB60 960B0004 */  lhu        $t3, 0x4($s0)
/* D764 8000CB64 240300FF */  addiu      $v1, $zero, 0xFF
/* D768 8000CB68 A2030034 */  sb         $v1, 0x34($s0)
/* D76C 8000CB6C 356C0010 */  ori        $t4, $t3, 0x10
/* D770 8000CB70 A60C0004 */  sh         $t4, 0x4($s0)
/* D774 8000CB74 A2030037 */  sb         $v1, 0x37($s0)
/* D778 8000CB78 A2020035 */  sb         $v0, 0x35($s0)
/* D77C 8000CB7C 10000008 */  b          .L8000CBA0
/* D780 8000CB80 A2020036 */   sb        $v0, 0x36($s0)
/* D784 8000CB84 960D0004 */  lhu        $t5, 0x4($s0)
.L8000CB88:
/* D788 8000CB88 A2020034 */  sb         $v0, 0x34($s0)
/* D78C 8000CB8C A2020035 */  sb         $v0, 0x35($s0)
/* D790 8000CB90 35AE0010 */  ori        $t6, $t5, 0x10
/* D794 8000CB94 A60E0004 */  sh         $t6, 0x4($s0)
/* D798 8000CB98 A2030036 */  sb         $v1, 0x36($s0)
/* D79C 8000CB9C A2030037 */  sb         $v1, 0x37($s0)
.L8000CBA0:
/* D7A0 8000CBA0 8FBF0024 */  lw         $ra, 0x24($sp)
/* D7A4 8000CBA4 8FB00020 */  lw         $s0, 0x20($sp)
/* D7A8 8000CBA8 27BD0080 */  addiu      $sp, $sp, 0x80
/* D7AC 8000CBAC 03E00008 */  jr         $ra
/* D7B0 8000CBB0 00000000 */   nop

glabel func_8000CBB4
/* D7B4 8000CBB4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D7B8 8000CBB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D7BC 8000CBBC 0C002744 */  jal        func_80009D10
/* D7C0 8000CBC0 00000000 */   nop
/* D7C4 8000CBC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D7C8 8000CBC8 27BD0018 */  addiu      $sp, $sp, 0x18
/* D7CC 8000CBCC 03E00008 */  jr         $ra
/* D7D0 8000CBD0 00000000 */   nop

glabel func_8000CBD4
/* D7D4 8000CBD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D7D8 8000CBD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D7DC 8000CBDC 0C002744 */  jal        func_80009D10
/* D7E0 8000CBE0 00000000 */   nop
/* D7E4 8000CBE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D7E8 8000CBE8 27BD0018 */  addiu      $sp, $sp, 0x18
/* D7EC 8000CBEC 03E00008 */  jr         $ra
/* D7F0 8000CBF0 00000000 */   nop

glabel func_8000CBF4
/* D7F4 8000CBF4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D7F8 8000CBF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D7FC 8000CBFC 0C002744 */  jal        func_80009D10
/* D800 8000CC00 00000000 */   nop
/* D804 8000CC04 8FBF0014 */  lw         $ra, 0x14($sp)
/* D808 8000CC08 27BD0018 */  addiu      $sp, $sp, 0x18
/* D80C 8000CC0C 03E00008 */  jr         $ra
/* D810 8000CC10 00000000 */   nop

glabel func_8000CC14
/* D814 8000CC14 27BDFF88 */  addiu      $sp, $sp, -0x78
/* D818 8000CC18 AFA60080 */  sw         $a2, 0x80($sp)
/* D81C 8000CC1C 8FAE0080 */  lw         $t6, 0x80($sp)
/* D820 8000CC20 24010168 */  addiu      $at, $zero, 0x168
/* D824 8000CC24 AFBF0024 */  sw         $ra, 0x24($sp)
/* D828 8000CC28 AFB00020 */  sw         $s0, 0x20($sp)
/* D82C 8000CC2C AFA5007C */  sw         $a1, 0x7C($sp)
/* D830 8000CC30 8DC20000 */  lw         $v0, 0x0($t6)
/* D834 8000CC34 27A60028 */  addiu      $a2, $sp, 0x28
/* D838 8000CC38 00808025 */  or         $s0, $a0, $zero
/* D83C 8000CC3C 0041001B */  divu       $zero, $v0, $at
/* D840 8000CC40 8CA10014 */  lw         $at, 0x14($a1)
/* D844 8000CC44 00001010 */  mfhi       $v0
/* D848 8000CC48 44822000 */  mtc1       $v0, $f4
/* D84C 8000CC4C ACC10000 */  sw         $at, 0x0($a2)
/* D850 8000CC50 8CA90018 */  lw         $t1, 0x18($a1)
/* D854 8000CC54 468021A0 */  cvt.s.w    $f6, $f4
/* D858 8000CC58 240A0004 */  addiu      $t2, $zero, 0x4
/* D85C 8000CC5C ACC90004 */  sw         $t1, 0x4($a2)
/* D860 8000CC60 8CA1001C */  lw         $at, 0x1C($a1)
/* D864 8000CC64 27A40034 */  addiu      $a0, $sp, 0x34
/* D868 8000CC68 00003825 */  or         $a3, $zero, $zero
/* D86C 8000CC6C ACC10008 */  sw         $at, 0x8($a2)
/* D870 8000CC70 8FA5007C */  lw         $a1, 0x7C($sp)
/* D874 8000CC74 E7A60028 */  swc1       $f6, 0x28($sp)
/* D878 8000CC78 AFAA0010 */  sw         $t2, 0x10($sp)
/* D87C 8000CC7C 0C008347 */  jal        func_80020D1C
/* D880 8000CC80 24A50008 */   addiu     $a1, $a1, 0x8
/* D884 8000CC84 960B0004 */  lhu        $t3, 0x4($s0)
/* D888 8000CC88 27A40034 */  addiu      $a0, $sp, 0x34
/* D88C 8000CC8C 2605005C */  addiu      $a1, $s0, 0x5C
/* D890 8000CC90 356C0002 */  ori        $t4, $t3, 0x2
/* D894 8000CC94 0C00907C */  jal        func_800241F0
/* D898 8000CC98 A60C0004 */   sh        $t4, 0x4($s0)
/* D89C 8000CC9C 960D0004 */  lhu        $t5, 0x4($s0)
/* D8A0 8000CCA0 240200FF */  addiu      $v0, $zero, 0xFF
/* D8A4 8000CCA4 A2020034 */  sb         $v0, 0x34($s0)
/* D8A8 8000CCA8 35AE0010 */  ori        $t6, $t5, 0x10
/* D8AC 8000CCAC A60E0004 */  sh         $t6, 0x4($s0)
/* D8B0 8000CCB0 A2020035 */  sb         $v0, 0x35($s0)
/* D8B4 8000CCB4 A2020036 */  sb         $v0, 0x36($s0)
/* D8B8 8000CCB8 A2020037 */  sb         $v0, 0x37($s0)
/* D8BC 8000CCBC 8FBF0024 */  lw         $ra, 0x24($sp)
/* D8C0 8000CCC0 8FB00020 */  lw         $s0, 0x20($sp)
/* D8C4 8000CCC4 27BD0078 */  addiu      $sp, $sp, 0x78
/* D8C8 8000CCC8 03E00008 */  jr         $ra
/* D8CC 8000CCCC 00000000 */   nop

glabel func_8000CCD0
/* D8D0 8000CCD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D8D4 8000CCD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* D8D8 8000CCD8 0C003277 */  jal        func_8000C9DC
/* D8DC 8000CCDC 24070001 */   addiu     $a3, $zero, 0x1
/* D8E0 8000CCE0 8FBF0014 */  lw         $ra, 0x14($sp)
/* D8E4 8000CCE4 27BD0018 */  addiu      $sp, $sp, 0x18
/* D8E8 8000CCE8 03E00008 */  jr         $ra
/* D8EC 8000CCEC 00000000 */   nop

glabel func_8000CCF0
/* D8F0 8000CCF0 3C048014 */  lui        $a0, %hi(D_8013F7A0)
/* D8F4 8000CCF4 2484F7A0 */  addiu      $a0, $a0, %lo(D_8013F7A0)
/* D8F8 8000CCF8 8C830004 */  lw         $v1, 0x4($a0)
/* D8FC 8000CCFC 8C820000 */  lw         $v0, 0x0($a0)
/* D900 8000CD00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D904 8000CD04 AFBF0014 */  sw         $ra, 0x14($sp)
/* D908 8000CD08 10620004 */  beq        $v1, $v0, .L8000CD1C
/* D90C 8000CD0C 240F0003 */   addiu     $t7, $zero, 0x3
/* D910 8000CD10 AC830000 */  sw         $v1, 0x0($a0)
/* D914 8000CD14 A0800010 */  sb         $zero, 0x10($a0)
/* D918 8000CD18 00601025 */  or         $v0, $v1, $zero
.L8000CD1C:
/* D91C 8000CD1C 000270C0 */  sll        $t6, $v0, 3
/* D920 8000CD20 3C038008 */  lui        $v1, %hi(D_800820D0)
/* D924 8000CD24 006E1821 */  addu       $v1, $v1, $t6
/* D928 8000CD28 8C6320D0 */  lw         $v1, %lo(D_800820D0)($v1)
/* D92C 8000CD2C 3C018014 */  lui        $at, %hi(D_8013FF84)
/* D930 8000CD30 10600005 */  beqz       $v1, .L8000CD48
/* D934 8000CD34 00000000 */   nop
/* D938 8000CD38 0060F809 */  jalr       $v1
/* D93C 8000CD3C 00000000 */   nop
/* D940 8000CD40 10000003 */  b          .L8000CD50
/* D944 8000CD44 8FBF0014 */   lw        $ra, 0x14($sp)
.L8000CD48:
/* D948 8000CD48 AC2FFF84 */  sw         $t7, %lo(D_8013FF84)($at)
/* D94C 8000CD4C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000CD50:
/* D950 8000CD50 27BD0018 */  addiu      $sp, $sp, 0x18
/* D954 8000CD54 03E00008 */  jr         $ra
/* D958 8000CD58 00000000 */   nop

glabel func_8000CD5C
/* D95C 8000CD5C 3C0E8014 */  lui        $t6, %hi(D_8013F7A0)
/* D960 8000CD60 8DCEF7A0 */  lw         $t6, %lo(D_8013F7A0)($t6)
/* D964 8000CD64 3C028008 */  lui        $v0, %hi(D_800820D4)
/* D968 8000CD68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D96C 8000CD6C 000E78C0 */  sll        $t7, $t6, 3
/* D970 8000CD70 004F1021 */  addu       $v0, $v0, $t7
/* D974 8000CD74 8C4220D4 */  lw         $v0, %lo(D_800820D4)($v0)
/* D978 8000CD78 AFBF0014 */  sw         $ra, 0x14($sp)
/* D97C 8000CD7C 50400006 */  beql       $v0, $zero, .L8000CD98
/* D980 8000CD80 3C060001 */   lui       $a2, (0x10001 >> 16)
/* D984 8000CD84 0040F809 */  jalr       $v0
/* D988 8000CD88 00000000 */   nop
/* D98C 8000CD8C 10000005 */  b          .L8000CDA4
/* D990 8000CD90 8FBF0014 */   lw        $ra, 0x14($sp)
/* D994 8000CD94 3C060001 */  lui        $a2, (0x10001 >> 16)
.L8000CD98:
/* D998 8000CD98 0C007B1E */  jal        func_8001EC78
/* D99C 8000CD9C 34C60001 */   ori       $a2, $a2, (0x10001 & 0xFFFF)
/* D9A0 8000CDA0 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000CDA4:
/* D9A4 8000CDA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* D9A8 8000CDA8 03E00008 */  jr         $ra
/* D9AC 8000CDAC 00000000 */   nop

glabel func_8000CDB0
/* D9B0 8000CDB0 3C028014 */  lui        $v0, %hi(D_8013F7A0)
/* D9B4 8000CDB4 2442F7A0 */  addiu      $v0, $v0, %lo(D_8013F7A0)
/* D9B8 8000CDB8 AC400008 */  sw         $zero, 0x8($v0)
/* D9BC 8000CDBC AC40000C */  sw         $zero, 0xC($v0)
/* D9C0 8000CDC0 A0400010 */  sb         $zero, 0x10($v0)
/* D9C4 8000CDC4 A0400011 */  sb         $zero, 0x11($v0)
/* D9C8 8000CDC8 03E00008 */  jr         $ra
/* D9CC 8000CDCC A0400012 */   sb        $zero, 0x12($v0)

glabel func_8000CDD0
/* D9D0 8000CDD0 3C028014 */  lui        $v0, %hi(D_8013F7A0)
/* D9D4 8000CDD4 2442F7A0 */  addiu      $v0, $v0, %lo(D_8013F7A0)
/* D9D8 8000CDD8 240EFFFF */  addiu      $t6, $zero, -0x1
/* D9DC 8000CDDC 240F0001 */  addiu      $t7, $zero, 0x1
/* D9E0 8000CDE0 AC4E0008 */  sw         $t6, 0x8($v0)
/* D9E4 8000CDE4 AC40000C */  sw         $zero, 0xC($v0)
/* D9E8 8000CDE8 A04F0010 */  sb         $t7, 0x10($v0)
/* D9EC 8000CDEC A0400011 */  sb         $zero, 0x11($v0)
/* D9F0 8000CDF0 03E00008 */  jr         $ra
/* D9F4 8000CDF4 A0400012 */   sb        $zero, 0x12($v0)

glabel func_8000CDF8
/* D9F8 8000CDF8 3C018014 */  lui        $at, %hi(D_8013F7A4)
/* D9FC 8000CDFC 03E00008 */  jr         $ra
/* DA00 8000CE00 AC24F7A4 */   sw        $a0, %lo(D_8013F7A4)($at)

glabel func_8000CE04
/* DA04 8000CE04 240E0001 */  addiu      $t6, $zero, 0x1
/* DA08 8000CE08 3C018014 */  lui        $at, %hi(D_8013F7B0)
/* DA0C 8000CE0C 03E00008 */  jr         $ra
/* DA10 8000CE10 A02EF7B0 */   sb        $t6, %lo(D_8013F7B0)($at)

glabel func_8000CE14
/* DA14 8000CE14 3C0E8014 */  lui        $t6, %hi(D_8013F7A0)
/* DA18 8000CE18 8DCEF7A0 */  lw         $t6, %lo(D_8013F7A0)($t6)
/* DA1C 8000CE1C 00001825 */  or         $v1, $zero, $zero
/* DA20 8000CE20 148E0003 */  bne        $a0, $t6, .L8000CE30
/* DA24 8000CE24 00000000 */   nop
/* DA28 8000CE28 03E00008 */  jr         $ra
/* DA2C 8000CE2C 24020001 */   addiu     $v0, $zero, 0x1
.L8000CE30:
/* DA30 8000CE30 03E00008 */  jr         $ra
/* DA34 8000CE34 00601025 */   or        $v0, $v1, $zero
/* DA38 8000CE38 00000000 */  nop
/* DA3C 8000CE3C 00000000 */  nop
