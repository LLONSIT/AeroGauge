.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel lldiv
/* 7C870 8007BC70 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 7C874 8007BC74 AFA40030 */  sw         $a0, 0x30($sp)
/* 7C878 8007BC78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 7C87C 8007BC7C AFA60038 */  sw         $a2, 0x38($sp)
/* 7C880 8007BC80 AFA7003C */  sw         $a3, 0x3C($sp)
/* 7C884 8007BC84 00C02025 */  or         $a0, $a2, $zero
/* 7C888 8007BC88 00E02825 */  or         $a1, $a3, $zero
/* 7C88C 8007BC8C 8FA70044 */  lw         $a3, 0x44($sp)
/* 7C890 8007BC90 0C01B193 */  jal        func_8006C64C
/* 7C894 8007BC94 8FA60040 */   lw        $a2, 0x40($sp)
/* 7C898 8007BC98 AFA20020 */  sw         $v0, 0x20($sp)
/* 7C89C 8007BC9C AFA30024 */  sw         $v1, 0x24($sp)
/* 7C8A0 8007BCA0 8FA40040 */  lw         $a0, 0x40($sp)
/* 7C8A4 8007BCA4 8FA50044 */  lw         $a1, 0x44($sp)
/* 7C8A8 8007BCA8 00403025 */  or         $a2, $v0, $zero
/* 7C8AC 8007BCAC 0C01B1AA */  jal        func_8006C6A8
/* 7C8B0 8007BCB0 00603825 */   or        $a3, $v1, $zero
/* 7C8B4 8007BCB4 8FAE0038 */  lw         $t6, 0x38($sp)
/* 7C8B8 8007BCB8 8FAF003C */  lw         $t7, 0x3C($sp)
/* 7C8BC 8007BCBC 8FA80020 */  lw         $t0, 0x20($sp)
/* 7C8C0 8007BCC0 01C2C023 */  subu       $t8, $t6, $v0
/* 7C8C4 8007BCC4 01E3082B */  sltu       $at, $t7, $v1
/* 7C8C8 8007BCC8 0301C023 */  subu       $t8, $t8, $at
/* 7C8CC 8007BCCC 01E3C823 */  subu       $t9, $t7, $v1
/* 7C8D0 8007BCD0 AFB9002C */  sw         $t9, 0x2C($sp)
/* 7C8D4 8007BCD4 AFB80028 */  sw         $t8, 0x28($sp)
/* 7C8D8 8007BCD8 1D000017 */  bgtz       $t0, .L8007BD38
/* 7C8DC 8007BCDC 8FA90024 */   lw        $t1, 0x24($sp)
/* 7C8E0 8007BCE0 05000003 */  bltz       $t0, .L8007BCF0
/* 7C8E4 8007BCE4 00000000 */   nop
/* 7C8E8 8007BCE8 10000014 */  b          .L8007BD3C
/* 7C8EC 8007BCEC 27A80020 */   addiu     $t0, $sp, 0x20
.L8007BCF0:
/* 7C8F0 8007BCF0 07020012 */  bltzl      $t8, .L8007BD3C
/* 7C8F4 8007BCF4 27A80020 */   addiu     $t0, $sp, 0x20
/* 7C8F8 8007BCF8 1F000003 */  bgtz       $t8, .L8007BD08
/* 7C8FC 8007BCFC 252B0001 */   addiu     $t3, $t1, 0x1
/* 7C900 8007BD00 5320000E */  beql       $t9, $zero, .L8007BD3C
/* 7C904 8007BD04 27A80020 */   addiu     $t0, $sp, 0x20
.L8007BD08:
/* 7C908 8007BD08 8FAC0040 */  lw         $t4, 0x40($sp)
/* 7C90C 8007BD0C 8FAD0044 */  lw         $t5, 0x44($sp)
/* 7C910 8007BD10 2D610001 */  sltiu      $at, $t3, 0x1
/* 7C914 8007BD14 01015021 */  addu       $t2, $t0, $at
/* 7C918 8007BD18 030C7023 */  subu       $t6, $t8, $t4
/* 7C91C 8007BD1C 032D082B */  sltu       $at, $t9, $t5
/* 7C920 8007BD20 01C17023 */  subu       $t6, $t6, $at
/* 7C924 8007BD24 032D7823 */  subu       $t7, $t9, $t5
/* 7C928 8007BD28 AFAA0020 */  sw         $t2, 0x20($sp)
/* 7C92C 8007BD2C AFAB0024 */  sw         $t3, 0x24($sp)
/* 7C930 8007BD30 AFAF002C */  sw         $t7, 0x2C($sp)
/* 7C934 8007BD34 AFAE0028 */  sw         $t6, 0x28($sp)
.L8007BD38:
/* 7C938 8007BD38 27A80020 */  addiu      $t0, $sp, 0x20
.L8007BD3C:
/* 7C93C 8007BD3C 8FA20030 */  lw         $v0, 0x30($sp)
/* 7C940 8007BD40 8D010000 */  lw         $at, 0x0($t0)
/* 7C944 8007BD44 AC410000 */  sw         $at, 0x0($v0)
/* 7C948 8007BD48 8D0B0004 */  lw         $t3, 0x4($t0)
/* 7C94C 8007BD4C AC4B0004 */  sw         $t3, 0x4($v0)
/* 7C950 8007BD50 8D010008 */  lw         $at, 0x8($t0)
/* 7C954 8007BD54 AC410008 */  sw         $at, 0x8($v0)
/* 7C958 8007BD58 8D0B000C */  lw         $t3, 0xC($t0)
/* 7C95C 8007BD5C AC4B000C */  sw         $t3, 0xC($v0)
/* 7C960 8007BD60 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7C964 8007BD64 27BD0030 */  addiu      $sp, $sp, 0x30
/* 7C968 8007BD68 03E00008 */  jr         $ra
/* 7C96C 8007BD6C 00000000 */   nop

