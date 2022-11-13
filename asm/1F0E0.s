.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8001E4E0
/* 1F0E0 8001E4E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F0E4 8001E4E4 3C028017 */  lui        $v0, %hi(D_8016C518)
/* 1F0E8 8001E4E8 3C04801A */  lui        $a0, %hi(D_8019DCD8)
/* 1F0EC 8001E4EC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F0F0 8001E4F0 2484DCD8 */  addiu      $a0, $a0, %lo(D_8019DCD8)
/* 1F0F4 8001E4F4 2442C518 */  addiu      $v0, $v0, %lo(D_8016C518)
/* 1F0F8 8001E4F8 24030002 */  addiu      $v1, $zero, 0x2
/* 1F0FC 8001E4FC 3C010002 */  lui        $at, (0x20000 >> 16)
.L8001E500:
/* 1F100 8001E500 00220821 */  addu       $at, $at, $v0
/* 1F104 8001E504 A4238BB8 */  sh         $v1, -0x7448($at)
/* 1F108 8001E508 3C010001 */  lui        $at, (0x18BE0 >> 16)
/* 1F10C 8001E50C 34218BE0 */  ori        $at, $at, (0x18BE0 & 0xFFFF)
/* 1F110 8001E510 00411021 */  addu       $v0, $v0, $at
/* 1F114 8001E514 5444FFFA */  bnel       $v0, $a0, .L8001E500
/* 1F118 8001E518 3C010002 */   lui       $at, (0x20000 >> 16)
/* 1F11C 8001E51C 3C02801A */  lui        $v0, %hi(D_8019DDF0)
/* 1F120 8001E520 2442DDF0 */  addiu      $v0, $v0, %lo(D_8019DDF0)
/* 1F124 8001E524 2404005A */  addiu      $a0, $zero, 0x5A
/* 1F128 8001E528 0C01B2A8 */  jal        func_8006CAA0
/* 1F12C 8001E52C AC440008 */   sw        $a0, 0x8($v0)
/* 1F130 8001E530 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F134 8001E534 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F138 8001E538 03E00008 */  jr         $ra
/* 1F13C 8001E53C 00000000 */   nop

glabel func_8001E540
/* 1F140 8001E540 3C0E8009 */  lui        $t6, %hi(D_8008B84C)
/* 1F144 8001E544 8DCEB84C */  lw         $t6, %lo(D_8008B84C)($t6)
/* 1F148 8001E548 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F14C 8001E54C AFBF001C */  sw         $ra, 0x1C($sp)
/* 1F150 8001E550 11C00065 */  beqz       $t6, .L8001E6E8
/* 1F154 8001E554 AFB00018 */   sw        $s0, 0x18($sp)
/* 1F158 8001E558 3C108009 */  lui        $s0, %hi(D_8008B858)
/* 1F15C 8001E55C 2610B858 */  addiu      $s0, $s0, %lo(D_8008B858)
/* 1F160 8001E560 8E0F0000 */  lw         $t7, 0x0($s0)
/* 1F164 8001E564 15E00005 */  bnez       $t7, .L8001E57C
/* 1F168 8001E568 00000000 */   nop
/* 1F16C 8001E56C 0C007938 */  jal        func_8001E4E0
/* 1F170 8001E570 00000000 */   nop
/* 1F174 8001E574 24180001 */  addiu      $t8, $zero, 0x1
/* 1F178 8001E578 AE180000 */  sw         $t8, 0x0($s0)
.L8001E57C:
/* 1F17C 8001E57C 3C198009 */  lui        $t9, %hi(D_8008B850)
/* 1F180 8001E580 8F39B850 */  lw         $t9, %lo(D_8008B850)($t9)
/* 1F184 8001E584 3C0A8017 */  lui        $t2, %hi(D_8016C518)
/* 1F188 8001E588 254AC518 */  addiu      $t2, $t2, %lo(D_8016C518)
/* 1F18C 8001E58C 2F210002 */  sltiu      $at, $t9, 0x2
/* 1F190 8001E590 10200050 */  beqz       $at, .L8001E6D4
/* 1F194 8001E594 3C088009 */   lui       $t0, %hi(D_8008B854)
/* 1F198 8001E598 8D08B854 */  lw         $t0, %lo(D_8008B854)($t0)
/* 1F19C 8001E59C 3C0B8009 */  lui        $t3, %hi(D_8008B85C)
/* 1F1A0 8001E5A0 8D6BB85C */  lw         $t3, %lo(D_8008B85C)($t3)
/* 1F1A4 8001E5A4 00084880 */  sll        $t1, $t0, 2
/* 1F1A8 8001E5A8 01284823 */  subu       $t1, $t1, $t0
/* 1F1AC 8001E5AC 000948C0 */  sll        $t1, $t1, 3
/* 1F1B0 8001E5B0 01284821 */  addu       $t1, $t1, $t0
/* 1F1B4 8001E5B4 000B6080 */  sll        $t4, $t3, 2
/* 1F1B8 8001E5B8 00094880 */  sll        $t1, $t1, 2
/* 1F1BC 8001E5BC 018B6021 */  addu       $t4, $t4, $t3
/* 1F1C0 8001E5C0 000C6080 */  sll        $t4, $t4, 2
/* 1F1C4 8001E5C4 01284823 */  subu       $t1, $t1, $t0
/* 1F1C8 8001E5C8 00094940 */  sll        $t1, $t1, 5
/* 1F1CC 8001E5CC 018B6023 */  subu       $t4, $t4, $t3
/* 1F1D0 8001E5D0 000C6080 */  sll        $t4, $t4, 2
/* 1F1D4 8001E5D4 01284823 */  subu       $t1, $t1, $t0
/* 1F1D8 8001E5D8 00094940 */  sll        $t1, $t1, 5
/* 1F1DC 8001E5DC 3C0D8020 */  lui        $t5, %hi(D_80200000)
/* 1F1E0 8001E5E0 018B6023 */  subu       $t4, $t4, $t3
/* 1F1E4 8001E5E4 012A8021 */  addu       $s0, $t1, $t2
/* 1F1E8 8001E5E8 000C62C0 */  sll        $t4, $t4, 11
/* 1F1EC 8001E5EC 25AD0000 */  addiu      $t5, $t5, %lo(D_80200000)
/* 1F1F0 8001E5F0 3C010002 */  lui        $at, (0x20000 >> 16)
/* 1F1F4 8001E5F4 00300821 */  addu       $at, $at, $s0
/* 1F1F8 8001E5F8 018D7021 */  addu       $t6, $t4, $t5
/* 1F1FC 8001E5FC AC2E8BD8 */  sw         $t6, -0x7428($at)
/* 1F200 8001E600 3C048009 */  lui        $a0, %hi(D_8008B840)
/* 1F204 8001E604 0C019FAC */  jal        osVirtualToPhysical
/* 1F208 8001E608 8C84B840 */   lw        $a0, %lo(D_8008B840)($a0)
/* 1F20C 8001E60C 24040001 */  addiu      $a0, $zero, 0x1
/* 1F210 8001E610 0C007C54 */  jal        func_8001F150
/* 1F214 8001E614 00402825 */   or        $a1, $v0, $zero
/* 1F218 8001E618 0C019FAC */  jal        osVirtualToPhysical
/* 1F21C 8001E61C 26040058 */   addiu     $a0, $s0, 0x58
/* 1F220 8001E620 24040002 */  addiu      $a0, $zero, 0x2
/* 1F224 8001E624 0C007C54 */  jal        func_8001F150
/* 1F228 8001E628 00402825 */   or        $a1, $v0, $zero
/* 1F22C 8001E62C 3C050002 */  lui        $a1, (0x20000 >> 16)
/* 1F230 8001E630 00B02821 */  addu       $a1, $a1, $s0
/* 1F234 8001E634 8CA58BD8 */  lw         $a1, -0x7428($a1)
/* 1F238 8001E638 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 1F23C 8001E63C 24040003 */  addiu      $a0, $zero, 0x3
/* 1F240 8001E640 0C007C54 */  jal        func_8001F150
/* 1F244 8001E644 00A12821 */   addu      $a1, $a1, $at
/* 1F248 8001E648 3C048009 */  lui        $a0, %hi(D_8008B844)
/* 1F24C 8001E64C 0C019FAC */  jal        osVirtualToPhysical
/* 1F250 8001E650 8C84B844 */   lw        $a0, %lo(D_8008B844)($a0)
/* 1F254 8001E654 24040004 */  addiu      $a0, $zero, 0x4
/* 1F258 8001E658 0C007C54 */  jal        func_8001F150
/* 1F25C 8001E65C 00402825 */   or        $a1, $v0, $zero
/* 1F260 8001E660 0C007A36 */  jal        func_8001E8D8
/* 1F264 8001E664 02002025 */   or        $a0, $s0, $zero
/* 1F268 8001E668 02002025 */  or         $a0, $s0, $zero
/* 1F26C 8001E66C 00402825 */  or         $a1, $v0, $zero
/* 1F270 8001E670 0C007AC7 */  jal        func_8001EB1C
/* 1F274 8001E674 24060007 */   addiu     $a2, $zero, 0x7
/* 1F278 8001E678 3C038009 */  lui        $v1, %hi(D_8008B854)
/* 1F27C 8001E67C 2463B854 */  addiu      $v1, $v1, %lo(D_8008B854)
/* 1F280 8001E680 8C790000 */  lw         $t9, 0x0($v1)
/* 1F284 8001E684 3C058009 */  lui        $a1, %hi(D_8008B850)
/* 1F288 8001E688 24A5B850 */  addiu      $a1, $a1, %lo(D_8008B850)
/* 1F28C 8001E68C 8CAF0000 */  lw         $t7, 0x0($a1)
/* 1F290 8001E690 3C048009 */  lui        $a0, %hi(D_8008B85C)
/* 1F294 8001E694 2484B85C */  addiu      $a0, $a0, %lo(D_8008B85C)
/* 1F298 8001E698 27280001 */  addiu      $t0, $t9, 0x1
/* 1F29C 8001E69C 8C820000 */  lw         $v0, 0x0($a0)
/* 1F2A0 8001E6A0 AC680000 */  sw         $t0, 0x0($v1)
/* 1F2A4 8001E6A4 310A0001 */  andi       $t2, $t0, 0x1
/* 1F2A8 8001E6A8 25F80001 */  addiu      $t8, $t7, 0x1
/* 1F2AC 8001E6AC ACB80000 */  sw         $t8, 0x0($a1)
/* 1F2B0 8001E6B0 AC6A0000 */  sw         $t2, 0x0($v1)
/* 1F2B4 8001E6B4 3C018009 */  lui        $at, %hi(D_8008B860)
/* 1F2B8 8001E6B8 AC22B860 */  sw         $v0, %lo(D_8008B860)($at)
/* 1F2BC 8001E6BC 24010003 */  addiu      $at, $zero, 0x3
/* 1F2C0 8001E6C0 244B0001 */  addiu      $t3, $v0, 0x1
/* 1F2C4 8001E6C4 0161001A */  div        $zero, $t3, $at
/* 1F2C8 8001E6C8 00006810 */  mfhi       $t5
/* 1F2CC 8001E6CC AC8B0000 */  sw         $t3, 0x0($a0)
/* 1F2D0 8001E6D0 AC8D0000 */  sw         $t5, 0x0($a0)
.L8001E6D4:
/* 1F2D4 8001E6D4 3C028009 */  lui        $v0, %hi(D_8008B848)
/* 1F2D8 8001E6D8 2442B848 */  addiu      $v0, $v0, %lo(D_8008B848)
/* 1F2DC 8001E6DC 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1F2E0 8001E6E0 25CF0001 */  addiu      $t7, $t6, 0x1
/* 1F2E4 8001E6E4 AC4F0000 */  sw         $t7, 0x0($v0)
.L8001E6E8:
/* 1F2E8 8001E6E8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1F2EC 8001E6EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1F2F0 8001E6F0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1F2F4 8001E6F4 03E00008 */  jr         $ra
/* 1F2F8 8001E6F8 00000000 */   nop

