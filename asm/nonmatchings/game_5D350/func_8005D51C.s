glabel func_8005D51C
/* 5E11C 8005D51C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5E120 8005D520 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E124 8005D524 908E0035 */  lbu        $t6, 0x35($a0)
/* 5E128 8005D528 94820042 */  lhu        $v0, 0x42($a0)
/* 5E12C 8005D52C 31CFFFEF */  andi       $t7, $t6, 0xFFEF
/* 5E130 8005D530 28410089 */  slti       $at, $v0, 0x89
/* 5E134 8005D534 1420000C */  bnez       $at, .L8005D568
/* 5E138 8005D538 A08F0035 */   sb        $t7, 0x35($a0)
/* 5E13C 8005D53C 28410093 */  slti       $at, $v0, 0x93
/* 5E140 8005D540 10200009 */  beqz       $at, .L8005D568
/* 5E144 8005D544 240500FF */   addiu     $a1, $zero, 0xFF
/* 5E148 8005D548 240600FF */  addiu      $a2, $zero, 0xFF
/* 5E14C 8005D54C 240700FF */  addiu      $a3, $zero, 0xFF
/* 5E150 8005D550 AFA2001C */  sw         $v0, 0x1C($sp)
/* 5E154 8005D554 0C0175FD */  jal        func_8005D7F4
/* 5E158 8005D558 AFA40020 */   sw        $a0, 0x20($sp)
/* 5E15C 8005D55C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 5E160 8005D560 10000012 */  b          .L8005D5AC
/* 5E164 8005D564 8FA40020 */   lw        $a0, 0x20($sp)
.L8005D568:
/* 5E168 8005D568 28410055 */  slti       $at, $v0, 0x55
/* 5E16C 8005D56C 1420000A */  bnez       $at, .L8005D598
/* 5E170 8005D570 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 5E174 8005D574 2841005C */  slti       $at, $v0, 0x5C
/* 5E178 8005D578 50200008 */  beql       $at, $zero, .L8005D59C
/* 5E17C 8005D57C AFA2001C */   sw        $v0, 0x1C($sp)
/* 5E180 8005D580 AFA2001C */  sw         $v0, 0x1C($sp)
/* 5E184 8005D584 0C0178E0 */  jal        func_8005E380
/* 5E188 8005D588 AFA40020 */   sw        $a0, 0x20($sp)
/* 5E18C 8005D58C 8FA2001C */  lw         $v0, 0x1C($sp)
/* 5E190 8005D590 10000006 */  b          .L8005D5AC
/* 5E194 8005D594 8FA40020 */   lw        $a0, 0x20($sp)
.L8005D598:
/* 5E198 8005D598 AFA2001C */  sw         $v0, 0x1C($sp)
.L8005D59C:
/* 5E19C 8005D59C 0C017658 */  jal        func_8005D960
/* 5E1A0 8005D5A0 AFA40020 */   sw        $a0, 0x20($sp)
/* 5E1A4 8005D5A4 8FA2001C */  lw         $v0, 0x1C($sp)
/* 5E1A8 8005D5A8 8FA40020 */  lw         $a0, 0x20($sp)
.L8005D5AC:
/* 5E1AC 8005D5AC 04400002 */  bltz       $v0, .L8005D5B8
/* 5E1B0 8005D5B0 28410007 */   slti      $at, $v0, 0x7
/* 5E1B4 8005D5B4 1420000B */  bnez       $at, .L8005D5E4
.L8005D5B8:
/* 5E1B8 8005D5B8 2841000C */   slti      $at, $v0, 0xC
/* 5E1BC 8005D5BC 14200002 */  bnez       $at, .L8005D5C8
/* 5E1C0 8005D5C0 28410028 */   slti      $at, $v0, 0x28
/* 5E1C4 8005D5C4 14200007 */  bnez       $at, .L8005D5E4
.L8005D5C8:
/* 5E1C8 8005D5C8 2841006B */   slti      $at, $v0, 0x6B
/* 5E1CC 8005D5CC 14200002 */  bnez       $at, .L8005D5D8
/* 5E1D0 8005D5D0 28410080 */   slti      $at, $v0, 0x80
/* 5E1D4 8005D5D4 14200003 */  bnez       $at, .L8005D5E4
.L8005D5D8:
/* 5E1D8 8005D5D8 24010093 */   addiu     $at, $zero, 0x93
/* 5E1DC 8005D5DC 54410018 */  bnel       $v0, $at, .L8005D640
/* 5E1E0 8005D5E0 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D5E4:
/* 5E1E4 8005D5E4 C486009C */  lwc1       $f6, 0x9C($a0)
/* 5E1E8 8005D5E8 3C01800A */  lui        $at, %hi(D_80098668)
/* 5E1EC 8005D5EC D4248668 */  ldc1       $f4, %lo(D_80098668)($at)
/* 5E1F0 8005D5F0 46003221 */  cvt.d.s    $f8, $f6
/* 5E1F4 8005D5F4 4624403E */  c.le.d     $f8, $f4
/* 5E1F8 8005D5F8 00000000 */  nop
/* 5E1FC 8005D5FC 45020010 */  bc1fl      .L8005D640
/* 5E200 8005D600 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E204 8005D604 C49001CC */  lwc1       $f16, 0x1CC($a0)
/* 5E208 8005D608 3C01800A */  lui        $at, %hi(D_80098670)
/* 5E20C 8005D60C D42A8670 */  ldc1       $f10, %lo(D_80098670)($at)
/* 5E210 8005D610 460084A1 */  cvt.d.s    $f18, $f16
/* 5E214 8005D614 4632503C */  c.lt.d     $f10, $f18
/* 5E218 8005D618 00000000 */  nop
/* 5E21C 8005D61C 45020008 */  bc1fl      .L8005D640
/* 5E220 8005D620 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E224 8005D624 90990035 */  lbu        $t9, 0x35($a0)
/* 5E228 8005D628 3C01BF00 */  lui        $at, (0xBF000000 >> 16)
/* 5E22C 8005D62C 44813000 */  mtc1       $at, $f6
/* 5E230 8005D630 37280010 */  ori        $t0, $t9, 0x10
/* 5E234 8005D634 A0880035 */  sb         $t0, 0x35($a0)
/* 5E238 8005D638 E4860230 */  swc1       $f6, 0x230($a0)
/* 5E23C 8005D63C 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D640:
/* 5E240 8005D640 27BD0020 */  addiu      $sp, $sp, 0x20
/* 5E244 8005D644 03E00008 */  jr         $ra
/* 5E248 8005D648 00000000 */   nop
