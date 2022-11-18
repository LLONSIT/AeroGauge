glabel func_80073F38
/* 74B38 80073F38 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74B3C 80073F3C AFBF0014 */  sw         $ra, 0x14($sp)
/* 74B40 80073F40 00803825 */  or         $a3, $a0, $zero
/* 74B44 80073F44 AC850000 */  sw         $a1, 0x0($a0)
/* 74B48 80073F48 AC860010 */  sw         $a2, 0x10($a0)
/* 74B4C 80073F4C A480001A */  sh         $zero, 0x1A($a0)
/* 74B50 80073F50 AC80000C */  sw         $zero, 0xC($a0)
/* 74B54 80073F54 0C01CFAE */  jal        func_80073EB8
/* 74B58 80073F58 AC850008 */   sw        $a1, 0x8($a0)
/* 74B5C 80073F5C 3C014D54 */  lui        $at, (0x4D546864 >> 16)
/* 74B60 80073F60 34216864 */  ori        $at, $at, (0x4D546864 & 0xFFFF)
/* 74B64 80073F64 54410027 */  bnel       $v0, $at, .L80074004
/* 74B68 80073F68 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74B6C 80073F6C 0C01CFAE */  jal        func_80073EB8
/* 74B70 80073F70 00E02025 */   or        $a0, $a3, $zero
/* 74B74 80073F74 0C01CFC2 */  jal        func_80073F08
/* 74B78 80073F78 00E02025 */   or        $a0, $a3, $zero
/* 74B7C 80073F7C 54400021 */  bnel       $v0, $zero, .L80074004
/* 74B80 80073F80 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74B84 80073F84 0C01CFC2 */  jal        func_80073F08
/* 74B88 80073F88 00E02025 */   or        $a0, $a3, $zero
/* 74B8C 80073F8C 24010001 */  addiu      $at, $zero, 0x1
/* 74B90 80073F90 5441001C */  bnel       $v0, $at, .L80074004
/* 74B94 80073F94 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74B98 80073F98 0C01CFC2 */  jal        func_80073F08
/* 74B9C 80073F9C 00E02025 */   or        $a0, $a3, $zero
/* 74BA0 80073FA0 A4E20018 */  sh         $v0, 0x18($a3)
/* 74BA4 80073FA4 84E30018 */  lh         $v1, 0x18($a3)
/* 74BA8 80073FA8 306E8000 */  andi       $t6, $v1, 0x8000
/* 74BAC 80073FAC 55C00015 */  bnel       $t6, $zero, .L80074004
/* 74BB0 80073FB0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74BB4 80073FB4 44833000 */  mtc1       $v1, $f6
/* 74BB8 80073FB8 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 74BBC 80073FBC 44812800 */  mtc1       $at, $f5
/* 74BC0 80073FC0 46803220 */  cvt.s.w    $f8, $f6
/* 74BC4 80073FC4 44802000 */  mtc1       $zero, $f4
/* 74BC8 80073FC8 00E02025 */  or         $a0, $a3, $zero
/* 74BCC 80073FCC 460042A1 */  cvt.d.s    $f10, $f8
/* 74BD0 80073FD0 462A2183 */  div.d      $f6, $f4, $f10
/* 74BD4 80073FD4 46203220 */  cvt.s.d    $f8, $f6
/* 74BD8 80073FD8 0C01CFAE */  jal        func_80073EB8
/* 74BDC 80073FDC E4E80014 */   swc1      $f8, 0x14($a3)
/* 74BE0 80073FE0 3C014D54 */  lui        $at, (0x4D54726B >> 16)
/* 74BE4 80073FE4 3421726B */  ori        $at, $at, (0x4D54726B & 0xFFFF)
/* 74BE8 80073FE8 54410006 */  bnel       $v0, $at, .L80074004
/* 74BEC 80073FEC 8FBF0014 */   lw        $ra, 0x14($sp)
/* 74BF0 80073FF0 0C01CFAE */  jal        func_80073EB8
/* 74BF4 80073FF4 00E02025 */   or        $a0, $a3, $zero
/* 74BF8 80073FF8 8CEF0008 */  lw         $t7, 0x8($a3)
/* 74BFC 80073FFC ACEF0004 */  sw         $t7, 0x4($a3)
/* 74C00 80074000 8FBF0014 */  lw         $ra, 0x14($sp)
.L80074004:
/* 74C04 80074004 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74C08 80074008 03E00008 */  jr         $ra
/* 74C0C 8007400C 00000000 */   nop
