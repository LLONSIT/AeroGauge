.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSaveParam
/* 74530 80073930 24010001 */  addiu      $at, $zero, 0x1
/* 74534 80073934 10A10006 */  beq        $a1, $at, .L80073950
/* 74538 80073938 00001025 */   or        $v0, $zero, $zero
/* 7453C 8007393C 24010006 */  addiu      $at, $zero, 0x6
/* 74540 80073940 50A10006 */  beql       $a1, $at, .L8007395C
/* 74544 80073944 AC860014 */   sw        $a2, 0x14($a0)
/* 74548 80073948 03E00008 */  jr         $ra
/* 7454C 8007394C 00001025 */   or        $v0, $zero, $zero
.L80073950:
/* 74550 80073950 03E00008 */  jr         $ra
/* 74554 80073954 AC860000 */   sw        $a2, 0x0($a0)
/* 74558 80073958 AC860014 */  sw         $a2, 0x14($a0)
.L8007395C:
/* 7455C 8007395C 03E00008 */  jr         $ra
/* 74560 80073960 00001025 */   or        $v0, $zero, $zero

glabel func_80073964
/* 74564 80073964 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74568 80073968 AFBF001C */  sw         $ra, 0x1C($sp)
/* 7456C 8007396C AFA40020 */  sw         $a0, 0x20($sp)
/* 74570 80073970 8C840000 */  lw         $a0, 0x0($a0)
/* 74574 80073974 8FAF0030 */  lw         $t7, 0x30($sp)
/* 74578 80073978 AFA60028 */  sw         $a2, 0x28($sp)
/* 7457C 8007397C AFAF0010 */  sw         $t7, 0x10($sp)
/* 74580 80073980 8C990004 */  lw         $t9, 0x4($a0)
/* 74584 80073984 0320F809 */  jalr       $t9
/* 74588 80073988 00000000 */   nop
/* 7458C 8007398C 8FA60028 */  lw         $a2, 0x28($sp)
/* 74590 80073990 3C030800 */  lui        $v1, (0x8000000 >> 16)
/* 74594 80073994 3C0A0440 */  lui        $t2, (0x4400580 >> 16)
/* 74598 80073998 0006C040 */  sll        $t8, $a2, 1
/* 7459C 8007399C 00065880 */  sll        $t3, $a2, 2
/* 745A0 800739A0 3308FFFF */  andi       $t0, $t8, 0xFFFF
/* 745A4 800739A4 354A0580 */  ori        $t2, $t2, (0x4400580 & 0xFFFF)
/* 745A8 800739A8 3C090D00 */  lui        $t1, (0xD000000 >> 16)
/* 745AC 800739AC 316CFFFF */  andi       $t4, $t3, 0xFFFF
/* 745B0 800739B0 3C0D0600 */  lui        $t5, (0x6000000 >> 16)
/* 745B4 800739B4 AC480004 */  sw         $t0, 0x4($v0)
/* 745B8 800739B8 AC430000 */  sw         $v1, 0x0($v0)
/* 745BC 800739BC AC490008 */  sw         $t1, 0x8($v0)
/* 745C0 800739C0 AC4A000C */  sw         $t2, 0xC($v0)
/* 745C4 800739C4 AC4C0014 */  sw         $t4, 0x14($v0)
/* 745C8 800739C8 AC430010 */  sw         $v1, 0x10($v0)
/* 745CC 800739CC AC4D0018 */  sw         $t5, 0x18($v0)
/* 745D0 800739D0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 745D4 800739D4 24420020 */  addiu      $v0, $v0, 0x20
/* 745D8 800739D8 8DCF0014 */  lw         $t7, 0x14($t6)
/* 745DC 800739DC AC4FFFFC */  sw         $t7, -0x4($v0)
/* 745E0 800739E0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 745E4 800739E4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 745E8 800739E8 03E00008 */  jr         $ra
/* 745EC 800739EC 00000000 */   nop
