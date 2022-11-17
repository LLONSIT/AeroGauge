.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006D5C0
/* 6E1C0 8006D5C0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6E1C4 8006D5C4 AFA40068 */  sw         $a0, 0x68($sp)
/* 6E1C8 8006D5C8 8FAE0068 */  lw         $t6, 0x68($sp)
/* 6E1CC 8006D5CC AFBF0014 */  sw         $ra, 0x14($sp)
/* 6E1D0 8006D5D0 91CF0065 */  lbu        $t7, 0x65($t6)
/* 6E1D4 8006D5D4 11E0000A */  beqz       $t7, .L8006D600
/* 6E1D8 8006D5D8 00000000 */   nop
/* 6E1DC 8006D5DC A1C00065 */  sb         $zero, 0x65($t6)
/* 6E1E0 8006D5E0 0C01D487 */  jal        __osPfsSelectBank
/* 6E1E4 8006D5E4 8FA40068 */   lw        $a0, 0x68($sp)
/* 6E1E8 8006D5E8 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E1EC 8006D5EC 8FB8001C */  lw         $t8, 0x1C($sp)
/* 6E1F0 8006D5F0 13000003 */  beqz       $t8, .L8006D600
/* 6E1F4 8006D5F4 00000000 */   nop
/* 6E1F8 8006D5F8 10000084 */  b          .L8006D80C
/* 6E1FC 8006D5FC 03001025 */   or        $v0, $t8, $zero
.L8006D600:
/* 6E200 8006D600 8FB90068 */  lw         $t9, 0x68($sp)
/* 6E204 8006D604 24060001 */  addiu      $a2, $zero, 0x1
/* 6E208 8006D608 27A70040 */  addiu      $a3, $sp, 0x40
/* 6E20C 8006D60C 8F240004 */  lw         $a0, 0x4($t9)
/* 6E210 8006D610 0C01D4A4 */  jal        __osContRamRead
/* 6E214 8006D614 8F250008 */   lw        $a1, 0x8($t9)
/* 6E218 8006D618 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E21C 8006D61C 8FA8001C */  lw         $t0, 0x1C($sp)
/* 6E220 8006D620 11000003 */  beqz       $t0, .L8006D630
/* 6E224 8006D624 00000000 */   nop
/* 6E228 8006D628 10000078 */  b          .L8006D80C
/* 6E22C 8006D62C 01001025 */   or        $v0, $t0, $zero
.L8006D630:
/* 6E230 8006D630 27A40040 */  addiu      $a0, $sp, 0x40
/* 6E234 8006D634 27A50062 */  addiu      $a1, $sp, 0x62
/* 6E238 8006D638 0C01D163 */  jal        func_8007458C
/* 6E23C 8006D63C 27A60060 */   addiu     $a2, $sp, 0x60
/* 6E240 8006D640 27A90040 */  addiu      $t1, $sp, 0x40
/* 6E244 8006D644 AFA90018 */  sw         $t1, 0x18($sp)
/* 6E248 8006D648 952A001C */  lhu        $t2, 0x1C($t1)
/* 6E24C 8006D64C 97AB0062 */  lhu        $t3, 0x62($sp)
/* 6E250 8006D650 154B0005 */  bne        $t2, $t3, .L8006D668
/* 6E254 8006D654 00000000 */   nop
/* 6E258 8006D658 952C001E */  lhu        $t4, 0x1E($t1)
/* 6E25C 8006D65C 97AD0060 */  lhu        $t5, 0x60($sp)
/* 6E260 8006D660 118D001B */  beq        $t4, $t5, .L8006D6D0
/* 6E264 8006D664 00000000 */   nop
.L8006D668:
/* 6E268 8006D668 8FA40068 */  lw         $a0, 0x68($sp)
/* 6E26C 8006D66C 0C01D283 */  jal        func_80074A0C
/* 6E270 8006D670 8FA50018 */   lw        $a1, 0x18($sp)
/* 6E274 8006D674 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E278 8006D678 8FAF001C */  lw         $t7, 0x1C($sp)
/* 6E27C 8006D67C 2401000A */  addiu      $at, $zero, 0xA
/* 6E280 8006D680 15E1000E */  bne        $t7, $at, .L8006D6BC
/* 6E284 8006D684 00000000 */   nop
/* 6E288 8006D688 8FA40068 */  lw         $a0, 0x68($sp)
/* 6E28C 8006D68C 8FA50018 */  lw         $a1, 0x18($sp)
/* 6E290 8006D690 0C01D17D */  jal        func_800745F4
/* 6E294 8006D694 27A60020 */   addiu     $a2, $sp, 0x20
/* 6E298 8006D698 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E29C 8006D69C 8FAE001C */  lw         $t6, 0x1C($sp)
/* 6E2A0 8006D6A0 11C00003 */  beqz       $t6, .L8006D6B0
/* 6E2A4 8006D6A4 00000000 */   nop
/* 6E2A8 8006D6A8 10000058 */  b          .L8006D80C
/* 6E2AC 8006D6AC 01C01025 */   or        $v0, $t6, $zero
.L8006D6B0:
/* 6E2B0 8006D6B0 27B80020 */  addiu      $t8, $sp, 0x20
/* 6E2B4 8006D6B4 10000006 */  b          .L8006D6D0
/* 6E2B8 8006D6B8 AFB80018 */   sw        $t8, 0x18($sp)
.L8006D6BC:
/* 6E2BC 8006D6BC 8FB9001C */  lw         $t9, 0x1C($sp)
/* 6E2C0 8006D6C0 13200003 */  beqz       $t9, .L8006D6D0
/* 6E2C4 8006D6C4 00000000 */   nop
/* 6E2C8 8006D6C8 10000050 */  b          .L8006D80C
/* 6E2CC 8006D6CC 03201025 */   or        $v0, $t9, $zero
.L8006D6D0:
/* 6E2D0 8006D6D0 8FA80018 */  lw         $t0, 0x18($sp)
/* 6E2D4 8006D6D4 950A0018 */  lhu        $t2, 0x18($t0)
/* 6E2D8 8006D6D8 314B0001 */  andi       $t3, $t2, 0x1
/* 6E2DC 8006D6DC 15600013 */  bnez       $t3, .L8006D72C
/* 6E2E0 8006D6E0 00000000 */   nop
/* 6E2E4 8006D6E4 8FA40068 */  lw         $a0, 0x68($sp)
/* 6E2E8 8006D6E8 01002825 */  or         $a1, $t0, $zero
/* 6E2EC 8006D6EC 0C01D17D */  jal        func_800745F4
/* 6E2F0 8006D6F0 27A60020 */   addiu     $a2, $sp, 0x20
/* 6E2F4 8006D6F4 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E2F8 8006D6F8 8FA9001C */  lw         $t1, 0x1C($sp)
/* 6E2FC 8006D6FC 11200003 */  beqz       $t1, .L8006D70C
/* 6E300 8006D700 00000000 */   nop
/* 6E304 8006D704 10000041 */  b          .L8006D80C
/* 6E308 8006D708 01201025 */   or        $v0, $t1, $zero
.L8006D70C:
/* 6E30C 8006D70C 27AC0020 */  addiu      $t4, $sp, 0x20
/* 6E310 8006D710 AFAC0018 */  sw         $t4, 0x18($sp)
/* 6E314 8006D714 958D0018 */  lhu        $t5, 0x18($t4)
/* 6E318 8006D718 31AF0001 */  andi       $t7, $t5, 0x1
/* 6E31C 8006D71C 15E00003 */  bnez       $t7, .L8006D72C
/* 6E320 8006D720 00000000 */   nop
/* 6E324 8006D724 10000039 */  b          .L8006D80C
/* 6E328 8006D728 2402000B */   addiu     $v0, $zero, 0xB
.L8006D72C:
/* 6E32C 8006D72C AFA00064 */  sw         $zero, 0x64($sp)
.L8006D730:
/* 6E330 8006D730 8FAE0018 */  lw         $t6, 0x18($sp)
/* 6E334 8006D734 8FB80064 */  lw         $t8, 0x64($sp)
/* 6E338 8006D738 8FAB0068 */  lw         $t3, 0x68($sp)
/* 6E33C 8006D73C 01D8C821 */  addu       $t9, $t6, $t8
/* 6E340 8006D740 932A0000 */  lbu        $t2, 0x0($t9)
/* 6E344 8006D744 01784021 */  addu       $t0, $t3, $t8
/* 6E348 8006D748 A10A000C */  sb         $t2, 0xC($t0)
/* 6E34C 8006D74C 8FA90064 */  lw         $t1, 0x64($sp)
/* 6E350 8006D750 252C0001 */  addiu      $t4, $t1, 0x1
/* 6E354 8006D754 29810020 */  slti       $at, $t4, 0x20
/* 6E358 8006D758 1420FFF5 */  bnez       $at, .L8006D730
/* 6E35C 8006D75C AFAC0064 */   sw        $t4, 0x64($sp)
/* 6E360 8006D760 8FAD0018 */  lw         $t5, 0x18($sp)
/* 6E364 8006D764 8FAE0068 */  lw         $t6, 0x68($sp)
/* 6E368 8006D768 24060007 */  addiu      $a2, $zero, 0x7
/* 6E36C 8006D76C 91AF001B */  lbu        $t7, 0x1B($t5)
/* 6E370 8006D770 240D0010 */  addiu      $t5, $zero, 0x10
/* 6E374 8006D774 ADCF004C */  sw         $t7, 0x4C($t6)
/* 6E378 8006D778 8FB90018 */  lw         $t9, 0x18($sp)
/* 6E37C 8006D77C 8FB80068 */  lw         $t8, 0x68($sp)
/* 6E380 8006D780 240E0008 */  addiu      $t6, $zero, 0x8
/* 6E384 8006D784 932B001A */  lbu        $t3, 0x1A($t9)
/* 6E388 8006D788 A30B0064 */  sb         $t3, 0x64($t8)
/* 6E38C 8006D78C 8FAA0068 */  lw         $t2, 0x68($sp)
/* 6E390 8006D790 91480064 */  lbu        $t0, 0x64($t2)
/* 6E394 8006D794 00084840 */  sll        $t1, $t0, 1
/* 6E398 8006D798 252C0003 */  addiu      $t4, $t1, 0x3
/* 6E39C 8006D79C AD4C0060 */  sw         $t4, 0x60($t2)
/* 6E3A0 8006D7A0 8FAF0068 */  lw         $t7, 0x68($sp)
/* 6E3A4 8006D7A4 ADED0050 */  sw         $t5, 0x50($t7)
/* 6E3A8 8006D7A8 8FB90068 */  lw         $t9, 0x68($sp)
/* 6E3AC 8006D7AC AF2E0054 */  sw         $t6, 0x54($t9)
/* 6E3B0 8006D7B0 8FAB0068 */  lw         $t3, 0x68($sp)
/* 6E3B4 8006D7B4 91780064 */  lbu        $t8, 0x64($t3)
/* 6E3B8 8006D7B8 001840C0 */  sll        $t0, $t8, 3
/* 6E3BC 8006D7BC 25090008 */  addiu      $t1, $t0, 0x8
/* 6E3C0 8006D7C0 AD690058 */  sw         $t1, 0x58($t3)
/* 6E3C4 8006D7C4 8FAC0068 */  lw         $t4, 0x68($sp)
/* 6E3C8 8006D7C8 918D0064 */  lbu        $t5, 0x64($t4)
/* 6E3CC 8006D7CC 8D8A0058 */  lw         $t2, 0x58($t4)
/* 6E3D0 8006D7D0 000D78C0 */  sll        $t7, $t5, 3
/* 6E3D4 8006D7D4 014F7021 */  addu       $t6, $t2, $t7
/* 6E3D8 8006D7D8 AD8E005C */  sw         $t6, 0x5C($t4)
/* 6E3DC 8006D7DC 8FB90068 */  lw         $t9, 0x68($sp)
/* 6E3E0 8006D7E0 8F240004 */  lw         $a0, 0x4($t9)
/* 6E3E4 8006D7E4 8F250008 */  lw         $a1, 0x8($t9)
/* 6E3E8 8006D7E8 0C01D4A4 */  jal        __osContRamRead
/* 6E3EC 8006D7EC 2727002C */   addiu     $a3, $t9, 0x2C
/* 6E3F0 8006D7F0 AFA2001C */  sw         $v0, 0x1C($sp)
/* 6E3F4 8006D7F4 8FB8001C */  lw         $t8, 0x1C($sp)
/* 6E3F8 8006D7F8 13000003 */  beqz       $t8, .L8006D808
/* 6E3FC 8006D7FC 00000000 */   nop
/* 6E400 8006D800 10000002 */  b          .L8006D80C
/* 6E404 8006D804 03001025 */   or        $v0, $t8, $zero
.L8006D808:
/* 6E408 8006D808 00001025 */  or         $v0, $zero, $zero
.L8006D80C:
/* 6E40C 8006D80C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6E410 8006D810 27BD0068 */  addiu      $sp, $sp, 0x68
/* 6E414 8006D814 03E00008 */  jr         $ra
/* 6E418 8006D818 00000000 */   nop
/* 6E41C 8006D81C 00000000 */  nop