glabel func_8001E6FC
/* 1F2FC 8001E6FC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1F300 8001E700 AFB00018 */  sw         $s0, 0x18($sp)
/* 1F304 8001E704 3C108009 */  lui        $s0, %hi(D_8008B850)
/* 1F308 8001E708 2610B850 */  addiu      $s0, $s0, %lo(D_8008B850)
/* 1F30C 8001E70C 8E0E0000 */  lw         $t6, 0x0($s0)
/* 1F310 8001E710 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1F314 8001E714 00808825 */  or         $s1, $a0, $zero
/* 1F318 8001E718 AFBF003C */  sw         $ra, 0x3C($sp)
/* 1F31C 8001E71C AFBE0038 */  sw         $fp, 0x38($sp)
/* 1F320 8001E720 AFB70034 */  sw         $s7, 0x34($sp)
/* 1F324 8001E724 AFB60030 */  sw         $s6, 0x30($sp)
/* 1F328 8001E728 AFB5002C */  sw         $s5, 0x2C($sp)
/* 1F32C 8001E72C AFB40028 */  sw         $s4, 0x28($sp)
/* 1F330 8001E730 AFB30024 */  sw         $s3, 0x24($sp)
/* 1F334 8001E734 AFB20020 */  sw         $s2, 0x20($sp)
/* 1F338 8001E738 11C0002B */  beqz       $t6, .L8001E7E8
/* 1F33C 8001E73C AFA00044 */   sw        $zero, 0x44($sp)
/* 1F340 8001E740 3C1E801B */  lui        $fp, %hi(D_801AAB00)
/* 1F344 8001E744 3C178009 */  lui        $s7, %hi(D_80092E20)
/* 1F348 8001E748 26F72E20 */  addiu      $s7, $s7, %lo(D_80092E20)
/* 1F34C 8001E74C 27DEAB00 */  addiu      $fp, $fp, %lo(D_801AAB00)
/* 1F350 8001E750 24160005 */  addiu      $s6, $zero, 0x5
/* 1F354 8001E754 24150004 */  addiu      $s5, $zero, 0x4
/* 1F358 8001E758 24140002 */  addiu      $s4, $zero, 0x2
/* 1F35C 8001E75C 24130001 */  addiu      $s3, $zero, 0x1
/* 1F360 8001E760 27B20044 */  addiu      $s2, $sp, 0x44
/* 1F364 8001E764 02202025 */  or         $a0, $s1, $zero
.L8001E768:
/* 1F368 8001E768 02402825 */  or         $a1, $s2, $zero
/* 1F36C 8001E76C 0C019824 */  jal        osRecvMesg
/* 1F370 8001E770 02603025 */   or        $a2, $s3, $zero
/* 1F374 8001E774 8FAF0044 */  lw         $t7, 0x44($sp)
/* 1F378 8001E778 85E30000 */  lh         $v1, 0x0($t7)
/* 1F37C 8001E77C 50730018 */  beql       $v1, $s3, .L8001E7E0
/* 1F380 8001E780 8E0A0000 */   lw        $t2, 0x0($s0)
/* 1F384 8001E784 50740008 */  beql       $v1, $s4, .L8001E7A8
/* 1F388 8001E788 8E180000 */   lw        $t8, 0x0($s0)
/* 1F38C 8001E78C 5075000E */  beql       $v1, $s5, .L8001E7C8
/* 1F390 8001E790 8E080000 */   lw        $t0, 0x0($s0)
/* 1F394 8001E794 10760007 */  beq        $v1, $s6, .L8001E7B4
/* 1F398 8001E798 00000000 */   nop
/* 1F39C 8001E79C 10000010 */  b          .L8001E7E0
/* 1F3A0 8001E7A0 8E0A0000 */   lw        $t2, 0x0($s0)
/* 1F3A4 8001E7A4 8E180000 */  lw         $t8, 0x0($s0)
.L8001E7A8:
/* 1F3A8 8001E7A8 2719FFFF */  addiu      $t9, $t8, -0x1
/* 1F3AC 8001E7AC 1000000B */  b          .L8001E7DC
/* 1F3B0 8001E7B0 AE190000 */   sw        $t9, 0x0($s0)
.L8001E7B4:
/* 1F3B4 8001E7B4 0C0024B1 */  jal        func_800092C4
/* 1F3B8 8001E7B8 00000000 */   nop
/* 1F3BC 8001E7BC 10000007 */  b          .L8001E7DC
/* 1F3C0 8001E7C0 AEE00000 */   sw        $zero, 0x0($s7)
/* 1F3C4 8001E7C4 8E080000 */  lw         $t0, 0x0($s0)
.L8001E7C8:
/* 1F3C8 8001E7C8 24040001 */  addiu      $a0, $zero, 0x1
/* 1F3CC 8001E7CC 25090002 */  addiu      $t1, $t0, 0x2
/* 1F3D0 8001E7D0 0C01B318 */  jal        func_8006CC60
/* 1F3D4 8001E7D4 AE090000 */   sw        $t1, 0x0($s0)
/* 1F3D8 8001E7D8 AFC00000 */  sw         $zero, 0x0($fp)
.L8001E7DC:
/* 1F3DC 8001E7DC 8E0A0000 */  lw         $t2, 0x0($s0)
.L8001E7E0:
/* 1F3E0 8001E7E0 5540FFE1 */  bnel       $t2, $zero, .L8001E768
/* 1F3E4 8001E7E4 02202025 */   or        $a0, $s1, $zero
.L8001E7E8:
/* 1F3E8 8001E7E8 27B20044 */  addiu      $s2, $sp, 0x44
/* 1F3EC 8001E7EC 24130001 */  addiu      $s3, $zero, 0x1
/* 1F3F0 8001E7F0 24140002 */  addiu      $s4, $zero, 0x2
/* 1F3F4 8001E7F4 02402825 */  or         $a1, $s2, $zero
/* 1F3F8 8001E7F8 02202025 */  or         $a0, $s1, $zero
/* 1F3FC 8001E7FC 0C019824 */  jal        osRecvMesg
/* 1F400 8001E800 00003025 */   or        $a2, $zero, $zero
/* 1F404 8001E804 2410FFFF */  addiu      $s0, $zero, -0x1
/* 1F408 8001E808 5050000E */  beql       $v0, $s0, .L8001E844
/* 1F40C 8001E80C 8FBF003C */   lw        $ra, 0x3C($sp)
/* 1F410 8001E810 8FAB0044 */  lw         $t3, 0x44($sp)
.L8001E814:
/* 1F414 8001E814 02202025 */  or         $a0, $s1, $zero
/* 1F418 8001E818 02402825 */  or         $a1, $s2, $zero
/* 1F41C 8001E81C 85630000 */  lh         $v1, 0x0($t3)
/* 1F420 8001E820 10730003 */  beq        $v1, $s3, .L8001E830
/* 1F424 8001E824 00000000 */   nop
/* 1F428 8001E828 10740001 */  beq        $v1, $s4, .L8001E830
/* 1F42C 8001E82C 00000000 */   nop
.L8001E830:
/* 1F430 8001E830 0C019824 */  jal        osRecvMesg
/* 1F434 8001E834 00003025 */   or        $a2, $zero, $zero
/* 1F438 8001E838 5450FFF6 */  bnel       $v0, $s0, .L8001E814
/* 1F43C 8001E83C 8FAB0044 */   lw        $t3, 0x44($sp)
/* 1F440 8001E840 8FBF003C */  lw         $ra, 0x3C($sp)
.L8001E844:
/* 1F444 8001E844 8FB00018 */  lw         $s0, 0x18($sp)
/* 1F448 8001E848 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1F44C 8001E84C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1F450 8001E850 8FB30024 */  lw         $s3, 0x24($sp)
/* 1F454 8001E854 8FB40028 */  lw         $s4, 0x28($sp)
/* 1F458 8001E858 8FB5002C */  lw         $s5, 0x2C($sp)
/* 1F45C 8001E85C 8FB60030 */  lw         $s6, 0x30($sp)
/* 1F460 8001E860 8FB70034 */  lw         $s7, 0x34($sp)
/* 1F464 8001E864 8FBE0038 */  lw         $fp, 0x38($sp)
/* 1F468 8001E868 03E00008 */  jr         $ra
/* 1F46C 8001E86C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8001E870
/* 1F470 8001E870 3C0E8009 */  lui        $t6, %hi(D_8008B85C)
/* 1F474 8001E874 8DCEB85C */  lw         $t6, %lo(D_8008B85C)($t6)
/* 1F478 8001E878 3C188020 */  lui        $t8, %hi(D_80200000)
/* 1F47C 8001E87C 27180000 */  addiu      $t8, $t8, %lo(D_80200000)
/* 1F480 8001E880 000E7880 */  sll        $t7, $t6, 2
/* 1F484 8001E884 01EE7821 */  addu       $t7, $t7, $t6
/* 1F488 8001E888 000F7880 */  sll        $t7, $t7, 2
/* 1F48C 8001E88C 01EE7823 */  subu       $t7, $t7, $t6
/* 1F490 8001E890 000F7880 */  sll        $t7, $t7, 2
/* 1F494 8001E894 01EE7823 */  subu       $t7, $t7, $t6
/* 1F498 8001E898 000F7AC0 */  sll        $t7, $t7, 11
/* 1F49C 8001E89C 03E00008 */  jr         $ra
/* 1F4A0 8001E8A0 01F81021 */   addu      $v0, $t7, $t8

