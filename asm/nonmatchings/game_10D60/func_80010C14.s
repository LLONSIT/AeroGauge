glabel func_80010C14
/* 11814 80010C14 A4800104 */  sh         $zero, 0x104($a0)
/* 11818 80010C18 A4800106 */  sh         $zero, 0x106($a0)
/* 1181C 80010C1C 84980104 */  lh         $t8, 0x104($a0)
/* 11820 80010C20 84890106 */  lh         $t1, 0x106($a0)
/* 11824 80010C24 240E0001 */  addiu      $t6, $zero, 0x1
/* 11828 80010C28 00B8C821 */  addu       $t9, $a1, $t8
/* 1182C 80010C2C 00C95021 */  addu       $t2, $a2, $t1
/* 11830 80010C30 A08E0108 */  sb         $t6, 0x108($a0)
/* 11834 80010C34 A4850100 */  sh         $a1, 0x100($a0)
/* 11838 80010C38 A4860102 */  sh         $a2, 0x102($a0)
/* 1183C 80010C3C A49900FC */  sh         $t9, 0xFC($a0)
/* 11840 80010C40 A48A00FE */  sh         $t2, 0xFE($a0)
/* 11844 80010C44 03E00008 */  jr         $ra
/* 11848 80010C48 AC80010C */   sw        $zero, 0x10C($a0)