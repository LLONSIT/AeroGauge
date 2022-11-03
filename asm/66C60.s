.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80066060
/* 66C60 80066060 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 66C64 80066064 AFBF0014 */  sw         $ra, 0x14($sp)
/* 66C68 80066068 240E0011 */  addiu      $t6, $zero, 0x11
/* 66C6C 8006606C A7AE0018 */  sh         $t6, 0x18($sp)
/* 66C70 80066070 27A50018 */  addiu      $a1, $sp, 0x18
/* 66C74 80066074 24840048 */  addiu      $a0, $a0, 0x48
/* 66C78 80066078 0C01A89F */  jal        alEvtqPostEvent
/* 66C7C 8006607C 00003025 */   or        $a2, $zero, $zero
/* 66C80 80066080 8FBF0014 */  lw         $ra, 0x14($sp)
/* 66C84 80066084 27BD0028 */  addiu      $sp, $sp, 0x28
/* 66C88 80066088 03E00008 */  jr         $ra
/* 66C8C 8006608C 00000000 */   nop

glabel func_80066090
/* 66C90 80066090 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 66C94 80066094 AFBF001C */  sw         $ra, 0x1C($sp)
/* 66C98 80066098 AFA40028 */  sw         $a0, 0x28($sp)
/* 66C9C 8006609C AFA5002C */  sw         $a1, 0x2C($sp)
/* 66CA0 800660A0 AFA60030 */  sw         $a2, 0x30($sp)
/* 66CA4 800660A4 AFB10018 */  sw         $s1, 0x18($sp)
/* 66CA8 800660A8 0C01C218 */  jal        __osDisableInt
/* 66CAC 800660AC AFB00014 */   sw        $s0, 0x14($sp)
/* 66CB0 800660B0 8FAE0028 */  lw         $t6, 0x28($sp)
/* 66CB4 800660B4 00408025 */  or         $s0, $v0, $zero
/* 66CB8 800660B8 8DCF0008 */  lw         $t7, 0x8($t6)
/* 66CBC 800660BC 15E00012 */  bnez       $t7, .L80066108
/* 66CC0 800660C0 00000000 */   nop
.L800660C4:
/* 66CC4 800660C4 8FB80030 */  lw         $t8, 0x30($sp)
/* 66CC8 800660C8 17000005 */  bnez       $t8, .L800660E0
/* 66CCC 800660CC 00000000 */   nop
/* 66CD0 800660D0 0C01C220 */  jal        __osRestoreInt
/* 66CD4 800660D4 02002025 */   or        $a0, $s0, $zero
/* 66CD8 800660D8 10000036 */  b          .L800661B4
/* 66CDC 800660DC 2402FFFF */   addiu     $v0, $zero, -0x1
.L800660E0:
/* 66CE0 800660E0 3C088009 */  lui        $t0, %hi(D_80094880)
/* 66CE4 800660E4 8D084880 */  lw         $t0, %lo(D_80094880)($t0)
/* 66CE8 800660E8 24190008 */  addiu      $t9, $zero, 0x8
/* 66CEC 800660EC A5190010 */  sh         $t9, 0x10($t0)
/* 66CF0 800660F0 0C01C3B3 */  jal        func_80070ECC
/* 66CF4 800660F4 8FA40028 */   lw        $a0, 0x28($sp)
/* 66CF8 800660F8 8FA90028 */  lw         $t1, 0x28($sp)
/* 66CFC 800660FC 8D2A0008 */  lw         $t2, 0x8($t1)
/* 66D00 80066100 1140FFF0 */  beqz       $t2, .L800660C4
/* 66D04 80066104 00000000 */   nop
.L80066108:
/* 66D08 80066108 8FAB002C */  lw         $t3, 0x2C($sp)
/* 66D0C 8006610C 11600008 */  beqz       $t3, .L80066130
/* 66D10 80066110 00000000 */   nop
/* 66D14 80066114 8FAC0028 */  lw         $t4, 0x28($sp)
/* 66D18 80066118 8D8E000C */  lw         $t6, 0xC($t4)
/* 66D1C 8006611C 8D8D0014 */  lw         $t5, 0x14($t4)
/* 66D20 80066120 000E7880 */  sll        $t7, $t6, 2
/* 66D24 80066124 01AFC021 */  addu       $t8, $t5, $t7
/* 66D28 80066128 8F190000 */  lw         $t9, 0x0($t8)
/* 66D2C 8006612C AD790000 */  sw         $t9, 0x0($t3)
.L80066130:
/* 66D30 80066130 8FA80028 */  lw         $t0, 0x28($sp)
/* 66D34 80066134 8D09000C */  lw         $t1, 0xC($t0)
/* 66D38 80066138 8D0C0010 */  lw         $t4, 0x10($t0)
/* 66D3C 8006613C 252A0001 */  addiu      $t2, $t1, 0x1
/* 66D40 80066140 014C001A */  div        $zero, $t2, $t4
/* 66D44 80066144 00007010 */  mfhi       $t6
/* 66D48 80066148 AD0E000C */  sw         $t6, 0xC($t0)
/* 66D4C 8006614C 8FAD0028 */  lw         $t5, 0x28($sp)
/* 66D50 80066150 15800002 */  bnez       $t4, .L8006615C
/* 66D54 80066154 00000000 */   nop
/* 66D58 80066158 0007000D */  break      7
.L8006615C:
/* 66D5C 8006615C 2401FFFF */  addiu      $at, $zero, -0x1
/* 66D60 80066160 15810004 */  bne        $t4, $at, .L80066174
/* 66D64 80066164 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 66D68 80066168 15410002 */  bne        $t2, $at, .L80066174
/* 66D6C 8006616C 00000000 */   nop
/* 66D70 80066170 0006000D */  break      6
.L80066174:
/* 66D74 80066174 8DAF0008 */  lw         $t7, 0x8($t5)
/* 66D78 80066178 25F8FFFF */  addiu      $t8, $t7, -0x1
/* 66D7C 8006617C ADB80008 */  sw         $t8, 0x8($t5)
/* 66D80 80066180 8FB90028 */  lw         $t9, 0x28($sp)
/* 66D84 80066184 8F2B0004 */  lw         $t3, 0x4($t9)
/* 66D88 80066188 8D690000 */  lw         $t1, 0x0($t3)
/* 66D8C 8006618C 11200006 */  beqz       $t1, .L800661A8
/* 66D90 80066190 00000000 */   nop
/* 66D94 80066194 0C01C405 */  jal        func_80071014
/* 66D98 80066198 27240004 */   addiu     $a0, $t9, 0x4
/* 66D9C 8006619C 00408825 */  or         $s1, $v0, $zero
/* 66DA0 800661A0 0C019F40 */  jal        osStartThread
/* 66DA4 800661A4 02202025 */   or        $a0, $s1, $zero
.L800661A8:
/* 66DA8 800661A8 0C01C220 */  jal        __osRestoreInt
/* 66DAC 800661AC 02002025 */   or        $a0, $s0, $zero
/* 66DB0 800661B0 00001025 */  or         $v0, $zero, $zero
.L800661B4:
/* 66DB4 800661B4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 66DB8 800661B8 8FB00014 */  lw         $s0, 0x14($sp)
/* 66DBC 800661BC 8FB10018 */  lw         $s1, 0x18($sp)
/* 66DC0 800661C0 03E00008 */  jr         $ra
/* 66DC4 800661C4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 66DC8 800661C8 00000000 */  nop
/* 66DCC 800661CC 00000000 */  nop