glabel func_8001E8A4
/* 1F4A4 8001E8A4 3C0E8009 */  lui        $t6, %hi(D_8008B860)
/* 1F4A8 8001E8A8 8DCEB860 */  lw         $t6, %lo(D_8008B860)($t6)
/* 1F4AC 8001E8AC 3C188020 */  lui        $t8, %hi(D_80200000)
/* 1F4B0 8001E8B0 27180000 */  addiu      $t8, $t8, %lo(D_80200000)
/* 1F4B4 8001E8B4 000E7880 */  sll        $t7, $t6, 2
/* 1F4B8 8001E8B8 01EE7821 */  addu       $t7, $t7, $t6
/* 1F4BC 8001E8BC 000F7880 */  sll        $t7, $t7, 2
/* 1F4C0 8001E8C0 01EE7823 */  subu       $t7, $t7, $t6
/* 1F4C4 8001E8C4 000F7880 */  sll        $t7, $t7, 2
/* 1F4C8 8001E8C8 01EE7823 */  subu       $t7, $t7, $t6
/* 1F4CC 8001E8CC 000F7AC0 */  sll        $t7, $t7, 11
/* 1F4D0 8001E8D0 03E00008 */  jr         $ra
/* 1F4D4 8001E8D4 01F81021 */   addu      $v0, $t7, $t8

