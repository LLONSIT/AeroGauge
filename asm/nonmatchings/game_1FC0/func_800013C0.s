glabel func_800013C0
/* 1FC0 800013C0 3C188011 */  lui        $t8, %hi(D_80109C20)
/* 1FC4 800013C4 8F189C20 */  lw         $t8, %lo(D_80109C20)($t8)
/* 1FC8 800013C8 AFA40000 */  sw         $a0, 0x0($sp)
/* 1FCC 800013CC AFA50004 */  sw         $a1, 0x4($sp)
/* 1FD0 800013D0 8719000E */  lh         $t9, 0xE($t8)
/* 1FD4 800013D4 308E00FF */  andi       $t6, $a0, 0xFF
/* 1FD8 800013D8 30AF00FF */  andi       $t7, $a1, 0xFF
/* 1FDC 800013DC 01D9082A */  slt        $at, $t6, $t9
/* 1FE0 800013E0 1020000B */  beqz       $at, .L80001410
/* 1FE4 800013E4 29E10007 */   slti      $at, $t7, 0x7
/* 1FE8 800013E8 10200009 */  beqz       $at, .L80001410
/* 1FEC 800013EC 000F4080 */   sll       $t0, $t7, 2
/* 1FF0 800013F0 010F4023 */  subu       $t0, $t0, $t7
/* 1FF4 800013F4 3C098011 */  lui        $t1, %hi(D_80109C28)
/* 1FF8 800013F8 25299C28 */  addiu      $t1, $t1, %lo(D_80109C28)
/* 1FFC 800013FC 000840C0 */  sll        $t0, $t0, 3
/* 2000 80001400 01091021 */  addu       $v0, $t0, $t1
/* 2004 80001404 240A0002 */  addiu      $t2, $zero, 0x2
/* 2008 80001408 A04E0004 */  sb         $t6, 0x4($v0)
/* 200C 8000140C AC4A0008 */  sw         $t2, 0x8($v0)
.L80001410:
/* 2010 80001410 03E00008 */  jr         $ra
/* 2014 80001414 00000000 */   nop
