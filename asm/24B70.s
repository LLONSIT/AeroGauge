.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80023F70
/* 24B70 80023F70 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 24B74 80023F74 AFBE0038 */  sw         $fp, 0x38($sp)
/* 24B78 80023F78 AFB70034 */  sw         $s7, 0x34($sp)
/* 24B7C 80023F7C AFB60030 */  sw         $s6, 0x30($sp)
/* 24B80 80023F80 AFB5002C */  sw         $s5, 0x2C($sp)
/* 24B84 80023F84 0080A825 */  or         $s5, $a0, $zero
/* 24B88 80023F88 00E0B025 */  or         $s6, $a3, $zero
/* 24B8C 80023F8C 00A0B825 */  or         $s7, $a1, $zero
/* 24B90 80023F90 00C0F025 */  or         $fp, $a2, $zero
/* 24B94 80023F94 AFBF003C */  sw         $ra, 0x3C($sp)
/* 24B98 80023F98 AFB40028 */  sw         $s4, 0x28($sp)
/* 24B9C 80023F9C AFB30024 */  sw         $s3, 0x24($sp)
/* 24BA0 80023FA0 AFB20020 */  sw         $s2, 0x20($sp)
/* 24BA4 80023FA4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 24BA8 80023FA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 24BAC 80023FAC 02FE082A */  slt        $at, $s7, $fp
/* 24BB0 80023FB0 1020002C */  beqz       $at, .L80024064
/* 24BB4 80023FB4 02FE3021 */   addu      $a2, $s7, $fp
.L80023FB8:
/* 24BB8 80023FB8 02A02025 */  or         $a0, $s5, $zero
/* 24BBC 80023FBC 02E02825 */  or         $a1, $s7, $zero
/* 24BC0 80023FC0 04C10003 */  bgez       $a2, .L80023FD0
/* 24BC4 80023FC4 00067043 */   sra       $t6, $a2, 1
/* 24BC8 80023FC8 24C10001 */  addiu      $at, $a2, 0x1
/* 24BCC 80023FCC 00017043 */  sra        $t6, $at, 1
.L80023FD0:
/* 24BD0 80023FD0 0C009025 */  jal        func_80024094
/* 24BD4 80023FD4 01C03025 */   or        $a2, $t6, $zero
/* 24BD8 80023FD8 26E20001 */  addiu      $v0, $s7, 0x1
/* 24BDC 80023FDC 03C2082A */  slt        $at, $fp, $v0
/* 24BE0 80023FE0 02E09025 */  or         $s2, $s7, $zero
/* 24BE4 80023FE4 14200012 */  bnez       $at, .L80024030
/* 24BE8 80023FE8 00408025 */   or        $s0, $v0, $zero
/* 24BEC 80023FEC 00027880 */  sll        $t7, $v0, 2
/* 24BF0 80023FF0 0017C080 */  sll        $t8, $s7, 2
/* 24BF4 80023FF4 02B89821 */  addu       $s3, $s5, $t8
/* 24BF8 80023FF8 02AF8821 */  addu       $s1, $s5, $t7
/* 24BFC 80023FFC 27D40001 */  addiu      $s4, $fp, 0x1
.L80024000:
/* 24C00 80024000 8E240000 */  lw         $a0, 0x0($s1)
/* 24C04 80024004 02C0F809 */  jalr       $s6
/* 24C08 80024008 8E650000 */   lw        $a1, 0x0($s3)
/* 24C0C 8002400C 04410005 */  bgez       $v0, .L80024024
/* 24C10 80024010 02A02025 */   or        $a0, $s5, $zero
/* 24C14 80024014 26520001 */  addiu      $s2, $s2, 0x1
/* 24C18 80024018 02402825 */  or         $a1, $s2, $zero
/* 24C1C 8002401C 0C009025 */  jal        func_80024094
/* 24C20 80024020 02003025 */   or        $a2, $s0, $zero
.L80024024:
/* 24C24 80024024 26100001 */  addiu      $s0, $s0, 0x1
/* 24C28 80024028 1690FFF5 */  bne        $s4, $s0, .L80024000
/* 24C2C 8002402C 26310004 */   addiu     $s1, $s1, 0x4
.L80024030:
/* 24C30 80024030 02A02025 */  or         $a0, $s5, $zero
/* 24C34 80024034 02E02825 */  or         $a1, $s7, $zero
/* 24C38 80024038 0C009025 */  jal        func_80024094
/* 24C3C 8002403C 02403025 */   or        $a2, $s2, $zero
/* 24C40 80024040 02A02025 */  or         $a0, $s5, $zero
/* 24C44 80024044 02E02825 */  or         $a1, $s7, $zero
/* 24C48 80024048 2646FFFF */  addiu      $a2, $s2, -0x1
/* 24C4C 8002404C 0C008FDC */  jal        func_80023F70
/* 24C50 80024050 02C03825 */   or        $a3, $s6, $zero
/* 24C54 80024054 26570001 */  addiu      $s7, $s2, 0x1
/* 24C58 80024058 02FE082A */  slt        $at, $s7, $fp
/* 24C5C 8002405C 5420FFD6 */  bnel       $at, $zero, .L80023FB8
/* 24C60 80024060 02FE3021 */   addu      $a2, $s7, $fp
.L80024064:
/* 24C64 80024064 8FBF003C */  lw         $ra, 0x3C($sp)
/* 24C68 80024068 8FB00018 */  lw         $s0, 0x18($sp)
/* 24C6C 8002406C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 24C70 80024070 8FB20020 */  lw         $s2, 0x20($sp)
/* 24C74 80024074 8FB30024 */  lw         $s3, 0x24($sp)
/* 24C78 80024078 8FB40028 */  lw         $s4, 0x28($sp)
/* 24C7C 8002407C 8FB5002C */  lw         $s5, 0x2C($sp)
/* 24C80 80024080 8FB60030 */  lw         $s6, 0x30($sp)
/* 24C84 80024084 8FB70034 */  lw         $s7, 0x34($sp)
/* 24C88 80024088 8FBE0038 */  lw         $fp, 0x38($sp)
/* 24C8C 8002408C 03E00008 */  jr         $ra
/* 24C90 80024090 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80024094
/* 24C94 80024094 00067880 */  sll        $t7, $a2, 2
/* 24C98 80024098 00057080 */  sll        $t6, $a1, 2
/* 24C9C 8002409C 008F3821 */  addu       $a3, $a0, $t7
/* 24CA0 800240A0 8CF80000 */  lw         $t8, 0x0($a3)
/* 24CA4 800240A4 008E1821 */  addu       $v1, $a0, $t6
/* 24CA8 800240A8 8C620000 */  lw         $v0, 0x0($v1)
/* 24CAC 800240AC AC780000 */  sw         $t8, 0x0($v1)
/* 24CB0 800240B0 03E00008 */  jr         $ra
/* 24CB4 800240B4 ACE20000 */   sw        $v0, 0x0($a3)
/* 24CB8 800240B8 00000000 */  nop
/* 24CBC 800240BC 00000000 */  nop