glabel func_8001E8D8
/* 1F4D8 8001E8D8 248E0098 */  addiu      $t6, $a0, 0x98
/* 1F4DC 8001E8DC 3C018017 */  lui        $at, %hi(D_8016C50C)
/* 1F4E0 8001E8E0 AC2EC50C */  sw         $t6, %lo(D_8016C50C)($at)
/* 1F4E4 8001E8E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F4E8 8001E8E8 3C018017 */  lui        $at, %hi(D_8016C510)
/* 1F4EC 8001E8EC 248F07B8 */  addiu      $t7, $a0, 0x7B8
/* 1F4F0 8001E8F0 AFB10018 */  sw         $s1, 0x18($sp)
/* 1F4F4 8001E8F4 AC2FC510 */  sw         $t7, %lo(D_8016C510)($at)
/* 1F4F8 8001E8F8 3C118017 */  lui        $s1, %hi(D_8016C508)
/* 1F4FC 8001E8FC AFB00014 */  sw         $s0, 0x14($sp)
/* 1F500 8001E900 3C018017 */  lui        $at, %hi(D_8016C514)
/* 1F504 8001E904 249803B8 */  addiu      $t8, $a0, 0x3B8
/* 1F508 8001E908 00808025 */  or         $s0, $a0, $zero
/* 1F50C 8001E90C 2631C508 */  addiu      $s1, $s1, %lo(D_8016C508)
/* 1F510 8001E910 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1F514 8001E914 AC38C514 */  sw         $t8, %lo(D_8016C514)($at)
/* 1F518 8001E918 24996BB8 */  addiu      $t9, $a0, 0x6BB8
/* 1F51C 8001E91C AE390000 */  sw         $t9, 0x0($s1)
/* 1F520 8001E920 0C007C5D */  jal        func_8001F174
/* 1F524 8001E924 02202025 */   or        $a0, $s1, $zero
/* 1F528 8001E928 3C088014 */  lui        $t0, %hi(D_8013FF80)
/* 1F52C 8001E92C 8D08FF80 */  lw         $t0, %lo(D_8013FF80)($t0)
/* 1F530 8001E930 2D01000A */  sltiu      $at, $t0, 0xA
/* 1F534 8001E934 1020006B */  beqz       $at, L8001EAE4
/* 1F538 8001E938 00084080 */   sll       $t0, $t0, 2
/* 1F53C 8001E93C 3C018009 */  lui        $at, %hi(jtbl_80096F44_main)
/* 1F540 8001E940 00280821 */  addu       $at, $at, $t0
/* 1F544 8001E944 8C286F44 */  lw         $t0, %lo(jtbl_80096F44_main)($at)
/* 1F548 8001E948 01000008 */  jr         $t0
/* 1F54C 8001E94C 00000000 */   nop
glabel L8001E950
/* 1F550 8001E950 3C060001 */  lui        $a2, (0x10001 >> 16)
/* 1F554 8001E954 34C60001 */  ori        $a2, $a2, (0x10001 & 0xFFFF)
/* 1F558 8001E958 02002025 */  or         $a0, $s0, $zero
/* 1F55C 8001E95C 0C007B1E */  jal        func_8001EC78
/* 1F560 8001E960 02202825 */   or        $a1, $s1, $zero
/* 1F564 8001E964 0C007C07 */  jal        func_8001F01C
/* 1F568 8001E968 00000000 */   nop
/* 1F56C 8001E96C 1000005D */  b          L8001EAE4
/* 1F570 8001E970 00000000 */   nop
glabel L8001E974
/* 1F574 8001E974 0C007C10 */  jal        func_8001F040
/* 1F578 8001E978 02002025 */   or        $a0, $s0, $zero
/* 1F57C 8001E97C 10000059 */  b          L8001EAE4
/* 1F580 8001E980 00000000 */   nop
glabel L8001E984
/* 1F584 8001E984 3C060001 */  lui        $a2, (0x10001 >> 16)
/* 1F588 8001E988 34C60001 */  ori        $a2, $a2, (0x10001 & 0xFFFF)
/* 1F58C 8001E98C 02002025 */  or         $a0, $s0, $zero
/* 1F590 8001E990 0C007B1E */  jal        func_8001EC78
/* 1F594 8001E994 02202825 */   or        $a1, $s1, $zero
/* 1F598 8001E998 0C007C2D */  jal        func_8001F0B4
/* 1F59C 8001E99C 00000000 */   nop
/* 1F5A0 8001E9A0 10000050 */  b          L8001EAE4
/* 1F5A4 8001E9A4 00000000 */   nop
glabel L8001E9A8
/* 1F5A8 8001E9A8 3C060001 */  lui        $a2, (0x10001 >> 16)
/* 1F5AC 8001E9AC 34C60001 */  ori        $a2, $a2, (0x10001 & 0xFFFF)
/* 1F5B0 8001E9B0 02002025 */  or         $a0, $s0, $zero
/* 1F5B4 8001E9B4 0C007B1E */  jal        func_8001EC78
/* 1F5B8 8001E9B8 02202825 */   or        $a1, $s1, $zero
/* 1F5BC 8001E9BC 0C007C36 */  jal        func_8001F0D8
/* 1F5C0 8001E9C0 00000000 */   nop
/* 1F5C4 8001E9C4 10000047 */  b          L8001EAE4
/* 1F5C8 8001E9C8 00000000 */   nop
glabel L8001E9CC
/* 1F5CC 8001E9CC 0C008902 */  jal        func_80022408
/* 1F5D0 8001E9D0 02002025 */   or        $a0, $s0, $zero
/* 1F5D4 8001E9D4 10000043 */  b          L8001EAE4
/* 1F5D8 8001E9D8 00000000 */   nop
glabel L8001E9DC
/* 1F5DC 8001E9DC 3C060001 */  lui        $a2, (0x10001 >> 16)
/* 1F5E0 8001E9E0 34C60001 */  ori        $a2, $a2, (0x10001 & 0xFFFF)
/* 1F5E4 8001E9E4 02002025 */  or         $a0, $s0, $zero
/* 1F5E8 8001E9E8 0C007B1E */  jal        func_8001EC78
/* 1F5EC 8001E9EC 02202825 */   or        $a1, $s1, $zero
/* 1F5F0 8001E9F0 0C007C43 */  jal        func_8001F10C
/* 1F5F4 8001E9F4 00000000 */   nop
/* 1F5F8 8001E9F8 1000003A */  b          L8001EAE4
/* 1F5FC 8001E9FC 00000000 */   nop
glabel L8001EA00
/* 1F600 8001EA00 3C060001 */  lui        $a2, (0x10001 >> 16)
/* 1F604 8001EA04 34C60001 */  ori        $a2, $a2, (0x10001 & 0xFFFF)
/* 1F608 8001EA08 02002025 */  or         $a0, $s0, $zero
/* 1F60C 8001EA0C 0C007B1E */  jal        func_8001EC78
/* 1F610 8001EA10 02202825 */   or        $a1, $s1, $zero
/* 1F614 8001EA14 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 1F618 8001EA18 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 1F61C 8001EA1C 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 1F620 8001EA20 0C0192E3 */  jal        osScRemoveClient
/* 1F624 8001EA24 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 1F628 8001EA28 3C05801A */  lui        $a1, %hi(D_8019F008)
/* 1F62C 8001EA2C 24A5F008 */  addiu      $a1, $a1, %lo(D_8019F008)
/* 1F630 8001EA30 02202025 */  or         $a0, $s1, $zero
/* 1F634 8001EA34 0C018308 */  jal        func_80060C20
/* 1F638 8001EA38 00003025 */   or        $a2, $zero, $zero
/* 1F63C 8001EA3C 3C04801B */  lui        $a0, %hi(D_801A8868)
/* 1F640 8001EA40 3C05801B */  lui        $a1, %hi(D_801AAAF8)
/* 1F644 8001EA44 3C06801B */  lui        $a2, %hi(D_801A8750)
/* 1F648 8001EA48 24C68750 */  addiu      $a2, $a2, %lo(D_801A8750)
/* 1F64C 8001EA4C 24A5AAF8 */  addiu      $a1, $a1, %lo(D_801AAAF8)
/* 1F650 8001EA50 0C0192CF */  jal        osScAddClient
/* 1F654 8001EA54 24848868 */   addiu     $a0, $a0, %lo(D_801A8868)
/* 1F658 8001EA58 10000022 */  b          L8001EAE4
/* 1F65C 8001EA5C 00000000 */   nop
glabel L8001EA60
/* 1F660 8001EA60 3C060001 */  lui        $a2, (0x10001 >> 16)
/* 1F664 8001EA64 34C60001 */  ori        $a2, $a2, (0x10001 & 0xFFFF)
/* 1F668 8001EA68 02002025 */  or         $a0, $s0, $zero
/* 1F66C 8001EA6C 0C007B1E */  jal        func_8001EC78
/* 1F670 8001EA70 02202825 */   or        $a1, $s1, $zero
/* 1F674 8001EA74 3C058017 */  lui        $a1, %hi(D_8016C510)
/* 1F678 8001EA78 3C068017 */  lui        $a2, %hi(D_8016C50C)
/* 1F67C 8001EA7C 24C6C50C */  addiu      $a2, $a2, %lo(D_8016C50C)
/* 1F680 8001EA80 24A5C510 */  addiu      $a1, $a1, %lo(D_8016C510)
/* 1F684 8001EA84 0C013B94 */  jal        func_8004EE50
/* 1F688 8001EA88 02202025 */   or        $a0, $s1, $zero
/* 1F68C 8001EA8C 10000015 */  b          L8001EAE4
/* 1F690 8001EA90 00000000 */   nop
glabel L8001EA94
/* 1F694 8001EA94 3C060001 */  lui        $a2, (0x10001 >> 16)
/* 1F698 8001EA98 34C60001 */  ori        $a2, $a2, (0x10001 & 0xFFFF)
/* 1F69C 8001EA9C 02002025 */  or         $a0, $s0, $zero
/* 1F6A0 8001EAA0 0C007B1E */  jal        func_8001EC78
/* 1F6A4 8001EAA4 02202825 */   or        $a1, $s1, $zero
/* 1F6A8 8001EAA8 3C098009 */  lui        $t1, %hi(D_80092D40)
/* 1F6AC 8001EAAC 91292D40 */  lbu        $t1, %lo(D_80092D40)($t1)
/* 1F6B0 8001EAB0 1520000A */  bnez       $t1, .L8001EADC
/* 1F6B4 8001EAB4 00000000 */   nop
/* 1F6B8 8001EAB8 0C018740 */  jal        func_80061D00
/* 1F6BC 8001EABC 02202025 */   or        $a0, $s1, $zero
/* 1F6C0 8001EAC0 14400008 */  bnez       $v0, L8001EAE4
/* 1F6C4 8001EAC4 240A0001 */   addiu     $t2, $zero, 0x1
/* 1F6C8 8001EAC8 3C018009 */  lui        $at, %hi(D_80092D40)
/* 1F6CC 8001EACC A02A2D40 */  sb         $t2, %lo(D_80092D40)($at)
/* 1F6D0 8001EAD0 3C018014 */  lui        $at, %hi(D_8013FF84)
/* 1F6D4 8001EAD4 10000003 */  b          L8001EAE4
/* 1F6D8 8001EAD8 AC20FF84 */   sw        $zero, %lo(D_8013FF84)($at)
.L8001EADC:
/* 1F6DC 8001EADC 0C018855 */  jal        func_80062154
/* 1F6E0 8001EAE0 00000000 */   nop
glabel L8001EAE4
/* 1F6E4 8001EAE4 0C007CAF */  jal        func_8001F2BC
/* 1F6E8 8001EAE8 02202025 */   or        $a0, $s1, $zero
/* 1F6EC 8001EAEC 0C01B334 */  jal        func_8006CCD0
/* 1F6F0 8001EAF0 00000000 */   nop
/* 1F6F4 8001EAF4 8E2B0000 */  lw         $t3, 0x0($s1)
/* 1F6F8 8001EAF8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1F6FC 8001EAFC 8FB10018 */  lw         $s1, 0x18($sp)
/* 1F700 8001EB00 01701023 */  subu       $v0, $t3, $s0
/* 1F704 8001EB04 24429448 */  addiu      $v0, $v0, -0x6BB8
/* 1F708 8001EB08 000260C3 */  sra        $t4, $v0, 3
/* 1F70C 8001EB0C 8FB00014 */  lw         $s0, 0x14($sp)
/* 1F710 8001EB10 27BD0020 */  addiu      $sp, $sp, 0x20
/* 1F714 8001EB14 03E00008 */  jr         $ra
/* 1F718 8001EB18 01801025 */   or        $v0, $t4, $zero

