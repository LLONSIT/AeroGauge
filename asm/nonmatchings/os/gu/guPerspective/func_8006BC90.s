glabel func_8006BC90
/* 6C890 8006BC90 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6C894 8006BC94 44866000 */  mtc1       $a2, $f12
/* 6C898 8006BC98 44877000 */  mtc1       $a3, $f14
/* 6C89C 8006BC9C C7A40078 */  lwc1       $f4, 0x78($sp)
/* 6C8A0 8006BCA0 C7A6007C */  lwc1       $f6, 0x7C($sp)
/* 6C8A4 8006BCA4 C7A80080 */  lwc1       $f8, 0x80($sp)
/* 6C8A8 8006BCA8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6C8AC 8006BCAC AFA40068 */  sw         $a0, 0x68($sp)
/* 6C8B0 8006BCB0 44066000 */  mfc1       $a2, $f12
/* 6C8B4 8006BCB4 44077000 */  mfc1       $a3, $f14
/* 6C8B8 8006BCB8 27A40028 */  addiu      $a0, $sp, 0x28
/* 6C8BC 8006BCBC E7A40010 */  swc1       $f4, 0x10($sp)
/* 6C8C0 8006BCC0 E7A60014 */  swc1       $f6, 0x14($sp)
/* 6C8C4 8006BCC4 0C01AE98 */  jal        guPerspectiveF
/* 6C8C8 8006BCC8 E7A80018 */   swc1      $f8, 0x18($sp)
/* 6C8CC 8006BCCC 27A40028 */  addiu      $a0, $sp, 0x28
/* 6C8D0 8006BCD0 0C01B08C */  jal        guMtxF2L
/* 6C8D4 8006BCD4 8FA50068 */   lw        $a1, 0x68($sp)
/* 6C8D8 8006BCD8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6C8DC 8006BCDC 27BD0068 */  addiu      $sp, $sp, 0x68
/* 6C8E0 8006BCE0 03E00008 */  jr         $ra
/* 6C8E4 8006BCE4 00000000 */   nop
/* 6C8E8 8006BCE8 00000000 */  nop
/* 6C8EC 8006BCEC 00000000 */  nop
