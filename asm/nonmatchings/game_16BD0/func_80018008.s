glabel func_80018008
/* 18C08 80018008 3C0E8014 */  lui        $t6, %hi(D_8013FF90)
/* 18C0C 8001800C 91CEFF90 */  lbu        $t6, %lo(D_8013FF90)($t6)
/* 18C10 80018010 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 18C14 80018014 AFBF0024 */  sw         $ra, 0x24($sp)
/* 18C18 80018018 2DC1000C */  sltiu      $at, $t6, 0xC
/* 18C1C 8001801C 10200090 */  beqz       $at, .L80018260
/* 18C20 80018020 AFB00020 */   sw        $s0, 0x20($sp)
/* 18C24 80018024 000E7080 */  sll        $t6, $t6, 2
/* 18C28 80018028 3C018009 */  lui        $at, %hi(jtbl_80096A80_main)
/* 18C2C 8001802C 002E0821 */  addu       $at, $at, $t6
/* 18C30 80018030 8C2E6A80 */  lw         $t6, %lo(jtbl_80096A80_main)($at)
/* 18C34 80018034 01C00008 */  jr         $t6
/* 18C38 80018038 00000000 */   nop
glabel L8001803C
/* 18C3C 8001803C 3C10801A */  lui        $s0, %hi(D_8019DDF0)
/* 18C40 80018040 2610DDF0 */  addiu      $s0, $s0, %lo(D_8019DDF0)
/* 18C44 80018044 240F0280 */  addiu      $t7, $zero, 0x280
/* 18C48 80018048 241801E0 */  addiu      $t8, $zero, 0x1E0
/* 18C4C 8001804C AFB80014 */  sw         $t8, 0x14($sp)
/* 18C50 80018050 AFAF0010 */  sw         $t7, 0x10($sp)
/* 18C54 80018054 02002025 */  or         $a0, $s0, $zero
/* 18C58 80018058 00002825 */  or         $a1, $zero, $zero
/* 18C5C 8001805C 24060280 */  addiu      $a2, $zero, 0x280
/* 18C60 80018060 0C00816B */  jal        func_800205AC
/* 18C64 80018064 240701E0 */   addiu     $a3, $zero, 0x1E0
/* 18C68 80018068 24020008 */  addiu      $v0, $zero, 0x8
/* 18C6C 8001806C 24030010 */  addiu      $v1, $zero, 0x10
/* 18C70 80018070 3C198002 */  lui        $t9, %hi(func_80018EA0)
/* 18C74 80018074 27398EA0 */  addiu      $t9, $t9, %lo(func_80018EA0)
/* 18C78 80018078 A6030030 */  sh         $v1, 0x30($s0)
/* 18C7C 8001807C A6030034 */  sh         $v1, 0x34($s0)
/* 18C80 80018080 A6020032 */  sh         $v0, 0x32($s0)
/* 18C84 80018084 A6020036 */  sh         $v0, 0x36($s0)
/* 18C88 80018088 AE19004C */  sw         $t9, 0x4C($s0)
/* 18C8C 8001808C 3C068014 */  lui        $a2, %hi(D_8013FF90)
/* 18C90 80018090 80C6FF90 */  lb         $a2, %lo(D_8013FF90)($a2)
/* 18C94 80018094 00002025 */  or         $a0, $zero, $zero
/* 18C98 80018098 0C0060E0 */  jal        func_80018380
/* 18C9C 8001809C 00002825 */   or        $a1, $zero, $zero
/* 18CA0 800180A0 3C018014 */  lui        $at, %hi(D_8013FC70)
/* 18CA4 800180A4 3C068014 */  lui        $a2, %hi(D_8013FF90)
/* 18CA8 800180A8 AC22FC70 */  sw         $v0, %lo(D_8013FC70)($at)
/* 18CAC 800180AC 80C6FF90 */  lb         $a2, %lo(D_8013FF90)($a2)
/* 18CB0 800180B0 00002025 */  or         $a0, $zero, $zero
/* 18CB4 800180B4 0C0060E0 */  jal        func_80018380
/* 18CB8 800180B8 24050001 */   addiu     $a1, $zero, 0x1
/* 18CBC 800180BC 3C018014 */  lui        $at, %hi(D_8013FC74)
/* 18CC0 800180C0 AC22FC74 */  sw         $v0, %lo(D_8013FC74)($at)
/* 18CC4 800180C4 3C018014 */  lui        $at, %hi(D_8013FC78)
/* 18CC8 800180C8 AC20FC78 */  sw         $zero, %lo(D_8013FC78)($at)
/* 18CCC 800180CC 3C018014 */  lui        $at, %hi(D_8013FC7C)
/* 18CD0 800180D0 10000063 */  b          .L80018260
/* 18CD4 800180D4 AC20FC7C */   sw        $zero, %lo(D_8013FC7C)($at)
glabel L800180D8
/* 18CD8 800180D8 3C10801A */  lui        $s0, %hi(D_8019DDF0)
/* 18CDC 800180DC 2610DDF0 */  addiu      $s0, $s0, %lo(D_8019DDF0)
/* 18CE0 800180E0 24080280 */  addiu      $t0, $zero, 0x280
/* 18CE4 800180E4 240900FC */  addiu      $t1, $zero, 0xFC
/* 18CE8 800180E8 AFA90014 */  sw         $t1, 0x14($sp)
/* 18CEC 800180EC AFA80010 */  sw         $t0, 0x10($sp)
/* 18CF0 800180F0 02002025 */  or         $a0, $s0, $zero
/* 18CF4 800180F4 00002825 */  or         $a1, $zero, $zero
/* 18CF8 800180F8 24060280 */  addiu      $a2, $zero, 0x280
/* 18CFC 800180FC 0C00816B */  jal        func_800205AC
/* 18D00 80018100 240700F0 */   addiu     $a3, $zero, 0xF0
/* 18D04 80018104 3C028002 */  lui        $v0, %hi(func_80018EA0)
/* 18D08 80018108 24030010 */  addiu      $v1, $zero, 0x10
/* 18D0C 8001810C 24070005 */  addiu      $a3, $zero, 0x5
/* 18D10 80018110 24428EA0 */  addiu      $v0, $v0, %lo(func_80018EA0)
/* 18D14 80018114 A6070032 */  sh         $a3, 0x32($s0)
/* 18D18 80018118 A6070036 */  sh         $a3, 0x36($s0)
/* 18D1C 8001811C A6030030 */  sh         $v1, 0x30($s0)
/* 18D20 80018120 A6030034 */  sh         $v1, 0x34($s0)
/* 18D24 80018124 AE02004C */  sw         $v0, 0x4C($s0)
/* 18D28 80018128 AFA2002C */  sw         $v0, 0x2C($sp)
/* 18D2C 8001812C 00002025 */  or         $a0, $zero, $zero
/* 18D30 80018130 00002825 */  or         $a1, $zero, $zero
/* 18D34 80018134 0C0060E0 */  jal        func_80018380
/* 18D38 80018138 24060005 */   addiu     $a2, $zero, 0x5
/* 18D3C 8001813C 3C018014 */  lui        $at, %hi(D_8013FC70)
/* 18D40 80018140 AC22FC70 */  sw         $v0, %lo(D_8013FC70)($at)
/* 18D44 80018144 00002025 */  or         $a0, $zero, $zero
/* 18D48 80018148 24050001 */  addiu      $a1, $zero, 0x1
/* 18D4C 8001814C 0C0060E0 */  jal        func_80018380
/* 18D50 80018150 24060005 */   addiu     $a2, $zero, 0x5
/* 18D54 80018154 3C018014 */  lui        $at, %hi(D_8013FC74)
/* 18D58 80018158 240A0280 */  addiu      $t2, $zero, 0x280
/* 18D5C 8001815C 240B02C0 */  addiu      $t3, $zero, 0x2C0
/* 18D60 80018160 AC22FC74 */  sw         $v0, %lo(D_8013FC74)($at)
/* 18D64 80018164 AFAB0014 */  sw         $t3, 0x14($sp)
/* 18D68 80018168 AFAA0010 */  sw         $t2, 0x10($sp)
/* 18D6C 8001816C 02002025 */  or         $a0, $s0, $zero
/* 18D70 80018170 24050001 */  addiu      $a1, $zero, 0x1
/* 18D74 80018174 24060280 */  addiu      $a2, $zero, 0x280
/* 18D78 80018178 0C00816B */  jal        func_800205AC
/* 18D7C 8001817C 240700F0 */   addiu     $a3, $zero, 0xF0
/* 18D80 80018180 8FAC002C */  lw         $t4, 0x2C($sp)
/* 18D84 80018184 24020005 */  addiu      $v0, $zero, 0x5
/* 18D88 80018188 24030010 */  addiu      $v1, $zero, 0x10
/* 18D8C 8001818C A6030068 */  sh         $v1, 0x68($s0)
/* 18D90 80018190 A603006C */  sh         $v1, 0x6C($s0)
/* 18D94 80018194 A602006A */  sh         $v0, 0x6A($s0)
/* 18D98 80018198 A602006E */  sh         $v0, 0x6E($s0)
/* 18D9C 8001819C 24040001 */  addiu      $a0, $zero, 0x1
/* 18DA0 800181A0 24050002 */  addiu      $a1, $zero, 0x2
/* 18DA4 800181A4 24060005 */  addiu      $a2, $zero, 0x5
/* 18DA8 800181A8 0C0060E0 */  jal        func_80018380
/* 18DAC 800181AC AE0C0084 */   sw        $t4, 0x84($s0)
/* 18DB0 800181B0 3C018014 */  lui        $at, %hi(D_8013FC78)
/* 18DB4 800181B4 AC22FC78 */  sw         $v0, %lo(D_8013FC78)($at)
/* 18DB8 800181B8 24040001 */  addiu      $a0, $zero, 0x1
/* 18DBC 800181BC 24050003 */  addiu      $a1, $zero, 0x3
/* 18DC0 800181C0 0C0060E0 */  jal        func_80018380
/* 18DC4 800181C4 24060005 */   addiu     $a2, $zero, 0x5
/* 18DC8 800181C8 3C018014 */  lui        $at, %hi(D_8013FC7C)
/* 18DCC 800181CC 10000024 */  b          .L80018260
/* 18DD0 800181D0 AC22FC7C */   sw        $v0, %lo(D_8013FC7C)($at)
glabel L800181D4
/* 18DD4 800181D4 3C10801A */  lui        $s0, %hi(D_8019DDF0)
/* 18DD8 800181D8 2610DDF0 */  addiu      $s0, $s0, %lo(D_8019DDF0)
/* 18DDC 800181DC 240D0280 */  addiu      $t5, $zero, 0x280
/* 18DE0 800181E0 240E01E0 */  addiu      $t6, $zero, 0x1E0
/* 18DE4 800181E4 AFAE0014 */  sw         $t6, 0x14($sp)
/* 18DE8 800181E8 AFAD0010 */  sw         $t5, 0x10($sp)
/* 18DEC 800181EC 02002025 */  or         $a0, $s0, $zero
/* 18DF0 800181F0 00002825 */  or         $a1, $zero, $zero
/* 18DF4 800181F4 24060280 */  addiu      $a2, $zero, 0x280
/* 18DF8 800181F8 0C00816B */  jal        func_800205AC
/* 18DFC 800181FC 240701E0 */   addiu     $a3, $zero, 0x1E0
/* 18E00 80018200 24020020 */  addiu      $v0, $zero, 0x20
/* 18E04 80018204 24030010 */  addiu      $v1, $zero, 0x10
/* 18E08 80018208 A6030030 */  sh         $v1, 0x30($s0)
/* 18E0C 8001820C A6030034 */  sh         $v1, 0x34($s0)
/* 18E10 80018210 A6020032 */  sh         $v0, 0x32($s0)
/* 18E14 80018214 A6020036 */  sh         $v0, 0x36($s0)
/* 18E18 80018218 3C068014 */  lui        $a2, %hi(D_8013FF90)
/* 18E1C 8001821C 80C6FF90 */  lb         $a2, %lo(D_8013FF90)($a2)
/* 18E20 80018220 00002025 */  or         $a0, $zero, $zero
/* 18E24 80018224 0C0060E0 */  jal        func_80018380
/* 18E28 80018228 00002825 */   or        $a1, $zero, $zero
/* 18E2C 8001822C 3C018014 */  lui        $at, %hi(D_8013FC70)
/* 18E30 80018230 3C068014 */  lui        $a2, %hi(D_8013FF90)
/* 18E34 80018234 AC22FC70 */  sw         $v0, %lo(D_8013FC70)($at)
/* 18E38 80018238 80C6FF90 */  lb         $a2, %lo(D_8013FF90)($a2)
/* 18E3C 8001823C 00002025 */  or         $a0, $zero, $zero
/* 18E40 80018240 0C0060E0 */  jal        func_80018380
/* 18E44 80018244 24050001 */   addiu     $a1, $zero, 0x1
/* 18E48 80018248 3C018014 */  lui        $at, %hi(D_8013FC74)
/* 18E4C 8001824C AC22FC74 */  sw         $v0, %lo(D_8013FC74)($at)
/* 18E50 80018250 3C018014 */  lui        $at, %hi(D_8013FC78)
/* 18E54 80018254 AC20FC78 */  sw         $zero, %lo(D_8013FC78)($at)
/* 18E58 80018258 3C018014 */  lui        $at, %hi(D_8013FC7C)
/* 18E5C 8001825C AC20FC7C */  sw         $zero, %lo(D_8013FC7C)($at)
.L80018260:
/* 18E60 80018260 8FBF0024 */  lw         $ra, 0x24($sp)
/* 18E64 80018264 8FB00020 */  lw         $s0, 0x20($sp)
/* 18E68 80018268 27BD0030 */  addiu      $sp, $sp, 0x30
/* 18E6C 8001826C 03E00008 */  jr         $ra
/* 18E70 80018270 00000000 */   nop