glabel func_8001EB1C
/* 1F71C 8001EB1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F720 8001EB20 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F724 8001EB24 AFA5001C */  sw         $a1, 0x1C($sp)
/* 1F728 8001EB28 3C028008 */  lui        $v0, %hi(D_8007BE00)
/* 1F72C 8001EB2C 3C0F8008 */  lui        $t7, %hi(D_8007BED0)
/* 1F730 8001EB30 2442BE00 */  addiu      $v0, $v0, %lo(D_8007BE00)
/* 1F734 8001EB34 25EFBED0 */  addiu      $t7, $t7, %lo(D_8007BED0)
/* 1F738 8001EB38 240E0001 */  addiu      $t6, $zero, 0x1
/* 1F73C 8001EB3C 01E2C023 */  subu       $t8, $t7, $v0
/* 1F740 8001EB40 24010006 */  addiu      $at, $zero, 0x6
/* 1F744 8001EB44 00803825 */  or         $a3, $a0, $zero
/* 1F748 8001EB48 AC8E0010 */  sw         $t6, 0x10($a0)
/* 1F74C 8001EB4C AC800014 */  sw         $zero, 0x14($a0)
/* 1F750 8001EB50 AC820018 */  sw         $v0, 0x18($a0)
/* 1F754 8001EB54 10C10006 */  beq        $a2, $at, .L8001EB70
/* 1F758 8001EB58 AC98001C */   sw        $t8, 0x1C($a0)
/* 1F75C 8001EB5C 24010007 */  addiu      $at, $zero, 0x7
/* 1F760 8001EB60 10C10010 */  beq        $a2, $at, .L8001EBA4
/* 1F764 8001EB64 3C0B8008 */   lui       $t3, %hi(D_8007D300)
/* 1F768 8001EB68 10000019 */  b          .L8001EBD0
/* 1F76C 8001EB6C 00000000 */   nop
.L8001EB70:
/* 1F770 8001EB70 3C198008 */  lui        $t9, %hi(D_8007BED0)
/* 1F774 8001EB74 3C08800C */  lui        $t0, %hi(D_800C6A10)
/* 1F778 8001EB78 3C09801B */  lui        $t1, %hi(D_801AE660)
/* 1F77C 8001EB7C 3C0A801B */  lui        $t2, %hi(D_801AEE60)
/* 1F780 8001EB80 2739BED0 */  addiu      $t9, $t9, %lo(D_8007BED0)
/* 1F784 8001EB84 25086A10 */  addiu      $t0, $t0, %lo(D_800C6A10)
/* 1F788 8001EB88 2529E660 */  addiu      $t1, $t1, %lo(D_801AE660)
/* 1F78C 8001EB8C 254AEE60 */  addiu      $t2, $t2, %lo(D_801AEE60)
/* 1F790 8001EB90 ACF90020 */  sw         $t9, 0x20($a3)
/* 1F794 8001EB94 ACE80028 */  sw         $t0, 0x28($a3)
/* 1F798 8001EB98 ACE90038 */  sw         $t1, 0x38($a3)
/* 1F79C 8001EB9C 1000000C */  b          .L8001EBD0
/* 1F7A0 8001EBA0 ACEA003C */   sw        $t2, 0x3C($a3)
.L8001EBA4:
/* 1F7A4 8001EBA4 3C0C800C */  lui        $t4, %hi(D_800C7210)
/* 1F7A8 8001EBA8 3C0D801B */  lui        $t5, %hi(D_801AE660)
/* 1F7AC 8001EBAC 3C0E801B */  lui        $t6, %hi(D_801AEE60)
/* 1F7B0 8001EBB0 256BD300 */  addiu      $t3, $t3, %lo(D_8007D300)
/* 1F7B4 8001EBB4 258C7210 */  addiu      $t4, $t4, %lo(D_800C7210)
/* 1F7B8 8001EBB8 25ADE660 */  addiu      $t5, $t5, %lo(D_801AE660)
/* 1F7BC 8001EBBC 25CEEE60 */  addiu      $t6, $t6, %lo(D_801AEE60)
/* 1F7C0 8001EBC0 ACEB0020 */  sw         $t3, 0x20($a3)
/* 1F7C4 8001EBC4 ACEC0028 */  sw         $t4, 0x28($a3)
/* 1F7C8 8001EBC8 ACED0038 */  sw         $t5, 0x38($a3)
/* 1F7CC 8001EBCC ACEE003C */  sw         $t6, 0x3C($a3)
.L8001EBD0:
/* 1F7D0 8001EBD0 3C19801B */  lui        $t9, %hi(D_801AEE70)
/* 1F7D4 8001EBD4 240F1000 */  addiu      $t7, $zero, 0x1000
/* 1F7D8 8001EBD8 24180800 */  addiu      $t8, $zero, 0x800
/* 1F7DC 8001EBDC 2739EE70 */  addiu      $t9, $t9, %lo(D_801AEE70)
/* 1F7E0 8001EBE0 24080400 */  addiu      $t0, $zero, 0x400
/* 1F7E4 8001EBE4 24E96BB8 */  addiu      $t1, $a3, 0x6BB8
/* 1F7E8 8001EBE8 ACEF0024 */  sw         $t7, 0x24($a3)
/* 1F7EC 8001EBEC ACF8002C */  sw         $t8, 0x2C($a3)
/* 1F7F0 8001EBF0 ACF90030 */  sw         $t9, 0x30($a3)
/* 1F7F4 8001EBF4 ACE80034 */  sw         $t0, 0x34($a3)
/* 1F7F8 8001EBF8 ACE90040 */  sw         $t1, 0x40($a3)
/* 1F7FC 8001EBFC 8FAA001C */  lw         $t2, 0x1C($sp)
/* 1F800 8001EC00 3C010001 */  lui        $at, (0x18BB8 >> 16)
/* 1F804 8001EC04 3C0C801B */  lui        $t4, %hi(D_801AF270)
/* 1F808 8001EC08 3C0F801B */  lui        $t7, %hi(D_801A8750)
/* 1F80C 8001EC0C 34218BB8 */  ori        $at, $at, (0x18BB8 & 0xFFFF)
/* 1F810 8001EC10 258CF270 */  addiu      $t4, $t4, %lo(D_801AF270)
/* 1F814 8001EC14 240D0C00 */  addiu      $t5, $zero, 0xC00
/* 1F818 8001EC18 240E00E3 */  addiu      $t6, $zero, 0xE3
/* 1F81C 8001EC1C 25EF8750 */  addiu      $t7, $t7, %lo(D_801A8750)
/* 1F820 8001EC20 00E1C021 */  addu       $t8, $a3, $at
/* 1F824 8001EC24 3C190002 */  lui        $t9, (0x20000 >> 16)
/* 1F828 8001EC28 000A58C0 */  sll        $t3, $t2, 3
/* 1F82C 8001EC2C ACEB0044 */  sw         $t3, 0x44($a3)
/* 1F830 8001EC30 ACEC0048 */  sw         $t4, 0x48($a3)
/* 1F834 8001EC34 ACED004C */  sw         $t5, 0x4C($a3)
/* 1F838 8001EC38 ACE00000 */  sw         $zero, 0x0($a3)
/* 1F83C 8001EC3C ACEE0008 */  sw         $t6, 0x8($a3)
/* 1F840 8001EC40 ACEF0050 */  sw         $t7, 0x50($a3)
/* 1F844 8001EC44 ACF80054 */  sw         $t8, 0x54($a3)
/* 1F848 8001EC48 0327C821 */  addu       $t9, $t9, $a3
/* 1F84C 8001EC4C 8F398BD8 */  lw         $t9, -0x7428($t9)
/* 1F850 8001EC50 3C04801B */  lui        $a0, %hi(D_801AAAF0)
/* 1F854 8001EC54 00E02825 */  or         $a1, $a3, $zero
/* 1F858 8001EC58 ACF9000C */  sw         $t9, 0xC($a3)
/* 1F85C 8001EC5C 8C84AAF0 */  lw         $a0, %lo(D_801AAAF0)($a0)
/* 1F860 8001EC60 0C01A1B4 */  jal        osSendMesg
/* 1F864 8001EC64 24060001 */   addiu     $a2, $zero, 0x1
/* 1F868 8001EC68 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F86C 8001EC6C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1F870 8001EC70 03E00008 */  jr         $ra
/* 1F874 8001EC74 00000000 */   nop

