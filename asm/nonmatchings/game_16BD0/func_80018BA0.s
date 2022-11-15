glabel func_80018BA0
/* 197A0 80018BA0 3C0E8014 */  lui        $t6, %hi(D_8013FF90)
/* 197A4 80018BA4 91CEFF90 */  lbu        $t6, %lo(D_8013FF90)($t6)
/* 197A8 80018BA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 197AC 80018BAC AFBF0014 */  sw         $ra, 0x14($sp)
/* 197B0 80018BB0 2DC1000C */  sltiu      $at, $t6, 0xC
/* 197B4 80018BB4 1020001E */  beqz       $at, .L80018C30
/* 197B8 80018BB8 000E7080 */   sll       $t6, $t6, 2
/* 197BC 80018BBC 3C018009 */  lui        $at, %hi(jtbl_80096B14_main)
/* 197C0 80018BC0 002E0821 */  addu       $at, $at, $t6
/* 197C4 80018BC4 8C2E6B14 */  lw         $t6, %lo(jtbl_80096B14_main)($at)
/* 197C8 80018BC8 01C00008 */  jr         $t6
/* 197CC 80018BCC 00000000 */   nop
glabel L80018BD0
/* 197D0 80018BD0 0C004093 */  jal        func_8001024C
/* 197D4 80018BD4 00002025 */   or        $a0, $zero, $zero
/* 197D8 80018BD8 3C038014 */  lui        $v1, %hi(D_8013FC80)
/* 197DC 80018BDC 2463FC80 */  addiu      $v1, $v1, %lo(D_8013FC80)
/* 197E0 80018BE0 AC620000 */  sw         $v0, 0x0($v1)
/* 197E4 80018BE4 3C018014 */  lui        $at, %hi(D_8013FC84)
/* 197E8 80018BE8 AC20FC84 */  sw         $zero, %lo(D_8013FC84)($at)
/* 197EC 80018BEC 8C650000 */  lw         $a1, 0x0($v1)
/* 197F0 80018BF0 3C04801A */  lui        $a0, %hi(D_8019DDF0)
/* 197F4 80018BF4 2484DDF0 */  addiu      $a0, $a0, %lo(D_8019DDF0)
/* 197F8 80018BF8 24060001 */  addiu      $a2, $zero, 0x1
/* 197FC 80018BFC 0C0081A1 */  jal        func_80020684
/* 19800 80018C00 24A50044 */   addiu     $a1, $a1, 0x44
/* 19804 80018C04 1000000B */  b          .L80018C34
/* 19808 80018C08 8FBF0014 */   lw        $ra, 0x14($sp)
glabel L80018C0C
/* 1980C 80018C0C 0C004093 */  jal        func_8001024C
/* 19810 80018C10 24040001 */   addiu     $a0, $zero, 0x1
/* 19814 80018C14 3C038014 */  lui        $v1, %hi(D_8013FC80)
/* 19818 80018C18 2463FC80 */  addiu      $v1, $v1, %lo(D_8013FC80)
/* 1981C 80018C1C AC620000 */  sw         $v0, 0x0($v1)
/* 19820 80018C20 0C004093 */  jal        func_8001024C
/* 19824 80018C24 24040002 */   addiu     $a0, $zero, 0x2
/* 19828 80018C28 3C018014 */  lui        $at, %hi(D_8013FC84)
/* 1982C 80018C2C AC22FC84 */  sw         $v0, %lo(D_8013FC84)($at)
.L80018C30:
/* 19830 80018C30 8FBF0014 */  lw         $ra, 0x14($sp)
.L80018C34:
/* 19834 80018C34 27BD0018 */  addiu      $sp, $sp, 0x18
/* 19838 80018C38 03E00008 */  jr         $ra
/* 1983C 80018C3C 00000000 */   nop
