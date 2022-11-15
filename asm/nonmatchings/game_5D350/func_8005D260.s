glabel func_8005D260
/* 5DE60 8005D260 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5DE64 8005D264 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5DE68 8005D268 908E0035 */  lbu        $t6, 0x35($a0)
/* 5DE6C 8005D26C 3C188014 */  lui        $t8, %hi(D_8013FF9B)
/* 5DE70 8005D270 31CFFFFE */  andi       $t7, $t6, 0xFFFE
/* 5DE74 8005D274 A08F0035 */  sb         $t7, 0x35($a0)
/* 5DE78 8005D278 9318FF9B */  lbu        $t8, %lo(D_8013FF9B)($t8)
/* 5DE7C 8005D27C 2F010005 */  sltiu      $at, $t8, 0x5
/* 5DE80 8005D280 10200018 */  beqz       $at, .L8005D2E4
/* 5DE84 8005D284 0018C080 */   sll       $t8, $t8, 2
/* 5DE88 8005D288 3C01800A */  lui        $at, %hi(jtbl_80098650_main)
/* 5DE8C 8005D28C 00380821 */  addu       $at, $at, $t8
/* 5DE90 8005D290 8C388650 */  lw         $t8, %lo(jtbl_80098650_main)($at)
/* 5DE94 8005D294 03000008 */  jr         $t8
/* 5DE98 8005D298 00000000 */   nop
glabel L8005D29C
/* 5DE9C 8005D29C 0C0174BD */  jal        func_8005D2F4
/* 5DEA0 8005D2A0 00000000 */   nop
/* 5DEA4 8005D2A4 10000010 */  b          .L8005D2E8
/* 5DEA8 8005D2A8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8005D2AC
/* 5DEAC 8005D2AC 0C017520 */  jal        func_8005D480
/* 5DEB0 8005D2B0 00000000 */   nop
/* 5DEB4 8005D2B4 1000000C */  b          .L8005D2E8
/* 5DEB8 8005D2B8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8005D2BC
/* 5DEBC 8005D2BC 0C017547 */  jal        func_8005D51C
/* 5DEC0 8005D2C0 00000000 */   nop
/* 5DEC4 8005D2C4 10000008 */  b          .L8005D2E8
/* 5DEC8 8005D2C8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8005D2CC
/* 5DECC 8005D2CC 0C017593 */  jal        func_8005D64C
/* 5DED0 8005D2D0 00000000 */   nop
/* 5DED4 8005D2D4 10000004 */  b          .L8005D2E8
/* 5DED8 8005D2D8 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L8005D2DC
/* 5DEDC 8005D2DC 0C0175C8 */  jal        func_8005D720
/* 5DEE0 8005D2E0 00000000 */   nop
.L8005D2E4:
/* 5DEE4 8005D2E4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D2E8:
/* 5DEE8 8005D2E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5DEEC 8005D2EC 03E00008 */  jr         $ra
/* 5DEF0 8005D2F0 00000000 */   nop
