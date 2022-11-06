glabel func_8003ED00
/* 3F900 8003ED00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3F904 8003ED04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F908 8003ED08 AFA40028 */  sw         $a0, 0x28($sp)
/* 3F90C 8003ED0C AFA5002C */  sw         $a1, 0x2C($sp)
/* 3F910 8003ED10 AFA60030 */  sw         $a2, 0x30($sp)
/* 3F914 8003ED14 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3F918 8003ED18 AFAF0024 */  sw         $t7, 0x24($sp)
/* 3F91C 8003ED1C 8CB90000 */  lw         $t9, 0x0($a1)
/* 3F920 8003ED20 AFB90020 */  sw         $t9, 0x20($sp)
/* 3F924 8003ED24 8CC90000 */  lw         $t1, 0x0($a2)
/* 3F928 8003ED28 0C015E4C */  jal        func_80057930
/* 3F92C 8003ED2C AFA9001C */   sw        $t1, 0x1C($sp)
/* 3F930 8003ED30 0C015C80 */  jal        func_80057200
/* 3F934 8003ED34 00000000 */   nop
/* 3F938 8003ED38 0C015CC2 */  jal        func_80057308
/* 3F93C 8003ED3C 00000000 */   nop
/* 3F940 8003ED40 0C0126E8 */  jal        func_80049BA0
/* 3F944 8003ED44 27A40024 */   addiu     $a0, $sp, 0x24
/* 3F948 8003ED48 0C0128D9 */  jal        func_8004A364
/* 3F94C 8003ED4C 27A40024 */   addiu     $a0, $sp, 0x24
/* 3F950 8003ED50 3C0A8009 */  lui        $t2, %hi(D_8008F290)
/* 3F954 8003ED54 8D4AF290 */  lw         $t2, %lo(D_8008F290)($t2)
/* 3F958 8003ED58 27A40024 */  addiu      $a0, $sp, 0x24
/* 3F95C 8003ED5C 2D410006 */  sltiu      $at, $t2, 0x6
/* 3F960 8003ED60 10200017 */  beqz       $at, .L8003EDC0
/* 3F964 8003ED64 000A5080 */   sll       $t2, $t2, 2
/* 3F968 8003ED68 3C018009 */  lui        $at, %hi(jtbl_80097668_main)
/* 3F96C 8003ED6C 002A0821 */  addu       $at, $at, $t2
/* 3F970 8003ED70 8C2A7668 */  lw         $t2, %lo(jtbl_80097668_main)($at)
/* 3F974 8003ED74 01400008 */  jr         $t2
/* 3F978 8003ED78 00000000 */   nop
glabel L8003ED7C
/* 3F97C 8003ED7C 27A50020 */  addiu      $a1, $sp, 0x20
/* 3F980 8003ED80 0C00FB7F */  jal        func_8003EDFC
/* 3F984 8003ED84 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3F988 8003ED88 1000000D */  b          .L8003EDC0
/* 3F98C 8003ED8C 00000000 */   nop
glabel L8003ED90
/* 3F990 8003ED90 27A50020 */  addiu      $a1, $sp, 0x20
/* 3F994 8003ED94 0C00FB7F */  jal        func_8003EDFC
/* 3F998 8003ED98 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3F99C 8003ED9C 10000008 */  b          .L8003EDC0
/* 3F9A0 8003EDA0 00000000 */   nop
glabel L8003EDA4
/* 3F9A4 8003EDA4 27A50020 */  addiu      $a1, $sp, 0x20
/* 3F9A8 8003EDA8 0C0145C8 */  jal        func_80051720
/* 3F9AC 8003EDAC 27A6001C */   addiu     $a2, $sp, 0x1C
/* 3F9B0 8003EDB0 10000003 */  b          .L8003EDC0
/* 3F9B4 8003EDB4 00000000 */   nop
glabel L8003EDB8
/* 3F9B8 8003EDB8 0C012A24 */  jal        func_8004A890
/* 3F9BC 8003EDBC 00000000 */   nop
.L8003EDC0:
/* 3F9C0 8003EDC0 0C015EA8 */  jal        func_80057AA0
/* 3F9C4 8003EDC4 00000000 */   nop
/* 3F9C8 8003EDC8 8FAB0024 */  lw         $t3, 0x24($sp)
/* 3F9CC 8003EDCC 8FAC0028 */  lw         $t4, 0x28($sp)
/* 3F9D0 8003EDD0 AD8B0000 */  sw         $t3, 0x0($t4)
/* 3F9D4 8003EDD4 8FAE002C */  lw         $t6, 0x2C($sp)
/* 3F9D8 8003EDD8 8FAD0020 */  lw         $t5, 0x20($sp)
/* 3F9DC 8003EDDC ADCD0000 */  sw         $t5, 0x0($t6)
/* 3F9E0 8003EDE0 8FB80030 */  lw         $t8, 0x30($sp)
/* 3F9E4 8003EDE4 8FAF001C */  lw         $t7, 0x1C($sp)
/* 3F9E8 8003EDE8 AF0F0000 */  sw         $t7, 0x0($t8)
/* 3F9EC 8003EDEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F9F0 8003EDF0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3F9F4 8003EDF4 03E00008 */  jr         $ra
/* 3F9F8 8003EDF8 00000000 */   nop
