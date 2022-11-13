glabel func_80013A98
/* 14698 80013A98 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1469C 80013A9C AFB40028 */  sw         $s4, 0x28($sp)
/* 146A0 80013AA0 AFB30024 */  sw         $s3, 0x24($sp)
/* 146A4 80013AA4 AFB20020 */  sw         $s2, 0x20($sp)
/* 146A8 80013AA8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 146AC 80013AAC AFB00018 */  sw         $s0, 0x18($sp)
/* 146B0 80013AB0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 146B4 80013AB4 00808025 */  or         $s0, $a0, $zero
/* 146B8 80013AB8 00008825 */  or         $s1, $zero, $zero
/* 146BC 80013ABC 24920380 */  addiu      $s2, $a0, 0x380
/* 146C0 80013AC0 2413FFFD */  addiu      $s3, $zero, -0x3
/* 146C4 80013AC4 241400A0 */  addiu      $s4, $zero, 0xA0
.L80013AC8:
/* 146C8 80013AC8 960E174C */  lhu        $t6, 0x174C($s0)
/* 146CC 80013ACC AE0017E4 */  sw         $zero, 0x17E4($s0)
/* 146D0 80013AD0 02402025 */  or         $a0, $s2, $zero
/* 146D4 80013AD4 35D80100 */  ori        $t8, $t6, 0x100
/* 146D8 80013AD8 A618174C */  sh         $t8, 0x174C($s0)
/* 146DC 80013ADC 0313C824 */  and        $t9, $t8, $s3
/* 146E0 80013AE0 0C004528 */  jal        func_800114A0
/* 146E4 80013AE4 A619174C */   sh        $t9, 0x174C($s0)
/* 146E8 80013AE8 26310014 */  addiu      $s1, $s1, 0x14
/* 146EC 80013AEC 261000B8 */  addiu      $s0, $s0, 0xB8
/* 146F0 80013AF0 1634FFF5 */  bne        $s1, $s4, .L80013AC8
/* 146F4 80013AF4 26520014 */   addiu     $s2, $s2, 0x14
/* 146F8 80013AF8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 146FC 80013AFC 8FB00018 */  lw         $s0, 0x18($sp)
/* 14700 80013B00 8FB1001C */  lw         $s1, 0x1C($sp)
/* 14704 80013B04 8FB20020 */  lw         $s2, 0x20($sp)
/* 14708 80013B08 8FB30024 */  lw         $s3, 0x24($sp)
/* 1470C 80013B0C 8FB40028 */  lw         $s4, 0x28($sp)
/* 14710 80013B10 03E00008 */  jr         $ra
/* 14714 80013B14 27BD0030 */   addiu     $sp, $sp, 0x30
/* 14718 80013B18 00000000 */  nop
/* 1471C 80013B1C 00000000 */  nop
