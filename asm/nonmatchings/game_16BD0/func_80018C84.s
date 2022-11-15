glabel func_80018C84
/* 19884 80018C84 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 19888 80018C88 AFB20020 */  sw         $s2, 0x20($sp)
/* 1988C 80018C8C 3C128014 */  lui        $s2, %hi(D_8013FC88)
/* 19890 80018C90 2652FC88 */  addiu      $s2, $s2, %lo(D_8013FC88)
/* 19894 80018C94 924E0009 */  lbu        $t6, 0x9($s2)
/* 19898 80018C98 AFB00018 */  sw         $s0, 0x18($sp)
/* 1989C 80018C9C AFBF0024 */  sw         $ra, 0x24($sp)
/* 198A0 80018CA0 AFB1001C */  sw         $s1, 0x1C($sp)
/* 198A4 80018CA4 19C0000B */  blez       $t6, .L80018CD4
/* 198A8 80018CA8 00008025 */   or        $s0, $zero, $zero
/* 198AC 80018CAC 3C118014 */  lui        $s1, %hi(D_8013FFB0)
/* 198B0 80018CB0 2631FFB0 */  addiu      $s1, $s1, %lo(D_8013FFB0)
.L80018CB4:
/* 198B4 80018CB4 0C004FD0 */  jal        func_80013F40
/* 198B8 80018CB8 02202025 */   or        $a0, $s1, $zero
/* 198BC 80018CBC 924F0009 */  lbu        $t7, 0x9($s2)
/* 198C0 80018CC0 26100001 */  addiu      $s0, $s0, 0x1
/* 198C4 80018CC4 263120A0 */  addiu      $s1, $s1, 0x20A0
/* 198C8 80018CC8 020F082A */  slt        $at, $s0, $t7
/* 198CC 80018CCC 1420FFF9 */  bnez       $at, .L80018CB4
/* 198D0 80018CD0 00000000 */   nop
.L80018CD4:
/* 198D4 80018CD4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 198D8 80018CD8 8FB00018 */  lw         $s0, 0x18($sp)
/* 198DC 80018CDC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 198E0 80018CE0 8FB20020 */  lw         $s2, 0x20($sp)
/* 198E4 80018CE4 03E00008 */  jr         $ra
/* 198E8 80018CE8 27BD0028 */   addiu     $sp, $sp, 0x28
/* 198EC 80018CEC 00000000 */  nop
