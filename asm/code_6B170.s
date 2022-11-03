.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

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
/* 6B200 8006A600 0C01A014 */  jal        _freePVoice
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
