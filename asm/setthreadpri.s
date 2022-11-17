.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osSetThreadPri
/* 71120 80070520 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 71124 80070524 AFBF001C */  sw         $ra, 0x1C($sp)
/* 71128 80070528 AFA40028 */  sw         $a0, 0x28($sp)
/* 7112C 8007052C AFA5002C */  sw         $a1, 0x2C($sp)
/* 71130 80070530 0C01C218 */  jal        __osDisableInt
/* 71134 80070534 AFB00018 */   sw        $s0, 0x18($sp)
/* 71138 80070538 8FAE0028 */  lw         $t6, 0x28($sp)
/* 7113C 8007053C 00408025 */  or         $s0, $v0, $zero
/* 71140 80070540 15C00004 */  bnez       $t6, .L80070554
/* 71144 80070544 00000000 */   nop
/* 71148 80070548 3C0F8009 */  lui        $t7, %hi(__osRunningThread)
/* 7114C 8007054C 8DEF4880 */  lw         $t7, %lo(__osRunningThread)($t7)
/* 71150 80070550 AFAF0028 */  sw         $t7, 0x28($sp)
.L80070554:
/* 71154 80070554 8FB80028 */  lw         $t8, 0x28($sp)
/* 71158 80070558 8FA8002C */  lw         $t0, 0x2C($sp)
/* 7115C 8007055C 8F190004 */  lw         $t9, 0x4($t8)
/* 71160 80070560 13280020 */  beq        $t9, $t0, .L800705E4
/* 71164 80070564 00000000 */   nop
/* 71168 80070568 AF080004 */  sw         $t0, 0x4($t8)
/* 7116C 8007056C 3C0A8009 */  lui        $t2, %hi(__osRunningThread)
/* 71170 80070570 8D4A4880 */  lw         $t2, %lo(__osRunningThread)($t2)
/* 71174 80070574 8FA90028 */  lw         $t1, 0x28($sp)
/* 71178 80070578 112A000C */  beq        $t1, $t2, .L800705AC
/* 7117C 8007057C 00000000 */   nop
/* 71180 80070580 952B0010 */  lhu        $t3, 0x10($t1)
/* 71184 80070584 24010001 */  addiu      $at, $zero, 0x1
/* 71188 80070588 11610008 */  beq        $t3, $at, .L800705AC
/* 7118C 8007058C 00000000 */   nop
/* 71190 80070590 8D240008 */  lw         $a0, 0x8($t1)
/* 71194 80070594 0C01C1FC */  jal        func_800707F0
/* 71198 80070598 01202825 */   or        $a1, $t1, $zero
/* 7119C 8007059C 8FAC0028 */  lw         $t4, 0x28($sp)
/* 711A0 800705A0 8D840008 */  lw         $a0, 0x8($t4)
/* 711A4 800705A4 0C01C3F3 */  jal        __osEnqueueThread
/* 711A8 800705A8 01802825 */   or        $a1, $t4, $zero
.L800705AC:
/* 711AC 800705AC 3C0D8009 */  lui        $t5, %hi(__osRunningThread)
/* 711B0 800705B0 3C0F8009 */  lui        $t7, %hi(__osRunQueue)
/* 711B4 800705B4 8DEF4878 */  lw         $t7, %lo(__osRunQueue)($t7)
/* 711B8 800705B8 8DAD4880 */  lw         $t5, %lo(__osRunningThread)($t5)
/* 711BC 800705BC 8DF90004 */  lw         $t9, 0x4($t7)
/* 711C0 800705C0 8DAE0004 */  lw         $t6, 0x4($t5)
/* 711C4 800705C4 01D9082A */  slt        $at, $t6, $t9
/* 711C8 800705C8 10200006 */  beqz       $at, .L800705E4
/* 711CC 800705CC 00000000 */   nop
/* 711D0 800705D0 24080002 */  addiu      $t0, $zero, 0x2
/* 711D4 800705D4 3C048009 */  lui        $a0, %hi(__osRunQueue)
/* 711D8 800705D8 A5A80010 */  sh         $t0, 0x10($t5)
/* 711DC 800705DC 0C01C3B3 */  jal        __osEnqueueAndYield
/* 711E0 800705E0 24844878 */   addiu     $a0, $a0, %lo(__osRunQueue)
.L800705E4:
/* 711E4 800705E4 0C01C220 */  jal        __osRestoreInt
/* 711E8 800705E8 02002025 */   or        $a0, $s0, $zero
/* 711EC 800705EC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 711F0 800705F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 711F4 800705F4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 711F8 800705F8 03E00008 */  jr         $ra
/* 711FC 800705FC 00000000 */   nop
