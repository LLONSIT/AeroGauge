.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000E090
/* EC90 8000E090 3C0E8008 */  lui        $t6, %hi(D_80082170)
/* EC94 8000E094 8DCE2170 */  lw         $t6, %lo(D_80082170)($t6)
/* EC98 8000E098 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EC9C 8000E09C AFBF0014 */  sw         $ra, 0x14($sp)
/* ECA0 8000E0A0 15C00020 */  bnez       $t6, .L8000E124
/* ECA4 8000E0A4 00000000 */   nop
/* ECA8 8000E0A8 0C000184 */  jal        func_80000610
/* ECAC 8000E0AC 00002025 */   or        $a0, $zero, $zero
/* ECB0 8000E0B0 0C00575C */  jal        func_80015D70
/* ECB4 8000E0B4 00000000 */   nop
/* ECB8 8000E0B8 3C03801A */  lui        $v1, %hi(D_8019EDDC)
/* ECBC 8000E0BC 2463EDDC */  addiu      $v1, $v1, %lo(D_8019EDDC)
/* ECC0 8000E0C0 240F00FF */  addiu      $t7, $zero, 0xFF
/* ECC4 8000E0C4 A06F0003 */  sb         $t7, 0x3($v1)
/* ECC8 8000E0C8 A0600000 */  sb         $zero, 0x0($v1)
/* ECCC 8000E0CC A0600001 */  sb         $zero, 0x1($v1)
/* ECD0 8000E0D0 A0600002 */  sb         $zero, 0x2($v1)
/* ECD4 8000E0D4 24186E14 */  addiu      $t8, $zero, 0x6E14
/* ECD8 8000E0D8 3C018011 */  lui        $at, %hi(D_80109BDC)
/* ECDC 8000E0DC A4389BDC */  sh         $t8, %lo(D_80109BDC)($at)
/* ECE0 8000E0E0 00002025 */  or         $a0, $zero, $zero
/* ECE4 8000E0E4 0C000170 */  jal        func_800005C0
/* ECE8 8000E0E8 00002825 */   or        $a1, $zero, $zero
/* ECEC 8000E0EC 3C018008 */  lui        $at, %hi(D_80082164)
/* ECF0 8000E0F0 3C038008 */  lui        $v1, %hi(D_8008216C)
/* ECF4 8000E0F4 AC202164 */  sw         $zero, %lo(D_80082164)($at)
/* ECF8 8000E0F8 2463216C */  addiu      $v1, $v1, %lo(D_8008216C)
/* ECFC 8000E0FC AC600000 */  sw         $zero, 0x0($v1)
/* ED00 8000E100 3C018008 */  lui        $at, %hi(D_80082168)
/* ED04 8000E104 AC202168 */  sw         $zero, %lo(D_80082168)($at)
/* ED08 8000E108 3C088008 */  lui        $t0, %hi(D_80082168)
/* ED0C 8000E10C 8D082168 */  lw         $t0, %lo(D_80082168)($t0)
/* ED10 8000E110 3C018008 */  lui        $at, %hi(D_80082160)
/* ED14 8000E114 24090001 */  addiu      $t1, $zero, 0x1
/* ED18 8000E118 AC282160 */  sw         $t0, %lo(D_80082160)($at)
/* ED1C 8000E11C 3C018008 */  lui        $at, %hi(D_80082170)
/* ED20 8000E120 AC292170 */  sw         $t1, %lo(D_80082170)($at)
.L8000E124:
/* ED24 8000E124 0C002518 */  jal        func_80009460
/* ED28 8000E128 00002025 */   or        $a0, $zero, $zero
/* ED2C 8000E12C 3C038008 */  lui        $v1, %hi(D_8008216C)
/* ED30 8000E130 3C048008 */  lui        $a0, %hi(D_80082168)
/* ED34 8000E134 24842168 */  addiu      $a0, $a0, %lo(D_80082168)
/* ED38 8000E138 10400004 */  beqz       $v0, .L8000E14C
/* ED3C 8000E13C 2463216C */   addiu     $v1, $v1, %lo(D_8008216C)
/* ED40 8000E140 240A0001 */  addiu      $t2, $zero, 0x1
/* ED44 8000E144 3C018008 */  lui        $at, %hi(D_80082164)
/* ED48 8000E148 AC2A2164 */  sw         $t2, %lo(D_80082164)($at)
.L8000E14C:
/* ED4C 8000E14C 8C820000 */  lw         $v0, 0x0($a0)
/* ED50 8000E150 240103CF */  addiu      $at, $zero, 0x3CF
/* ED54 8000E154 3C0D8008 */  lui        $t5, %hi(D_80082164)
/* ED58 8000E158 14410004 */  bne        $v0, $at, .L8000E16C
/* ED5C 8000E15C 3C0E8008 */   lui       $t6, %hi(D_80082160)
/* ED60 8000E160 AC800000 */  sw         $zero, 0x0($a0)
/* ED64 8000E164 AC600000 */  sw         $zero, 0x0($v1)
/* ED68 8000E168 00001025 */  or         $v0, $zero, $zero
.L8000E16C:
/* ED6C 8000E16C 2401028A */  addiu      $at, $zero, 0x28A
/* ED70 8000E170 14410004 */  bne        $v0, $at, .L8000E184
/* ED74 8000E174 00002825 */   or        $a1, $zero, $zero
/* ED78 8000E178 8C6B0000 */  lw         $t3, 0x0($v1)
/* ED7C 8000E17C 256C0001 */  addiu      $t4, $t3, 0x1
/* ED80 8000E180 AC6C0000 */  sw         $t4, 0x0($v1)
.L8000E184:
/* ED84 8000E184 8DAD2164 */  lw         $t5, %lo(D_80082164)($t5)
/* ED88 8000E188 00003025 */  or         $a2, $zero, $zero
/* ED8C 8000E18C 55A00005 */  bnel       $t5, $zero, .L8000E1A4
/* ED90 8000E190 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* ED94 8000E194 8DCE2160 */  lw         $t6, %lo(D_80082160)($t6)
/* ED98 8000E198 29C10777 */  slti       $at, $t6, 0x777
/* ED9C 8000E19C 14200015 */  bnez       $at, .L8000E1F4
/* EDA0 8000E1A0 3C013F00 */   lui       $at, (0x3F000000 >> 16)
.L8000E1A4:
/* EDA4 8000E1A4 44816000 */  mtc1       $at, $f12
/* EDA8 8000E1A8 0C00122C */  jal        func_800048B0
/* EDAC 8000E1AC 24076E14 */   addiu     $a3, $zero, 0x6E14
/* EDB0 8000E1B0 50400011 */  beql       $v0, $zero, .L8000E1F8
/* EDB4 8000E1B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* EDB8 8000E1B8 0C000184 */  jal        func_80000610
/* EDBC 8000E1BC 00002025 */   or        $a0, $zero, $zero
/* EDC0 8000E1C0 0C00337E */  jal        func_8000CDF8
/* EDC4 8000E1C4 00002025 */   or        $a0, $zero, $zero
/* EDC8 8000E1C8 3C0F8008 */  lui        $t7, %hi(D_80082164)
/* EDCC 8000E1CC 8DEF2164 */  lw         $t7, %lo(D_80082164)($t7)
/* EDD0 8000E1D0 3C018008 */  lui        $at, %hi(D_80082170)
/* EDD4 8000E1D4 AC202170 */  sw         $zero, %lo(D_80082170)($at)
/* EDD8 8000E1D8 11E00004 */  beqz       $t7, .L8000E1EC
/* EDDC 8000E1DC 24180003 */   addiu     $t8, $zero, 0x3
/* EDE0 8000E1E0 3C018014 */  lui        $at, %hi(D_8013FF84)
/* EDE4 8000E1E4 10000003 */  b          .L8000E1F4
/* EDE8 8000E1E8 AC38FF84 */   sw        $t8, %lo(D_8013FF84)($at)
.L8000E1EC:
/* EDEC 8000E1EC 0C009968 */  jal        func_800265A0
/* EDF0 8000E1F0 00000000 */   nop
.L8000E1F4:
/* EDF4 8000E1F4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8000E1F8:
/* EDF8 8000E1F8 27BD0018 */  addiu      $sp, $sp, 0x18
/* EDFC 8000E1FC 03E00008 */  jr         $ra
/* EE00 8000E200 00000000 */   nop

glabel func_8000E204
/* EE04 8000E204 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* EE08 8000E208 AFBF001C */  sw         $ra, 0x1C($sp)
/* EE0C 8000E20C AFA5003C */  sw         $a1, 0x3C($sp)
/* EE10 8000E210 AFA60040 */  sw         $a2, 0x40($sp)
/* EE14 8000E214 AFA70044 */  sw         $a3, 0x44($sp)
/* EE18 8000E218 8CAF0000 */  lw         $t7, 0x0($a1)
/* EE1C 8000E21C 27A50034 */  addiu      $a1, $sp, 0x34
/* EE20 8000E220 0C007B6F */  jal        func_8001EDBC
/* EE24 8000E224 AFAF0034 */   sw        $t7, 0x34($sp)
/* EE28 8000E228 3C088008 */  lui        $t0, %hi(D_80082168)
/* EE2C 8000E22C 8D082168 */  lw         $t0, %lo(D_80082168)($t0)
/* EE30 8000E230 3C038008 */  lui        $v1, %hi(D_8008217C)
/* EE34 8000E234 2405000A */  addiu      $a1, $zero, 0xA
/* EE38 8000E238 15000022 */  bnez       $t0, .L8000E2C4
/* EE3C 8000E23C 3C068008 */   lui       $a2, %hi(D_80082160)
/* EE40 8000E240 9063217C */  lbu        $v1, %lo(D_8008217C)($v1)
/* EE44 8000E244 3C018008 */  lui        $at, %hi(D_80082180)
/* EE48 8000E248 A0202180 */  sb         $zero, %lo(D_80082180)($at)
/* EE4C 8000E24C 24630001 */  addiu      $v1, $v1, 0x1
/* EE50 8000E250 307800FF */  andi       $t8, $v1, 0xFF
/* EE54 8000E254 14B80002 */  bne        $a1, $t8, .L8000E260
/* EE58 8000E258 03001825 */   or        $v1, $t8, $zero
/* EE5C 8000E25C 00001825 */  or         $v1, $zero, $zero
.L8000E260:
/* EE60 8000E260 3C198009 */  lui        $t9, %hi(D_8008F29C)
/* EE64 8000E264 9339F29C */  lbu        $t9, %lo(D_8008F29C)($t9)
/* EE68 8000E268 3C048009 */  lui        $a0, %hi(D_8008B4A8)
/* EE6C 8000E26C 240D0001 */  addiu      $t5, $zero, 0x1
/* EE70 8000E270 17200011 */  bnez       $t9, .L8000E2B8
/* EE74 8000E274 3C018008 */   lui       $at, %hi(D_80082178)
/* EE78 8000E278 8C84B4A8 */  lw         $a0, %lo(D_8008B4A8)($a0)
/* EE7C 8000E27C 00601025 */  or         $v0, $v1, $zero
/* EE80 8000E280 00044D82 */  srl        $t1, $a0, 22
/* EE84 8000E284 01202025 */  or         $a0, $t1, $zero
.L8000E288:
/* EE88 8000E288 00445007 */  srav       $t2, $a0, $v0
/* EE8C 8000E28C 314B0001 */  andi       $t3, $t2, 0x1
/* EE90 8000E290 15600009 */  bnez       $t3, .L8000E2B8
/* EE94 8000E294 00000000 */   nop
.L8000E298:
/* EE98 8000E298 24630001 */  addiu      $v1, $v1, 0x1
/* EE9C 8000E29C 306200FF */  andi       $v0, $v1, 0xFF
/* EEA0 8000E2A0 14A2FFF9 */  bne        $a1, $v0, .L8000E288
/* EEA4 8000E2A4 00401825 */   or        $v1, $v0, $zero
/* EEA8 8000E2A8 00045007 */  srav       $t2, $a0, $zero
/* EEAC 8000E2AC 314B0001 */  andi       $t3, $t2, 0x1
/* EEB0 8000E2B0 1160FFF9 */  beqz       $t3, .L8000E298
/* EEB4 8000E2B4 00001825 */   or        $v1, $zero, $zero
.L8000E2B8:
/* EEB8 8000E2B8 A02D2178 */  sb         $t5, %lo(D_80082178)($at)
/* EEBC 8000E2BC 3C018008 */  lui        $at, %hi(D_8008217C)
/* EEC0 8000E2C0 A023217C */  sb         $v1, %lo(D_8008217C)($at)
.L8000E2C4:
/* EEC4 8000E2C4 8CC62160 */  lw         $a2, %lo(D_80082160)($a2)
/* EEC8 8000E2C8 3C038008 */  lui        $v1, %hi(D_8008217C)
/* EECC 8000E2CC 9063217C */  lbu        $v1, %lo(D_8008217C)($v1)
/* EED0 8000E2D0 14C00003 */  bnez       $a2, .L8000E2E0
/* EED4 8000E2D4 2405000A */   addiu     $a1, $zero, 0xA
/* EED8 8000E2D8 3C018008 */  lui        $at, %hi(D_80082174)
/* EEDC 8000E2DC A0202174 */  sb         $zero, %lo(D_80082174)($at)
.L8000E2E0:
/* EEE0 8000E2E0 3C018008 */  lui        $at, %hi(D_8008217C)
/* EEE4 8000E2E4 A023217C */  sb         $v1, %lo(D_8008217C)($at)
/* EEE8 8000E2E8 29010381 */  slti       $at, $t0, 0x381
/* EEEC 8000E2EC 10200041 */  beqz       $at, .L8000E3F4
/* EEF0 8000E2F0 3C028008 */   lui       $v0, %hi(D_8008216C)
/* EEF4 8000E2F4 2442216C */  addiu      $v0, $v0, %lo(D_8008216C)
/* EEF8 8000E2F8 8C470000 */  lw         $a3, 0x0($v0)
/* EEFC 8000E2FC 3C0E8008 */  lui        $t6, %hi(D_80082180)
/* EF00 8000E300 27A40034 */  addiu      $a0, $sp, 0x34
/* EF04 8000E304 28E10071 */  slti       $at, $a3, 0x71
/* EF08 8000E308 14200029 */  bnez       $at, .L8000E3B0
/* EF0C 8000E30C 3C0D8008 */   lui       $t5, %hi(D_80082180)
/* EF10 8000E310 AC400000 */  sw         $zero, 0x0($v0)
/* EF14 8000E314 91CE2180 */  lbu        $t6, %lo(D_80082180)($t6)
/* EF18 8000E318 3C018008 */  lui        $at, %hi(D_80082180)
/* EF1C 8000E31C 3C048009 */  lui        $a0, %hi(D_8008F29C)
/* EF20 8000E320 25CF0001 */  addiu      $t7, $t6, 0x1
/* EF24 8000E324 A02F2180 */  sb         $t7, %lo(D_80082180)($at)
/* EF28 8000E328 31F800FF */  andi       $t8, $t7, 0xFF
/* EF2C 8000E32C 2B010004 */  slti       $at, $t8, 0x4
/* EF30 8000E330 14200003 */  bnez       $at, .L8000E340
/* EF34 8000E334 9084F29C */   lbu       $a0, %lo(D_8008F29C)($a0)
/* EF38 8000E338 3C018008 */  lui        $at, %hi(D_80082180)
/* EF3C 8000E33C A0202180 */  sb         $zero, %lo(D_80082180)($at)
.L8000E340:
/* EF40 8000E340 24630001 */  addiu      $v1, $v1, 0x1
/* EF44 8000E344 307900FF */  andi       $t9, $v1, 0xFF
/* EF48 8000E348 2B21000A */  slti       $at, $t9, 0xA
/* EF4C 8000E34C 14200002 */  bnez       $at, .L8000E358
/* EF50 8000E350 03201825 */   or        $v1, $t9, $zero
/* EF54 8000E354 00001825 */  or         $v1, $zero, $zero
.L8000E358:
/* EF58 8000E358 3C018008 */  lui        $at, %hi(D_8008217C)
/* EF5C 8000E35C 14800025 */  bnez       $a0, .L8000E3F4
/* EF60 8000E360 A023217C */   sb        $v1, %lo(D_8008217C)($at)
/* EF64 8000E364 3C048009 */  lui        $a0, %hi(D_8008B4A8)
/* EF68 8000E368 8C84B4A8 */  lw         $a0, %lo(D_8008B4A8)($a0)
/* EF6C 8000E36C 00601025 */  or         $v0, $v1, $zero
/* EF70 8000E370 3C018008 */  lui        $at, %hi(D_8008217C)
/* EF74 8000E374 00044D82 */  srl        $t1, $a0, 22
/* EF78 8000E378 01202025 */  or         $a0, $t1, $zero
.L8000E37C:
/* EF7C 8000E37C 00445007 */  srav       $t2, $a0, $v0
/* EF80 8000E380 314B0001 */  andi       $t3, $t2, 0x1
/* EF84 8000E384 51600004 */  beql       $t3, $zero, .L8000E398
/* EF88 8000E388 24630001 */   addiu     $v1, $v1, 0x1
/* EF8C 8000E38C 10000019 */  b          .L8000E3F4
/* EF90 8000E390 A023217C */   sb        $v1, %lo(D_8008217C)($at)
/* EF94 8000E394 24630001 */  addiu      $v1, $v1, 0x1
.L8000E398:
/* EF98 8000E398 306200FF */  andi       $v0, $v1, 0xFF
/* EF9C 8000E39C 14A2FFF7 */  bne        $a1, $v0, .L8000E37C
/* EFA0 8000E3A0 00401825 */   or        $v1, $v0, $zero
/* EFA4 8000E3A4 00001825 */  or         $v1, $zero, $zero
/* EFA8 8000E3A8 1000FFF4 */  b          .L8000E37C
/* EFAC 8000E3AC 00001025 */   or        $v0, $zero, $zero
.L8000E3B0:
/* EFB0 8000E3B0 91AD2180 */  lbu        $t5, %lo(D_80082180)($t5)
/* EFB4 8000E3B4 3C018008 */  lui        $at, %hi(D_8008217C)
/* EFB8 8000E3B8 A023217C */  sb         $v1, %lo(D_8008217C)($at)
/* EFBC 8000E3BC 8FA50040 */  lw         $a1, 0x40($sp)
/* EFC0 8000E3C0 8FA60044 */  lw         $a2, 0x44($sp)
/* EFC4 8000E3C4 AFA30010 */  sw         $v1, 0x10($sp)
/* EFC8 8000E3C8 0C00390A */  jal        func_8000E428
/* EFCC 8000E3CC AFAD0014 */   sw        $t5, 0x14($sp)
/* EFD0 8000E3D0 3C028008 */  lui        $v0, %hi(D_8008216C)
/* EFD4 8000E3D4 2442216C */  addiu      $v0, $v0, %lo(D_8008216C)
/* EFD8 8000E3D8 8C4E0000 */  lw         $t6, 0x0($v0)
/* EFDC 8000E3DC 3C088008 */  lui        $t0, %hi(D_80082168)
/* EFE0 8000E3E0 3C068008 */  lui        $a2, %hi(D_80082160)
/* EFE4 8000E3E4 25CF0001 */  addiu      $t7, $t6, 0x1
/* EFE8 8000E3E8 AC4F0000 */  sw         $t7, 0x0($v0)
/* EFEC 8000E3EC 8CC62160 */  lw         $a2, %lo(D_80082160)($a2)
/* EFF0 8000E3F0 8D082168 */  lw         $t0, %lo(D_80082168)($t0)
.L8000E3F4:
/* EFF4 8000E3F4 25180001 */  addiu      $t8, $t0, 0x1
/* EFF8 8000E3F8 3C018008 */  lui        $at, %hi(D_80082168)
/* EFFC 8000E3FC 8FA90034 */  lw         $t1, 0x34($sp)
/* F000 8000E400 8FAA003C */  lw         $t2, 0x3C($sp)
/* F004 8000E404 AC382168 */  sw         $t8, %lo(D_80082168)($at)
/* F008 8000E408 3C018008 */  lui        $at, %hi(D_80082160)
/* F00C 8000E40C 24D90001 */  addiu      $t9, $a2, 0x1
/* F010 8000E410 AC392160 */  sw         $t9, %lo(D_80082160)($at)
/* F014 8000E414 AD490000 */  sw         $t1, 0x0($t2)
/* F018 8000E418 8FBF001C */  lw         $ra, 0x1C($sp)
/* F01C 8000E41C 27BD0038 */  addiu      $sp, $sp, 0x38
/* F020 8000E420 03E00008 */  jr         $ra
/* F024 8000E424 00000000 */   nop

