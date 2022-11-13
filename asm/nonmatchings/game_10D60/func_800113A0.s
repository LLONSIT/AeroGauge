glabel func_800113A0
/* 11FA0 800113A0 3C038008 */  lui        $v1, %hi(D_80082CB0)
/* 11FA4 800113A4 24632CB0 */  addiu      $v1, $v1, %lo(D_80082CB0)
/* 11FA8 800113A8 8C6E0000 */  lw         $t6, 0x0($v1)
/* 11FAC 800113AC 3C0141C6 */  lui        $at, (0x41C64E6D >> 16)
/* 11FB0 800113B0 34214E6D */  ori        $at, $at, (0x41C64E6D & 0xFFFF)
/* 11FB4 800113B4 01C10019 */  multu      $t6, $at
/* 11FB8 800113B8 24017FFF */  addiu      $at, $zero, 0x7FFF
/* 11FBC 800113BC 00007812 */  mflo       $t7
/* 11FC0 800113C0 25F83039 */  addiu      $t8, $t7, 0x3039
/* 11FC4 800113C4 0018CC02 */  srl        $t9, $t8, 16
/* 11FC8 800113C8 0321001B */  divu       $zero, $t9, $at
/* 11FCC 800113CC 00001010 */  mfhi       $v0
/* 11FD0 800113D0 AC780000 */  sw         $t8, 0x0($v1)
/* 11FD4 800113D4 03E00008 */  jr         $ra
/* 11FD8 800113D8 00000000 */   nop
