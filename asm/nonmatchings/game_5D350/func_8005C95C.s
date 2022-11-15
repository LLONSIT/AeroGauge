glabel func_8005C95C
/* 5D55C 8005C95C 3C028009 */  lui        $v0, %hi(D_8008FA00)
/* 5D560 8005C960 8C42FA00 */  lw         $v0, %lo(D_8008FA00)($v0)
/* 5D564 8005C964 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5D568 8005C968 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5D56C 8005C96C 10400019 */  beqz       $v0, .L8005C9D4
/* 5D570 8005C970 3C0E8014 */   lui       $t6, %hi(D_8013FC88)
/* 5D574 8005C974 8DCEFC88 */  lw         $t6, %lo(D_8013FC88)($t6)
/* 5D578 8005C978 000E7840 */  sll        $t7, $t6, 1
/* 5D57C 8005C97C 004FC021 */  addu       $t8, $v0, $t7
/* 5D580 8005C980 90820002 */  lbu        $v0, 0x2($a0)
/* 5D584 8005C984 97010000 */  lhu        $at, 0x0($t8)
/* 5D588 8005C988 10400008 */  beqz       $v0, .L8005C9AC
/* 5D58C 8005C98C A4810040 */   sh        $at, 0x40($a0)
/* 5D590 8005C990 24010001 */  addiu      $at, $zero, 0x1
/* 5D594 8005C994 10410009 */  beq        $v0, $at, .L8005C9BC
/* 5D598 8005C998 24010002 */   addiu     $at, $zero, 0x2
/* 5D59C 8005C99C 1041000B */  beq        $v0, $at, .L8005C9CC
/* 5D5A0 8005C9A0 00000000 */   nop
/* 5D5A4 8005C9A4 1000000C */  b          .L8005C9D8
/* 5D5A8 8005C9A8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005C9AC:
/* 5D5AC 8005C9AC 0C017350 */  jal        func_8005CD40
/* 5D5B0 8005C9B0 00000000 */   nop
/* 5D5B4 8005C9B4 10000008 */  b          .L8005C9D8
/* 5D5B8 8005C9B8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005C9BC:
/* 5D5BC 8005C9BC 0C0173B5 */  jal        func_8005CED4
/* 5D5C0 8005C9C0 00000000 */   nop
/* 5D5C4 8005C9C4 10000004 */  b          .L8005C9D8
/* 5D5C8 8005C9C8 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005C9CC:
/* 5D5CC 8005C9CC 0C017413 */  jal        func_8005D04C
/* 5D5D0 8005C9D0 00000000 */   nop
.L8005C9D4:
/* 5D5D4 8005C9D4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005C9D8:
/* 5D5D8 8005C9D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5D5DC 8005C9DC 03E00008 */  jr         $ra
/* 5D5E0 8005C9E0 00000000 */   nop
