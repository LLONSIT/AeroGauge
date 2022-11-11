glabel func_80062154
/* 62D54 80062154 3C028009 */  lui        $v0, %hi(D_80092D54)
/* 62D58 80062158 90422D54 */  lbu        $v0, %lo(D_80092D54)($v0)
/* 62D5C 8006215C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62D60 80062160 AFBF0014 */  sw         $ra, 0x14($sp)
/* 62D64 80062164 10400006 */  beqz       $v0, .L80062180
/* 62D68 80062168 3C04801B */   lui       $a0, %hi(D_801A8868)
/* 62D6C 8006216C 24010001 */  addiu      $at, $zero, 0x1
/* 62D70 80062170 10410016 */  beq        $v0, $at, .L800621CC
/* 62D74 80062174 3C0F801A */   lui       $t7, %hi(D_8019FFE8)
/* 62D78 80062178 10000022 */  b          .L80062204
/* 62D7C 8006217C 8FBF0014 */   lw        $ra, 0x14($sp)
.L80062180:
/* 62D80 80062180 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 62D84 80062184 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 62D88 80062188 0C0192E3 */  jal        osScRemoveClient
/* 62D8C 8006218C 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 62D90 80062190 0C018884 */  jal        func_80062210
/* 62D94 80062194 00000000 */   nop
/* 62D98 80062198 3C01801A */  lui        $at, %hi(D_8019FFE8)
/* 62D9C 8006219C 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 62DA0 800621A0 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 62DA4 800621A4 3C06801B */  lui        $a2, %hi(D_801A8750)
/* 62DA8 800621A8 A022FFE8 */  sb         $v0, %lo(D_8019FFE8)($at)
/* 62DAC 800621AC 24C68750 */  addiu      $a2, $a2, %lo(D_801A8750)
/* 62DB0 800621B0 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 62DB4 800621B4 0C0192CF */  jal        osScAddClient
/* 62DB8 800621B8 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 62DBC 800621BC 240E0001 */  addiu      $t6, $zero, 0x1
/* 62DC0 800621C0 3C018009 */  lui        $at, %hi(D_80092D54)
/* 62DC4 800621C4 1000000E */  b          .L80062200
/* 62DC8 800621C8 A02E2D54 */   sb        $t6, %lo(D_80092D54)($at)
.L800621CC:
/* 62DCC 800621CC 91EFFFE8 */  lbu        $t7, %lo(D_8019FFE8)($t7)
/* 62DD0 800621D0 11E00005 */  beqz       $t7, .L800621E8
/* 62DD4 800621D4 00000000 */   nop
/* 62DD8 800621D8 0C0188FA */  jal        func_800623E8
/* 62DDC 800621DC 24040001 */   addiu     $a0, $zero, 0x1
/* 62DE0 800621E0 3C01801A */  lui        $at, %hi(D_8019FFE8)
/* 62DE4 800621E4 A020FFE8 */  sb         $zero, %lo(D_8019FFE8)($at)
.L800621E8:
/* 62DE8 800621E8 3C18801A */  lui        $t8, %hi(D_8019E0F0)
/* 62DEC 800621EC 8F18E0F0 */  lw         $t8, %lo(D_8019E0F0)($t8)
/* 62DF0 800621F0 3C018009 */  lui        $at, %hi(D_80092D54)
/* 62DF4 800621F4 A0202D54 */  sb         $zero, %lo(D_80092D54)($at)
/* 62DF8 800621F8 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 62DFC 800621FC AC38FF84 */  sw         $t8, %lo(D_8013FF84)($at)
.L80062200:
/* 62E00 80062200 8FBF0014 */  lw         $ra, 0x14($sp)
.L80062204:
/* 62E04 80062204 27BD0018 */  addiu      $sp, $sp, 0x18
/* 62E08 80062208 03E00008 */  jr         $ra
/* 62E0C 8006220C 00000000 */   nop
