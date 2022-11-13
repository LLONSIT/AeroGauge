glabel func_8001E340
/* 1EF40 8001E340 3C0E8014 */  lui        $t6, %hi(D_8013FF90)
/* 1EF44 8001E344 91CEFF90 */  lbu        $t6, %lo(D_8013FF90)($t6)
/* 1EF48 8001E348 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EF4C 8001E34C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EF50 8001E350 2DC1000B */  sltiu      $at, $t6, 0xB
/* 1EF54 8001E354 10200041 */  beqz       $at, L8001E45C
/* 1EF58 8001E358 000E7080 */   sll       $t6, $t6, 2
/* 1EF5C 8001E35C 3C018009 */  lui        $at, %hi(jtbl_80096EF0_main)
/* 1EF60 8001E360 002E0821 */  addu       $at, $at, $t6
/* 1EF64 8001E364 8C2E6EF0 */  lw         $t6, %lo(jtbl_80096EF0_main)($at)
/* 1EF68 8001E368 01C00008 */  jr         $t6
/* 1EF6C 8001E36C 00000000 */   nop
glabel L8001E370
/* 1EF70 8001E370 0C007870 */  jal        func_8001E1C0
/* 1EF74 8001E374 00000000 */   nop
/* 1EF78 8001E378 10000039 */  b          .L8001E460
/* 1EF7C 8001E37C 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001E380
/* 1EF80 8001E380 0C003385 */  jal        func_8000CE14
/* 1EF84 8001E384 24040003 */   addiu     $a0, $zero, 0x3
/* 1EF88 8001E388 10400034 */  beqz       $v0, L8001E45C
/* 1EF8C 8001E38C 3C028014 */   lui       $v0, %hi(D_8013FF9B)
/* 1EF90 8001E390 8042FF9B */  lb         $v0, %lo(D_8013FF9B)($v0)
/* 1EF94 8001E394 240F6E14 */  addiu      $t7, $zero, 0x6E14
/* 1EF98 8001E398 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 1EF9C 8001E39C 1040000C */  beqz       $v0, .L8001E3D0
/* 1EFA0 8001E3A0 A42F9BDC */   sh        $t7, %lo(D_80109BDC)($at)
/* 1EFA4 8001E3A4 24010001 */  addiu      $at, $zero, 0x1
/* 1EFA8 8001E3A8 1041000E */  beq        $v0, $at, .L8001E3E4
/* 1EFAC 8001E3AC 24040008 */   addiu     $a0, $zero, 0x8
/* 1EFB0 8001E3B0 24010002 */  addiu      $at, $zero, 0x2
/* 1EFB4 8001E3B4 1041000F */  beq        $v0, $at, .L8001E3F4
/* 1EFB8 8001E3B8 2404000A */   addiu     $a0, $zero, 0xA
/* 1EFBC 8001E3BC 24010003 */  addiu      $at, $zero, 0x3
/* 1EFC0 8001E3C0 10410010 */  beq        $v0, $at, .L8001E404
/* 1EFC4 8001E3C4 24040004 */   addiu     $a0, $zero, 0x4
/* 1EFC8 8001E3C8 10000025 */  b          .L8001E460
/* 1EFCC 8001E3CC 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E3D0:
/* 1EFD0 8001E3D0 2404000E */  addiu      $a0, $zero, 0xE
/* 1EFD4 8001E3D4 0C000170 */  jal        func_800005C0
/* 1EFD8 8001E3D8 00002825 */   or        $a1, $zero, $zero
/* 1EFDC 8001E3DC 10000020 */  b          .L8001E460
/* 1EFE0 8001E3E0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E3E4:
/* 1EFE4 8001E3E4 0C000170 */  jal        func_800005C0
/* 1EFE8 8001E3E8 00002825 */   or        $a1, $zero, $zero
/* 1EFEC 8001E3EC 1000001C */  b          .L8001E460
/* 1EFF0 8001E3F0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E3F4:
/* 1EFF4 8001E3F4 0C000170 */  jal        func_800005C0
/* 1EFF8 8001E3F8 00002825 */   or        $a1, $zero, $zero
/* 1EFFC 8001E3FC 10000018 */  b          .L8001E460
/* 1F000 8001E400 8FBF0014 */   lw        $ra, 0x14($sp)
.L8001E404:
/* 1F004 8001E404 0C000170 */  jal        func_800005C0
/* 1F008 8001E408 00002825 */   or        $a1, $zero, $zero
/* 1F00C 8001E40C 10000014 */  b          .L8001E460
/* 1F010 8001E410 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001E414
/* 1F014 8001E414 0C007870 */  jal        func_8001E1C0
/* 1F018 8001E418 00000000 */   nop
/* 1F01C 8001E41C 24186E14 */  addiu      $t8, $zero, 0x6E14
/* 1F020 8001E420 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 1F024 8001E424 A4389BDC */  sh         $t8, %lo(D_80109BDC)($at)
/* 1F028 8001E428 24040001 */  addiu      $a0, $zero, 0x1
/* 1F02C 8001E42C 0C000170 */  jal        func_800005C0
/* 1F030 8001E430 00002825 */   or        $a1, $zero, $zero
/* 1F034 8001E434 1000000A */  b          .L8001E460
/* 1F038 8001E438 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8001E43C
/* 1F03C 8001E43C 0C007870 */  jal        func_8001E1C0
/* 1F040 8001E440 00000000 */   nop
/* 1F044 8001E444 24196E14 */  addiu      $t9, $zero, 0x6E14
/* 1F048 8001E448 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 1F04C 8001E44C A4399BDC */  sh         $t9, %lo(D_80109BDC)($at)
/* 1F050 8001E450 24040003 */  addiu      $a0, $zero, 0x3
/* 1F054 8001E454 0C000170 */  jal        func_800005C0
/* 1F058 8001E458 00002825 */   or        $a1, $zero, $zero
glabel L8001E45C
/* 1F05C 8001E45C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001E460:
/* 1F060 8001E460 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F064 8001E464 03E00008 */  jr         $ra
/* 1F068 8001E468 00000000 */   nop
