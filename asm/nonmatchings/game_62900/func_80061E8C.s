glabel func_80061E8C
/* 62A8C 80061E8C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 62A90 80061E90 AFBF001C */  sw         $ra, 0x1C($sp)
/* 62A94 80061E94 3C04801A */  lui        $a0, %hi(D_8019FB78)
/* 62A98 80061E98 3C068009 */  lui        $a2, %hi(D_80092D44)
/* 62A9C 80061E9C AFB00018 */  sw         $s0, 0x18($sp)
/* 62AA0 80061EA0 8CC62D44 */  lw         $a2, %lo(D_80092D44)($a2)
/* 62AA4 80061EA4 2484FB78 */  addiu      $a0, $a0, %lo(D_8019FB78)
/* 62AA8 80061EA8 00002825 */  or         $a1, $zero, $zero
/* 62AAC 80061EAC 0C01B880 */  jal        func_8006E200
/* 62AB0 80061EB0 24070008 */   addiu     $a3, $zero, 0x8
/* 62AB4 80061EB4 14400053 */  bnez       $v0, .L80062004
/* 62AB8 80061EB8 24050020 */   addiu     $a1, $zero, 0x20
/* 62ABC 80061EBC 0C018970 */  jal        func_800625C0
/* 62AC0 80061EC0 00000000 */   nop
/* 62AC4 80061EC4 3C10801A */  lui        $s0, %hi(D_8019FC18)
/* 62AC8 80061EC8 2610FC18 */  addiu      $s0, $s0, %lo(D_8019FC18)
/* 62ACC 80061ECC 3C04801A */  lui        $a0, %hi(D_8019FB78)
/* 62AD0 80061ED0 2484FB78 */  addiu      $a0, $a0, %lo(D_8019FB78)
/* 62AD4 80061ED4 02003025 */  or         $a2, $s0, $zero
/* 62AD8 80061ED8 24050003 */  addiu      $a1, $zero, 0x3
/* 62ADC 80061EDC 0C01B880 */  jal        func_8006E200
/* 62AE0 80061EE0 240701E8 */   addiu     $a3, $zero, 0x1E8
/* 62AE4 80061EE4 14400045 */  bnez       $v0, .L80061FFC
/* 62AE8 80061EE8 24050020 */   addiu     $a1, $zero, 0x20
/* 62AEC 80061EEC 240E0000 */  addiu      $t6, $zero, 0x0
/* 62AF0 80061EF0 240F0000 */  addiu      $t7, $zero, 0x0
/* 62AF4 80061EF4 AFAF002C */  sw         $t7, 0x2C($sp)
/* 62AF8 80061EF8 AFAE0028 */  sw         $t6, 0x28($sp)
/* 62AFC 80061EFC 00001825 */  or         $v1, $zero, $zero
.L80061F00:
/* 62B00 80061F00 0003C080 */  sll        $t8, $v1, 2
/* 62B04 80061F04 0218C821 */  addu       $t9, $s0, $t8
/* 62B08 80061F08 8F280000 */  lw         $t0, 0x0($t9)
/* 62B0C 80061F0C 8FAD002C */  lw         $t5, 0x2C($sp)
/* 62B10 80061F10 8FAC0028 */  lw         $t4, 0x28($sp)
/* 62B14 80061F14 240A0000 */  addiu      $t2, $zero, 0x0
/* 62B18 80061F18 010D7821 */  addu       $t7, $t0, $t5
/* 62B1C 80061F1C 01ED082B */  sltu       $at, $t7, $t5
/* 62B20 80061F20 24630001 */  addiu      $v1, $v1, 0x1
/* 62B24 80061F24 002A7021 */  addu       $t6, $at, $t2
/* 62B28 80061F28 306900FF */  andi       $t1, $v1, 0xFF
/* 62B2C 80061F2C 2921007A */  slti       $at, $t1, 0x7A
/* 62B30 80061F30 01CC7021 */  addu       $t6, $t6, $t4
/* 62B34 80061F34 01201825 */  or         $v1, $t1, $zero
/* 62B38 80061F38 AFAE0028 */  sw         $t6, 0x28($sp)
/* 62B3C 80061F3C 1420FFF0 */  bnez       $at, .L80061F00
/* 62B40 80061F40 AFAF002C */   sw        $t7, 0x2C($sp)
/* 62B44 80061F44 3C04801A */  lui        $a0, %hi(D_8019FB78)
/* 62B48 80061F48 AFAE0030 */  sw         $t6, 0x30($sp)
/* 62B4C 80061F4C AFAF0034 */  sw         $t7, 0x34($sp)
/* 62B50 80061F50 2484FB78 */  addiu      $a0, $a0, %lo(D_8019FB78)
/* 62B54 80061F54 24050001 */  addiu      $a1, $zero, 0x1
/* 62B58 80061F58 27A60028 */  addiu      $a2, $sp, 0x28
/* 62B5C 80061F5C 0C01B880 */  jal        func_8006E200
/* 62B60 80061F60 24070010 */   addiu     $a3, $zero, 0x10
/* 62B64 80061F64 14400023 */  bnez       $v0, .L80061FF4
/* 62B68 80061F68 24050020 */   addiu     $a1, $zero, 0x20
/* 62B6C 80061F6C 3C04801A */  lui        $a0, %hi(D_8019FE00)
/* 62B70 80061F70 0C018806 */  jal        func_80062018
/* 62B74 80061F74 2484FE00 */   addiu     $a0, $a0, %lo(D_8019FE00)
/* 62B78 80061F78 3C04801A */  lui        $a0, %hi(D_8019FE00)
/* 62B7C 80061F7C 1440001B */  bnez       $v0, .L80061FEC
/* 62B80 80061F80 2484FE00 */   addiu     $a0, $a0, %lo(D_8019FE00)
/* 62B84 80061F84 0C018A67 */  jal        func_8006299C
/* 62B88 80061F88 00000000 */   nop
/* 62B8C 80061F8C 3C04801A */  lui        $a0, %hi(D_8019FE00)
/* 62B90 80061F90 2484FE00 */  addiu      $a0, $a0, %lo(D_8019FE00)
/* 62B94 80061F94 1440001B */  bnez       $v0, .L80062004
/* 62B98 80061F98 304500FF */   andi      $a1, $v0, 0xFF
/* 62B9C 80061F9C 00001825 */  or         $v1, $zero, $zero
.L80061FA0:
/* 62BA0 80061FA0 00031080 */  sll        $v0, $v1, 2
/* 62BA4 80061FA4 02024021 */  addu       $t0, $s0, $v0
/* 62BA8 80061FA8 00825821 */  addu       $t3, $a0, $v0
/* 62BAC 80061FAC 8D6C0000 */  lw         $t4, 0x0($t3)
/* 62BB0 80061FB0 8D0A0000 */  lw         $t2, 0x0($t0)
/* 62BB4 80061FB4 514C0004 */  beql       $t2, $t4, .L80061FC8
/* 62BB8 80061FB8 24630001 */   addiu     $v1, $v1, 0x1
/* 62BBC 80061FBC 10000006 */  b          .L80061FD8
/* 62BC0 80061FC0 00601025 */   or        $v0, $v1, $zero
/* 62BC4 80061FC4 24630001 */  addiu      $v1, $v1, 0x1
.L80061FC8:
/* 62BC8 80061FC8 306200FF */  andi       $v0, $v1, 0xFF
/* 62BCC 80061FCC 2841007A */  slti       $at, $v0, 0x7A
/* 62BD0 80061FD0 1420FFF3 */  bnez       $at, .L80061FA0
/* 62BD4 80061FD4 00401825 */   or        $v1, $v0, $zero
.L80061FD8:
/* 62BD8 80061FD8 2401007A */  addiu      $at, $zero, 0x7A
/* 62BDC 80061FDC 5041000A */  beql       $v0, $at, .L80062008
/* 62BE0 80061FE0 8FBF001C */   lw        $ra, 0x1C($sp)
/* 62BE4 80061FE4 10000007 */  b          .L80062004
/* 62BE8 80061FE8 24050022 */   addiu     $a1, $zero, 0x22
.L80061FEC:
/* 62BEC 80061FEC 10000005 */  b          .L80062004
/* 62BF0 80061FF0 2405001F */   addiu     $a1, $zero, 0x1F
.L80061FF4:
/* 62BF4 80061FF4 10000004 */  b          .L80062008
/* 62BF8 80061FF8 8FBF001C */   lw        $ra, 0x1C($sp)
.L80061FFC:
/* 62BFC 80061FFC 10000002 */  b          .L80062008
/* 62C00 80062000 8FBF001C */   lw        $ra, 0x1C($sp)
.L80062004:
/* 62C04 80062004 8FBF001C */  lw         $ra, 0x1C($sp)
.L80062008:
/* 62C08 80062008 8FB00018 */  lw         $s0, 0x18($sp)
/* 62C0C 8006200C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 62C10 80062010 03E00008 */  jr         $ra
/* 62C14 80062014 00A01025 */   or        $v0, $a1, $zero
