glabel func_80001E50
/* 2A50 80001E50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2A54 80001E54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2A58 80001E58 0C019FF8 */  jal        osAiGetLength
/* 2A5C 80001E5C AFA40018 */   sw        $a0, 0x18($sp)
/* 2A60 80001E60 00027082 */  srl        $t6, $v0, 2
/* 2A64 80001E64 15C00006 */  bnez       $t6, .L80001E80
/* 2A68 80001E68 3C0F8008 */   lui       $t7, %hi(D_8007F560)
/* 2A6C 80001E6C 8DEFF560 */  lw         $t7, %lo(D_8007F560)($t7)
/* 2A70 80001E70 3C018008 */  lui        $at, %hi(D_8007F560)
/* 2A74 80001E74 55E00003 */  bnel       $t7, $zero, .L80001E84
/* 2A78 80001E78 8FBF0014 */   lw        $ra, 0x14($sp)
/* 2A7C 80001E7C AC20F560 */  sw         $zero, %lo(D_8007F560)($at)
.L80001E80:
/* 2A80 80001E80 8FBF0014 */  lw         $ra, 0x14($sp)
.L80001E84:
/* 2A84 80001E84 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2A88 80001E88 03E00008 */  jr         $ra
/* 2A8C 80001E8C 00000000 */   nop