glabel ldiv
/* 7C970 8007BD70 00A6001A */  div        $zero, $a1, $a2
/* 7C974 8007BD74 00001012 */  mflo       $v0
/* 7C978 8007BD78 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 7C97C 8007BD7C 14C00002 */  bnez       $a2, .L8007BD88
/* 7C980 8007BD80 00000000 */   nop
/* 7C984 8007BD84 0007000D */  break      7
.L8007BD88:
/* 7C988 8007BD88 2401FFFF */  addiu      $at, $zero, -0x1
/* 7C98C 8007BD8C 14C10004 */  bne        $a2, $at, .L8007BDA0
/* 7C990 8007BD90 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 7C994 8007BD94 14A10002 */  bne        $a1, $at, .L8007BDA0
/* 7C998 8007BD98 00000000 */   nop
/* 7C99C 8007BD9C 0006000D */  break      6
.L8007BDA0:
/* 7C9A0 8007BDA0 00C20019 */  multu      $a2, $v0
/* 7C9A4 8007BDA4 AFA20000 */  sw         $v0, 0x0($sp)
/* 7C9A8 8007BDA8 27AF0000 */  addiu      $t7, $sp, 0x0
/* 7C9AC 8007BDAC 00007012 */  mflo       $t6
/* 7C9B0 8007BDB0 00AE1823 */  subu       $v1, $a1, $t6
/* 7C9B4 8007BDB4 04410008 */  bgez       $v0, .L8007BDD8
/* 7C9B8 8007BDB8 AFA30004 */   sw        $v1, 0x4($sp)
/* 7C9BC 8007BDBC AFA20000 */  sw         $v0, 0x0($sp)
/* 7C9C0 8007BDC0 18600005 */  blez       $v1, .L8007BDD8
/* 7C9C4 8007BDC4 AFA30004 */   sw        $v1, 0x4($sp)
/* 7C9C8 8007BDC8 24420001 */  addiu      $v0, $v0, 0x1
/* 7C9CC 8007BDCC 00661823 */  subu       $v1, $v1, $a2
/* 7C9D0 8007BDD0 AFA30004 */  sw         $v1, 0x4($sp)
/* 7C9D4 8007BDD4 AFA20000 */  sw         $v0, 0x0($sp)
.L8007BDD8:
/* 7C9D8 8007BDD8 8DE10000 */  lw         $at, 0x0($t7)
/* 7C9DC 8007BDDC 00801025 */  or         $v0, $a0, $zero
/* 7C9E0 8007BDE0 AC810000 */  sw         $at, 0x0($a0)
/* 7C9E4 8007BDE4 8DE80004 */  lw         $t0, 0x4($t7)
/* 7C9E8 8007BDE8 27BD0008 */  addiu      $sp, $sp, 0x8
/* 7C9EC 8007BDEC 03E00008 */  jr         $ra
/* 7C9F0 8007BDF0 AC880004 */   sw        $t0, 0x4($a0)
/* 7C9F4 8007BDF4 00000000 */  nop
/* 7C9F8 8007BDF8 00000000 */  nop
/* 7C9FC 8007BDFC 00000000 */  nop
