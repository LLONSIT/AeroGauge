glabel func_800177A0
/* 183A0 800177A0 3C048017 */  lui        $a0, %hi(D_8016C2B0)
/* 183A4 800177A4 2484C2B0 */  addiu      $a0, $a0, %lo(D_8016C2B0)
/* 183A8 800177A8 A0800000 */  sb         $zero, 0x0($a0)
/* 183AC 800177AC A0800001 */  sb         $zero, 0x1($a0)
/* 183B0 800177B0 A0800002 */  sb         $zero, 0x2($a0)
/* 183B4 800177B4 A0800003 */  sb         $zero, 0x3($a0)
/* 183B8 800177B8 3C018017 */  lui        $at, %hi(D_8016C2B4)
/* 183BC 800177BC AC20C2B4 */  sw         $zero, %lo(D_8016C2B4)($at)
/* 183C0 800177C0 44800000 */  mtc1       $zero, $f0
/* 183C4 800177C4 3C018017 */  lui        $at, %hi(D_8016C2D0)
/* 183C8 800177C8 AC20C2D0 */  sw         $zero, %lo(D_8016C2D0)($at)
/* 183CC 800177CC 3C018017 */  lui        $at, %hi(D_8016C2F4)
/* 183D0 800177D0 E420C2F4 */  swc1       $f0, %lo(D_8016C2F4)($at)
/* 183D4 800177D4 3C018017 */  lui        $at, %hi(D_8016C310)
/* 183D8 800177D8 E420C310 */  swc1       $f0, %lo(D_8016C310)($at)
/* 183DC 800177DC 3C018017 */  lui        $at, %hi(D_8016C2B8)
/* 183E0 800177E0 AC20C2B8 */  sw         $zero, %lo(D_8016C2B8)($at)
/* 183E4 800177E4 3C018017 */  lui        $at, %hi(D_8016C2D4)
/* 183E8 800177E8 AC20C2D4 */  sw         $zero, %lo(D_8016C2D4)($at)
/* 183EC 800177EC 3C018017 */  lui        $at, %hi(D_8016C2F8)
/* 183F0 800177F0 E420C2F8 */  swc1       $f0, %lo(D_8016C2F8)($at)
/* 183F4 800177F4 3C018017 */  lui        $at, %hi(D_8016C314)
/* 183F8 800177F8 E420C314 */  swc1       $f0, %lo(D_8016C314)($at)
/* 183FC 800177FC 3C018017 */  lui        $at, %hi(D_8016C2BC)
/* 18400 80017800 AC20C2BC */  sw         $zero, %lo(D_8016C2BC)($at)
/* 18404 80017804 3C018017 */  lui        $at, %hi(D_8016C2D8)
/* 18408 80017808 AC20C2D8 */  sw         $zero, %lo(D_8016C2D8)($at)
/* 1840C 8001780C 3C018017 */  lui        $at, %hi(D_8016C2FC)
/* 18410 80017810 24020003 */  addiu      $v0, $zero, 0x3
/* 18414 80017814 E420C2FC */  swc1       $f0, %lo(D_8016C2FC)($at)
/* 18418 80017818 3C018017 */  lui        $at, %hi(D_8016C318)
/* 1841C 8001781C 00027080 */  sll        $t6, $v0, 2
/* 18420 80017820 008E1821 */  addu       $v1, $a0, $t6
/* 18424 80017824 E420C318 */  swc1       $f0, %lo(D_8016C318)($at)
/* 18428 80017828 AC60002C */  sw         $zero, 0x2C($v1)
/* 1842C 8001782C AC600010 */  sw         $zero, 0x10($v1)
/* 18430 80017830 AC600028 */  sw         $zero, 0x28($v1)
/* 18434 80017834 AC60000C */  sw         $zero, 0xC($v1)
/* 18438 80017838 AC600024 */  sw         $zero, 0x24($v1)
/* 1843C 8001783C AC600008 */  sw         $zero, 0x8($v1)
/* 18440 80017840 AC600004 */  sw         $zero, 0x4($v1)
/* 18444 80017844 AC600020 */  sw         $zero, 0x20($v1)
/* 18448 80017848 E460006C */  swc1       $f0, 0x6C($v1)
/* 1844C 8001784C E4600050 */  swc1       $f0, 0x50($v1)
/* 18450 80017850 E4600068 */  swc1       $f0, 0x68($v1)
/* 18454 80017854 E460004C */  swc1       $f0, 0x4C($v1)
/* 18458 80017858 E4600064 */  swc1       $f0, 0x64($v1)
/* 1845C 8001785C E4600048 */  swc1       $f0, 0x48($v1)
/* 18460 80017860 E4600044 */  swc1       $f0, 0x44($v1)
/* 18464 80017864 E4600060 */  swc1       $f0, 0x60($v1)
/* 18468 80017868 AC80003C */  sw         $zero, 0x3C($a0)
/* 1846C 8001786C AC800040 */  sw         $zero, 0x40($a0)
/* 18470 80017870 E480007C */  swc1       $f0, 0x7C($a0)
/* 18474 80017874 03E00008 */  jr         $ra
/* 18478 80017878 E4800080 */   swc1      $f0, 0x80($a0)