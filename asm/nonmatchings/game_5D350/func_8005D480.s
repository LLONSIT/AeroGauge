glabel func_8005D480
/* 5E080 8005D480 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E084 8005D484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E088 8005D488 94820042 */  lhu        $v0, 0x42($a0)
/* 5E08C 8005D48C 2401006F */  addiu      $at, $zero, 0x6F
/* 5E090 8005D490 240500FF */  addiu      $a1, $zero, 0xFF
/* 5E094 8005D494 10410004 */  beq        $v0, $at, .L8005D4A8
/* 5E098 8005D498 240600FF */   addiu     $a2, $zero, 0xFF
/* 5E09C 8005D49C 24010070 */  addiu      $at, $zero, 0x70
/* 5E0A0 8005D4A0 54410006 */  bnel       $v0, $at, .L8005D4BC
/* 5E0A4 8005D4A4 240100F3 */   addiu     $at, $zero, 0xF3
.L8005D4A8:
/* 5E0A8 8005D4A8 0C0175FD */  jal        func_8005D7F4
/* 5E0AC 8005D4AC 240700FF */   addiu     $a3, $zero, 0xFF
/* 5E0B0 8005D4B0 10000017 */  b          .L8005D510
/* 5E0B4 8005D4B4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E0B8 8005D4B8 240100F3 */  addiu      $at, $zero, 0xF3
.L8005D4BC:
/* 5E0BC 8005D4BC 10410003 */  beq        $v0, $at, .L8005D4CC
/* 5E0C0 8005D4C0 240100F4 */   addiu     $at, $zero, 0xF4
/* 5E0C4 8005D4C4 54410006 */  bnel       $v0, $at, .L8005D4E0
/* 5E0C8 8005D4C8 284100F8 */   slti      $at, $v0, 0xF8
.L8005D4CC:
/* 5E0CC 8005D4CC 0C017658 */  jal        func_8005D960
/* 5E0D0 8005D4D0 3C053F00 */   lui       $a1, (0x3F000000 >> 16)
/* 5E0D4 8005D4D4 1000000E */  b          .L8005D510
/* 5E0D8 8005D4D8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E0DC 8005D4DC 284100F8 */  slti       $at, $v0, 0xF8
.L8005D4E0:
/* 5E0E0 8005D4E0 14200008 */  bnez       $at, .L8005D504
/* 5E0E4 8005D4E4 284100FD */   slti      $at, $v0, 0xFD
/* 5E0E8 8005D4E8 10200006 */  beqz       $at, .L8005D504
/* 5E0EC 8005D4EC 240500FF */   addiu     $a1, $zero, 0xFF
/* 5E0F0 8005D4F0 240600FF */  addiu      $a2, $zero, 0xFF
/* 5E0F4 8005D4F4 0C0175FD */  jal        func_8005D7F4
/* 5E0F8 8005D4F8 240700FF */   addiu     $a3, $zero, 0xFF
/* 5E0FC 8005D4FC 10000004 */  b          .L8005D510
/* 5E100 8005D500 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D504:
/* 5E104 8005D504 0C017658 */  jal        func_8005D960
/* 5E108 8005D508 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 5E10C 8005D50C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D510:
/* 5E110 8005D510 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E114 8005D514 03E00008 */  jr         $ra
/* 5E118 8005D518 00000000 */   nop
