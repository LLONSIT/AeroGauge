glabel func_8001728C
/* 17E8C 8001728C 3C028009 */  lui        $v0, %hi(D_8008B4A0)
/* 17E90 80017290 8C42B4A0 */  lw         $v0, %lo(D_8008B4A0)($v0)
/* 17E94 80017294 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17E98 80017298 AFBF0014 */  sw         $ra, 0x14($sp)
/* 17E9C 8001729C 10400003 */  beqz       $v0, .L800172AC
/* 17EA0 800172A0 3C048014 */   lui       $a0, %hi(D_8013FF90)
/* 17EA4 800172A4 10000002 */  b          .L800172B0
/* 17EA8 800172A8 00001825 */   or        $v1, $zero, $zero
.L800172AC:
/* 17EAC 800172AC 24030001 */  addiu      $v1, $zero, 0x1
.L800172B0:
/* 17EB0 800172B0 2484FF90 */  addiu      $a0, $a0, %lo(D_8013FF90)
/* 17EB4 800172B4 908E0019 */  lbu        $t6, 0x19($a0)
/* 17EB8 800172B8 2DC10005 */  sltiu      $at, $t6, 0x5
/* 17EBC 800172BC 1020005B */  beqz       $at, .L8001742C
/* 17EC0 800172C0 000E7080 */   sll       $t6, $t6, 2
/* 17EC4 800172C4 3C018009 */  lui        $at, %hi(jtbl_80096A6C_main)
/* 17EC8 800172C8 002E0821 */  addu       $at, $at, $t6
/* 17ECC 800172CC 8C2E6A6C */  lw         $t6, %lo(jtbl_80096A6C_main)($at)
/* 17ED0 800172D0 01C00008 */  jr         $t6
/* 17ED4 800172D4 00000000 */   nop
glabel L800172D8
/* 17ED8 800172D8 00027880 */  sll        $t7, $v0, 2
/* 17EDC 800172DC 01E27823 */  subu       $t7, $t7, $v0
/* 17EE0 800172E0 000F78C0 */  sll        $t7, $t7, 3
/* 17EE4 800172E4 01E27823 */  subu       $t7, $t7, $v0
/* 17EE8 800172E8 000F7900 */  sll        $t7, $t7, 4
/* 17EEC 800172EC 3C05801B */  lui        $a1, %hi(D_801AFE70)
/* 17EF0 800172F0 01E27823 */  subu       $t7, $t7, $v0
/* 17EF4 800172F4 24A5FE70 */  addiu      $a1, $a1, %lo(D_801AFE70)
/* 17EF8 800172F8 000F7940 */  sll        $t7, $t7, 5
/* 17EFC 800172FC 00AFC021 */  addu       $t8, $a1, $t7
/* 17F00 80017300 3C018009 */  lui        $at, %hi(D_8008FA04)
/* 17F04 80017304 AC38FA04 */  sw         $t8, %lo(D_8008FA04)($at)
/* 17F08 80017308 3C018009 */  lui        $at, %hi(D_8008FA00)
/* 17F0C 8001730C 10000047 */  b          .L8001742C
/* 17F10 80017310 AC20FA00 */   sw        $zero, %lo(D_8008FA00)($at)
glabel L80017314
/* 17F14 80017314 0002C880 */  sll        $t9, $v0, 2
/* 17F18 80017318 0322C823 */  subu       $t9, $t9, $v0
/* 17F1C 8001731C 0019C8C0 */  sll        $t9, $t9, 3
/* 17F20 80017320 00034880 */  sll        $t1, $v1, 2
/* 17F24 80017324 0322C823 */  subu       $t9, $t9, $v0
/* 17F28 80017328 01234823 */  subu       $t1, $t1, $v1
/* 17F2C 8001732C 0019C900 */  sll        $t9, $t9, 4
/* 17F30 80017330 000948C0 */  sll        $t1, $t1, 3
/* 17F34 80017334 3C05801B */  lui        $a1, %hi(D_801AFE70)
/* 17F38 80017338 0322C823 */  subu       $t9, $t9, $v0
/* 17F3C 8001733C 01234823 */  subu       $t1, $t1, $v1
/* 17F40 80017340 24A5FE70 */  addiu      $a1, $a1, %lo(D_801AFE70)
/* 17F44 80017344 0019C940 */  sll        $t9, $t9, 5
/* 17F48 80017348 00094900 */  sll        $t1, $t1, 4
/* 17F4C 8001734C 00B94021 */  addu       $t0, $a1, $t9
/* 17F50 80017350 3C018009 */  lui        $at, %hi(D_8008FA04)
/* 17F54 80017354 01234823 */  subu       $t1, $t1, $v1
/* 17F58 80017358 AC28FA04 */  sw         $t0, %lo(D_8008FA04)($at)
/* 17F5C 8001735C 00094940 */  sll        $t1, $t1, 5
/* 17F60 80017360 00A95021 */  addu       $t2, $a1, $t1
/* 17F64 80017364 3C018009 */  lui        $at, %hi(D_8008FA00)
/* 17F68 80017368 AC2AFA00 */  sw         $t2, %lo(D_8008FA00)($at)
/* 17F6C 8001736C 3C0B8009 */  lui        $t3, %hi(D_8008ED2D)
/* 17F70 80017370 916BED2D */  lbu        $t3, %lo(D_8008ED2D)($t3)
/* 17F74 80017374 808C0006 */  lb         $t4, 0x6($a0)
/* 17F78 80017378 3C018014 */  lui        $at, %hi(D_8013FF96)
/* 17F7C 8001737C 3C038009 */  lui        $v1, %hi(D_8008ED2E)
/* 17F80 80017380 116C0002 */  beq        $t3, $t4, .L8001738C
/* 17F84 80017384 00000000 */   nop
/* 17F88 80017388 A02BFF96 */  sb         $t3, %lo(D_8013FF96)($at)
.L8001738C:
/* 17F8C 8001738C 9063ED2E */  lbu        $v1, %lo(D_8008ED2E)($v1)
/* 17F90 80017390 808D0008 */  lb         $t5, 0x8($a0)
/* 17F94 80017394 3C018014 */  lui        $at, %hi(D_8013FF98)
/* 17F98 80017398 106D0024 */  beq        $v1, $t5, .L8001742C
/* 17F9C 8001739C 00000000 */   nop
/* 17FA0 800173A0 10000022 */  b          .L8001742C
/* 17FA4 800173A4 A023FF98 */   sb        $v1, %lo(D_8013FF98)($at)
glabel L800173A8
/* 17FA8 800173A8 00027080 */  sll        $t6, $v0, 2
/* 17FAC 800173AC 01C27023 */  subu       $t6, $t6, $v0
/* 17FB0 800173B0 000E70C0 */  sll        $t6, $t6, 3
/* 17FB4 800173B4 01C27023 */  subu       $t6, $t6, $v0
/* 17FB8 800173B8 000E7100 */  sll        $t6, $t6, 4
/* 17FBC 800173BC 3C05801B */  lui        $a1, %hi(D_801AFE70)
/* 17FC0 800173C0 01C27023 */  subu       $t6, $t6, $v0
/* 17FC4 800173C4 24A5FE70 */  addiu      $a1, $a1, %lo(D_801AFE70)
/* 17FC8 800173C8 000E7140 */  sll        $t6, $t6, 5
/* 17FCC 800173CC 00AE7821 */  addu       $t7, $a1, $t6
/* 17FD0 800173D0 3C018009 */  lui        $at, %hi(D_8008FA04)
/* 17FD4 800173D4 AC2FFA04 */  sw         $t7, %lo(D_8008FA04)($at)
/* 17FD8 800173D8 3C18801B */  lui        $t8, %hi(D_801B5A30)
/* 17FDC 800173DC 27185A30 */  addiu      $t8, $t8, %lo(D_801B5A30)
/* 17FE0 800173E0 3C018009 */  lui        $at, %hi(D_8008FA00)
/* 17FE4 800173E4 10000011 */  b          .L8001742C
/* 17FE8 800173E8 AC38FA00 */   sw        $t8, %lo(D_8008FA00)($at)
glabel L800173EC
/* 17FEC 800173EC 0002C880 */  sll        $t9, $v0, 2
/* 17FF0 800173F0 0322C823 */  subu       $t9, $t9, $v0
/* 17FF4 800173F4 0019C8C0 */  sll        $t9, $t9, 3
/* 17FF8 800173F8 0322C823 */  subu       $t9, $t9, $v0
/* 17FFC 800173FC 0019C900 */  sll        $t9, $t9, 4
/* 18000 80017400 3C05801B */  lui        $a1, %hi(D_801AFE70)
/* 18004 80017404 0322C823 */  subu       $t9, $t9, $v0
/* 18008 80017408 24A5FE70 */  addiu      $a1, $a1, %lo(D_801AFE70)
/* 1800C 8001740C 0019C940 */  sll        $t9, $t9, 5
/* 18010 80017410 00B94021 */  addu       $t0, $a1, $t9
/* 18014 80017414 3C018009 */  lui        $at, %hi(D_8008FA04)
/* 18018 80017418 AC28FA04 */  sw         $t0, %lo(D_8008FA04)($at)
/* 1801C 8001741C 3C09801B */  lui        $t1, %hi(D_801B5A30)
/* 18020 80017420 25295A30 */  addiu      $t1, $t1, %lo(D_801B5A30)
/* 18024 80017424 3C018009 */  lui        $at, %hi(D_8008FA00)
/* 18028 80017428 AC29FA00 */  sw         $t1, %lo(D_8008FA00)($at)
.L8001742C:
/* 1802C 8001742C 3C048009 */  lui        $a0, %hi(D_8008FA04)
/* 18030 80017430 8C84FA04 */  lw         $a0, %lo(D_8008FA04)($a0)
/* 18034 80017434 50800004 */  beql       $a0, $zero, .L80017448
/* 18038 80017438 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1803C 8001743C 0C01B128 */  jal        bzero
/* 18040 80017440 24052DE0 */   addiu     $a1, $zero, 0x2DE0
/* 18044 80017444 8FBF0014 */  lw         $ra, 0x14($sp)
.L80017448:
/* 18048 80017448 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1804C 8001744C 03E00008 */  jr         $ra
/* 18050 80017450 00000000 */   nop