glabel func_8001EC78
/* 1F878 8001EC78 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1F87C 8001EC7C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1F880 8001EC80 AFA40040 */  sw         $a0, 0x40($sp)
/* 1F884 8001EC84 AFA50044 */  sw         $a1, 0x44($sp)
/* 1F888 8001EC88 AFA60048 */  sw         $a2, 0x48($sp)
/* 1F88C 8001EC8C 8CA20000 */  lw         $v0, 0x0($a1)
/* 1F890 8001EC90 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 1F894 8001EC94 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
/* 1F898 8001EC98 24470008 */  addiu      $a3, $v0, 0x8
/* 1F89C 8001EC9C AC4B0000 */  sw         $t3, 0x0($v0)
/* 1F8A0 8001ECA0 AC400004 */  sw         $zero, 0x4($v0)
/* 1F8A4 8001ECA4 24E80008 */  addiu      $t0, $a3, 0x8
/* 1F8A8 8001ECA8 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
/* 1F8AC 8001ECAC 3C180030 */  lui        $t8, (0x300000 >> 16)
/* 1F8B0 8001ECB0 ACF80004 */  sw         $t8, 0x4($a3)
/* 1F8B4 8001ECB4 ACEF0000 */  sw         $t7, 0x0($a3)
/* 1F8B8 8001ECB8 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1F8BC 8001ECBC 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1F8C0 8001ECC0 25090008 */  addiu      $t1, $t0, 0x8
/* 1F8C4 8001ECC4 AD190000 */  sw         $t9, 0x0($t0)
/* 1F8C8 8001ECC8 AD000004 */  sw         $zero, 0x4($t0)
/* 1F8CC 8001ECCC 252A0008 */  addiu      $t2, $t1, 0x8
/* 1F8D0 8001ECD0 3C0CFF10 */  lui        $t4, (0xFF10013F >> 16)
/* 1F8D4 8001ECD4 358C013F */  ori        $t4, $t4, (0xFF10013F & 0xFFFF)
/* 1F8D8 8001ECD8 AD200004 */  sw         $zero, 0x4($t1)
/* 1F8DC 8001ECDC AD2B0000 */  sw         $t3, 0x0($t1)
/* 1F8E0 8001ECE0 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1F8E4 8001ECE4 25430008 */  addiu      $v1, $t2, 0x8
/* 1F8E8 8001ECE8 3C04801E */  lui        $a0, %hi(D_801DA800)
/* 1F8EC 8001ECEC 2484A800 */  addiu      $a0, $a0, %lo(D_801DA800)
/* 1F8F0 8001ECF0 AFA3003C */  sw         $v1, 0x3C($sp)
/* 1F8F4 8001ECF4 0C019FAC */  jal        osVirtualToPhysical
/* 1F8F8 8001ECF8 AFAA0028 */   sw        $t2, 0x28($sp)
/* 1F8FC 8001ECFC 8FA5003C */  lw         $a1, 0x3C($sp)
/* 1F900 8001ED00 8FAA0028 */  lw         $t2, 0x28($sp)
/* 1F904 8001ED04 3C0EFFFC */  lui        $t6, (0xFFFCFFFC >> 16)
/* 1F908 8001ED08 35CEFFFC */  ori        $t6, $t6, (0xFFFCFFFC & 0xFFFF)
/* 1F90C 8001ED0C AD420004 */  sw         $v0, 0x4($t2)
/* 1F910 8001ED10 3C0DF700 */  lui        $t5, (0xF7000000 >> 16)
/* 1F914 8001ED14 24A60008 */  addiu      $a2, $a1, 0x8
/* 1F918 8001ED18 3C0FF64F */  lui        $t7, (0xF64FC3BC >> 16)
/* 1F91C 8001ED1C ACAD0000 */  sw         $t5, 0x0($a1)
/* 1F920 8001ED20 ACAE0004 */  sw         $t6, 0x4($a1)
/* 1F924 8001ED24 35EFC3BC */  ori        $t7, $t7, (0xF64FC3BC & 0xFFFF)
/* 1F928 8001ED28 24C70008 */  addiu      $a3, $a2, 0x8
/* 1F92C 8001ED2C ACCF0000 */  sw         $t7, 0x0($a2)
/* 1F930 8001ED30 ACC00004 */  sw         $zero, 0x4($a2)
/* 1F934 8001ED34 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 1F938 8001ED38 3C18FF10 */  lui        $t8, (0xFF10013F >> 16)
/* 1F93C 8001ED3C 3718013F */  ori        $t8, $t8, (0xFF10013F & 0xFFFF)
/* 1F940 8001ED40 ACEB0000 */  sw         $t3, 0x0($a3)
/* 1F944 8001ED44 ACE00004 */  sw         $zero, 0x4($a3)
/* 1F948 8001ED48 24E80008 */  addiu      $t0, $a3, 0x8
/* 1F94C 8001ED4C AD180000 */  sw         $t8, 0x0($t0)
/* 1F950 8001ED50 8FB90040 */  lw         $t9, 0x40($sp)
/* 1F954 8001ED54 3C040002 */  lui        $a0, (0x20000 >> 16)
/* 1F958 8001ED58 25030008 */  addiu      $v1, $t0, 0x8
/* 1F95C 8001ED5C 00992021 */  addu       $a0, $a0, $t9
/* 1F960 8001ED60 8C848BD8 */  lw         $a0, -0x7428($a0)
/* 1F964 8001ED64 AFA80018 */  sw         $t0, 0x18($sp)
/* 1F968 8001ED68 0C019FAC */  jal        osVirtualToPhysical
/* 1F96C 8001ED6C AFA3003C */   sw        $v1, 0x3C($sp)
/* 1F970 8001ED70 8FA80018 */  lw         $t0, 0x18($sp)
/* 1F974 8001ED74 8FA4003C */  lw         $a0, 0x3C($sp)
/* 1F978 8001ED78 3C0CF700 */  lui        $t4, (0xF7000000 >> 16)
/* 1F97C 8001ED7C AD020004 */  sw         $v0, 0x4($t0)
/* 1F980 8001ED80 AC8C0000 */  sw         $t4, 0x0($a0)
/* 1F984 8001ED84 8FAD0048 */  lw         $t5, 0x48($sp)
/* 1F988 8001ED88 3C0EF64F */  lui        $t6, (0xF64FC3BC >> 16)
/* 1F98C 8001ED8C 24850008 */  addiu      $a1, $a0, 0x8
/* 1F990 8001ED90 AC8D0004 */  sw         $t5, 0x4($a0)
/* 1F994 8001ED94 35CEC3BC */  ori        $t6, $t6, (0xF64FC3BC & 0xFFFF)
/* 1F998 8001ED98 ACAE0000 */  sw         $t6, 0x0($a1)
/* 1F99C 8001ED9C ACA00004 */  sw         $zero, 0x4($a1)
/* 1F9A0 8001EDA0 8FAF0044 */  lw         $t7, 0x44($sp)
/* 1F9A4 8001EDA4 24A30008 */  addiu      $v1, $a1, 0x8
/* 1F9A8 8001EDA8 ADE30000 */  sw         $v1, 0x0($t7)
/* 1F9AC 8001EDAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1F9B0 8001EDB0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1F9B4 8001EDB4 03E00008 */  jr         $ra
/* 1F9B8 8001EDB8 00000000 */   nop

