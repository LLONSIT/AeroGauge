glabel func_80040010
/* 40C10 80040010 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 40C14 80040014 AFBF0014 */  sw         $ra, 0x14($sp)
/* 40C18 80040018 8C8E0000 */  lw         $t6, 0x0($a0)
/* 40C1C 8004001C 3C0B8014 */  lui        $t3, %hi(D_8013FF95)
/* 40C20 80040020 916BFF95 */  lbu        $t3, %lo(D_8013FF95)($t3)
/* 40C24 80040024 240F0030 */  addiu      $t7, $zero, 0x30
/* 40C28 80040028 24180035 */  addiu      $t8, $zero, 0x35
/* 40C2C 8004002C 24190030 */  addiu      $t9, $zero, 0x30
/* 40C30 80040030 24080035 */  addiu      $t0, $zero, 0x35
/* 40C34 80040034 2409002B */  addiu      $t1, $zero, 0x2B
/* 40C38 80040038 240A007A */  addiu      $t2, $zero, 0x7A
/* 40C3C 8004003C 2D61000A */  sltiu      $at, $t3, 0xA
/* 40C40 80040040 00803025 */  or         $a2, $a0, $zero
/* 40C44 80040044 A7AA0022 */  sh         $t2, 0x22($sp)
/* 40C48 80040048 A7A90020 */  sh         $t1, 0x20($sp)
/* 40C4C 8004004C A7A8001E */  sh         $t0, 0x1E($sp)
/* 40C50 80040050 A7B9001C */  sh         $t9, 0x1C($sp)
/* 40C54 80040054 A7B8001A */  sh         $t8, 0x1A($sp)
/* 40C58 80040058 A7AF0018 */  sh         $t7, 0x18($sp)
/* 40C5C 8004005C AFA00028 */  sw         $zero, 0x28($sp)
/* 40C60 80040060 AFA00024 */  sw         $zero, 0x24($sp)
/* 40C64 80040064 10200029 */  beqz       $at, .L8004010C
/* 40C68 80040068 AFAE002C */   sw        $t6, 0x2C($sp)
/* 40C6C 8004006C 000B5880 */  sll        $t3, $t3, 2
/* 40C70 80040070 3C018009 */  lui        $at, %hi(jtbl_800976AC_main)
/* 40C74 80040074 002B0821 */  addu       $at, $at, $t3
/* 40C78 80040078 8C2B76AC */  lw         $t3, %lo(jtbl_800976AC_main)($at)
/* 40C7C 8004007C 01600008 */  jr         $t3
/* 40C80 80040080 00000000 */   nop
glabel L80040084
/* 40C84 80040084 3C0C803A */  lui        $t4, %hi(D_803A4478)
/* 40C88 80040088 3C0D803A */  lui        $t5, %hi(D_803A4978)
/* 40C8C 8004008C 258C4478 */  addiu      $t4, $t4, %lo(D_803A4478)
/* 40C90 80040090 25AD4978 */  addiu      $t5, $t5, %lo(D_803A4978)
/* 40C94 80040094 AFAC0024 */  sw         $t4, 0x24($sp)
/* 40C98 80040098 1000001C */  b          .L8004010C
/* 40C9C 8004009C AFAD0028 */   sw        $t5, 0x28($sp)
glabel L800400A0
/* 40CA0 800400A0 3C0E803A */  lui        $t6, %hi(D_803A3A28)
/* 40CA4 800400A4 3C0F803A */  lui        $t7, %hi(D_803A3F28)
/* 40CA8 800400A8 25CE3A28 */  addiu      $t6, $t6, %lo(D_803A3A28)
/* 40CAC 800400AC 25EF3F28 */  addiu      $t7, $t7, %lo(D_803A3F28)
/* 40CB0 800400B0 AFAE0024 */  sw         $t6, 0x24($sp)
/* 40CB4 800400B4 10000015 */  b          .L8004010C
/* 40CB8 800400B8 AFAF0028 */   sw        $t7, 0x28($sp)
glabel L800400BC
/* 40CBC 800400BC 3C18803A */  lui        $t8, %hi(D_803A3F50)
/* 40CC0 800400C0 3C19803A */  lui        $t9, %hi(D_803A4450)
/* 40CC4 800400C4 27183F50 */  addiu      $t8, $t8, %lo(D_803A3F50)
/* 40CC8 800400C8 27394450 */  addiu      $t9, $t9, %lo(D_803A4450)
/* 40CCC 800400CC AFB80024 */  sw         $t8, 0x24($sp)
/* 40CD0 800400D0 1000000E */  b          .L8004010C
/* 40CD4 800400D4 AFB90028 */   sw        $t9, 0x28($sp)
glabel L800400D8
/* 40CD8 800400D8 3C08803A */  lui        $t0, %hi(D_803A49A0)
/* 40CDC 800400DC 3C09803A */  lui        $t1, %hi(D_803A4EA0)
/* 40CE0 800400E0 250849A0 */  addiu      $t0, $t0, %lo(D_803A49A0)
/* 40CE4 800400E4 25294EA0 */  addiu      $t1, $t1, %lo(D_803A4EA0)
/* 40CE8 800400E8 AFA80024 */  sw         $t0, 0x24($sp)
/* 40CEC 800400EC 10000007 */  b          .L8004010C
/* 40CF0 800400F0 AFA90028 */   sw        $t1, 0x28($sp)
glabel L800400F4
/* 40CF4 800400F4 3C0A803A */  lui        $t2, %hi(D_803A4EC8)
/* 40CF8 800400F8 3C0B803A */  lui        $t3, %hi(D_803A53C8)
/* 40CFC 800400FC 254A4EC8 */  addiu      $t2, $t2, %lo(D_803A4EC8)
/* 40D00 80040100 256B53C8 */  addiu      $t3, $t3, %lo(D_803A53C8)
/* 40D04 80040104 AFAA0024 */  sw         $t2, 0x24($sp)
/* 40D08 80040108 AFAB0028 */  sw         $t3, 0x28($sp)
.L8004010C:
/* 40D0C 8004010C 27A4002C */  addiu      $a0, $sp, 0x2C
/* 40D10 80040110 27A50018 */  addiu      $a1, $sp, 0x18
/* 40D14 80040114 0C0150A4 */  jal        func_80054290
/* 40D18 80040118 AFA60030 */   sw        $a2, 0x30($sp)
/* 40D1C 8004011C 8FA60030 */  lw         $a2, 0x30($sp)
/* 40D20 80040120 8FAC002C */  lw         $t4, 0x2C($sp)
/* 40D24 80040124 ACCC0000 */  sw         $t4, 0x0($a2)
/* 40D28 80040128 8FBF0014 */  lw         $ra, 0x14($sp)
/* 40D2C 8004012C 27BD0030 */  addiu      $sp, $sp, 0x30
/* 40D30 80040130 03E00008 */  jr         $ra
/* 40D34 80040134 00000000 */   nop
