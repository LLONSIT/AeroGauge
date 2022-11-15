glabel func_8005D720
/* 5E320 8005D720 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E324 8005D724 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E328 8005D728 94820042 */  lhu        $v0, 0x42($a0)
/* 5E32C 8005D72C 28410104 */  slti       $at, $v0, 0x104
/* 5E330 8005D730 14200008 */  bnez       $at, .L8005D754
/* 5E334 8005D734 28410107 */   slti      $at, $v0, 0x107
/* 5E338 8005D738 10200006 */  beqz       $at, .L8005D754
/* 5E33C 8005D73C 240500FF */   addiu     $a1, $zero, 0xFF
/* 5E340 8005D740 00003025 */  or         $a2, $zero, $zero
/* 5E344 8005D744 0C0175FD */  jal        func_8005D7F4
/* 5E348 8005D748 00003825 */   or        $a3, $zero, $zero
/* 5E34C 8005D74C 10000026 */  b          .L8005D7E8
/* 5E350 8005D750 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D754:
/* 5E354 8005D754 2841005F */  slti       $at, $v0, 0x5F
/* 5E358 8005D758 14200002 */  bnez       $at, .L8005D764
/* 5E35C 8005D75C 28410071 */   slti      $at, $v0, 0x71
/* 5E360 8005D760 14200011 */  bnez       $at, .L8005D7A8
.L8005D764:
/* 5E364 8005D764 28410097 */   slti      $at, $v0, 0x97
/* 5E368 8005D768 14200002 */  bnez       $at, .L8005D774
/* 5E36C 8005D76C 2841009A */   slti      $at, $v0, 0x9A
/* 5E370 8005D770 1420000D */  bnez       $at, .L8005D7A8
.L8005D774:
/* 5E374 8005D774 284100A1 */   slti      $at, $v0, 0xA1
/* 5E378 8005D778 14200002 */  bnez       $at, .L8005D784
/* 5E37C 8005D77C 284100AB */   slti      $at, $v0, 0xAB
/* 5E380 8005D780 14200009 */  bnez       $at, .L8005D7A8
.L8005D784:
/* 5E384 8005D784 24010107 */   addiu     $at, $zero, 0x107
/* 5E388 8005D788 10410007 */  beq        $v0, $at, .L8005D7A8
/* 5E38C 8005D78C 24010108 */   addiu     $at, $zero, 0x108
/* 5E390 8005D790 10410005 */  beq        $v0, $at, .L8005D7A8
/* 5E394 8005D794 24010102 */   addiu     $at, $zero, 0x102
/* 5E398 8005D798 10410003 */  beq        $v0, $at, .L8005D7A8
/* 5E39C 8005D79C 24010103 */   addiu     $at, $zero, 0x103
/* 5E3A0 8005D7A0 54410006 */  bnel       $v0, $at, .L8005D7BC
/* 5E3A4 8005D7A4 28410025 */   slti      $at, $v0, 0x25
.L8005D7A8:
/* 5E3A8 8005D7A8 0C017877 */  jal        func_8005E1DC
/* 5E3AC 8005D7AC 00000000 */   nop
/* 5E3B0 8005D7B0 1000000D */  b          .L8005D7E8
/* 5E3B4 8005D7B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E3B8 8005D7B8 28410025 */  slti       $at, $v0, 0x25
.L8005D7BC:
/* 5E3BC 8005D7BC 14200007 */  bnez       $at, .L8005D7DC
/* 5E3C0 8005D7C0 28410028 */   slti      $at, $v0, 0x28
/* 5E3C4 8005D7C4 10200005 */  beqz       $at, .L8005D7DC
/* 5E3C8 8005D7C8 00000000 */   nop
/* 5E3CC 8005D7CC 0C0178AA */  jal        func_8005E2A8
/* 5E3D0 8005D7D0 00000000 */   nop
/* 5E3D4 8005D7D4 10000004 */  b          .L8005D7E8
/* 5E3D8 8005D7D8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D7DC:
/* 5E3DC 8005D7DC 0C017658 */  jal        func_8005D960
/* 5E3E0 8005D7E0 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 5E3E4 8005D7E4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D7E8:
/* 5E3E8 8005D7E8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E3EC 8005D7EC 03E00008 */  jr         $ra
/* 5E3F0 8005D7F0 00000000 */   nop
