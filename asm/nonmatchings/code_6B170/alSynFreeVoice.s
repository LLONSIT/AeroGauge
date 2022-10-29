glabel alSynFreeVoice
/* 6B170 8006A570 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6B174 8006A574 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B178 8006A578 8CA60008 */  lw         $a2, 0x8($a1)
/* 6B17C 8006A57C 00804025 */  or         $t0, $a0, $zero
/* 6B180 8006A580 00A03825 */  or         $a3, $a1, $zero
/* 6B184 8006A584 50C00023 */  beql       $a2, $zero, .L8006A614
/* 6B188 8006A588 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B18C 8006A58C 8CCE00D8 */  lw         $t6, 0xD8($a2)
/* 6B190 8006A590 51C0001A */  beql       $t6, $zero, .L8006A5FC
/* 6B194 8006A594 01002025 */   or        $a0, $t0, $zero
/* 6B198 8006A598 AFA5001C */  sw         $a1, 0x1C($sp)
/* 6B19C 8006A59C 0C01A040 */  jal        __allocParam
/* 6B1A0 8006A5A0 AFA40018 */   sw        $a0, 0x18($sp)
/* 6B1A4 8006A5A4 8FA7001C */  lw         $a3, 0x1C($sp)
/* 6B1A8 8006A5A8 8FA80018 */  lw         $t0, 0x18($sp)
/* 6B1AC 8006A5AC 10400018 */  beqz       $v0, .L8006A610
/* 6B1B0 8006A5B0 00403025 */   or        $a2, $v0, $zero
/* 6B1B4 8006A5B4 8CF80008 */  lw         $t8, 0x8($a3)
/* 6B1B8 8006A5B8 8D0F001C */  lw         $t7, 0x1C($t0)
/* 6B1BC 8006A5BC 24050003 */  addiu      $a1, $zero, 0x3
/* 6B1C0 8006A5C0 8F1900D8 */  lw         $t9, 0xD8($t8)
/* 6B1C4 8006A5C4 A4400008 */  sh         $zero, 0x8($v0)
/* 6B1C8 8006A5C8 01F94821 */  addu       $t1, $t7, $t9
/* 6B1CC 8006A5CC AC490004 */  sw         $t1, 0x4($v0)
/* 6B1D0 8006A5D0 8CEA0008 */  lw         $t2, 0x8($a3)
/* 6B1D4 8006A5D4 AC4A000C */  sw         $t2, 0xC($v0)
/* 6B1D8 8006A5D8 8CEB0008 */  lw         $t3, 0x8($a3)
/* 6B1DC 8006A5DC 8D64000C */  lw         $a0, 0xC($t3)
/* 6B1E0 8006A5E0 AFA7001C */  sw         $a3, 0x1C($sp)
/* 6B1E4 8006A5E4 8C990008 */  lw         $t9, 0x8($a0)
/* 6B1E8 8006A5E8 0320F809 */  jalr       $t9
/* 6B1EC 8006A5EC 00000000 */   nop
/* 6B1F0 8006A5F0 10000006 */  b          .L8006A60C
/* 6B1F4 8006A5F4 8FA7001C */   lw        $a3, 0x1C($sp)
/* 6B1F8 8006A5F8 01002025 */  or         $a0, $t0, $zero
.L8006A5FC:
/* 6B1FC 8006A5FC 00C02825 */  or         $a1, $a2, $zero
/* 6B200 8006A600 0C01A014 */  jal        func_80068050
/* 6B204 8006A604 AFA7001C */   sw        $a3, 0x1C($sp)
/* 6B208 8006A608 8FA7001C */  lw         $a3, 0x1C($sp)
.L8006A60C:
/* 6B20C 8006A60C ACE00008 */  sw         $zero, 0x8($a3)
.L8006A610:
/* 6B210 8006A610 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006A614:
/* 6B214 8006A614 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6B218 8006A618 03E00008 */  jr         $ra
/* 6B21C 8006A61C 00000000 */   nop
