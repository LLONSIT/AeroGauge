.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osSetTimer
/* 74D60 80074160 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 74D64 80074164 AFA40020 */  sw         $a0, 0x20($sp)
/* 74D68 80074168 8FAE0020 */  lw         $t6, 0x20($sp)
/* 74D6C 8007416C AFBF0014 */  sw         $ra, 0x14($sp)
/* 74D70 80074170 AFA60028 */  sw         $a2, 0x28($sp)
/* 74D74 80074174 AFA7002C */  sw         $a3, 0x2C($sp)
/* 74D78 80074178 ADC00000 */  sw         $zero, 0x0($t6)
/* 74D7C 8007417C 8FAF0020 */  lw         $t7, 0x20($sp)
/* 74D80 80074180 ADE00004 */  sw         $zero, 0x4($t7)
/* 74D84 80074184 8FA80020 */  lw         $t0, 0x20($sp)
/* 74D88 80074188 8FB90034 */  lw         $t9, 0x34($sp)
/* 74D8C 8007418C 8FB80030 */  lw         $t8, 0x30($sp)
/* 74D90 80074190 AD19000C */  sw         $t9, 0xC($t0)
/* 74D94 80074194 AD180008 */  sw         $t8, 0x8($t0)
/* 74D98 80074198 8FAA0028 */  lw         $t2, 0x28($sp)
/* 74D9C 8007419C 8FAB002C */  lw         $t3, 0x2C($sp)
/* 74DA0 800741A0 15400003 */  bnez       $t2, .L800741B0
/* 74DA4 800741A4 00000000 */   nop
/* 74DA8 800741A8 11600005 */  beqz       $t3, .L800741C0
/* 74DAC 800741AC 00000000 */   nop
.L800741B0:
/* 74DB0 800741B0 8FA90020 */  lw         $t1, 0x20($sp)
/* 74DB4 800741B4 AD2A0010 */  sw         $t2, 0x10($t1)
/* 74DB8 800741B8 10000006 */  b          .L800741D4
/* 74DBC 800741BC AD2B0014 */   sw        $t3, 0x14($t1)
.L800741C0:
/* 74DC0 800741C0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 74DC4 800741C4 8FAC0030 */  lw         $t4, 0x30($sp)
/* 74DC8 800741C8 8FAD0034 */  lw         $t5, 0x34($sp)
/* 74DCC 800741CC ADCC0010 */  sw         $t4, 0x10($t6)
/* 74DD0 800741D0 ADCD0014 */  sw         $t5, 0x14($t6)
.L800741D4:
/* 74DD4 800741D4 8FAF0038 */  lw         $t7, 0x38($sp)
/* 74DD8 800741D8 8FB80020 */  lw         $t8, 0x20($sp)
/* 74DDC 800741DC AF0F0018 */  sw         $t7, 0x18($t8)
/* 74DE0 800741E0 8FA80020 */  lw         $t0, 0x20($sp)
/* 74DE4 800741E4 8FB9003C */  lw         $t9, 0x3C($sp)
/* 74DE8 800741E8 AD19001C */  sw         $t9, 0x1C($t0)
/* 74DEC 800741EC 0C01DBE6 */  jal        __osInsertTimer
/* 74DF0 800741F0 8FA40020 */   lw        $a0, 0x20($sp)
/* 74DF4 800741F4 3C0A8009 */  lui        $t2, %hi(D_80094BE0)
/* 74DF8 800741F8 8D4A4BE0 */  lw         $t2, %lo(D_80094BE0)($t2)
/* 74DFC 800741FC AFA20018 */  sw         $v0, 0x18($sp)
/* 74E00 80074200 AFA3001C */  sw         $v1, 0x1C($sp)
/* 74E04 80074204 8FA90020 */  lw         $t1, 0x20($sp)
/* 74E08 80074208 8D4B0000 */  lw         $t3, 0x0($t2)
/* 74E0C 8007420C 15690004 */  bne        $t3, $t1, .L80074220
/* 74E10 80074210 00000000 */   nop
/* 74E14 80074214 8FA40018 */  lw         $a0, 0x18($sp)
/* 74E18 80074218 0C01DBC9 */  jal        __osSetTimerIntr
/* 74E1C 8007421C 8FA5001C */   lw        $a1, 0x1C($sp)
.L80074220:
/* 74E20 80074220 8FBF0014 */  lw         $ra, 0x14($sp)
/* 74E24 80074224 27BD0020 */  addiu      $sp, $sp, 0x20
/* 74E28 80074228 00001025 */  or         $v0, $zero, $zero
/* 74E2C 8007422C 03E00008 */  jr         $ra
/* 74E30 80074230 00000000 */   nop
/* 74E34 80074234 00000000 */  nop
/* 74E38 80074238 00000000 */  nop
/* 74E3C 8007423C 00000000 */  nop
