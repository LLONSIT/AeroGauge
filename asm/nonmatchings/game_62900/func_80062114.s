glabel func_80062114
/* 62D14 80062114 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62D18 80062118 AFBF0014 */  sw         $ra, 0x14($sp)
/* 62D1C 8006211C 3C04801A */  lui        $a0, %hi(D_8019FC18)
/* 62D20 80062120 0C018806 */  jal        func_80062018
/* 62D24 80062124 2484FC18 */   addiu     $a0, $a0, %lo(D_8019FC18)
/* 62D28 80062128 14400005 */  bnez       $v0, .L80062140
/* 62D2C 8006212C 304300FF */   andi      $v1, $v0, 0xFF
/* 62D30 80062130 3C04801A */  lui        $a0, %hi(D_8019FC18)
/* 62D34 80062134 0C018A67 */  jal        func_8006299C
/* 62D38 80062138 2484FC18 */   addiu     $a0, $a0, %lo(D_8019FC18)
/* 62D3C 8006213C 304300FF */  andi       $v1, $v0, 0xFF
.L80062140:
/* 62D40 80062140 8FBF0014 */  lw         $ra, 0x14($sp)
/* 62D44 80062144 27BD0018 */  addiu      $sp, $sp, 0x18
/* 62D48 80062148 00601025 */  or         $v0, $v1, $zero
/* 62D4C 8006214C 03E00008 */  jr         $ra
/* 62D50 80062150 00000000 */   nop