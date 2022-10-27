.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80067FF0
/* 68BF0 80067FF0 03E00008 */  jr         $ra
/* 68BF4 80067FF4 00000000 */   nop

glabel func_80067FF8
/* 68BF8 80067FF8 8C8E0044 */  lw         $t6, 0x44($a0)
/* 68BFC 80067FFC 44852000 */  mtc1       $a1, $f4
/* 68C00 80068000 3C01800A */  lui        $at, %hi(D_800989F0)
/* 68C04 80068004 448E4000 */  mtc1       $t6, $f8
/* 68C08 80068008 468021A0 */  cvt.s.w    $f6, $f4
/* 68C0C 8006800C D42489F0 */  ldc1       $f4, %lo(D_800989F0)($at)
/* 68C10 80068010 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 68C14 80068014 44813800 */  mtc1       $at, $f7
/* 68C18 80068018 2401FFF0 */  addiu      $at, $zero, -0x10
/* 68C1C 8006801C 468042A0 */  cvt.s.w    $f10, $f8
/* 68C20 80068020 460A3402 */  mul.s      $f16, $f6, $f10
/* 68C24 80068024 44803000 */  mtc1       $zero, $f6
/* 68C28 80068028 460084A1 */  cvt.d.s    $f18, $f16
/* 68C2C 8006802C 46249203 */  div.d      $f8, $f18, $f4
/* 68C30 80068030 46264280 */  add.d      $f10, $f8, $f6
/* 68C34 80068034 46205020 */  cvt.s.d    $f0, $f10
/* 68C38 80068038 4600040D */  trunc.w.s  $f16, $f0
/* 68C3C 8006803C 44028000 */  mfc1       $v0, $f16
/* 68C40 80068040 00000000 */  nop
/* 68C44 80068044 0041C024 */  and        $t8, $v0, $at
/* 68C48 80068048 03E00008 */  jr         $ra
/* 68C4C 8006804C 03001025 */   or        $v0, $t8, $zero

glabel func_80068050
/* 68C50 80068050 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 68C54 80068054 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68C58 80068058 AFA40018 */  sw         $a0, 0x18($sp)
/* 68C5C 8006805C AFA5001C */  sw         $a1, 0x1C($sp)
/* 68C60 80068060 0C019EBC */  jal        func_80067AF0
/* 68C64 80068064 00A02025 */   or        $a0, $a1, $zero
/* 68C68 80068068 8FA50018 */  lw         $a1, 0x18($sp)
/* 68C6C 8006806C 8FA4001C */  lw         $a0, 0x1C($sp)
/* 68C70 80068070 0C019EC8 */  jal        func_80067B20
/* 68C74 80068074 24A50014 */   addiu     $a1, $a1, 0x14
/* 68C78 80068078 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68C7C 8006807C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 68C80 80068080 03E00008 */  jr         $ra
/* 68C84 80068084 00000000 */   nop

glabel func_80068088
/* 68C88 80068088 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 68C8C 8006808C AFBF0024 */  sw         $ra, 0x24($sp)
/* 68C90 80068090 AFB20020 */  sw         $s2, 0x20($sp)
/* 68C94 80068094 AFB1001C */  sw         $s1, 0x1C($sp)
/* 68C98 80068098 AFB00018 */  sw         $s0, 0x18($sp)
/* 68C9C 8006809C 8C900014 */  lw         $s0, 0x14($a0)
/* 68CA0 800680A0 00808825 */  or         $s1, $a0, $zero
/* 68CA4 800680A4 24920004 */  addiu      $s2, $a0, 0x4
/* 68CA8 800680A8 5200000A */  beql       $s0, $zero, .L800680D4
/* 68CAC 800680AC 8FBF0024 */   lw        $ra, 0x24($sp)
.L800680B0:
/* 68CB0 800680B0 0C019EBC */  jal        func_80067AF0
/* 68CB4 800680B4 02002025 */   or        $a0, $s0, $zero
/* 68CB8 800680B8 02002025 */  or         $a0, $s0, $zero
/* 68CBC 800680BC 0C019EC8 */  jal        func_80067B20
/* 68CC0 800680C0 02402825 */   or        $a1, $s2, $zero
/* 68CC4 800680C4 8E300014 */  lw         $s0, 0x14($s1)
/* 68CC8 800680C8 1600FFF9 */  bnez       $s0, .L800680B0
/* 68CCC 800680CC 00000000 */   nop
/* 68CD0 800680D0 8FBF0024 */  lw         $ra, 0x24($sp)
.L800680D4:
/* 68CD4 800680D4 8FB00018 */  lw         $s0, 0x18($sp)
/* 68CD8 800680D8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 68CDC 800680DC 8FB20020 */  lw         $s2, 0x20($sp)
/* 68CE0 800680E0 03E00008 */  jr         $ra
/* 68CE4 800680E4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800680E8
/* 68CE8 800680E8 3C028009 */  lui        $v0, %hi(alGlobals)
/* 68CEC 800680EC 8C422E40 */  lw         $v0, %lo(alGlobals)($v0)
/* 68CF0 800680F0 8C4E002C */  lw         $t6, 0x2C($v0)
/* 68CF4 800680F4 AC8E0000 */  sw         $t6, 0x0($a0)
/* 68CF8 800680F8 03E00008 */  jr         $ra
/* 68CFC 800680FC AC44002C */   sw        $a0, 0x2C($v0)

