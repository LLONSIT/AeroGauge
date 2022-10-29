glabel alSynSetVol
/* 6B220 8006A620 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6B224 8006A624 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B228 8006A628 AFA50024 */  sw         $a1, 0x24($sp)
/* 6B22C 8006A62C AFA60028 */  sw         $a2, 0x28($sp)
/* 6B230 8006A630 AFA7002C */  sw         $a3, 0x2C($sp)
/* 6B234 8006A634 8CAF0008 */  lw         $t7, 0x8($a1)
/* 6B238 8006A638 51E0001D */  beql       $t7, $zero, .L8006A6B0
/* 6B23C 8006A63C 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B240 8006A640 0C01A040 */  jal        __allocParam
/* 6B244 8006A644 AFA40020 */   sw        $a0, 0x20($sp)
/* 6B248 8006A648 10400018 */  beqz       $v0, .L8006A6AC
/* 6B24C 8006A64C 8FA40020 */   lw        $a0, 0x20($sp)
/* 6B250 8006A650 8FB90024 */  lw         $t9, 0x24($sp)
/* 6B254 8006A654 8C98001C */  lw         $t8, 0x1C($a0)
/* 6B258 8006A658 240B000B */  addiu      $t3, $zero, 0xB
/* 6B25C 8006A65C 8F280008 */  lw         $t0, 0x8($t9)
/* 6B260 8006A660 8D0900D8 */  lw         $t1, 0xD8($t0)
/* 6B264 8006A664 A44B0008 */  sh         $t3, 0x8($v0)
/* 6B268 8006A668 03095021 */  addu       $t2, $t8, $t1
/* 6B26C 8006A66C AC4A0004 */  sw         $t2, 0x4($v0)
/* 6B270 8006A670 87AC002A */  lh         $t4, 0x2A($sp)
/* 6B274 8006A674 AC4C000C */  sw         $t4, 0xC($v0)
/* 6B278 8006A678 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6B27C 8006A67C 0C019FFE */  jal        _timeToSamples
/* 6B280 8006A680 8FA5002C */   lw        $a1, 0x2C($sp)
/* 6B284 8006A684 8FA6001C */  lw         $a2, 0x1C($sp)
/* 6B288 8006A688 24050003 */  addiu      $a1, $zero, 0x3
/* 6B28C 8006A68C ACC20010 */  sw         $v0, 0x10($a2)
/* 6B290 8006A690 ACC00000 */  sw         $zero, 0x0($a2)
/* 6B294 8006A694 8FAD0024 */  lw         $t5, 0x24($sp)
/* 6B298 8006A698 8DAE0008 */  lw         $t6, 0x8($t5)
/* 6B29C 8006A69C 8DC4000C */  lw         $a0, 0xC($t6)
/* 6B2A0 8006A6A0 8C990008 */  lw         $t9, 0x8($a0)
/* 6B2A4 8006A6A4 0320F809 */  jalr       $t9
/* 6B2A8 8006A6A8 00000000 */   nop
.L8006A6AC:
/* 6B2AC 8006A6AC 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006A6B0:
/* 6B2B0 8006A6B0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 6B2B4 8006A6B4 03E00008 */  jr         $ra
/* 6B2B8 8006A6B8 00000000 */   nop
/* 6B2BC 8006A6BC 00000000 */  nop
