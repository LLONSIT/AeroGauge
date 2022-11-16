.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSynAllocFX
/* 72780 80071B80 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72784 80071B84 00054400 */  sll        $t0, $a1, 16
/* 72788 80071B88 00087403 */  sra        $t6, $t0, 16
/* 7278C 80071B8C AFB10018 */  sw         $s1, 0x18($sp)
/* 72790 80071B90 000E8880 */  sll        $s1, $t6, 2
/* 72794 80071B94 AFBF001C */  sw         $ra, 0x1C($sp)
/* 72798 80071B98 AFB00014 */  sw         $s0, 0x14($sp)
/* 7279C 80071B9C AFA50024 */  sw         $a1, 0x24($sp)
/* 727A0 80071BA0 022E8821 */  addu       $s1, $s1, $t6
/* 727A4 80071BA4 8C8F0034 */  lw         $t7, 0x34($a0)
/* 727A8 80071BA8 00118880 */  sll        $s1, $s1, 2
/* 727AC 80071BAC 022E8823 */  subu       $s1, $s1, $t6
/* 727B0 80071BB0 00808025 */  or         $s0, $a0, $zero
/* 727B4 80071BB4 00118880 */  sll        $s1, $s1, 2
/* 727B8 80071BB8 00C02825 */  or         $a1, $a2, $zero
/* 727BC 80071BBC 01F12021 */  addu       $a0, $t7, $s1
/* 727C0 80071BC0 24840020 */  addiu      $a0, $a0, 0x20
/* 727C4 80071BC4 0C01C5D0 */  jal        func_80071740
/* 727C8 80071BC8 00E03025 */   or        $a2, $a3, $zero
/* 727CC 80071BCC 8E180034 */  lw         $t8, 0x34($s0)
/* 727D0 80071BD0 24050001 */  addiu      $a1, $zero, 0x1
/* 727D4 80071BD4 03113021 */  addu       $a2, $t8, $s1
/* 727D8 80071BD8 0C01E9D1 */  jal        alFxParam
/* 727DC 80071BDC 24C40020 */   addiu     $a0, $a2, 0x20
/* 727E0 80071BE0 8E190034 */  lw         $t9, 0x34($s0)
/* 727E4 80071BE4 8E040030 */  lw         $a0, 0x30($s0)
/* 727E8 80071BE8 24050002 */  addiu      $a1, $zero, 0x2
/* 727EC 80071BEC 03313021 */  addu       $a2, $t9, $s1
/* 727F0 80071BF0 0C01C708 */  jal        alMainBusParam
/* 727F4 80071BF4 24C60020 */   addiu     $a2, $a2, 0x20
/* 727F8 80071BF8 8E0A0034 */  lw         $t2, 0x34($s0)
/* 727FC 80071BFC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 72800 80071C00 8FB00014 */  lw         $s0, 0x14($sp)
/* 72804 80071C04 01511021 */  addu       $v0, $t2, $s1
/* 72808 80071C08 8FB10018 */  lw         $s1, 0x18($sp)
/* 7280C 80071C0C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 72810 80071C10 03E00008 */  jr         $ra
/* 72814 80071C14 24420020 */   addiu     $v0, $v0, 0x20
/* 72818 80071C18 00000000 */  nop
/* 7281C 80071C1C 00000000 */  nop
