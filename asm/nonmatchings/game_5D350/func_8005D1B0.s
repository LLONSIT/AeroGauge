glabel func_8005D1B0
/* 5DDB0 8005D1B0 000470C0 */  sll        $t6, $a0, 3
/* 5DDB4 8005D1B4 3C0F8009 */  lui        $t7, %hi(D_8008FA30)
/* 5DDB8 8005D1B8 25EFFA30 */  addiu      $t7, $t7, %lo(D_8008FA30)
/* 5DDBC 8005D1BC 01C47021 */  addu       $t6, $t6, $a0
/* 5DDC0 8005D1C0 01CFC021 */  addu       $t8, $t6, $t7
/* 5DDC4 8005D1C4 3C01801A */  lui        $at, %hi(D_8019EE60)
/* 5DDC8 8005D1C8 03E00008 */  jr         $ra
/* 5DDCC 8005D1CC AC38EE60 */   sw        $t8, %lo(D_8019EE60)($at)
