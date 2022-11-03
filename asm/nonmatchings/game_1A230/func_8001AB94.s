glabel func_8001AB94
/* 1B794 8001AB94 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1B798 8001AB98 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1B79C 8001AB9C AFA40040 */  sw         $a0, 0x40($sp)
/* 1B7A0 8001ABA0 AFA50044 */  sw         $a1, 0x44($sp)
/* 1B7A4 8001ABA4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1B7A8 8001ABA8 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
/* 1B7AC 8001ABAC 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 1B7B0 8001ABB0 AFAF003C */  sw         $t7, 0x3C($sp)
/* 1B7B4 8001ABB4 8CB90010 */  lw         $t9, 0x10($a1)
/* 1B7B8 8001ABB8 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
/* 1B7BC 8001ABBC 3C180050 */  lui        $t8, (0x504240 >> 16)
/* 1B7C0 8001ABC0 13200021 */  beqz       $t9, .L8001AC48
/* 1B7C4 8001ABC4 25EA0008 */   addiu     $t2, $t7, 0x8
/* 1B7C8 8001ABC8 AFAA003C */  sw         $t2, 0x3C($sp)
/* 1B7CC 8001ABCC ADE00004 */  sw         $zero, 0x4($t7)
/* 1B7D0 8001ABD0 ADEB0000 */  sw         $t3, 0x0($t7)
/* 1B7D4 8001ABD4 8FAC003C */  lw         $t4, 0x3C($sp)
/* 1B7D8 8001ABD8 37184240 */  ori        $t8, $t8, (0x504240 & 0xFFFF)
/* 1B7DC 8001ABDC 3C0BFF2F */  lui        $t3, (0xFF2FFFFF >> 16)
/* 1B7E0 8001ABE0 258D0008 */  addiu      $t5, $t4, 0x8
/* 1B7E4 8001ABE4 AFAD003C */  sw         $t5, 0x3C($sp)
/* 1B7E8 8001ABE8 AD980004 */  sw         $t8, 0x4($t4)
/* 1B7EC 8001ABEC AD8E0000 */  sw         $t6, 0x0($t4)
/* 1B7F0 8001ABF0 8FB9003C */  lw         $t9, 0x3C($sp)
/* 1B7F4 8001ABF4 3C0AFC11 */  lui        $t2, (0xFC119623 >> 16)
/* 1B7F8 8001ABF8 354A9623 */  ori        $t2, $t2, (0xFC119623 & 0xFFFF)
/* 1B7FC 8001ABFC 272F0008 */  addiu      $t7, $t9, 0x8
/* 1B800 8001AC00 AFAF003C */  sw         $t7, 0x3C($sp)
/* 1B804 8001AC04 356BFFFF */  ori        $t3, $t3, (0xFF2FFFFF & 0xFFFF)
/* 1B808 8001AC08 AF2B0004 */  sw         $t3, 0x4($t9)
/* 1B80C 8001AC0C AF2A0000 */  sw         $t2, 0x0($t9)
/* 1B810 8001AC10 8FAC003C */  lw         $t4, 0x3C($sp)
/* 1B814 8001AC14 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
/* 1B818 8001AC18 2418FFC8 */  addiu      $t8, $zero, -0x38
/* 1B81C 8001AC1C 258D0008 */  addiu      $t5, $t4, 0x8
/* 1B820 8001AC20 AFAD003C */  sw         $t5, 0x3C($sp)
/* 1B824 8001AC24 AD980004 */  sw         $t8, 0x4($t4)
/* 1B828 8001AC28 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1B82C 8001AC2C 8FB90044 */  lw         $t9, 0x44($sp)
/* 1B830 8001AC30 27A4003C */  addiu      $a0, $sp, 0x3C
/* 1B834 8001AC34 97250000 */  lhu        $a1, 0x0($t9)
/* 1B838 8001AC38 97260002 */  lhu        $a2, 0x2($t9)
/* 1B83C 8001AC3C 8F270010 */  lw         $a3, 0x10($t9)
/* 1B840 8001AC40 0C006743 */  jal        func_80019D0C
/* 1B844 8001AC44 AFA00010 */   sw        $zero, 0x10($sp)
.L8001AC48:
/* 1B848 8001AC48 8FAF003C */  lw         $t7, 0x3C($sp)
/* 1B84C 8001AC4C 8FAA0040 */  lw         $t2, 0x40($sp)
/* 1B850 8001AC50 AD4F0000 */  sw         $t7, 0x0($t2)
/* 1B854 8001AC54 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1B858 8001AC58 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1B85C 8001AC5C 03E00008 */  jr         $ra
/* 1B860 8001AC60 00000000 */   nop
