glabel func_8001DF74
/* 1EB74 8001DF74 3C038014 */  lui        $v1, %hi(D_8013FC88)
/* 1EB78 8001DF78 2463FC88 */  addiu      $v1, $v1, %lo(D_8013FC88)
/* 1EB7C 8001DF7C 94620004 */  lhu        $v0, 0x4($v1)
/* 1EB80 8001DF80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EB84 8001DF84 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1EB88 8001DF88 304E1000 */  andi       $t6, $v0, 0x1000
/* 1EB8C 8001DF8C 11C00004 */  beqz       $t6, .L8001DFA0
/* 1EB90 8001DF90 3C0F8014 */   lui       $t7, %hi(D_8013FF90)
/* 1EB94 8001DF94 81EFFF90 */  lb         $t7, %lo(D_8013FF90)($t7)
/* 1EB98 8001DF98 24010006 */  addiu      $at, $zero, 0x6
/* 1EB9C 8001DF9C 15E10015 */  bne        $t7, $at, .L8001DFF4
.L8001DFA0:
/* 1EBA0 8001DFA0 30580010 */   andi      $t8, $v0, 0x10
/* 1EBA4 8001DFA4 57000014 */  bnel       $t8, $zero, .L8001DFF8
/* 1EBA8 8001DFA8 8FBF0014 */   lw        $ra, 0x14($sp)
/* 1EBAC 8001DFAC 10800006 */  beqz       $a0, .L8001DFC8
/* 1EBB0 8001DFB0 24010001 */   addiu     $at, $zero, 0x1
/* 1EBB4 8001DFB4 1481000F */  bne        $a0, $at, .L8001DFF4
/* 1EBB8 8001DFB8 3C198014 */   lui       $t9, %hi(D_8013FF90)
/* 1EBBC 8001DFBC 8339FF90 */  lb         $t9, %lo(D_8013FF90)($t9)
/* 1EBC0 8001DFC0 24010005 */  addiu      $at, $zero, 0x5
/* 1EBC4 8001DFC4 1721000B */  bne        $t9, $at, .L8001DFF4
.L8001DFC8:
/* 1EBC8 8001DFC8 34480010 */   ori       $t0, $v0, 0x10
/* 1EBCC 8001DFCC A4680004 */  sh         $t0, 0x4($v1)
/* 1EBD0 8001DFD0 0C000184 */  jal        func_80000610
/* 1EBD4 8001DFD4 00002025 */   or        $a0, $zero, $zero
/* 1EBD8 8001DFD8 3C098014 */  lui        $t1, %hi(D_8013FF9B)
/* 1EBDC 8001DFDC 8129FF9B */  lb         $t1, %lo(D_8013FF9B)($t1)
/* 1EBE0 8001DFE0 3C048009 */  lui        $a0, %hi(D_8008B820)
/* 1EBE4 8001DFE4 00002825 */  or         $a1, $zero, $zero
/* 1EBE8 8001DFE8 00892021 */  addu       $a0, $a0, $t1
/* 1EBEC 8001DFEC 0C000170 */  jal        func_800005C0
/* 1EBF0 8001DFF0 9084B820 */   lbu       $a0, %lo(D_8008B820)($a0)
.L8001DFF4:
/* 1EBF4 8001DFF4 8FBF0014 */  lw         $ra, 0x14($sp)
.L8001DFF8:
/* 1EBF8 8001DFF8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1EBFC 8001DFFC 03E00008 */  jr         $ra
/* 1EC00 8001E000 00000000 */   nop
