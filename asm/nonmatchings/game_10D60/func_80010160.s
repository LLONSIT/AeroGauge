glabel func_80010160
/* 10D60 80010160 3C028014 */  lui        $v0, %hi(D_8013FBE8)
/* 10D64 80010164 2442FBE8 */  addiu      $v0, $v0, %lo(D_8013FBE8)
/* 10D68 80010168 240E0014 */  addiu      $t6, $zero, 0x14
/* 10D6C 8001016C 240F0046 */  addiu      $t7, $zero, 0x46
/* 10D70 80010170 A44E0000 */  sh         $t6, 0x0($v0)
/* 10D74 80010174 A44F0002 */  sh         $t7, 0x2($v0)
/* 10D78 80010178 3C188014 */  lui        $t8, %hi(D_8013FF9B)
/* 10D7C 8001017C 8318FF9B */  lb         $t8, %lo(D_8013FF9B)($t8)
/* 10D80 80010180 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10D84 80010184 AFB40024 */  sw         $s4, 0x24($sp)
/* 10D88 80010188 3C148014 */  lui        $s4, %hi(D_8013FC88)
/* 10D8C 8001018C 2694FC88 */  addiu      $s4, $s4, %lo(D_8013FC88)
/* 10D90 80010190 0018C880 */  sll        $t9, $t8, 2
/* 10D94 80010194 928A0009 */  lbu        $t2, 0x9($s4)
/* 10D98 80010198 3C088008 */  lui        $t0, %hi(D_80082C38)
/* 10D9C 8001019C 0338C823 */  subu       $t9, $t9, $t8
/* 10DA0 800101A0 0019C880 */  sll        $t9, $t9, 2
/* 10DA4 800101A4 25082C38 */  addiu      $t0, $t0, %lo(D_80082C38)
/* 10DA8 800101A8 AFB00014 */  sw         $s0, 0x14($sp)
/* 10DAC 800101AC 03284821 */  addu       $t1, $t9, $t0
/* 10DB0 800101B0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 10DB4 800101B4 AFB50028 */  sw         $s5, 0x28($sp)
/* 10DB8 800101B8 AFB30020 */  sw         $s3, 0x20($sp)
/* 10DBC 800101BC AFB2001C */  sw         $s2, 0x1C($sp)
/* 10DC0 800101C0 AFB10018 */  sw         $s1, 0x18($sp)
/* 10DC4 800101C4 AC490004 */  sw         $t1, 0x4($v0)
/* 10DC8 800101C8 19400017 */  blez       $t2, .L80010228
/* 10DCC 800101CC 00008025 */   or        $s0, $zero, $zero
/* 10DD0 800101D0 3C118014 */  lui        $s1, %hi(D_8013FBE8)
/* 10DD4 800101D4 3C128014 */  lui        $s2, %hi(D_8013FBF4)
/* 10DD8 800101D8 3C138014 */  lui        $s3, %hi(D_8013FFB0)
/* 10DDC 800101DC 3C158008 */  lui        $s5, %hi(D_80082CA4)
/* 10DE0 800101E0 26B52CA4 */  addiu      $s5, $s5, %lo(D_80082CA4)
/* 10DE4 800101E4 2673FFB0 */  addiu      $s3, $s3, %lo(D_8013FFB0)
/* 10DE8 800101E8 2652FBF4 */  addiu      $s2, $s2, %lo(D_8013FBF4)
/* 10DEC 800101EC 2631FBE8 */  addiu      $s1, $s1, %lo(D_8013FBE8)
.L800101F0:
/* 10DF0 800101F0 02002025 */  or         $a0, $s0, $zero
/* 10DF4 800101F4 0C00421C */  jal        func_80010870
/* 10DF8 800101F8 02002825 */   or        $a1, $s0, $zero
/* 10DFC 800101FC 02402025 */  or         $a0, $s2, $zero
/* 10E00 80010200 0C0044DB */  jal        func_8001136C
/* 10E04 80010204 82650009 */   lb        $a1, 0x9($s3)
/* 10E08 80010208 928B0009 */  lbu        $t3, 0x9($s4)
/* 10E0C 8001020C 26100001 */  addiu      $s0, $s0, 0x1
/* 10E10 80010210 2631000C */  addiu      $s1, $s1, 0xC
/* 10E14 80010214 020B082A */  slt        $at, $s0, $t3
/* 10E18 80010218 2652000C */  addiu      $s2, $s2, 0xC
/* 10E1C 8001021C 267320A0 */  addiu      $s3, $s3, 0x20A0
/* 10E20 80010220 1420FFF3 */  bnez       $at, .L800101F0
/* 10E24 80010224 AE350004 */   sw        $s5, 0x4($s1)
.L80010228:
/* 10E28 80010228 8FBF002C */  lw         $ra, 0x2C($sp)
/* 10E2C 8001022C 8FB00014 */  lw         $s0, 0x14($sp)
/* 10E30 80010230 8FB10018 */  lw         $s1, 0x18($sp)
/* 10E34 80010234 8FB2001C */  lw         $s2, 0x1C($sp)
/* 10E38 80010238 8FB30020 */  lw         $s3, 0x20($sp)
/* 10E3C 8001023C 8FB40024 */  lw         $s4, 0x24($sp)
/* 10E40 80010240 8FB50028 */  lw         $s5, 0x28($sp)
/* 10E44 80010244 03E00008 */  jr         $ra
/* 10E48 80010248 27BD0030 */   addiu     $sp, $sp, 0x30