glabel func_80068100
/* 68D00 80068100 3C028009 */  lui        $v0, %hi(alGlobals)
/* 68D04 80068104 8C422E40 */  lw         $v0, %lo(alGlobals)($v0)
/* 68D08 80068108 00001825 */  or         $v1, $zero, $zero
/* 68D0C 8006810C 8C44002C */  lw         $a0, 0x2C($v0)
/* 68D10 80068110 10800005 */  beqz       $a0, .L80068128
/* 68D14 80068114 00000000 */   nop
/* 68D18 80068118 8C8E0000 */  lw         $t6, 0x0($a0)
/* 68D1C 8006811C 00801825 */  or         $v1, $a0, $zero
/* 68D20 80068120 AC4E002C */  sw         $t6, 0x2C($v0)
/* 68D24 80068124 AC800000 */  sw         $zero, 0x0($a0)
.L80068128:
/* 68D28 80068128 03E00008 */  jr         $ra
/* 68D2C 8006812C 00601025 */   or        $v0, $v1, $zero

glabel func_80068130
/* 68D30 80068130 03E00008 */  jr         $ra
/* 68D34 80068134 00000000 */   nop

glabel func_80068138
/* 68D38 80068138 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* 68D3C 8006813C AFB10030 */  sw         $s1, 0x30($sp)
/* 68D40 80068140 3C118009 */  lui        $s1, %hi(alGlobals)
/* 68D44 80068144 8E312E40 */  lw         $s1, %lo(alGlobals)($s1)
/* 68D48 80068148 AFBF004C */  sw         $ra, 0x4C($sp)
/* 68D4C 8006814C AFB70048 */  sw         $s7, 0x48($sp)
/* 68D50 80068150 AFB60044 */  sw         $s6, 0x44($sp)
/* 68D54 80068154 AFB50040 */  sw         $s5, 0x40($sp)
/* 68D58 80068158 AFB4003C */  sw         $s4, 0x3C($sp)
/* 68D5C 8006815C AFB30038 */  sw         $s3, 0x38($sp)
/* 68D60 80068160 AFB20034 */  sw         $s2, 0x34($sp)
/* 68D64 80068164 AFB0002C */  sw         $s0, 0x2C($sp)
/* 68D68 80068168 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 68D6C 8006816C F7B40018 */  sdc1       $f20, 0x18($sp)
/* 68D70 80068170 AFA400B8 */  sw         $a0, 0xB8($sp)
/* 68D74 80068174 AFA500BC */  sw         $a1, 0xBC($sp)
/* 68D78 80068178 A7A000AA */  sh         $zero, 0xAA($sp)
/* 68D7C 8006817C 8E2F0000 */  lw         $t7, 0x0($s1)
/* 68D80 80068180 00E09825 */  or         $s3, $a3, $zero
/* 68D84 80068184 0080A025 */  or         $s4, $a0, $zero
/* 68D88 80068188 15E00004 */  bnez       $t7, .L8006819C
/* 68D8C 8006818C 00C0A825 */   or        $s5, $a2, $zero
/* 68D90 80068190 ACA00000 */  sw         $zero, 0x0($a1)
/* 68D94 80068194 10000081 */  b          .L8006839C
/* 68D98 80068198 00801025 */   or        $v0, $a0, $zero
.L8006819C:
/* 68D9C 8006819C AFA000B4 */  sw         $zero, 0xB4($sp)
/* 68DA0 800681A0 8E220000 */  lw         $v0, 0x0($s1)
/* 68DA4 800681A4 3C037FFF */  lui        $v1, (0x7FFFFFFF >> 16)
/* 68DA8 800681A8 3463FFFF */  ori        $v1, $v1, (0x7FFFFFFF & 0xFFFF)
/* 68DAC 800681AC 1040000E */  beqz       $v0, .L800681E8
/* 68DB0 800681B0 2412FFF0 */   addiu     $s2, $zero, -0x10
/* 68DB4 800681B4 8E240020 */  lw         $a0, 0x20($s1)
/* 68DB8 800681B8 8C590010 */  lw         $t9, 0x10($v0)
.L800681BC:
/* 68DBC 800681BC 03244023 */  subu       $t0, $t9, $a0
/* 68DC0 800681C0 0103082A */  slt        $at, $t0, $v1
/* 68DC4 800681C4 50200006 */  beql       $at, $zero, .L800681E0
/* 68DC8 800681C8 8C420000 */   lw        $v0, 0x0($v0)
/* 68DCC 800681CC AFA200B4 */  sw         $v0, 0xB4($sp)
/* 68DD0 800681D0 8C490010 */  lw         $t1, 0x10($v0)
/* 68DD4 800681D4 8E240020 */  lw         $a0, 0x20($s1)
/* 68DD8 800681D8 01241823 */  subu       $v1, $t1, $a0
/* 68DDC 800681DC 8C420000 */  lw         $v0, 0x0($v0)
.L800681E0:
/* 68DE0 800681E0 5440FFF6 */  bnel       $v0, $zero, .L800681BC
/* 68DE4 800681E4 8C590010 */   lw        $t9, 0x10($v0)
.L800681E8:
/* 68DE8 800681E8 8FAA00B4 */  lw         $t2, 0xB4($sp)
/* 68DEC 800681EC 8E240020 */  lw         $a0, 0x20($s1)
/* 68DF0 800681F0 8D420010 */  lw         $v0, 0x10($t2)
/* 68DF4 800681F4 00445823 */  subu       $t3, $v0, $a0
/* 68DF8 800681F8 0173082A */  slt        $at, $t3, $s3
/* 68DFC 800681FC 10200038 */  beqz       $at, .L800682E0
/* 68E00 80068200 AE22001C */   sw        $v0, 0x1C($s1)
/* 68E04 80068204 3C013FE0 */  lui        $at, (0x3FE00000 >> 16)
/* 68E08 80068208 4481B800 */  mtc1       $at, $f23
/* 68E0C 8006820C 3C01800A */  lui        $at, %hi(D_800989F8)
/* 68E10 80068210 4480B000 */  mtc1       $zero, $f22
/* 68E14 80068214 D43489F8 */  ldc1       $f20, %lo(D_800989F8)($at)
.L80068218:
/* 68E18 80068218 8E2C001C */  lw         $t4, 0x1C($s1)
/* 68E1C 8006821C 3C107FFF */  lui        $s0, (0x7FFFFFFF >> 16)
/* 68E20 80068220 3610FFFF */  ori        $s0, $s0, (0x7FFFFFFF & 0xFFFF)
/* 68E24 80068224 01926824 */  and        $t5, $t4, $s2
/* 68E28 80068228 AE2D001C */  sw         $t5, 0x1C($s1)
/* 68E2C 8006822C 8FA400B4 */  lw         $a0, 0xB4($sp)
/* 68E30 80068230 8C990008 */  lw         $t9, 0x8($a0)
/* 68E34 80068234 0320F809 */  jalr       $t9
/* 68E38 80068238 00000000 */   nop
/* 68E3C 8006823C 8E380044 */  lw         $t8, 0x44($s1)
/* 68E40 80068240 44822000 */  mtc1       $v0, $f4
/* 68E44 80068244 8FA800B4 */  lw         $t0, 0xB4($sp)
/* 68E48 80068248 44984000 */  mtc1       $t8, $f8
/* 68E4C 8006824C 468021A0 */  cvt.s.w    $f6, $f4
/* 68E50 80068250 8D090010 */  lw         $t1, 0x10($t0)
/* 68E54 80068254 468042A0 */  cvt.s.w    $f10, $f8
/* 68E58 80068258 460A3402 */  mul.s      $f16, $f6, $f10
/* 68E5C 8006825C 460084A1 */  cvt.d.s    $f18, $f16
/* 68E60 80068260 46349103 */  div.d      $f4, $f18, $f20
/* 68E64 80068264 46362200 */  add.d      $f8, $f4, $f22
/* 68E68 80068268 46204020 */  cvt.s.d    $f0, $f8
/* 68E6C 8006826C 4600018D */  trunc.w.s  $f6, $f0
/* 68E70 80068270 44023000 */  mfc1       $v0, $f6
/* 68E74 80068274 00000000 */  nop
/* 68E78 80068278 01225021 */  addu       $t2, $t1, $v0
/* 68E7C 8006827C AD0A0010 */  sw         $t2, 0x10($t0)
/* 68E80 80068280 AFA000B4 */  sw         $zero, 0xB4($sp)
/* 68E84 80068284 8E230000 */  lw         $v1, 0x0($s1)
/* 68E88 80068288 5060000F */  beql       $v1, $zero, .L800682C8
/* 68E8C 8006828C 8FAF00B4 */   lw        $t7, 0xB4($sp)
/* 68E90 80068290 8E240020 */  lw         $a0, 0x20($s1)
/* 68E94 80068294 8C6B0010 */  lw         $t3, 0x10($v1)
.L80068298:
/* 68E98 80068298 01646023 */  subu       $t4, $t3, $a0
/* 68E9C 8006829C 0190082A */  slt        $at, $t4, $s0
/* 68EA0 800682A0 50200006 */  beql       $at, $zero, .L800682BC
/* 68EA4 800682A4 8C630000 */   lw        $v1, 0x0($v1)
/* 68EA8 800682A8 AFA300B4 */  sw         $v1, 0xB4($sp)
/* 68EAC 800682AC 8C6D0010 */  lw         $t5, 0x10($v1)
/* 68EB0 800682B0 8E240020 */  lw         $a0, 0x20($s1)
/* 68EB4 800682B4 01A48023 */  subu       $s0, $t5, $a0
/* 68EB8 800682B8 8C630000 */  lw         $v1, 0x0($v1)
.L800682BC:
/* 68EBC 800682BC 5460FFF6 */  bnel       $v1, $zero, .L80068298
/* 68EC0 800682C0 8C6B0010 */   lw        $t3, 0x10($v1)
/* 68EC4 800682C4 8FAF00B4 */  lw         $t7, 0xB4($sp)
.L800682C8:
/* 68EC8 800682C8 8E240020 */  lw         $a0, 0x20($s1)
/* 68ECC 800682CC 8DE20010 */  lw         $v0, 0x10($t7)
/* 68ED0 800682D0 0044C823 */  subu       $t9, $v0, $a0
/* 68ED4 800682D4 0333082A */  slt        $at, $t9, $s3
/* 68ED8 800682D8 1420FFCF */  bnez       $at, .L80068218
/* 68EDC 800682DC AE22001C */   sw        $v0, 0x1C($s1)
.L800682E0:
/* 68EE0 800682E0 8E38001C */  lw         $t8, 0x1C($s1)
/* 68EE4 800682E4 2412FFF0 */  addiu      $s2, $zero, -0x10
/* 68EE8 800682E8 27B700AA */  addiu      $s7, $sp, 0xAA
/* 68EEC 800682EC 03127024 */  and        $t6, $t8, $s2
/* 68EF0 800682F0 1A600022 */  blez       $s3, .L8006837C
/* 68EF4 800682F4 AE2E001C */   sw        $t6, 0x1C($s1)
/* 68EF8 800682F8 3C160700 */  lui        $s6, (0x7000000 >> 16)
.L800682FC:
/* 68EFC 800682FC 8E220048 */  lw         $v0, 0x48($s1)
/* 68F00 80068300 02608025 */  or         $s0, $s3, $zero
/* 68F04 80068304 0053082A */  slt        $at, $v0, $s3
/* 68F08 80068308 10200003 */  beqz       $at, .L80068318
/* 68F0C 8006830C 00000000 */   nop
/* 68F10 80068310 10000001 */  b          .L80068318
/* 68F14 80068314 00408025 */   or        $s0, $v0, $zero
.L80068318:
/* 68F18 80068318 AE960000 */  sw         $s6, 0x0($s4)
/* 68F1C 8006831C AE800004 */  sw         $zero, 0x4($s4)
/* 68F20 80068320 8E320038 */  lw         $s2, 0x38($s1)
/* 68F24 80068324 24050006 */  addiu      $a1, $zero, 0x6
/* 68F28 80068328 02A03025 */  or         $a2, $s5, $zero
/* 68F2C 8006832C 8E590008 */  lw         $t9, 0x8($s2)
/* 68F30 80068330 02402025 */  or         $a0, $s2, $zero
/* 68F34 80068334 0320F809 */  jalr       $t9
/* 68F38 80068338 00000000 */   nop
/* 68F3C 8006833C 8E270020 */  lw         $a3, 0x20($s1)
/* 68F40 80068340 26890008 */  addiu      $t1, $s4, 0x8
/* 68F44 80068344 AFA90010 */  sw         $t1, 0x10($sp)
/* 68F48 80068348 8E590004 */  lw         $t9, 0x4($s2)
/* 68F4C 8006834C 02402025 */  or         $a0, $s2, $zero
/* 68F50 80068350 02E02825 */  or         $a1, $s7, $zero
/* 68F54 80068354 0320F809 */  jalr       $t9
/* 68F58 80068358 02003025 */   or        $a2, $s0, $zero
/* 68F5C 8006835C 8E2B0020 */  lw         $t3, 0x20($s1)
/* 68F60 80068360 02709823 */  subu       $s3, $s3, $s0
/* 68F64 80068364 00104080 */  sll        $t0, $s0, 2
/* 68F68 80068368 01706021 */  addu       $t4, $t3, $s0
/* 68F6C 8006836C 0040A025 */  or         $s4, $v0, $zero
/* 68F70 80068370 02A8A821 */  addu       $s5, $s5, $t0
/* 68F74 80068374 1E60FFE1 */  bgtz       $s3, .L800682FC
/* 68F78 80068378 AE2C0020 */   sw        $t4, 0x20($s1)
.L8006837C:
/* 68F7C 8006837C 8FAD00B8 */  lw         $t5, 0xB8($sp)
/* 68F80 80068380 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 68F84 80068384 02202025 */  or         $a0, $s1, $zero
/* 68F88 80068388 028D7823 */  subu       $t7, $s4, $t5
/* 68F8C 8006838C 000FC0C3 */  sra        $t8, $t7, 3
/* 68F90 80068390 0C01A022 */  jal        func_80068088
/* 68F94 80068394 ADD80000 */   sw        $t8, 0x0($t6)
/* 68F98 80068398 02801025 */  or         $v0, $s4, $zero
.L8006839C:
/* 68F9C 8006839C 8FBF004C */  lw         $ra, 0x4C($sp)
/* 68FA0 800683A0 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 68FA4 800683A4 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 68FA8 800683A8 8FB0002C */  lw         $s0, 0x2C($sp)
/* 68FAC 800683AC 8FB10030 */  lw         $s1, 0x30($sp)
/* 68FB0 800683B0 8FB20034 */  lw         $s2, 0x34($sp)
/* 68FB4 800683B4 8FB30038 */  lw         $s3, 0x38($sp)
/* 68FB8 800683B8 8FB4003C */  lw         $s4, 0x3C($sp)
/* 68FBC 800683BC 8FB50040 */  lw         $s5, 0x40($sp)
/* 68FC0 800683C0 8FB60044 */  lw         $s6, 0x44($sp)
/* 68FC4 800683C4 8FB70048 */  lw         $s7, 0x48($sp)
/* 68FC8 800683C8 03E00008 */  jr         $ra
/* 68FCC 800683CC 27BD00B8 */   addiu     $sp, $sp, 0xB8

