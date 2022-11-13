glabel func_800061C4
/* 6DC4 800061C4 44866000 */  mtc1       $a2, $f12
/* 6DC8 800061C8 2CA10005 */  sltiu      $at, $a1, 0x5
/* 6DCC 800061CC 1020000F */  beqz       $at, .L8000620C
/* 6DD0 800061D0 00057080 */   sll       $t6, $a1, 2
/* 6DD4 800061D4 3C018009 */  lui        $at, %hi(jtbl_800950C8_main)
/* 6DD8 800061D8 002E0821 */  addu       $at, $at, $t6
/* 6DDC 800061DC 8C2E50C8 */  lw         $t6, %lo(jtbl_800950C8_main)($at)
/* 6DE0 800061E0 01C00008 */  jr         $t6
/* 6DE4 800061E4 00000000 */   nop
glabel L800061E8
/* 6DE8 800061E8 03E00008 */  jr         $ra
/* 6DEC 800061EC E48C00B0 */   swc1      $f12, 0xB0($a0)
glabel L800061F0
/* 6DF0 800061F0 03E00008 */  jr         $ra
/* 6DF4 800061F4 E48C00B4 */   swc1      $f12, 0xB4($a0)
glabel L800061F8
/* 6DF8 800061F8 03E00008 */  jr         $ra
/* 6DFC 800061FC E48C00B8 */   swc1      $f12, 0xB8($a0)
glabel L80006200
/* 6E00 80006200 03E00008 */  jr         $ra
/* 6E04 80006204 E48C00BC */   swc1      $f12, 0xBC($a0)
glabel L80006208
/* 6E08 80006208 E48C00C0 */  swc1       $f12, 0xC0($a0)
.L8000620C:
/* 6E0C 8000620C 03E00008 */  jr         $ra
/* 6E10 80006210 00000000 */   nop
