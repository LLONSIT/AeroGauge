glabel func_8001568C
/* 1628C 8001568C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 16290 80015690 AFBF0014 */  sw         $ra, 0x14($sp)
/* 16294 80015694 8C8E0000 */  lw         $t6, 0x0($a0)
/* 16298 80015698 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 1629C 8001569C 000E7FC2 */  srl        $t7, $t6, 31
/* 162A0 800156A0 11E0000A */  beqz       $t7, .L800156CC
/* 162A4 800156A4 00000000 */   nop
/* 162A8 800156A8 90980000 */  lbu        $t8, 0x0($a0)
/* 162AC 800156AC 8C880020 */  lw         $t0, 0x20($a0)
/* 162B0 800156B0 44813000 */  mtc1       $at, $f6
/* 162B4 800156B4 3319FF7F */  andi       $t9, $t8, 0xFF7F
/* 162B8 800156B8 A0990000 */  sb         $t9, 0x0($a0)
/* 162BC 800156BC C5040008 */  lwc1       $f4, 0x8($t0)
/* 162C0 800156C0 46062202 */  mul.s      $f8, $f4, $f6
/* 162C4 800156C4 10000003 */  b          .L800156D4
/* 162C8 800156C8 E48800C8 */   swc1      $f8, 0xC8($a0)
.L800156CC:
/* 162CC 800156CC 0C0054BF */  jal        func_800152FC
/* 162D0 800156D0 00000000 */   nop
.L800156D4:
/* 162D4 800156D4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 162D8 800156D8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 162DC 800156DC 03E00008 */  jr         $ra
/* 162E0 800156E0 00000000 */   nop
