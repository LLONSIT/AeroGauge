glabel func_800008D0
/* 14D0 800008D0 308E00FF */  andi       $t6, $a0, 0xFF
/* 14D4 800008D4 3C188011 */  lui        $t8, %hi(D_80109BC8)
/* 14D8 800008D8 27189BC8 */  addiu      $t8, $t8, %lo(D_80109BC8)
/* 14DC 800008DC 000E7940 */  sll        $t7, $t6, 5
/* 14E0 800008E0 01F81821 */  addu       $v1, $t7, $t8
/* 14E4 800008E4 90650000 */  lbu        $a1, 0x0($v1)
/* 14E8 800008E8 3C198011 */  lui        $t9, %hi(D_80109C18)
/* 14EC 800008EC 8F399C18 */  lw         $t9, %lo(D_80109C18)($t9)
/* 14F0 800008F0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 14F4 800008F4 000540C0 */  sll        $t0, $a1, 3
/* 14F8 800008F8 AFBF002C */  sw         $ra, 0x2C($sp)
/* 14FC 800008FC AFB00028 */  sw         $s0, 0x28($sp)
/* 1500 80000900 AFA40040 */  sw         $a0, 0x40($sp)
/* 1504 80000904 03281021 */  addu       $v0, $t9, $t0
/* 1508 80000908 8C500008 */  lw         $s0, 0x8($v0)
/* 150C 8000090C 8C470004 */  lw         $a3, 0x4($v0)
/* 1510 80000910 32090001 */  andi       $t1, $s0, 0x1
/* 1514 80000914 51200003 */  beql       $t1, $zero, .L80000924
/* 1518 80000918 8C640010 */   lw        $a0, 0x10($v1)
/* 151C 8000091C 26100001 */  addiu      $s0, $s0, 0x1
/* 1520 80000920 8C640010 */  lw         $a0, 0x10($v1)
.L80000924:
/* 1524 80000924 02002825 */  or         $a1, $s0, $zero
/* 1528 80000928 AFA30030 */  sw         $v1, 0x30($sp)
/* 152C 8000092C 0C019798 */  jal        func_80065E60
/* 1530 80000930 AFA7003C */   sw        $a3, 0x3C($sp)
/* 1534 80000934 8FA30030 */  lw         $v1, 0x30($sp)
/* 1538 80000938 3C0B8011 */  lui        $t3, %hi(D_80109BE8)
/* 153C 8000093C 256B9BE8 */  addiu      $t3, $t3, %lo(D_80109BE8)
/* 1540 80000940 8C6A0010 */  lw         $t2, 0x10($v1)
/* 1544 80000944 8FA7003C */  lw         $a3, 0x3C($sp)
/* 1548 80000948 AFAB0018 */  sw         $t3, 0x18($sp)
/* 154C 8000094C 00002825 */  or         $a1, $zero, $zero
/* 1550 80000950 00003025 */  or         $a2, $zero, $zero
/* 1554 80000954 AFB00014 */  sw         $s0, 0x14($sp)
/* 1558 80000958 8C64001C */  lw         $a0, 0x1C($v1)
/* 155C 8000095C 0C0197C4 */  jal        func_80065F10
/* 1560 80000960 AFAA0010 */   sw        $t2, 0x10($sp)
/* 1564 80000964 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1568 80000968 8FB00028 */  lw         $s0, 0x28($sp)
/* 156C 8000096C 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1570 80000970 03E00008 */  jr         $ra
/* 1574 80000974 00000000 */   nop
