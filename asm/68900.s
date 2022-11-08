.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osStartThread
/* 68900 80067D00 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 68904 80067D04 AFBF001C */  sw         $ra, 0x1C($sp)
/* 68908 80067D08 AFA40028 */  sw         $a0, 0x28($sp)
/* 6890C 80067D0C AFB10018 */  sw         $s1, 0x18($sp)
/* 68910 80067D10 0C01C218 */  jal        __osDisableInt
/* 68914 80067D14 AFB00014 */   sw        $s0, 0x14($sp)
/* 68918 80067D18 8FAE0028 */  lw         $t6, 0x28($sp)
/* 6891C 80067D1C 24010001 */  addiu      $at, $zero, 0x1
/* 68920 80067D20 00408025 */  or         $s0, $v0, $zero
/* 68924 80067D24 95D10010 */  lhu        $s1, 0x10($t6)
/* 68928 80067D28 1221000C */  beq        $s1, $at, .L80067D5C
/* 6892C 80067D2C 24010008 */   addiu     $at, $zero, 0x8
/* 68930 80067D30 1621002A */  bne        $s1, $at, .L80067DDC
/* 68934 80067D34 00000000 */   nop
/* 68938 80067D38 8FB80028 */  lw         $t8, 0x28($sp)
/* 6893C 80067D3C 240F0002 */  addiu      $t7, $zero, 0x2
/* 68940 80067D40 3C048009 */  lui        $a0, %hi(D_80094878)
/* 68944 80067D44 A70F0010 */  sh         $t7, 0x10($t8)
/* 68948 80067D48 8FA50028 */  lw         $a1, 0x28($sp)
/* 6894C 80067D4C 0C01C3F3 */  jal        func_80070FCC
/* 68950 80067D50 24844878 */   addiu     $a0, $a0, %lo(D_80094878)
/* 68954 80067D54 10000021 */  b          .L80067DDC
/* 68958 80067D58 00000000 */   nop
.L80067D5C:
/* 6895C 80067D5C 8FB90028 */  lw         $t9, 0x28($sp)
/* 68960 80067D60 8F280008 */  lw         $t0, 0x8($t9)
/* 68964 80067D64 11000005 */  beqz       $t0, .L80067D7C
/* 68968 80067D68 00000000 */   nop
/* 6896C 80067D6C 3C098009 */  lui        $t1, %hi(D_80094878)
/* 68970 80067D70 25294878 */  addiu      $t1, $t1, %lo(D_80094878)
/* 68974 80067D74 1509000A */  bne        $t0, $t1, .L80067DA0
/* 68978 80067D78 00000000 */   nop
.L80067D7C:
/* 6897C 80067D7C 8FAB0028 */  lw         $t3, 0x28($sp)
/* 68980 80067D80 240A0002 */  addiu      $t2, $zero, 0x2
/* 68984 80067D84 3C048009 */  lui        $a0, %hi(D_80094878)
/* 68988 80067D88 A56A0010 */  sh         $t2, 0x10($t3)
/* 6898C 80067D8C 8FA50028 */  lw         $a1, 0x28($sp)
/* 68990 80067D90 0C01C3F3 */  jal        func_80070FCC
/* 68994 80067D94 24844878 */   addiu     $a0, $a0, %lo(D_80094878)
/* 68998 80067D98 10000010 */  b          .L80067DDC
/* 6899C 80067D9C 00000000 */   nop
.L80067DA0:
/* 689A0 80067DA0 8FAD0028 */  lw         $t5, 0x28($sp)
/* 689A4 80067DA4 240C0008 */  addiu      $t4, $zero, 0x8
/* 689A8 80067DA8 A5AC0010 */  sh         $t4, 0x10($t5)
/* 689AC 80067DAC 8FAE0028 */  lw         $t6, 0x28($sp)
/* 689B0 80067DB0 8DC40008 */  lw         $a0, 0x8($t6)
/* 689B4 80067DB4 0C01C3F3 */  jal        func_80070FCC
/* 689B8 80067DB8 01C02825 */   or        $a1, $t6, $zero
/* 689BC 80067DBC 8FAF0028 */  lw         $t7, 0x28($sp)
/* 689C0 80067DC0 0C01C405 */  jal        func_80071014
/* 689C4 80067DC4 8DE40008 */   lw        $a0, 0x8($t7)
/* 689C8 80067DC8 00408825 */  or         $s1, $v0, $zero
/* 689CC 80067DCC 3C048009 */  lui        $a0, %hi(D_80094878)
/* 689D0 80067DD0 24844878 */  addiu      $a0, $a0, %lo(D_80094878)
/* 689D4 80067DD4 0C01C3F3 */  jal        func_80070FCC
/* 689D8 80067DD8 02202825 */   or        $a1, $s1, $zero
.L80067DDC:
/* 689DC 80067DDC 3C188009 */  lui        $t8, %hi(D_80094880)
/* 689E0 80067DE0 8F184880 */  lw         $t8, %lo(D_80094880)($t8)
/* 689E4 80067DE4 17000005 */  bnez       $t8, .L80067DFC
/* 689E8 80067DE8 00000000 */   nop
/* 689EC 80067DEC 0C01C409 */  jal        func_80071024
/* 689F0 80067DF0 00000000 */   nop
/* 689F4 80067DF4 1000000F */  b          .L80067E34
/* 689F8 80067DF8 00000000 */   nop
.L80067DFC:
/* 689FC 80067DFC 3C198009 */  lui        $t9, %hi(D_80094880)
/* 68A00 80067E00 3C098009 */  lui        $t1, %hi(D_80094878)
/* 68A04 80067E04 8D294878 */  lw         $t1, %lo(D_80094878)($t1)
/* 68A08 80067E08 8F394880 */  lw         $t9, %lo(D_80094880)($t9)
/* 68A0C 80067E0C 8D2A0004 */  lw         $t2, 0x4($t1)
/* 68A10 80067E10 8F280004 */  lw         $t0, 0x4($t9)
/* 68A14 80067E14 010A082A */  slt        $at, $t0, $t2
/* 68A18 80067E18 10200006 */  beqz       $at, .L80067E34
/* 68A1C 80067E1C 00000000 */   nop
/* 68A20 80067E20 240B0002 */  addiu      $t3, $zero, 0x2
/* 68A24 80067E24 3C048009 */  lui        $a0, %hi(D_80094878)
/* 68A28 80067E28 A72B0010 */  sh         $t3, 0x10($t9)
/* 68A2C 80067E2C 0C01C3B3 */  jal        func_80070ECC
/* 68A30 80067E30 24844878 */   addiu     $a0, $a0, %lo(D_80094878)
.L80067E34:
/* 68A34 80067E34 0C01C220 */  jal        __osRestoreInt
/* 68A38 80067E38 02002025 */   or        $a0, $s0, $zero
/* 68A3C 80067E3C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 68A40 80067E40 8FB00014 */  lw         $s0, 0x14($sp)
/* 68A44 80067E44 8FB10018 */  lw         $s1, 0x18($sp)
/* 68A48 80067E48 03E00008 */  jr         $ra
/* 68A4C 80067E4C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel alSeqpDelete
/* 68A50 80067E50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 68A54 80067E54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 68A58 80067E58 00802825 */  or         $a1, $a0, $zero
/* 68A5C 80067E5C 0C01C494 */  jal        alSynRemovePlayer
/* 68A60 80067E60 8C840014 */   lw        $a0, 0x14($a0)
/* 68A64 80067E64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 68A68 80067E68 27BD0018 */  addiu      $sp, $sp, 0x18
/* 68A6C 80067E6C 03E00008 */  jr         $ra
/* 68A70 80067E70 00000000 */   nop
/* 68A74 80067E74 00000000 */  nop
/* 68A78 80067E78 00000000 */  nop
/* 68A7C 80067E7C 00000000 */  nop