glabel func_8001EDBC
/* 1F9BC 8001EDBC 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 1F9C0 8001EDC0 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1F9C4 8001EDC4 AFB00018 */  sw         $s0, 0x18($sp)
/* 1F9C8 8001EDC8 AFA40078 */  sw         $a0, 0x78($sp)
/* 1F9CC 8001EDCC AFA5007C */  sw         $a1, 0x7C($sp)
/* 1F9D0 8001EDD0 8CB00000 */  lw         $s0, 0x0($a1)
/* 1F9D4 8001EDD4 3C09E700 */  lui        $t1, (0xE7000000 >> 16)
/* 1F9D8 8001EDD8 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
/* 1F9DC 8001EDDC 02001025 */  or         $v0, $s0, $zero
/* 1F9E0 8001EDE0 26100008 */  addiu      $s0, $s0, 0x8
/* 1F9E4 8001EDE4 02001825 */  or         $v1, $s0, $zero
/* 1F9E8 8001EDE8 AC490000 */  sw         $t1, 0x0($v0)
/* 1F9EC 8001EDEC AC400004 */  sw         $zero, 0x4($v0)
/* 1F9F0 8001EDF0 26100008 */  addiu      $s0, $s0, 0x8
/* 1F9F4 8001EDF4 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
/* 1F9F8 8001EDF8 3C180030 */  lui        $t8, (0x300000 >> 16)
/* 1F9FC 8001EDFC 02003025 */  or         $a2, $s0, $zero
/* 1FA00 8001EE00 AC780004 */  sw         $t8, 0x4($v1)
/* 1FA04 8001EE04 AC6F0000 */  sw         $t7, 0x0($v1)
/* 1FA08 8001EE08 26100008 */  addiu      $s0, $s0, 0x8
/* 1FA0C 8001EE0C 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1FA10 8001EE10 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1FA14 8001EE14 02003825 */  or         $a3, $s0, $zero
/* 1FA18 8001EE18 ACD90000 */  sw         $t9, 0x0($a2)
/* 1FA1C 8001EE1C ACC00004 */  sw         $zero, 0x4($a2)
/* 1FA20 8001EE20 26100008 */  addiu      $s0, $s0, 0x8
/* 1FA24 8001EE24 3C0AFF10 */  lui        $t2, (0xFF10013F >> 16)
/* 1FA28 8001EE28 354A013F */  ori        $t2, $t2, (0xFF10013F & 0xFFFF)
/* 1FA2C 8001EE2C 02004025 */  or         $t0, $s0, $zero
/* 1FA30 8001EE30 ACE00004 */  sw         $zero, 0x4($a3)
/* 1FA34 8001EE34 ACE90000 */  sw         $t1, 0x0($a3)
/* 1FA38 8001EE38 AD0A0000 */  sw         $t2, 0x0($t0)
/* 1FA3C 8001EE3C 3C04801E */  lui        $a0, %hi(D_801DA800)
/* 1FA40 8001EE40 2484A800 */  addiu      $a0, $a0, %lo(D_801DA800)
/* 1FA44 8001EE44 AFA80060 */  sw         $t0, 0x60($sp)
/* 1FA48 8001EE48 0C019FAC */  jal        osVirtualToPhysical
/* 1FA4C 8001EE4C 26100008 */   addiu     $s0, $s0, 0x8
/* 1FA50 8001EE50 8FA80060 */  lw         $t0, 0x60($sp)
/* 1FA54 8001EE54 02001825 */  or         $v1, $s0, $zero
/* 1FA58 8001EE58 26100008 */  addiu      $s0, $s0, 0x8
/* 1FA5C 8001EE5C 3C0CFFFC */  lui        $t4, (0xFFFCFFFC >> 16)
/* 1FA60 8001EE60 AD020004 */  sw         $v0, 0x4($t0)
/* 1FA64 8001EE64 358CFFFC */  ori        $t4, $t4, (0xFFFCFFFC & 0xFFFF)
/* 1FA68 8001EE68 02002825 */  or         $a1, $s0, $zero
/* 1FA6C 8001EE6C 3C0BF700 */  lui        $t3, (0xF7000000 >> 16)
/* 1FA70 8001EE70 AC6B0000 */  sw         $t3, 0x0($v1)
/* 1FA74 8001EE74 26100008 */  addiu      $s0, $s0, 0x8
/* 1FA78 8001EE78 AC6C0004 */  sw         $t4, 0x4($v1)
/* 1FA7C 8001EE7C 3C0DF64F */  lui        $t5, (0xF64FC3BC >> 16)
/* 1FA80 8001EE80 35ADC3BC */  ori        $t5, $t5, (0xF64FC3BC & 0xFFFF)
/* 1FA84 8001EE84 02003025 */  or         $a2, $s0, $zero
/* 1FA88 8001EE88 ACAD0000 */  sw         $t5, 0x0($a1)
/* 1FA8C 8001EE8C ACA00004 */  sw         $zero, 0x4($a1)
/* 1FA90 8001EE90 26100008 */  addiu      $s0, $s0, 0x8
/* 1FA94 8001EE94 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 1FA98 8001EE98 3C0FFF10 */  lui        $t7, (0xFF10013F >> 16)
/* 1FA9C 8001EE9C 35EF013F */  ori        $t7, $t7, (0xFF10013F & 0xFFFF)
/* 1FAA0 8001EEA0 ACCE0000 */  sw         $t6, 0x0($a2)
/* 1FAA4 8001EEA4 02003825 */  or         $a3, $s0, $zero
/* 1FAA8 8001EEA8 ACC00004 */  sw         $zero, 0x4($a2)
/* 1FAAC 8001EEAC ACEF0000 */  sw         $t7, 0x0($a3)
/* 1FAB0 8001EEB0 8FA90078 */  lw         $t1, 0x78($sp)
/* 1FAB4 8001EEB4 3C010001 */  lui        $at, (0x18000 >> 16)
/* 1FAB8 8001EEB8 34218000 */  ori        $at, $at, (0x18000 & 0xFFFF)
/* 1FABC 8001EEBC 01214821 */  addu       $t1, $t1, $at
/* 1FAC0 8001EEC0 8D240BD8 */  lw         $a0, 0xBD8($t1)
/* 1FAC4 8001EEC4 AFA90024 */  sw         $t1, 0x24($sp)
/* 1FAC8 8001EEC8 AFA70050 */  sw         $a3, 0x50($sp)
/* 1FACC 8001EECC 0C019FAC */  jal        osVirtualToPhysical
/* 1FAD0 8001EED0 26100008 */   addiu     $s0, $s0, 0x8
/* 1FAD4 8001EED4 8FA70050 */  lw         $a3, 0x50($sp)
/* 1FAD8 8001EED8 02001825 */  or         $v1, $s0, $zero
/* 1FADC 8001EEDC 26100008 */  addiu      $s0, $s0, 0x8
/* 1FAE0 8001EEE0 3C190001 */  lui        $t9, (0x10001 >> 16)
/* 1FAE4 8001EEE4 ACE20004 */  sw         $v0, 0x4($a3)
/* 1FAE8 8001EEE8 37390001 */  ori        $t9, $t9, (0x10001 & 0xFFFF)
/* 1FAEC 8001EEEC 02002825 */  or         $a1, $s0, $zero
/* 1FAF0 8001EEF0 3C18F700 */  lui        $t8, (0xF7000000 >> 16)
/* 1FAF4 8001EEF4 AC780000 */  sw         $t8, 0x0($v1)
/* 1FAF8 8001EEF8 26100008 */  addiu      $s0, $s0, 0x8
/* 1FAFC 8001EEFC AC790004 */  sw         $t9, 0x4($v1)
/* 1FB00 8001EF00 3C0AF64F */  lui        $t2, (0xF64FC18C >> 16)
/* 1FB04 8001EF04 354AC18C */  ori        $t2, $t2, (0xF64FC18C & 0xFFFF)
/* 1FB08 8001EF08 02003025 */  or         $a2, $s0, $zero
/* 1FB0C 8001EF0C ACAA0000 */  sw         $t2, 0x0($a1)
/* 1FB10 8001EF10 ACA00004 */  sw         $zero, 0x4($a1)
/* 1FB14 8001EF14 26100008 */  addiu      $s0, $s0, 0x8
/* 1FB18 8001EF18 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 1FB1C 8001EF1C 3C0CFF10 */  lui        $t4, (0xFF10013F >> 16)
/* 1FB20 8001EF20 358C013F */  ori        $t4, $t4, (0xFF10013F & 0xFFFF)
/* 1FB24 8001EF24 ACCB0000 */  sw         $t3, 0x0($a2)
/* 1FB28 8001EF28 02004025 */  or         $t0, $s0, $zero
/* 1FB2C 8001EF2C ACC00004 */  sw         $zero, 0x4($a2)
/* 1FB30 8001EF30 AD0C0000 */  sw         $t4, 0x0($t0)
/* 1FB34 8001EF34 8FAD0024 */  lw         $t5, 0x24($sp)
/* 1FB38 8001EF38 26100008 */  addiu      $s0, $s0, 0x8
/* 1FB3C 8001EF3C 8DA40BD8 */  lw         $a0, 0xBD8($t5)
/* 1FB40 8001EF40 0C019FAC */  jal        osVirtualToPhysical
/* 1FB44 8001EF44 AFA80040 */   sw        $t0, 0x40($sp)
/* 1FB48 8001EF48 8FA80040 */  lw         $t0, 0x40($sp)
/* 1FB4C 8001EF4C 02001825 */  or         $v1, $s0, $zero
/* 1FB50 8001EF50 26100008 */  addiu      $s0, $s0, 0x8
/* 1FB54 8001EF54 3C0FCE73 */  lui        $t7, (0xCE73CE73 >> 16)
/* 1FB58 8001EF58 AD020004 */  sw         $v0, 0x4($t0)
/* 1FB5C 8001EF5C 35EFCE73 */  ori        $t7, $t7, (0xCE73CE73 & 0xFFFF)
/* 1FB60 8001EF60 02002825 */  or         $a1, $s0, $zero
/* 1FB64 8001EF64 3C0EF700 */  lui        $t6, (0xF7000000 >> 16)
/* 1FB68 8001EF68 AC6E0000 */  sw         $t6, 0x0($v1)
/* 1FB6C 8001EF6C 26100008 */  addiu      $s0, $s0, 0x8
/* 1FB70 8001EF70 AC6F0004 */  sw         $t7, 0x4($v1)
/* 1FB74 8001EF74 3C18F64F */  lui        $t8, (0xF64FC344 >> 16)
/* 1FB78 8001EF78 3718C344 */  ori        $t8, $t8, (0xF64FC344 & 0xFFFF)
/* 1FB7C 8001EF7C 24190190 */  addiu      $t9, $zero, 0x190
/* 1FB80 8001EF80 02003025 */  or         $a2, $s0, $zero
/* 1FB84 8001EF84 ACB90004 */  sw         $t9, 0x4($a1)
/* 1FB88 8001EF88 ACB80000 */  sw         $t8, 0x0($a1)
/* 1FB8C 8001EF8C 26100008 */  addiu      $s0, $s0, 0x8
/* 1FB90 8001EF90 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 1FB94 8001EF94 3C0BFF10 */  lui        $t3, (0xFF10013F >> 16)
/* 1FB98 8001EF98 356B013F */  ori        $t3, $t3, (0xFF10013F & 0xFFFF)
/* 1FB9C 8001EF9C ACCA0000 */  sw         $t2, 0x0($a2)
/* 1FBA0 8001EFA0 02003825 */  or         $a3, $s0, $zero
/* 1FBA4 8001EFA4 ACC00004 */  sw         $zero, 0x4($a2)
/* 1FBA8 8001EFA8 ACEB0000 */  sw         $t3, 0x0($a3)
/* 1FBAC 8001EFAC 8FAC0024 */  lw         $t4, 0x24($sp)
/* 1FBB0 8001EFB0 26100008 */  addiu      $s0, $s0, 0x8
/* 1FBB4 8001EFB4 8D840BD8 */  lw         $a0, 0xBD8($t4)
/* 1FBB8 8001EFB8 0C019FAC */  jal        osVirtualToPhysical
/* 1FBBC 8001EFBC AFA70030 */   sw        $a3, 0x30($sp)
/* 1FBC0 8001EFC0 8FA70030 */  lw         $a3, 0x30($sp)
/* 1FBC4 8001EFC4 02001825 */  or         $v1, $s0, $zero
/* 1FBC8 8001EFC8 3C0E0001 */  lui        $t6, (0x10001 >> 16)
/* 1FBCC 8001EFCC ACE20004 */  sw         $v0, 0x4($a3)
/* 1FBD0 8001EFD0 35CE0001 */  ori        $t6, $t6, (0x10001 & 0xFFFF)
/* 1FBD4 8001EFD4 26100008 */  addiu      $s0, $s0, 0x8
/* 1FBD8 8001EFD8 3C0DF700 */  lui        $t5, (0xF7000000 >> 16)
/* 1FBDC 8001EFDC AC6D0000 */  sw         $t5, 0x0($v1)
/* 1FBE0 8001EFE0 02002025 */  or         $a0, $s0, $zero
/* 1FBE4 8001EFE4 AC6E0004 */  sw         $t6, 0x4($v1)
/* 1FBE8 8001EFE8 3C0FF64F */  lui        $t7, (0xF64FC3BC >> 16)
/* 1FBEC 8001EFEC 35EFC3BC */  ori        $t7, $t7, (0xF64FC3BC & 0xFFFF)
/* 1FBF0 8001EFF0 24180348 */  addiu      $t8, $zero, 0x348
/* 1FBF4 8001EFF4 AC980004 */  sw         $t8, 0x4($a0)
/* 1FBF8 8001EFF8 AC8F0000 */  sw         $t7, 0x0($a0)
/* 1FBFC 8001EFFC 8FB9007C */  lw         $t9, 0x7C($sp)
/* 1FC00 8001F000 26100008 */  addiu      $s0, $s0, 0x8
/* 1FC04 8001F004 AF300000 */  sw         $s0, 0x0($t9)
/* 1FC08 8001F008 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1FC0C 8001F00C 8FB00018 */  lw         $s0, 0x18($sp)
/* 1FC10 8001F010 27BD0078 */  addiu      $sp, $sp, 0x78
/* 1FC14 8001F014 03E00008 */  jr         $ra
/* 1FC18 8001F018 00000000 */   nop