glabel func_800683D0
/* 68FD0 800683D0 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 68FD4 800683D4 AFBF0044 */  sw         $ra, 0x44($sp)
/* 68FD8 800683D8 AFBE0040 */  sw         $fp, 0x40($sp)
/* 68FDC 800683DC AFB7003C */  sw         $s7, 0x3C($sp)
/* 68FE0 800683E0 AFB60038 */  sw         $s6, 0x38($sp)
/* 68FE4 800683E4 AFB50034 */  sw         $s5, 0x34($sp)
/* 68FE8 800683E8 AFB40030 */  sw         $s4, 0x30($sp)
/* 68FEC 800683EC AFB3002C */  sw         $s3, 0x2C($sp)
/* 68FF0 800683F0 AFB20028 */  sw         $s2, 0x28($sp)
/* 68FF4 800683F4 AFB10024 */  sw         $s1, 0x24($sp)
/* 68FF8 800683F8 AFB00020 */  sw         $s0, 0x20($sp)
/* 68FFC 800683FC 8CB70014 */  lw         $s7, 0x14($a1)
/* 69000 80068400 AC800000 */  sw         $zero, 0x0($a0)
/* 69004 80068404 8CAE0004 */  lw         $t6, 0x4($a1)
/* 69008 80068408 AC800020 */  sw         $zero, 0x20($a0)
/* 6900C 8006840C AC80001C */  sw         $zero, 0x1C($a0)
/* 69010 80068410 AC8E003C */  sw         $t6, 0x3C($a0)
/* 69014 80068414 8CAF0018 */  lw         $t7, 0x18($a1)
/* 69018 80068418 241800A0 */  addiu      $t8, $zero, 0xA0
/* 6901C 8006841C AC980048 */  sw         $t8, 0x48($a0)
/* 69020 80068420 AC8F0044 */  sw         $t7, 0x44($a0)
/* 69024 80068424 8CB90010 */  lw         $t9, 0x10($a1)
/* 69028 80068428 0080B025 */  or         $s6, $a0, $zero
/* 6902C 8006842C 00A0F025 */  or         $fp, $a1, $zero
/* 69030 80068430 2408001C */  addiu      $t0, $zero, 0x1C
/* 69034 80068434 AC990024 */  sw         $t9, 0x24($a0)
/* 69038 80068438 AFA80010 */  sw         $t0, 0x10($sp)
/* 6903C 8006843C 00002025 */  or         $a0, $zero, $zero
/* 69040 80068440 00002825 */  or         $a1, $zero, $zero
/* 69044 80068444 24070001 */  addiu      $a3, $zero, 0x1
/* 69048 80068448 0C0196D0 */  jal        func_80065B40
/* 6904C 8006844C 02E03025 */   or        $a2, $s7, $zero
/* 69050 80068450 AFA2005C */  sw         $v0, 0x5C($sp)
/* 69054 80068454 0C01C4F8 */  jal        func_800713E0
/* 69058 80068458 00402025 */   or        $a0, $v0, $zero
/* 6905C 8006845C 8FA9005C */  lw         $t1, 0x5C($sp)
/* 69060 80068460 240A004C */  addiu      $t2, $zero, 0x4C
/* 69064 80068464 00002025 */  or         $a0, $zero, $zero
/* 69068 80068468 AEC90038 */  sw         $t1, 0x38($s6)
/* 6906C 8006846C AFAA0010 */  sw         $t2, 0x10($sp)
/* 69070 80068470 00002825 */  or         $a1, $zero, $zero
/* 69074 80068474 02E03025 */  or         $a2, $s7, $zero
/* 69078 80068478 0C0196D0 */  jal        func_80065B40
/* 6907C 8006847C 24070001 */   addiu     $a3, $zero, 0x1
/* 69080 80068480 240B0001 */  addiu      $t3, $zero, 0x1
/* 69084 80068484 AEC20034 */  sw         $v0, 0x34($s6)
/* 69088 80068488 AECB0040 */  sw         $t3, 0x40($s6)
/* 6908C 8006848C 8FC70004 */  lw         $a3, 0x4($fp)
/* 69090 80068490 240C0004 */  addiu      $t4, $zero, 0x4
/* 69094 80068494 AFAC0010 */  sw         $t4, 0x10($sp)
/* 69098 80068498 00002025 */  or         $a0, $zero, $zero
/* 6909C 8006849C 00002825 */  or         $a1, $zero, $zero
/* 690A0 800684A0 0C0196D0 */  jal        func_80065B40
/* 690A4 800684A4 02E03025 */   or        $a2, $s7, $zero
/* 690A8 800684A8 8EC40034 */  lw         $a0, 0x34($s6)
/* 690AC 800684AC 00402825 */  or         $a1, $v0, $zero
/* 690B0 800684B0 0C01C51E */  jal        func_80071478
/* 690B4 800684B4 8FC60004 */   lw        $a2, 0x4($fp)
/* 690B8 800684B8 240D0020 */  addiu      $t5, $zero, 0x20
/* 690BC 800684BC AFAD0010 */  sw         $t5, 0x10($sp)
/* 690C0 800684C0 00002025 */  or         $a0, $zero, $zero
/* 690C4 800684C4 00002825 */  or         $a1, $zero, $zero
/* 690C8 800684C8 02E03025 */  or         $a2, $s7, $zero
/* 690CC 800684CC 0C0196D0 */  jal        func_80065B40
/* 690D0 800684D0 24070001 */   addiu     $a3, $zero, 0x1
/* 690D4 800684D4 AEC20030 */  sw         $v0, 0x30($s6)
/* 690D8 800684D8 8FC70004 */  lw         $a3, 0x4($fp)
/* 690DC 800684DC 240E0004 */  addiu      $t6, $zero, 0x4
/* 690E0 800684E0 AFAE0010 */  sw         $t6, 0x10($sp)
/* 690E4 800684E4 00002025 */  or         $a0, $zero, $zero
/* 690E8 800684E8 00002825 */  or         $a1, $zero, $zero
/* 690EC 800684EC 0C0196D0 */  jal        func_80065B40
/* 690F0 800684F0 02E03025 */   or        $a2, $s7, $zero
/* 690F4 800684F4 8EC40030 */  lw         $a0, 0x30($s6)
/* 690F8 800684F8 00402825 */  or         $a1, $v0, $zero
/* 690FC 800684FC 0C01C509 */  jal        func_80071424
/* 69100 80068500 8FC60004 */   lw        $a2, 0x4($fp)
/* 69104 80068504 93CF001C */  lbu        $t7, 0x1C($fp)
/* 69108 80068508 02C02025 */  or         $a0, $s6, $zero
/* 6910C 8006850C 03C03025 */  or         $a2, $fp, $zero
/* 69110 80068510 11E00006 */  beqz       $t7, .L8006852C
/* 69114 80068514 24050002 */   addiu     $a1, $zero, 0x2
/* 69118 80068518 00002825 */  or         $a1, $zero, $zero
/* 6911C 8006851C 0C01C6E0 */  jal        func_80071B80
/* 69120 80068520 02E03825 */   or        $a3, $s7, $zero
/* 69124 80068524 10000005 */  b          .L8006853C
/* 69128 80068528 AEC00004 */   sw        $zero, 0x4($s6)
.L8006852C:
/* 6912C 8006852C 8EC40030 */  lw         $a0, 0x30($s6)
/* 69130 80068530 0C01C708 */  jal        func_80071C20
/* 69134 80068534 8EC60034 */   lw        $a2, 0x34($s6)
/* 69138 80068538 AEC00004 */  sw         $zero, 0x4($s6)
.L8006853C:
/* 6913C 8006853C AEC00008 */  sw         $zero, 0x8($s6)
/* 69140 80068540 AEC00014 */  sw         $zero, 0x14($s6)
/* 69144 80068544 AEC00018 */  sw         $zero, 0x18($s6)
/* 69148 80068548 AEC0000C */  sw         $zero, 0xC($s6)
/* 6914C 8006854C AEC00010 */  sw         $zero, 0x10($s6)
/* 69150 80068550 8FC70004 */  lw         $a3, 0x4($fp)
/* 69154 80068554 241800DC */  addiu      $t8, $zero, 0xDC
/* 69158 80068558 AFB80010 */  sw         $t8, 0x10($sp)
/* 6915C 8006855C 00002025 */  or         $a0, $zero, $zero
/* 69160 80068560 00002825 */  or         $a1, $zero, $zero
/* 69164 80068564 0C0196D0 */  jal        func_80065B40
/* 69168 80068568 02E03025 */   or        $a2, $s7, $zero
/* 6916C 8006856C 8FD90004 */  lw         $t9, 0x4($fp)
/* 69170 80068570 0000A025 */  or         $s4, $zero, $zero
/* 69174 80068574 00408025 */  or         $s0, $v0, $zero
/* 69178 80068578 1B20002F */  blez       $t9, .L80068638
/* 6917C 8006857C 26C50004 */   addiu     $a1, $s6, 0x4
/* 69180 80068580 2451008C */  addiu      $s1, $v0, 0x8C
/* 69184 80068584 24520058 */  addiu      $s2, $v0, 0x58
/* 69188 80068588 24530010 */  addiu      $s3, $v0, 0x10
/* 6918C 8006858C AFA50048 */  sw         $a1, 0x48($sp)
.L80068590:
/* 69190 80068590 8FA50048 */  lw         $a1, 0x48($sp)
/* 69194 80068594 0200A825 */  or         $s5, $s0, $zero
/* 69198 80068598 0C019EC8 */  jal        func_80067B20
/* 6919C 8006859C 02002025 */   or        $a0, $s0, $zero
/* 691A0 800685A0 AE000008 */  sw         $zero, 0x8($s0)
/* 691A4 800685A4 8EC50024 */  lw         $a1, 0x24($s6)
/* 691A8 800685A8 02602025 */  or         $a0, $s3, $zero
/* 691AC 800685AC 0C01C555 */  jal        func_80071554
/* 691B0 800685B0 02E03025 */   or        $a2, $s7, $zero
/* 691B4 800685B4 02602025 */  or         $a0, $s3, $zero
/* 691B8 800685B8 24050001 */  addiu      $a1, $zero, 0x1
/* 691BC 800685BC 0C01C75C */  jal        func_80071D70
/* 691C0 800685C0 00003025 */   or        $a2, $zero, $zero
/* 691C4 800685C4 02402025 */  or         $a0, $s2, $zero
/* 691C8 800685C8 0C01C533 */  jal        func_800714CC
/* 691CC 800685CC 02E02825 */   or        $a1, $s7, $zero
/* 691D0 800685D0 02402025 */  or         $a0, $s2, $zero
/* 691D4 800685D4 24050001 */  addiu      $a1, $zero, 0x1
/* 691D8 800685D8 0C01CA30 */  jal        func_800728C0
/* 691DC 800685DC 02603025 */   or        $a2, $s3, $zero
/* 691E0 800685E0 02202025 */  or         $a0, $s1, $zero
/* 691E4 800685E4 0C01C57F */  jal        func_800715FC
/* 691E8 800685E8 02E02825 */   or        $a1, $s7, $zero
/* 691EC 800685EC 02202025 */  or         $a0, $s1, $zero
/* 691F0 800685F0 24050001 */  addiu      $a1, $zero, 0x1
/* 691F4 800685F4 0C01CB35 */  jal        func_80072CD4
/* 691F8 800685F8 02403025 */   or        $a2, $s2, $zero
/* 691FC 800685FC 8EC40034 */  lw         $a0, 0x34($s6)
/* 69200 80068600 24050002 */  addiu      $a1, $zero, 0x2
/* 69204 80068604 0C01CE08 */  jal        func_80073820
/* 69208 80068608 02203025 */   or        $a2, $s1, $zero
/* 6920C 8006860C 26A8008C */  addiu      $t0, $s5, 0x8C
/* 69210 80068610 AEA8000C */  sw         $t0, 0xC($s5)
/* 69214 80068614 8FC90004 */  lw         $t1, 0x4($fp)
/* 69218 80068618 26940001 */  addiu      $s4, $s4, 0x1
/* 6921C 8006861C 261000DC */  addiu      $s0, $s0, 0xDC
/* 69220 80068620 0289082A */  slt        $at, $s4, $t1
/* 69224 80068624 263100DC */  addiu      $s1, $s1, 0xDC
/* 69228 80068628 265200DC */  addiu      $s2, $s2, 0xDC
/* 6922C 8006862C 1420FFD8 */  bnez       $at, .L80068590
/* 69230 80068630 267300DC */   addiu     $s3, $s3, 0xDC
/* 69234 80068634 0000A025 */  or         $s4, $zero, $zero
.L80068638:
/* 69238 80068638 8FA4005C */  lw         $a0, 0x5C($sp)
/* 6923C 8006863C 24050001 */  addiu      $a1, $zero, 0x1
/* 69240 80068640 0C01CE4C */  jal        func_80073930
/* 69244 80068644 8EC60030 */   lw        $a2, 0x30($s6)
/* 69248 80068648 8FC70008 */  lw         $a3, 0x8($fp)
/* 6924C 8006864C 240A001C */  addiu      $t2, $zero, 0x1C
/* 69250 80068650 AFAA0010 */  sw         $t2, 0x10($sp)
/* 69254 80068654 00002025 */  or         $a0, $zero, $zero
/* 69258 80068658 00002825 */  or         $a1, $zero, $zero
/* 6925C 8006865C 0C0196D0 */  jal        func_80065B40
/* 69260 80068660 02E03025 */   or        $a2, $s7, $zero
/* 69264 80068664 AEC0002C */  sw         $zero, 0x2C($s6)
/* 69268 80068668 8FCB0008 */  lw         $t3, 0x8($fp)
/* 6926C 8006866C 00401825 */  or         $v1, $v0, $zero
/* 69270 80068670 5960000B */  blezl      $t3, .L800686A0
/* 69274 80068674 AED70028 */   sw        $s7, 0x28($s6)
/* 69278 80068678 8ECC002C */  lw         $t4, 0x2C($s6)
.L8006867C:
/* 6927C 8006867C 26940001 */  addiu      $s4, $s4, 0x1
/* 69280 80068680 AC6C0000 */  sw         $t4, 0x0($v1)
/* 69284 80068684 AEC3002C */  sw         $v1, 0x2C($s6)
/* 69288 80068688 8FCD0008 */  lw         $t5, 0x8($fp)
/* 6928C 8006868C 2463001C */  addiu      $v1, $v1, 0x1C
/* 69290 80068690 028D082A */  slt        $at, $s4, $t5
/* 69294 80068694 5420FFF9 */  bnel       $at, $zero, .L8006867C
/* 69298 80068698 8ECC002C */   lw        $t4, 0x2C($s6)
/* 6929C 8006869C AED70028 */  sw         $s7, 0x28($s6)
.L800686A0:
/* 692A0 800686A0 8FBF0044 */  lw         $ra, 0x44($sp)
/* 692A4 800686A4 8FBE0040 */  lw         $fp, 0x40($sp)
/* 692A8 800686A8 8FB7003C */  lw         $s7, 0x3C($sp)
/* 692AC 800686AC 8FB60038 */  lw         $s6, 0x38($sp)
/* 692B0 800686B0 8FB50034 */  lw         $s5, 0x34($sp)
/* 692B4 800686B4 8FB40030 */  lw         $s4, 0x30($sp)
/* 692B8 800686B8 8FB3002C */  lw         $s3, 0x2C($sp)
/* 692BC 800686BC 8FB20028 */  lw         $s2, 0x28($sp)
/* 692C0 800686C0 8FB10024 */  lw         $s1, 0x24($sp)
/* 692C4 800686C4 8FB00020 */  lw         $s0, 0x20($sp)
/* 692C8 800686C8 03E00008 */  jr         $ra
/* 692CC 800686CC 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_800686D0
/* 692D0 800686D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 692D4 800686D4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 692D8 800686D8 AFA40038 */  sw         $a0, 0x38($sp)
/* 692DC 800686DC AFA5003C */  sw         $a1, 0x3C($sp)
/* 692E0 800686E0 AFA60040 */  sw         $a2, 0x40($sp)
/* 692E4 800686E4 AFB20020 */  sw         $s2, 0x20($sp)
/* 692E8 800686E8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 692EC 800686EC 0C01C218 */  jal        __osDisableInt
/* 692F0 800686F0 AFB00018 */   sw        $s0, 0x18($sp)
/* 692F4 800686F4 8FAE0038 */  lw         $t6, 0x38($sp)
/* 692F8 800686F8 00408025 */  or         $s0, $v0, $zero
/* 692FC 800686FC 8DCF0008 */  lw         $t7, 0x8($t6)
/* 69300 80068700 8DD80010 */  lw         $t8, 0x10($t6)
/* 69304 80068704 01F8082A */  slt        $at, $t7, $t8
/* 69308 80068708 14200018 */  bnez       $at, .L8006876C
/* 6930C 8006870C 00000000 */   nop
.L80068710:
/* 69310 80068710 8FB90040 */  lw         $t9, 0x40($sp)
/* 69314 80068714 24010001 */  addiu      $at, $zero, 0x1
/* 69318 80068718 1721000A */  bne        $t9, $at, .L80068744
/* 6931C 8006871C 00000000 */   nop
/* 69320 80068720 3C098009 */  lui        $t1, %hi(D_80094880)
/* 69324 80068724 8D294880 */  lw         $t1, %lo(D_80094880)($t1)
/* 69328 80068728 24080008 */  addiu      $t0, $zero, 0x8
/* 6932C 8006872C A5280010 */  sh         $t0, 0x10($t1)
/* 69330 80068730 8FA40038 */  lw         $a0, 0x38($sp)
/* 69334 80068734 0C01C3B3 */  jal        func_80070ECC
/* 69338 80068738 24840004 */   addiu     $a0, $a0, 0x4
/* 6933C 8006873C 10000005 */  b          .L80068754
/* 69340 80068740 00000000 */   nop
.L80068744:
/* 69344 80068744 0C01C220 */  jal        __osRestoreInt
/* 69348 80068748 02002025 */   or        $a0, $s0, $zero
/* 6934C 8006874C 1000002D */  b          .L80068804
/* 69350 80068750 2402FFFF */   addiu     $v0, $zero, -0x1
.L80068754:
/* 69354 80068754 8FAA0038 */  lw         $t2, 0x38($sp)
/* 69358 80068758 8D4B0008 */  lw         $t3, 0x8($t2)
/* 6935C 8006875C 8D4C0010 */  lw         $t4, 0x10($t2)
/* 69360 80068760 016C082A */  slt        $at, $t3, $t4
/* 69364 80068764 1020FFEA */  beqz       $at, .L80068710
/* 69368 80068768 00000000 */   nop
.L8006876C:
/* 6936C 8006876C 8FAD0038 */  lw         $t5, 0x38($sp)
/* 69370 80068770 8FA8003C */  lw         $t0, 0x3C($sp)
/* 69374 80068774 8DAE000C */  lw         $t6, 0xC($t5)
/* 69378 80068778 8DAF0008 */  lw         $t7, 0x8($t5)
/* 6937C 8006877C 8DB90010 */  lw         $t9, 0x10($t5)
/* 69380 80068780 8DA90014 */  lw         $t1, 0x14($t5)
/* 69384 80068784 01CFC021 */  addu       $t8, $t6, $t7
/* 69388 80068788 0319001A */  div        $zero, $t8, $t9
/* 6938C 8006878C 00008810 */  mfhi       $s1
/* 69390 80068790 00115080 */  sll        $t2, $s1, 2
/* 69394 80068794 012A5821 */  addu       $t3, $t1, $t2
/* 69398 80068798 AD680000 */  sw         $t0, 0x0($t3)
/* 6939C 8006879C 8FAC0038 */  lw         $t4, 0x38($sp)
/* 693A0 800687A0 17200002 */  bnez       $t9, .L800687AC
/* 693A4 800687A4 00000000 */   nop
/* 693A8 800687A8 0007000D */  break      7
.L800687AC:
/* 693AC 800687AC 2401FFFF */  addiu      $at, $zero, -0x1
/* 693B0 800687B0 17210004 */  bne        $t9, $at, .L800687C4
/* 693B4 800687B4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 693B8 800687B8 17010002 */  bne        $t8, $at, .L800687C4
/* 693BC 800687BC 00000000 */   nop
/* 693C0 800687C0 0006000D */  break      6
.L800687C4:
/* 693C4 800687C4 8D8E0008 */  lw         $t6, 0x8($t4)
/* 693C8 800687C8 25CF0001 */  addiu      $t7, $t6, 0x1
/* 693CC 800687CC AD8F0008 */  sw         $t7, 0x8($t4)
/* 693D0 800687D0 8FB80038 */  lw         $t8, 0x38($sp)
/* 693D4 800687D4 8F190000 */  lw         $t9, 0x0($t8)
/* 693D8 800687D8 8F2D0000 */  lw         $t5, 0x0($t9)
/* 693DC 800687DC 11A00006 */  beqz       $t5, .L800687F8
/* 693E0 800687E0 00000000 */   nop
/* 693E4 800687E4 0C01C405 */  jal        func_80071014
/* 693E8 800687E8 03002025 */   or        $a0, $t8, $zero
/* 693EC 800687EC 00409025 */  or         $s2, $v0, $zero
/* 693F0 800687F0 0C019F40 */  jal        func_80067D00
/* 693F4 800687F4 02402025 */   or        $a0, $s2, $zero
.L800687F8:
/* 693F8 800687F8 0C01C220 */  jal        __osRestoreInt
/* 693FC 800687FC 02002025 */   or        $a0, $s0, $zero
/* 69400 80068800 00001025 */  or         $v0, $zero, $zero
.L80068804:
/* 69404 80068804 8FBF0024 */  lw         $ra, 0x24($sp)
/* 69408 80068808 8FB00018 */  lw         $s0, 0x18($sp)
/* 6940C 8006880C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 69410 80068810 8FB20020 */  lw         $s2, 0x20($sp)
/* 69414 80068814 03E00008 */  jr         $ra
/* 69418 80068818 27BD0038 */   addiu     $sp, $sp, 0x38
/* 6941C 8006881C 00000000 */  nop
