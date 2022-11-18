glabel func_80073EB8
/* 74AB8 80073EB8 8C850008 */  lw         $a1, 0x8($a0)
/* 74ABC 80073EBC 90A30000 */  lbu        $v1, 0x0($a1)
/* 74AC0 80073EC0 24AF0001 */  addiu      $t7, $a1, 0x1
/* 74AC4 80073EC4 AC8F0008 */  sw         $t7, 0x8($a0)
/* 74AC8 80073EC8 91F80000 */  lbu        $t8, 0x0($t7)
/* 74ACC 80073ECC 00037600 */  sll        $t6, $v1, 24
/* 74AD0 80073ED0 0018CC00 */  sll        $t9, $t8, 16
/* 74AD4 80073ED4 01D91825 */  or         $v1, $t6, $t9
/* 74AD8 80073ED8 25EE0001 */  addiu      $t6, $t7, 0x1
/* 74ADC 80073EDC AC8E0008 */  sw         $t6, 0x8($a0)
/* 74AE0 80073EE0 91CF0000 */  lbu        $t7, 0x0($t6)
/* 74AE4 80073EE4 25D90001 */  addiu      $t9, $t6, 0x1
/* 74AE8 80073EE8 AC990008 */  sw         $t9, 0x8($a0)
/* 74AEC 80073EEC 000FC200 */  sll        $t8, $t7, 8
/* 74AF0 80073EF0 932E0000 */  lbu        $t6, 0x0($t9)
/* 74AF4 80073EF4 00781825 */  or         $v1, $v1, $t8
/* 74AF8 80073EF8 272F0001 */  addiu      $t7, $t9, 0x1
/* 74AFC 80073EFC AC8F0008 */  sw         $t7, 0x8($a0)
/* 74B00 80073F00 03E00008 */  jr         $ra
/* 74B04 80073F04 006E1025 */   or        $v0, $v1, $t6
