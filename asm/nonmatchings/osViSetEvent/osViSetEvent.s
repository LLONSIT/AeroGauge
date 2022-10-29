glabel osViSetEvent
/* 707C0 8006FBC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 707C4 8006FBC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 707C8 8006FBC8 AFA40028 */  sw         $a0, 0x28($sp)
/* 707CC 8006FBCC AFA5002C */  sw         $a1, 0x2C($sp)
/* 707D0 8006FBD0 AFA60030 */  sw         $a2, 0x30($sp)
/* 707D4 8006FBD4 0C01C218 */  jal        __osDisableInt
/* 707D8 8006FBD8 AFB00018 */   sw        $s0, 0x18($sp)
/* 707DC 8006FBDC 3C0F8009 */  lui        $t7, %hi(__osViNext)
/* 707E0 8006FBE0 8DEF4C54 */  lw         $t7, %lo(__osViNext)($t7)
/* 707E4 8006FBE4 8FAE0028 */  lw         $t6, 0x28($sp)
/* 707E8 8006FBE8 3C198009 */  lui        $t9, %hi(__osViNext)
/* 707EC 8006FBEC 3C098009 */  lui        $t1, %hi(__osViNext)
/* 707F0 8006FBF0 ADEE0010 */  sw         $t6, 0x10($t7)
/* 707F4 8006FBF4 8F394C54 */  lw         $t9, %lo(__osViNext)($t9)
/* 707F8 8006FBF8 8FB8002C */  lw         $t8, 0x2C($sp)
/* 707FC 8006FBFC 00408025 */  or         $s0, $v0, $zero
/* 70800 8006FC00 02002025 */  or         $a0, $s0, $zero
/* 70804 8006FC04 AF380014 */  sw         $t8, 0x14($t9)
/* 70808 8006FC08 8D294C54 */  lw         $t1, %lo(__osViNext)($t1)
/* 7080C 8006FC0C 8FA80030 */  lw         $t0, 0x30($sp)
/* 70810 8006FC10 0C01C220 */  jal        __osRestoreInt
/* 70814 8006FC14 A5280002 */   sh        $t0, 0x2($t1)
/* 70818 8006FC18 8FBF001C */  lw         $ra, 0x1C($sp)
/* 7081C 8006FC1C 8FB00018 */  lw         $s0, 0x18($sp)
/* 70820 8006FC20 27BD0028 */  addiu      $sp, $sp, 0x28
/* 70824 8006FC24 03E00008 */  jr         $ra
/* 70828 8006FC28 00000000 */   nop
/* 7082C 8006FC2C 00000000 */  nop
