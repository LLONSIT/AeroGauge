glabel func_8001D7F0
/* 1E3F0 8001D7F0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1E3F4 8001D7F4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1E3F8 8001D7F8 0C01B200 */  jal        osGetTime
/* 1E3FC 8001D7FC 00000000 */   nop
/* 1E400 8001D800 3C0E8014 */  lui        $t6, %hi(D_8013FF88)
/* 1E404 8001D804 8DCEFF88 */  lw         $t6, %lo(D_8013FF88)($t6)
/* 1E408 8001D808 24010001 */  addiu      $at, $zero, 0x1
/* 1E40C 8001D80C AFA20018 */  sw         $v0, 0x18($sp)
/* 1E410 8001D810 15C10007 */  bne        $t6, $at, .L8001D830
/* 1E414 8001D814 AFA3001C */   sw        $v1, 0x1C($sp)
/* 1E418 8001D818 24180000 */  addiu      $t8, $zero, 0x0
/* 1E41C 8001D81C 24190000 */  addiu      $t9, $zero, 0x0
/* 1E420 8001D820 3C018017 */  lui        $at, %hi(D_8016C4E0)
/* 1E424 8001D824 AC38C4E0 */  sw         $t8, %lo(D_8016C4E0)($at)
/* 1E428 8001D828 1000000C */  b          .L8001D85C
/* 1E42C 8001D82C AC39C4E4 */   sw        $t9, %lo(D_8016C4E4)($at)
.L8001D830:
/* 1E430 8001D830 3C088017 */  lui        $t0, %hi(D_8016C4F0)
/* 1E434 8001D834 3C098017 */  lui        $t1, %hi(D_8016C4F4)
/* 1E438 8001D838 8D29C4F4 */  lw         $t1, %lo(D_8016C4F4)($t1)
/* 1E43C 8001D83C 8D08C4F0 */  lw         $t0, %lo(D_8016C4F0)($t0)
/* 1E440 8001D840 0069082B */  sltu       $at, $v1, $t1
/* 1E444 8001D844 00485023 */  subu       $t2, $v0, $t0
/* 1E448 8001D848 01415023 */  subu       $t2, $t2, $at
/* 1E44C 8001D84C 3C018017 */  lui        $at, %hi(D_8016C4E4)
/* 1E450 8001D850 00695823 */  subu       $t3, $v1, $t1
/* 1E454 8001D854 AC2BC4E4 */  sw         $t3, %lo(D_8016C4E4)($at)
/* 1E458 8001D858 AC2AC4E0 */  sw         $t2, %lo(D_8016C4E0)($at)
.L8001D85C:
/* 1E45C 8001D85C 3C048017 */  lui        $a0, %hi(D_8016C4E0)
/* 1E460 8001D860 3C058017 */  lui        $a1, %hi(D_8016C4E4)
/* 1E464 8001D864 8CA5C4E4 */  lw         $a1, %lo(D_8016C4E4)($a1)
/* 1E468 8001D868 8C84C4E0 */  lw         $a0, %lo(D_8016C4E0)($a0)
/* 1E46C 8001D86C 24060000 */  addiu      $a2, $zero, 0x0
/* 1E470 8001D870 0C01B1AA */  jal        func_8006C6A8
/* 1E474 8001D874 24070040 */   addiu     $a3, $zero, 0x40
/* 1E478 8001D878 00402025 */  or         $a0, $v0, $zero
/* 1E47C 8001D87C 00602825 */  or         $a1, $v1, $zero
/* 1E480 8001D880 24060000 */  addiu      $a2, $zero, 0x0
/* 1E484 8001D884 0C01B16A */  jal        func_8006C5A8
/* 1E488 8001D888 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 1E48C 8001D88C 00402025 */  or         $a0, $v0, $zero
/* 1E490 8001D890 0C01B28D */  jal        func_8006CA34
/* 1E494 8001D894 00602825 */   or        $a1, $v1, $zero
/* 1E498 8001D898 3C018009 */  lui        $at, %hi(D_80096EE0)
/* 1E49C 8001D89C D4246EE0 */  ldc1       $f4, %lo(D_80096EE0)($at)
/* 1E4A0 8001D8A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1E4A4 8001D8A4 3C018017 */  lui        $at, %hi(D_8016C4E8)
/* 1E4A8 8001D8A8 46240183 */  div.d      $f6, $f0, $f4
/* 1E4AC 8001D8AC 8FAC0018 */  lw         $t4, 0x18($sp)
/* 1E4B0 8001D8B0 8FAD001C */  lw         $t5, 0x1C($sp)
/* 1E4B4 8001D8B4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1E4B8 8001D8B8 46203220 */  cvt.s.d    $f8, $f6
/* 1E4BC 8001D8BC E428C4E8 */  swc1       $f8, %lo(D_8016C4E8)($at)
/* 1E4C0 8001D8C0 3C018017 */  lui        $at, %hi(D_8016C4F0)
/* 1E4C4 8001D8C4 AC2CC4F0 */  sw         $t4, %lo(D_8016C4F0)($at)
/* 1E4C8 8001D8C8 03E00008 */  jr         $ra
/* 1E4CC 8001D8CC AC2DC4F4 */   sw        $t5, %lo(D_8016C4F4)($at)
