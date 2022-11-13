glabel func_8003F98C
/* 4058C 8003F98C 3C098009 */  lui        $t1, %hi(D_8008EE80)
/* 40590 8003F990 2529EE80 */  addiu      $t1, $t1, %lo(D_8008EE80)
/* 40594 8003F994 C5240004 */  lwc1       $f4, 0x4($t1)
/* 40598 8003F998 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 4059C 8003F99C 44814800 */  mtc1       $at, $f9
/* 405A0 8003F9A0 44804000 */  mtc1       $zero, $f8
/* 405A4 8003F9A4 460021A1 */  cvt.d.s    $f6, $f4
/* 405A8 8003F9A8 3C018009 */  lui        $at, %hi(D_800976A0)
/* 405AC 8003F9AC 46283280 */  add.d      $f10, $f6, $f8
/* 405B0 8003F9B0 27BDFED8 */  addiu      $sp, $sp, -0x128
/* 405B4 8003F9B4 AFA40128 */  sw         $a0, 0x128($sp)
/* 405B8 8003F9B8 AFA5012C */  sw         $a1, 0x12C($sp)
/* 405BC 8003F9BC 46205420 */  cvt.s.d    $f16, $f10
/* 405C0 8003F9C0 AFA60130 */  sw         $a2, 0x130($sp)
/* 405C4 8003F9C4 3C073FAA */  lui        $a3, (0x3FAAAAAB >> 16)
/* 405C8 8003F9C8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 405CC 8003F9CC E5300004 */  swc1       $f16, 0x4($t1)
/* 405D0 8003F9D0 C5240004 */  lwc1       $f4, 0x4($t1)
/* 405D4 8003F9D4 D43276A0 */  ldc1       $f18, %lo(D_800976A0)($at)
/* 405D8 8003F9D8 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 405DC 8003F9DC 460021A1 */  cvt.d.s    $f6, $f4
/* 405E0 8003F9E0 3C0140A0 */  lui        $at, (0x40A00000 >> 16)
/* 405E4 8003F9E4 46269032 */  c.eq.d     $f18, $f6
/* 405E8 8003F9E8 34E7AAAB */  ori        $a3, $a3, (0x3FAAAAAB & 0xFFFF)
/* 405EC 8003F9EC 3C06425C */  lui        $a2, (0x425C0000 >> 16)
/* 405F0 8003F9F0 27A5005A */  addiu      $a1, $sp, 0x5A
/* 405F4 8003F9F4 45000004 */  bc1f       .L8003FA08
/* 405F8 8003F9F8 27A4009C */   addiu     $a0, $sp, 0x9C
/* 405FC 8003F9FC 44800000 */  mtc1       $zero, $f0
/* 40600 8003FA00 00000000 */  nop
/* 40604 8003FA04 E5200004 */  swc1       $f0, 0x4($t1)
.L8003FA08:
/* 40608 8003FA08 8FAE0128 */  lw         $t6, 0x128($sp)
/* 4060C 8003FA0C 8FB8012C */  lw         $t8, 0x12C($sp)
/* 40610 8003FA10 8FAA0130 */  lw         $t2, 0x130($sp)
/* 40614 8003FA14 8DCF0000 */  lw         $t7, 0x0($t6)
/* 40618 8003FA18 44814000 */  mtc1       $at, $f8
/* 4061C 8003FA1C 3C0143FA */  lui        $at, (0x43FA0000 >> 16)
/* 40620 8003FA20 AFAF0124 */  sw         $t7, 0x124($sp)
/* 40624 8003FA24 8F190000 */  lw         $t9, 0x0($t8)
/* 40628 8003FA28 25EC0008 */  addiu      $t4, $t7, 0x8
/* 4062C 8003FA2C 44815000 */  mtc1       $at, $f10
/* 40630 8003FA30 AFB90120 */  sw         $t9, 0x120($sp)
/* 40634 8003FA34 8D4B0000 */  lw         $t3, 0x0($t2)
/* 40638 8003FA38 AFAC0124 */  sw         $t4, 0x124($sp)
/* 4063C 8003FA3C 3C19BA00 */  lui        $t9, (0xBA001402 >> 16)
/* 40640 8003FA40 AFAB011C */  sw         $t3, 0x11C($sp)
/* 40644 8003FA44 ADE00004 */  sw         $zero, 0x4($t7)
/* 40648 8003FA48 ADED0000 */  sw         $t5, 0x0($t7)
/* 4064C 8003FA4C 8FAE0124 */  lw         $t6, 0x124($sp)
/* 40650 8003FA50 37391402 */  ori        $t9, $t9, (0xBA001402 & 0xFFFF)
/* 40654 8003FA54 3C0FBA00 */  lui        $t7, (0xBA001301 >> 16)
/* 40658 8003FA58 25D80008 */  addiu      $t8, $t6, 0x8
/* 4065C 8003FA5C AFB80124 */  sw         $t8, 0x124($sp)
/* 40660 8003FA60 ADC00004 */  sw         $zero, 0x4($t6)
/* 40664 8003FA64 ADD90000 */  sw         $t9, 0x0($t6)
/* 40668 8003FA68 8FAA0124 */  lw         $t2, 0x124($sp)
/* 4066C 8003FA6C 35EF1301 */  ori        $t7, $t7, (0xBA001301 & 0xFFFF)
/* 40670 8003FA70 3C0C0008 */  lui        $t4, (0x80000 >> 16)
/* 40674 8003FA74 254B0008 */  addiu      $t3, $t2, 0x8
/* 40678 8003FA78 AFAB0124 */  sw         $t3, 0x124($sp)
/* 4067C 8003FA7C AD4C0004 */  sw         $t4, 0x4($t2)
/* 40680 8003FA80 AD4F0000 */  sw         $t7, 0x0($t2)
/* 40684 8003FA84 8FAD0124 */  lw         $t5, 0x124($sp)
/* 40688 8003FA88 3C198009 */  lui        $t9, %hi(D_8008EE60)
/* 4068C 8003FA8C 3C180380 */  lui        $t8, (0x3800010 >> 16)
/* 40690 8003FA90 25AE0008 */  addiu      $t6, $t5, 0x8
/* 40694 8003FA94 AFAE0124 */  sw         $t6, 0x124($sp)
/* 40698 8003FA98 37180010 */  ori        $t8, $t8, (0x3800010 & 0xFFFF)
/* 4069C 8003FA9C 2739EE60 */  addiu      $t9, $t9, %lo(D_8008EE60)
/* 406A0 8003FAA0 ADB90004 */  sw         $t9, 0x4($t5)
/* 406A4 8003FAA4 ADB80000 */  sw         $t8, 0x0($t5)
/* 406A8 8003FAA8 8FAA0124 */  lw         $t2, 0x124($sp)
/* 406AC 8003FAAC 3C0FED19 */  lui        $t7, (0xED190020 >> 16)
/* 406B0 8003FAB0 3C0C004F */  lui        $t4, (0x4FC2B0 >> 16)
/* 406B4 8003FAB4 254B0008 */  addiu      $t3, $t2, 0x8
/* 406B8 8003FAB8 AFAB0124 */  sw         $t3, 0x124($sp)
/* 406BC 8003FABC 358CC2B0 */  ori        $t4, $t4, (0x4FC2B0 & 0xFFFF)
/* 406C0 8003FAC0 35EF0020 */  ori        $t7, $t7, (0xED190020 & 0xFFFF)
/* 406C4 8003FAC4 3C018009 */  lui        $at, %hi(D_800976A8)
/* 406C8 8003FAC8 AD4F0000 */  sw         $t7, 0x0($t2)
/* 406CC 8003FACC AD4C0004 */  sw         $t4, 0x4($t2)
/* 406D0 8003FAD0 C43076A8 */  lwc1       $f16, %lo(D_800976A8)($at)
/* 406D4 8003FAD4 E7A80010 */  swc1       $f8, 0x10($sp)
/* 406D8 8003FAD8 E7AA0014 */  swc1       $f10, 0x14($sp)
/* 406DC 8003FADC 0C01AE98 */  jal        func_8006BA60
/* 406E0 8003FAE0 E7B00018 */   swc1      $f16, 0x18($sp)
/* 406E4 8003FAE4 44800000 */  mtc1       $zero, $f0
/* 406E8 8003FAE8 3C01C040 */  lui        $at, (0xC0400000 >> 16)
/* 406EC 8003FAEC 44812000 */  mtc1       $at, $f4
/* 406F0 8003FAF0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 406F4 8003FAF4 44819000 */  mtc1       $at, $f18
/* 406F8 8003FAF8 27A400DC */  addiu      $a0, $sp, 0xDC
/* 406FC 8003FAFC 3C05428C */  lui        $a1, (0x428C0000 >> 16)
/* 40700 8003FB00 3C0641E0 */  lui        $a2, (0x41E00000 >> 16)
/* 40704 8003FB04 3C074260 */  lui        $a3, (0x42600000 >> 16)
/* 40708 8003FB08 E7A00010 */  swc1       $f0, 0x10($sp)
/* 4070C 8003FB0C E7A00018 */  swc1       $f0, 0x18($sp)
/* 40710 8003FB10 E7A0001C */  swc1       $f0, 0x1C($sp)
/* 40714 8003FB14 E7A00024 */  swc1       $f0, 0x24($sp)
/* 40718 8003FB18 E7A40014 */  swc1       $f4, 0x14($sp)
/* 4071C 8003FB1C 0C01AF3C */  jal        guLookAtF
/* 40720 8003FB20 E7B20020 */   swc1      $f18, 0x20($sp)
/* 40724 8003FB24 27A400DC */  addiu      $a0, $sp, 0xDC
/* 40728 8003FB28 27A5009C */  addiu      $a1, $sp, 0x9C
/* 4072C 8003FB2C 0C01B030 */  jal        guMtxCatF
/* 40730 8003FB30 27A6005C */   addiu     $a2, $sp, 0x5C
/* 40734 8003FB34 27A4005C */  addiu      $a0, $sp, 0x5C
/* 40738 8003FB38 0C01B08C */  jal        guMtxF2L
/* 4073C 8003FB3C 8FA50120 */   lw        $a1, 0x120($sp)
/* 40740 8003FB40 8FAD0124 */  lw         $t5, 0x124($sp)
/* 40744 8003FB44 3C18BC00 */  lui        $t8, (0xBC00000E >> 16)
/* 40748 8003FB48 3718000E */  ori        $t8, $t8, (0xBC00000E & 0xFFFF)
/* 4074C 8003FB4C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 40750 8003FB50 AFAE0124 */  sw         $t6, 0x124($sp)
/* 40754 8003FB54 ADB80000 */  sw         $t8, 0x0($t5)
/* 40758 8003FB58 97B9005A */  lhu        $t9, 0x5A($sp)
/* 4075C 8003FB5C 3C0F0103 */  lui        $t7, (0x1030040 >> 16)
/* 40760 8003FB60 35EF0040 */  ori        $t7, $t7, (0x1030040 & 0xFFFF)
/* 40764 8003FB64 ADB90004 */  sw         $t9, 0x4($t5)
/* 40768 8003FB68 8FAA0124 */  lw         $t2, 0x124($sp)
/* 4076C 8003FB6C 3C088014 */  lui        $t0, %hi(D_8013FF90)
/* 40770 8003FB70 2508FF90 */  addiu      $t0, $t0, %lo(D_8013FF90)
/* 40774 8003FB74 254B0008 */  addiu      $t3, $t2, 0x8
/* 40778 8003FB78 AFAB0124 */  sw         $t3, 0x124($sp)
/* 4077C 8003FB7C AD4F0000 */  sw         $t7, 0x0($t2)
/* 40780 8003FB80 8FAC0120 */  lw         $t4, 0x120($sp)
/* 40784 8003FB84 3C198009 */  lui        $t9, %hi(D_8008EE80)
/* 40788 8003FB88 3C188009 */  lui        $t8, %hi(D_8008EF1C)
/* 4078C 8003FB8C AD4C0004 */  sw         $t4, 0x4($t2)
/* 40790 8003FB90 8FAD0120 */  lw         $t5, 0x120($sp)
/* 40794 8003FB94 810F0007 */  lb         $t7, 0x7($t0)
/* 40798 8003FB98 3C0A8009 */  lui        $t2, %hi(D_8008EF28)
/* 4079C 8003FB9C 254AEF28 */  addiu      $t2, $t2, %lo(D_8008EF28)
/* 407A0 8003FBA0 240C0096 */  addiu      $t4, $zero, 0x96
/* 407A4 8003FBA4 2718EF1C */  addiu      $t8, $t8, %lo(D_8008EF1C)
/* 407A8 8003FBA8 2739EE80 */  addiu      $t9, $t9, %lo(D_8008EE80)
/* 407AC 8003FBAC 240B0001 */  addiu      $t3, $zero, 0x1
/* 407B0 8003FBB0 25AE0040 */  addiu      $t6, $t5, 0x40
/* 407B4 8003FBB4 AFAE0120 */  sw         $t6, 0x120($sp)
/* 407B8 8003FBB8 AFAB0020 */  sw         $t3, 0x20($sp)
/* 407BC 8003FBBC AFB90014 */  sw         $t9, 0x14($sp)
/* 407C0 8003FBC0 AFB80010 */  sw         $t8, 0x10($sp)
/* 407C4 8003FBC4 AFAC0028 */  sw         $t4, 0x28($sp)
/* 407C8 8003FBC8 AFAA0018 */  sw         $t2, 0x18($sp)
/* 407CC 8003FBCC AFA0001C */  sw         $zero, 0x1C($sp)
/* 407D0 8003FBD0 81070005 */  lb         $a3, 0x5($t0)
/* 407D4 8003FBD4 27A40124 */  addiu      $a0, $sp, 0x124
/* 407D8 8003FBD8 27A50120 */  addiu      $a1, $sp, 0x120
/* 407DC 8003FBDC 27A6011C */  addiu      $a2, $sp, 0x11C
/* 407E0 8003FBE0 0C0086CE */  jal        func_80021B38
/* 407E4 8003FBE4 AFAF0024 */   sw        $t7, 0x24($sp)
/* 407E8 8003FBE8 8FAD0124 */  lw         $t5, 0x124($sp)
/* 407EC 8003FBEC 3C18ED00 */  lui        $t8, (0xED000020 >> 16)
/* 407F0 8003FBF0 3C19004F */  lui        $t9, (0x4FC39C >> 16)
/* 407F4 8003FBF4 25AE0008 */  addiu      $t6, $t5, 0x8
/* 407F8 8003FBF8 AFAE0124 */  sw         $t6, 0x124($sp)
/* 407FC 8003FBFC 3739C39C */  ori        $t9, $t9, (0x4FC39C & 0xFFFF)
/* 40800 8003FC00 37180020 */  ori        $t8, $t8, (0xED000020 & 0xFFFF)
/* 40804 8003FC04 ADB80000 */  sw         $t8, 0x0($t5)
/* 40808 8003FC08 ADB90004 */  sw         $t9, 0x4($t5)
/* 4080C 8003FC0C 8FAB0128 */  lw         $t3, 0x128($sp)
/* 40810 8003FC10 8FAA0124 */  lw         $t2, 0x124($sp)
/* 40814 8003FC14 AD6A0000 */  sw         $t2, 0x0($t3)
/* 40818 8003FC18 8FAC012C */  lw         $t4, 0x12C($sp)
/* 4081C 8003FC1C 8FAF0120 */  lw         $t7, 0x120($sp)
/* 40820 8003FC20 AD8F0000 */  sw         $t7, 0x0($t4)
/* 40824 8003FC24 8FAE0130 */  lw         $t6, 0x130($sp)
/* 40828 8003FC28 8FAD011C */  lw         $t5, 0x11C($sp)
/* 4082C 8003FC2C ADCD0000 */  sw         $t5, 0x0($t6)
/* 40830 8003FC30 8FBF0034 */  lw         $ra, 0x34($sp)
/* 40834 8003FC34 27BD0128 */  addiu      $sp, $sp, 0x128
/* 40838 8003FC38 03E00008 */  jr         $ra
/* 4083C 8003FC3C 00000000 */   nop
