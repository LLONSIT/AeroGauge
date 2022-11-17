.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel osPfsInitPak
/* 6C040 8006B440 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6C044 8006B444 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C048 8006B448 AFA40068 */  sw         $a0, 0x68($sp)
/* 6C04C 8006B44C AFA5006C */  sw         $a1, 0x6C($sp)
/* 6C050 8006B450 AFA60070 */  sw         $a2, 0x70($sp)
/* 6C054 8006B454 0C01D03C */  jal        __osSiGetAccess
/* 6C058 8006B458 AFA00060 */   sw        $zero, 0x60($sp)
/* 6C05C 8006B45C 8FA40068 */  lw         $a0, 0x68($sp)
/* 6C060 8006B460 0C01D0BC */  jal        func_800742F0
/* 6C064 8006B464 8FA50070 */   lw        $a1, 0x70($sp)
/* 6C068 8006B468 0C01D04D */  jal        __osSiRelAccess
/* 6C06C 8006B46C AFA20060 */   sw        $v0, 0x60($sp)
/* 6C070 8006B470 8FAE0060 */  lw         $t6, 0x60($sp)
/* 6C074 8006B474 11C00003 */  beqz       $t6, .L8006B484
/* 6C078 8006B478 00000000 */   nop
/* 6C07C 8006B47C 10000091 */  b          .L8006B6C4
/* 6C080 8006B480 01C01025 */   or        $v0, $t6, $zero
.L8006B484:
/* 6C084 8006B484 8FAF0068 */  lw         $t7, 0x68($sp)
/* 6C088 8006B488 8FB8006C */  lw         $t8, 0x6C($sp)
/* 6C08C 8006B48C AF0F0004 */  sw         $t7, 0x4($t8)
/* 6C090 8006B490 8FA8006C */  lw         $t0, 0x6C($sp)
/* 6C094 8006B494 8FB90070 */  lw         $t9, 0x70($sp)
/* 6C098 8006B498 AD190008 */  sw         $t9, 0x8($t0)
/* 6C09C 8006B49C 8FA9006C */  lw         $t1, 0x6C($sp)
/* 6C0A0 8006B4A0 AD200000 */  sw         $zero, 0x0($t1)
/* 6C0A4 8006B4A4 8FAA006C */  lw         $t2, 0x6C($sp)
/* 6C0A8 8006B4A8 A1400065 */  sb         $zero, 0x65($t2)
/* 6C0AC 8006B4AC 0C01D487 */  jal        __osPfsSelectBank
/* 6C0B0 8006B4B0 8FA4006C */   lw        $a0, 0x6C($sp)
/* 6C0B4 8006B4B4 AFA20060 */  sw         $v0, 0x60($sp)
/* 6C0B8 8006B4B8 8FAB0060 */  lw         $t3, 0x60($sp)
/* 6C0BC 8006B4BC 11600003 */  beqz       $t3, .L8006B4CC
/* 6C0C0 8006B4C0 00000000 */   nop
/* 6C0C4 8006B4C4 1000007F */  b          .L8006B6C4
/* 6C0C8 8006B4C8 01601025 */   or        $v0, $t3, $zero
.L8006B4CC:
/* 6C0CC 8006B4CC 8FAC006C */  lw         $t4, 0x6C($sp)
/* 6C0D0 8006B4D0 24060001 */  addiu      $a2, $zero, 0x1
/* 6C0D4 8006B4D4 27A7003C */  addiu      $a3, $sp, 0x3C
/* 6C0D8 8006B4D8 8D840004 */  lw         $a0, 0x4($t4)
/* 6C0DC 8006B4DC 0C01D4A4 */  jal        __osContRamRead
/* 6C0E0 8006B4E0 8D850008 */   lw        $a1, 0x8($t4)
/* 6C0E4 8006B4E4 AFA20060 */  sw         $v0, 0x60($sp)
/* 6C0E8 8006B4E8 8FAD0060 */  lw         $t5, 0x60($sp)
/* 6C0EC 8006B4EC 11A00003 */  beqz       $t5, .L8006B4FC
/* 6C0F0 8006B4F0 00000000 */   nop
/* 6C0F4 8006B4F4 10000073 */  b          .L8006B6C4
/* 6C0F8 8006B4F8 01A01025 */   or        $v0, $t5, $zero
.L8006B4FC:
/* 6C0FC 8006B4FC 27A4003C */  addiu      $a0, $sp, 0x3C
/* 6C100 8006B500 27A5005E */  addiu      $a1, $sp, 0x5E
/* 6C104 8006B504 0C01D163 */  jal        func_8007458C
/* 6C108 8006B508 27A6005C */   addiu     $a2, $sp, 0x5C
/* 6C10C 8006B50C 27AE003C */  addiu      $t6, $sp, 0x3C
/* 6C110 8006B510 AFAE0038 */  sw         $t6, 0x38($sp)
/* 6C114 8006B514 95CF001C */  lhu        $t7, 0x1C($t6)
/* 6C118 8006B518 97B8005E */  lhu        $t8, 0x5E($sp)
/* 6C11C 8006B51C 15F80005 */  bne        $t7, $t8, .L8006B534
/* 6C120 8006B520 00000000 */   nop
/* 6C124 8006B524 95D9001E */  lhu        $t9, 0x1E($t6)
/* 6C128 8006B528 97A8005C */  lhu        $t0, 0x5C($sp)
/* 6C12C 8006B52C 1328000F */  beq        $t9, $t0, .L8006B56C
/* 6C130 8006B530 00000000 */   nop
.L8006B534:
/* 6C134 8006B534 8FA4006C */  lw         $a0, 0x6C($sp)
/* 6C138 8006B538 0C01D283 */  jal        func_80074A0C
/* 6C13C 8006B53C 8FA50038 */   lw        $a1, 0x38($sp)
/* 6C140 8006B540 AFA20060 */  sw         $v0, 0x60($sp)
/* 6C144 8006B544 8FA90060 */  lw         $t1, 0x60($sp)
/* 6C148 8006B548 11200003 */  beqz       $t1, .L8006B558
/* 6C14C 8006B54C 00000000 */   nop
/* 6C150 8006B550 1000005C */  b          .L8006B6C4
/* 6C154 8006B554 01201025 */   or        $v0, $t1, $zero
.L8006B558:
/* 6C158 8006B558 8FAA0060 */  lw         $t2, 0x60($sp)
/* 6C15C 8006B55C 11400003 */  beqz       $t2, .L8006B56C
/* 6C160 8006B560 00000000 */   nop
/* 6C164 8006B564 10000057 */  b          .L8006B6C4
/* 6C168 8006B568 01401025 */   or        $v0, $t2, $zero
.L8006B56C:
/* 6C16C 8006B56C 8FAB0038 */  lw         $t3, 0x38($sp)
/* 6C170 8006B570 956C0018 */  lhu        $t4, 0x18($t3)
/* 6C174 8006B574 318D0001 */  andi       $t5, $t4, 0x1
/* 6C178 8006B578 15A00013 */  bnez       $t5, .L8006B5C8
/* 6C17C 8006B57C 00000000 */   nop
/* 6C180 8006B580 8FA4006C */  lw         $a0, 0x6C($sp)
/* 6C184 8006B584 01602825 */  or         $a1, $t3, $zero
/* 6C188 8006B588 0C01D17D */  jal        func_800745F4
/* 6C18C 8006B58C 27A60018 */   addiu     $a2, $sp, 0x18
/* 6C190 8006B590 AFA20060 */  sw         $v0, 0x60($sp)
/* 6C194 8006B594 8FAF0060 */  lw         $t7, 0x60($sp)
/* 6C198 8006B598 11E00003 */  beqz       $t7, .L8006B5A8
/* 6C19C 8006B59C 00000000 */   nop
/* 6C1A0 8006B5A0 10000048 */  b          .L8006B6C4
/* 6C1A4 8006B5A4 01E01025 */   or        $v0, $t7, $zero
.L8006B5A8:
/* 6C1A8 8006B5A8 27B80018 */  addiu      $t8, $sp, 0x18
/* 6C1AC 8006B5AC AFB80038 */  sw         $t8, 0x38($sp)
/* 6C1B0 8006B5B0 970E0018 */  lhu        $t6, 0x18($t8)
/* 6C1B4 8006B5B4 31D90001 */  andi       $t9, $t6, 0x1
/* 6C1B8 8006B5B8 17200003 */  bnez       $t9, .L8006B5C8
/* 6C1BC 8006B5BC 00000000 */   nop
/* 6C1C0 8006B5C0 10000040 */  b          .L8006B6C4
/* 6C1C4 8006B5C4 2402000B */   addiu     $v0, $zero, 0xB
.L8006B5C8:
/* 6C1C8 8006B5C8 AFA00064 */  sw         $zero, 0x64($sp)
.L8006B5CC:
/* 6C1CC 8006B5CC 8FA80038 */  lw         $t0, 0x38($sp)
/* 6C1D0 8006B5D0 8FA90064 */  lw         $t1, 0x64($sp)
/* 6C1D4 8006B5D4 8FAD006C */  lw         $t5, 0x6C($sp)
/* 6C1D8 8006B5D8 01095021 */  addu       $t2, $t0, $t1
/* 6C1DC 8006B5DC 914C0000 */  lbu        $t4, 0x0($t2)
/* 6C1E0 8006B5E0 01A95821 */  addu       $t3, $t5, $t1
/* 6C1E4 8006B5E4 A16C000C */  sb         $t4, 0xC($t3)
/* 6C1E8 8006B5E8 8FAF0064 */  lw         $t7, 0x64($sp)
/* 6C1EC 8006B5EC 25F80001 */  addiu      $t8, $t7, 0x1
/* 6C1F0 8006B5F0 2B010020 */  slti       $at, $t8, 0x20
/* 6C1F4 8006B5F4 1420FFF5 */  bnez       $at, .L8006B5CC
/* 6C1F8 8006B5F8 AFB80064 */   sw        $t8, 0x64($sp)
/* 6C1FC 8006B5FC 8FAE0038 */  lw         $t6, 0x38($sp)
/* 6C200 8006B600 8FA8006C */  lw         $t0, 0x6C($sp)
/* 6C204 8006B604 24060007 */  addiu      $a2, $zero, 0x7
/* 6C208 8006B608 91D9001B */  lbu        $t9, 0x1B($t6)
/* 6C20C 8006B60C 240E0010 */  addiu      $t6, $zero, 0x10
/* 6C210 8006B610 AD19004C */  sw         $t9, 0x4C($t0)
/* 6C214 8006B614 8FAA0038 */  lw         $t2, 0x38($sp)
/* 6C218 8006B618 8FA9006C */  lw         $t1, 0x6C($sp)
/* 6C21C 8006B61C 24080008 */  addiu      $t0, $zero, 0x8
/* 6C220 8006B620 914D001A */  lbu        $t5, 0x1A($t2)
/* 6C224 8006B624 A12D0064 */  sb         $t5, 0x64($t1)
/* 6C228 8006B628 8FAC006C */  lw         $t4, 0x6C($sp)
/* 6C22C 8006B62C 918B0064 */  lbu        $t3, 0x64($t4)
/* 6C230 8006B630 000B7840 */  sll        $t7, $t3, 1
/* 6C234 8006B634 25F80003 */  addiu      $t8, $t7, 0x3
/* 6C238 8006B638 AD980060 */  sw         $t8, 0x60($t4)
/* 6C23C 8006B63C 8FB9006C */  lw         $t9, 0x6C($sp)
/* 6C240 8006B640 AF2E0050 */  sw         $t6, 0x50($t9)
/* 6C244 8006B644 8FAA006C */  lw         $t2, 0x6C($sp)
/* 6C248 8006B648 AD480054 */  sw         $t0, 0x54($t2)
/* 6C24C 8006B64C 8FAD006C */  lw         $t5, 0x6C($sp)
/* 6C250 8006B650 91A90064 */  lbu        $t1, 0x64($t5)
/* 6C254 8006B654 000958C0 */  sll        $t3, $t1, 3
/* 6C258 8006B658 256F0008 */  addiu      $t7, $t3, 0x8
/* 6C25C 8006B65C ADAF0058 */  sw         $t7, 0x58($t5)
/* 6C260 8006B660 8FB8006C */  lw         $t8, 0x6C($sp)
/* 6C264 8006B664 930E0064 */  lbu        $t6, 0x64($t8)
/* 6C268 8006B668 8F0C0058 */  lw         $t4, 0x58($t8)
/* 6C26C 8006B66C 000EC8C0 */  sll        $t9, $t6, 3
/* 6C270 8006B670 01994021 */  addu       $t0, $t4, $t9
/* 6C274 8006B674 AF08005C */  sw         $t0, 0x5C($t8)
/* 6C278 8006B678 8FAA006C */  lw         $t2, 0x6C($sp)
/* 6C27C 8006B67C 8D440004 */  lw         $a0, 0x4($t2)
/* 6C280 8006B680 8D450008 */  lw         $a1, 0x8($t2)
/* 6C284 8006B684 0C01D4A4 */  jal        __osContRamRead
/* 6C288 8006B688 2547002C */   addiu     $a3, $t2, 0x2C
/* 6C28C 8006B68C AFA20060 */  sw         $v0, 0x60($sp)
/* 6C290 8006B690 8FA90060 */  lw         $t1, 0x60($sp)
/* 6C294 8006B694 11200003 */  beqz       $t1, .L8006B6A4
/* 6C298 8006B698 00000000 */   nop
/* 6C29C 8006B69C 10000009 */  b          .L8006B6C4
/* 6C2A0 8006B6A0 01201025 */   or        $v0, $t1, $zero
.L8006B6A4:
/* 6C2A4 8006B6A4 0C01D57C */  jal        func_800755F0
/* 6C2A8 8006B6A8 8FA4006C */   lw        $a0, 0x6C($sp)
/* 6C2AC 8006B6AC 8FAB006C */  lw         $t3, 0x6C($sp)
/* 6C2B0 8006B6B0 AFA20060 */  sw         $v0, 0x60($sp)
/* 6C2B4 8006B6B4 8D6F0000 */  lw         $t7, 0x0($t3)
/* 6C2B8 8006B6B8 35ED0001 */  ori        $t5, $t7, 0x1
/* 6C2BC 8006B6BC AD6D0000 */  sw         $t5, 0x0($t3)
/* 6C2C0 8006B6C0 8FA20060 */  lw         $v0, 0x60($sp)
.L8006B6C4:
/* 6C2C4 8006B6C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6C2C8 8006B6C8 27BD0068 */  addiu      $sp, $sp, 0x68
/* 6C2CC 8006B6CC 03E00008 */  jr         $ra
/* 6C2D0 8006B6D0 00000000 */   nop
/* 6C2D4 8006B6D4 00000000 */  nop
/* 6C2D8 8006B6D8 00000000 */  nop
/* 6C2DC 8006B6DC 00000000 */  nop
