glabel osAiSetNextBuffer
/* 68B30 80067F30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 68B34 80067F34 3C0F8009 */  lui        $t7, %hi(D_80092E50)
/* 68B38 80067F38 91EF2E50 */  lbu        $t7, %lo(D_80092E50)($t7)
/* 68B3C 80067F3C AFA40020 */  sw         $a0, 0x20($sp)
/* 68B40 80067F40 8FAE0020 */  lw         $t6, 0x20($sp)
/* 68B44 80067F44 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68B48 80067F48 AFA50024 */  sw         $a1, 0x24($sp)
/* 68B4C 80067F4C 11E00003 */  beqz       $t7, .L80067F5C
/* 68B50 80067F50 AFAE001C */   sw        $t6, 0x1C($sp)
/* 68B54 80067F54 25D8E000 */  addiu      $t8, $t6, -0x2000
/* 68B58 80067F58 AFB8001C */  sw         $t8, 0x1C($sp)
.L80067F5C:
/* 68B5C 80067F5C 8FB90020 */  lw         $t9, 0x20($sp)
/* 68B60 80067F60 8FA80024 */  lw         $t0, 0x24($sp)
/* 68B64 80067F64 03284821 */  addu       $t1, $t9, $t0
/* 68B68 80067F68 312A1FFF */  andi       $t2, $t1, 0x1FFF
/* 68B6C 80067F6C 15400005 */  bnez       $t2, .L80067F84
/* 68B70 80067F70 00000000 */   nop
/* 68B74 80067F74 240B0001 */  addiu      $t3, $zero, 0x1
/* 68B78 80067F78 3C018009 */  lui        $at, %hi(D_80092E50)
/* 68B7C 80067F7C 10000003 */  b          .L80067F8C
/* 68B80 80067F80 A02B2E50 */   sb        $t3, %lo(D_80092E50)($at)
.L80067F84:
/* 68B84 80067F84 3C018009 */  lui        $at, %hi(D_80092E50)
/* 68B88 80067F88 A0202E50 */  sb         $zero, %lo(D_80092E50)($at)
.L80067F8C:
/* 68B8C 80067F8C 0C01C4EC */  jal        __osAiDeviceBusy
/* 68B90 80067F90 00000000 */   nop
/* 68B94 80067F94 10400003 */  beqz       $v0, .L80067FA4
/* 68B98 80067F98 00000000 */   nop
/* 68B9C 80067F9C 10000009 */  b          .L80067FC4
/* 68BA0 80067FA0 2402FFFF */   addiu     $v0, $zero, -0x1
.L80067FA4:
/* 68BA4 80067FA4 0C019FAC */  jal        osVirtualToPhysical
/* 68BA8 80067FA8 8FA4001C */   lw        $a0, 0x1C($sp)
/* 68BAC 80067FAC 3C0CA450 */  lui        $t4, %hi(D_A4500000)
/* 68BB0 80067FB0 AD820000 */  sw         $v0, %lo(D_A4500000)($t4)
/* 68BB4 80067FB4 8FAD0024 */  lw         $t5, 0x24($sp)
/* 68BB8 80067FB8 3C0FA450 */  lui        $t7, %hi(D_A4500004)
/* 68BBC 80067FBC 00001025 */  or         $v0, $zero, $zero
/* 68BC0 80067FC0 ADED0004 */  sw         $t5, %lo(D_A4500004)($t7)
.L80067FC4:
/* 68BC4 80067FC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68BC8 80067FC8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 68BCC 80067FCC 03E00008 */  jr         $ra
/* 68BD0 80067FD0 00000000 */   nop
/* 68BD4 80067FD4 00000000 */  nop
/* 68BD8 80067FD8 00000000 */  nop
/* 68BDC 80067FDC 00000000 */  nop
