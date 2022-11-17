.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alMainBusParam
/* 72820 80071C20 24010002 */  addiu      $at, $zero, 0x2
/* 72824 80071C24 14A10008 */  bne        $a1, $at, .L80071C48
/* 72828 80071C28 8C82001C */   lw        $v0, 0x1C($a0)
/* 7282C 80071C2C 8C8E0014 */  lw         $t6, 0x14($a0)
/* 72830 80071C30 000E7880 */  sll        $t7, $t6, 2
/* 72834 80071C34 004FC021 */  addu       $t8, $v0, $t7
/* 72838 80071C38 AF060000 */  sw         $a2, 0x0($t8)
/* 7283C 80071C3C 8C990014 */  lw         $t9, 0x14($a0)
/* 72840 80071C40 27280001 */  addiu      $t0, $t9, 0x1
/* 72844 80071C44 AC880014 */  sw         $t0, 0x14($a0)
.L80071C48:
/* 72848 80071C48 03E00008 */  jr         $ra
/* 7284C 80071C4C 00001025 */   or        $v0, $zero, $zero

glabel alMainBusPull
/* 72850 80071C50 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 72854 80071C54 8FA80058 */  lw         $t0, 0x58($sp)
/* 72858 80071C58 AFBF0044 */  sw         $ra, 0x44($sp)
/* 7285C 80071C5C AFBE0040 */  sw         $fp, 0x40($sp)
/* 72860 80071C60 AFB7003C */  sw         $s7, 0x3C($sp)
/* 72864 80071C64 AFB60038 */  sw         $s6, 0x38($sp)
/* 72868 80071C68 AFB50034 */  sw         $s5, 0x34($sp)
/* 7286C 80071C6C AFB40030 */  sw         $s4, 0x30($sp)
/* 72870 80071C70 AFB3002C */  sw         $s3, 0x2C($sp)
/* 72874 80071C74 AFB20028 */  sw         $s2, 0x28($sp)
/* 72878 80071C78 AFB10024 */  sw         $s1, 0x24($sp)
/* 7287C 80071C7C AFB00020 */  sw         $s0, 0x20($sp)
/* 72880 80071C80 8C83001C */  lw         $v1, 0x1C($a0)
/* 72884 80071C84 3C0E0200 */  lui        $t6, (0x2000440 >> 16)
/* 72888 80071C88 00061040 */  sll        $v0, $a2, 1
/* 7288C 80071C8C 3C0F0200 */  lui        $t7, (0x2000580 >> 16)
/* 72890 80071C90 35CE0440 */  ori        $t6, $t6, (0x2000440 & 0xFFFF)
/* 72894 80071C94 35EF0580 */  ori        $t7, $t7, (0x2000580 & 0xFFFF)
/* 72898 80071C98 AD0E0000 */  sw         $t6, 0x0($t0)
/* 7289C 80071C9C AD020004 */  sw         $v0, 0x4($t0)
/* 728A0 80071CA0 AD0F0008 */  sw         $t7, 0x8($t0)
/* 728A4 80071CA4 AD02000C */  sw         $v0, 0xC($t0)
/* 728A8 80071CA8 8C980014 */  lw         $t8, 0x14($a0)
/* 728AC 80071CAC 00C0A825 */  or         $s5, $a2, $zero
/* 728B0 80071CB0 00A0B825 */  or         $s7, $a1, $zero
/* 728B4 80071CB4 00E0F025 */  or         $fp, $a3, $zero
/* 728B8 80071CB8 0080A025 */  or         $s4, $a0, $zero
/* 728BC 80071CBC 00008025 */  or         $s0, $zero, $zero
/* 728C0 80071CC0 1B00001E */  blez       $t8, .L80071D3C
/* 728C4 80071CC4 25130010 */   addiu     $s3, $t0, 0x10
/* 728C8 80071CC8 3C120C00 */  lui        $s2, (0xC007FFF >> 16)
/* 728CC 80071CCC 36527FFF */  ori        $s2, $s2, (0xC007FFF & 0xFFFF)
/* 728D0 80071CD0 00608825 */  or         $s1, $v1, $zero
/* 728D4 80071CD4 3056FFFF */  andi       $s6, $v0, 0xFFFF
.L80071CD8:
/* 728D8 80071CD8 8E240000 */  lw         $a0, 0x0($s1)
/* 728DC 80071CDC AFB30010 */  sw         $s3, 0x10($sp)
/* 728E0 80071CE0 02E02825 */  or         $a1, $s7, $zero
/* 728E4 80071CE4 8C990004 */  lw         $t9, 0x4($a0)
/* 728E8 80071CE8 02A03025 */  or         $a2, $s5, $zero
/* 728EC 80071CEC 03C03825 */  or         $a3, $fp, $zero
/* 728F0 80071CF0 0320F809 */  jalr       $t9
/* 728F4 80071CF4 00000000 */   nop
/* 728F8 80071CF8 3C0A06C0 */  lui        $t2, (0x6C00440 >> 16)
/* 728FC 80071CFC 3C0B0800 */  lui        $t3, (0x8000580 >> 16)
/* 72900 80071D00 3C090800 */  lui        $t1, (0x8000000 >> 16)
/* 72904 80071D04 354A0440 */  ori        $t2, $t2, (0x6C00440 & 0xFFFF)
/* 72908 80071D08 356B0580 */  ori        $t3, $t3, (0x8000580 & 0xFFFF)
/* 7290C 80071D0C AC490000 */  sw         $t1, 0x0($v0)
/* 72910 80071D10 AC560004 */  sw         $s6, 0x4($v0)
/* 72914 80071D14 AC4A000C */  sw         $t2, 0xC($v0)
/* 72918 80071D18 AC520008 */  sw         $s2, 0x8($v0)
/* 7291C 80071D1C AC4B0014 */  sw         $t3, 0x14($v0)
/* 72920 80071D20 AC520010 */  sw         $s2, 0x10($v0)
/* 72924 80071D24 8E8C0014 */  lw         $t4, 0x14($s4)
/* 72928 80071D28 26100001 */  addiu      $s0, $s0, 0x1
/* 7292C 80071D2C 26310004 */  addiu      $s1, $s1, 0x4
/* 72930 80071D30 020C082A */  slt        $at, $s0, $t4
/* 72934 80071D34 1420FFE8 */  bnez       $at, .L80071CD8
/* 72938 80071D38 24530018 */   addiu     $s3, $v0, 0x18
.L80071D3C:
/* 7293C 80071D3C 8FBF0044 */  lw         $ra, 0x44($sp)
/* 72940 80071D40 02601025 */  or         $v0, $s3, $zero
/* 72944 80071D44 8FB3002C */  lw         $s3, 0x2C($sp)
/* 72948 80071D48 8FB00020 */  lw         $s0, 0x20($sp)
/* 7294C 80071D4C 8FB10024 */  lw         $s1, 0x24($sp)
/* 72950 80071D50 8FB20028 */  lw         $s2, 0x28($sp)
/* 72954 80071D54 8FB40030 */  lw         $s4, 0x30($sp)
/* 72958 80071D58 8FB50034 */  lw         $s5, 0x34($sp)
/* 7295C 80071D5C 8FB60038 */  lw         $s6, 0x38($sp)
/* 72960 80071D60 8FB7003C */  lw         $s7, 0x3C($sp)
/* 72964 80071D64 8FBE0040 */  lw         $fp, 0x40($sp)
/* 72968 80071D68 03E00008 */  jr         $ra
/* 7296C 80071D6C 27BD0048 */   addiu     $sp, $sp, 0x48
