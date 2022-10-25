glabel func_80067B44
/* 68744 80067B44 3C0E8009 */  lui        $t6, %hi(alGlobals)
/* 68748 80067B48 8DCE2E40 */  lw         $t6, %lo(alGlobals)($t6)
/* 6874C 80067B4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 68750 80067B50 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68754 80067B54 51C00006 */  beql       $t6, $zero, .L80067B70
/* 68758 80067B58 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6875C 80067B5C 0C01C490 */  jal        func_80071240
/* 68760 80067B60 00000000 */   nop
/* 68764 80067B64 3C018009 */  lui        $at, %hi(alGlobals)
/* 68768 80067B68 AC202E40 */  sw         $zero, %lo(alGlobals)($at)
/* 6876C 80067B6C 8FBF0014 */  lw         $ra, 0x14($sp)
.L80067B70:
/* 68770 80067B70 27BD0018 */  addiu      $sp, $sp, 0x18
/* 68774 80067B74 03E00008 */  jr         $ra
/* 68778 80067B78 00000000 */   nop
