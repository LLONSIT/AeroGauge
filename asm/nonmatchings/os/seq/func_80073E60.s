glabel func_80073E60
/* 74A60 80073E60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74A64 80073E64 AFBF0014 */  sw         $ra, 0x14($sp)
/* 74A68 80073E68 8C8F0010 */  lw         $t7, 0x10($a0)
/* 74A6C 80073E6C 8C8E0000 */  lw         $t6, 0x0($a0)
/* 74A70 80073E70 8C820008 */  lw         $v0, 0x8($a0)
/* 74A74 80073E74 00803025 */  or         $a2, $a0, $zero
/* 74A78 80073E78 01CFC021 */  addu       $t8, $t6, $t7
/* 74A7C 80073E7C 0058082B */  sltu       $at, $v0, $t8
/* 74A80 80073E80 14200003 */  bnez       $at, .L80073E90
/* 74A84 80073E84 00A04025 */   or        $t0, $a1, $zero
/* 74A88 80073E88 10000007 */  b          .L80073EA8
/* 74A8C 80073E8C 00001025 */   or        $v0, $zero, $zero
.L80073E90:
/* 74A90 80073E90 00403825 */  or         $a3, $v0, $zero
/* 74A94 80073E94 0C01CE8E */  jal        func_80073A38
/* 74A98 80073E98 00C02025 */   or        $a0, $a2, $zero
/* 74A9C 80073E9C AD020000 */  sw         $v0, 0x0($t0)
/* 74AA0 80073EA0 ACC70008 */  sw         $a3, 0x8($a2)
/* 74AA4 80073EA4 24020001 */  addiu      $v0, $zero, 0x1
.L80073EA8:
/* 74AA8 80073EA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74AAC 80073EAC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74AB0 80073EB0 03E00008 */  jr         $ra
/* 74AB4 80073EB4 00000000 */   nop