glabel func_8001F01C
/* 1FC1C 8001F01C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FC20 8001F020 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FC24 8001F024 3C048017 */  lui        $a0, %hi(D_8016C508)
/* 1FC28 8001F028 0C009684 */  jal        func_80025A10
/* 1FC2C 8001F02C 2484C508 */   addiu     $a0, $a0, %lo(D_8016C508)
/* 1FC30 8001F030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FC34 8001F034 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1FC38 8001F038 03E00008 */  jr         $ra
/* 1FC3C 8001F03C 00000000 */   nop

glabel func_8001F040
/* 1FC40 8001F040 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FC44 8001F044 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FC48 8001F048 3C058017 */  lui        $a1, %hi(D_8016C508)
/* 1FC4C 8001F04C 3C060001 */  lui        $a2, (0x10001 >> 16)
/* 1FC50 8001F050 24A5C508 */  addiu      $a1, $a1, %lo(D_8016C508)
/* 1FC54 8001F054 AFA40018 */  sw         $a0, 0x18($sp)
/* 1FC58 8001F058 0C007B1E */  jal        func_8001EC78
/* 1FC5C 8001F05C 34C60001 */   ori       $a2, $a2, (0x10001 & 0xFFFF)
/* 1FC60 8001F060 3C058017 */  lui        $a1, %hi(D_8016C508)
/* 1FC64 8001F064 24A5C508 */  addiu      $a1, $a1, %lo(D_8016C508)
/* 1FC68 8001F068 8CA30000 */  lw         $v1, 0x0($a1)
/* 1FC6C 8001F06C 3C0FED04 */  lui        $t7, (0xED040020 >> 16)
/* 1FC70 8001F070 3C18004B */  lui        $t8, (0x4BC39C >> 16)
/* 1FC74 8001F074 246E0008 */  addiu      $t6, $v1, 0x8
/* 1FC78 8001F078 ACAE0000 */  sw         $t6, 0x0($a1)
/* 1FC7C 8001F07C 3718C39C */  ori        $t8, $t8, (0x4BC39C & 0xFFFF)
/* 1FC80 8001F080 35EF0020 */  ori        $t7, $t7, (0xED040020 & 0xFFFF)
/* 1FC84 8001F084 3C068017 */  lui        $a2, %hi(D_8016C510)
/* 1FC88 8001F088 3C078017 */  lui        $a3, %hi(D_8016C50C)
/* 1FC8C 8001F08C AC6F0000 */  sw         $t7, 0x0($v1)
/* 1FC90 8001F090 AC780004 */  sw         $t8, 0x4($v1)
/* 1FC94 8001F094 8FA40018 */  lw         $a0, 0x18($sp)
/* 1FC98 8001F098 24E7C50C */  addiu      $a3, $a3, %lo(D_8016C50C)
/* 1FC9C 8001F09C 0C003357 */  jal        func_8000CD5C
/* 1FCA0 8001F0A0 24C6C510 */   addiu     $a2, $a2, %lo(D_8016C510)
/* 1FCA4 8001F0A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FCA8 8001F0A8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1FCAC 8001F0AC 03E00008 */  jr         $ra
/* 1FCB0 8001F0B0 00000000 */   nop

glabel func_8001F0B4
/* 1FCB4 8001F0B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FCB8 8001F0B8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FCBC 8001F0BC 3C048017 */  lui        $a0, %hi(D_8016C508)
/* 1FCC0 8001F0C0 0C009974 */  jal        func_800265D0
/* 1FCC4 8001F0C4 2484C508 */   addiu     $a0, $a0, %lo(D_8016C508)
/* 1FCC8 8001F0C8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FCCC 8001F0CC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1FCD0 8001F0D0 03E00008 */  jr         $ra
/* 1FCD4 8001F0D4 00000000 */   nop

glabel func_8001F0D8
/* 1FCD8 8001F0D8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FCDC 8001F0DC AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FCE0 8001F0E0 3C048017 */  lui        $a0, %hi(D_8016C508)
/* 1FCE4 8001F0E4 3C058017 */  lui        $a1, %hi(D_8016C510)
/* 1FCE8 8001F0E8 3C068017 */  lui        $a2, %hi(D_8016C50C)
/* 1FCEC 8001F0EC 24C6C50C */  addiu      $a2, $a2, %lo(D_8016C50C)
/* 1FCF0 8001F0F0 24A5C510 */  addiu      $a1, $a1, %lo(D_8016C510)
/* 1FCF4 8001F0F4 0C00FB40 */  jal        func_8003ED00
/* 1FCF8 8001F0F8 2484C508 */   addiu     $a0, $a0, %lo(D_8016C508)
/* 1FCFC 8001F0FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FD00 8001F100 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1FD04 8001F104 03E00008 */  jr         $ra
/* 1FD08 8001F108 00000000 */   nop

glabel func_8001F10C
/* 1FD0C 8001F10C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FD10 8001F110 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FD14 8001F114 3C048017 */  lui        $a0, %hi(D_8016C508)
/* 1FD18 8001F118 3C058017 */  lui        $a1, %hi(D_8016C510)
/* 1FD1C 8001F11C 3C068017 */  lui        $a2, %hi(D_8016C50C)
/* 1FD20 8001F120 24C6C50C */  addiu      $a2, $a2, %lo(D_8016C50C)
/* 1FD24 8001F124 24A5C510 */  addiu      $a1, $a1, %lo(D_8016C510)
/* 1FD28 8001F128 0C009E1C */  jal        func_80027870
/* 1FD2C 8001F12C 2484C508 */   addiu     $a0, $a0, %lo(D_8016C508)
/* 1FD30 8001F130 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FD34 8001F134 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1FD38 8001F138 03E00008 */  jr         $ra
/* 1FD3C 8001F13C 00000000 */   nop

glabel func_8001F140
/* 1FD40 8001F140 03E00008 */  jr         $ra
/* 1FD44 8001F144 00000000 */   nop
/* 1FD48 8001F148 00000000 */  nop
/* 1FD4C 8001F14C 00000000 */  nop