glabel func_8000E428
/* F028 8000E428 44801000 */  mtc1       $zero, $f2
/* F02C 8000E42C 3C018014 */  lui        $at, %hi(D_8013F860)
/* F030 8000E430 3C0E8008 */  lui        $t6, %hi(D_80082168)
/* F034 8000E434 E422F860 */  swc1       $f2, %lo(D_8013F860)($at)
/* F038 8000E438 E422F864 */  swc1       $f2, %lo(D_8013F864)($at)
/* F03C 8000E43C 8DCE2168 */  lw         $t6, %lo(D_80082168)($t6)
/* F040 8000E440 27BDFEB8 */  addiu      $sp, $sp, -0x148
/* F044 8000E444 3C018014 */  lui        $at, %hi(D_8013F868)
/* F048 8000E448 E422F868 */  swc1       $f2, %lo(D_8013F868)($at)
/* F04C 8000E44C 24010380 */  addiu      $at, $zero, 0x380
/* F050 8000E450 AFBF0034 */  sw         $ra, 0x34($sp)
/* F054 8000E454 AFA40148 */  sw         $a0, 0x148($sp)
/* F058 8000E458 AFA5014C */  sw         $a1, 0x14C($sp)
/* F05C 8000E45C 15C10006 */  bne        $t6, $at, .L8000E478
/* F060 8000E460 AFA60150 */   sw        $a2, 0x150($sp)
/* F064 8000E464 3C028008 */  lui        $v0, %hi(D_80082174)
/* F068 8000E468 24422174 */  addiu      $v0, $v0, %lo(D_80082174)
/* F06C 8000E46C 904F0000 */  lbu        $t7, 0x0($v0)
/* F070 8000E470 39F80001 */  xori       $t8, $t7, 0x1
/* F074 8000E474 A0580000 */  sb         $t8, 0x0($v0)
.L8000E478:
/* F078 8000E478 3C028008 */  lui        $v0, %hi(D_80082174)
/* F07C 8000E47C 24422174 */  addiu      $v0, $v0, %lo(D_80082174)
/* F080 8000E480 90590000 */  lbu        $t9, 0x0($v0)
/* F084 8000E484 240A0001 */  addiu      $t2, $zero, 0x1
/* F088 8000E488 57200004 */  bnel       $t9, $zero, .L8000E49C
/* F08C 8000E48C A3AA0079 */   sb        $t2, 0x79($sp)
/* F090 8000E490 10000002 */  b          .L8000E49C
/* F094 8000E494 A3A00079 */   sb        $zero, 0x79($sp)
/* F098 8000E498 A3AA0079 */  sb         $t2, 0x79($sp)
.L8000E49C:
/* F09C 8000E49C 93A2015F */  lbu        $v0, 0x15F($sp)
/* F0A0 8000E4A0 24010001 */  addiu      $at, $zero, 0x1
/* F0A4 8000E4A4 3C048008 */  lui        $a0, (0x80080000 >> 16)
/* F0A8 8000E4A8 1040000A */  beqz       $v0, .L8000E4D4
/* F0AC 8000E4AC 00000000 */   nop
/* F0B0 8000E4B0 10410158 */  beq        $v0, $at, .L8000EA14
/* F0B4 8000E4B4 24010002 */   addiu     $at, $zero, 0x2
/* F0B8 8000E4B8 104100D2 */  beq        $v0, $at, .L8000E804
/* F0BC 8000E4BC 3C048008 */   lui       $a0, %hi(D_80082178)
/* F0C0 8000E4C0 24050003 */  addiu      $a1, $zero, 0x3
/* F0C4 8000E4C4 10450218 */  beq        $v0, $a1, .L8000ED28
/* F0C8 8000E4C8 93AB015B */   lbu       $t3, 0x15B($sp)
/* F0CC 8000E4CC 100002BB */  b          .L8000EFBC
/* F0D0 8000E4D0 AFAB003C */   sw        $t3, 0x3C($sp)
.L8000E4D4:
/* F0D4 8000E4D4 14E00034 */  bnez       $a3, .L8000E5A8
/* F0D8 8000E4D8 3C038008 */   lui       $v1, %hi(D_80082178)
/* F0DC 8000E4DC 24632178 */  addiu      $v1, $v1, %lo(D_80082178)
/* F0E0 8000E4E0 906C0000 */  lbu        $t4, 0x0($v1)
/* F0E4 8000E4E4 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* F0E8 8000E4E8 44810000 */  mtc1       $at, $f0
/* F0EC 8000E4EC 398D0001 */  xori       $t5, $t4, 0x1
/* F0F0 8000E4F0 A06D0000 */  sb         $t5, 0x0($v1)
/* F0F4 8000E4F4 3C018008 */  lui        $at, %hi(D_80082198)
/* F0F8 8000E4F8 240E0280 */  addiu      $t6, $zero, 0x280
/* F0FC 8000E4FC A42E2198 */  sh         $t6, %lo(D_80082198)($at)
/* F100 8000E500 3C018008 */  lui        $at, %hi(D_800821A4)
/* F104 8000E504 240F00B4 */  addiu      $t7, $zero, 0xB4
/* F108 8000E508 A42F21A4 */  sh         $t7, %lo(D_800821A4)($at)
/* F10C 8000E50C 3C018008 */  lui        $at, %hi(D_80082188)
/* F110 8000E510 E4202188 */  swc1       $f0, %lo(D_80082188)($at)
/* F114 8000E514 90780000 */  lbu        $t8, 0x0($v1)
/* F118 8000E518 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* F11C 8000E51C 2406FF9C */  addiu      $a2, $zero, -0x64
/* F120 8000E520 57000013 */  bnel       $t8, $zero, .L8000E570
/* F124 8000E524 44810000 */   mtc1      $at, $f0
/* F128 8000E528 3C018014 */  lui        $at, %hi(D_8013F850)
/* F12C 8000E52C E420F850 */  swc1       $f0, %lo(D_8013F850)($at)
/* F130 8000E530 E422F854 */  swc1       $f2, %lo(D_8013F854)($at)
/* F134 8000E534 3C018014 */  lui        $at, %hi(D_8013F858)
/* F138 8000E538 E422F858 */  swc1       $f2, %lo(D_8013F858)($at)
/* F13C 8000E53C 3C018014 */  lui        $at, %hi(D_8013F870)
/* F140 8000E540 E422F870 */  swc1       $f2, %lo(D_8013F870)($at)
/* F144 8000E544 3C01C2B4 */  lui        $at, (0xC2B40000 >> 16)
/* F148 8000E548 44812000 */  mtc1       $at, $f4
/* F14C 8000E54C 3C018014 */  lui        $at, %hi(D_8013F874)
/* F150 8000E550 24060190 */  addiu      $a2, $zero, 0x190
/* F154 8000E554 E424F874 */  swc1       $f4, %lo(D_8013F874)($at)
/* F158 8000E558 3C018014 */  lui        $at, %hi(D_8013F878)
/* F15C 8000E55C E422F878 */  swc1       $f2, %lo(D_8013F878)($at)
/* F160 8000E560 3C018008 */  lui        $at, %hi(D_800821A0)
/* F164 8000E564 10000010 */  b          .L8000E5A8
/* F168 8000E568 A42621A0 */   sh        $a2, %lo(D_800821A0)($at)
/* F16C 8000E56C 44810000 */  mtc1       $at, $f0
.L8000E570:
/* F170 8000E570 3C01C2C8 */  lui        $at, (0xC2C80000 >> 16)
/* F174 8000E574 44813000 */  mtc1       $at, $f6
/* F178 8000E578 3C018014 */  lui        $at, %hi(D_8013F854)
/* F17C 8000E57C E422F854 */  swc1       $f2, %lo(D_8013F854)($at)
/* F180 8000E580 E426F850 */  swc1       $f6, %lo(D_8013F850)($at)
/* F184 8000E584 3C018014 */  lui        $at, %hi(D_8013F858)
/* F188 8000E588 E422F858 */  swc1       $f2, %lo(D_8013F858)($at)
/* F18C 8000E58C 3C018014 */  lui        $at, %hi(D_8013F870)
/* F190 8000E590 E422F870 */  swc1       $f2, %lo(D_8013F870)($at)
/* F194 8000E594 E420F874 */  swc1       $f0, %lo(D_8013F874)($at)
/* F198 8000E598 3C018014 */  lui        $at, %hi(D_8013F878)
/* F19C 8000E59C E422F878 */  swc1       $f2, %lo(D_8013F878)($at)
/* F1A0 8000E5A0 3C018008 */  lui        $at, %hi(D_800821A0)
/* F1A4 8000E5A4 A42621A0 */  sh         $a2, %lo(D_800821A0)($at)
.L8000E5A8:
/* F1A8 8000E5A8 3C068008 */  lui        $a2, %hi(D_800821A0)
/* F1AC 8000E5AC 28E10015 */  slti       $at, $a3, 0x15
/* F1B0 8000E5B0 84C621A0 */  lh         $a2, %lo(D_800821A0)($a2)
/* F1B4 8000E5B4 10200072 */  beqz       $at, .L8000E780
/* F1B8 8000E5B8 90842178 */   lbu       $a0, %lo(D_80082178)($a0)
/* F1BC 8000E5BC 14800032 */  bnez       $a0, .L8000E688
/* F1C0 8000E5C0 00000000 */   nop
/* F1C4 8000E5C4 00E70019 */  multu      $a3, $a3
/* F1C8 8000E5C8 3C018014 */  lui        $at, %hi(D_8013F850)
/* F1CC 8000E5CC C428F850 */  lwc1       $f8, %lo(D_8013F850)($at)
/* F1D0 8000E5D0 93A3015B */  lbu        $v1, 0x15B($sp)
/* F1D4 8000E5D4 00001012 */  mflo       $v0
/* F1D8 8000E5D8 44825000 */  mtc1       $v0, $f10
/* F1DC 8000E5DC 0002C840 */  sll        $t9, $v0, 1
/* F1E0 8000E5E0 00D93023 */  subu       $a2, $a2, $t9
/* F1E4 8000E5E4 46805420 */  cvt.s.w    $f16, $f10
/* F1E8 8000E5E8 00065400 */  sll        $t2, $a2, 16
/* F1EC 8000E5EC 000A5C03 */  sra        $t3, $t2, 16
/* F1F0 8000E5F0 2406003C */  addiu      $a2, $zero, 0x3C
/* F1F4 8000E5F4 46104481 */  sub.s      $f18, $f8, $f16
/* F1F8 8000E5F8 E432F850 */  swc1       $f18, %lo(D_8013F850)($at)
/* F1FC 8000E5FC 28610005 */  slti       $at, $v1, 0x5
/* F200 8000E600 1420000F */  bnez       $at, .L8000E640
/* F204 8000E604 28610008 */   slti      $at, $v1, 0x8
/* F208 8000E608 1020000D */  beqz       $at, .L8000E640
/* F20C 8000E60C 3C01C018 */   lui       $at, (0xC0180000 >> 16)
/* F210 8000E610 44813800 */  mtc1       $at, $f7
/* F214 8000E614 44803000 */  mtc1       $zero, $f6
/* F218 8000E618 46009121 */  cvt.d.s    $f4, $f18
/* F21C 8000E61C 3C01C0C0 */  lui        $at, (0xC0C00000 >> 16)
/* F220 8000E620 4626203C */  c.lt.d     $f4, $f6
/* F224 8000E624 00000000 */  nop
/* F228 8000E628 45000010 */  bc1f       .L8000E66C
/* F22C 8000E62C 00000000 */   nop
/* F230 8000E630 44815000 */  mtc1       $at, $f10
/* F234 8000E634 3C018014 */  lui        $at, %hi(D_8013F850)
/* F238 8000E638 1000000C */  b          .L8000E66C
/* F23C 8000E63C E42AF850 */   swc1      $f10, %lo(D_8013F850)($at)
.L8000E640:
/* F240 8000E640 3C018014 */  lui        $at, %hi(D_8013F850)
/* F244 8000E644 C428F850 */  lwc1       $f8, %lo(D_8013F850)($at)
/* F248 8000E648 44809800 */  mtc1       $zero, $f19
/* F24C 8000E64C 44809000 */  mtc1       $zero, $f18
/* F250 8000E650 46004421 */  cvt.d.s    $f16, $f8
/* F254 8000E654 3C018014 */  lui        $at, %hi(D_8013F850)
/* F258 8000E658 4632803C */  c.lt.d     $f16, $f18
/* F25C 8000E65C 00000000 */  nop
/* F260 8000E660 45000002 */  bc1f       .L8000E66C
/* F264 8000E664 00000000 */   nop
/* F268 8000E668 E422F850 */  swc1       $f2, %lo(D_8013F850)($at)
.L8000E66C:
/* F26C 8000E66C 3C018008 */  lui        $at, %hi(D_800821A0)
/* F270 8000E670 A42B21A0 */  sh         $t3, %lo(D_800821A0)($at)
/* F274 8000E674 2961003D */  slti       $at, $t3, 0x3D
/* F278 8000E678 10200041 */  beqz       $at, .L8000E780
/* F27C 8000E67C 3C018008 */   lui       $at, %hi(D_800821A0)
/* F280 8000E680 1000003F */  b          .L8000E780
/* F284 8000E684 A42621A0 */   sh        $a2, %lo(D_800821A0)($at)
.L8000E688:
/* F288 8000E688 00E70019 */  multu      $a3, $a3
/* F28C 8000E68C 3C018014 */  lui        $at, %hi(D_8013F850)
/* F290 8000E690 C424F850 */  lwc1       $f4, %lo(D_8013F850)($at)
/* F294 8000E694 93A3015B */  lbu        $v1, 0x15B($sp)
/* F298 8000E698 00001012 */  mflo       $v0
/* F29C 8000E69C 44823000 */  mtc1       $v0, $f6
/* F2A0 8000E6A0 00026040 */  sll        $t4, $v0, 1
/* F2A4 8000E6A4 00CC3021 */  addu       $a2, $a2, $t4
/* F2A8 8000E6A8 468032A0 */  cvt.s.w    $f10, $f6
/* F2AC 8000E6AC 00066C00 */  sll        $t5, $a2, 16
/* F2B0 8000E6B0 000D7403 */  sra        $t6, $t5, 16
/* F2B4 8000E6B4 2406003C */  addiu      $a2, $zero, 0x3C
/* F2B8 8000E6B8 460A2200 */  add.s      $f8, $f4, $f10
/* F2BC 8000E6BC E428F850 */  swc1       $f8, %lo(D_8013F850)($at)
/* F2C0 8000E6C0 28610005 */  slti       $at, $v1, 0x5
/* F2C4 8000E6C4 1420000F */  bnez       $at, .L8000E704
/* F2C8 8000E6C8 28610008 */   slti      $at, $v1, 0x8
/* F2CC 8000E6CC 1020000D */  beqz       $at, .L8000E704
/* F2D0 8000E6D0 3C014018 */   lui       $at, (0x40180000 >> 16)
/* F2D4 8000E6D4 44818800 */  mtc1       $at, $f17
/* F2D8 8000E6D8 44808000 */  mtc1       $zero, $f16
/* F2DC 8000E6DC 460044A1 */  cvt.d.s    $f18, $f8
/* F2E0 8000E6E0 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* F2E4 8000E6E4 4632803C */  c.lt.d     $f16, $f18
/* F2E8 8000E6E8 00000000 */  nop
/* F2EC 8000E6EC 45000010 */  bc1f       .L8000E730
/* F2F0 8000E6F0 00000000 */   nop
/* F2F4 8000E6F4 44813000 */  mtc1       $at, $f6
/* F2F8 8000E6F8 3C018014 */  lui        $at, %hi(D_8013F850)
/* F2FC 8000E6FC 1000000C */  b          .L8000E730
/* F300 8000E700 E426F850 */   swc1      $f6, %lo(D_8013F850)($at)
.L8000E704:
/* F304 8000E704 3C018014 */  lui        $at, %hi(D_8013F850)
/* F308 8000E708 C42AF850 */  lwc1       $f10, %lo(D_8013F850)($at)
/* F30C 8000E70C 44802800 */  mtc1       $zero, $f5
/* F310 8000E710 44802000 */  mtc1       $zero, $f4
/* F314 8000E714 46005221 */  cvt.d.s    $f8, $f10
/* F318 8000E718 3C018014 */  lui        $at, %hi(D_8013F850)
/* F31C 8000E71C 4628203C */  c.lt.d     $f4, $f8
/* F320 8000E720 00000000 */  nop
/* F324 8000E724 45000002 */  bc1f       .L8000E730
/* F328 8000E728 00000000 */   nop
/* F32C 8000E72C E422F850 */  swc1       $f2, %lo(D_8013F850)($at)
.L8000E730:
/* F330 8000E730 3C018008 */  lui        $at, %hi(D_800821A0)
/* F334 8000E734 A42E21A0 */  sh         $t6, %lo(D_800821A0)($at)
/* F338 8000E738 29C1003C */  slti       $at, $t6, 0x3C
/* F33C 8000E73C 14200002 */  bnez       $at, .L8000E748
/* F340 8000E740 3C018008 */   lui       $at, %hi(D_800821A0)
/* F344 8000E744 A42621A0 */  sh         $a2, %lo(D_800821A0)($at)
.L8000E748:
/* F348 8000E748 28E10038 */  slti       $at, $a3, 0x38
/* F34C 8000E74C 1420000C */  bnez       $at, .L8000E780
/* F350 8000E750 28E10043 */   slti      $at, $a3, 0x43
/* F354 8000E754 1020000A */  beqz       $at, .L8000E780
/* F358 8000E758 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F35C 8000E75C 00420019 */  multu      $v0, $v0
/* F360 8000E760 3C018014 */  lui        $at, %hi(D_8013F850)
/* F364 8000E764 C430F850 */  lwc1       $f16, %lo(D_8013F850)($at)
/* F368 8000E768 00007812 */  mflo       $t7
/* F36C 8000E76C 448F9000 */  mtc1       $t7, $f18
/* F370 8000E770 00000000 */  nop
/* F374 8000E774 468091A0 */  cvt.s.w    $f6, $f18
/* F378 8000E778 46068280 */  add.s      $f10, $f16, $f6
/* F37C 8000E77C E42AF850 */  swc1       $f10, %lo(D_8013F850)($at)
.L8000E780:
/* F380 8000E780 93B8015B */  lbu        $t8, 0x15B($sp)
/* F384 8000E784 28E10038 */  slti       $at, $a3, 0x38
/* F388 8000E788 14800010 */  bnez       $a0, .L8000E7CC
/* F38C 8000E78C AFB8003C */   sw        $t8, 0x3C($sp)
/* F390 8000E790 28E10038 */  slti       $at, $a3, 0x38
/* F394 8000E794 14200209 */  bnez       $at, .L8000EFBC
/* F398 8000E798 28E10043 */   slti      $at, $a3, 0x43
/* F39C 8000E79C 10200207 */  beqz       $at, .L8000EFBC
/* F3A0 8000E7A0 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F3A4 8000E7A4 00420019 */  multu      $v0, $v0
/* F3A8 8000E7A8 3C018014 */  lui        $at, %hi(D_8013F850)
/* F3AC 8000E7AC C424F850 */  lwc1       $f4, %lo(D_8013F850)($at)
/* F3B0 8000E7B0 0000C812 */  mflo       $t9
/* F3B4 8000E7B4 44994000 */  mtc1       $t9, $f8
/* F3B8 8000E7B8 00000000 */  nop
/* F3BC 8000E7BC 468044A0 */  cvt.s.w    $f18, $f8
/* F3C0 8000E7C0 46122401 */  sub.s      $f16, $f4, $f18
/* F3C4 8000E7C4 100001FD */  b          .L8000EFBC
/* F3C8 8000E7C8 E430F850 */   swc1      $f16, %lo(D_8013F850)($at)
.L8000E7CC:
/* F3CC 8000E7CC 142001FB */  bnez       $at, .L8000EFBC
/* F3D0 8000E7D0 28E10043 */   slti      $at, $a3, 0x43
/* F3D4 8000E7D4 102001F9 */  beqz       $at, .L8000EFBC
/* F3D8 8000E7D8 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F3DC 8000E7DC 00420019 */  multu      $v0, $v0
/* F3E0 8000E7E0 3C018014 */  lui        $at, %hi(D_8013F850)
/* F3E4 8000E7E4 C426F850 */  lwc1       $f6, %lo(D_8013F850)($at)
/* F3E8 8000E7E8 00005012 */  mflo       $t2
/* F3EC 8000E7EC 448A5000 */  mtc1       $t2, $f10
/* F3F0 8000E7F0 00000000 */  nop
/* F3F4 8000E7F4 46805220 */  cvt.s.w    $f8, $f10
/* F3F8 8000E7F8 46083100 */  add.s      $f4, $f6, $f8
/* F3FC 8000E7FC 100001EF */  b          .L8000EFBC
/* F400 8000E800 E424F850 */   swc1      $f4, %lo(D_8013F850)($at)
.L8000E804:
/* F404 8000E804 14E0002A */  bnez       $a3, .L8000E8B0
/* F408 8000E808 3C014302 */   lui       $at, (0x43020000 >> 16)
/* F40C 8000E80C 44816000 */  mtc1       $at, $f12
/* F410 8000E810 3C018014 */  lui        $at, %hi(D_8013F850)
/* F414 8000E814 E422F850 */  swc1       $f2, %lo(D_8013F850)($at)
/* F418 8000E818 3C01C28C */  lui        $at, (0xC28C0000 >> 16)
/* F41C 8000E81C 44819000 */  mtc1       $at, $f18
/* F420 8000E820 3C018014 */  lui        $at, %hi(D_8013F854)
/* F424 8000E824 240BFFCE */  addiu      $t3, $zero, -0x32
/* F428 8000E828 E432F854 */  swc1       $f18, %lo(D_8013F854)($at)
/* F42C 8000E82C 3C018014 */  lui        $at, %hi(D_8013F858)
/* F430 8000E830 E422F858 */  swc1       $f2, %lo(D_8013F858)($at)
/* F434 8000E834 3C01C2B4 */  lui        $at, (0xC2B40000 >> 16)
/* F438 8000E838 44818000 */  mtc1       $at, $f16
/* F43C 8000E83C 3C018014 */  lui        $at, %hi(D_8013F870)
/* F440 8000E840 3C038008 */  lui        $v1, %hi(D_80082178)
/* F444 8000E844 E430F870 */  swc1       $f16, %lo(D_8013F870)($at)
/* F448 8000E848 3C014334 */  lui        $at, (0x43340000 >> 16)
/* F44C 8000E84C 44815000 */  mtc1       $at, $f10
/* F450 8000E850 3C018014 */  lui        $at, %hi(D_8013F874)
/* F454 8000E854 24632178 */  addiu      $v1, $v1, %lo(D_80082178)
/* F458 8000E858 E42AF874 */  swc1       $f10, %lo(D_8013F874)($at)
/* F45C 8000E85C 3C018014 */  lui        $at, %hi(D_8013F878)
/* F460 8000E860 E422F878 */  swc1       $f2, %lo(D_8013F878)($at)
/* F464 8000E864 3C018008 */  lui        $at, %hi(D_800821A4)
/* F468 8000E868 A42B21A4 */  sh         $t3, %lo(D_800821A4)($at)
/* F46C 8000E86C 3C018008 */  lui        $at, %hi(D_80082188)
/* F470 8000E870 E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
/* F474 8000E874 906C0000 */  lbu        $t4, 0x0($v1)
/* F478 8000E878 3C018008 */  lui        $at, %hi(D_80082198)
/* F47C 8000E87C 240E0370 */  addiu      $t6, $zero, 0x370
/* F480 8000E880 15800008 */  bnez       $t4, .L8000E8A4
/* F484 8000E884 24060014 */   addiu     $a2, $zero, 0x14
/* F488 8000E888 240D0190 */  addiu      $t5, $zero, 0x190
/* F48C 8000E88C 3C018008 */  lui        $at, %hi(D_80082198)
/* F490 8000E890 A42D2198 */  sh         $t5, %lo(D_80082198)($at)
/* F494 8000E894 3C018008 */  lui        $at, %hi(D_800821A0)
/* F498 8000E898 24060064 */  addiu      $a2, $zero, 0x64
/* F49C 8000E89C 10000004 */  b          .L8000E8B0
/* F4A0 8000E8A0 A42621A0 */   sh        $a2, %lo(D_800821A0)($at)
.L8000E8A4:
/* F4A4 8000E8A4 A42E2198 */  sh         $t6, %lo(D_80082198)($at)
/* F4A8 8000E8A8 3C018008 */  lui        $at, %hi(D_800821A0)
/* F4AC 8000E8AC A42621A0 */  sh         $a2, %lo(D_800821A0)($at)
.L8000E8B0:
/* F4B0 8000E8B0 28E10033 */  slti       $at, $a3, 0x33
/* F4B4 8000E8B4 10200036 */  beqz       $at, .L8000E990
/* F4B8 8000E8B8 90842178 */   lbu       $a0, 0x2178($a0)
/* F4BC 8000E8BC 00E70019 */  multu      $a3, $a3
/* F4C0 8000E8C0 3C018014 */  lui        $at, %hi(D_8013F854)
/* F4C4 8000E8C4 C426F854 */  lwc1       $f6, %lo(D_8013F854)($at)
/* F4C8 8000E8C8 93A3015B */  lbu        $v1, 0x15B($sp)
/* F4CC 8000E8CC 3C0F8008 */  lui        $t7, %hi(D_800821A4)
/* F4D0 8000E8D0 240B00BE */  addiu      $t3, $zero, 0xBE
/* F4D4 8000E8D4 00001012 */  mflo       $v0
/* F4D8 8000E8D8 44824000 */  mtc1       $v0, $f8
/* F4DC 8000E8DC 00000000 */  nop
/* F4E0 8000E8E0 46804120 */  cvt.s.w    $f4, $f8
/* F4E4 8000E8E4 46043480 */  add.s      $f18, $f6, $f4
/* F4E8 8000E8E8 E432F854 */  swc1       $f18, %lo(D_8013F854)($at)
/* F4EC 8000E8EC 28610005 */  slti       $at, $v1, 0x5
/* F4F0 8000E8F0 1420000F */  bnez       $at, .L8000E930
/* F4F4 8000E8F4 28610008 */   slti      $at, $v1, 0x8
/* F4F8 8000E8F8 1020000D */  beqz       $at, .L8000E930
/* F4FC 8000E8FC 3C014028 */   lui       $at, (0x40280000 >> 16)
/* F500 8000E900 44818800 */  mtc1       $at, $f17
/* F504 8000E904 44808000 */  mtc1       $zero, $f16
/* F508 8000E908 460092A1 */  cvt.d.s    $f10, $f18
/* F50C 8000E90C 3C014140 */  lui        $at, (0x41400000 >> 16)
/* F510 8000E910 462A803C */  c.lt.d     $f16, $f10
/* F514 8000E914 00000000 */  nop
/* F518 8000E918 45000013 */  bc1f       .L8000E968
/* F51C 8000E91C 00000000 */   nop
/* F520 8000E920 44814000 */  mtc1       $at, $f8
/* F524 8000E924 3C018014 */  lui        $at, %hi(D_8013F854)
/* F528 8000E928 1000000F */  b          .L8000E968
/* F52C 8000E92C E428F854 */   swc1      $f8, %lo(D_8013F854)($at)
.L8000E930:
/* F530 8000E930 3C014018 */  lui        $at, (0x40180000 >> 16)
/* F534 8000E934 44813800 */  mtc1       $at, $f7
/* F538 8000E938 3C018014 */  lui        $at, %hi(D_8013F854)
/* F53C 8000E93C C424F854 */  lwc1       $f4, %lo(D_8013F854)($at)
/* F540 8000E940 44803000 */  mtc1       $zero, $f6
/* F544 8000E944 3C0140C0 */  lui        $at, (0x40C00000 >> 16)
/* F548 8000E948 460024A1 */  cvt.d.s    $f18, $f4
/* F54C 8000E94C 4632303C */  c.lt.d     $f6, $f18
/* F550 8000E950 00000000 */  nop
/* F554 8000E954 45000004 */  bc1f       .L8000E968
/* F558 8000E958 00000000 */   nop
/* F55C 8000E95C 44818000 */  mtc1       $at, $f16
/* F560 8000E960 3C018014 */  lui        $at, %hi(D_8013F854)
/* F564 8000E964 E430F854 */  swc1       $f16, %lo(D_8013F854)($at)
.L8000E968:
/* F568 8000E968 85EF21A4 */  lh         $t7, %lo(D_800821A4)($t7)
/* F56C 8000E96C 3C018008 */  lui        $at, %hi(D_800821A4)
/* F570 8000E970 01E2C021 */  addu       $t8, $t7, $v0
/* F574 8000E974 0018CC00 */  sll        $t9, $t8, 16
/* F578 8000E978 A43821A4 */  sh         $t8, %lo(D_800821A4)($at)
/* F57C 8000E97C 00195403 */  sra        $t2, $t9, 16
/* F580 8000E980 294100BE */  slti       $at, $t2, 0xBE
/* F584 8000E984 14200002 */  bnez       $at, .L8000E990
/* F588 8000E988 3C018008 */   lui       $at, %hi(D_800821A4)
/* F58C 8000E98C A42B21A4 */  sh         $t3, %lo(D_800821A4)($at)
.L8000E990:
/* F590 8000E990 93AC015B */  lbu        $t4, 0x15B($sp)
/* F594 8000E994 28E10038 */  slti       $at, $a3, 0x38
/* F598 8000E998 14800010 */  bnez       $a0, .L8000E9DC
/* F59C 8000E99C AFAC003C */   sw        $t4, 0x3C($sp)
/* F5A0 8000E9A0 28E10038 */  slti       $at, $a3, 0x38
/* F5A4 8000E9A4 14200185 */  bnez       $at, .L8000EFBC
/* F5A8 8000E9A8 28E10043 */   slti      $at, $a3, 0x43
/* F5AC 8000E9AC 10200183 */  beqz       $at, .L8000EFBC
/* F5B0 8000E9B0 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F5B4 8000E9B4 00420019 */  multu      $v0, $v0
/* F5B8 8000E9B8 3C018014 */  lui        $at, %hi(D_8013F850)
/* F5BC 8000E9BC C42AF850 */  lwc1       $f10, %lo(D_8013F850)($at)
/* F5C0 8000E9C0 00006812 */  mflo       $t5
/* F5C4 8000E9C4 448D4000 */  mtc1       $t5, $f8
/* F5C8 8000E9C8 00000000 */  nop
/* F5CC 8000E9CC 46804120 */  cvt.s.w    $f4, $f8
/* F5D0 8000E9D0 46045180 */  add.s      $f6, $f10, $f4
/* F5D4 8000E9D4 10000179 */  b          .L8000EFBC
/* F5D8 8000E9D8 E426F850 */   swc1      $f6, %lo(D_8013F850)($at)
.L8000E9DC:
/* F5DC 8000E9DC 14200177 */  bnez       $at, .L8000EFBC
/* F5E0 8000E9E0 28E10043 */   slti      $at, $a3, 0x43
/* F5E4 8000E9E4 10200175 */  beqz       $at, .L8000EFBC
/* F5E8 8000E9E8 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F5EC 8000E9EC 00420019 */  multu      $v0, $v0
/* F5F0 8000E9F0 3C018014 */  lui        $at, %hi(D_8013F850)
/* F5F4 8000E9F4 C432F850 */  lwc1       $f18, %lo(D_8013F850)($at)
/* F5F8 8000E9F8 00007012 */  mflo       $t6
/* F5FC 8000E9FC 448E8000 */  mtc1       $t6, $f16
/* F600 8000EA00 00000000 */  nop
/* F604 8000EA04 46808220 */  cvt.s.w    $f8, $f16
/* F608 8000EA08 46089281 */  sub.s      $f10, $f18, $f8
/* F60C 8000EA0C 1000016B */  b          .L8000EFBC
/* F610 8000EA10 E42AF850 */   swc1      $f10, %lo(D_8013F850)($at)
.L8000EA14:
/* F614 8000EA14 14E00038 */  bnez       $a3, .L8000EAF8
/* F618 8000EA18 3C038008 */   lui       $v1, %hi(D_80082178)
/* F61C 8000EA1C 3C018014 */  lui        $at, %hi(D_8013F850)
/* F620 8000EA20 E422F850 */  swc1       $f2, %lo(D_8013F850)($at)
/* F624 8000EA24 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* F628 8000EA28 44812000 */  mtc1       $at, $f4
/* F62C 8000EA2C 3C018014 */  lui        $at, %hi(D_8013F854)
/* F630 8000EA30 240F00BE */  addiu      $t7, $zero, 0xBE
/* F634 8000EA34 E424F854 */  swc1       $f4, %lo(D_8013F854)($at)
/* F638 8000EA38 3C018014 */  lui        $at, %hi(D_8013F858)
/* F63C 8000EA3C E422F858 */  swc1       $f2, %lo(D_8013F858)($at)
/* F640 8000EA40 3C014407 */  lui        $at, (0x44070000 >> 16)
/* F644 8000EA44 44816000 */  mtc1       $at, $f12
/* F648 8000EA48 3C018008 */  lui        $at, %hi(D_800821A4)
/* F64C 8000EA4C 24632178 */  addiu      $v1, $v1, %lo(D_80082178)
/* F650 8000EA50 A42F21A4 */  sh         $t7, %lo(D_800821A4)($at)
/* F654 8000EA54 90780000 */  lbu        $t8, 0x0($v1)
/* F658 8000EA58 24190208 */  addiu      $t9, $zero, 0x208
/* F65C 8000EA5C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* F660 8000EA60 17000013 */  bnez       $t8, .L8000EAB0
/* F664 8000EA64 240A02F8 */   addiu     $t2, $zero, 0x2F8
/* F668 8000EA68 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* F66C 8000EA6C 44810000 */  mtc1       $at, $f0
/* F670 8000EA70 3C018008 */  lui        $at, %hi(D_80082198)
/* F674 8000EA74 A4392198 */  sh         $t9, %lo(D_80082198)($at)
/* F678 8000EA78 3C018014 */  lui        $at, %hi(D_8013F870)
/* F67C 8000EA7C E420F870 */  swc1       $f0, %lo(D_8013F870)($at)
/* F680 8000EA80 3C01420C */  lui        $at, (0x420C0000 >> 16)
/* F684 8000EA84 44813000 */  mtc1       $at, $f6
/* F688 8000EA88 3C018014 */  lui        $at, %hi(D_8013F874)
/* F68C 8000EA8C 2406FF38 */  addiu      $a2, $zero, -0xC8
/* F690 8000EA90 E426F874 */  swc1       $f6, %lo(D_8013F874)($at)
/* F694 8000EA94 3C018014 */  lui        $at, %hi(D_8013F878)
/* F698 8000EA98 E420F878 */  swc1       $f0, %lo(D_8013F878)($at)
/* F69C 8000EA9C 3C018008 */  lui        $at, %hi(D_800821A0)
/* F6A0 8000EAA0 A42621A0 */  sh         $a2, %lo(D_800821A0)($at)
/* F6A4 8000EAA4 3C018008 */  lui        $at, %hi(D_80082188)
/* F6A8 8000EAA8 10000013 */  b          .L8000EAF8
/* F6AC 8000EAAC E42C2188 */   swc1      $f12, %lo(D_80082188)($at)
.L8000EAB0:
/* F6B0 8000EAB0 44810000 */  mtc1       $at, $f0
/* F6B4 8000EAB4 3C018008 */  lui        $at, %hi(D_80082198)
/* F6B8 8000EAB8 A42A2198 */  sh         $t2, %lo(D_80082198)($at)
/* F6BC 8000EABC 3C018014 */  lui        $at, %hi(D_8013F870)
/* F6C0 8000EAC0 E420F870 */  swc1       $f0, %lo(D_8013F870)($at)
/* F6C4 8000EAC4 3C01C20C */  lui        $at, (0xC20C0000 >> 16)
/* F6C8 8000EAC8 44818000 */  mtc1       $at, $f16
/* F6CC 8000EACC 3C018014 */  lui        $at, %hi(D_8013F874)
/* F6D0 8000EAD0 24060190 */  addiu      $a2, $zero, 0x190
/* F6D4 8000EAD4 E430F874 */  swc1       $f16, %lo(D_8013F874)($at)
/* F6D8 8000EAD8 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* F6DC 8000EADC 44819000 */  mtc1       $at, $f18
/* F6E0 8000EAE0 3C018014 */  lui        $at, %hi(D_8013F878)
/* F6E4 8000EAE4 E432F878 */  swc1       $f18, %lo(D_8013F878)($at)
/* F6E8 8000EAE8 3C018008 */  lui        $at, %hi(D_800821A0)
/* F6EC 8000EAEC A42621A0 */  sh         $a2, %lo(D_800821A0)($at)
/* F6F0 8000EAF0 3C018008 */  lui        $at, %hi(D_80082188)
/* F6F4 8000EAF4 E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
.L8000EAF8:
/* F6F8 8000EAF8 3C018008 */  lui        $at, %hi(D_80082188)
/* F6FC 8000EAFC C42C2188 */  lwc1       $f12, %lo(D_80082188)($at)
/* F700 8000EB00 3C038008 */  lui        $v1, %hi(D_80082178)
/* F704 8000EB04 3C068008 */  lui        $a2, %hi(D_800821A0)
/* F708 8000EB08 28E10033 */  slti       $at, $a3, 0x33
/* F70C 8000EB0C 84C621A0 */  lh         $a2, %lo(D_800821A0)($a2)
/* F710 8000EB10 10200035 */  beqz       $at, .L8000EBE8
/* F714 8000EB14 24632178 */   addiu     $v1, $v1, %lo(D_80082178)
/* F718 8000EB18 00E70019 */  multu      $a3, $a3
/* F71C 8000EB1C 93AC015B */  lbu        $t4, 0x15B($sp)
/* F720 8000EB20 24050003 */  addiu      $a1, $zero, 0x3
/* F724 8000EB24 90640000 */  lbu        $a0, 0x0($v1)
/* F728 8000EB28 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* F72C 8000EB2C 00001012 */  mflo       $v0
/* F730 8000EB30 00025840 */  sll        $t3, $v0, 1
/* F734 8000EB34 448B4000 */  mtc1       $t3, $f8
/* F738 8000EB38 00000000 */  nop
/* F73C 8000EB3C 468042A0 */  cvt.s.w    $f10, $f8
/* F740 8000EB40 14AC000B */  bne        $a1, $t4, .L8000EB70
/* F744 8000EB44 460A6301 */   sub.s     $f12, $f12, $f10
/* F748 8000EB48 3C0142C8 */  lui        $at, (0x42C80000 >> 16)
/* F74C 8000EB4C 44810000 */  mtc1       $at, $f0
/* F750 8000EB50 3C018008 */  lui        $at, %hi(D_80082188)
/* F754 8000EB54 E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
/* F758 8000EB58 4600603C */  c.lt.s     $f12, $f0
/* F75C 8000EB5C 3C018008 */  lui        $at, %hi(D_80082188)
/* F760 8000EB60 4500000B */  bc1f       .L8000EB90
/* F764 8000EB64 00000000 */   nop
/* F768 8000EB68 10000009 */  b          .L8000EB90
/* F76C 8000EB6C E4202188 */   swc1      $f0, %lo(D_80082188)($at)
.L8000EB70:
/* F770 8000EB70 44810000 */  mtc1       $at, $f0
/* F774 8000EB74 3C018008 */  lui        $at, %hi(D_80082188)
/* F778 8000EB78 E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
/* F77C 8000EB7C 4600603C */  c.lt.s     $f12, $f0
/* F780 8000EB80 3C018008 */  lui        $at, %hi(D_80082188)
/* F784 8000EB84 45000002 */  bc1f       .L8000EB90
/* F788 8000EB88 00000000 */   nop
/* F78C 8000EB8C E4202188 */  swc1       $f0, %lo(D_80082188)($at)
.L8000EB90:
/* F790 8000EB90 1480000C */  bnez       $a0, .L8000EBC4
/* F794 8000EB94 3C018008 */   lui       $at, %hi(D_800821A0)
/* F798 8000EB98 00C23021 */  addu       $a2, $a2, $v0
/* F79C 8000EB9C 00066C00 */  sll        $t5, $a2, 16
/* F7A0 8000EBA0 000D7403 */  sra        $t6, $t5, 16
/* F7A4 8000EBA4 3C018008 */  lui        $at, %hi(D_800821A0)
/* F7A8 8000EBA8 A42E21A0 */  sh         $t6, %lo(D_800821A0)($at)
/* F7AC 8000EBAC 29C10064 */  slti       $at, $t6, 0x64
/* F7B0 8000EBB0 1420000D */  bnez       $at, .L8000EBE8
/* F7B4 8000EBB4 24060064 */   addiu     $a2, $zero, 0x64
/* F7B8 8000EBB8 3C018008 */  lui        $at, %hi(D_800821A0)
/* F7BC 8000EBBC 1000000A */  b          .L8000EBE8
/* F7C0 8000EBC0 A42621A0 */   sh        $a2, %lo(D_800821A0)($at)
.L8000EBC4:
/* F7C4 8000EBC4 00C23023 */  subu       $a2, $a2, $v0
/* F7C8 8000EBC8 00067C00 */  sll        $t7, $a2, 16
/* F7CC 8000EBCC 000FC403 */  sra        $t8, $t7, 16
/* F7D0 8000EBD0 A43821A0 */  sh         $t8, %lo(D_800821A0)($at)
/* F7D4 8000EBD4 2B010015 */  slti       $at, $t8, 0x15
/* F7D8 8000EBD8 10200003 */  beqz       $at, .L8000EBE8
/* F7DC 8000EBDC 24060014 */   addiu     $a2, $zero, 0x14
/* F7E0 8000EBE0 3C018008 */  lui        $at, %hi(D_800821A0)
/* F7E4 8000EBE4 A42621A0 */  sh         $a2, %lo(D_800821A0)($at)
.L8000EBE8:
/* F7E8 8000EBE8 93B9015B */  lbu        $t9, 0x15B($sp)
/* F7EC 8000EBEC 28E10038 */  slti       $at, $a3, 0x38
/* F7F0 8000EBF0 142000F2 */  bnez       $at, .L8000EFBC
/* F7F4 8000EBF4 AFB9003C */   sw        $t9, 0x3C($sp)
/* F7F8 8000EBF8 28E10065 */  slti       $at, $a3, 0x65
/* F7FC 8000EBFC 502000F0 */  beql       $at, $zero, .L8000EFC0
/* F800 8000EC00 8FAB0148 */   lw        $t3, 0x148($sp)
/* F804 8000EC04 906A0000 */  lbu        $t2, 0x0($v1)
/* F808 8000EC08 28E10038 */  slti       $at, $a3, 0x38
/* F80C 8000EC0C 15400024 */  bnez       $t2, .L8000ECA0
/* F810 8000EC10 00000000 */   nop
/* F814 8000EC14 28E10038 */  slti       $at, $a3, 0x38
/* F818 8000EC18 1420000C */  bnez       $at, .L8000EC4C
/* F81C 8000EC1C 28E10043 */   slti      $at, $a3, 0x43
/* F820 8000EC20 1020000A */  beqz       $at, .L8000EC4C
/* F824 8000EC24 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F828 8000EC28 00420019 */  multu      $v0, $v0
/* F82C 8000EC2C 3C018014 */  lui        $at, %hi(D_8013F850)
/* F830 8000EC30 C424F850 */  lwc1       $f4, %lo(D_8013F850)($at)
/* F834 8000EC34 00005812 */  mflo       $t3
/* F838 8000EC38 448B3000 */  mtc1       $t3, $f6
/* F83C 8000EC3C 00000000 */  nop
/* F840 8000EC40 46803420 */  cvt.s.w    $f16, $f6
/* F844 8000EC44 46102480 */  add.s      $f18, $f4, $f16
/* F848 8000EC48 E432F850 */  swc1       $f18, %lo(D_8013F850)($at)
.L8000EC4C:
/* F84C 8000EC4C 28E10038 */  slti       $at, $a3, 0x38
/* F850 8000EC50 142000DA */  bnez       $at, .L8000EFBC
/* F854 8000EC54 28E10043 */   slti      $at, $a3, 0x43
/* F858 8000EC58 102000D8 */  beqz       $at, .L8000EFBC
/* F85C 8000EC5C 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F860 8000EC60 00420019 */  multu      $v0, $v0
/* F864 8000EC64 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
/* F868 8000EC68 44813800 */  mtc1       $at, $f7
/* F86C 8000EC6C 44803000 */  mtc1       $zero, $f6
/* F870 8000EC70 3C018014 */  lui        $at, %hi(D_8013F854)
/* F874 8000EC74 C430F854 */  lwc1       $f16, %lo(D_8013F854)($at)
/* F878 8000EC78 460084A1 */  cvt.d.s    $f18, $f16
/* F87C 8000EC7C 00006012 */  mflo       $t4
/* F880 8000EC80 448C4000 */  mtc1       $t4, $f8
/* F884 8000EC84 00000000 */  nop
/* F888 8000EC88 468042A1 */  cvt.d.w    $f10, $f8
/* F88C 8000EC8C 46265103 */  div.d      $f4, $f10, $f6
/* F890 8000EC90 46249201 */  sub.d      $f8, $f18, $f4
/* F894 8000EC94 462042A0 */  cvt.s.d    $f10, $f8
/* F898 8000EC98 100000C8 */  b          .L8000EFBC
/* F89C 8000EC9C E42AF854 */   swc1      $f10, %lo(D_8013F854)($at)
.L8000ECA0:
/* F8A0 8000ECA0 1420000C */  bnez       $at, .L8000ECD4
/* F8A4 8000ECA4 28E10043 */   slti      $at, $a3, 0x43
/* F8A8 8000ECA8 1020000A */  beqz       $at, .L8000ECD4
/* F8AC 8000ECAC 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F8B0 8000ECB0 00420019 */  multu      $v0, $v0
/* F8B4 8000ECB4 3C018014 */  lui        $at, %hi(D_8013F850)
/* F8B8 8000ECB8 C426F850 */  lwc1       $f6, %lo(D_8013F850)($at)
/* F8BC 8000ECBC 00006812 */  mflo       $t5
/* F8C0 8000ECC0 448D8000 */  mtc1       $t5, $f16
/* F8C4 8000ECC4 00000000 */  nop
/* F8C8 8000ECC8 468084A0 */  cvt.s.w    $f18, $f16
/* F8CC 8000ECCC 46123101 */  sub.s      $f4, $f6, $f18
/* F8D0 8000ECD0 E424F850 */  swc1       $f4, %lo(D_8013F850)($at)
.L8000ECD4:
/* F8D4 8000ECD4 28E10038 */  slti       $at, $a3, 0x38
/* F8D8 8000ECD8 142000B8 */  bnez       $at, .L8000EFBC
/* F8DC 8000ECDC 28E10043 */   slti      $at, $a3, 0x43
/* F8E0 8000ECE0 102000B6 */  beqz       $at, .L8000EFBC
/* F8E4 8000ECE4 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* F8E8 8000ECE8 00420019 */  multu      $v0, $v0
/* F8EC 8000ECEC 3C013FF8 */  lui        $at, (0x3FF80000 >> 16)
/* F8F0 8000ECF0 44818800 */  mtc1       $at, $f17
/* F8F4 8000ECF4 44808000 */  mtc1       $zero, $f16
/* F8F8 8000ECF8 3C018014 */  lui        $at, %hi(D_8013F854)
/* F8FC 8000ECFC C432F854 */  lwc1       $f18, %lo(D_8013F854)($at)
/* F900 8000ED00 46009121 */  cvt.d.s    $f4, $f18
/* F904 8000ED04 00007012 */  mflo       $t6
/* F908 8000ED08 448E4000 */  mtc1       $t6, $f8
/* F90C 8000ED0C 00000000 */  nop
/* F910 8000ED10 468042A1 */  cvt.d.w    $f10, $f8
/* F914 8000ED14 46305183 */  div.d      $f6, $f10, $f16
/* F918 8000ED18 46262201 */  sub.d      $f8, $f4, $f6
/* F91C 8000ED1C 462042A0 */  cvt.s.d    $f10, $f8
/* F920 8000ED20 100000A6 */  b          .L8000EFBC
/* F924 8000ED24 E42AF854 */   swc1      $f10, %lo(D_8013F854)($at)
.L8000ED28:
/* F928 8000ED28 14E0003D */  bnez       $a3, .L8000EE20
/* F92C 8000ED2C 3C038008 */   lui       $v1, %hi(D_80082178)
/* F930 8000ED30 240F0280 */  addiu      $t7, $zero, 0x280
/* F934 8000ED34 3C018008 */  lui        $at, %hi(D_80082198)
/* F938 8000ED38 A42F2198 */  sh         $t7, %lo(D_80082198)($at)
/* F93C 8000ED3C 3C014407 */  lui        $at, (0x44070000 >> 16)
/* F940 8000ED40 44816000 */  mtc1       $at, $f12
/* F944 8000ED44 3C018008 */  lui        $at, %hi(D_800821A4)
/* F948 8000ED48 2418012C */  addiu      $t8, $zero, 0x12C
/* F94C 8000ED4C A43821A4 */  sh         $t8, %lo(D_800821A4)($at)
/* F950 8000ED50 2406003C */  addiu      $a2, $zero, 0x3C
/* F954 8000ED54 3C018008 */  lui        $at, %hi(D_800821A0)
/* F958 8000ED58 24632178 */  addiu      $v1, $v1, %lo(D_80082178)
/* F95C 8000ED5C A42621A0 */  sh         $a2, %lo(D_800821A0)($at)
/* F960 8000ED60 90790000 */  lbu        $t9, 0x0($v1)
/* F964 8000ED64 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* F968 8000ED68 57200019 */  bnel       $t9, $zero, .L8000EDD0
/* F96C 8000ED6C 44814000 */   mtc1      $at, $f8
/* F970 8000ED70 3C014000 */  lui        $at, (0x40000000 >> 16)
/* F974 8000ED74 44818000 */  mtc1       $at, $f16
/* F978 8000ED78 3C018014 */  lui        $at, %hi(D_8013F850)
/* F97C 8000ED7C E430F850 */  swc1       $f16, %lo(D_8013F850)($at)
/* F980 8000ED80 3C014040 */  lui        $at, (0x40400000 >> 16)
/* F984 8000ED84 44819000 */  mtc1       $at, $f18
/* F988 8000ED88 3C018014 */  lui        $at, %hi(D_8013F854)
/* F98C 8000ED8C E432F854 */  swc1       $f18, %lo(D_8013F854)($at)
/* F990 8000ED90 3C018014 */  lui        $at, %hi(D_8013F858)
/* F994 8000ED94 E422F858 */  swc1       $f2, %lo(D_8013F858)($at)
/* F998 8000ED98 3C018014 */  lui        $at, %hi(D_8013F870)
/* F99C 8000ED9C E422F870 */  swc1       $f2, %lo(D_8013F870)($at)
/* F9A0 8000EDA0 3C01C357 */  lui        $at, (0xC3570000 >> 16)
/* F9A4 8000EDA4 44812000 */  mtc1       $at, $f4
/* F9A8 8000EDA8 3C018014 */  lui        $at, %hi(D_8013F874)
/* F9AC 8000EDAC E424F874 */  swc1       $f4, %lo(D_8013F874)($at)
/* F9B0 8000EDB0 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* F9B4 8000EDB4 44813000 */  mtc1       $at, $f6
/* F9B8 8000EDB8 3C018014 */  lui        $at, %hi(D_8013F878)
/* F9BC 8000EDBC E426F878 */  swc1       $f6, %lo(D_8013F878)($at)
/* F9C0 8000EDC0 3C018008 */  lui        $at, %hi(D_80082188)
/* F9C4 8000EDC4 10000016 */  b          .L8000EE20
/* F9C8 8000EDC8 E42C2188 */   swc1      $f12, %lo(D_80082188)($at)
/* F9CC 8000EDCC 44814000 */  mtc1       $at, $f8
.L8000EDD0:
/* F9D0 8000EDD0 3C018014 */  lui        $at, %hi(D_8013F850)
/* F9D4 8000EDD4 E428F850 */  swc1       $f8, %lo(D_8013F850)($at)
/* F9D8 8000EDD8 3C014040 */  lui        $at, (0x40400000 >> 16)
/* F9DC 8000EDDC 44815000 */  mtc1       $at, $f10
/* F9E0 8000EDE0 3C018014 */  lui        $at, %hi(D_8013F854)
/* F9E4 8000EDE4 E42AF854 */  swc1       $f10, %lo(D_8013F854)($at)
/* F9E8 8000EDE8 3C018014 */  lui        $at, %hi(D_8013F858)
/* F9EC 8000EDEC E422F858 */  swc1       $f2, %lo(D_8013F858)($at)
/* F9F0 8000EDF0 3C018014 */  lui        $at, %hi(D_8013F870)
/* F9F4 8000EDF4 E422F870 */  swc1       $f2, %lo(D_8013F870)($at)
/* F9F8 8000EDF8 3C014357 */  lui        $at, (0x43570000 >> 16)
/* F9FC 8000EDFC 44818000 */  mtc1       $at, $f16
/* FA00 8000EE00 3C018014 */  lui        $at, %hi(D_8013F874)
/* FA04 8000EE04 E430F874 */  swc1       $f16, %lo(D_8013F874)($at)
/* FA08 8000EE08 3C01C1F0 */  lui        $at, (0xC1F00000 >> 16)
/* FA0C 8000EE0C 44819000 */  mtc1       $at, $f18
/* FA10 8000EE10 3C018014 */  lui        $at, %hi(D_8013F878)
/* FA14 8000EE14 E432F878 */  swc1       $f18, %lo(D_8013F878)($at)
/* FA18 8000EE18 3C018008 */  lui        $at, %hi(D_80082188)
/* FA1C 8000EE1C E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
.L8000EE20:
/* FA20 8000EE20 3C018008 */  lui        $at, %hi(D_80082188)
/* FA24 8000EE24 C42C2188 */  lwc1       $f12, %lo(D_80082188)($at)
/* FA28 8000EE28 28E10033 */  slti       $at, $a3, 0x33
/* FA2C 8000EE2C 1020002B */  beqz       $at, .L8000EEDC
/* FA30 8000EE30 3C0A8008 */   lui       $t2, %hi(D_800821A4)
/* FA34 8000EE34 00E70019 */  multu      $a3, $a3
/* FA38 8000EE38 93A3015B */  lbu        $v1, 0x15B($sp)
/* FA3C 8000EE3C 24010006 */  addiu      $at, $zero, 0x6
/* FA40 8000EE40 240F00B4 */  addiu      $t7, $zero, 0xB4
/* FA44 8000EE44 00001012 */  mflo       $v0
/* FA48 8000EE48 44822000 */  mtc1       $v0, $f4
/* FA4C 8000EE4C 00000000 */  nop
/* FA50 8000EE50 468021A0 */  cvt.s.w    $f6, $f4
/* FA54 8000EE54 10A30002 */  beq        $a1, $v1, .L8000EE60
/* FA58 8000EE58 46066301 */   sub.s     $f12, $f12, $f6
/* FA5C 8000EE5C 14610009 */  bne        $v1, $at, .L8000EE84
.L8000EE60:
/* FA60 8000EE60 3C0142DC */   lui       $at, (0x42DC0000 >> 16)
/* FA64 8000EE64 44810000 */  mtc1       $at, $f0
/* FA68 8000EE68 00000000 */  nop
/* FA6C 8000EE6C 4600603C */  c.lt.s     $f12, $f0
/* FA70 8000EE70 00000000 */  nop
/* FA74 8000EE74 4500000B */  bc1f       .L8000EEA4
/* FA78 8000EE78 00000000 */   nop
/* FA7C 8000EE7C 10000009 */  b          .L8000EEA4
/* FA80 8000EE80 46000306 */   mov.s     $f12, $f0
.L8000EE84:
/* FA84 8000EE84 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* FA88 8000EE88 44810000 */  mtc1       $at, $f0
/* FA8C 8000EE8C 00000000 */  nop
/* FA90 8000EE90 4600603C */  c.lt.s     $f12, $f0
/* FA94 8000EE94 00000000 */  nop
/* FA98 8000EE98 45000002 */  bc1f       .L8000EEA4
/* FA9C 8000EE9C 00000000 */   nop
/* FAA0 8000EEA0 46000306 */  mov.s      $f12, $f0
.L8000EEA4:
/* FAA4 8000EEA4 854A21A4 */  lh         $t2, %lo(D_800821A4)($t2)
/* FAA8 8000EEA8 04410003 */  bgez       $v0, .L8000EEB8
/* FAAC 8000EEAC 00025883 */   sra       $t3, $v0, 2
/* FAB0 8000EEB0 24410003 */  addiu      $at, $v0, 0x3
/* FAB4 8000EEB4 00015883 */  sra        $t3, $at, 2
.L8000EEB8:
/* FAB8 8000EEB8 014B6023 */  subu       $t4, $t2, $t3
/* FABC 8000EEBC 3C018008 */  lui        $at, %hi(D_800821A4)
/* FAC0 8000EEC0 000C6C00 */  sll        $t5, $t4, 16
/* FAC4 8000EEC4 A42C21A4 */  sh         $t4, %lo(D_800821A4)($at)
/* FAC8 8000EEC8 000D7403 */  sra        $t6, $t5, 16
/* FACC 8000EECC 29C100B5 */  slti       $at, $t6, 0xB5
/* FAD0 8000EED0 10200002 */  beqz       $at, .L8000EEDC
/* FAD4 8000EED4 3C018008 */   lui       $at, %hi(D_800821A4)
/* FAD8 8000EED8 A42F21A4 */  sh         $t7, %lo(D_800821A4)($at)
.L8000EEDC:
/* FADC 8000EEDC 3C018008 */  lui        $at, %hi(D_80082188)
/* FAE0 8000EEE0 93B8015B */  lbu        $t8, 0x15B($sp)
/* FAE4 8000EEE4 E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
/* FAE8 8000EEE8 28E10038 */  slti       $at, $a3, 0x38
/* FAEC 8000EEEC 14200033 */  bnez       $at, .L8000EFBC
/* FAF0 8000EEF0 AFB8003C */   sw        $t8, 0x3C($sp)
/* FAF4 8000EEF4 3C018008 */  lui        $at, %hi(D_80082188)
/* FAF8 8000EEF8 E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
/* FAFC 8000EEFC 28E10065 */  slti       $at, $a3, 0x65
/* FB00 8000EF00 1020002E */  beqz       $at, .L8000EFBC
/* FB04 8000EF04 24E2FFC8 */   addiu     $v0, $a3, -0x38
/* FB08 8000EF08 00420019 */  multu      $v0, $v0
/* FB0C 8000EF0C 3C018008 */  lui        $at, %hi(D_80082188)
/* FB10 8000EF10 3C048008 */  lui        $a0, %hi(D_80082178)
/* FB14 8000EF14 90842178 */  lbu        $a0, %lo(D_80082178)($a0)
/* FB18 8000EF18 00001812 */  mflo       $v1
/* FB1C 8000EF1C 44834000 */  mtc1       $v1, $f8
/* FB20 8000EF20 00000000 */  nop
/* FB24 8000EF24 468042A0 */  cvt.s.w    $f10, $f8
/* FB28 8000EF28 460A6300 */  add.s      $f12, $f12, $f10
/* FB2C 8000EF2C E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
/* FB30 8000EF30 3C018009 */  lui        $at, %hi(D_80095560)
/* FB34 8000EF34 D4325560 */  ldc1       $f18, %lo(D_80095560)($at)
/* FB38 8000EF38 46006421 */  cvt.d.s    $f16, $f12
/* FB3C 8000EF3C 3C014407 */  lui        $at, (0x44070000 >> 16)
/* FB40 8000EF40 4630903E */  c.le.d     $f18, $f16
/* FB44 8000EF44 00000000 */  nop
/* FB48 8000EF48 45000004 */  bc1f       .L8000EF5C
/* FB4C 8000EF4C 00000000 */   nop
/* FB50 8000EF50 44816000 */  mtc1       $at, $f12
/* FB54 8000EF54 3C018008 */  lui        $at, %hi(D_80082188)
/* FB58 8000EF58 E42C2188 */  swc1       $f12, %lo(D_80082188)($at)
.L8000EF5C:
/* FB5C 8000EF5C 1480000D */  bnez       $a0, .L8000EF94
/* FB60 8000EF60 3C018014 */   lui       $at, %hi(D_8013F850)
/* FB64 8000EF64 3C018014 */  lui        $at, %hi(D_8013F850)
/* FB68 8000EF68 C424F850 */  lwc1       $f4, %lo(D_8013F850)($at)
/* FB6C 8000EF6C 04610003 */  bgez       $v1, .L8000EF7C
/* FB70 8000EF70 0003C843 */   sra       $t9, $v1, 1
/* FB74 8000EF74 24610001 */  addiu      $at, $v1, 0x1
/* FB78 8000EF78 0001C843 */  sra        $t9, $at, 1
.L8000EF7C:
/* FB7C 8000EF7C 44993000 */  mtc1       $t9, $f6
/* FB80 8000EF80 3C018014 */  lui        $at, %hi(D_8013F850)
/* FB84 8000EF84 46803220 */  cvt.s.w    $f8, $f6
/* FB88 8000EF88 46082280 */  add.s      $f10, $f4, $f8
/* FB8C 8000EF8C 1000000B */  b          .L8000EFBC
/* FB90 8000EF90 E42AF850 */   swc1      $f10, %lo(D_8013F850)($at)
.L8000EF94:
/* FB94 8000EF94 C430F850 */  lwc1       $f16, %lo(D_8013F850)($at)
/* FB98 8000EF98 04610003 */  bgez       $v1, .L8000EFA8
/* FB9C 8000EF9C 00035043 */   sra       $t2, $v1, 1
/* FBA0 8000EFA0 24610001 */  addiu      $at, $v1, 0x1
/* FBA4 8000EFA4 00015043 */  sra        $t2, $at, 1
.L8000EFA8:
/* FBA8 8000EFA8 448A9000 */  mtc1       $t2, $f18
/* FBAC 8000EFAC 3C018014 */  lui        $at, %hi(D_8013F850)
/* FBB0 8000EFB0 468091A0 */  cvt.s.w    $f6, $f18
/* FBB4 8000EFB4 46068101 */  sub.s      $f4, $f16, $f6
/* FBB8 8000EFB8 E424F850 */  swc1       $f4, %lo(D_8013F850)($at)
.L8000EFBC:
/* FBBC 8000EFBC 8FAB0148 */  lw         $t3, 0x148($sp)
.L8000EFC0:
/* FBC0 8000EFC0 8FAD014C */  lw         $t5, 0x14C($sp)
/* FBC4 8000EFC4 8FAF0150 */  lw         $t7, 0x150($sp)
/* FBC8 8000EFC8 8D6C0000 */  lw         $t4, 0x0($t3)
/* FBCC 8000EFCC 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* FBD0 8000EFD0 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* FBD4 8000EFD4 AFAC0144 */  sw         $t4, 0x144($sp)
/* FBD8 8000EFD8 8DAE0000 */  lw         $t6, 0x0($t5)
/* FBDC 8000EFDC 25990008 */  addiu      $t9, $t4, 0x8
/* FBE0 8000EFE0 44814000 */  mtc1       $at, $f8
/* FBE4 8000EFE4 AFAE0140 */  sw         $t6, 0x140($sp)
/* FBE8 8000EFE8 8DF80000 */  lw         $t8, 0x0($t7)
/* FBEC 8000EFEC AFB90144 */  sw         $t9, 0x144($sp)
/* FBF0 8000EFF0 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
/* FBF4 8000EFF4 AFB8013C */  sw         $t8, 0x13C($sp)
/* FBF8 8000EFF8 AD800004 */  sw         $zero, 0x4($t4)
/* FBFC 8000EFFC AD8A0000 */  sw         $t2, 0x0($t4)
/* FC00 8000F000 8FAB0144 */  lw         $t3, 0x144($sp)
/* FC04 8000F004 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
/* FC08 8000F008 3C0CBA00 */  lui        $t4, (0xBA001301 >> 16)
/* FC0C 8000F00C 256D0008 */  addiu      $t5, $t3, 0x8
/* FC10 8000F010 AFAD0144 */  sw         $t5, 0x144($sp)
/* FC14 8000F014 AD600004 */  sw         $zero, 0x4($t3)
/* FC18 8000F018 AD6E0000 */  sw         $t6, 0x0($t3)
/* FC1C 8000F01C 8FAF0144 */  lw         $t7, 0x144($sp)
/* FC20 8000F020 358C1301 */  ori        $t4, $t4, (0xBA001301 & 0xFFFF)
/* FC24 8000F024 3C190008 */  lui        $t9, (0x80000 >> 16)
/* FC28 8000F028 25F80008 */  addiu      $t8, $t7, 0x8
/* FC2C 8000F02C AFB80144 */  sw         $t8, 0x144($sp)
/* FC30 8000F030 ADF90004 */  sw         $t9, 0x4($t7)
/* FC34 8000F034 ADEC0000 */  sw         $t4, 0x0($t7)
/* FC38 8000F038 8FAA0144 */  lw         $t2, 0x144($sp)
/* FC3C 8000F03C 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
/* FC40 8000F040 44815000 */  mtc1       $at, $f10
/* FC44 8000F044 254B0008 */  addiu      $t3, $t2, 0x8
/* FC48 8000F048 AFAB0144 */  sw         $t3, 0x144($sp)
/* FC4C 8000F04C 3C0E8008 */  lui        $t6, %hi(D_80082190)
/* FC50 8000F050 3C0D0380 */  lui        $t5, (0x3800010 >> 16)
/* FC54 8000F054 35AD0010 */  ori        $t5, $t5, (0x3800010 & 0xFFFF)
/* FC58 8000F058 25CE2190 */  addiu      $t6, $t6, %lo(D_80082190)
/* FC5C 8000F05C 3C014040 */  lui        $at, (0x40400000 >> 16)
/* FC60 8000F060 44819000 */  mtc1       $at, $f18
/* FC64 8000F064 AD4E0004 */  sw         $t6, 0x4($t2)
/* FC68 8000F068 AD4D0000 */  sw         $t5, 0x0($t2)
/* FC6C 8000F06C 3C073FAA */  lui        $a3, (0x3FAAAAAB >> 16)
/* FC70 8000F070 34E7AAAB */  ori        $a3, $a3, (0x3FAAAAAB & 0xFFFF)
/* FC74 8000F074 27A400BC */  addiu      $a0, $sp, 0xBC
/* FC78 8000F078 27A5007A */  addiu      $a1, $sp, 0x7A
/* FC7C 8000F07C 3C06425C */  lui        $a2, (0x425C0000 >> 16)
/* FC80 8000F080 E7A80010 */  swc1       $f8, 0x10($sp)
/* FC84 8000F084 E7AA0014 */  swc1       $f10, 0x14($sp)
/* FC88 8000F088 0C01AE98 */  jal        guPerspectiveF
/* FC8C 8000F08C E7B20018 */   swc1      $f18, 0x18($sp)
/* FC90 8000F090 44801000 */  mtc1       $zero, $f2
/* FC94 8000F094 3C018008 */  lui        $at, %hi(D_80082188)
/* FC98 8000F098 C42C2188 */  lwc1       $f12, %lo(D_80082188)($at)
/* FC9C 8000F09C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* FCA0 8000F0A0 44818000 */  mtc1       $at, $f16
/* FCA4 8000F0A4 44051000 */  mfc1       $a1, $f2
/* FCA8 8000F0A8 44061000 */  mfc1       $a2, $f2
/* FCAC 8000F0AC 44076000 */  mfc1       $a3, $f12
/* FCB0 8000F0B0 27A400FC */  addiu      $a0, $sp, 0xFC
/* FCB4 8000F0B4 E7A20010 */  swc1       $f2, 0x10($sp)
/* FCB8 8000F0B8 E7A20014 */  swc1       $f2, 0x14($sp)
/* FCBC 8000F0BC E7A20018 */  swc1       $f2, 0x18($sp)
/* FCC0 8000F0C0 E7A2001C */  swc1       $f2, 0x1C($sp)
/* FCC4 8000F0C4 E7A20024 */  swc1       $f2, 0x24($sp)
/* FCC8 8000F0C8 0C01AF3C */  jal        guLookAtF
/* FCCC 8000F0CC E7B00020 */   swc1      $f16, 0x20($sp)
/* FCD0 8000F0D0 27A400FC */  addiu      $a0, $sp, 0xFC
/* FCD4 8000F0D4 27A500BC */  addiu      $a1, $sp, 0xBC
/* FCD8 8000F0D8 0C01B030 */  jal        guMtxCatF
/* FCDC 8000F0DC 27A6007C */   addiu     $a2, $sp, 0x7C
/* FCE0 8000F0E0 27A4007C */  addiu      $a0, $sp, 0x7C
/* FCE4 8000F0E4 0C01B08C */  jal        guMtxF2L
/* FCE8 8000F0E8 8FA50140 */   lw        $a1, 0x140($sp)
/* FCEC 8000F0EC 8FAF0144 */  lw         $t7, 0x144($sp)
/* FCF0 8000F0F0 3C0CBC00 */  lui        $t4, (0xBC00000E >> 16)
/* FCF4 8000F0F4 358C000E */  ori        $t4, $t4, (0xBC00000E & 0xFFFF)
/* FCF8 8000F0F8 25F80008 */  addiu      $t8, $t7, 0x8
/* FCFC 8000F0FC AFB80144 */  sw         $t8, 0x144($sp)
/* FD00 8000F100 ADEC0000 */  sw         $t4, 0x0($t7)
/* FD04 8000F104 97B9007A */  lhu        $t9, 0x7A($sp)
/* FD08 8000F108 3C0D0103 */  lui        $t5, (0x1030040 >> 16)
/* FD0C 8000F10C 35AD0040 */  ori        $t5, $t5, (0x1030040 & 0xFFFF)
/* FD10 8000F110 ADF90004 */  sw         $t9, 0x4($t7)
/* FD14 8000F114 8FAA0144 */  lw         $t2, 0x144($sp)
/* FD18 8000F118 3C198014 */  lui        $t9, %hi(D_8013F870)
/* FD1C 8000F11C 3C0C8014 */  lui        $t4, %hi(D_8013F850)
/* FD20 8000F120 254B0008 */  addiu      $t3, $t2, 0x8
/* FD24 8000F124 AFAB0144 */  sw         $t3, 0x144($sp)
/* FD28 8000F128 AD4D0000 */  sw         $t5, 0x0($t2)
/* FD2C 8000F12C 8FAE0140 */  lw         $t6, 0x140($sp)
/* FD30 8000F130 240D00FF */  addiu      $t5, $zero, 0xFF
/* FD34 8000F134 258CF850 */  addiu      $t4, $t4, %lo(D_8013F850)
/* FD38 8000F138 AD4E0004 */  sw         $t6, 0x4($t2)
/* FD3C 8000F13C 8FAF0140 */  lw         $t7, 0x140($sp)
/* FD40 8000F140 93AB0079 */  lbu        $t3, 0x79($sp)
/* FD44 8000F144 3C0A8014 */  lui        $t2, %hi(D_8013F860)
/* FD48 8000F148 254AF860 */  addiu      $t2, $t2, %lo(D_8013F860)
/* FD4C 8000F14C 2739F870 */  addiu      $t9, $t9, %lo(D_8013F870)
/* FD50 8000F150 25F80040 */  addiu      $t8, $t7, 0x40
/* FD54 8000F154 AFB80140 */  sw         $t8, 0x140($sp)
/* FD58 8000F158 AFB90014 */  sw         $t9, 0x14($sp)
/* FD5C 8000F15C AFAA0018 */  sw         $t2, 0x18($sp)
/* FD60 8000F160 AFAD0028 */  sw         $t5, 0x28($sp)
/* FD64 8000F164 AFA00020 */  sw         $zero, 0x20($sp)
/* FD68 8000F168 AFA0001C */  sw         $zero, 0x1C($sp)
/* FD6C 8000F16C AFAC0010 */  sw         $t4, 0x10($sp)
/* FD70 8000F170 8FA7003C */  lw         $a3, 0x3C($sp)
/* FD74 8000F174 27A40144 */  addiu      $a0, $sp, 0x144
/* FD78 8000F178 27A50140 */  addiu      $a1, $sp, 0x140
/* FD7C 8000F17C 27A6013C */  addiu      $a2, $sp, 0x13C
/* FD80 8000F180 0C0086CE */  jal        func_80021B38
/* FD84 8000F184 AFAB0024 */   sw        $t3, 0x24($sp)
/* FD88 8000F188 3C068008 */  lui        $a2, %hi(D_800821A0)
/* FD8C 8000F18C 3C078008 */  lui        $a3, %hi(D_800821A4)
/* FD90 8000F190 84C621A0 */  lh         $a2, %lo(D_800821A0)($a2)
/* FD94 8000F194 84E721A4 */  lh         $a3, %lo(D_800821A4)($a3)
/* FD98 8000F198 27A40144 */  addiu      $a0, $sp, 0x144
/* FD9C 8000F19C 0C003C76 */  jal        func_8000F1D8
/* FDA0 8000F1A0 93A5015B */   lbu       $a1, 0x15B($sp)
/* FDA4 8000F1A4 8FAE0144 */  lw         $t6, 0x144($sp)
/* FDA8 8000F1A8 8FAF0148 */  lw         $t7, 0x148($sp)
/* FDAC 8000F1AC ADEE0000 */  sw         $t6, 0x0($t7)
/* FDB0 8000F1B0 8FAC014C */  lw         $t4, 0x14C($sp)
/* FDB4 8000F1B4 8FB80140 */  lw         $t8, 0x140($sp)
/* FDB8 8000F1B8 AD980000 */  sw         $t8, 0x0($t4)
/* FDBC 8000F1BC 8FAA0150 */  lw         $t2, 0x150($sp)
/* FDC0 8000F1C0 8FB9013C */  lw         $t9, 0x13C($sp)
/* FDC4 8000F1C4 AD590000 */  sw         $t9, 0x0($t2)
/* FDC8 8000F1C8 8FBF0034 */  lw         $ra, 0x34($sp)
/* FDCC 8000F1CC 27BD0148 */  addiu      $sp, $sp, 0x148
/* FDD0 8000F1D0 03E00008 */  jr         $ra
/* FDD4 8000F1D4 00000000 */   nop

