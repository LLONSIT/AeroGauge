glabel func_800156E4
/* 162E4 800156E4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 162E8 800156E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 162EC 800156EC 8C8E0000 */  lw         $t6, 0x0($a0)
/* 162F0 800156F0 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 162F4 800156F4 000E7FC2 */  srl        $t7, $t6, 31
/* 162F8 800156F8 11E0000A */  beqz       $t7, .L80015724
/* 162FC 800156FC 00000000 */   nop
/* 16300 80015700 90980000 */  lbu        $t8, 0x0($a0)
/* 16304 80015704 8C880020 */  lw         $t0, 0x20($a0)
/* 16308 80015708 44813000 */  mtc1       $at, $f6
/* 1630C 8001570C 3319FF7F */  andi       $t9, $t8, 0xFF7F
/* 16310 80015710 A0990000 */  sb         $t9, 0x0($a0)
/* 16314 80015714 C5040008 */  lwc1       $f4, 0x8($t0)
/* 16318 80015718 46062202 */  mul.s      $f8, $f4, $f6
/* 1631C 8001571C 10000003 */  b          .L8001572C
/* 16320 80015720 E48800C8 */   swc1      $f8, 0xC8($a0)
.L80015724:
/* 16324 80015724 0C005626 */  jal        func_80015898
/* 16328 80015728 00000000 */   nop
.L8001572C:
/* 1632C 8001572C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 16330 80015730 27BD0018 */  addiu      $sp, $sp, 0x18
/* 16334 80015734 03E00008 */  jr         $ra
/* 16338 80015738 00000000 */   nop
