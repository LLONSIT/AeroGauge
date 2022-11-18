glabel func_80001E90
/* 2A90 80001E90 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2A94 80001E94 3C088011 */  lui        $t0, %hi(D_8010C428)
/* 2A98 80001E98 2508C428 */  addiu      $t0, $t0, %lo(D_8010C428)
/* 2A9C 80001E9C AFB10028 */  sw         $s1, 0x28($sp)
/* 2AA0 80001EA0 8D110004 */  lw         $s1, 0x4($t0)
/* 2AA4 80001EA4 AFB00024 */  sw         $s0, 0x24($sp)
/* 2AA8 80001EA8 AFA60050 */  sw         $a2, 0x50($sp)
/* 2AAC 80001EAC AFBF002C */  sw         $ra, 0x2C($sp)
/* 2AB0 80001EB0 00803825 */  or         $a3, $a0, $zero
/* 2AB4 80001EB4 00003025 */  or         $a2, $zero, $zero
/* 2AB8 80001EB8 12200015 */  beqz       $s1, .L80001F10
/* 2ABC 80001EBC 02208025 */   or        $s0, $s1, $zero
/* 2AC0 80001EC0 8E020008 */  lw         $v0, 0x8($s0)
.L80001EC4:
/* 2AC4 80001EC4 00E57021 */  addu       $t6, $a3, $a1
/* 2AC8 80001EC8 00E2082B */  sltu       $at, $a3, $v0
/* 2ACC 80001ECC 14200010 */  bnez       $at, .L80001F10
/* 2AD0 80001ED0 24430800 */   addiu     $v1, $v0, 0x800
/* 2AD4 80001ED4 006E082A */  slt        $at, $v1, $t6
/* 2AD8 80001ED8 1420000A */  bnez       $at, .L80001F04
/* 2ADC 80001EDC 02003025 */   or        $a2, $s0, $zero
/* 2AE0 80001EE0 8E180010 */  lw         $t8, 0x10($s0)
/* 2AE4 80001EE4 3C0F8008 */  lui        $t7, %hi(D_8007F554)
/* 2AE8 80001EE8 8DEFF554 */  lw         $t7, %lo(D_8007F554)($t7)
/* 2AEC 80001EEC 0307C821 */  addu       $t9, $t8, $a3
/* 2AF0 80001EF0 03222023 */  subu       $a0, $t9, $v0
/* 2AF4 80001EF4 0C019FAC */  jal        osVirtualToPhysical
/* 2AF8 80001EF8 AE0F000C */   sw        $t7, 0xC($s0)
/* 2AFC 80001EFC 10000046 */  b          .L80002018
/* 2B00 80001F00 8FBF002C */   lw        $ra, 0x2C($sp)
.L80001F04:
/* 2B04 80001F04 8E100000 */  lw         $s0, 0x0($s0)
/* 2B08 80001F08 5600FFEE */  bnel       $s0, $zero, .L80001EC4
/* 2B0C 80001F0C 8E020008 */   lw        $v0, 0x8($s0)
.L80001F10:
/* 2B10 80001F10 8D100008 */  lw         $s0, 0x8($t0)
/* 2B14 80001F14 16000005 */  bnez       $s0, .L80001F2C
/* 2B18 80001F18 02002025 */   or        $a0, $s0, $zero
/* 2B1C 80001F1C 0C019FAC */  jal        osVirtualToPhysical
/* 2B20 80001F20 02202025 */   or        $a0, $s1, $zero
/* 2B24 80001F24 1000003C */  b          .L80002018
/* 2B28 80001F28 8FBF002C */   lw        $ra, 0x2C($sp)
.L80001F2C:
/* 2B2C 80001F2C 8E0A0000 */  lw         $t2, 0x0($s0)
/* 2B30 80001F30 AFA70048 */  sw         $a3, 0x48($sp)
/* 2B34 80001F34 AFA60030 */  sw         $a2, 0x30($sp)
/* 2B38 80001F38 0C019EBC */  jal        alUnlink
/* 2B3C 80001F3C AD0A0008 */   sw        $t2, 0x8($t0)
/* 2B40 80001F40 8FA60030 */  lw         $a2, 0x30($sp)
/* 2B44 80001F44 3C088011 */  lui        $t0, %hi(D_8010C428)
/* 2B48 80001F48 2508C428 */  addiu      $t0, $t0, %lo(D_8010C428)
/* 2B4C 80001F4C 10C00007 */  beqz       $a2, .L80001F6C
/* 2B50 80001F50 8FA70048 */   lw        $a3, 0x48($sp)
/* 2B54 80001F54 02002025 */  or         $a0, $s0, $zero
/* 2B58 80001F58 00C02825 */  or         $a1, $a2, $zero
/* 2B5C 80001F5C 0C019EC8 */  jal        alLink
/* 2B60 80001F60 AFA70048 */   sw        $a3, 0x48($sp)
/* 2B64 80001F64 1000000C */  b          .L80001F98
/* 2B68 80001F68 8FA70048 */   lw        $a3, 0x48($sp)
.L80001F6C:
/* 2B6C 80001F6C 8D110004 */  lw         $s1, 0x4($t0)
/* 2B70 80001F70 52200007 */  beql       $s1, $zero, .L80001F90
/* 2B74 80001F74 AD100004 */   sw        $s0, 0x4($t0)
/* 2B78 80001F78 AD100004 */  sw         $s0, 0x4($t0)
/* 2B7C 80001F7C AE110000 */  sw         $s1, 0x0($s0)
/* 2B80 80001F80 AE000004 */  sw         $zero, 0x4($s0)
/* 2B84 80001F84 10000004 */  b          .L80001F98
/* 2B88 80001F88 AE300004 */   sw        $s0, 0x4($s1)
/* 2B8C 80001F8C AD100004 */  sw         $s0, 0x4($t0)
.L80001F90:
/* 2B90 80001F90 AE000000 */  sw         $zero, 0x0($s0)
/* 2B94 80001F94 AE000004 */  sw         $zero, 0x4($s0)
.L80001F98:
/* 2B98 80001F98 30F10001 */  andi       $s1, $a3, 0x1
/* 2B9C 80001F9C 00F13823 */  subu       $a3, $a3, $s1
/* 2BA0 80001FA0 AE070008 */  sw         $a3, 0x8($s0)
/* 2BA4 80001FA4 3C0B8008 */  lui        $t3, %hi(D_8007F554)
/* 2BA8 80001FA8 8D6BF554 */  lw         $t3, %lo(D_8007F554)($t3)
/* 2BAC 80001FAC 3C098008 */  lui        $t1, %hi(D_8007F558)
/* 2BB0 80001FB0 2529F558 */  addiu      $t1, $t1, %lo(D_8007F558)
/* 2BB4 80001FB4 AE0B000C */  sw         $t3, 0xC($s0)
/* 2BB8 80001FB8 8D230000 */  lw         $v1, 0x0($t1)
/* 2BBC 80001FBC 8E080010 */  lw         $t0, 0x10($s0)
/* 2BC0 80001FC0 3C0D8011 */  lui        $t5, %hi(D_8010C768)
/* 2BC4 80001FC4 00036080 */  sll        $t4, $v1, 2
/* 2BC8 80001FC8 3C0F8011 */  lui        $t7, %hi(D_8010C948)
/* 2BCC 80001FCC 01836023 */  subu       $t4, $t4, $v1
/* 2BD0 80001FD0 000C60C0 */  sll        $t4, $t4, 3
/* 2BD4 80001FD4 25EFC948 */  addiu      $t7, $t7, %lo(D_8010C948)
/* 2BD8 80001FD8 25ADC768 */  addiu      $t5, $t5, %lo(D_8010C768)
/* 2BDC 80001FDC 240E0800 */  addiu      $t6, $zero, 0x800
/* 2BE0 80001FE0 24780001 */  addiu      $t8, $v1, 0x1
/* 2BE4 80001FE4 AD380000 */  sw         $t8, 0x0($t1)
/* 2BE8 80001FE8 AFAE0014 */  sw         $t6, 0x14($sp)
/* 2BEC 80001FEC 018D2021 */  addu       $a0, $t4, $t5
/* 2BF0 80001FF0 AFAF0018 */  sw         $t7, 0x18($sp)
/* 2BF4 80001FF4 24050001 */  addiu      $a1, $zero, 0x1
/* 2BF8 80001FF8 00003025 */  or         $a2, $zero, $zero
/* 2BFC 80001FFC AFA80010 */  sw         $t0, 0x10($sp)
/* 2C00 80002000 0C0197C4 */  jal        func_80065F10
/* 2C04 80002004 AFA80044 */   sw        $t0, 0x44($sp)
/* 2C08 80002008 0C019FAC */  jal        osVirtualToPhysical
/* 2C0C 8000200C 8FA40044 */   lw        $a0, 0x44($sp)
/* 2C10 80002010 00511021 */  addu       $v0, $v0, $s1
/* 2C14 80002014 8FBF002C */  lw         $ra, 0x2C($sp)
.L80002018:
/* 2C18 80002018 8FB00024 */  lw         $s0, 0x24($sp)
/* 2C1C 8000201C 8FB10028 */  lw         $s1, 0x28($sp)
/* 2C20 80002020 03E00008 */  jr         $ra
/* 2C24 80002024 27BD0048 */   addiu     $sp, $sp, 0x48