glabel func_8000F1D8
/* FDD8 8000F1D8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FDDC 8000F1DC AFBF0014 */  sw         $ra, 0x14($sp)
/* FDE0 8000F1E0 AFA40038 */  sw         $a0, 0x38($sp)
/* FDE4 8000F1E4 AFA5003C */  sw         $a1, 0x3C($sp)
/* FDE8 8000F1E8 AFA60040 */  sw         $a2, 0x40($sp)
/* FDEC 8000F1EC AFA70044 */  sw         $a3, 0x44($sp)
/* FDF0 8000F1F0 8C8A0000 */  lw         $t2, 0x0($a0)
/* FDF4 8000F1F4 30AE00FF */  andi       $t6, $a1, 0xFF
/* FDF8 8000F1F8 00067C00 */  sll        $t7, $a2, 16
/* FDFC 8000F1FC 0007CC00 */  sll        $t9, $a3, 16
/* FE00 8000F200 2DC1000A */  sltiu      $at, $t6, 0xA
/* FE04 8000F204 00193C03 */  sra        $a3, $t9, 16
/* FE08 8000F208 000F3403 */  sra        $a2, $t7, 16
/* FE0C 8000F20C 102000B0 */  beqz       $at, .L8000F4D0
/* FE10 8000F210 AFAA0034 */   sw        $t2, 0x34($sp)
/* FE14 8000F214 000E5880 */  sll        $t3, $t6, 2
/* FE18 8000F218 3C018009 */  lui        $at, %hi(jtbl_80095568_main)
/* FE1C 8000F21C 002B0821 */  addu       $at, $at, $t3
/* FE20 8000F220 8C2B5568 */  lw         $t3, %lo(jtbl_80095568_main)($at)
/* FE24 8000F224 01600008 */  jr         $t3
/* FE28 8000F228 00000000 */   nop
glabel L8000F22C
/* FE2C 8000F22C 3C180100 */  lui        $t8, %hi(D_10063C8)
/* FE30 8000F230 3C190100 */  lui        $t9, %hi(D_10069D0)
/* FE34 8000F234 273969D0 */  addiu      $t9, $t9, %lo(D_10069D0)
/* FE38 8000F238 271863C8 */  addiu      $t8, $t8, %lo(D_10063C8)
/* FE3C 8000F23C 240C00C0 */  addiu      $t4, $zero, 0xC0
/* FE40 8000F240 240D0010 */  addiu      $t5, $zero, 0x10
/* FE44 8000F244 240E00C0 */  addiu      $t6, $zero, 0xC0
/* FE48 8000F248 240F0010 */  addiu      $t7, $zero, 0x10
/* FE4C 8000F24C A7AF0026 */  sh         $t7, 0x26($sp)
/* FE50 8000F250 A7AE0024 */  sh         $t6, 0x24($sp)
/* FE54 8000F254 A7AD0022 */  sh         $t5, 0x22($sp)
/* FE58 8000F258 A7AC0020 */  sh         $t4, 0x20($sp)
/* FE5C 8000F25C AFB8002C */  sw         $t8, 0x2C($sp)
/* FE60 8000F260 AFB90030 */  sw         $t9, 0x30($sp)
/* FE64 8000F264 A7A60028 */  sh         $a2, 0x28($sp)
/* FE68 8000F268 10000099 */  b          .L8000F4D0
/* FE6C 8000F26C A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F270
/* FE70 8000F270 3C0C0100 */  lui        $t4, %hi(D_10069F8)
/* FE74 8000F274 3C0D0100 */  lui        $t5, %hi(D_1007000)
/* FE78 8000F278 25AD7000 */  addiu      $t5, $t5, %lo(D_1007000)
/* FE7C 8000F27C 258C69F8 */  addiu      $t4, $t4, %lo(D_10069F8)
/* FE80 8000F280 240800C0 */  addiu      $t0, $zero, 0xC0
/* FE84 8000F284 24090010 */  addiu      $t1, $zero, 0x10
/* FE88 8000F288 240A00C0 */  addiu      $t2, $zero, 0xC0
/* FE8C 8000F28C 240B0010 */  addiu      $t3, $zero, 0x10
/* FE90 8000F290 A7AB0026 */  sh         $t3, 0x26($sp)
/* FE94 8000F294 A7AA0024 */  sh         $t2, 0x24($sp)
/* FE98 8000F298 A7A90022 */  sh         $t1, 0x22($sp)
/* FE9C 8000F29C A7A80020 */  sh         $t0, 0x20($sp)
/* FEA0 8000F2A0 AFAC002C */  sw         $t4, 0x2C($sp)
/* FEA4 8000F2A4 AFAD0030 */  sw         $t5, 0x30($sp)
/* FEA8 8000F2A8 A7A60028 */  sh         $a2, 0x28($sp)
/* FEAC 8000F2AC 10000088 */  b          .L8000F4D0
/* FEB0 8000F2B0 A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F2B4
/* FEB4 8000F2B4 3C080100 */  lui        $t0, %hi(D_1007028)
/* FEB8 8000F2B8 3C090100 */  lui        $t1, %hi(D_1007630)
/* FEBC 8000F2BC 25297630 */  addiu      $t1, $t1, %lo(D_1007630)
/* FEC0 8000F2C0 25087028 */  addiu      $t0, $t0, %lo(D_1007028)
/* FEC4 8000F2C4 240E00C0 */  addiu      $t6, $zero, 0xC0
/* FEC8 8000F2C8 240F0010 */  addiu      $t7, $zero, 0x10
/* FECC 8000F2CC 241800C0 */  addiu      $t8, $zero, 0xC0
/* FED0 8000F2D0 24190010 */  addiu      $t9, $zero, 0x10
/* FED4 8000F2D4 A7B90026 */  sh         $t9, 0x26($sp)
/* FED8 8000F2D8 A7B80024 */  sh         $t8, 0x24($sp)
/* FEDC 8000F2DC A7AF0022 */  sh         $t7, 0x22($sp)
/* FEE0 8000F2E0 A7AE0020 */  sh         $t6, 0x20($sp)
/* FEE4 8000F2E4 AFA8002C */  sw         $t0, 0x2C($sp)
/* FEE8 8000F2E8 AFA90030 */  sw         $t1, 0x30($sp)
/* FEEC 8000F2EC A7A60028 */  sh         $a2, 0x28($sp)
/* FEF0 8000F2F0 10000077 */  b          .L8000F4D0
/* FEF4 8000F2F4 A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F2F8
/* FEF8 8000F2F8 3C0E0100 */  lui        $t6, %hi(D_1007658)
/* FEFC 8000F2FC 3C0F0100 */  lui        $t7, %hi(D_1007C60)
/* FF00 8000F300 25EF7C60 */  addiu      $t7, $t7, %lo(D_1007C60)
/* FF04 8000F304 25CE7658 */  addiu      $t6, $t6, %lo(D_1007658)
/* FF08 8000F308 240A00C0 */  addiu      $t2, $zero, 0xC0
/* FF0C 8000F30C 240B0010 */  addiu      $t3, $zero, 0x10
/* FF10 8000F310 240C00C0 */  addiu      $t4, $zero, 0xC0
/* FF14 8000F314 240D0010 */  addiu      $t5, $zero, 0x10
/* FF18 8000F318 A7AD0026 */  sh         $t5, 0x26($sp)
/* FF1C 8000F31C A7AC0024 */  sh         $t4, 0x24($sp)
/* FF20 8000F320 A7AB0022 */  sh         $t3, 0x22($sp)
/* FF24 8000F324 A7AA0020 */  sh         $t2, 0x20($sp)
/* FF28 8000F328 AFAE002C */  sw         $t6, 0x2C($sp)
/* FF2C 8000F32C AFAF0030 */  sw         $t7, 0x30($sp)
/* FF30 8000F330 A7A60028 */  sh         $a2, 0x28($sp)
/* FF34 8000F334 10000066 */  b          .L8000F4D0
/* FF38 8000F338 A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F33C
/* FF3C 8000F33C 3C0A0100 */  lui        $t2, %hi(D_1007C88)
/* FF40 8000F340 3C0B0101 */  lui        $t3, %hi(D_1008290)
/* FF44 8000F344 256B8290 */  addiu      $t3, $t3, %lo(D_1008290)
/* FF48 8000F348 254A7C88 */  addiu      $t2, $t2, %lo(D_1007C88)
/* FF4C 8000F34C 241800C0 */  addiu      $t8, $zero, 0xC0
/* FF50 8000F350 24190010 */  addiu      $t9, $zero, 0x10
/* FF54 8000F354 240800C0 */  addiu      $t0, $zero, 0xC0
/* FF58 8000F358 24090010 */  addiu      $t1, $zero, 0x10
/* FF5C 8000F35C A7A90026 */  sh         $t1, 0x26($sp)
/* FF60 8000F360 A7A80024 */  sh         $t0, 0x24($sp)
/* FF64 8000F364 A7B90022 */  sh         $t9, 0x22($sp)
/* FF68 8000F368 A7B80020 */  sh         $t8, 0x20($sp)
/* FF6C 8000F36C AFAA002C */  sw         $t2, 0x2C($sp)
/* FF70 8000F370 AFAB0030 */  sw         $t3, 0x30($sp)
/* FF74 8000F374 A7A60028 */  sh         $a2, 0x28($sp)
/* FF78 8000F378 10000055 */  b          .L8000F4D0
/* FF7C 8000F37C A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F380
/* FF80 8000F380 3C180101 */  lui        $t8, %hi(D_10082B8)
/* FF84 8000F384 3C190101 */  lui        $t9, %hi(D_10088C0)
/* FF88 8000F388 273988C0 */  addiu      $t9, $t9, %lo(D_10088C0)
/* FF8C 8000F38C 271882B8 */  addiu      $t8, $t8, %lo(D_10082B8)
/* FF90 8000F390 240C00C0 */  addiu      $t4, $zero, 0xC0
/* FF94 8000F394 240D0010 */  addiu      $t5, $zero, 0x10
/* FF98 8000F398 240E00C0 */  addiu      $t6, $zero, 0xC0
/* FF9C 8000F39C 240F0010 */  addiu      $t7, $zero, 0x10
/* FFA0 8000F3A0 A7AF0026 */  sh         $t7, 0x26($sp)
/* FFA4 8000F3A4 A7AE0024 */  sh         $t6, 0x24($sp)
/* FFA8 8000F3A8 A7AD0022 */  sh         $t5, 0x22($sp)
/* FFAC 8000F3AC A7AC0020 */  sh         $t4, 0x20($sp)
/* FFB0 8000F3B0 AFB8002C */  sw         $t8, 0x2C($sp)
/* FFB4 8000F3B4 AFB90030 */  sw         $t9, 0x30($sp)
/* FFB8 8000F3B8 A7A60028 */  sh         $a2, 0x28($sp)
/* FFBC 8000F3BC 10000044 */  b          .L8000F4D0
/* FFC0 8000F3C0 A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F3C4
/* FFC4 8000F3C4 3C0C0101 */  lui        $t4, %hi(D_10088E8)
/* FFC8 8000F3C8 3C0D0101 */  lui        $t5, %hi(D_1008EF0)
/* FFCC 8000F3CC 25AD8EF0 */  addiu      $t5, $t5, %lo(D_1008EF0)
/* FFD0 8000F3D0 258C88E8 */  addiu      $t4, $t4, %lo(D_10088E8)
/* FFD4 8000F3D4 240800C0 */  addiu      $t0, $zero, 0xC0
/* FFD8 8000F3D8 24090010 */  addiu      $t1, $zero, 0x10
/* FFDC 8000F3DC 240A00C0 */  addiu      $t2, $zero, 0xC0
/* FFE0 8000F3E0 240B0010 */  addiu      $t3, $zero, 0x10
/* FFE4 8000F3E4 A7AB0026 */  sh         $t3, 0x26($sp)
/* FFE8 8000F3E8 A7AA0024 */  sh         $t2, 0x24($sp)
/* FFEC 8000F3EC A7A90022 */  sh         $t1, 0x22($sp)
/* FFF0 8000F3F0 A7A80020 */  sh         $t0, 0x20($sp)
/* FFF4 8000F3F4 AFAC002C */  sw         $t4, 0x2C($sp)
/* FFF8 8000F3F8 AFAD0030 */  sw         $t5, 0x30($sp)
/* FFFC 8000F3FC A7A60028 */  sh         $a2, 0x28($sp)
/* 10000 8000F400 10000033 */  b          .L8000F4D0
/* 10004 8000F404 A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F408
/* 10008 8000F408 3C080101 */  lui        $t0, %hi(D_1008F18)
/* 1000C 8000F40C 3C090101 */  lui        $t1, %hi(D_1009520)
/* 10010 8000F410 25299520 */  addiu      $t1, $t1, %lo(D_1009520)
/* 10014 8000F414 25088F18 */  addiu      $t0, $t0, %lo(D_1008F18)
/* 10018 8000F418 240E00C0 */  addiu      $t6, $zero, 0xC0
/* 1001C 8000F41C 240F0010 */  addiu      $t7, $zero, 0x10
/* 10020 8000F420 241800C0 */  addiu      $t8, $zero, 0xC0
/* 10024 8000F424 24190010 */  addiu      $t9, $zero, 0x10
/* 10028 8000F428 A7B90026 */  sh         $t9, 0x26($sp)
/* 1002C 8000F42C A7B80024 */  sh         $t8, 0x24($sp)
/* 10030 8000F430 A7AF0022 */  sh         $t7, 0x22($sp)
/* 10034 8000F434 A7AE0020 */  sh         $t6, 0x20($sp)
/* 10038 8000F438 AFA8002C */  sw         $t0, 0x2C($sp)
/* 1003C 8000F43C AFA90030 */  sw         $t1, 0x30($sp)
/* 10040 8000F440 A7A60028 */  sh         $a2, 0x28($sp)
/* 10044 8000F444 10000022 */  b          .L8000F4D0
/* 10048 8000F448 A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F44C
/* 1004C 8000F44C 3C0E0101 */  lui        $t6, %hi(D_1009548)
/* 10050 8000F450 3C0F0101 */  lui        $t7, %hi(D_1009B50)
/* 10054 8000F454 25EF9B50 */  addiu      $t7, $t7, %lo(D_1009B50)
/* 10058 8000F458 25CE9548 */  addiu      $t6, $t6, %lo(D_1009548)
/* 1005C 8000F45C 240A00C0 */  addiu      $t2, $zero, 0xC0
/* 10060 8000F460 240B0010 */  addiu      $t3, $zero, 0x10
/* 10064 8000F464 240C00C0 */  addiu      $t4, $zero, 0xC0
/* 10068 8000F468 240D0010 */  addiu      $t5, $zero, 0x10
/* 1006C 8000F46C A7AD0026 */  sh         $t5, 0x26($sp)
/* 10070 8000F470 A7AC0024 */  sh         $t4, 0x24($sp)
/* 10074 8000F474 A7AB0022 */  sh         $t3, 0x22($sp)
/* 10078 8000F478 A7AA0020 */  sh         $t2, 0x20($sp)
/* 1007C 8000F47C AFAE002C */  sw         $t6, 0x2C($sp)
/* 10080 8000F480 AFAF0030 */  sw         $t7, 0x30($sp)
/* 10084 8000F484 A7A60028 */  sh         $a2, 0x28($sp)
/* 10088 8000F488 10000011 */  b          .L8000F4D0
/* 1008C 8000F48C A7A7002A */   sh        $a3, 0x2A($sp)
glabel L8000F490
/* 10090 8000F490 3C0A0101 */  lui        $t2, %hi(D_1009B78)
/* 10094 8000F494 3C0B0101 */  lui        $t3, %hi(D_100A180)
/* 10098 8000F498 256BA180 */  addiu      $t3, $t3, %lo(D_100A180)
/* 1009C 8000F49C 254A9B78 */  addiu      $t2, $t2, %lo(D_1009B78)
/* 100A0 8000F4A0 241800C0 */  addiu      $t8, $zero, 0xC0
/* 100A4 8000F4A4 24190010 */  addiu      $t9, $zero, 0x10
/* 100A8 8000F4A8 240800C0 */  addiu      $t0, $zero, 0xC0
/* 100AC 8000F4AC 24090010 */  addiu      $t1, $zero, 0x10
/* 100B0 8000F4B0 A7A90026 */  sh         $t1, 0x26($sp)
/* 100B4 8000F4B4 A7A80024 */  sh         $t0, 0x24($sp)
/* 100B8 8000F4B8 A7B90022 */  sh         $t9, 0x22($sp)
/* 100BC 8000F4BC A7B80020 */  sh         $t8, 0x20($sp)
/* 100C0 8000F4C0 AFAA002C */  sw         $t2, 0x2C($sp)
/* 100C4 8000F4C4 AFAB0030 */  sw         $t3, 0x30($sp)
/* 100C8 8000F4C8 A7A60028 */  sh         $a2, 0x28($sp)
/* 100CC 8000F4CC A7A7002A */  sh         $a3, 0x2A($sp)
.L8000F4D0:
/* 100D0 8000F4D0 27A40034 */  addiu      $a0, $sp, 0x34
/* 100D4 8000F4D4 0C003D7D */  jal        func_8000F5F4
/* 100D8 8000F4D8 27A50020 */   addiu     $a1, $sp, 0x20
/* 100DC 8000F4DC 8FAC0034 */  lw         $t4, 0x34($sp)
/* 100E0 8000F4E0 3C0EED00 */  lui        $t6, (0xED000020 >> 16)
/* 100E4 8000F4E4 3C0F004F */  lui        $t7, (0x4FC39C >> 16)
/* 100E8 8000F4E8 258D0008 */  addiu      $t5, $t4, 0x8
/* 100EC 8000F4EC AFAD0034 */  sw         $t5, 0x34($sp)
/* 100F0 8000F4F0 35EFC39C */  ori        $t7, $t7, (0x4FC39C & 0xFFFF)
/* 100F4 8000F4F4 35CE0020 */  ori        $t6, $t6, (0xED000020 & 0xFFFF)
/* 100F8 8000F4F8 AD8E0000 */  sw         $t6, 0x0($t4)
/* 100FC 8000F4FC AD8F0004 */  sw         $t7, 0x4($t4)
/* 10100 8000F500 8FB90038 */  lw         $t9, 0x38($sp)
/* 10104 8000F504 8FB80034 */  lw         $t8, 0x34($sp)
/* 10108 8000F508 AF380000 */  sw         $t8, 0x0($t9)
/* 1010C 8000F50C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10110 8000F510 27BD0038 */  addiu      $sp, $sp, 0x38
/* 10114 8000F514 03E00008 */  jr         $ra
/* 10118 8000F518 00000000 */   nop

