glabel func_80067B7C
/* 6877C 80067B7C 3C028009 */  lui        $v0, %hi(alGlobals)
/* 68780 80067B80 24422E40 */  addiu      $v0, $v0, %lo(alGlobals)
/* 68784 80067B84 8C4E0000 */  lw         $t6, 0x0($v0)
/* 68788 80067B88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6878C 80067B8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 68790 80067B90 55C00004 */  bnel       $t6, $zero, .L80067BA4
/* 68794 80067B94 8FBF0014 */   lw        $ra, 0x14($sp)
/* 68798 80067B98 0C01A0F4 */  jal        func_800683D0
/* 6879C 80067B9C AC440000 */   sw        $a0, 0x0($v0)
/* 687A0 80067BA0 8FBF0014 */  lw         $ra, 0x14($sp)
.L80067BA4:
/* 687A4 80067BA4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 687A8 80067BA8 03E00008 */  jr         $ra
/* 687AC 80067BAC 00000000 */   nop
