glabel func_8001583C
/* 1643C 8001583C 948E049C */  lhu        $t6, 0x49C($a0)
/* 16440 80015840 44800000 */  mtc1       $zero, $f0
/* 16444 80015844 3C013E20 */  lui        $at, (0x3E200000 >> 16)
/* 16448 80015848 44811000 */  mtc1       $at, $f2
/* 1644C 8001584C 35D80010 */  ori        $t8, $t6, 0x10
/* 16450 80015850 240200FF */  addiu      $v0, $zero, 0xFF
/* 16454 80015854 A498049C */  sh         $t8, 0x49C($a0)
/* 16458 80015858 37190001 */  ori        $t9, $t8, 0x1
/* 1645C 8001585C 24081896 */  addiu      $t0, $zero, 0x1896
/* 16460 80015860 A0800057 */  sb         $zero, 0x57($a0)
/* 16464 80015864 A0800058 */  sb         $zero, 0x58($a0)
/* 16468 80015868 A08204CC */  sb         $v0, 0x4CC($a0)
/* 1646C 8001586C A08204CD */  sb         $v0, 0x4CD($a0)
/* 16470 80015870 A08204CE */  sb         $v0, 0x4CE($a0)
/* 16474 80015874 A08004CF */  sb         $zero, 0x4CF($a0)
/* 16478 80015878 A488049E */  sh         $t0, 0x49E($a0)
/* 1647C 8001587C A499049C */  sh         $t9, 0x49C($a0)
/* 16480 80015880 E48000C8 */  swc1       $f0, 0xC8($a0)
/* 16484 80015884 E4800060 */  swc1       $f0, 0x60($a0)
/* 16488 80015888 E480005C */  swc1       $f0, 0x5C($a0)
/* 1648C 8001588C E48200D0 */  swc1       $f2, 0xD0($a0)
/* 16490 80015890 03E00008 */  jr         $ra
/* 16494 80015894 E48200D8 */   swc1      $f2, 0xD8($a0)