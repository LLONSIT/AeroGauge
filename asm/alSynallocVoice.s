.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel _allocatePVoice
/* 6B350 8006A750 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6B354 8006A754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6B358 8006A758 AFA60030 */  sw         $a2, 0x30($sp)
/* 6B35C 8006A75C 8C870014 */  lw         $a3, 0x14($a0)
/* 6B360 8006A760 00067400 */  sll        $t6, $a2, 16
/* 6B364 8006A764 000E3403 */  sra        $a2, $t6, 16
/* 6B368 8006A768 00804025 */  or         $t0, $a0, $zero
/* 6B36C 8006A76C 10E0000D */  beqz       $a3, .L8006A7A4
/* 6B370 8006A770 00001825 */   or        $v1, $zero, $zero
/* 6B374 8006A774 ACA70000 */  sw         $a3, 0x0($a1)
/* 6B378 8006A778 AFA80028 */  sw         $t0, 0x28($sp)
/* 6B37C 8006A77C AFA70024 */  sw         $a3, 0x24($sp)
/* 6B380 8006A780 AFA0001C */  sw         $zero, 0x1C($sp)
/* 6B384 8006A784 0C019EBC */  jal        alUnlink
/* 6B388 8006A788 00E02025 */   or        $a0, $a3, $zero
/* 6B38C 8006A78C 8FA80028 */  lw         $t0, 0x28($sp)
/* 6B390 8006A790 8FA40024 */  lw         $a0, 0x24($sp)
/* 6B394 8006A794 0C019EC8 */  jal        alLink
/* 6B398 8006A798 2505000C */   addiu     $a1, $t0, 0xC
/* 6B39C 8006A79C 10000021 */  b          .L8006A824
/* 6B3A0 8006A7A0 8FA3001C */   lw        $v1, 0x1C($sp)
.L8006A7A4:
/* 6B3A4 8006A7A4 8D070004 */  lw         $a3, 0x4($t0)
/* 6B3A8 8006A7A8 10E0000C */  beqz       $a3, .L8006A7DC
/* 6B3AC 8006A7AC 00E02025 */   or        $a0, $a3, $zero
/* 6B3B0 8006A7B0 ACA70000 */  sw         $a3, 0x0($a1)
/* 6B3B4 8006A7B4 AFA80028 */  sw         $t0, 0x28($sp)
/* 6B3B8 8006A7B8 AFA70024 */  sw         $a3, 0x24($sp)
/* 6B3BC 8006A7BC 0C019EBC */  jal        alUnlink
/* 6B3C0 8006A7C0 AFA3001C */   sw        $v1, 0x1C($sp)
/* 6B3C4 8006A7C4 8FA80028 */  lw         $t0, 0x28($sp)
/* 6B3C8 8006A7C8 8FA40024 */  lw         $a0, 0x24($sp)
/* 6B3CC 8006A7CC 0C019EC8 */  jal        alLink
/* 6B3D0 8006A7D0 2505000C */   addiu     $a1, $t0, 0xC
/* 6B3D4 8006A7D4 10000013 */  b          .L8006A824
/* 6B3D8 8006A7D8 8FA3001C */   lw        $v1, 0x1C($sp)
.L8006A7DC:
/* 6B3DC 8006A7DC 8D07000C */  lw         $a3, 0xC($t0)
/* 6B3E0 8006A7E0 50E00011 */  beql       $a3, $zero, .L8006A828
/* 6B3E4 8006A7E4 8FBF0014 */   lw        $ra, 0x14($sp)
/* 6B3E8 8006A7E8 8CF80008 */  lw         $t8, 0x8($a3)
.L8006A7EC:
/* 6B3EC 8006A7EC 87190016 */  lh         $t9, 0x16($t8)
/* 6B3F0 8006A7F0 00D9082A */  slt        $at, $a2, $t9
/* 6B3F4 8006A7F4 54200009 */  bnel       $at, $zero, .L8006A81C
/* 6B3F8 8006A7F8 8CE70000 */   lw        $a3, 0x0($a3)
/* 6B3FC 8006A7FC 8CE900D8 */  lw         $t1, 0xD8($a3)
/* 6B400 8006A800 55200006 */  bnel       $t1, $zero, .L8006A81C
/* 6B404 8006A804 8CE70000 */   lw        $a3, 0x0($a3)
/* 6B408 8006A808 ACA70000 */  sw         $a3, 0x0($a1)
/* 6B40C 8006A80C 8CEA0008 */  lw         $t2, 0x8($a3)
/* 6B410 8006A810 24030001 */  addiu      $v1, $zero, 0x1
/* 6B414 8006A814 85460016 */  lh         $a2, 0x16($t2)
/* 6B418 8006A818 8CE70000 */  lw         $a3, 0x0($a3)
.L8006A81C:
/* 6B41C 8006A81C 54E0FFF3 */  bnel       $a3, $zero, .L8006A7EC
/* 6B420 8006A820 8CF80008 */   lw        $t8, 0x8($a3)
.L8006A824:
/* 6B424 8006A824 8FBF0014 */  lw         $ra, 0x14($sp)
.L8006A828:
/* 6B428 8006A828 27BD0028 */  addiu      $sp, $sp, 0x28
/* 6B42C 8006A82C 00601025 */  or         $v0, $v1, $zero
/* 6B430 8006A830 03E00008 */  jr         $ra
/* 6B434 8006A834 00000000 */   nop