glabel func_8000F51C
/* 1011C 8000F51C 8C850000 */  lw         $a1, 0x0($a0)
/* 10120 8000F520 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 10124 8000F524 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
/* 10128 8000F528 24A60008 */  addiu      $a2, $a1, 0x8
/* 1012C 8000F52C ACAE0000 */  sw         $t6, 0x0($a1)
/* 10130 8000F530 ACA00004 */  sw         $zero, 0x4($a1)
/* 10134 8000F534 24C70008 */  addiu      $a3, $a2, 0x8
/* 10138 8000F538 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
/* 1013C 8000F53C ACCF0000 */  sw         $t7, 0x0($a2)
/* 10140 8000F540 ACC00004 */  sw         $zero, 0x4($a2)
/* 10144 8000F544 3C18B900 */  lui        $t8, (0xB900031D >> 16)
/* 10148 8000F548 3C190050 */  lui        $t9, (0x504240 >> 16)
/* 1014C 8000F54C 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
/* 10150 8000F550 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
/* 10154 8000F554 24E20008 */  addiu      $v0, $a3, 0x8
/* 10158 8000F558 ACF80000 */  sw         $t8, 0x0($a3)
/* 1015C 8000F55C ACF90004 */  sw         $t9, 0x4($a3)
/* 10160 8000F560 3C09FB00 */  lui        $t1, (0xFB000000 >> 16)
/* 10164 8000F564 3C0A0B0A */  lui        $t2, (0xB0A64F0 >> 16)
/* 10168 8000F568 354A64F0 */  ori        $t2, $t2, (0xB0A64F0 & 0xFFFF)
/* 1016C 8000F56C AC490000 */  sw         $t1, 0x0($v0)
/* 10170 8000F570 AC4A0004 */  sw         $t2, 0x4($v0)
/* 10174 8000F574 24430008 */  addiu      $v1, $v0, 0x8
/* 10178 8000F578 3C0BFC12 */  lui        $t3, (0xFC129A25 >> 16)
/* 1017C 8000F57C 3C0CFF37 */  lui        $t4, (0xFF37FFFF >> 16)
/* 10180 8000F580 358CFFFF */  ori        $t4, $t4, (0xFF37FFFF & 0xFFFF)
/* 10184 8000F584 356B9A25 */  ori        $t3, $t3, (0xFC129A25 & 0xFFFF)
/* 10188 8000F588 24650008 */  addiu      $a1, $v1, 0x8
/* 1018C 8000F58C AC6B0000 */  sw         $t3, 0x0($v1)
/* 10190 8000F590 AC6C0004 */  sw         $t4, 0x4($v1)
/* 10194 8000F594 3C0DBA00 */  lui        $t5, (0xBA001301 >> 16)
/* 10198 8000F598 35AD1301 */  ori        $t5, $t5, (0xBA001301 & 0xFFFF)
/* 1019C 8000F59C 24A60008 */  addiu      $a2, $a1, 0x8
/* 101A0 8000F5A0 ACAD0000 */  sw         $t5, 0x0($a1)
/* 101A4 8000F5A4 ACA00004 */  sw         $zero, 0x4($a1)
/* 101A8 8000F5A8 3C0EBA00 */  lui        $t6, (0xBA001001 >> 16)
/* 101AC 8000F5AC 35CE1001 */  ori        $t6, $t6, (0xBA001001 & 0xFFFF)
/* 101B0 8000F5B0 24C70008 */  addiu      $a3, $a2, 0x8
/* 101B4 8000F5B4 ACCE0000 */  sw         $t6, 0x0($a2)
/* 101B8 8000F5B8 ACC00004 */  sw         $zero, 0x4($a2)
/* 101BC 8000F5BC 3C0FBA00 */  lui        $t7, (0xBA000C02 >> 16)
/* 101C0 8000F5C0 35EF0C02 */  ori        $t7, $t7, (0xBA000C02 & 0xFFFF)
/* 101C4 8000F5C4 24E80008 */  addiu      $t0, $a3, 0x8
/* 101C8 8000F5C8 24182000 */  addiu      $t8, $zero, 0x2000
/* 101CC 8000F5CC ACF80004 */  sw         $t8, 0x4($a3)
/* 101D0 8000F5D0 ACEF0000 */  sw         $t7, 0x0($a3)
/* 101D4 8000F5D4 3C19BA00 */  lui        $t9, (0xBA000903 >> 16)
/* 101D8 8000F5D8 37390903 */  ori        $t9, $t9, (0xBA000903 & 0xFFFF)
/* 101DC 8000F5DC 24090C00 */  addiu      $t1, $zero, 0xC00
/* 101E0 8000F5E0 AD090004 */  sw         $t1, 0x4($t0)
/* 101E4 8000F5E4 AD190000 */  sw         $t9, 0x0($t0)
/* 101E8 8000F5E8 25020008 */  addiu      $v0, $t0, 0x8
/* 101EC 8000F5EC 03E00008 */  jr         $ra
/* 101F0 8000F5F0 AC820000 */   sw        $v0, 0x0($a0)

