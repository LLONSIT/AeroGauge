glabel func_8001A9D4
/* 1B5D4 8001A9D4 AFA40000 */  sw         $a0, 0x0($sp)
/* 1B5D8 8001A9D8 AFA50004 */  sw         $a1, 0x4($sp)
/* 1B5DC 8001A9DC AFA60008 */  sw         $a2, 0x8($sp)
/* 1B5E0 8001A9E0 AFA7000C */  sw         $a3, 0xC($sp)
/* 1B5E4 8001A9E4 8C880000 */  lw         $t0, 0x0($a0)
/* 1B5E8 8001A9E8 00A07025 */  or         $t6, $a1, $zero
/* 1B5EC 8001A9EC 01C02825 */  or         $a1, $t6, $zero
/* 1B5F0 8001A9F0 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 1B5F4 8001A9F4 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
/* 1B5F8 8001A9F8 AD0D0000 */  sw         $t5, 0x0($t0)
/* 1B5FC 8001A9FC 25090008 */  addiu      $t1, $t0, 0x8
/* 1B600 8001AA00 00E0C025 */  or         $t8, $a3, $zero
/* 1B604 8001AA04 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
/* 1B608 8001AA08 AD000004 */  sw         $zero, 0x4($t0)
/* 1B60C 8001AA0C 03003825 */  or         $a3, $t8, $zero
/* 1B610 8001AA10 00C07825 */  or         $t7, $a2, $zero
/* 1B614 8001AA14 AD2E0000 */  sw         $t6, 0x0($t1)
/* 1B618 8001AA18 25220008 */  addiu      $v0, $t1, 0x8
/* 1B61C 8001AA1C 01E03025 */  or         $a2, $t7, $zero
/* 1B620 8001AA20 AD200004 */  sw         $zero, 0x4($t1)
/* 1B624 8001AA24 3C180800 */  lui        $t8, (0x8000800 >> 16)
/* 1B628 8001AA28 37180800 */  ori        $t8, $t8, (0x8000800 & 0xFFFF)
/* 1B62C 8001AA2C 3C0FBB00 */  lui        $t7, (0xBB000000 >> 16)
/* 1B630 8001AA30 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1B634 8001AA34 AC580004 */  sw         $t8, 0x4($v0)
/* 1B638 8001AA38 244B0008 */  addiu      $t3, $v0, 0x8
/* 1B63C 8001AA3C 3C19BA00 */  lui        $t9, (0xBA000E02 >> 16)
/* 1B640 8001AA40 37390E02 */  ori        $t9, $t9, (0xBA000E02 & 0xFFFF)
/* 1B644 8001AA44 25630008 */  addiu      $v1, $t3, 0x8
/* 1B648 8001AA48 AD790000 */  sw         $t9, 0x0($t3)
/* 1B64C 8001AA4C AD600004 */  sw         $zero, 0x4($t3)
/* 1B650 8001AA50 3C0CBA00 */  lui        $t4, (0xBA001301 >> 16)
/* 1B654 8001AA54 358C1301 */  ori        $t4, $t4, (0xBA001301 & 0xFFFF)
/* 1B658 8001AA58 24680008 */  addiu      $t0, $v1, 0x8
/* 1B65C 8001AA5C AC6C0000 */  sw         $t4, 0x0($v1)
/* 1B660 8001AA60 AC600004 */  sw         $zero, 0x4($v1)
/* 1B664 8001AA64 3C0E0F0A */  lui        $t6, (0xF0A4000 >> 16)
/* 1B668 8001AA68 3C0DB900 */  lui        $t5, (0xB900031D >> 16)
/* 1B66C 8001AA6C 35AD031D */  ori        $t5, $t5, (0xB900031D & 0xFFFF)
/* 1B670 8001AA70 35CE4000 */  ori        $t6, $t6, (0xF0A4000 & 0xFFFF)
/* 1B674 8001AA74 AD0E0004 */  sw         $t6, 0x4($t0)
/* 1B678 8001AA78 AD0D0000 */  sw         $t5, 0x0($t0)
/* 1B67C 8001AA7C 25090008 */  addiu      $t1, $t0, 0x8
/* 1B680 8001AA80 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
/* 1B684 8001AA84 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
/* 1B688 8001AA88 3C18FFFD */  lui        $t8, (0xFFFDF6FB >> 16)
/* 1B68C 8001AA8C 3718F6FB */  ori        $t8, $t8, (0xFFFDF6FB & 0xFFFF)
/* 1B690 8001AA90 AD2F0000 */  sw         $t7, 0x0($t1)
/* 1B694 8001AA94 252A0008 */  addiu      $t2, $t1, 0x8
/* 1B698 8001AA98 AD380004 */  sw         $t8, 0x4($t1)
/* 1B69C 8001AA9C 3C19B900 */  lui        $t9, (0xB9000002 >> 16)
/* 1B6A0 8001AAA0 37390002 */  ori        $t9, $t9, (0xB9000002 & 0xFFFF)
/* 1B6A4 8001AAA4 25420008 */  addiu      $v0, $t2, 0x8
/* 1B6A8 8001AAA8 3C0CBA00 */  lui        $t4, (0xBA000402 >> 16)
/* 1B6AC 8001AAAC AD590000 */  sw         $t9, 0x0($t2)
/* 1B6B0 8001AAB0 AD400004 */  sw         $zero, 0x4($t2)
/* 1B6B4 8001AAB4 358C0402 */  ori        $t4, $t4, (0xBA000402 & 0xFFFF)
/* 1B6B8 8001AAB8 AC4C0000 */  sw         $t4, 0x0($v0)
/* 1B6BC 8001AABC 240D0030 */  addiu      $t5, $zero, 0x30
/* 1B6C0 8001AAC0 AC4D0004 */  sw         $t5, 0x4($v0)
/* 1B6C4 8001AAC4 24440008 */  addiu      $a0, $v0, 0x8
/* 1B6C8 8001AAC8 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
/* 1B6CC 8001AACC AC8E0000 */  sw         $t6, 0x0($a0)
/* 1B6D0 8001AAD0 3C0F8009 */  lui        $t7, %hi(D_8008B714)
/* 1B6D4 8001AAD4 91F8B714 */  lbu        $t8, %lo(D_8008B714)($t7)
/* 1B6D8 8001AAD8 3C0C8009 */  lui        $t4, %hi(D_8008B718)
/* 1B6DC 8001AADC 918DB718 */  lbu        $t5, %lo(D_8008B718)($t4)
/* 1B6E0 8001AAE0 0018CE00 */  sll        $t9, $t8, 24
/* 1B6E4 8001AAE4 3C188009 */  lui        $t8, %hi(D_8008B71C)
/* 1B6E8 8001AAE8 000D7400 */  sll        $t6, $t5, 16
/* 1B6EC 8001AAEC 930CB71C */  lbu        $t4, %lo(D_8008B71C)($t8)
/* 1B6F0 8001AAF0 032E7825 */  or         $t7, $t9, $t6
/* 1B6F4 8001AAF4 3C0E8009 */  lui        $t6, %hi(D_8008B720)
/* 1B6F8 8001AAF8 91D8B720 */  lbu        $t8, %lo(D_8008B720)($t6)
/* 1B6FC 8001AAFC 000C6A00 */  sll        $t5, $t4, 8
/* 1B700 8001AB00 01EDC825 */  or         $t9, $t7, $t5
/* 1B704 8001AB04 03386025 */  or         $t4, $t9, $t8
/* 1B708 8001AB08 AC8C0004 */  sw         $t4, 0x4($a0)
/* 1B70C 8001AB0C 87AC0012 */  lh         $t4, 0x12($sp)
/* 1B710 8001AB10 00A77821 */  addu       $t7, $a1, $a3
/* 1B714 8001AB14 000F6880 */  sll        $t5, $t7, 2
/* 1B718 8001AB18 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 1B71C 8001AB1C 000ECB00 */  sll        $t9, $t6, 12
/* 1B720 8001AB20 00CC7821 */  addu       $t7, $a2, $t4
/* 1B724 8001AB24 000F6880 */  sll        $t5, $t7, 2
/* 1B728 8001AB28 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 1B72C 8001AB2C 0321C025 */  or         $t8, $t9, $at
/* 1B730 8001AB30 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 1B734 8001AB34 030EC825 */  or         $t9, $t8, $t6
/* 1B738 8001AB38 00056080 */  sll        $t4, $a1, 2
/* 1B73C 8001AB3C 24830008 */  addiu      $v1, $a0, 0x8
/* 1B740 8001AB40 318F0FFF */  andi       $t7, $t4, 0xFFF
/* 1B744 8001AB44 0006C080 */  sll        $t8, $a2, 2
/* 1B748 8001AB48 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 1B74C 8001AB4C 000F6B00 */  sll        $t5, $t7, 12
/* 1B750 8001AB50 AC790000 */  sw         $t9, 0x0($v1)
/* 1B754 8001AB54 01AEC825 */  or         $t9, $t5, $t6
/* 1B758 8001AB58 246A0008 */  addiu      $t2, $v1, 0x8
/* 1B75C 8001AB5C AC790004 */  sw         $t9, 0x4($v1)
/* 1B760 8001AB60 3C0CB400 */  lui        $t4, (0xB4000000 >> 16)
/* 1B764 8001AB64 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1B768 8001AB68 AD400004 */  sw         $zero, 0x4($t2)
/* 1B76C 8001AB6C 254B0008 */  addiu      $t3, $t2, 0x8
/* 1B770 8001AB70 3C180400 */  lui        $t8, (0x4000400 >> 16)
/* 1B774 8001AB74 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
/* 1B778 8001AB78 3C0FB300 */  lui        $t7, (0xB3000000 >> 16)
/* 1B77C 8001AB7C AD6F0000 */  sw         $t7, 0x0($t3)
/* 1B780 8001AB80 AD780004 */  sw         $t8, 0x4($t3)
/* 1B784 8001AB84 8FAD0000 */  lw         $t5, 0x0($sp)
/* 1B788 8001AB88 25620008 */  addiu      $v0, $t3, 0x8
/* 1B78C 8001AB8C 03E00008 */  jr         $ra
/* 1B790 8001AB90 ADA20000 */   sw        $v0, 0x0($t5)
