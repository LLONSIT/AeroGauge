glabel func_8001DD30
/* 1E930 8001DD30 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* 1E934 8001DD34 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* 1E938 8001DD38 8CAE02D8 */  lw         $t6, 0x2D8($a1)
/* 1E93C 8001DD3C 3C038014 */  lui        $v1, %hi(D_8013FC9C)
/* 1E940 8001DD40 2463FC9C */  addiu      $v1, $v1, %lo(D_8013FC9C)
/* 1E944 8001DD44 008E082B */  sltu       $at, $a0, $t6
/* 1E948 8001DD48 1020000B */  beqz       $at, .L8001DD78
/* 1E94C 8001DD4C 3C068014 */   lui       $a2, %hi(D_8013FC88)
/* 1E950 8001DD50 ACA402DC */  sw         $a0, 0x2DC($a1)
/* 1E954 8001DD54 24C6FC88 */  addiu      $a2, $a2, %lo(D_8013FC88)
.L8001DD58:
/* 1E958 8001DD58 8C6202C8 */  lw         $v0, 0x2C8($v1)
/* 1E95C 8001DD5C 8C6402C4 */  lw         $a0, 0x2C4($v1)
/* 1E960 8001DD60 0044082B */  sltu       $at, $v0, $a0
/* 1E964 8001DD64 10200004 */  beqz       $at, .L8001DD78
/* 1E968 8001DD68 2463FFFC */   addiu     $v1, $v1, -0x4
/* 1E96C 8001DD6C AC6402CC */  sw         $a0, 0x2CC($v1)
/* 1E970 8001DD70 1466FFF9 */  bne        $v1, $a2, .L8001DD58
/* 1E974 8001DD74 AC6202C8 */   sw        $v0, 0x2C8($v1)
.L8001DD78:
/* 1E978 8001DD78 03E00008 */  jr         $ra
/* 1E97C 8001DD7C 00000000 */   nop