glabel func_8000F5F4
/* 101F4 8000F5F4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 101F8 8000F5F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 101FC 8000F5FC AFA40070 */  sw         $a0, 0x70($sp)
/* 10200 8000F600 8C8F0000 */  lw         $t7, 0x0($a0)
/* 10204 8000F604 AFA50074 */  sw         $a1, 0x74($sp)
/* 10208 8000F608 27A4006C */  addiu      $a0, $sp, 0x6C
/* 1020C 8000F60C 0C003D47 */  jal        func_8000F51C
/* 10210 8000F610 AFAF006C */   sw        $t7, 0x6C($sp)
/* 10214 8000F614 8FB8006C */  lw         $t8, 0x6C($sp)
/* 10218 8000F618 8FA50074 */  lw         $a1, 0x74($sp)
/* 1021C 8000F61C 3C0BFD10 */  lui        $t3, (0xFD100000 >> 16)
/* 10220 8000F620 27190008 */  addiu      $t9, $t8, 0x8
/* 10224 8000F624 AFB9006C */  sw         $t9, 0x6C($sp)
/* 10228 8000F628 AF0B0000 */  sw         $t3, 0x0($t8)
/* 1022C 8000F62C 8CAC0010 */  lw         $t4, 0x10($a1)
/* 10230 8000F630 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
/* 10234 8000F634 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* 10238 8000F638 AF0C0004 */  sw         $t4, 0x4($t8)
/* 1023C 8000F63C 8FAD006C */  lw         $t5, 0x6C($sp)
/* 10240 8000F640 3C090700 */  lui        $t1, (0x7000000 >> 16)
/* 10244 8000F644 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* 10248 8000F648 25AE0008 */  addiu      $t6, $t5, 0x8
/* 1024C 8000F64C AFAE006C */  sw         $t6, 0x6C($sp)
/* 10250 8000F650 ADAF0000 */  sw         $t7, 0x0($t5)
/* 10254 8000F654 ADA00004 */  sw         $zero, 0x4($t5)
/* 10258 8000F658 8FB8006C */  lw         $t8, 0x6C($sp)
/* 1025C 8000F65C 3C0AE600 */  lui        $t2, (0xE6000000 >> 16)
/* 10260 8000F660 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 10264 8000F664 27190008 */  addiu      $t9, $t8, 0x8
/* 10268 8000F668 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1026C 8000F66C AF090004 */  sw         $t1, 0x4($t8)
/* 10270 8000F670 AF0B0000 */  sw         $t3, 0x0($t8)
/* 10274 8000F674 8FAC006C */  lw         $t4, 0x6C($sp)
/* 10278 8000F678 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 1027C 8000F67C 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 10280 8000F680 258D0008 */  addiu      $t5, $t4, 0x8
/* 10284 8000F684 AFAD006C */  sw         $t5, 0x6C($sp)
/* 10288 8000F688 AD800004 */  sw         $zero, 0x4($t4)
/* 1028C 8000F68C AD8A0000 */  sw         $t2, 0x0($t4)
/* 10290 8000F690 8FAE006C */  lw         $t6, 0x6C($sp)
/* 10294 8000F694 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 10298 8000F698 3C01FD48 */  lui        $at, (0xFD480000 >> 16)
/* 1029C 8000F69C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 102A0 8000F6A0 AFAF006C */  sw         $t7, 0x6C($sp)
/* 102A4 8000F6A4 ADD90004 */  sw         $t9, 0x4($t6)
/* 102A8 8000F6A8 ADD80000 */  sw         $t8, 0x0($t6)
/* 102AC 8000F6AC 8FAB006C */  lw         $t3, 0x6C($sp)
/* 102B0 8000F6B0 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
/* 102B4 8000F6B4 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
/* 102B8 8000F6B8 256C0008 */  addiu      $t4, $t3, 0x8
/* 102BC 8000F6BC AFAC006C */  sw         $t4, 0x6C($sp)
/* 102C0 8000F6C0 AD600004 */  sw         $zero, 0x4($t3)
/* 102C4 8000F6C4 AD680000 */  sw         $t0, 0x0($t3)
/* 102C8 8000F6C8 8FAD006C */  lw         $t5, 0x6C($sp)
/* 102CC 8000F6CC 34188000 */  ori        $t8, $zero, 0x8000
/* 102D0 8000F6D0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 102D4 8000F6D4 AFAE006C */  sw         $t6, 0x6C($sp)
/* 102D8 8000F6D8 ADAF0000 */  sw         $t7, 0x0($t5)
/* 102DC 8000F6DC ADB80004 */  sw         $t8, 0x4($t5)
/* 102E0 8000F6E0 8FA4006C */  lw         $a0, 0x6C($sp)
/* 102E4 8000F6E4 248B0008 */  addiu      $t3, $a0, 0x8
/* 102E8 8000F6E8 AFAB006C */  sw         $t3, 0x6C($sp)
/* 102EC 8000F6EC 94AC0000 */  lhu        $t4, 0x0($a1)
/* 102F0 8000F6F0 000C6843 */  sra        $t5, $t4, 1
/* 102F4 8000F6F4 25AEFFFF */  addiu      $t6, $t5, -0x1
/* 102F8 8000F6F8 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 102FC 8000F6FC 01E1C025 */  or         $t8, $t7, $at
/* 10300 8000F700 AC980000 */  sw         $t8, 0x0($a0)
/* 10304 8000F704 8CB9000C */  lw         $t9, 0xC($a1)
/* 10308 8000F708 3C01F548 */  lui        $at, (0xF5480000 >> 16)
/* 1030C 8000F70C AC990004 */  sw         $t9, 0x4($a0)
/* 10310 8000F710 8FA6006C */  lw         $a2, 0x6C($sp)
/* 10314 8000F714 24CC0008 */  addiu      $t4, $a2, 0x8
/* 10318 8000F718 AFAC006C */  sw         $t4, 0x6C($sp)
/* 1031C 8000F71C 94AD0000 */  lhu        $t5, 0x0($a1)
/* 10320 8000F720 000D7043 */  sra        $t6, $t5, 1
/* 10324 8000F724 25CF0007 */  addiu      $t7, $t6, 0x7
/* 10328 8000F728 000FC0C3 */  sra        $t8, $t7, 3
/* 1032C 8000F72C 331901FF */  andi       $t9, $t8, 0x1FF
/* 10330 8000F730 00195A40 */  sll        $t3, $t9, 9
/* 10334 8000F734 3C0D0708 */  lui        $t5, (0x7080200 >> 16)
/* 10338 8000F738 35AD0200 */  ori        $t5, $t5, (0x7080200 & 0xFFFF)
/* 1033C 8000F73C 01616025 */  or         $t4, $t3, $at
/* 10340 8000F740 ACCC0000 */  sw         $t4, 0x0($a2)
/* 10344 8000F744 ACCD0004 */  sw         $t5, 0x4($a2)
/* 10348 8000F748 8FAE006C */  lw         $t6, 0x6C($sp)
/* 1034C 8000F74C 3C0BF400 */  lui        $t3, (0xF4000000 >> 16)
/* 10350 8000F750 3C01F540 */  lui        $at, (0xF5400000 >> 16)
/* 10354 8000F754 25CF0008 */  addiu      $t7, $t6, 0x8
/* 10358 8000F758 AFAF006C */  sw         $t7, 0x6C($sp)
/* 1035C 8000F75C ADC00004 */  sw         $zero, 0x4($t6)
/* 10360 8000F760 ADCA0000 */  sw         $t2, 0x0($t6)
/* 10364 8000F764 8FA3006C */  lw         $v1, 0x6C($sp)
/* 10368 8000F768 24790008 */  addiu      $t9, $v1, 0x8
/* 1036C 8000F76C AFB9006C */  sw         $t9, 0x6C($sp)
/* 10370 8000F770 AC6B0000 */  sw         $t3, 0x0($v1)
/* 10374 8000F774 94AC0000 */  lhu        $t4, 0x0($a1)
/* 10378 8000F778 94AB0002 */  lhu        $t3, 0x2($a1)
/* 1037C 8000F77C 258DFFFF */  addiu      $t5, $t4, -0x1
/* 10380 8000F780 000D7040 */  sll        $t6, $t5, 1
/* 10384 8000F784 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 10388 8000F788 256CFFFF */  addiu      $t4, $t3, -0x1
/* 1038C 8000F78C 000C6880 */  sll        $t5, $t4, 2
/* 10390 8000F790 000FC300 */  sll        $t8, $t7, 12
/* 10394 8000F794 0309C825 */  or         $t9, $t8, $t1
/* 10398 8000F798 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 1039C 8000F79C 032E7825 */  or         $t7, $t9, $t6
/* 103A0 8000F7A0 AC6F0004 */  sw         $t7, 0x4($v1)
/* 103A4 8000F7A4 8FB8006C */  lw         $t8, 0x6C($sp)
/* 103A8 8000F7A8 270B0008 */  addiu      $t3, $t8, 0x8
/* 103AC 8000F7AC AFAB006C */  sw         $t3, 0x6C($sp)
/* 103B0 8000F7B0 AF000004 */  sw         $zero, 0x4($t8)
/* 103B4 8000F7B4 AF080000 */  sw         $t0, 0x0($t8)
/* 103B8 8000F7B8 8FA6006C */  lw         $a2, 0x6C($sp)
/* 103BC 8000F7BC 24CD0008 */  addiu      $t5, $a2, 0x8
/* 103C0 8000F7C0 AFAD006C */  sw         $t5, 0x6C($sp)
/* 103C4 8000F7C4 94B90000 */  lhu        $t9, 0x0($a1)
/* 103C8 8000F7C8 00197043 */  sra        $t6, $t9, 1
/* 103CC 8000F7CC 25CF0007 */  addiu      $t7, $t6, 0x7
/* 103D0 8000F7D0 000FC0C3 */  sra        $t8, $t7, 3
/* 103D4 8000F7D4 330B01FF */  andi       $t3, $t8, 0x1FF
/* 103D8 8000F7D8 000B6240 */  sll        $t4, $t3, 9
/* 103DC 8000F7DC 3C190008 */  lui        $t9, (0x80200 >> 16)
/* 103E0 8000F7E0 37390200 */  ori        $t9, $t9, (0x80200 & 0xFFFF)
/* 103E4 8000F7E4 01816825 */  or         $t5, $t4, $at
/* 103E8 8000F7E8 ACCD0000 */  sw         $t5, 0x0($a2)
/* 103EC 8000F7EC ACD90004 */  sw         $t9, 0x4($a2)
/* 103F0 8000F7F0 8FA7006C */  lw         $a3, 0x6C($sp)
/* 103F4 8000F7F4 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* 103F8 8000F7F8 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 103FC 8000F7FC 24EF0008 */  addiu      $t7, $a3, 0x8
/* 10400 8000F800 AFAF006C */  sw         $t7, 0x6C($sp)
/* 10404 8000F804 ACF80000 */  sw         $t8, 0x0($a3)
/* 10408 8000F808 94AB0000 */  lhu        $t3, 0x0($a1)
/* 1040C 8000F80C 94AF0002 */  lhu        $t7, 0x2($a1)
/* 10410 8000F810 256CFFFF */  addiu      $t4, $t3, -0x1
/* 10414 8000F814 000C6880 */  sll        $t5, $t4, 2
/* 10418 8000F818 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 1041C 8000F81C 00185880 */  sll        $t3, $t8, 2
/* 10420 8000F820 31B90FFF */  andi       $t9, $t5, 0xFFF
/* 10424 8000F824 00197300 */  sll        $t6, $t9, 12
/* 10428 8000F828 316C0FFF */  andi       $t4, $t3, 0xFFF
/* 1042C 8000F82C 01CC6825 */  or         $t5, $t6, $t4
/* 10430 8000F830 ACED0004 */  sw         $t5, 0x4($a3)
/* 10434 8000F834 8FA2006C */  lw         $v0, 0x6C($sp)
/* 10438 8000F838 244F0008 */  addiu      $t7, $v0, 0x8
/* 1043C 8000F83C AFAF006C */  sw         $t7, 0x6C($sp)
/* 10440 8000F840 84AB0008 */  lh         $t3, 0x8($a1)
/* 10444 8000F844 94B80004 */  lhu        $t8, 0x4($a1)
/* 10448 8000F848 030B7021 */  addu       $t6, $t8, $t3
/* 1044C 8000F84C 84AB000A */  lh         $t3, 0xA($a1)
/* 10450 8000F850 94B80006 */  lhu        $t8, 0x6($a1)
/* 10454 8000F854 000E6080 */  sll        $t4, $t6, 2
/* 10458 8000F858 318D0FFF */  andi       $t5, $t4, 0xFFF
/* 1045C 8000F85C 000DCB00 */  sll        $t9, $t5, 12
/* 10460 8000F860 030B7021 */  addu       $t6, $t8, $t3
/* 10464 8000F864 000E6080 */  sll        $t4, $t6, 2
/* 10468 8000F868 318D0FFF */  andi       $t5, $t4, 0xFFF
/* 1046C 8000F86C 03217825 */  or         $t7, $t9, $at
/* 10470 8000F870 01EDC825 */  or         $t9, $t7, $t5
/* 10474 8000F874 AC590000 */  sw         $t9, 0x0($v0)
/* 10478 8000F878 84B80008 */  lh         $t8, 0x8($a1)
/* 1047C 8000F87C 84AF000A */  lh         $t7, 0xA($a1)
/* 10480 8000F880 00185880 */  sll        $t3, $t8, 2
/* 10484 8000F884 316E0FFF */  andi       $t6, $t3, 0xFFF
/* 10488 8000F888 000F6880 */  sll        $t5, $t7, 2
/* 1048C 8000F88C 31B90FFF */  andi       $t9, $t5, 0xFFF
/* 10490 8000F890 000E6300 */  sll        $t4, $t6, 12
/* 10494 8000F894 0199C025 */  or         $t8, $t4, $t9
/* 10498 8000F898 AC580004 */  sw         $t8, 0x4($v0)
/* 1049C 8000F89C 8FAB006C */  lw         $t3, 0x6C($sp)
/* 104A0 8000F8A0 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 104A4 8000F8A4 3C180400 */  lui        $t8, (0x4000400 >> 16)
/* 104A8 8000F8A8 256E0008 */  addiu      $t6, $t3, 0x8
/* 104AC 8000F8AC AFAE006C */  sw         $t6, 0x6C($sp)
/* 104B0 8000F8B0 AD600004 */  sw         $zero, 0x4($t3)
/* 104B4 8000F8B4 AD6F0000 */  sw         $t7, 0x0($t3)
/* 104B8 8000F8B8 8FAD006C */  lw         $t5, 0x6C($sp)
/* 104BC 8000F8BC 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
/* 104C0 8000F8C0 3C19B300 */  lui        $t9, (0xB3000000 >> 16)
/* 104C4 8000F8C4 25AC0008 */  addiu      $t4, $t5, 0x8
/* 104C8 8000F8C8 AFAC006C */  sw         $t4, 0x6C($sp)
/* 104CC 8000F8CC ADB90000 */  sw         $t9, 0x0($t5)
/* 104D0 8000F8D0 ADB80004 */  sw         $t8, 0x4($t5)
/* 104D4 8000F8D4 8FAB006C */  lw         $t3, 0x6C($sp)
/* 104D8 8000F8D8 256E0008 */  addiu      $t6, $t3, 0x8
/* 104DC 8000F8DC AFAE006C */  sw         $t6, 0x6C($sp)
/* 104E0 8000F8E0 AD600004 */  sw         $zero, 0x4($t3)
/* 104E4 8000F8E4 AD680000 */  sw         $t0, 0x0($t3)
/* 104E8 8000F8E8 8FAD0070 */  lw         $t5, 0x70($sp)
/* 104EC 8000F8EC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 104F0 8000F8F0 ADAF0000 */  sw         $t7, 0x0($t5)
/* 104F4 8000F8F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 104F8 8000F8F8 27BD0070 */  addiu      $sp, $sp, 0x70
/* 104FC 8000F8FC 03E00008 */  jr         $ra
/* 10500 8000F900 00000000 */   nop

glabel func_8000F904
/* 10504 8000F904 03E00008 */  jr         $ra
/* 10508 8000F908 00000000 */   nop

glabel func_8000F90C
/* 1050C 8000F90C 03E00008 */  jr         $ra
/* 10510 8000F910 00000000 */   nop
/* 10514 8000F914 00000000 */  nop
/* 10518 8000F918 00000000 */  nop
/* 1051C 8000F91C 00000000 */  nop