glabel alSynAllocVoice
/* 6B438 8006A838 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6B43C 8006A83C AFBF001C */  sw         $ra, 0x1C($sp)
/* 6B440 8006A840 AFB00018 */  sw         $s0, 0x18($sp)
/* 6B444 8006A844 AFA40030 */  sw         $a0, 0x30($sp)
/* 6B448 8006A848 AFA0002C */  sw         $zero, 0x2C($sp)
/* 6B44C 8006A84C 84CE0000 */  lh         $t6, 0x0($a2)
/* 6B450 8006A850 00A08025 */  or         $s0, $a1, $zero
/* 6B454 8006A854 A4AE0016 */  sh         $t6, 0x16($a1)
/* 6B458 8006A858 90CF0004 */  lbu        $t7, 0x4($a2)
/* 6B45C 8006A85C ACA0000C */  sw         $zero, 0xC($a1)
/* 6B460 8006A860 A4AF001A */  sh         $t7, 0x1A($a1)
/* 6B464 8006A864 84D80002 */  lh         $t8, 0x2($a2)
/* 6B468 8006A868 A4A00014 */  sh         $zero, 0x14($a1)
/* 6B46C 8006A86C ACA00008 */  sw         $zero, 0x8($a1)
/* 6B470 8006A870 A4B80018 */  sh         $t8, 0x18($a1)
/* 6B474 8006A874 84C60000 */  lh         $a2, 0x0($a2)
/* 6B478 8006A878 8FA40030 */  lw         $a0, 0x30($sp)
/* 6B47C 8006A87C 0C01A9D4 */  jal        _allocatePVoice
/* 6B480 8006A880 27A5002C */   addiu     $a1, $sp, 0x2C
/* 6B484 8006A884 8FB9002C */  lw         $t9, 0x2C($sp)
/* 6B488 8006A888 53200035 */  beql       $t9, $zero, .L8006A960
/* 6B48C 8006A88C 8FA2002C */   lw        $v0, 0x2C($sp)
/* 6B490 8006A890 1040002C */  beqz       $v0, .L8006A944
/* 6B494 8006A894 8F24000C */   lw        $a0, 0xC($t9)
/* 6B498 8006A898 24080200 */  addiu      $t0, $zero, 0x200
/* 6B49C 8006A89C AF2800D8 */  sw         $t0, 0xD8($t9)
/* 6B4A0 8006A8A0 8FA9002C */  lw         $t1, 0x2C($sp)
/* 6B4A4 8006A8A4 8D2A0008 */  lw         $t2, 0x8($t1)
/* 6B4A8 8006A8A8 AD400008 */  sw         $zero, 0x8($t2)
/* 6B4AC 8006A8AC 0C01A040 */  jal        __allocParam
/* 6B4B0 8006A8B0 AFA40028 */   sw        $a0, 0x28($sp)
/* 6B4B4 8006A8B4 8FAB0030 */  lw         $t3, 0x30($sp)
/* 6B4B8 8006A8B8 8FA40028 */  lw         $a0, 0x28($sp)
/* 6B4BC 8006A8BC 240D000B */  addiu      $t5, $zero, 0xB
/* 6B4C0 8006A8C0 8D6C001C */  lw         $t4, 0x1C($t3)
/* 6B4C4 8006A8C4 A44D0008 */  sh         $t5, 0x8($v0)
/* 6B4C8 8006A8C8 AC40000C */  sw         $zero, 0xC($v0)
/* 6B4CC 8006A8CC AC4C0004 */  sw         $t4, 0x4($v0)
/* 6B4D0 8006A8D0 8FAE002C */  lw         $t6, 0x2C($sp)
/* 6B4D4 8006A8D4 24050003 */  addiu      $a1, $zero, 0x3
/* 6B4D8 8006A8D8 00403025 */  or         $a2, $v0, $zero
/* 6B4DC 8006A8DC 8DCF00D8 */  lw         $t7, 0xD8($t6)
/* 6B4E0 8006A8E0 25F8FFC0 */  addiu      $t8, $t7, -0x40
/* 6B4E4 8006A8E4 AC580010 */  sw         $t8, 0x10($v0)
/* 6B4E8 8006A8E8 8C990008 */  lw         $t9, 0x8($a0)
/* 6B4EC 8006A8EC 0320F809 */  jalr       $t9
/* 6B4F0 8006A8F0 00000000 */   nop
/* 6B4F4 8006A8F4 0C01A040 */  jal        __allocParam
/* 6B4F8 8006A8F8 00000000 */   nop
/* 6B4FC 8006A8FC 8FA40028 */  lw         $a0, 0x28($sp)
/* 6B500 8006A900 10400012 */  beqz       $v0, .L8006A94C
/* 6B504 8006A904 00403025 */   or        $a2, $v0, $zero
/* 6B508 8006A908 8FA80030 */  lw         $t0, 0x30($sp)
/* 6B50C 8006A90C 8FAA002C */  lw         $t2, 0x2C($sp)
/* 6B510 8006A910 240D000F */  addiu      $t5, $zero, 0xF
/* 6B514 8006A914 8D09001C */  lw         $t1, 0x1C($t0)
/* 6B518 8006A918 8D4B00D8 */  lw         $t3, 0xD8($t2)
/* 6B51C 8006A91C A44D0008 */  sh         $t5, 0x8($v0)
/* 6B520 8006A920 AC400000 */  sw         $zero, 0x0($v0)
/* 6B524 8006A924 012B6021 */  addu       $t4, $t1, $t3
/* 6B528 8006A928 AC4C0004 */  sw         $t4, 0x4($v0)
/* 6B52C 8006A92C 8C990008 */  lw         $t9, 0x8($a0)
/* 6B530 8006A930 24050003 */  addiu      $a1, $zero, 0x3
/* 6B534 8006A934 0320F809 */  jalr       $t9
/* 6B538 8006A938 00000000 */   nop
/* 6B53C 8006A93C 10000004 */  b          .L8006A950
/* 6B540 8006A940 8FAF002C */   lw        $t7, 0x2C($sp)
.L8006A944:
/* 6B544 8006A944 8FAE002C */  lw         $t6, 0x2C($sp)
/* 6B548 8006A948 ADC000D8 */  sw         $zero, 0xD8($t6)
.L8006A94C:
/* 6B54C 8006A94C 8FAF002C */  lw         $t7, 0x2C($sp)
.L8006A950:
/* 6B550 8006A950 ADF00008 */  sw         $s0, 0x8($t7)
/* 6B554 8006A954 8FB8002C */  lw         $t8, 0x2C($sp)
/* 6B558 8006A958 AE180008 */  sw         $t8, 0x8($s0)
/* 6B55C 8006A95C 8FA2002C */  lw         $v0, 0x2C($sp)
.L8006A960:
/* 6B560 8006A960 8FBF001C */  lw         $ra, 0x1C($sp)
/* 6B564 8006A964 8FB00018 */  lw         $s0, 0x18($sp)
/* 6B568 8006A968 0002402B */  sltu       $t0, $zero, $v0
/* 6B56C 8006A96C 01001025 */  or         $v0, $t0, $zero
/* 6B570 8006A970 03E00008 */  jr         $ra
/* 6B574 8006A974 27BD0030 */   addiu     $sp, $sp, 0x30
/* 6B578 8006A978 00000000 */  nop
/* 6B57C 8006A97C 00000000 */  nop
