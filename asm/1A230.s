.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80019630
/* 1A230 80019630 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1A234 80019634 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1A238 80019638 AFB10018 */  sw         $s1, 0x18($sp)
/* 1A23C 8001963C AFB00014 */  sw         $s0, 0x14($sp)
/* 1A240 80019640 AFA40058 */  sw         $a0, 0x58($sp)
/* 1A244 80019644 3C058014 */  lui        $a1, %hi(D_8013FC80)
/* 1A248 80019648 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1A24C 8001964C 8CA5FC80 */  lw         $a1, %lo(D_8013FC80)($a1)
/* 1A250 80019650 27B10054 */  addiu      $s1, $sp, 0x54
/* 1A254 80019654 02202025 */  or         $a0, $s1, $zero
/* 1A258 80019658 AFAF0054 */  sw         $t7, 0x54($sp)
/* 1A25C 8001965C 0C006AE5 */  jal        func_8001AB94
/* 1A260 80019660 24A500FC */   addiu     $a1, $a1, 0xFC
/* 1A264 80019664 3C188014 */  lui        $t8, %hi(D_8013FF90)
/* 1A268 80019668 8318FF90 */  lb         $t8, %lo(D_8013FF90)($t8)
/* 1A26C 8001966C 24100005 */  addiu      $s0, $zero, 0x5
/* 1A270 80019670 3C058014 */  lui        $a1, %hi(D_8013FC84)
/* 1A274 80019674 56180006 */  bnel       $s0, $t8, .L80019690
/* 1A278 80019678 240400FF */   addiu     $a0, $zero, 0xFF
/* 1A27C 8001967C 8CA5FC84 */  lw         $a1, %lo(D_8013FC84)($a1)
/* 1A280 80019680 02202025 */  or         $a0, $s1, $zero
/* 1A284 80019684 0C006AE5 */  jal        func_8001AB94
/* 1A288 80019688 24A500FC */   addiu     $a1, $a1, 0xFC
/* 1A28C 8001968C 240400FF */  addiu      $a0, $zero, 0xFF
.L80019690:
/* 1A290 80019690 240500FF */  addiu      $a1, $zero, 0xFF
/* 1A294 80019694 240600FF */  addiu      $a2, $zero, 0xFF
/* 1A298 80019698 0C007DD7 */  jal        func_8001F75C
/* 1A29C 8001969C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1A2A0 800196A0 3C013FF0 */  lui        $at, (0x3FF00000 >> 16)
/* 1A2A4 800196A4 44816800 */  mtc1       $at, $f13
/* 1A2A8 800196A8 44806000 */  mtc1       $zero, $f12
/* 1A2AC 800196AC 0C007DC0 */  jal        func_8001F700
/* 1A2B0 800196B0 46206386 */   mov.d     $f14, $f12
/* 1A2B4 800196B4 3C038014 */  lui        $v1, %hi(D_8013FC88)
/* 1A2B8 800196B8 2463FC88 */  addiu      $v1, $v1, %lo(D_8013FC88)
/* 1A2BC 800196BC 94620004 */  lhu        $v0, 0x4($v1)
/* 1A2C0 800196C0 3C018009 */  lui        $at, %hi(D_8008B740)
/* 1A2C4 800196C4 3C0A8014 */  lui        $t2, %hi(D_8013FF90)
/* 1A2C8 800196C8 30590020 */  andi       $t9, $v0, 0x20
/* 1A2CC 800196CC 13200006 */  beqz       $t9, .L800196E8
/* 1A2D0 800196D0 3048FFDF */   andi      $t0, $v0, 0xFFDF
/* 1A2D4 800196D4 A4680004 */  sh         $t0, 0x4($v1)
/* 1A2D8 800196D8 AC20B740 */  sw         $zero, %lo(D_8008B740)($at)
/* 1A2DC 800196DC 3C018009 */  lui        $at, %hi(D_8008B760)
/* 1A2E0 800196E0 AC20B760 */  sw         $zero, %lo(D_8008B760)($at)
/* 1A2E4 800196E4 94620004 */  lhu        $v0, 0x4($v1)
.L800196E8:
/* 1A2E8 800196E8 30490002 */  andi       $t1, $v0, 0x2
/* 1A2EC 800196EC 11200090 */  beqz       $t1, .L80019930
/* 1A2F0 800196F0 3C198014 */   lui       $t9, %hi(D_8013FF90)
/* 1A2F4 800196F4 814AFF90 */  lb         $t2, %lo(D_8013FF90)($t2)
/* 1A2F8 800196F8 02202025 */  or         $a0, $s1, $zero
/* 1A2FC 800196FC 3C058014 */  lui        $a1, %hi(D_8013FC80)
/* 1A300 80019700 120A0034 */  beq        $s0, $t2, .L800197D4
/* 1A304 80019704 3C068014 */   lui       $a2, %hi(gPlayerLapCount)
/* 1A308 80019708 3C058014 */  lui        $a1, %hi(D_8013FC80)
/* 1A30C 8001970C 8CA5FC80 */  lw         $a1, %lo(D_8013FC80)($a1)
/* 1A310 80019710 3C068014 */  lui        $a2, %hi(gPlayerLapCount)
/* 1A314 80019714 24C6FC98 */  addiu      $a2, $a2, %lo(gPlayerLapCount)
/* 1A318 80019718 02202025 */  or         $a0, $s1, $zero
/* 1A31C 8001971C 0C006808 */  jal        func_8001A020
/* 1A320 80019720 24A50124 */   addiu     $a1, $a1, 0x124
/* 1A324 80019724 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A328 80019728 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
/* 1A32C 8001972C 02202025 */  or         $a0, $s1, $zero
/* 1A330 80019730 26050004 */  addiu      $a1, $s0, 0x4
/* 1A334 80019734 0C0069FF */  jal        func_8001A7FC
/* 1A338 80019738 02003025 */   or        $a2, $s0, $zero
/* 1A33C 8001973C 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A340 80019740 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
/* 1A344 80019744 02202025 */  or         $a0, $s1, $zero
/* 1A348 80019748 26050024 */  addiu      $a1, $s0, 0x24
/* 1A34C 8001974C 0C0069D4 */  jal        func_8001A750
/* 1A350 80019750 02003025 */   or        $a2, $s0, $zero
/* 1A354 80019754 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A358 80019758 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
/* 1A35C 8001975C 3C0C8014 */  lui        $t4, %hi(D_8013FF3C)
/* 1A360 80019760 920B011C */  lbu        $t3, 0x11C($s0)
/* 1A364 80019764 11600009 */  beqz       $t3, .L8001978C
/* 1A368 80019768 00000000 */   nop
/* 1A36C 8001976C 8D8CFF3C */  lw         $t4, %lo(D_8013FF3C)($t4)
/* 1A370 80019770 02202025 */  or         $a0, $s1, $zero
/* 1A374 80019774 15800005 */  bnez       $t4, .L8001978C
/* 1A378 80019778 00000000 */   nop
/* 1A37C 8001977C 0C006B19 */  jal        func_8001AC64
/* 1A380 80019780 26050110 */   addiu     $a1, $s0, 0x110
/* 1A384 80019784 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A388 80019788 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
.L8001978C:
/* 1A38C 8001978C 3C068014 */  lui        $a2, %hi(gPlayerLapCount)
/* 1A390 80019790 24C6FC98 */  addiu      $a2, $a2, %lo(gPlayerLapCount)
/* 1A394 80019794 02202025 */  or         $a0, $s1, $zero
/* 1A398 80019798 0C006B71 */  jal        func_8001ADC4
/* 1A39C 8001979C 26050138 */   addiu     $a1, $s0, 0x138
/* 1A3A0 800197A0 3C058014 */  lui        $a1, %hi(D_8013FC80)
/* 1A3A4 800197A4 8CA5FC80 */  lw         $a1, %lo(D_8013FC80)($a1)
/* 1A3A8 800197A8 02202025 */  or         $a0, $s1, $zero
/* 1A3AC 800197AC 0C006C01 */  jal        func_8001B004
/* 1A3B0 800197B0 24A50164 */   addiu     $a1, $a1, 0x164
/* 1A3B4 800197B4 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A3B8 800197B8 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
/* 1A3BC 800197BC 02202025 */  or         $a0, $s1, $zero
/* 1A3C0 800197C0 2605017C */  addiu      $a1, $s0, 0x17C
/* 1A3C4 800197C4 0C006CD7 */  jal        func_8001B35C
/* 1A3C8 800197C8 02003025 */   or        $a2, $s0, $zero
/* 1A3CC 800197CC 10000064 */  b          .L80019960
/* 1A3D0 800197D0 00000000 */   nop
.L800197D4:
/* 1A3D4 800197D4 8CA5FC80 */  lw         $a1, %lo(D_8013FC80)($a1)
/* 1A3D8 800197D8 24C6FC98 */  addiu      $a2, $a2, %lo(gPlayerLapCount)
/* 1A3DC 800197DC 0C006808 */  jal        func_8001A020
/* 1A3E0 800197E0 24A50124 */   addiu     $a1, $a1, 0x124
/* 1A3E4 800197E4 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A3E8 800197E8 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
/* 1A3EC 800197EC 02202025 */  or         $a0, $s1, $zero
/* 1A3F0 800197F0 26050004 */  addiu      $a1, $s0, 0x4
/* 1A3F4 800197F4 0C0069FF */  jal        func_8001A7FC
/* 1A3F8 800197F8 02003025 */   or        $a2, $s0, $zero
/* 1A3FC 800197FC 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A400 80019800 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
/* 1A404 80019804 02202025 */  or         $a0, $s1, $zero
/* 1A408 80019808 26050024 */  addiu      $a1, $s0, 0x24
/* 1A40C 8001980C 0C0069D4 */  jal        func_8001A750
/* 1A410 80019810 02003025 */   or        $a2, $s0, $zero
/* 1A414 80019814 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A418 80019818 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
/* 1A41C 8001981C 3C0E8014 */  lui        $t6, %hi(D_8013FF3C)
/* 1A420 80019820 920D011C */  lbu        $t5, 0x11C($s0)
/* 1A424 80019824 11A00009 */  beqz       $t5, .L8001984C
/* 1A428 80019828 00000000 */   nop
/* 1A42C 8001982C 8DCEFF3C */  lw         $t6, %lo(D_8013FF3C)($t6)
/* 1A430 80019830 02202025 */  or         $a0, $s1, $zero
/* 1A434 80019834 15C00005 */  bnez       $t6, .L8001984C
/* 1A438 80019838 00000000 */   nop
/* 1A43C 8001983C 0C006B19 */  jal        func_8001AC64
/* 1A440 80019840 26050110 */   addiu     $a1, $s0, 0x110
/* 1A444 80019844 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A448 80019848 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
.L8001984C:
/* 1A44C 8001984C 3C068014 */  lui        $a2, %hi(gPlayerLapCount)
/* 1A450 80019850 24C6FC98 */  addiu      $a2, $a2, %lo(gPlayerLapCount)
/* 1A454 80019854 02202025 */  or         $a0, $s1, $zero
/* 1A458 80019858 0C006B71 */  jal        func_8001ADC4
/* 1A45C 8001985C 26050138 */   addiu     $a1, $s0, 0x138
/* 1A460 80019860 3C108014 */  lui        $s0, %hi(D_8013FC80)
/* 1A464 80019864 8E10FC80 */  lw         $s0, %lo(D_8013FC80)($s0)
/* 1A468 80019868 02202025 */  or         $a0, $s1, $zero
/* 1A46C 8001986C 2605017C */  addiu      $a1, $s0, 0x17C
/* 1A470 80019870 0C006CD7 */  jal        func_8001B35C
/* 1A474 80019874 02003025 */   or        $a2, $s0, $zero
/* 1A478 80019878 3C058014 */  lui        $a1, %hi(D_8013FC84)
/* 1A47C 8001987C 8CA5FC84 */  lw         $a1, %lo(D_8013FC84)($a1)
/* 1A480 80019880 3C068014 */  lui        $a2, %hi(D_8013FCEC)
/* 1A484 80019884 24C6FCEC */  addiu      $a2, $a2, %lo(D_8013FCEC)
/* 1A488 80019888 02202025 */  or         $a0, $s1, $zero
/* 1A48C 8001988C 0C006808 */  jal        func_8001A020
/* 1A490 80019890 24A50124 */   addiu     $a1, $a1, 0x124
/* 1A494 80019894 3C108014 */  lui        $s0, %hi(D_8013FC84)
/* 1A498 80019898 8E10FC84 */  lw         $s0, %lo(D_8013FC84)($s0)
/* 1A49C 8001989C 02202025 */  or         $a0, $s1, $zero
/* 1A4A0 800198A0 26050004 */  addiu      $a1, $s0, 0x4
/* 1A4A4 800198A4 0C0069FF */  jal        func_8001A7FC
/* 1A4A8 800198A8 02003025 */   or        $a2, $s0, $zero
/* 1A4AC 800198AC 3C108014 */  lui        $s0, %hi(D_8013FC84)
/* 1A4B0 800198B0 8E10FC84 */  lw         $s0, %lo(D_8013FC84)($s0)
/* 1A4B4 800198B4 02202025 */  or         $a0, $s1, $zero
/* 1A4B8 800198B8 26050024 */  addiu      $a1, $s0, 0x24
/* 1A4BC 800198BC 0C0069D4 */  jal        func_8001A750
/* 1A4C0 800198C0 02003025 */   or        $a2, $s0, $zero
/* 1A4C4 800198C4 3C108014 */  lui        $s0, %hi(D_8013FC84)
/* 1A4C8 800198C8 8E10FC84 */  lw         $s0, %lo(D_8013FC84)($s0)
/* 1A4CC 800198CC 3C188014 */  lui        $t8, %hi(D_8013FF40)
/* 1A4D0 800198D0 920F011C */  lbu        $t7, 0x11C($s0)
/* 1A4D4 800198D4 11E00009 */  beqz       $t7, .L800198FC
/* 1A4D8 800198D8 00000000 */   nop
/* 1A4DC 800198DC 8F18FF40 */  lw         $t8, %lo(D_8013FF40)($t8)
/* 1A4E0 800198E0 02202025 */  or         $a0, $s1, $zero
/* 1A4E4 800198E4 17000005 */  bnez       $t8, .L800198FC
/* 1A4E8 800198E8 00000000 */   nop
/* 1A4EC 800198EC 0C006B19 */  jal        func_8001AC64
/* 1A4F0 800198F0 26050110 */   addiu     $a1, $s0, 0x110
/* 1A4F4 800198F4 3C108014 */  lui        $s0, %hi(D_8013FC84)
/* 1A4F8 800198F8 8E10FC84 */  lw         $s0, %lo(D_8013FC84)($s0)
.L800198FC:
/* 1A4FC 800198FC 3C068014 */  lui        $a2, %hi(D_8013FCEC)
/* 1A500 80019900 24C6FCEC */  addiu      $a2, $a2, %lo(D_8013FCEC)
/* 1A504 80019904 02202025 */  or         $a0, $s1, $zero
/* 1A508 80019908 0C006B71 */  jal        func_8001ADC4
/* 1A50C 8001990C 26050138 */   addiu     $a1, $s0, 0x138
/* 1A510 80019910 3C108014 */  lui        $s0, %hi(D_8013FC84)
/* 1A514 80019914 8E10FC84 */  lw         $s0, %lo(D_8013FC84)($s0)
/* 1A518 80019918 02202025 */  or         $a0, $s1, $zero
/* 1A51C 8001991C 2605017C */  addiu      $a1, $s0, 0x17C
/* 1A520 80019920 0C006CD7 */  jal        func_8001B35C
/* 1A524 80019924 02003025 */   or        $a2, $s0, $zero
/* 1A528 80019928 1000000D */  b          .L80019960
/* 1A52C 8001992C 00000000 */   nop
.L80019930:
/* 1A530 80019930 8339FF90 */  lb         $t9, %lo(D_8013FF90)($t9)
/* 1A534 80019934 24010003 */  addiu      $at, $zero, 0x3
/* 1A538 80019938 3C028014 */  lui        $v0, %hi(D_8013FF88)
/* 1A53C 8001993C 17210008 */  bne        $t9, $at, .L80019960
/* 1A540 80019940 00000000 */   nop
/* 1A544 80019944 8C42FF88 */  lw         $v0, %lo(D_8013FF88)($v0)
/* 1A548 80019948 12020003 */  beq        $s0, $v0, .L80019958
/* 1A54C 8001994C 00000000 */   nop
/* 1A550 80019950 14400003 */  bnez       $v0, .L80019960
/* 1A554 80019954 00000000 */   nop
.L80019958:
/* 1A558 80019958 0C006EC8 */  jal        func_8001BB20
/* 1A55C 8001995C 02202025 */   or        $a0, $s1, $zero
.L80019960:
/* 1A560 80019960 3C058009 */  lui        $a1, %hi(D_8008B724)
/* 1A564 80019964 24A5B724 */  addiu      $a1, $a1, %lo(D_8008B724)
/* 1A568 80019968 0C00841E */  jal        func_80021078
/* 1A56C 8001996C 02202025 */   or        $a0, $s1, $zero
/* 1A570 80019970 3C058009 */  lui        $a1, %hi(D_8008B744)
/* 1A574 80019974 24A5B744 */  addiu      $a1, $a1, %lo(D_8008B744)
/* 1A578 80019978 0C00841E */  jal        func_80021078
/* 1A57C 8001997C 02202025 */   or        $a0, $s1, $zero
/* 1A580 80019980 8FA80054 */  lw         $t0, 0x54($sp)
/* 1A584 80019984 8FA90058 */  lw         $t1, 0x58($sp)
/* 1A588 80019988 AD280000 */  sw         $t0, 0x0($t1)
/* 1A58C 8001998C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1A590 80019990 8FB10018 */  lw         $s1, 0x18($sp)
/* 1A594 80019994 8FB00014 */  lw         $s0, 0x14($sp)
/* 1A598 80019998 03E00008 */  jr         $ra
/* 1A59C 8001999C 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_800199A0
/* 1A5A0 800199A0 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1A5A4 800199A4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1A5A8 800199A8 AFA40058 */  sw         $a0, 0x58($sp)
/* 1A5AC 800199AC 3C078014 */  lui        $a3, %hi(D_8013FC94)
/* 1A5B0 800199B0 8CE7FC94 */  lw         $a3, %lo(D_8013FC94)($a3)
/* 1A5B4 800199B4 27A40050 */  addiu      $a0, $sp, 0x50
/* 1A5B8 800199B8 27A5004C */  addiu      $a1, $sp, 0x4C
/* 1A5BC 800199BC 0C00588E */  jal        func_80016238
/* 1A5C0 800199C0 27A60048 */   addiu     $a2, $sp, 0x48
/* 1A5C4 800199C4 3C0E8014 */  lui        $t6, %hi(D_8013FC8C)
/* 1A5C8 800199C8 95CEFC8C */  lhu        $t6, %lo(D_8013FC8C)($t6)
/* 1A5CC 800199CC 240400FF */  addiu      $a0, $zero, 0xFF
/* 1A5D0 800199D0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1A5D4 800199D4 31CF0001 */  andi       $t7, $t6, 0x1
/* 1A5D8 800199D8 11E00008 */  beqz       $t7, .L800199FC
/* 1A5DC 800199DC 240600FF */   addiu     $a2, $zero, 0xFF
/* 1A5E0 800199E0 240400B5 */  addiu      $a0, $zero, 0xB5
/* 1A5E4 800199E4 24050060 */  addiu      $a1, $zero, 0x60
/* 1A5E8 800199E8 24060014 */  addiu      $a2, $zero, 0x14
/* 1A5EC 800199EC 0C007DD7 */  jal        func_8001F75C
/* 1A5F0 800199F0 240700FF */   addiu     $a3, $zero, 0xFF
/* 1A5F4 800199F4 10000004 */  b          .L80019A08
/* 1A5F8 800199F8 8FB80058 */   lw        $t8, 0x58($sp)
.L800199FC:
/* 1A5FC 800199FC 0C007DD7 */  jal        func_8001F75C
/* 1A600 80019A00 240700FF */   addiu     $a3, $zero, 0xFF
/* 1A604 80019A04 8FB80058 */  lw         $t8, 0x58($sp)
.L80019A08:
/* 1A608 80019A08 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 1A60C 80019A0C 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1A610 80019A10 8F190000 */  lw         $t9, 0x0($t8)
/* 1A614 80019A14 240EFFFF */  addiu      $t6, $zero, -0x1
/* 1A618 80019A18 3C088014 */  lui        $t0, %hi(D_8013FBD8)
/* 1A61C 80019A1C AFB90054 */  sw         $t9, 0x54($sp)
/* 1A620 80019A20 27290008 */  addiu      $t1, $t9, 0x8
/* 1A624 80019A24 AFA90054 */  sw         $t1, 0x54($sp)
/* 1A628 80019A28 AF200004 */  sw         $zero, 0x4($t9)
/* 1A62C 80019A2C AF2A0000 */  sw         $t2, 0x0($t9)
/* 1A630 80019A30 8FAB0054 */  lw         $t3, 0x54($sp)
/* 1A634 80019A34 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1A638 80019A38 3C090050 */  lui        $t1, (0x504240 >> 16)
/* 1A63C 80019A3C 256C0008 */  addiu      $t4, $t3, 0x8
/* 1A640 80019A40 AFAC0054 */  sw         $t4, 0x54($sp)
/* 1A644 80019A44 AD6E0004 */  sw         $t6, 0x4($t3)
/* 1A648 80019A48 AD6D0000 */  sw         $t5, 0x0($t3)
/* 1A64C 80019A4C 8FAF0054 */  lw         $t7, 0x54($sp)
/* 1A650 80019A50 35294240 */  ori        $t1, $t1, (0x504240 & 0xFFFF)
/* 1A654 80019A54 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1A658 80019A58 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A65C 80019A5C AFB80054 */  sw         $t8, 0x54($sp)
/* 1A660 80019A60 2508FBD8 */  addiu      $t0, $t0, %lo(D_8013FBD8)
/* 1A664 80019A64 ADE90004 */  sw         $t1, 0x4($t7)
/* 1A668 80019A68 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A66C 80019A6C 95050004 */  lhu        $a1, 0x4($t0)
/* 1A670 80019A70 0C007DAD */  jal        func_8001F6B4
/* 1A674 80019A74 95040002 */   lhu       $a0, 0x2($t0)
/* 1A678 80019A78 3C088014 */  lui        $t0, %hi(D_8013FBD8)
/* 1A67C 80019A7C 2508FBD8 */  addiu      $t0, $t0, %lo(D_8013FBD8)
/* 1A680 80019A80 91020000 */  lbu        $v0, 0x0($t0)
/* 1A684 80019A84 3C058009 */  lui        $a1, %hi(D_80096BE4)
/* 1A688 80019A88 24A56BE4 */  addiu      $a1, $a1, %lo(D_80096BE4)
/* 1A68C 80019A8C 10400006 */  beqz       $v0, .L80019AA8
/* 1A690 80019A90 27A4003C */   addiu     $a0, $sp, 0x3C
/* 1A694 80019A94 24010001 */  addiu      $at, $zero, 0x1
/* 1A698 80019A98 1041001F */  beq        $v0, $at, .L80019B18
/* 1A69C 80019A9C 27A4003C */   addiu     $a0, $sp, 0x3C
/* 1A6A0 80019AA0 10000035 */  b          .L80019B78
/* 1A6A4 80019AA4 8FAD0054 */   lw        $t5, 0x54($sp)
.L80019AA8:
/* 1A6A8 80019AA8 8FAA0048 */  lw         $t2, 0x48($sp)
/* 1A6AC 80019AAC 8FA60050 */  lw         $a2, 0x50($sp)
/* 1A6B0 80019AB0 8FA7004C */  lw         $a3, 0x4C($sp)
/* 1A6B4 80019AB4 0C01AE81 */  jal        func_8006BA04
/* 1A6B8 80019AB8 AFAA0010 */   sw        $t2, 0x10($sp)
/* 1A6BC 80019ABC 3C068009 */  lui        $a2, %hi(D_8008C8CC)
/* 1A6C0 80019AC0 24C6C8CC */  addiu      $a2, $a2, %lo(D_8008C8CC)
/* 1A6C4 80019AC4 27A40054 */  addiu      $a0, $sp, 0x54
/* 1A6C8 80019AC8 0C007DE4 */  jal        func_8001F790
/* 1A6CC 80019ACC 27A5003C */   addiu     $a1, $sp, 0x3C
/* 1A6D0 80019AD0 3C088014 */  lui        $t0, %hi(D_8013FBD8)
/* 1A6D4 80019AD4 2508FBD8 */  addiu      $t0, $t0, %lo(D_8013FBD8)
/* 1A6D8 80019AD8 8D070008 */  lw         $a3, 0x8($t0)
/* 1A6DC 80019ADC 27A40054 */  addiu      $a0, $sp, 0x54
/* 1A6E0 80019AE0 50E00025 */  beql       $a3, $zero, .L80019B78
/* 1A6E4 80019AE4 8FAD0054 */   lw        $t5, 0x54($sp)
/* 1A6E8 80019AE8 95050002 */  lhu        $a1, 0x2($t0)
/* 1A6EC 80019AEC 95060004 */  lhu        $a2, 0x4($t0)
/* 1A6F0 80019AF0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A6F4 80019AF4 24A5FFC1 */  addiu      $a1, $a1, -0x3F
/* 1A6F8 80019AF8 24C60007 */  addiu      $a2, $a2, 0x7
/* 1A6FC 80019AFC 30CCFFFF */  andi       $t4, $a2, 0xFFFF
/* 1A700 80019B00 30ABFFFF */  andi       $t3, $a1, 0xFFFF
/* 1A704 80019B04 01602825 */  or         $a1, $t3, $zero
/* 1A708 80019B08 0C006743 */  jal        func_80019D0C
/* 1A70C 80019B0C 01803025 */   or        $a2, $t4, $zero
/* 1A710 80019B10 10000019 */  b          .L80019B78
/* 1A714 80019B14 8FAD0054 */   lw        $t5, 0x54($sp)
.L80019B18:
/* 1A718 80019B18 3C058009 */  lui        $a1, %hi(D_80096BF4)
/* 1A71C 80019B1C 24A56BF4 */  addiu      $a1, $a1, %lo(D_80096BF4)
/* 1A720 80019B20 8FA60050 */  lw         $a2, 0x50($sp)
/* 1A724 80019B24 0C01AE81 */  jal        func_8006BA04
/* 1A728 80019B28 8FA7004C */   lw        $a3, 0x4C($sp)
/* 1A72C 80019B2C 3C068009 */  lui        $a2, %hi(D_8008C8CC)
/* 1A730 80019B30 24C6C8CC */  addiu      $a2, $a2, %lo(D_8008C8CC)
/* 1A734 80019B34 27A40054 */  addiu      $a0, $sp, 0x54
/* 1A738 80019B38 0C007DE4 */  jal        func_8001F790
/* 1A73C 80019B3C 27A5003C */   addiu     $a1, $sp, 0x3C
/* 1A740 80019B40 00002025 */  or         $a0, $zero, $zero
/* 1A744 80019B44 0C007DB2 */  jal        func_8001F6C8
/* 1A748 80019B48 24050008 */   addiu     $a1, $zero, 0x8
/* 1A74C 80019B4C 3C058009 */  lui        $a1, %hi(D_80096C00)
/* 1A750 80019B50 24A56C00 */  addiu      $a1, $a1, %lo(D_80096C00)
/* 1A754 80019B54 27A40034 */  addiu      $a0, $sp, 0x34
/* 1A758 80019B58 0C01AE81 */  jal        func_8006BA04
/* 1A75C 80019B5C 8FA60048 */   lw        $a2, 0x48($sp)
/* 1A760 80019B60 3C068009 */  lui        $a2, %hi(D_8008C8D4)
/* 1A764 80019B64 24C6C8D4 */  addiu      $a2, $a2, %lo(D_8008C8D4)
/* 1A768 80019B68 27A40054 */  addiu      $a0, $sp, 0x54
/* 1A76C 80019B6C 0C007DE4 */  jal        func_8001F790
/* 1A770 80019B70 27A50034 */   addiu     $a1, $sp, 0x34
/* 1A774 80019B74 8FAD0054 */  lw         $t5, 0x54($sp)
.L80019B78:
/* 1A778 80019B78 8FAE0058 */  lw         $t6, 0x58($sp)
/* 1A77C 80019B7C ADCD0000 */  sw         $t5, 0x0($t6)
/* 1A780 80019B80 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1A784 80019B84 27BD0058 */  addiu      $sp, $sp, 0x58
/* 1A788 80019B88 03E00008 */  jr         $ra
/* 1A78C 80019B8C 00000000 */   nop

glabel func_80019B90
/* 1A790 80019B90 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1A794 80019B94 AFBF002C */  sw         $ra, 0x2C($sp)
/* 1A798 80019B98 AFB30028 */  sw         $s3, 0x28($sp)
/* 1A79C 80019B9C AFB20024 */  sw         $s2, 0x24($sp)
/* 1A7A0 80019BA0 AFB10020 */  sw         $s1, 0x20($sp)
/* 1A7A4 80019BA4 AFB0001C */  sw         $s0, 0x1C($sp)
/* 1A7A8 80019BA8 AFA40050 */  sw         $a0, 0x50($sp)
/* 1A7AC 80019BAC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1A7B0 80019BB0 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1A7B4 80019BB4 3C0DB900 */  lui        $t5, (0xB900031D >> 16)
/* 1A7B8 80019BB8 AFAF0048 */  sw         $t7, 0x48($sp)
/* 1A7BC 80019BBC 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A7C0 80019BC0 AFB80048 */  sw         $t8, 0x48($sp)
/* 1A7C4 80019BC4 ADE00004 */  sw         $zero, 0x4($t7)
/* 1A7C8 80019BC8 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A7CC 80019BCC 8FAB0048 */  lw         $t3, 0x48($sp)
/* 1A7D0 80019BD0 3C0E0040 */  lui        $t6, (0x404240 >> 16)
/* 1A7D4 80019BD4 35CE4240 */  ori        $t6, $t6, (0x404240 & 0xFFFF)
/* 1A7D8 80019BD8 256C0008 */  addiu      $t4, $t3, 0x8
/* 1A7DC 80019BDC AFAC0048 */  sw         $t4, 0x48($sp)
/* 1A7E0 80019BE0 35AD031D */  ori        $t5, $t5, (0xB900031D & 0xFFFF)
/* 1A7E4 80019BE4 AD6D0000 */  sw         $t5, 0x0($t3)
/* 1A7E8 80019BE8 AD6E0004 */  sw         $t6, 0x4($t3)
/* 1A7EC 80019BEC 8FAF0048 */  lw         $t7, 0x48($sp)
/* 1A7F0 80019BF0 3C0BFF2F */  lui        $t3, (0xFF2FFFFF >> 16)
/* 1A7F4 80019BF4 3C19FC11 */  lui        $t9, (0xFC119623 >> 16)
/* 1A7F8 80019BF8 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A7FC 80019BFC AFB80048 */  sw         $t8, 0x48($sp)
/* 1A800 80019C00 37399623 */  ori        $t9, $t9, (0xFC119623 & 0xFFFF)
/* 1A804 80019C04 356BFFFF */  ori        $t3, $t3, (0xFF2FFFFF & 0xFFFF)
/* 1A808 80019C08 ADEB0004 */  sw         $t3, 0x4($t7)
/* 1A80C 80019C0C ADF90000 */  sw         $t9, 0x0($t7)
/* 1A810 80019C10 8FAC0048 */  lw         $t4, 0x48($sp)
/* 1A814 80019C14 3C11FA00 */  lui        $s1, (0xFA000000 >> 16)
/* 1A818 80019C18 240EFFFF */  addiu      $t6, $zero, -0x1
/* 1A81C 80019C1C 258D0008 */  addiu      $t5, $t4, 0x8
/* 1A820 80019C20 AFAD0048 */  sw         $t5, 0x48($sp)
/* 1A824 80019C24 3C0A8014 */  lui        $t2, %hi(D_8013FBE8)
/* 1A828 80019C28 AD8E0004 */  sw         $t6, 0x4($t4)
/* 1A82C 80019C2C AD910000 */  sw         $s1, 0x0($t4)
/* 1A830 80019C30 254AFBE8 */  addiu      $t2, $t2, %lo(D_8013FBE8)
/* 1A834 80019C34 27B20048 */  addiu      $s2, $sp, 0x48
/* 1A838 80019C38 02402025 */  or         $a0, $s2, $zero
/* 1A83C 80019C3C 95450000 */  lhu        $a1, 0x0($t2)
/* 1A840 80019C40 95460002 */  lhu        $a2, 0x2($t2)
/* 1A844 80019C44 8D470004 */  lw         $a3, 0x4($t2)
/* 1A848 80019C48 0C006743 */  jal        func_80019D0C
/* 1A84C 80019C4C AFA00010 */   sw        $zero, 0x10($sp)
/* 1A850 80019C50 3C028014 */  lui        $v0, %hi(gPlayerRacePos)
/* 1A854 80019C54 9042FC91 */  lbu        $v0, %lo(gPlayerRacePos)($v0)
/* 1A858 80019C58 3C188014 */  lui        $t8, %hi(D_8013FBE8)
/* 1A85C 80019C5C 2718FBE8 */  addiu      $t8, $t8, %lo(D_8013FBE8)
/* 1A860 80019C60 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1A864 80019C64 0440001F */  bltz       $v0, .L80019CE4
/* 1A868 80019C68 00027880 */   sll       $t7, $v0, 2
/* 1A86C 80019C6C 01E27823 */  subu       $t7, $t7, $v0
/* 1A870 80019C70 000F7880 */  sll        $t7, $t7, 2
/* 1A874 80019C74 3C138014 */  lui        $s3, %hi(D_8013FBE8)
/* 1A878 80019C78 2673FBE8 */  addiu      $s3, $s3, %lo(D_8013FBE8)
/* 1A87C 80019C7C 01F88021 */  addu       $s0, $t7, $t8
/* 1A880 80019C80 8FA20048 */  lw         $v0, 0x48($sp)
.L80019C84:
/* 1A884 80019C84 02402025 */  or         $a0, $s2, $zero
/* 1A888 80019C88 244B0008 */  addiu      $t3, $v0, 0x8
/* 1A88C 80019C8C AFAB0048 */  sw         $t3, 0x48($sp)
/* 1A890 80019C90 AC510000 */  sw         $s1, 0x0($v0)
/* 1A894 80019C94 920F000C */  lbu        $t7, 0xC($s0)
/* 1A898 80019C98 920D000F */  lbu        $t5, 0xF($s0)
/* 1A89C 80019C9C 920C000D */  lbu        $t4, 0xD($s0)
/* 1A8A0 80019CA0 000FC600 */  sll        $t8, $t7, 24
/* 1A8A4 80019CA4 01B8C825 */  or         $t9, $t5, $t8
/* 1A8A8 80019CA8 9218000E */  lbu        $t8, 0xE($s0)
/* 1A8AC 80019CAC 000C7400 */  sll        $t6, $t4, 16
/* 1A8B0 80019CB0 032E7825 */  or         $t7, $t9, $t6
/* 1A8B4 80019CB4 00185A00 */  sll        $t3, $t8, 8
/* 1A8B8 80019CB8 01EB6025 */  or         $t4, $t7, $t3
/* 1A8BC 80019CBC AC4C0004 */  sw         $t4, 0x4($v0)
/* 1A8C0 80019CC0 AFA00010 */  sw         $zero, 0x10($sp)
/* 1A8C4 80019CC4 8E070010 */  lw         $a3, 0x10($s0)
/* 1A8C8 80019CC8 9606000A */  lhu        $a2, 0xA($s0)
/* 1A8CC 80019CCC 0C006743 */  jal        func_80019D0C
/* 1A8D0 80019CD0 96050008 */   lhu       $a1, 0x8($s0)
/* 1A8D4 80019CD4 2610FFF4 */  addiu      $s0, $s0, -0xC
/* 1A8D8 80019CD8 0213082B */  sltu       $at, $s0, $s3
/* 1A8DC 80019CDC 5020FFE9 */  beql       $at, $zero, .L80019C84
/* 1A8E0 80019CE0 8FA20048 */   lw        $v0, 0x48($sp)
.L80019CE4:
/* 1A8E4 80019CE4 8FB90048 */  lw         $t9, 0x48($sp)
/* 1A8E8 80019CE8 8FAE0050 */  lw         $t6, 0x50($sp)
/* 1A8EC 80019CEC ADD90000 */  sw         $t9, 0x0($t6)
/* 1A8F0 80019CF0 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1A8F4 80019CF4 8FB30028 */  lw         $s3, 0x28($sp)
/* 1A8F8 80019CF8 8FB20024 */  lw         $s2, 0x24($sp)
/* 1A8FC 80019CFC 8FB10020 */  lw         $s1, 0x20($sp)
/* 1A900 80019D00 8FB0001C */  lw         $s0, 0x1C($sp)
/* 1A904 80019D04 03E00008 */  jr         $ra
/* 1A908 80019D08 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80019D0C
/* 1A90C 80019D0C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 1A910 80019D10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1A914 80019D14 AFA40070 */  sw         $a0, 0x70($sp)
/* 1A918 80019D18 AFA50074 */  sw         $a1, 0x74($sp)
/* 1A91C 80019D1C AFA60078 */  sw         $a2, 0x78($sp)
/* 1A920 80019D20 84EE000A */  lh         $t6, 0xA($a3)
/* 1A924 80019D24 8C990000 */  lw         $t9, 0x0($a0)
/* 1A928 80019D28 30CBFFFF */  andi       $t3, $a2, 0xFFFF
/* 1A92C 80019D2C 84F80008 */  lh         $t8, 0x8($a3)
/* 1A930 80019D30 016E6821 */  addu       $t5, $t3, $t6
/* 1A934 80019D34 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1A938 80019D38 272E0008 */  addiu      $t6, $t9, 0x8
/* 1A93C 80019D3C AFAE006C */  sw         $t6, 0x6C($sp)
/* 1A940 80019D40 30AAFFFF */  andi       $t2, $a1, 0xFFFF
/* 1A944 80019D44 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 1A948 80019D48 AF2F0000 */  sw         $t7, 0x0($t9)
/* 1A94C 80019D4C AF200004 */  sw         $zero, 0x4($t9)
/* 1A950 80019D50 01586021 */  addu       $t4, $t2, $t8
/* 1A954 80019D54 8FB8006C */  lw         $t8, 0x6C($sp)
/* 1A958 80019D58 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
/* 1A95C 80019D5C 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
/* 1A960 80019D60 27190008 */  addiu      $t9, $t8, 0x8
/* 1A964 80019D64 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1A968 80019D68 AF000004 */  sw         $zero, 0x4($t8)
/* 1A96C 80019D6C AF0E0000 */  sw         $t6, 0x0($t8)
/* 1A970 80019D70 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1A974 80019D74 3C0E001F */  lui        $t6, (0x1F3205 >> 16)
/* 1A978 80019D78 35CE3205 */  ori        $t6, $t6, (0x1F3205 & 0xFFFF)
/* 1A97C 80019D7C 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A980 80019D80 AFB8006C */  sw         $t8, 0x6C($sp)
/* 1A984 80019D84 3C19B600 */  lui        $t9, (0xB6000000 >> 16)
/* 1A988 80019D88 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A98C 80019D8C ADEE0004 */  sw         $t6, 0x4($t7)
/* 1A990 80019D90 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1A994 80019D94 240E2000 */  addiu      $t6, $zero, 0x2000
/* 1A998 80019D98 3C19B700 */  lui        $t9, (0xB7000000 >> 16)
/* 1A99C 80019D9C 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A9A0 80019DA0 AFB8006C */  sw         $t8, 0x6C($sp)
/* 1A9A4 80019DA4 ADEE0004 */  sw         $t6, 0x4($t7)
/* 1A9A8 80019DA8 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A9AC 80019DAC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1A9B0 80019DB0 3C19BB00 */  lui        $t9, (0xBB000001 >> 16)
/* 1A9B4 80019DB4 3C0E8000 */  lui        $t6, (0x80008000 >> 16)
/* 1A9B8 80019DB8 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A9BC 80019DBC AFB8006C */  sw         $t8, 0x6C($sp)
/* 1A9C0 80019DC0 35CE8000 */  ori        $t6, $t6, (0x80008000 & 0xFFFF)
/* 1A9C4 80019DC4 37390001 */  ori        $t9, $t9, (0xBB000001 & 0xFFFF)
/* 1A9C8 80019DC8 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A9CC 80019DCC ADEE0004 */  sw         $t6, 0x4($t7)
/* 1A9D0 80019DD0 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1A9D4 80019DD4 3C19BA00 */  lui        $t9, (0xBA000E02 >> 16)
/* 1A9D8 80019DD8 37390E02 */  ori        $t9, $t9, (0xBA000E02 & 0xFFFF)
/* 1A9DC 80019DDC 25F80008 */  addiu      $t8, $t7, 0x8
/* 1A9E0 80019DE0 AFB8006C */  sw         $t8, 0x6C($sp)
/* 1A9E4 80019DE4 ADE00004 */  sw         $zero, 0x4($t7)
/* 1A9E8 80019DE8 ADF90000 */  sw         $t9, 0x0($t7)
/* 1A9EC 80019DEC 8FAE006C */  lw         $t6, 0x6C($sp)
/* 1A9F0 80019DF0 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
/* 1A9F4 80019DF4 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
/* 1A9F8 80019DF8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1A9FC 80019DFC AFAF006C */  sw         $t7, 0x6C($sp)
/* 1AA00 80019E00 ADC00004 */  sw         $zero, 0x4($t6)
/* 1AA04 80019E04 ADD80000 */  sw         $t8, 0x0($t6)
/* 1AA08 80019E08 8FB9006C */  lw         $t9, 0x6C($sp)
/* 1AA0C 80019E0C 3C18FF2F */  lui        $t8, (0xFF2FFFFF >> 16)
/* 1AA10 80019E10 3C0FFC11 */  lui        $t7, (0xFC119623 >> 16)
/* 1AA14 80019E14 272E0008 */  addiu      $t6, $t9, 0x8
/* 1AA18 80019E18 AFAE006C */  sw         $t6, 0x6C($sp)
/* 1AA1C 80019E1C 35EF9623 */  ori        $t7, $t7, (0xFC119623 & 0xFFFF)
/* 1AA20 80019E20 3718FFFF */  ori        $t8, $t8, (0xFF2FFFFF & 0xFFFF)
/* 1AA24 80019E24 AF380004 */  sw         $t8, 0x4($t9)
/* 1AA28 80019E28 AF2F0000 */  sw         $t7, 0x0($t9)
/* 1AA2C 80019E2C 8FB9006C */  lw         $t9, 0x6C($sp)
/* 1AA30 80019E30 3C0FB900 */  lui        $t7, (0xB9000002 >> 16)
/* 1AA34 80019E34 35EF0002 */  ori        $t7, $t7, (0xB9000002 & 0xFFFF)
/* 1AA38 80019E38 272E0008 */  addiu      $t6, $t9, 0x8
/* 1AA3C 80019E3C AFAE006C */  sw         $t6, 0x6C($sp)
/* 1AA40 80019E40 AF200004 */  sw         $zero, 0x4($t9)
/* 1AA44 80019E44 AF2F0000 */  sw         $t7, 0x0($t9)
/* 1AA48 80019E48 8FB8006C */  lw         $t8, 0x6C($sp)
/* 1AA4C 80019E4C 3C0EBA00 */  lui        $t6, (0xBA000402 >> 16)
/* 1AA50 80019E50 35CE0402 */  ori        $t6, $t6, (0xBA000402 & 0xFFFF)
/* 1AA54 80019E54 27190008 */  addiu      $t9, $t8, 0x8
/* 1AA58 80019E58 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1AA5C 80019E5C 240F0030 */  addiu      $t7, $zero, 0x30
/* 1AA60 80019E60 AF0F0004 */  sw         $t7, 0x4($t8)
/* 1AA64 80019E64 AF0E0000 */  sw         $t6, 0x0($t8)
/* 1AA68 80019E68 A7AD0068 */  sh         $t5, 0x68($sp)
/* 1AA6C 80019E6C A7AC006A */  sh         $t4, 0x6A($sp)
/* 1AA70 80019E70 AFAB001C */  sw         $t3, 0x1C($sp)
/* 1AA74 80019E74 AFAA0020 */  sw         $t2, 0x20($sp)
/* 1AA78 80019E78 AFA7007C */  sw         $a3, 0x7C($sp)
/* 1AA7C 80019E7C 00E02825 */  or         $a1, $a3, $zero
/* 1AA80 80019E80 0C006D63 */  jal        func_8001B58C
/* 1AA84 80019E84 27A4006C */   addiu     $a0, $sp, 0x6C
/* 1AA88 80019E88 8FB80080 */  lw         $t8, 0x80($sp)
/* 1AA8C 80019E8C 8FA7007C */  lw         $a3, 0x7C($sp)
/* 1AA90 80019E90 8FAA0020 */  lw         $t2, 0x20($sp)
/* 1AA94 80019E94 8FAB001C */  lw         $t3, 0x1C($sp)
/* 1AA98 80019E98 97AC006A */  lhu        $t4, 0x6A($sp)
/* 1AA9C 80019E9C 1300002C */  beqz       $t8, .L80019F50
/* 1AAA0 80019EA0 97AD0068 */   lhu       $t5, 0x68($sp)
/* 1AAA4 80019EA4 8FA2006C */  lw         $v0, 0x6C($sp)
/* 1AAA8 80019EA8 000C7880 */  sll        $t7, $t4, 2
/* 1AAAC 80019EAC 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 1AAB0 80019EB0 0018CB00 */  sll        $t9, $t8, 12
/* 1AAB4 80019EB4 244E0008 */  addiu      $t6, $v0, 0x8
/* 1AAB8 80019EB8 AFAE006C */  sw         $t6, 0x6C($sp)
/* 1AABC 80019EBC 000D7880 */  sll        $t7, $t5, 2
/* 1AAC0 80019EC0 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 1AAC4 80019EC4 03217025 */  or         $t6, $t9, $at
/* 1AAC8 80019EC8 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 1AACC 80019ECC 01D8C825 */  or         $t9, $t6, $t8
/* 1AAD0 80019ED0 000A7880 */  sll        $t7, $t2, 2
/* 1AAD4 80019ED4 31EE0FFF */  andi       $t6, $t7, 0xFFF
/* 1AAD8 80019ED8 AC590000 */  sw         $t9, 0x0($v0)
/* 1AADC 80019EDC 000BC880 */  sll        $t9, $t3, 2
/* 1AAE0 80019EE0 332F0FFF */  andi       $t7, $t9, 0xFFF
/* 1AAE4 80019EE4 000EC300 */  sll        $t8, $t6, 12
/* 1AAE8 80019EE8 030F7025 */  or         $t6, $t8, $t7
/* 1AAEC 80019EEC AC4E0004 */  sw         $t6, 0x4($v0)
/* 1AAF0 80019EF0 8FA3006C */  lw         $v1, 0x6C($sp)
/* 1AAF4 80019EF4 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 1AAF8 80019EF8 24780008 */  addiu      $t8, $v1, 0x8
/* 1AAFC 80019EFC AFB8006C */  sw         $t8, 0x6C($sp)
/* 1AB00 80019F00 AC6F0000 */  sw         $t7, 0x0($v1)
/* 1AB04 80019F04 84F90008 */  lh         $t9, 0x8($a3)
/* 1AB08 80019F08 84EE0004 */  lh         $t6, 0x4($a3)
/* 1AB0C 80019F0C 01D9C021 */  addu       $t8, $t6, $t9
/* 1AB10 80019F10 03007025 */  or         $t6, $t8, $zero
/* 1AB14 80019F14 84F80006 */  lh         $t8, 0x6($a3)
/* 1AB18 80019F18 000ECD40 */  sll        $t9, $t6, 21
/* 1AB1C 80019F1C 00187940 */  sll        $t7, $t8, 5
/* 1AB20 80019F20 31EEFFFF */  andi       $t6, $t7, 0xFFFF
/* 1AB24 80019F24 032EC025 */  or         $t8, $t9, $t6
/* 1AB28 80019F28 AC780004 */  sw         $t8, 0x4($v1)
/* 1AB2C 80019F2C 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1AB30 80019F30 3C18FC00 */  lui        $t8, (0xFC000400 >> 16)
/* 1AB34 80019F34 37180400 */  ori        $t8, $t8, (0xFC000400 & 0xFFFF)
/* 1AB38 80019F38 25F90008 */  addiu      $t9, $t7, 0x8
/* 1AB3C 80019F3C AFB9006C */  sw         $t9, 0x6C($sp)
/* 1AB40 80019F40 3C0EB300 */  lui        $t6, (0xB3000000 >> 16)
/* 1AB44 80019F44 ADEE0000 */  sw         $t6, 0x0($t7)
/* 1AB48 80019F48 10000028 */  b          .L80019FEC
/* 1AB4C 80019F4C ADF80004 */   sw        $t8, 0x4($t7)
.L80019F50:
/* 1AB50 80019F50 8FA2006C */  lw         $v0, 0x6C($sp)
/* 1AB54 80019F54 000C7080 */  sll        $t6, $t4, 2
/* 1AB58 80019F58 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 1AB5C 80019F5C 00187B00 */  sll        $t7, $t8, 12
/* 1AB60 80019F60 24590008 */  addiu      $t9, $v0, 0x8
/* 1AB64 80019F64 AFB9006C */  sw         $t9, 0x6C($sp)
/* 1AB68 80019F68 000D7080 */  sll        $t6, $t5, 2
/* 1AB6C 80019F6C 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 1AB70 80019F70 01E1C825 */  or         $t9, $t7, $at
/* 1AB74 80019F74 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 1AB78 80019F78 03387825 */  or         $t7, $t9, $t8
/* 1AB7C 80019F7C 000A7080 */  sll        $t6, $t2, 2
/* 1AB80 80019F80 31D90FFF */  andi       $t9, $t6, 0xFFF
/* 1AB84 80019F84 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1AB88 80019F88 000B7880 */  sll        $t7, $t3, 2
/* 1AB8C 80019F8C 31EE0FFF */  andi       $t6, $t7, 0xFFF
/* 1AB90 80019F90 0019C300 */  sll        $t8, $t9, 12
/* 1AB94 80019F94 030EC825 */  or         $t9, $t8, $t6
/* 1AB98 80019F98 AC590004 */  sw         $t9, 0x4($v0)
/* 1AB9C 80019F9C 8FA3006C */  lw         $v1, 0x6C($sp)
/* 1ABA0 80019FA0 3C0EB400 */  lui        $t6, (0xB4000000 >> 16)
/* 1ABA4 80019FA4 24780008 */  addiu      $t8, $v1, 0x8
/* 1ABA8 80019FA8 AFB8006C */  sw         $t8, 0x6C($sp)
/* 1ABAC 80019FAC AC6E0000 */  sw         $t6, 0x0($v1)
/* 1ABB0 80019FB0 84F90006 */  lh         $t9, 0x6($a3)
/* 1ABB4 80019FB4 84F80004 */  lh         $t8, 0x4($a3)
/* 1ABB8 80019FB8 00197940 */  sll        $t7, $t9, 5
/* 1ABBC 80019FBC 00187540 */  sll        $t6, $t8, 21
/* 1ABC0 80019FC0 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 1ABC4 80019FC4 01D8C825 */  or         $t9, $t6, $t8
/* 1ABC8 80019FC8 AC790004 */  sw         $t9, 0x4($v1)
/* 1ABCC 80019FCC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1ABD0 80019FD0 3C190400 */  lui        $t9, (0x4000400 >> 16)
/* 1ABD4 80019FD4 37390400 */  ori        $t9, $t9, (0x4000400 & 0xFFFF)
/* 1ABD8 80019FD8 25EE0008 */  addiu      $t6, $t7, 0x8
/* 1ABDC 80019FDC AFAE006C */  sw         $t6, 0x6C($sp)
/* 1ABE0 80019FE0 3C18B300 */  lui        $t8, (0xB3000000 >> 16)
/* 1ABE4 80019FE4 ADF80000 */  sw         $t8, 0x0($t7)
/* 1ABE8 80019FE8 ADF90004 */  sw         $t9, 0x4($t7)
.L80019FEC:
/* 1ABEC 80019FEC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 1ABF0 80019FF0 3C18E700 */  lui        $t8, (0xE7000000 >> 16)
/* 1ABF4 80019FF4 25EE0008 */  addiu      $t6, $t7, 0x8
/* 1ABF8 80019FF8 AFAE006C */  sw         $t6, 0x6C($sp)
/* 1ABFC 80019FFC ADF80000 */  sw         $t8, 0x0($t7)
/* 1AC00 8001A000 ADE00004 */  sw         $zero, 0x4($t7)
/* 1AC04 8001A004 8FAF0070 */  lw         $t7, 0x70($sp)
/* 1AC08 8001A008 8FB9006C */  lw         $t9, 0x6C($sp)
/* 1AC0C 8001A00C ADF90000 */  sw         $t9, 0x0($t7)
/* 1AC10 8001A010 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1AC14 8001A014 27BD0070 */  addiu      $sp, $sp, 0x70
/* 1AC18 8001A018 03E00008 */  jr         $ra
/* 1AC1C 8001A01C 00000000 */   nop

glabel func_8001A020
/* 1AC20 8001A020 27BDFF68 */  addiu      $sp, $sp, -0x98
/* 1AC24 8001A024 3C0E8014 */  lui        $t6, %hi(D_8013FF90)
/* 1AC28 8001A028 81CEFF90 */  lb         $t6, %lo(D_8013FF90)($t6)
/* 1AC2C 8001A02C AFB50030 */  sw         $s5, 0x30($sp)
/* 1AC30 8001A030 AFB4002C */  sw         $s4, 0x2C($sp)
/* 1AC34 8001A034 00C0A025 */  or         $s4, $a2, $zero
/* 1AC38 8001A038 00A0A825 */  or         $s5, $a1, $zero
/* 1AC3C 8001A03C AFBF003C */  sw         $ra, 0x3C($sp)
/* 1AC40 8001A040 AFB70038 */  sw         $s7, 0x38($sp)
/* 1AC44 8001A044 AFB60034 */  sw         $s6, 0x34($sp)
/* 1AC48 8001A048 AFB30028 */  sw         $s3, 0x28($sp)
/* 1AC4C 8001A04C AFB20024 */  sw         $s2, 0x24($sp)
/* 1AC50 8001A050 AFB10020 */  sw         $s1, 0x20($sp)
/* 1AC54 8001A054 AFB0001C */  sw         $s0, 0x1C($sp)
/* 1AC58 8001A058 15C00008 */  bnez       $t6, .L8001A07C
/* 1AC5C 8001A05C AFA40098 */   sw        $a0, 0x98($sp)
/* 1AC60 8001A060 3C0F8014 */  lui        $t7, %hi(D_8013FFA8)
/* 1AC64 8001A064 91EFFFA8 */  lbu        $t7, %lo(D_8013FFA8)($t7)
/* 1AC68 8001A068 24010001 */  addiu      $at, $zero, 0x1
/* 1AC6C 8001A06C 15E10003 */  bne        $t7, $at, .L8001A07C
/* 1AC70 8001A070 00000000 */   nop
/* 1AC74 8001A074 10000003 */  b          .L8001A084
/* 1AC78 8001A078 24160005 */   addiu     $s6, $zero, 0x5
.L8001A07C:
/* 1AC7C 8001A07C 3C168014 */  lui        $s6, %hi(D_8013FC8F)
/* 1AC80 8001A080 82D6FC8F */  lb         $s6, %lo(D_8013FC8F)($s6)
.L8001A084:
/* 1AC84 8001A084 8FB80098 */  lw         $t8, 0x98($sp)
/* 1AC88 8001A088 3C09E700 */  lui        $t1, (0xE7000000 >> 16)
/* 1AC8C 8001A08C 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
/* 1AC90 8001A090 8F190000 */  lw         $t9, 0x0($t8)
/* 1AC94 8001A094 240DFFFF */  addiu      $t5, $zero, -0x1
/* 1AC98 8001A098 3C18B900 */  lui        $t8, (0xB900031D >> 16)
/* 1AC9C 8001A09C AFB90094 */  sw         $t9, 0x94($sp)
/* 1ACA0 8001A0A0 27280008 */  addiu      $t0, $t9, 0x8
/* 1ACA4 8001A0A4 AFA80094 */  sw         $t0, 0x94($sp)
/* 1ACA8 8001A0A8 AF200004 */  sw         $zero, 0x4($t9)
/* 1ACAC 8001A0AC AF290000 */  sw         $t1, 0x0($t9)
/* 1ACB0 8001A0B0 8FAA0094 */  lw         $t2, 0x94($sp)
/* 1ACB4 8001A0B4 3C190050 */  lui        $t9, (0x504240 >> 16)
/* 1ACB8 8001A0B8 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
/* 1ACBC 8001A0BC 254B0008 */  addiu      $t3, $t2, 0x8
/* 1ACC0 8001A0C0 AFAB0094 */  sw         $t3, 0x94($sp)
/* 1ACC4 8001A0C4 AD4D0004 */  sw         $t5, 0x4($t2)
/* 1ACC8 8001A0C8 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1ACCC 8001A0CC 8FAE0094 */  lw         $t6, 0x94($sp)
/* 1ACD0 8001A0D0 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
/* 1ACD4 8001A0D4 27A40094 */  addiu      $a0, $sp, 0x94
/* 1ACD8 8001A0D8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1ACDC 8001A0DC AFAF0094 */  sw         $t7, 0x94($sp)
/* 1ACE0 8001A0E0 ADD90004 */  sw         $t9, 0x4($t6)
/* 1ACE4 8001A0E4 ADD80000 */  sw         $t8, 0x0($t6)
/* 1ACE8 8001A0E8 8EA70010 */  lw         $a3, 0x10($s5)
/* 1ACEC 8001A0EC 50E00009 */  beql       $a3, $zero, .L8001A114
/* 1ACF0 8001A0F0 27B70094 */   addiu     $s7, $sp, 0x94
/* 1ACF4 8001A0F4 96A50000 */  lhu        $a1, 0x0($s5)
/* 1ACF8 8001A0F8 96A60002 */  lhu        $a2, 0x2($s5)
/* 1ACFC 8001A0FC AFA00010 */  sw         $zero, 0x10($sp)
/* 1AD00 8001A100 24A5FFC7 */  addiu      $a1, $a1, -0x39
/* 1AD04 8001A104 30A8FFFF */  andi       $t0, $a1, 0xFFFF
/* 1AD08 8001A108 0C006743 */  jal        func_80019D0C
/* 1AD0C 8001A10C 01002825 */   or        $a1, $t0, $zero
/* 1AD10 8001A110 27B70094 */  addiu      $s7, $sp, 0x94
.L8001A114:
/* 1AD14 8001A114 240400FF */  addiu      $a0, $zero, 0xFF
/* 1AD18 8001A118 240500FF */  addiu      $a1, $zero, 0xFF
/* 1AD1C 8001A11C 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AD20 8001A120 0C007DD7 */  jal        func_8001F75C
/* 1AD24 8001A124 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AD28 8001A128 1AC00023 */  blez       $s6, .L8001A1B8
/* 1AD2C 8001A12C 00008025 */   or        $s0, $zero, $zero
/* 1AD30 8001A130 3C118009 */  lui        $s1, %hi(D_8008B700)
/* 1AD34 8001A134 2631B700 */  addiu      $s1, $s1, %lo(D_8008B700)
/* 1AD38 8001A138 00009825 */  or         $s3, $zero, $zero
.L8001A13C:
/* 1AD3C 8001A13C 92890001 */  lbu        $t1, 0x1($s4)
/* 1AD40 8001A140 26120001 */  addiu      $s2, $s0, 0x1
/* 1AD44 8001A144 240400FF */  addiu      $a0, $zero, 0xFF
/* 1AD48 8001A148 02495007 */  srav       $t2, $t1, $s2
/* 1AD4C 8001A14C 314B0001 */  andi       $t3, $t2, 0x1
/* 1AD50 8001A150 11600008 */  beqz       $t3, .L8001A174
/* 1AD54 8001A154 240500FF */   addiu     $a1, $zero, 0xFF
/* 1AD58 8001A158 240400DC */  addiu      $a0, $zero, 0xDC
/* 1AD5C 8001A15C 24050082 */  addiu      $a1, $zero, 0x82
/* 1AD60 8001A160 24060019 */  addiu      $a2, $zero, 0x19
/* 1AD64 8001A164 0C007DD7 */  jal        func_8001F75C
/* 1AD68 8001A168 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AD6C 8001A16C 10000005 */  b          .L8001A184
/* 1AD70 8001A170 96AC0002 */   lhu       $t4, 0x2($s5)
.L8001A174:
/* 1AD74 8001A174 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AD78 8001A178 0C007DD7 */  jal        func_8001F75C
/* 1AD7C 8001A17C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AD80 8001A180 96AC0002 */  lhu        $t4, 0x2($s5)
.L8001A184:
/* 1AD84 8001A184 96A40000 */  lhu        $a0, 0x0($s5)
/* 1AD88 8001A188 01932821 */  addu       $a1, $t4, $s3
/* 1AD8C 8001A18C 0C007DAD */  jal        func_8001F6B4
/* 1AD90 8001A190 24A50002 */   addiu     $a1, $a1, 0x2
/* 1AD94 8001A194 3C068008 */  lui        $a2, %hi(D_80082B40)
/* 1AD98 8001A198 24C62B40 */  addiu      $a2, $a2, %lo(D_80082B40)
/* 1AD9C 8001A19C 02E02025 */  or         $a0, $s7, $zero
/* 1ADA0 8001A1A0 0C007DE4 */  jal        func_8001F790
/* 1ADA4 8001A1A4 8E250000 */   lw        $a1, 0x0($s1)
/* 1ADA8 8001A1A8 02408025 */  or         $s0, $s2, $zero
/* 1ADAC 8001A1AC 26730008 */  addiu      $s3, $s3, 0x8
/* 1ADB0 8001A1B0 1656FFE2 */  bne        $s2, $s6, .L8001A13C
/* 1ADB4 8001A1B4 26310004 */   addiu     $s1, $s1, 0x4
.L8001A1B8:
/* 1ADB8 8001A1B8 3C0D8014 */  lui        $t5, %hi(D_8013FF90)
/* 1ADBC 8001A1BC 81ADFF90 */  lb         $t5, %lo(D_8013FF90)($t5)
/* 1ADC0 8001A1C0 3C0E8014 */  lui        $t6, %hi(D_8013FFA8)
/* 1ADC4 8001A1C4 55A00006 */  bnel       $t5, $zero, .L8001A1E0
/* 1ADC8 8001A1C8 92820000 */   lbu       $v0, 0x0($s4)
/* 1ADCC 8001A1CC 91CEFFA8 */  lbu        $t6, %lo(D_8013FFA8)($t6)
/* 1ADD0 8001A1D0 24010001 */  addiu      $at, $zero, 0x1
/* 1ADD4 8001A1D4 51C100AA */  beql       $t6, $at, .L8001A480
/* 1ADD8 8001A1D8 92960000 */   lbu       $s6, 0x0($s4)
/* 1ADDC 8001A1DC 92820000 */  lbu        $v0, 0x0($s4)
.L8001A1E0:
/* 1ADE0 8001A1E0 27A40088 */  addiu      $a0, $sp, 0x88
/* 1ADE4 8001A1E4 27A50084 */  addiu      $a1, $sp, 0x84
/* 1ADE8 8001A1E8 1C40001D */  bgtz       $v0, .L8001A260
/* 1ADEC 8001A1EC 27A60080 */   addiu     $a2, $sp, 0x80
/* 1ADF0 8001A1F0 0C00588E */  jal        func_80016238
/* 1ADF4 8001A1F4 8E870008 */   lw        $a3, 0x8($s4)
/* 1ADF8 8001A1F8 8FAF0080 */  lw         $t7, 0x80($sp)
/* 1ADFC 8001A1FC 27B2006C */  addiu      $s2, $sp, 0x6C
/* 1AE00 8001A200 3C058009 */  lui        $a1, %hi(D_80096C08)
/* 1AE04 8001A204 24A56C08 */  addiu      $a1, $a1, %lo(D_80096C08)
/* 1AE08 8001A208 02402025 */  or         $a0, $s2, $zero
/* 1AE0C 8001A20C 8FA60088 */  lw         $a2, 0x88($sp)
/* 1AE10 8001A210 8FA70084 */  lw         $a3, 0x84($sp)
/* 1AE14 8001A214 0C01AE81 */  jal        func_8006BA04
/* 1AE18 8001A218 AFAF0010 */   sw        $t7, 0x10($sp)
/* 1AE1C 8001A21C 240400FF */  addiu      $a0, $zero, 0xFF
/* 1AE20 8001A220 240500FF */  addiu      $a1, $zero, 0xFF
/* 1AE24 8001A224 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AE28 8001A228 0C007DD7 */  jal        func_8001F75C
/* 1AE2C 8001A22C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AE30 8001A230 96A40000 */  lhu        $a0, 0x0($s5)
/* 1AE34 8001A234 96A50002 */  lhu        $a1, 0x2($s5)
/* 1AE38 8001A238 24840015 */  addiu      $a0, $a0, 0x15
/* 1AE3C 8001A23C 0C007DAD */  jal        func_8001F6B4
/* 1AE40 8001A240 24A50002 */   addiu     $a1, $a1, 0x2
/* 1AE44 8001A244 3C068009 */  lui        $a2, %hi(D_8008C8D4)
/* 1AE48 8001A248 24C6C8D4 */  addiu      $a2, $a2, %lo(D_8008C8D4)
/* 1AE4C 8001A24C 02E02025 */  or         $a0, $s7, $zero
/* 1AE50 8001A250 0C007DE4 */  jal        func_8001F790
/* 1AE54 8001A254 02402825 */   or        $a1, $s2, $zero
/* 1AE58 8001A258 1000004D */  b          .L8001A390
/* 1AE5C 8001A25C 00002025 */   or        $a0, $zero, $zero
.L8001A260:
/* 1AE60 8001A260 1840004A */  blez       $v0, .L8001A38C
/* 1AE64 8001A264 24100001 */   addiu     $s0, $zero, 0x1
/* 1AE68 8001A268 3C118009 */  lui        $s1, %hi(D_80096C18)
/* 1AE6C 8001A26C 26316C18 */  addiu      $s1, $s1, %lo(D_80096C18)
/* 1AE70 8001A270 27B2006C */  addiu      $s2, $sp, 0x6C
/* 1AE74 8001A274 02D0082A */  slt        $at, $s6, $s0
.L8001A278:
/* 1AE78 8001A278 14200040 */  bnez       $at, .L8001A37C
/* 1AE7C 8001A27C 27A40088 */   addiu     $a0, $sp, 0x88
/* 1AE80 8001A280 0010C080 */  sll        $t8, $s0, 2
/* 1AE84 8001A284 0298C821 */  addu       $t9, $s4, $t8
/* 1AE88 8001A288 8F270004 */  lw         $a3, 0x4($t9)
/* 1AE8C 8001A28C 27A50084 */  addiu      $a1, $sp, 0x84
/* 1AE90 8001A290 27A60080 */  addiu      $a2, $sp, 0x80
/* 1AE94 8001A294 0C00588E */  jal        func_80016238
/* 1AE98 8001A298 001098C0 */   sll       $s3, $s0, 3
/* 1AE9C 8001A29C 8FA80080 */  lw         $t0, 0x80($sp)
/* 1AEA0 8001A2A0 02402025 */  or         $a0, $s2, $zero
/* 1AEA4 8001A2A4 02202825 */  or         $a1, $s1, $zero
/* 1AEA8 8001A2A8 8FA60088 */  lw         $a2, 0x88($sp)
/* 1AEAC 8001A2AC 8FA70084 */  lw         $a3, 0x84($sp)
/* 1AEB0 8001A2B0 0C01AE81 */  jal        func_8006BA04
/* 1AEB4 8001A2B4 AFA80010 */   sw        $t0, 0x10($sp)
/* 1AEB8 8001A2B8 1A000020 */  blez       $s0, .L8001A33C
/* 1AEBC 8001A2BC 240400FF */   addiu     $a0, $zero, 0xFF
/* 1AEC0 8001A2C0 92890001 */  lbu        $t1, 0x1($s4)
/* 1AEC4 8001A2C4 02095007 */  srav       $t2, $t1, $s0
/* 1AEC8 8001A2C8 314B0001 */  andi       $t3, $t2, 0x1
/* 1AECC 8001A2CC 5160001C */  beql       $t3, $zero, .L8001A340
/* 1AED0 8001A2D0 240500FF */   addiu     $a1, $zero, 0xFF
/* 1AED4 8001A2D4 928D0000 */  lbu        $t5, 0x0($s4)
/* 1AED8 8001A2D8 260C0001 */  addiu      $t4, $s0, 0x1
/* 1AEDC 8001A2DC 240400DC */  addiu      $a0, $zero, 0xDC
/* 1AEE0 8001A2E0 158D0011 */  bne        $t4, $t5, .L8001A328
/* 1AEE4 8001A2E4 24050082 */   addiu     $a1, $zero, 0x82
/* 1AEE8 8001A2E8 828E004C */  lb         $t6, 0x4C($s4)
/* 1AEEC 8001A2EC 3C0F8014 */  lui        $t7, %hi(D_8013FC88)
/* 1AEF0 8001A2F0 29C10015 */  slti       $at, $t6, 0x15
/* 1AEF4 8001A2F4 5420000D */  bnel       $at, $zero, .L8001A32C
/* 1AEF8 8001A2F8 24060019 */   addiu     $a2, $zero, 0x19
/* 1AEFC 8001A2FC 8DEFFC88 */  lw         $t7, %lo(D_8013FC88)($t7)
/* 1AF00 8001A300 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AF04 8001A304 240700FF */  addiu      $a3, $zero, 0xFF
/* 1AF08 8001A308 31F80001 */  andi       $t8, $t7, 0x1
/* 1AF0C 8001A30C 53000007 */  beql       $t8, $zero, .L8001A32C
/* 1AF10 8001A310 24060019 */   addiu     $a2, $zero, 0x19
/* 1AF14 8001A314 240400FF */  addiu      $a0, $zero, 0xFF
/* 1AF18 8001A318 0C007DD7 */  jal        func_8001F75C
/* 1AF1C 8001A31C 240500FF */   addiu     $a1, $zero, 0xFF
/* 1AF20 8001A320 1000000B */  b          .L8001A350
/* 1AF24 8001A324 96B90002 */   lhu       $t9, 0x2($s5)
.L8001A328:
/* 1AF28 8001A328 24060019 */  addiu      $a2, $zero, 0x19
.L8001A32C:
/* 1AF2C 8001A32C 0C007DD7 */  jal        func_8001F75C
/* 1AF30 8001A330 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AF34 8001A334 10000006 */  b          .L8001A350
/* 1AF38 8001A338 96B90002 */   lhu       $t9, 0x2($s5)
.L8001A33C:
/* 1AF3C 8001A33C 240500FF */  addiu      $a1, $zero, 0xFF
.L8001A340:
/* 1AF40 8001A340 240600FF */  addiu      $a2, $zero, 0xFF
/* 1AF44 8001A344 0C007DD7 */  jal        func_8001F75C
/* 1AF48 8001A348 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AF4C 8001A34C 96B90002 */  lhu        $t9, 0x2($s5)
.L8001A350:
/* 1AF50 8001A350 96A40000 */  lhu        $a0, 0x0($s5)
/* 1AF54 8001A354 03332821 */  addu       $a1, $t9, $s3
/* 1AF58 8001A358 24A5FFFA */  addiu      $a1, $a1, -0x6
/* 1AF5C 8001A35C 0C007DAD */  jal        func_8001F6B4
/* 1AF60 8001A360 24840015 */   addiu     $a0, $a0, 0x15
/* 1AF64 8001A364 3C068009 */  lui        $a2, %hi(D_8008C8D4)
/* 1AF68 8001A368 24C6C8D4 */  addiu      $a2, $a2, %lo(D_8008C8D4)
/* 1AF6C 8001A36C 02E02025 */  or         $a0, $s7, $zero
/* 1AF70 8001A370 0C007DE4 */  jal        func_8001F790
/* 1AF74 8001A374 02402825 */   or        $a1, $s2, $zero
/* 1AF78 8001A378 92820000 */  lbu        $v0, 0x0($s4)
.L8001A37C:
/* 1AF7C 8001A37C 26100001 */  addiu      $s0, $s0, 0x1
/* 1AF80 8001A380 0050082A */  slt        $at, $v0, $s0
/* 1AF84 8001A384 5020FFBC */  beql       $at, $zero, .L8001A278
/* 1AF88 8001A388 02D0082A */   slt       $at, $s6, $s0
.L8001A38C:
/* 1AF8C 8001A38C 00002025 */  or         $a0, $zero, $zero
.L8001A390:
/* 1AF90 8001A390 240500C8 */  addiu      $a1, $zero, 0xC8
/* 1AF94 8001A394 00003025 */  or         $a2, $zero, $zero
/* 1AF98 8001A398 0C007DD7 */  jal        func_8001F75C
/* 1AF9C 8001A39C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1AFA0 8001A3A0 8282004C */  lb         $v0, 0x4C($s4)
/* 1AFA4 8001A3A4 584000DD */  blezl      $v0, .L8001A71C
/* 1AFA8 8001A3A8 8FA80094 */   lw        $t0, 0x94($sp)
/* 1AFAC 8001A3AC 92880000 */  lbu        $t0, 0x0($s4)
/* 1AFB0 8001A3B0 24010014 */  addiu      $at, $zero, 0x14
/* 1AFB4 8001A3B4 02C88023 */  subu       $s0, $s6, $t0
/* 1AFB8 8001A3B8 26100001 */  addiu      $s0, $s0, 0x1
/* 1AFBC 8001A3BC 5A0000D7 */  blezl      $s0, .L8001A71C
/* 1AFC0 8001A3C0 8FA80094 */   lw        $t0, 0x94($sp)
/* 1AFC4 8001A3C4 0041001A */  div        $zero, $v0, $at
/* 1AFC8 8001A3C8 00004810 */  mfhi       $t1
/* 1AFCC 8001A3CC 2921000B */  slti       $at, $t1, 0xB
/* 1AFD0 8001A3D0 542000D2 */  bnel       $at, $zero, .L8001A71C
/* 1AFD4 8001A3D4 8FA80094 */   lw        $t0, 0x94($sp)
/* 1AFD8 8001A3D8 86A4000C */  lh         $a0, 0xC($s5)
/* 1AFDC 8001A3DC 0C007DAD */  jal        func_8001F6B4
/* 1AFE0 8001A3E0 86A5000E */   lh        $a1, 0xE($s5)
/* 1AFE4 8001A3E4 24010001 */  addiu      $at, $zero, 0x1
/* 1AFE8 8001A3E8 16010009 */  bne        $s0, $at, .L8001A410
/* 1AFEC 8001A3EC 3C118009 */   lui       $s1, %hi(D_8008C31C)
/* 1AFF0 8001A3F0 3C118009 */  lui        $s1, %hi(D_8008C31C)
/* 1AFF4 8001A3F4 3C058009 */  lui        $a1, %hi(D_80096C28)
/* 1AFF8 8001A3F8 2626C31C */  addiu      $a2, $s1, %lo(D_8008C31C)
/* 1AFFC 8001A3FC 24A56C28 */  addiu      $a1, $a1, %lo(D_80096C28)
/* 1B000 8001A400 0C007DE4 */  jal        func_8001F790
/* 1B004 8001A404 02E02025 */   or        $a0, $s7, $zero
/* 1B008 8001A408 100000C4 */  b          .L8001A71C
/* 1B00C 8001A40C 8FA80094 */   lw        $t0, 0x94($sp)
.L8001A410:
/* 1B010 8001A410 00105080 */  sll        $t2, $s0, 2
/* 1B014 8001A414 3C058009 */  lui        $a1, %hi(D_8008B6FC)
/* 1B018 8001A418 00AA2821 */  addu       $a1, $a1, $t2
/* 1B01C 8001A41C 2626C31C */  addiu      $a2, $s1, %lo(D_8008C31C)
/* 1B020 8001A420 8CA5B6FC */  lw         $a1, %lo(D_8008B6FC)($a1)
/* 1B024 8001A424 0C007DE4 */  jal        func_8001F790
/* 1B028 8001A428 02E02025 */   or        $a0, $s7, $zero
/* 1B02C 8001A42C 24040004 */  addiu      $a0, $zero, 0x4
/* 1B030 8001A430 0C007DB2 */  jal        func_8001F6C8
/* 1B034 8001A434 24050003 */   addiu     $a1, $zero, 0x3
/* 1B038 8001A438 3C108009 */  lui        $s0, %hi(D_8008C540)
/* 1B03C 8001A43C 2610C540 */  addiu      $s0, $s0, %lo(D_8008C540)
/* 1B040 8001A440 3C058009 */  lui        $a1, %hi(D_80096C34)
/* 1B044 8001A444 24A56C34 */  addiu      $a1, $a1, %lo(D_80096C34)
/* 1B048 8001A448 02003025 */  or         $a2, $s0, $zero
/* 1B04C 8001A44C 0C007DE4 */  jal        func_8001F790
/* 1B050 8001A450 02E02025 */   or        $a0, $s7, $zero
/* 1B054 8001A454 24040004 */  addiu      $a0, $zero, 0x4
/* 1B058 8001A458 0C007DB2 */  jal        func_8001F6C8
/* 1B05C 8001A45C 00002825 */   or        $a1, $zero, $zero
/* 1B060 8001A460 3C058009 */  lui        $a1, %hi(D_80096C3C)
/* 1B064 8001A464 24A56C3C */  addiu      $a1, $a1, %lo(D_80096C3C)
/* 1B068 8001A468 02E02025 */  or         $a0, $s7, $zero
/* 1B06C 8001A46C 0C007DE4 */  jal        func_8001F790
/* 1B070 8001A470 02003025 */   or        $a2, $s0, $zero
/* 1B074 8001A474 100000A9 */  b          .L8001A71C
/* 1B078 8001A478 8FA80094 */   lw        $t0, 0x94($sp)
/* 1B07C 8001A47C 92960000 */  lbu        $s6, 0x0($s4)
.L8001A480:
/* 1B080 8001A480 24130008 */  addiu      $s3, $zero, 0x8
/* 1B084 8001A484 26910004 */  addiu      $s1, $s4, 0x4
/* 1B088 8001A488 26D6FFFF */  addiu      $s6, $s6, -0x1
/* 1B08C 8001A48C 2AC10006 */  slti       $at, $s6, 0x6
/* 1B090 8001A490 14200002 */  bnez       $at, .L8001A49C
/* 1B094 8001A494 27B2006C */   addiu     $s2, $sp, 0x6C
/* 1B098 8001A498 24160005 */  addiu      $s6, $zero, 0x5
.L8001A49C:
/* 1B09C 8001A49C 1AC0003F */  blez       $s6, .L8001A59C
/* 1B0A0 8001A4A0 24100001 */   addiu     $s0, $zero, 0x1
/* 1B0A4 8001A4A4 26CB0001 */  addiu      $t3, $s6, 0x1
/* 1B0A8 8001A4A8 AFAB0040 */  sw         $t3, 0x40($sp)
.L8001A4AC:
/* 1B0AC 8001A4AC 27A40088 */  addiu      $a0, $sp, 0x88
/* 1B0B0 8001A4B0 27A50084 */  addiu      $a1, $sp, 0x84
/* 1B0B4 8001A4B4 27A60080 */  addiu      $a2, $sp, 0x80
/* 1B0B8 8001A4B8 0C00588E */  jal        func_80016238
/* 1B0BC 8001A4BC 8E270004 */   lw        $a3, 0x4($s1)
/* 1B0C0 8001A4C0 8FAC0080 */  lw         $t4, 0x80($sp)
/* 1B0C4 8001A4C4 3C058009 */  lui        $a1, %hi(D_80096C44)
/* 1B0C8 8001A4C8 24A56C44 */  addiu      $a1, $a1, %lo(D_80096C44)
/* 1B0CC 8001A4CC 02402025 */  or         $a0, $s2, $zero
/* 1B0D0 8001A4D0 8FA60088 */  lw         $a2, 0x88($sp)
/* 1B0D4 8001A4D4 8FA70084 */  lw         $a3, 0x84($sp)
/* 1B0D8 8001A4D8 0C01AE81 */  jal        func_8006BA04
/* 1B0DC 8001A4DC AFAC0010 */   sw        $t4, 0x10($sp)
/* 1B0E0 8001A4E0 928D0001 */  lbu        $t5, 0x1($s4)
/* 1B0E4 8001A4E4 240400FF */  addiu      $a0, $zero, 0xFF
/* 1B0E8 8001A4E8 240500FF */  addiu      $a1, $zero, 0xFF
/* 1B0EC 8001A4EC 020D7007 */  srav       $t6, $t5, $s0
/* 1B0F0 8001A4F0 31CF0001 */  andi       $t7, $t6, 0x1
/* 1B0F4 8001A4F4 11E00008 */  beqz       $t7, .L8001A518
/* 1B0F8 8001A4F8 240600FF */   addiu     $a2, $zero, 0xFF
/* 1B0FC 8001A4FC 240400DC */  addiu      $a0, $zero, 0xDC
/* 1B100 8001A500 24050082 */  addiu      $a1, $zero, 0x82
/* 1B104 8001A504 24060019 */  addiu      $a2, $zero, 0x19
/* 1B108 8001A508 0C007DD7 */  jal        func_8001F75C
/* 1B10C 8001A50C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1B110 8001A510 10000004 */  b          .L8001A524
/* 1B114 8001A514 92980020 */   lbu       $t8, 0x20($s4)
.L8001A518:
/* 1B118 8001A518 0C007DD7 */  jal        func_8001F75C
/* 1B11C 8001A51C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1B120 8001A520 92980020 */  lbu        $t8, 0x20($s4)
.L8001A524:
/* 1B124 8001A524 5618000E */  bnel       $s0, $t8, .L8001A560
/* 1B128 8001A528 96A90002 */   lhu       $t1, 0x2($s5)
/* 1B12C 8001A52C 8299004C */  lb         $t9, 0x4C($s4)
/* 1B130 8001A530 00002025 */  or         $a0, $zero, $zero
/* 1B134 8001A534 00002825 */  or         $a1, $zero, $zero
/* 1B138 8001A538 07210004 */  bgez       $t9, .L8001A54C
/* 1B13C 8001A53C 33280001 */   andi      $t0, $t9, 0x1
/* 1B140 8001A540 11000002 */  beqz       $t0, .L8001A54C
/* 1B144 8001A544 00000000 */   nop
/* 1B148 8001A548 2508FFFE */  addiu      $t0, $t0, -0x2
.L8001A54C:
/* 1B14C 8001A54C 11000003 */  beqz       $t0, .L8001A55C
/* 1B150 8001A550 240600FF */   addiu     $a2, $zero, 0xFF
/* 1B154 8001A554 0C007DD7 */  jal        func_8001F75C
/* 1B158 8001A558 240700FF */   addiu     $a3, $zero, 0xFF
.L8001A55C:
/* 1B15C 8001A55C 96A90002 */  lhu        $t1, 0x2($s5)
.L8001A560:
/* 1B160 8001A560 96A40000 */  lhu        $a0, 0x0($s5)
/* 1B164 8001A564 01332821 */  addu       $a1, $t1, $s3
/* 1B168 8001A568 24A5FFFA */  addiu      $a1, $a1, -0x6
/* 1B16C 8001A56C 0C007DAD */  jal        func_8001F6B4
/* 1B170 8001A570 24840015 */   addiu     $a0, $a0, 0x15
/* 1B174 8001A574 3C068009 */  lui        $a2, %hi(D_8008C8D4)
/* 1B178 8001A578 24C6C8D4 */  addiu      $a2, $a2, %lo(D_8008C8D4)
/* 1B17C 8001A57C 02E02025 */  or         $a0, $s7, $zero
/* 1B180 8001A580 0C007DE4 */  jal        func_8001F790
/* 1B184 8001A584 02402825 */   or        $a1, $s2, $zero
/* 1B188 8001A588 8FAA0040 */  lw         $t2, 0x40($sp)
/* 1B18C 8001A58C 26100001 */  addiu      $s0, $s0, 0x1
/* 1B190 8001A590 26730008 */  addiu      $s3, $s3, 0x8
/* 1B194 8001A594 1550FFC5 */  bne        $t2, $s0, .L8001A4AC
/* 1B198 8001A598 26310004 */   addiu     $s1, $s1, 0x4
.L8001A59C:
/* 1B19C 8001A59C 27B2006C */  addiu      $s2, $sp, 0x6C
/* 1B1A0 8001A5A0 00002025 */  or         $a0, $zero, $zero
/* 1B1A4 8001A5A4 240500C8 */  addiu      $a1, $zero, 0xC8
/* 1B1A8 8001A5A8 00003025 */  or         $a2, $zero, $zero
/* 1B1AC 8001A5AC 0C007DD7 */  jal        func_8001F75C
/* 1B1B0 8001A5B0 240700FF */   addiu     $a3, $zero, 0xFF
/* 1B1B4 8001A5B4 8282004C */  lb         $v0, 0x4C($s4)
/* 1B1B8 8001A5B8 58400058 */  blezl      $v0, .L8001A71C
/* 1B1BC 8001A5BC 8FA80094 */   lw        $t0, 0x94($sp)
/* 1B1C0 8001A5C0 92900000 */  lbu        $s0, 0x0($s4)
/* 1B1C4 8001A5C4 24010014 */  addiu      $at, $zero, 0x14
/* 1B1C8 8001A5C8 2610FFFF */  addiu      $s0, $s0, -0x1
/* 1B1CC 8001A5CC 5A000053 */  blezl      $s0, .L8001A71C
/* 1B1D0 8001A5D0 8FA80094 */   lw        $t0, 0x94($sp)
/* 1B1D4 8001A5D4 0041001A */  div        $zero, $v0, $at
/* 1B1D8 8001A5D8 00005810 */  mfhi       $t3
/* 1B1DC 8001A5DC 2961000B */  slti       $at, $t3, 0xB
/* 1B1E0 8001A5E0 1420004D */  bnez       $at, .L8001A718
/* 1B1E4 8001A5E4 27A40054 */   addiu     $a0, $sp, 0x54
/* 1B1E8 8001A5E8 27A50050 */  addiu      $a1, $sp, 0x50
/* 1B1EC 8001A5EC 27A6004C */  addiu      $a2, $sp, 0x4C
/* 1B1F0 8001A5F0 0C00588E */  jal        func_80016238
/* 1B1F4 8001A5F4 8E870004 */   lw        $a3, 0x4($s4)
/* 1B1F8 8001A5F8 86A4000C */  lh         $a0, 0xC($s5)
/* 1B1FC 8001A5FC 86A5000E */  lh         $a1, 0xE($s5)
/* 1B200 8001A600 0C007DAD */  jal        func_8001F6B4
/* 1B204 8001A604 2484FFE0 */   addiu     $a0, $a0, -0x20
/* 1B208 8001A608 24010001 */  addiu      $at, $zero, 0x1
/* 1B20C 8001A60C 1601000A */  bne        $s0, $at, .L8001A638
/* 1B210 8001A610 02402025 */   or        $a0, $s2, $zero
/* 1B214 8001A614 8FAC004C */  lw         $t4, 0x4C($sp)
/* 1B218 8001A618 3C058009 */  lui        $a1, %hi(D_80096C54)
/* 1B21C 8001A61C 24A56C54 */  addiu      $a1, $a1, %lo(D_80096C54)
/* 1B220 8001A620 8FA60054 */  lw         $a2, 0x54($sp)
/* 1B224 8001A624 8FA70050 */  lw         $a3, 0x50($sp)
/* 1B228 8001A628 0C01AE81 */  jal        func_8006BA04
/* 1B22C 8001A62C AFAC0010 */   sw        $t4, 0x10($sp)
/* 1B230 8001A630 10000023 */  b          .L8001A6C0
/* 1B234 8001A634 00000000 */   nop
.L8001A638:
/* 1B238 8001A638 24010002 */  addiu      $at, $zero, 0x2
/* 1B23C 8001A63C 1601000A */  bne        $s0, $at, .L8001A668
/* 1B240 8001A640 02402025 */   or        $a0, $s2, $zero
/* 1B244 8001A644 8FAD004C */  lw         $t5, 0x4C($sp)
/* 1B248 8001A648 3C058009 */  lui        $a1, %hi(D_80096C60)
/* 1B24C 8001A64C 24A56C60 */  addiu      $a1, $a1, %lo(D_80096C60)
/* 1B250 8001A650 8FA60054 */  lw         $a2, 0x54($sp)
/* 1B254 8001A654 8FA70050 */  lw         $a3, 0x50($sp)
/* 1B258 8001A658 0C01AE81 */  jal        func_8006BA04
/* 1B25C 8001A65C AFAD0010 */   sw        $t5, 0x10($sp)
/* 1B260 8001A660 10000017 */  b          .L8001A6C0
/* 1B264 8001A664 00000000 */   nop
.L8001A668:
/* 1B268 8001A668 24010003 */  addiu      $at, $zero, 0x3
/* 1B26C 8001A66C 1601000B */  bne        $s0, $at, .L8001A69C
/* 1B270 8001A670 02402025 */   or        $a0, $s2, $zero
/* 1B274 8001A674 8FAE004C */  lw         $t6, 0x4C($sp)
/* 1B278 8001A678 3C058009 */  lui        $a1, %hi(D_80096C6C)
/* 1B27C 8001A67C 24A56C6C */  addiu      $a1, $a1, %lo(D_80096C6C)
/* 1B280 8001A680 02402025 */  or         $a0, $s2, $zero
/* 1B284 8001A684 8FA60054 */  lw         $a2, 0x54($sp)
/* 1B288 8001A688 8FA70050 */  lw         $a3, 0x50($sp)
/* 1B28C 8001A68C 0C01AE81 */  jal        func_8006BA04
/* 1B290 8001A690 AFAE0010 */   sw        $t6, 0x10($sp)
/* 1B294 8001A694 1000000A */  b          .L8001A6C0
/* 1B298 8001A698 00000000 */   nop
.L8001A69C:
/* 1B29C 8001A69C 8FAF0050 */  lw         $t7, 0x50($sp)
/* 1B2A0 8001A6A0 8FB8004C */  lw         $t8, 0x4C($sp)
/* 1B2A4 8001A6A4 3C058009 */  lui        $a1, %hi(D_80096C78)
/* 1B2A8 8001A6A8 24A56C78 */  addiu      $a1, $a1, %lo(D_80096C78)
/* 1B2AC 8001A6AC 02003025 */  or         $a2, $s0, $zero
/* 1B2B0 8001A6B0 8FA70054 */  lw         $a3, 0x54($sp)
/* 1B2B4 8001A6B4 AFAF0010 */  sw         $t7, 0x10($sp)
/* 1B2B8 8001A6B8 0C01AE81 */  jal        func_8006BA04
/* 1B2BC 8001A6BC AFB80014 */   sw        $t8, 0x14($sp)
.L8001A6C0:
/* 1B2C0 8001A6C0 3C118009 */  lui        $s1, %hi(D_8008C31C)
/* 1B2C4 8001A6C4 2631C31C */  addiu      $s1, $s1, %lo(D_8008C31C)
/* 1B2C8 8001A6C8 02203025 */  or         $a2, $s1, $zero
/* 1B2CC 8001A6CC 02E02025 */  or         $a0, $s7, $zero
/* 1B2D0 8001A6D0 0C007DE4 */  jal        func_8001F790
/* 1B2D4 8001A6D4 02402825 */   or        $a1, $s2, $zero
/* 1B2D8 8001A6D8 86A5000E */  lh         $a1, 0xE($s5)
/* 1B2DC 8001A6DC 86A4000C */  lh         $a0, 0xC($s5)
/* 1B2E0 8001A6E0 0C007DAD */  jal        func_8001F6B4
/* 1B2E4 8001A6E4 24A50010 */   addiu     $a1, $a1, 0x10
/* 1B2E8 8001A6E8 8FB9004C */  lw         $t9, 0x4C($sp)
/* 1B2EC 8001A6EC 3C058009 */  lui        $a1, %hi(D_80096C84)
/* 1B2F0 8001A6F0 24A56C84 */  addiu      $a1, $a1, %lo(D_80096C84)
/* 1B2F4 8001A6F4 02402025 */  or         $a0, $s2, $zero
/* 1B2F8 8001A6F8 8FA60054 */  lw         $a2, 0x54($sp)
/* 1B2FC 8001A6FC 8FA70050 */  lw         $a3, 0x50($sp)
/* 1B300 8001A700 0C01AE81 */  jal        func_8006BA04
/* 1B304 8001A704 AFB90010 */   sw        $t9, 0x10($sp)
/* 1B308 8001A708 02E02025 */  or         $a0, $s7, $zero
/* 1B30C 8001A70C 02402825 */  or         $a1, $s2, $zero
/* 1B310 8001A710 0C007DE4 */  jal        func_8001F790
/* 1B314 8001A714 02203025 */   or        $a2, $s1, $zero
.L8001A718:
/* 1B318 8001A718 8FA80094 */  lw         $t0, 0x94($sp)
.L8001A71C:
/* 1B31C 8001A71C 8FA90098 */  lw         $t1, 0x98($sp)
/* 1B320 8001A720 AD280000 */  sw         $t0, 0x0($t1)
/* 1B324 8001A724 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1B328 8001A728 8FB70038 */  lw         $s7, 0x38($sp)
/* 1B32C 8001A72C 8FB60034 */  lw         $s6, 0x34($sp)
/* 1B330 8001A730 8FB50030 */  lw         $s5, 0x30($sp)
/* 1B334 8001A734 8FB4002C */  lw         $s4, 0x2C($sp)
/* 1B338 8001A738 8FB30028 */  lw         $s3, 0x28($sp)
/* 1B33C 8001A73C 8FB20024 */  lw         $s2, 0x24($sp)
/* 1B340 8001A740 8FB10020 */  lw         $s1, 0x20($sp)
/* 1B344 8001A744 8FB0001C */  lw         $s0, 0x1C($sp)
/* 1B348 8001A748 03E00008 */  jr         $ra
/* 1B34C 8001A74C 27BD0098 */   addiu     $sp, $sp, 0x98

glabel func_8001A750
/* 1B350 8001A750 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1B354 8001A754 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1B358 8001A758 AFA40028 */  sw         $a0, 0x28($sp)
/* 1B35C 8001A75C AFA5002C */  sw         $a1, 0x2C($sp)
/* 1B360 8001A760 AFA60030 */  sw         $a2, 0x30($sp)
/* 1B364 8001A764 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1B368 8001A768 240400B5 */  addiu      $a0, $zero, 0xB5
/* 1B36C 8001A76C 24060014 */  addiu      $a2, $zero, 0x14
/* 1B370 8001A770 24050060 */  addiu      $a1, $zero, 0x60
/* 1B374 8001A774 240700FF */  addiu      $a3, $zero, 0xFF
/* 1B378 8001A778 0C007DD7 */  jal        func_8001F75C
/* 1B37C 8001A77C AFAF0024 */   sw        $t7, 0x24($sp)
/* 1B380 8001A780 8FA2002C */  lw         $v0, 0x2C($sp)
/* 1B384 8001A784 94440002 */  lhu        $a0, 0x2($v0)
/* 1B388 8001A788 94450004 */  lhu        $a1, 0x4($v0)
/* 1B38C 8001A78C 2484FFC4 */  addiu      $a0, $a0, -0x3C
/* 1B390 8001A790 0C007DAD */  jal        func_8001F6B4
/* 1B394 8001A794 24A50013 */   addiu     $a1, $a1, 0x13
/* 1B398 8001A798 8FB8002C */  lw         $t8, 0x2C($sp)
/* 1B39C 8001A79C 3C018009 */  lui        $at, %hi(D_80096CD0)
/* 1B3A0 8001A7A0 D4286CD0 */  ldc1       $f8, %lo(D_80096CD0)($at)
/* 1B3A4 8001A7A4 C7040010 */  lwc1       $f4, 0x10($t8)
/* 1B3A8 8001A7A8 3C058009 */  lui        $a1, %hi(D_80096C94)
/* 1B3AC 8001A7AC 24A56C94 */  addiu      $a1, $a1, %lo(D_80096C94)
/* 1B3B0 8001A7B0 460021A1 */  cvt.d.s    $f6, $f4
/* 1B3B4 8001A7B4 27A40018 */  addiu      $a0, $sp, 0x18
/* 1B3B8 8001A7B8 46283282 */  mul.d      $f10, $f6, $f8
/* 1B3BC 8001A7BC 4620540D */  trunc.w.d  $f16, $f10
/* 1B3C0 8001A7C0 44068000 */  mfc1       $a2, $f16
/* 1B3C4 8001A7C4 0C01AE81 */  jal        func_8006BA04
/* 1B3C8 8001A7C8 00000000 */   nop
/* 1B3CC 8001A7CC 3C068009 */  lui        $a2, %hi(D_8008C8CC)
/* 1B3D0 8001A7D0 24C6C8CC */  addiu      $a2, $a2, %lo(D_8008C8CC)
/* 1B3D4 8001A7D4 27A40024 */  addiu      $a0, $sp, 0x24
/* 1B3D8 8001A7D8 0C007DE4 */  jal        func_8001F790
/* 1B3DC 8001A7DC 27A50018 */   addiu     $a1, $sp, 0x18
/* 1B3E0 8001A7E0 8FA80024 */  lw         $t0, 0x24($sp)
/* 1B3E4 8001A7E4 8FA90028 */  lw         $t1, 0x28($sp)
/* 1B3E8 8001A7E8 AD280000 */  sw         $t0, 0x0($t1)
/* 1B3EC 8001A7EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1B3F0 8001A7F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 1B3F4 8001A7F4 03E00008 */  jr         $ra
/* 1B3F8 8001A7F8 00000000 */   nop

glabel func_8001A7FC
/* 1B3FC 8001A7FC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1B400 8001A800 AFB00020 */  sw         $s0, 0x20($sp)
/* 1B404 8001A804 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1B408 8001A808 AFA40048 */  sw         $a0, 0x48($sp)
/* 1B40C 8001A80C AFA60050 */  sw         $a2, 0x50($sp)
/* 1B410 8001A810 84AF000C */  lh         $t7, 0xC($a1)
/* 1B414 8001A814 94AE0000 */  lhu        $t6, 0x0($a1)
/* 1B418 8001A818 8C8D0000 */  lw         $t5, 0x0($a0)
/* 1B41C 8001A81C 00A08025 */  or         $s0, $a1, $zero
/* 1B420 8001A820 96190002 */  lhu        $t9, 0x2($s0)
/* 1B424 8001A824 860A000E */  lh         $t2, 0xE($s0)
/* 1B428 8001A828 01CF2821 */  addu       $a1, $t6, $t7
/* 1B42C 8001A82C AFAD0044 */  sw         $t5, 0x44($sp)
/* 1B430 8001A830 25AE0008 */  addiu      $t6, $t5, 0x8
/* 1B434 8001A834 AFAE0044 */  sw         $t6, 0x44($sp)
/* 1B438 8001A838 30B8FFFF */  andi       $t8, $a1, 0xFFFF
/* 1B43C 8001A83C 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 1B440 8001A840 03002825 */  or         $a1, $t8, $zero
/* 1B444 8001A844 ADAF0000 */  sw         $t7, 0x0($t5)
/* 1B448 8001A848 ADA00004 */  sw         $zero, 0x4($t5)
/* 1B44C 8001A84C 8FB80044 */  lw         $t8, 0x44($sp)
/* 1B450 8001A850 032A3021 */  addu       $a2, $t9, $t2
/* 1B454 8001A854 30CBFFFF */  andi       $t3, $a2, 0xFFFF
/* 1B458 8001A858 01603025 */  or         $a2, $t3, $zero
/* 1B45C 8001A85C 27190008 */  addiu      $t9, $t8, 0x8
/* 1B460 8001A860 AFB90044 */  sw         $t9, 0x44($sp)
/* 1B464 8001A864 3C0B0C08 */  lui        $t3, (0xC084000 >> 16)
/* 1B468 8001A868 3C0AB900 */  lui        $t2, (0xB900031D >> 16)
/* 1B46C 8001A86C 354A031D */  ori        $t2, $t2, (0xB900031D & 0xFFFF)
/* 1B470 8001A870 356B4000 */  ori        $t3, $t3, (0xC084000 & 0xFFFF)
/* 1B474 8001A874 AF0B0004 */  sw         $t3, 0x4($t8)
/* 1B478 8001A878 AF0A0000 */  sw         $t2, 0x0($t8)
/* 1B47C 8001A87C 8FAC0044 */  lw         $t4, 0x44($sp)
/* 1B480 8001A880 240FFFFF */  addiu      $t7, $zero, -0x1
/* 1B484 8001A884 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
/* 1B488 8001A888 258D0008 */  addiu      $t5, $t4, 0x8
/* 1B48C 8001A88C AFAD0044 */  sw         $t5, 0x44($sp)
/* 1B490 8001A890 AD8F0004 */  sw         $t7, 0x4($t4)
/* 1B494 8001A894 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1B498 8001A898 8E07001C */  lw         $a3, 0x1C($s0)
/* 1B49C 8001A89C A7A60040 */  sh         $a2, 0x40($sp)
/* 1B4A0 8001A8A0 A7A50042 */  sh         $a1, 0x42($sp)
/* 1B4A4 8001A8A4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1B4A8 8001A8A8 0C006743 */  jal        func_80019D0C
/* 1B4AC 8001A8AC 27A40044 */   addiu     $a0, $sp, 0x44
/* 1B4B0 8001A8B0 92180014 */  lbu        $t8, 0x14($s0)
/* 1B4B4 8001A8B4 3C018009 */  lui        $at, %hi(D_8008B714)
/* 1B4B8 8001A8B8 97A50042 */  lhu        $a1, 0x42($sp)
/* 1B4BC 8001A8BC A038B714 */  sb         $t8, %lo(D_8008B714)($at)
/* 1B4C0 8001A8C0 92190015 */  lbu        $t9, 0x15($s0)
/* 1B4C4 8001A8C4 3C018009 */  lui        $at, %hi(D_8008B718)
/* 1B4C8 8001A8C8 24180006 */  addiu      $t8, $zero, 0x6
/* 1B4CC 8001A8CC A039B718 */  sb         $t9, %lo(D_8008B718)($at)
/* 1B4D0 8001A8D0 920A0016 */  lbu        $t2, 0x16($s0)
/* 1B4D4 8001A8D4 3C018009 */  lui        $at, %hi(D_8008B71C)
/* 1B4D8 8001A8D8 97A60040 */  lhu        $a2, 0x40($sp)
/* 1B4DC 8001A8DC A02AB71C */  sb         $t2, %lo(D_8008B71C)($at)
/* 1B4E0 8001A8E0 920B0017 */  lbu        $t3, 0x17($s0)
/* 1B4E4 8001A8E4 3C018009 */  lui        $at, %hi(D_8008B720)
/* 1B4E8 8001A8E8 27A40044 */  addiu      $a0, $sp, 0x44
/* 1B4EC 8001A8EC A02BB720 */  sb         $t3, %lo(D_8008B720)($at)
/* 1B4F0 8001A8F0 86070012 */  lh         $a3, 0x12($s0)
/* 1B4F4 8001A8F4 24010064 */  addiu      $at, $zero, 0x64
/* 1B4F8 8001A8F8 AFB80010 */  sw         $t8, 0x10($sp)
/* 1B4FC 8001A8FC 000760C0 */  sll        $t4, $a3, 3
/* 1B500 8001A900 01876023 */  subu       $t4, $t4, $a3
/* 1B504 8001A904 000C6100 */  sll        $t4, $t4, 4
/* 1B508 8001A908 0181001A */  div        $zero, $t4, $at
/* 1B50C 8001A90C 00006812 */  mflo       $t5
/* 1B510 8001A910 000D7400 */  sll        $t6, $t5, 16
/* 1B514 8001A914 0C006A75 */  jal        func_8001A9D4
/* 1B518 8001A918 000E3C03 */   sra       $a3, $t6, 16
/* 1B51C 8001A91C 8FB90044 */  lw         $t9, 0x44($sp)
/* 1B520 8001A920 8FA90050 */  lw         $t1, 0x50($sp)
/* 1B524 8001A924 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 1B528 8001A928 272A0008 */  addiu      $t2, $t9, 0x8
/* 1B52C 8001A92C AFAA0044 */  sw         $t2, 0x44($sp)
/* 1B530 8001A930 AF200004 */  sw         $zero, 0x4($t9)
/* 1B534 8001A934 AF2B0000 */  sw         $t3, 0x0($t9)
/* 1B538 8001A938 8FAC0044 */  lw         $t4, 0x44($sp)
/* 1B53C 8001A93C 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
/* 1B540 8001A940 3C0F0050 */  lui        $t7, (0x504340 >> 16)
/* 1B544 8001A944 258D0008 */  addiu      $t5, $t4, 0x8
/* 1B548 8001A948 AFAD0044 */  sw         $t5, 0x44($sp)
/* 1B54C 8001A94C 35EF4340 */  ori        $t7, $t7, (0x504340 & 0xFFFF)
/* 1B550 8001A950 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
/* 1B554 8001A954 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1B558 8001A958 AD8F0004 */  sw         $t7, 0x4($t4)
/* 1B55C 8001A95C 8FA80044 */  lw         $t0, 0x44($sp)
/* 1B560 8001A960 3C0AFA00 */  lui        $t2, (0xFA000000 >> 16)
/* 1B564 8001A964 27A40044 */  addiu      $a0, $sp, 0x44
/* 1B568 8001A968 25190008 */  addiu      $t9, $t0, 0x8
/* 1B56C 8001A96C AFB90044 */  sw         $t9, 0x44($sp)
/* 1B570 8001A970 AD0A0000 */  sw         $t2, 0x0($t0)
/* 1B574 8001A974 912F0001 */  lbu        $t7, 0x1($t1)
/* 1B578 8001A978 912C0000 */  lbu        $t4, 0x0($t1)
/* 1B57C 8001A97C 912B0002 */  lbu        $t3, 0x2($t1)
/* 1B580 8001A980 000FC400 */  sll        $t8, $t7, 16
/* 1B584 8001A984 000C6E00 */  sll        $t5, $t4, 24
/* 1B588 8001A988 01B8C825 */  or         $t9, $t5, $t8
/* 1B58C 8001A98C 912D0003 */  lbu        $t5, 0x3($t1)
/* 1B590 8001A990 000B6200 */  sll        $t4, $t3, 8
/* 1B594 8001A994 032C7025 */  or         $t6, $t9, $t4
/* 1B598 8001A998 01CDC025 */  or         $t8, $t6, $t5
/* 1B59C 8001A99C AD180004 */  sw         $t8, 0x4($t0)
/* 1B5A0 8001A9A0 8E070018 */  lw         $a3, 0x18($s0)
/* 1B5A4 8001A9A4 96060002 */  lhu        $a2, 0x2($s0)
/* 1B5A8 8001A9A8 96050000 */  lhu        $a1, 0x0($s0)
/* 1B5AC 8001A9AC 0C006743 */  jal        func_80019D0C
/* 1B5B0 8001A9B0 AFA00010 */   sw        $zero, 0x10($sp)
/* 1B5B4 8001A9B4 8FAA0044 */  lw         $t2, 0x44($sp)
/* 1B5B8 8001A9B8 8FAB0048 */  lw         $t3, 0x48($sp)
/* 1B5BC 8001A9BC AD6A0000 */  sw         $t2, 0x0($t3)
/* 1B5C0 8001A9C0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1B5C4 8001A9C4 8FB00020 */  lw         $s0, 0x20($sp)
/* 1B5C8 8001A9C8 27BD0048 */  addiu      $sp, $sp, 0x48
/* 1B5CC 8001A9CC 03E00008 */  jr         $ra
/* 1B5D0 8001A9D0 00000000 */   nop

glabel func_8001A9D4
/* 1B5D4 8001A9D4 AFA40000 */  sw         $a0, 0x0($sp)
/* 1B5D8 8001A9D8 AFA50004 */  sw         $a1, 0x4($sp)
/* 1B5DC 8001A9DC AFA60008 */  sw         $a2, 0x8($sp)
/* 1B5E0 8001A9E0 AFA7000C */  sw         $a3, 0xC($sp)
/* 1B5E4 8001A9E4 8C880000 */  lw         $t0, 0x0($a0)
/* 1B5E8 8001A9E8 00A07025 */  or         $t6, $a1, $zero
/* 1B5EC 8001A9EC 01C02825 */  or         $a1, $t6, $zero
/* 1B5F0 8001A9F0 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 1B5F4 8001A9F4 3C0EBA00 */  lui        $t6, (0xBA001402 >> 16)
/* 1B5F8 8001A9F8 AD0D0000 */  sw         $t5, 0x0($t0)
/* 1B5FC 8001A9FC 25090008 */  addiu      $t1, $t0, 0x8
/* 1B600 8001AA00 00E0C025 */  or         $t8, $a3, $zero
/* 1B604 8001AA04 35CE1402 */  ori        $t6, $t6, (0xBA001402 & 0xFFFF)
/* 1B608 8001AA08 AD000004 */  sw         $zero, 0x4($t0)
/* 1B60C 8001AA0C 03003825 */  or         $a3, $t8, $zero
/* 1B610 8001AA10 00C07825 */  or         $t7, $a2, $zero
/* 1B614 8001AA14 AD2E0000 */  sw         $t6, 0x0($t1)
/* 1B618 8001AA18 25220008 */  addiu      $v0, $t1, 0x8
/* 1B61C 8001AA1C 01E03025 */  or         $a2, $t7, $zero
/* 1B620 8001AA20 AD200004 */  sw         $zero, 0x4($t1)
/* 1B624 8001AA24 3C180800 */  lui        $t8, (0x8000800 >> 16)
/* 1B628 8001AA28 37180800 */  ori        $t8, $t8, (0x8000800 & 0xFFFF)
/* 1B62C 8001AA2C 3C0FBB00 */  lui        $t7, (0xBB000000 >> 16)
/* 1B630 8001AA30 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1B634 8001AA34 AC580004 */  sw         $t8, 0x4($v0)
/* 1B638 8001AA38 244B0008 */  addiu      $t3, $v0, 0x8
/* 1B63C 8001AA3C 3C19BA00 */  lui        $t9, (0xBA000E02 >> 16)
/* 1B640 8001AA40 37390E02 */  ori        $t9, $t9, (0xBA000E02 & 0xFFFF)
/* 1B644 8001AA44 25630008 */  addiu      $v1, $t3, 0x8
/* 1B648 8001AA48 AD790000 */  sw         $t9, 0x0($t3)
/* 1B64C 8001AA4C AD600004 */  sw         $zero, 0x4($t3)
/* 1B650 8001AA50 3C0CBA00 */  lui        $t4, (0xBA001301 >> 16)
/* 1B654 8001AA54 358C1301 */  ori        $t4, $t4, (0xBA001301 & 0xFFFF)
/* 1B658 8001AA58 24680008 */  addiu      $t0, $v1, 0x8
/* 1B65C 8001AA5C AC6C0000 */  sw         $t4, 0x0($v1)
/* 1B660 8001AA60 AC600004 */  sw         $zero, 0x4($v1)
/* 1B664 8001AA64 3C0E0F0A */  lui        $t6, (0xF0A4000 >> 16)
/* 1B668 8001AA68 3C0DB900 */  lui        $t5, (0xB900031D >> 16)
/* 1B66C 8001AA6C 35AD031D */  ori        $t5, $t5, (0xB900031D & 0xFFFF)
/* 1B670 8001AA70 35CE4000 */  ori        $t6, $t6, (0xF0A4000 & 0xFFFF)
/* 1B674 8001AA74 AD0E0004 */  sw         $t6, 0x4($t0)
/* 1B678 8001AA78 AD0D0000 */  sw         $t5, 0x0($t0)
/* 1B67C 8001AA7C 25090008 */  addiu      $t1, $t0, 0x8
/* 1B680 8001AA80 3C0FFCFF */  lui        $t7, (0xFCFFFFFF >> 16)
/* 1B684 8001AA84 35EFFFFF */  ori        $t7, $t7, (0xFCFFFFFF & 0xFFFF)
/* 1B688 8001AA88 3C18FFFD */  lui        $t8, (0xFFFDF6FB >> 16)
/* 1B68C 8001AA8C 3718F6FB */  ori        $t8, $t8, (0xFFFDF6FB & 0xFFFF)
/* 1B690 8001AA90 AD2F0000 */  sw         $t7, 0x0($t1)
/* 1B694 8001AA94 252A0008 */  addiu      $t2, $t1, 0x8
/* 1B698 8001AA98 AD380004 */  sw         $t8, 0x4($t1)
/* 1B69C 8001AA9C 3C19B900 */  lui        $t9, (0xB9000002 >> 16)
/* 1B6A0 8001AAA0 37390002 */  ori        $t9, $t9, (0xB9000002 & 0xFFFF)
/* 1B6A4 8001AAA4 25420008 */  addiu      $v0, $t2, 0x8
/* 1B6A8 8001AAA8 3C0CBA00 */  lui        $t4, (0xBA000402 >> 16)
/* 1B6AC 8001AAAC AD590000 */  sw         $t9, 0x0($t2)
/* 1B6B0 8001AAB0 AD400004 */  sw         $zero, 0x4($t2)
/* 1B6B4 8001AAB4 358C0402 */  ori        $t4, $t4, (0xBA000402 & 0xFFFF)
/* 1B6B8 8001AAB8 AC4C0000 */  sw         $t4, 0x0($v0)
/* 1B6BC 8001AABC 240D0030 */  addiu      $t5, $zero, 0x30
/* 1B6C0 8001AAC0 AC4D0004 */  sw         $t5, 0x4($v0)
/* 1B6C4 8001AAC4 24440008 */  addiu      $a0, $v0, 0x8
/* 1B6C8 8001AAC8 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
/* 1B6CC 8001AACC AC8E0000 */  sw         $t6, 0x0($a0)
/* 1B6D0 8001AAD0 3C0F8009 */  lui        $t7, %hi(D_8008B714)
/* 1B6D4 8001AAD4 91F8B714 */  lbu        $t8, %lo(D_8008B714)($t7)
/* 1B6D8 8001AAD8 3C0C8009 */  lui        $t4, %hi(D_8008B718)
/* 1B6DC 8001AADC 918DB718 */  lbu        $t5, %lo(D_8008B718)($t4)
/* 1B6E0 8001AAE0 0018CE00 */  sll        $t9, $t8, 24
/* 1B6E4 8001AAE4 3C188009 */  lui        $t8, %hi(D_8008B71C)
/* 1B6E8 8001AAE8 000D7400 */  sll        $t6, $t5, 16
/* 1B6EC 8001AAEC 930CB71C */  lbu        $t4, %lo(D_8008B71C)($t8)
/* 1B6F0 8001AAF0 032E7825 */  or         $t7, $t9, $t6
/* 1B6F4 8001AAF4 3C0E8009 */  lui        $t6, %hi(D_8008B720)
/* 1B6F8 8001AAF8 91D8B720 */  lbu        $t8, %lo(D_8008B720)($t6)
/* 1B6FC 8001AAFC 000C6A00 */  sll        $t5, $t4, 8
/* 1B700 8001AB00 01EDC825 */  or         $t9, $t7, $t5
/* 1B704 8001AB04 03386025 */  or         $t4, $t9, $t8
/* 1B708 8001AB08 AC8C0004 */  sw         $t4, 0x4($a0)
/* 1B70C 8001AB0C 87AC0012 */  lh         $t4, 0x12($sp)
/* 1B710 8001AB10 00A77821 */  addu       $t7, $a1, $a3
/* 1B714 8001AB14 000F6880 */  sll        $t5, $t7, 2
/* 1B718 8001AB18 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 1B71C 8001AB1C 000ECB00 */  sll        $t9, $t6, 12
/* 1B720 8001AB20 00CC7821 */  addu       $t7, $a2, $t4
/* 1B724 8001AB24 000F6880 */  sll        $t5, $t7, 2
/* 1B728 8001AB28 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 1B72C 8001AB2C 0321C025 */  or         $t8, $t9, $at
/* 1B730 8001AB30 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 1B734 8001AB34 030EC825 */  or         $t9, $t8, $t6
/* 1B738 8001AB38 00056080 */  sll        $t4, $a1, 2
/* 1B73C 8001AB3C 24830008 */  addiu      $v1, $a0, 0x8
/* 1B740 8001AB40 318F0FFF */  andi       $t7, $t4, 0xFFF
/* 1B744 8001AB44 0006C080 */  sll        $t8, $a2, 2
/* 1B748 8001AB48 330E0FFF */  andi       $t6, $t8, 0xFFF
/* 1B74C 8001AB4C 000F6B00 */  sll        $t5, $t7, 12
/* 1B750 8001AB50 AC790000 */  sw         $t9, 0x0($v1)
/* 1B754 8001AB54 01AEC825 */  or         $t9, $t5, $t6
/* 1B758 8001AB58 246A0008 */  addiu      $t2, $v1, 0x8
/* 1B75C 8001AB5C AC790004 */  sw         $t9, 0x4($v1)
/* 1B760 8001AB60 3C0CB400 */  lui        $t4, (0xB4000000 >> 16)
/* 1B764 8001AB64 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1B768 8001AB68 AD400004 */  sw         $zero, 0x4($t2)
/* 1B76C 8001AB6C 254B0008 */  addiu      $t3, $t2, 0x8
/* 1B770 8001AB70 3C180400 */  lui        $t8, (0x4000400 >> 16)
/* 1B774 8001AB74 37180400 */  ori        $t8, $t8, (0x4000400 & 0xFFFF)
/* 1B778 8001AB78 3C0FB300 */  lui        $t7, (0xB3000000 >> 16)
/* 1B77C 8001AB7C AD6F0000 */  sw         $t7, 0x0($t3)
/* 1B780 8001AB80 AD780004 */  sw         $t8, 0x4($t3)
/* 1B784 8001AB84 8FAD0000 */  lw         $t5, 0x0($sp)
/* 1B788 8001AB88 25620008 */  addiu      $v0, $t3, 0x8
/* 1B78C 8001AB8C 03E00008 */  jr         $ra
/* 1B790 8001AB90 ADA20000 */   sw        $v0, 0x0($t5)

glabel func_8001AB94
/* 1B794 8001AB94 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1B798 8001AB98 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1B79C 8001AB9C AFA40040 */  sw         $a0, 0x40($sp)
/* 1B7A0 8001ABA0 AFA50044 */  sw         $a1, 0x44($sp)
/* 1B7A4 8001ABA4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1B7A8 8001ABA8 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
/* 1B7AC 8001ABAC 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 1B7B0 8001ABB0 AFAF003C */  sw         $t7, 0x3C($sp)
/* 1B7B4 8001ABB4 8CB90010 */  lw         $t9, 0x10($a1)
/* 1B7B8 8001ABB8 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
/* 1B7BC 8001ABBC 3C180050 */  lui        $t8, (0x504240 >> 16)
/* 1B7C0 8001ABC0 13200021 */  beqz       $t9, .L8001AC48
/* 1B7C4 8001ABC4 25EA0008 */   addiu     $t2, $t7, 0x8
/* 1B7C8 8001ABC8 AFAA003C */  sw         $t2, 0x3C($sp)
/* 1B7CC 8001ABCC ADE00004 */  sw         $zero, 0x4($t7)
/* 1B7D0 8001ABD0 ADEB0000 */  sw         $t3, 0x0($t7)
/* 1B7D4 8001ABD4 8FAC003C */  lw         $t4, 0x3C($sp)
/* 1B7D8 8001ABD8 37184240 */  ori        $t8, $t8, (0x504240 & 0xFFFF)
/* 1B7DC 8001ABDC 3C0BFF2F */  lui        $t3, (0xFF2FFFFF >> 16)
/* 1B7E0 8001ABE0 258D0008 */  addiu      $t5, $t4, 0x8
/* 1B7E4 8001ABE4 AFAD003C */  sw         $t5, 0x3C($sp)
/* 1B7E8 8001ABE8 AD980004 */  sw         $t8, 0x4($t4)
/* 1B7EC 8001ABEC AD8E0000 */  sw         $t6, 0x0($t4)
/* 1B7F0 8001ABF0 8FB9003C */  lw         $t9, 0x3C($sp)
/* 1B7F4 8001ABF4 3C0AFC11 */  lui        $t2, (0xFC119623 >> 16)
/* 1B7F8 8001ABF8 354A9623 */  ori        $t2, $t2, (0xFC119623 & 0xFFFF)
/* 1B7FC 8001ABFC 272F0008 */  addiu      $t7, $t9, 0x8
/* 1B800 8001AC00 AFAF003C */  sw         $t7, 0x3C($sp)
/* 1B804 8001AC04 356BFFFF */  ori        $t3, $t3, (0xFF2FFFFF & 0xFFFF)
/* 1B808 8001AC08 AF2B0004 */  sw         $t3, 0x4($t9)
/* 1B80C 8001AC0C AF2A0000 */  sw         $t2, 0x0($t9)
/* 1B810 8001AC10 8FAC003C */  lw         $t4, 0x3C($sp)
/* 1B814 8001AC14 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
/* 1B818 8001AC18 2418FFC8 */  addiu      $t8, $zero, -0x38
/* 1B81C 8001AC1C 258D0008 */  addiu      $t5, $t4, 0x8
/* 1B820 8001AC20 AFAD003C */  sw         $t5, 0x3C($sp)
/* 1B824 8001AC24 AD980004 */  sw         $t8, 0x4($t4)
/* 1B828 8001AC28 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1B82C 8001AC2C 8FB90044 */  lw         $t9, 0x44($sp)
/* 1B830 8001AC30 27A4003C */  addiu      $a0, $sp, 0x3C
/* 1B834 8001AC34 97250000 */  lhu        $a1, 0x0($t9)
/* 1B838 8001AC38 97260002 */  lhu        $a2, 0x2($t9)
/* 1B83C 8001AC3C 8F270010 */  lw         $a3, 0x10($t9)
/* 1B840 8001AC40 0C006743 */  jal        func_80019D0C
/* 1B844 8001AC44 AFA00010 */   sw        $zero, 0x10($sp)
.L8001AC48:
/* 1B848 8001AC48 8FAF003C */  lw         $t7, 0x3C($sp)
/* 1B84C 8001AC4C 8FAA0040 */  lw         $t2, 0x40($sp)
/* 1B850 8001AC50 AD4F0000 */  sw         $t7, 0x0($t2)
/* 1B854 8001AC54 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1B858 8001AC58 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1B85C 8001AC5C 03E00008 */  jr         $ra
/* 1B860 8001AC60 00000000 */   nop

glabel func_8001AC64
/* 1B864 8001AC64 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1B868 8001AC68 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1B86C 8001AC6C AFB00020 */  sw         $s0, 0x20($sp)
/* 1B870 8001AC70 AFA40040 */  sw         $a0, 0x40($sp)
/* 1B874 8001AC74 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1B878 8001AC78 00A08025 */  or         $s0, $a1, $zero
/* 1B87C 8001AC7C 00807025 */  or         $t6, $a0, $zero
/* 1B880 8001AC80 AFAF003C */  sw         $t7, 0x3C($sp)
/* 1B884 8001AC84 84B80008 */  lh         $t8, 0x8($a1)
/* 1B888 8001AC88 240500FF */  addiu      $a1, $zero, 0xFF
/* 1B88C 8001AC8C 240400FF */  addiu      $a0, $zero, 0xFF
/* 1B890 8001AC90 07010004 */  bgez       $t8, .L8001ACA4
/* 1B894 8001AC94 3319003F */   andi      $t9, $t8, 0x3F
/* 1B898 8001AC98 13200002 */  beqz       $t9, .L8001ACA4
/* 1B89C 8001AC9C 00000000 */   nop
/* 1B8A0 8001ACA0 2739FFC0 */  addiu      $t9, $t9, -0x40
.L8001ACA4:
/* 1B8A4 8001ACA4 13200008 */  beqz       $t9, .L8001ACC8
/* 1B8A8 8001ACA8 00003025 */   or        $a2, $zero, $zero
/* 1B8AC 8001ACAC 240400FF */  addiu      $a0, $zero, 0xFF
/* 1B8B0 8001ACB0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1B8B4 8001ACB4 00003025 */  or         $a2, $zero, $zero
/* 1B8B8 8001ACB8 0C007DD7 */  jal        func_8001F75C
/* 1B8BC 8001ACBC 240700FF */   addiu     $a3, $zero, 0xFF
/* 1B8C0 8001ACC0 10000004 */  b          .L8001ACD4
/* 1B8C4 8001ACC4 2404006A */   addiu     $a0, $zero, 0x6A
.L8001ACC8:
/* 1B8C8 8001ACC8 0C007DD7 */  jal        func_8001F75C
/* 1B8CC 8001ACCC 2407007F */   addiu     $a3, $zero, 0x7F
/* 1B8D0 8001ACD0 2404006A */  addiu      $a0, $zero, 0x6A
.L8001ACD4:
/* 1B8D4 8001ACD4 0C007DAD */  jal        func_8001F6B4
/* 1B8D8 8001ACD8 96050002 */   lhu       $a1, 0x2($s0)
/* 1B8DC 8001ACDC 3C058009 */  lui        $a1, %hi(D_80096C98)
/* 1B8E0 8001ACE0 3C068009 */  lui        $a2, %hi(D_8008C540)
/* 1B8E4 8001ACE4 24C6C540 */  addiu      $a2, $a2, %lo(D_8008C540)
/* 1B8E8 8001ACE8 24A56C98 */  addiu      $a1, $a1, %lo(D_80096C98)
/* 1B8EC 8001ACEC 0C007DE4 */  jal        func_8001F790
/* 1B8F0 8001ACF0 27A4003C */   addiu     $a0, $sp, 0x3C
/* 1B8F4 8001ACF4 8FA8003C */  lw         $t0, 0x3C($sp)
/* 1B8F8 8001ACF8 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 1B8FC 8001ACFC 3C0EFFFF */  lui        $t6, (0xFFFF0096 >> 16)
/* 1B900 8001AD00 25090008 */  addiu      $t1, $t0, 0x8
/* 1B904 8001AD04 AFA9003C */  sw         $t1, 0x3C($sp)
/* 1B908 8001AD08 AD000004 */  sw         $zero, 0x4($t0)
/* 1B90C 8001AD0C AD0A0000 */  sw         $t2, 0x0($t0)
/* 1B910 8001AD10 8FAB003C */  lw         $t3, 0x3C($sp)
/* 1B914 8001AD14 35CE0096 */  ori        $t6, $t6, (0xFFFF0096 & 0xFFFF)
/* 1B918 8001AD18 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1B91C 8001AD1C 256C0008 */  addiu      $t4, $t3, 0x8
/* 1B920 8001AD20 AFAC003C */  sw         $t4, 0x3C($sp)
/* 1B924 8001AD24 AD6E0004 */  sw         $t6, 0x4($t3)
/* 1B928 8001AD28 AD6D0000 */  sw         $t5, 0x0($t3)
/* 1B92C 8001AD2C 8FAF003C */  lw         $t7, 0x3C($sp)
/* 1B930 8001AD30 3C080040 */  lui        $t0, (0x404340 >> 16)
/* 1B934 8001AD34 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1B938 8001AD38 25F80008 */  addiu      $t8, $t7, 0x8
/* 1B93C 8001AD3C AFB8003C */  sw         $t8, 0x3C($sp)
/* 1B940 8001AD40 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1B944 8001AD44 35084340 */  ori        $t0, $t0, (0x404340 & 0xFFFF)
/* 1B948 8001AD48 ADE80004 */  sw         $t0, 0x4($t7)
/* 1B94C 8001AD4C ADF90000 */  sw         $t9, 0x0($t7)
/* 1B950 8001AD50 9205000C */  lbu        $a1, 0xC($s0)
/* 1B954 8001AD54 24010001 */  addiu      $at, $zero, 0x1
/* 1B958 8001AD58 27A4003C */  addiu      $a0, $sp, 0x3C
/* 1B95C 8001AD5C 54A10009 */  bnel       $a1, $at, .L8001AD84
/* 1B960 8001AD60 24010002 */   addiu     $at, $zero, 0x2
/* 1B964 8001AD64 96050000 */  lhu        $a1, 0x0($s0)
/* 1B968 8001AD68 96060002 */  lhu        $a2, 0x2($s0)
/* 1B96C 8001AD6C 8E070010 */  lw         $a3, 0x10($s0)
/* 1B970 8001AD70 0C006743 */  jal        func_80019D0C
/* 1B974 8001AD74 AFA00010 */   sw        $zero, 0x10($sp)
/* 1B978 8001AD78 1000000B */  b          .L8001ADA8
/* 1B97C 8001AD7C 8FAA003C */   lw        $t2, 0x3C($sp)
/* 1B980 8001AD80 24010002 */  addiu      $at, $zero, 0x2
.L8001AD84:
/* 1B984 8001AD84 14A10007 */  bne        $a1, $at, .L8001ADA4
/* 1B988 8001AD88 27A4003C */   addiu     $a0, $sp, 0x3C
/* 1B98C 8001AD8C 96050000 */  lhu        $a1, 0x0($s0)
/* 1B990 8001AD90 96060002 */  lhu        $a2, 0x2($s0)
/* 1B994 8001AD94 8E070010 */  lw         $a3, 0x10($s0)
/* 1B998 8001AD98 24090001 */  addiu      $t1, $zero, 0x1
/* 1B99C 8001AD9C 0C006743 */  jal        func_80019D0C
/* 1B9A0 8001ADA0 AFA90010 */   sw        $t1, 0x10($sp)
.L8001ADA4:
/* 1B9A4 8001ADA4 8FAA003C */  lw         $t2, 0x3C($sp)
.L8001ADA8:
/* 1B9A8 8001ADA8 8FAB0040 */  lw         $t3, 0x40($sp)
/* 1B9AC 8001ADAC AD6A0000 */  sw         $t2, 0x0($t3)
/* 1B9B0 8001ADB0 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1B9B4 8001ADB4 8FB00020 */  lw         $s0, 0x20($sp)
/* 1B9B8 8001ADB8 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1B9BC 8001ADBC 03E00008 */  jr         $ra
/* 1B9C0 8001ADC0 00000000 */   nop

glabel func_8001ADC4
/* 1B9C4 8001ADC4 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* 1B9C8 8001ADC8 2463FF90 */  addiu      $v1, $v1, %lo(D_8013FF90)
/* 1B9CC 8001ADCC 80620000 */  lb         $v0, 0x0($v1)
/* 1B9D0 8001ADD0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 1B9D4 8001ADD4 AFB00020 */  sw         $s0, 0x20($sp)
/* 1B9D8 8001ADD8 00A08025 */  or         $s0, $a1, $zero
/* 1B9DC 8001ADDC AFBF0024 */  sw         $ra, 0x24($sp)
/* 1B9E0 8001ADE0 AFA40048 */  sw         $a0, 0x48($sp)
/* 1B9E4 8001ADE4 14400003 */  bnez       $v0, .L8001ADF4
/* 1B9E8 8001ADE8 AFA60050 */   sw        $a2, 0x50($sp)
/* 1B9EC 8001ADEC 906E0019 */  lbu        $t6, 0x19($v1)
/* 1B9F0 8001ADF0 11C0007D */  beqz       $t6, .L8001AFE8
.L8001ADF4:
/* 1B9F4 8001ADF4 24010004 */   addiu     $at, $zero, 0x4
/* 1B9F8 8001ADF8 1041007B */  beq        $v0, $at, .L8001AFE8
/* 1B9FC 8001ADFC 24010002 */   addiu     $at, $zero, 0x2
/* 1BA00 8001AE00 10410079 */  beq        $v0, $at, .L8001AFE8
/* 1BA04 8001AE04 8FAF0048 */   lw        $t7, 0x48($sp)
/* 1BA08 8001AE08 8DF80000 */  lw         $t8, 0x0($t7)
/* 1BA0C 8001AE0C 8FB90050 */  lw         $t9, 0x50($sp)
/* 1BA10 8001AE10 AFB80044 */  sw         $t8, 0x44($sp)
/* 1BA14 8001AE14 83220050 */  lb         $v0, 0x50($t9)
/* 1BA18 8001AE18 04420004 */  bltzl      $v0, .L8001AE2C
/* 1BA1C 8001AE1C 00021823 */   negu      $v1, $v0
/* 1BA20 8001AE20 10000002 */  b          .L8001AE2C
/* 1BA24 8001AE24 00401825 */   or        $v1, $v0, $zero
/* 1BA28 8001AE28 00021823 */  negu       $v1, $v0
.L8001AE2C:
/* 1BA2C 8001AE2C 04610004 */  bgez       $v1, .L8001AE40
/* 1BA30 8001AE30 30690001 */   andi      $t1, $v1, 0x1
/* 1BA34 8001AE34 11200002 */  beqz       $t1, .L8001AE40
/* 1BA38 8001AE38 00000000 */   nop
/* 1BA3C 8001AE3C 2529FFFE */  addiu      $t1, $t1, -0x2
.L8001AE40:
/* 1BA40 8001AE40 11200011 */  beqz       $t1, .L8001AE88
/* 1BA44 8001AE44 240400FF */   addiu     $a0, $zero, 0xFF
/* 1BA48 8001AE48 18400007 */  blez       $v0, .L8001AE68
/* 1BA4C 8001AE4C 00002025 */   or        $a0, $zero, $zero
/* 1BA50 8001AE50 24050015 */  addiu      $a1, $zero, 0x15
/* 1BA54 8001AE54 240600AE */  addiu      $a2, $zero, 0xAE
/* 1BA58 8001AE58 0C007DD7 */  jal        func_8001F75C
/* 1BA5C 8001AE5C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1BA60 8001AE60 1000000E */  b          .L8001AE9C
/* 1BA64 8001AE64 96040000 */   lhu       $a0, 0x0($s0)
.L8001AE68:
/* 1BA68 8001AE68 0441000B */  bgez       $v0, .L8001AE98
/* 1BA6C 8001AE6C 240400B5 */   addiu     $a0, $zero, 0xB5
/* 1BA70 8001AE70 24050060 */  addiu      $a1, $zero, 0x60
/* 1BA74 8001AE74 24060014 */  addiu      $a2, $zero, 0x14
/* 1BA78 8001AE78 0C007DD7 */  jal        func_8001F75C
/* 1BA7C 8001AE7C 240700FF */   addiu     $a3, $zero, 0xFF
/* 1BA80 8001AE80 10000006 */  b          .L8001AE9C
/* 1BA84 8001AE84 96040000 */   lhu       $a0, 0x0($s0)
.L8001AE88:
/* 1BA88 8001AE88 240500FF */  addiu      $a1, $zero, 0xFF
/* 1BA8C 8001AE8C 240600FF */  addiu      $a2, $zero, 0xFF
/* 1BA90 8001AE90 0C007DD7 */  jal        func_8001F75C
/* 1BA94 8001AE94 240700FF */   addiu     $a3, $zero, 0xFF
.L8001AE98:
/* 1BA98 8001AE98 96040000 */  lhu        $a0, 0x0($s0)
.L8001AE9C:
/* 1BA9C 8001AE9C 0C007DAD */  jal        func_8001F6B4
/* 1BAA0 8001AEA0 96050002 */   lhu       $a1, 0x2($s0)
/* 1BAA4 8001AEA4 8FAA0050 */  lw         $t2, 0x50($sp)
/* 1BAA8 8001AEA8 3C058009 */  lui        $a1, %hi(D_80096CA4)
/* 1BAAC 8001AEAC 24A56CA4 */  addiu      $a1, $a1, %lo(D_80096CA4)
/* 1BAB0 8001AEB0 27A40040 */  addiu      $a0, $sp, 0x40
/* 1BAB4 8001AEB4 0C01AE81 */  jal        func_8006BA04
/* 1BAB8 8001AEB8 91460048 */   lbu       $a2, 0x48($t2)
/* 1BABC 8001AEBC 27A40044 */  addiu      $a0, $sp, 0x44
/* 1BAC0 8001AEC0 27A50040 */  addiu      $a1, $sp, 0x40
/* 1BAC4 8001AEC4 0C007DE4 */  jal        func_8001F790
/* 1BAC8 8001AEC8 8E06000C */   lw        $a2, 0xC($s0)
/* 1BACC 8001AECC 240400FF */  addiu      $a0, $zero, 0xFF
/* 1BAD0 8001AED0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1BAD4 8001AED4 240600FF */  addiu      $a2, $zero, 0xFF
/* 1BAD8 8001AED8 0C007DD7 */  jal        func_8001F75C
/* 1BADC 8001AEDC 240700FF */   addiu     $a3, $zero, 0xFF
/* 1BAE0 8001AEE0 96040000 */  lhu        $a0, 0x0($s0)
/* 1BAE4 8001AEE4 96050002 */  lhu        $a1, 0x2($s0)
/* 1BAE8 8001AEE8 2484002A */  addiu      $a0, $a0, 0x2A
/* 1BAEC 8001AEEC 0C007DAD */  jal        func_8001F6B4
/* 1BAF0 8001AEF0 24A50010 */   addiu     $a1, $a1, 0x10
/* 1BAF4 8001AEF4 3C058009 */  lui        $a1, %hi(D_80096CA8)
/* 1BAF8 8001AEF8 3C068014 */  lui        $a2, %hi(gPlayerRacePos)
/* 1BAFC 8001AEFC 90C6FC91 */  lbu        $a2, %lo(gPlayerRacePos)($a2)
/* 1BB00 8001AF00 24A56CA8 */  addiu      $a1, $a1, %lo(D_80096CA8)
/* 1BB04 8001AF04 0C01AE81 */  jal        func_8006BA04
/* 1BB08 8001AF08 27A40040 */   addiu     $a0, $sp, 0x40
/* 1BB0C 8001AF0C 27A40044 */  addiu      $a0, $sp, 0x44
/* 1BB10 8001AF10 27A50040 */  addiu      $a1, $sp, 0x40
/* 1BB14 8001AF14 0C007DE4 */  jal        func_8001F790
/* 1BB18 8001AF18 8E060010 */   lw        $a2, 0x10($s0)
/* 1BB1C 8001AF1C 8FAB0044 */  lw         $t3, 0x44($sp)
/* 1BB20 8001AF20 3C0DE700 */  lui        $t5, (0xE7000000 >> 16)
/* 1BB24 8001AF24 3C18FA00 */  lui        $t8, (0xFA000000 >> 16)
/* 1BB28 8001AF28 256C0008 */  addiu      $t4, $t3, 0x8
/* 1BB2C 8001AF2C AFAC0044 */  sw         $t4, 0x44($sp)
/* 1BB30 8001AF30 AD600004 */  sw         $zero, 0x4($t3)
/* 1BB34 8001AF34 AD6D0000 */  sw         $t5, 0x0($t3)
/* 1BB38 8001AF38 8FAE0044 */  lw         $t6, 0x44($sp)
/* 1BB3C 8001AF3C 2419FFFF */  addiu      $t9, $zero, -0x1
/* 1BB40 8001AF40 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
/* 1BB44 8001AF44 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BB48 8001AF48 AFAF0044 */  sw         $t7, 0x44($sp)
/* 1BB4C 8001AF4C ADD90004 */  sw         $t9, 0x4($t6)
/* 1BB50 8001AF50 ADD80000 */  sw         $t8, 0x0($t6)
/* 1BB54 8001AF54 8FA90044 */  lw         $t1, 0x44($sp)
/* 1BB58 8001AF58 3C0C0050 */  lui        $t4, (0x504240 >> 16)
/* 1BB5C 8001AF5C 358C4240 */  ori        $t4, $t4, (0x504240 & 0xFFFF)
/* 1BB60 8001AF60 252A0008 */  addiu      $t2, $t1, 0x8
/* 1BB64 8001AF64 AFAA0044 */  sw         $t2, 0x44($sp)
/* 1BB68 8001AF68 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
/* 1BB6C 8001AF6C AD2B0000 */  sw         $t3, 0x0($t1)
/* 1BB70 8001AF70 AD2C0004 */  sw         $t4, 0x4($t1)
/* 1BB74 8001AF74 96060002 */  lhu        $a2, 0x2($s0)
/* 1BB78 8001AF78 96050000 */  lhu        $a1, 0x0($s0)
/* 1BB7C 8001AF7C 8E070014 */  lw         $a3, 0x14($s0)
/* 1BB80 8001AF80 24C60010 */  addiu      $a2, $a2, 0x10
/* 1BB84 8001AF84 24A5001E */  addiu      $a1, $a1, 0x1E
/* 1BB88 8001AF88 30ADFFFF */  andi       $t5, $a1, 0xFFFF
/* 1BB8C 8001AF8C 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* 1BB90 8001AF90 01C03025 */  or         $a2, $t6, $zero
/* 1BB94 8001AF94 01A02825 */  or         $a1, $t5, $zero
/* 1BB98 8001AF98 AFA00010 */  sw         $zero, 0x10($sp)
/* 1BB9C 8001AF9C 0C006743 */  jal        func_80019D0C
/* 1BBA0 8001AFA0 27A40044 */   addiu     $a0, $sp, 0x44
/* 1BBA4 8001AFA4 8E070018 */  lw         $a3, 0x18($s0)
/* 1BBA8 8001AFA8 27A40044 */  addiu      $a0, $sp, 0x44
/* 1BBAC 8001AFAC 50E0000C */  beql       $a3, $zero, .L8001AFE0
/* 1BBB0 8001AFB0 8FB90044 */   lw        $t9, 0x44($sp)
/* 1BBB4 8001AFB4 96050000 */  lhu        $a1, 0x0($s0)
/* 1BBB8 8001AFB8 96060002 */  lhu        $a2, 0x2($s0)
/* 1BBBC 8001AFBC AFA00010 */  sw         $zero, 0x10($sp)
/* 1BBC0 8001AFC0 24A5001F */  addiu      $a1, $a1, 0x1F
/* 1BBC4 8001AFC4 24C60004 */  addiu      $a2, $a2, 0x4
/* 1BBC8 8001AFC8 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 1BBCC 8001AFCC 30AFFFFF */  andi       $t7, $a1, 0xFFFF
/* 1BBD0 8001AFD0 01E02825 */  or         $a1, $t7, $zero
/* 1BBD4 8001AFD4 0C006743 */  jal        func_80019D0C
/* 1BBD8 8001AFD8 03003025 */   or        $a2, $t8, $zero
/* 1BBDC 8001AFDC 8FB90044 */  lw         $t9, 0x44($sp)
.L8001AFE0:
/* 1BBE0 8001AFE0 8FA90048 */  lw         $t1, 0x48($sp)
/* 1BBE4 8001AFE4 AD390000 */  sw         $t9, 0x0($t1)
.L8001AFE8:
/* 1BBE8 8001AFE8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1BBEC 8001AFEC 8FB00020 */  lw         $s0, 0x20($sp)
/* 1BBF0 8001AFF0 27BD0048 */  addiu      $sp, $sp, 0x48
/* 1BBF4 8001AFF4 03E00008 */  jr         $ra
/* 1BBF8 8001AFF8 00000000 */   nop

glabel func_8001AFFC
/* 1BBFC 8001AFFC 03E00008 */  jr         $ra
/* 1BC00 8001B000 00000000 */   nop

glabel func_8001B004
/* 1BC04 8001B004 27BDFF70 */  addiu      $sp, $sp, -0x90
/* 1BC08 8001B008 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1BC0C 8001B00C AFB00020 */  sw         $s0, 0x20($sp)
/* 1BC10 8001B010 AFA40090 */  sw         $a0, 0x90($sp)
/* 1BC14 8001B014 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1BC18 8001B018 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1BC1C 8001B01C 00A08025 */  or         $s0, $a1, $zero
/* 1BC20 8001B020 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BC24 8001B024 25F80008 */  addiu      $t8, $t7, 0x8
/* 1BC28 8001B028 AFB8008C */  sw         $t8, 0x8C($sp)
/* 1BC2C 8001B02C ADE00004 */  sw         $zero, 0x4($t7)
/* 1BC30 8001B030 ADF90000 */  sw         $t9, 0x0($t7)
/* 1BC34 8001B034 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1BC38 8001B038 3C0FB900 */  lui        $t7, (0xB900031D >> 16)
/* 1BC3C 8001B03C 3C180C08 */  lui        $t8, (0xC084000 >> 16)
/* 1BC40 8001B040 25AE0008 */  addiu      $t6, $t5, 0x8
/* 1BC44 8001B044 AFAE008C */  sw         $t6, 0x8C($sp)
/* 1BC48 8001B048 37184000 */  ori        $t8, $t8, (0xC084000 & 0xFFFF)
/* 1BC4C 8001B04C 35EF031D */  ori        $t7, $t7, (0xB900031D & 0xFFFF)
/* 1BC50 8001B050 ADAF0000 */  sw         $t7, 0x0($t5)
/* 1BC54 8001B054 ADB80004 */  sw         $t8, 0x4($t5)
/* 1BC58 8001B058 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BC5C 8001B05C 3C0FFF2F */  lui        $t7, (0xFF2FFFFF >> 16)
/* 1BC60 8001B060 3C0EFC11 */  lui        $t6, (0xFC119623 >> 16)
/* 1BC64 8001B064 272D0008 */  addiu      $t5, $t9, 0x8
/* 1BC68 8001B068 AFAD008C */  sw         $t5, 0x8C($sp)
/* 1BC6C 8001B06C 35CE9623 */  ori        $t6, $t6, (0xFC119623 & 0xFFFF)
/* 1BC70 8001B070 35EFFFFF */  ori        $t7, $t7, (0xFF2FFFFF & 0xFFFF)
/* 1BC74 8001B074 AF2F0004 */  sw         $t7, 0x4($t9)
/* 1BC78 8001B078 AF2E0000 */  sw         $t6, 0x0($t9)
/* 1BC7C 8001B07C 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1BC80 8001B080 240EFFFF */  addiu      $t6, $zero, -0x1
/* 1BC84 8001B084 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1BC88 8001B088 27190008 */  addiu      $t9, $t8, 0x8
/* 1BC8C 8001B08C AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BC90 8001B090 AF0E0004 */  sw         $t6, 0x4($t8)
/* 1BC94 8001B094 AF0D0000 */  sw         $t5, 0x0($t8)
/* 1BC98 8001B098 96060002 */  lhu        $a2, 0x2($s0)
/* 1BC9C 8001B09C 94A50000 */  lhu        $a1, 0x0($a1)
/* 1BCA0 8001B0A0 8E070010 */  lw         $a3, 0x10($s0)
/* 1BCA4 8001B0A4 24C60003 */  addiu      $a2, $a2, 0x3
/* 1BCA8 8001B0A8 24A50002 */  addiu      $a1, $a1, 0x2
/* 1BCAC 8001B0AC 30AFFFFF */  andi       $t7, $a1, 0xFFFF
/* 1BCB0 8001B0B0 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 1BCB4 8001B0B4 03003025 */  or         $a2, $t8, $zero
/* 1BCB8 8001B0B8 01E02825 */  or         $a1, $t7, $zero
/* 1BCBC 8001B0BC AFA00010 */  sw         $zero, 0x10($sp)
/* 1BCC0 8001B0C0 0C006743 */  jal        func_80019D0C
/* 1BCC4 8001B0C4 27A4008C */   addiu     $a0, $sp, 0x8C
/* 1BCC8 8001B0C8 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BCCC 8001B0CC 3C0AE700 */  lui        $t2, (0xE7000000 >> 16)
/* 1BCD0 8001B0D0 3C18BB00 */  lui        $t8, (0xBB000000 >> 16)
/* 1BCD4 8001B0D4 272D0008 */  addiu      $t5, $t9, 0x8
/* 1BCD8 8001B0D8 AFAD008C */  sw         $t5, 0x8C($sp)
/* 1BCDC 8001B0DC AF200004 */  sw         $zero, 0x4($t9)
/* 1BCE0 8001B0E0 AF2A0000 */  sw         $t2, 0x0($t9)
/* 1BCE4 8001B0E4 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BCE8 8001B0E8 3C190800 */  lui        $t9, (0x8000800 >> 16)
/* 1BCEC 8001B0EC 37390800 */  ori        $t9, $t9, (0x8000800 & 0xFFFF)
/* 1BCF0 8001B0F0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BCF4 8001B0F4 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BCF8 8001B0F8 ADD90004 */  sw         $t9, 0x4($t6)
/* 1BCFC 8001B0FC ADD80000 */  sw         $t8, 0x0($t6)
/* 1BD00 8001B100 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1BD04 8001B104 3C0FBA00 */  lui        $t7, (0xBA000E02 >> 16)
/* 1BD08 8001B108 35EF0E02 */  ori        $t7, $t7, (0xBA000E02 & 0xFFFF)
/* 1BD0C 8001B10C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 1BD10 8001B110 AFAE008C */  sw         $t6, 0x8C($sp)
/* 1BD14 8001B114 ADA00004 */  sw         $zero, 0x4($t5)
/* 1BD18 8001B118 ADAF0000 */  sw         $t7, 0x0($t5)
/* 1BD1C 8001B11C 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1BD20 8001B120 3C0DBA00 */  lui        $t5, (0xBA001301 >> 16)
/* 1BD24 8001B124 35AD1301 */  ori        $t5, $t5, (0xBA001301 & 0xFFFF)
/* 1BD28 8001B128 27190008 */  addiu      $t9, $t8, 0x8
/* 1BD2C 8001B12C AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BD30 8001B130 AF000004 */  sw         $zero, 0x4($t8)
/* 1BD34 8001B134 AF0D0000 */  sw         $t5, 0x0($t8)
/* 1BD38 8001B138 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BD3C 8001B13C 3C0BB900 */  lui        $t3, (0xB900031D >> 16)
/* 1BD40 8001B140 3C180F0A */  lui        $t8, (0xF0A4000 >> 16)
/* 1BD44 8001B144 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BD48 8001B148 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BD4C 8001B14C 356B031D */  ori        $t3, $t3, (0xB900031D & 0xFFFF)
/* 1BD50 8001B150 37184000 */  ori        $t8, $t8, (0xF0A4000 & 0xFFFF)
/* 1BD54 8001B154 ADD80004 */  sw         $t8, 0x4($t6)
/* 1BD58 8001B158 ADCB0000 */  sw         $t3, 0x0($t6)
/* 1BD5C 8001B15C 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BD60 8001B160 3C0EFCFF */  lui        $t6, (0xFCFFFFFF >> 16)
/* 1BD64 8001B164 3C0FFFFD */  lui        $t7, (0xFFFDF6FB >> 16)
/* 1BD68 8001B168 272D0008 */  addiu      $t5, $t9, 0x8
/* 1BD6C 8001B16C AFAD008C */  sw         $t5, 0x8C($sp)
/* 1BD70 8001B170 35EFF6FB */  ori        $t7, $t7, (0xFFFDF6FB & 0xFFFF)
/* 1BD74 8001B174 35CEFFFF */  ori        $t6, $t6, (0xFCFFFFFF & 0xFFFF)
/* 1BD78 8001B178 AF2E0000 */  sw         $t6, 0x0($t9)
/* 1BD7C 8001B17C AF2F0004 */  sw         $t7, 0x4($t9)
/* 1BD80 8001B180 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1BD84 8001B184 3C0DB900 */  lui        $t5, (0xB9000002 >> 16)
/* 1BD88 8001B188 35AD0002 */  ori        $t5, $t5, (0xB9000002 & 0xFFFF)
/* 1BD8C 8001B18C 27190008 */  addiu      $t9, $t8, 0x8
/* 1BD90 8001B190 AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BD94 8001B194 AF000004 */  sw         $zero, 0x4($t8)
/* 1BD98 8001B198 AF0D0000 */  sw         $t5, 0x0($t8)
/* 1BD9C 8001B19C 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BDA0 8001B1A0 3C18BA00 */  lui        $t8, (0xBA000402 >> 16)
/* 1BDA4 8001B1A4 37180402 */  ori        $t8, $t8, (0xBA000402 & 0xFFFF)
/* 1BDA8 8001B1A8 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BDAC 8001B1AC AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BDB0 8001B1B0 24190030 */  addiu      $t9, $zero, 0x30
/* 1BDB4 8001B1B4 3C078014 */  lui        $a3, %hi(D_8013FC88)
/* 1BDB8 8001B1B8 ADD90004 */  sw         $t9, 0x4($t6)
/* 1BDBC 8001B1BC ADD80000 */  sw         $t8, 0x0($t6)
/* 1BDC0 8001B1C0 8CE7FC88 */  lw         $a3, %lo(D_8013FC88)($a3)
/* 1BDC4 8001B1C4 8FA5008C */  lw         $a1, 0x8C($sp)
/* 1BDC8 8001B1C8 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
/* 1BDCC 8001B1CC 30ED0003 */  andi       $t5, $a3, 0x3
/* 1BDD0 8001B1D0 000D3080 */  sll        $a2, $t5, 2
/* 1BDD4 8001B1D4 00CD3021 */  addu       $a2, $a2, $t5
/* 1BDD8 8001B1D8 00063080 */  sll        $a2, $a2, 2
/* 1BDDC 8001B1DC 00CD3021 */  addu       $a2, $a2, $t5
/* 1BDE0 8001B1E0 00063080 */  sll        $a2, $a2, 2
/* 1BDE4 8001B1E4 00CDC021 */  addu       $t8, $a2, $t5
/* 1BDE8 8001B1E8 331900FF */  andi       $t9, $t8, 0xFF
/* 1BDEC 8001B1EC 00196E00 */  sll        $t5, $t9, 24
/* 1BDF0 8001B1F0 00197400 */  sll        $t6, $t9, 16
/* 1BDF4 8001B1F4 24AF0008 */  addiu      $t7, $a1, 0x8
/* 1BDF8 8001B1F8 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BDFC 8001B1FC 01AEC025 */  or         $t8, $t5, $t6
/* 1BE00 8001B200 3719FFFF */  ori        $t9, $t8, 0xFFFF
/* 1BE04 8001B204 ACB90004 */  sw         $t9, 0x4($a1)
/* 1BE08 8001B208 ACAC0000 */  sw         $t4, 0x0($a1)
/* 1BE0C 8001B20C 820E000C */  lb         $t6, 0xC($s0)
/* 1BE10 8001B210 96080000 */  lhu        $t0, 0x0($s0)
/* 1BE14 8001B214 960D0002 */  lhu        $t5, 0x2($s0)
/* 1BE18 8001B218 000E78C0 */  sll        $t7, $t6, 3
/* 1BE1C 8001B21C 01EE7823 */  subu       $t7, $t7, $t6
/* 1BE20 8001B220 25080003 */  addiu      $t0, $t0, 0x3
/* 1BE24 8001B224 01AF4821 */  addu       $t1, $t5, $t7
/* 1BE28 8001B228 8FA2008C */  lw         $v0, 0x8C($sp)
/* 1BE2C 8001B22C 250E001D */  addiu      $t6, $t0, 0x1D
/* 1BE30 8001B230 000E6880 */  sll        $t5, $t6, 2
/* 1BE34 8001B234 25290003 */  addiu      $t1, $t1, 0x3
/* 1BE38 8001B238 31AF0FFF */  andi       $t7, $t5, 0xFFF
/* 1BE3C 8001B23C 000FC300 */  sll        $t8, $t7, 12
/* 1BE40 8001B240 252E0005 */  addiu      $t6, $t1, 0x5
/* 1BE44 8001B244 24590008 */  addiu      $t9, $v0, 0x8
/* 1BE48 8001B248 AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BE4C 8001B24C 000E6880 */  sll        $t5, $t6, 2
/* 1BE50 8001B250 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* 1BE54 8001B254 0301C825 */  or         $t9, $t8, $at
/* 1BE58 8001B258 31AF0FFF */  andi       $t7, $t5, 0xFFF
/* 1BE5C 8001B25C 032FC025 */  or         $t8, $t9, $t7
/* 1BE60 8001B260 00087080 */  sll        $t6, $t0, 2
/* 1BE64 8001B264 31CD0FFF */  andi       $t5, $t6, 0xFFF
/* 1BE68 8001B268 00097880 */  sll        $t7, $t1, 2
/* 1BE6C 8001B26C AC580000 */  sw         $t8, 0x0($v0)
/* 1BE70 8001B270 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 1BE74 8001B274 000DCB00 */  sll        $t9, $t5, 12
/* 1BE78 8001B278 03387025 */  or         $t6, $t9, $t8
/* 1BE7C 8001B27C AC4E0004 */  sw         $t6, 0x4($v0)
/* 1BE80 8001B280 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1BE84 8001B284 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
/* 1BE88 8001B288 27A4008C */  addiu      $a0, $sp, 0x8C
/* 1BE8C 8001B28C 25AF0008 */  addiu      $t7, $t5, 0x8
/* 1BE90 8001B290 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1BE94 8001B294 ADA00004 */  sw         $zero, 0x4($t5)
/* 1BE98 8001B298 ADB90000 */  sw         $t9, 0x0($t5)
/* 1BE9C 8001B29C 8FB8008C */  lw         $t8, 0x8C($sp)
/* 1BEA0 8001B2A0 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 1BEA4 8001B2A4 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 1BEA8 8001B2A8 270E0008 */  addiu      $t6, $t8, 0x8
/* 1BEAC 8001B2AC AFAE008C */  sw         $t6, 0x8C($sp)
/* 1BEB0 8001B2B0 3C0DB300 */  lui        $t5, (0xB3000000 >> 16)
/* 1BEB4 8001B2B4 AF0D0000 */  sw         $t5, 0x0($t8)
/* 1BEB8 8001B2B8 AF0F0004 */  sw         $t7, 0x4($t8)
/* 1BEBC 8001B2BC 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BEC0 8001B2C0 3C0F0040 */  lui        $t7, (0x404240 >> 16)
/* 1BEC4 8001B2C4 35EF4240 */  ori        $t7, $t7, (0x404240 & 0xFFFF)
/* 1BEC8 8001B2C8 27380008 */  addiu      $t8, $t9, 0x8
/* 1BECC 8001B2CC AFB8008C */  sw         $t8, 0x8C($sp)
/* 1BED0 8001B2D0 AF200004 */  sw         $zero, 0x4($t9)
/* 1BED4 8001B2D4 AF2A0000 */  sw         $t2, 0x0($t9)
/* 1BED8 8001B2D8 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BEDC 8001B2DC 25CD0008 */  addiu      $t5, $t6, 0x8
/* 1BEE0 8001B2E0 AFAD008C */  sw         $t5, 0x8C($sp)
/* 1BEE4 8001B2E4 ADCF0004 */  sw         $t7, 0x4($t6)
/* 1BEE8 8001B2E8 ADCB0000 */  sw         $t3, 0x0($t6)
/* 1BEEC 8001B2EC 8FB9008C */  lw         $t9, 0x8C($sp)
/* 1BEF0 8001B2F0 3C0EFC11 */  lui        $t6, (0xFC119623 >> 16)
/* 1BEF4 8001B2F4 3C0DFF2F */  lui        $t5, (0xFF2FFFFF >> 16)
/* 1BEF8 8001B2F8 27380008 */  addiu      $t8, $t9, 0x8
/* 1BEFC 8001B2FC AFB8008C */  sw         $t8, 0x8C($sp)
/* 1BF00 8001B300 35ADFFFF */  ori        $t5, $t5, (0xFF2FFFFF & 0xFFFF)
/* 1BF04 8001B304 35CE9623 */  ori        $t6, $t6, (0xFC119623 & 0xFFFF)
/* 1BF08 8001B308 AF2E0000 */  sw         $t6, 0x0($t9)
/* 1BF0C 8001B30C AF2D0004 */  sw         $t5, 0x4($t9)
/* 1BF10 8001B310 8FAF008C */  lw         $t7, 0x8C($sp)
/* 1BF14 8001B314 2418FFFF */  addiu      $t8, $zero, -0x1
/* 1BF18 8001B318 25F90008 */  addiu      $t9, $t7, 0x8
/* 1BF1C 8001B31C AFB9008C */  sw         $t9, 0x8C($sp)
/* 1BF20 8001B320 ADF80004 */  sw         $t8, 0x4($t7)
/* 1BF24 8001B324 ADEC0000 */  sw         $t4, 0x0($t7)
/* 1BF28 8001B328 8E070014 */  lw         $a3, 0x14($s0)
/* 1BF2C 8001B32C 96060002 */  lhu        $a2, 0x2($s0)
/* 1BF30 8001B330 96050000 */  lhu        $a1, 0x0($s0)
/* 1BF34 8001B334 0C006743 */  jal        func_80019D0C
/* 1BF38 8001B338 AFA00010 */   sw        $zero, 0x10($sp)
/* 1BF3C 8001B33C 8FAE008C */  lw         $t6, 0x8C($sp)
/* 1BF40 8001B340 8FAD0090 */  lw         $t5, 0x90($sp)
/* 1BF44 8001B344 ADAE0000 */  sw         $t6, 0x0($t5)
/* 1BF48 8001B348 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1BF4C 8001B34C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1BF50 8001B350 27BD0090 */  addiu      $sp, $sp, 0x90
/* 1BF54 8001B354 03E00008 */  jr         $ra
/* 1BF58 8001B358 00000000 */   nop

glabel func_8001B35C
/* 1BF5C 8001B35C 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1BF60 8001B360 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1BF64 8001B364 AFB00020 */  sw         $s0, 0x20($sp)
/* 1BF68 8001B368 AFA40058 */  sw         $a0, 0x58($sp)
/* 1BF6C 8001B36C AFA60060 */  sw         $a2, 0x60($sp)
/* 1BF70 8001B370 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1BF74 8001B374 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1BF78 8001B378 3C0CB900 */  lui        $t4, (0xB900031D >> 16)
/* 1BF7C 8001B37C AFAF0054 */  sw         $t7, 0x54($sp)
/* 1BF80 8001B380 25F80008 */  addiu      $t8, $t7, 0x8
/* 1BF84 8001B384 AFB80054 */  sw         $t8, 0x54($sp)
/* 1BF88 8001B388 ADE00004 */  sw         $zero, 0x4($t7)
/* 1BF8C 8001B38C ADF90000 */  sw         $t9, 0x0($t7)
/* 1BF90 8001B390 8FAA0054 */  lw         $t2, 0x54($sp)
/* 1BF94 8001B394 3C0D0C08 */  lui        $t5, (0xC084000 >> 16)
/* 1BF98 8001B398 35AD4000 */  ori        $t5, $t5, (0xC084000 & 0xFFFF)
/* 1BF9C 8001B39C 254B0008 */  addiu      $t3, $t2, 0x8
/* 1BFA0 8001B3A0 AFAB0054 */  sw         $t3, 0x54($sp)
/* 1BFA4 8001B3A4 358C031D */  ori        $t4, $t4, (0xB900031D & 0xFFFF)
/* 1BFA8 8001B3A8 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1BFAC 8001B3AC AD4D0004 */  sw         $t5, 0x4($t2)
/* 1BFB0 8001B3B0 8FAE0054 */  lw         $t6, 0x54($sp)
/* 1BFB4 8001B3B4 3C19FF2F */  lui        $t9, (0xFF2FFFFF >> 16)
/* 1BFB8 8001B3B8 3C18FC11 */  lui        $t8, (0xFC119623 >> 16)
/* 1BFBC 8001B3BC 25CF0008 */  addiu      $t7, $t6, 0x8
/* 1BFC0 8001B3C0 AFAF0054 */  sw         $t7, 0x54($sp)
/* 1BFC4 8001B3C4 37189623 */  ori        $t8, $t8, (0xFC119623 & 0xFFFF)
/* 1BFC8 8001B3C8 3739FFFF */  ori        $t9, $t9, (0xFF2FFFFF & 0xFFFF)
/* 1BFCC 8001B3CC ADD90004 */  sw         $t9, 0x4($t6)
/* 1BFD0 8001B3D0 ADD80000 */  sw         $t8, 0x0($t6)
/* 1BFD4 8001B3D4 8FAA0054 */  lw         $t2, 0x54($sp)
/* 1BFD8 8001B3D8 240DFFFF */  addiu      $t5, $zero, -0x1
/* 1BFDC 8001B3DC 3C0CFA00 */  lui        $t4, (0xFA000000 >> 16)
/* 1BFE0 8001B3E0 254B0008 */  addiu      $t3, $t2, 0x8
/* 1BFE4 8001B3E4 AFAB0054 */  sw         $t3, 0x54($sp)
/* 1BFE8 8001B3E8 00A08025 */  or         $s0, $a1, $zero
/* 1BFEC 8001B3EC AD4D0004 */  sw         $t5, 0x4($t2)
/* 1BFF0 8001B3F0 AD4C0000 */  sw         $t4, 0x0($t2)
/* 1BFF4 8001B3F4 8E07001C */  lw         $a3, 0x1C($s0)
/* 1BFF8 8001B3F8 9606000E */  lhu        $a2, 0xE($s0)
/* 1BFFC 8001B3FC 94A5000C */  lhu        $a1, 0xC($a1)
/* 1C000 8001B400 AFA00010 */  sw         $zero, 0x10($sp)
/* 1C004 8001B404 0C006743 */  jal        func_80019D0C
/* 1C008 8001B408 27A40054 */   addiu     $a0, $sp, 0x54
/* 1C00C 8001B40C C6040010 */  lwc1       $f4, 0x10($s0)
/* 1C010 8001B410 3C018009 */  lui        $at, %hi(D_80096CD8)
/* 1C014 8001B414 D4286CD8 */  ldc1       $f8, %lo(D_80096CD8)($at)
/* 1C018 8001B418 460021A1 */  cvt.d.s    $f6, $f4
/* 1C01C 8001B41C 3C014059 */  lui        $at, (0x40590000 >> 16)
/* 1C020 8001B420 46283282 */  mul.d      $f10, $f6, $f8
/* 1C024 8001B424 44818800 */  mtc1       $at, $f17
/* 1C028 8001B428 44808000 */  mtc1       $zero, $f16
/* 1C02C 8001B42C 960F000E */  lhu        $t7, 0xE($s0)
/* 1C030 8001B430 9605000C */  lhu        $a1, 0xC($s0)
/* 1C034 8001B434 27A40054 */  addiu      $a0, $sp, 0x54
/* 1C038 8001B438 24070006 */  addiu      $a3, $zero, 0x6
/* 1C03C 8001B43C 46305483 */  div.d      $f18, $f10, $f16
/* 1C040 8001B440 4620910D */  trunc.w.d  $f4, $f18
/* 1C044 8001B444 44022000 */  mfc1       $v0, $f4
/* 1C048 8001B448 00000000 */  nop
/* 1C04C 8001B44C 01E23023 */  subu       $a2, $t7, $v0
/* 1C050 8001B450 24C6002B */  addiu      $a2, $a2, 0x2B
/* 1C054 8001B454 30D8FFFF */  andi       $t8, $a2, 0xFFFF
/* 1C058 8001B458 03003025 */  or         $a2, $t8, $zero
/* 1C05C 8001B45C 0C006A75 */  jal        func_8001A9D4
/* 1C060 8001B460 AFA20010 */   sw        $v0, 0x10($sp)
/* 1C064 8001B464 8FB90054 */  lw         $t9, 0x54($sp)
/* 1C068 8001B468 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 1C06C 8001B46C 3C0EFA00 */  lui        $t6, (0xFA000000 >> 16)
/* 1C070 8001B470 272A0008 */  addiu      $t2, $t9, 0x8
/* 1C074 8001B474 AFAA0054 */  sw         $t2, 0x54($sp)
/* 1C078 8001B478 AF200004 */  sw         $zero, 0x4($t9)
/* 1C07C 8001B47C AF2B0000 */  sw         $t3, 0x0($t9)
/* 1C080 8001B480 8FAC0054 */  lw         $t4, 0x54($sp)
/* 1C084 8001B484 240FFFFF */  addiu      $t7, $zero, -0x1
/* 1C088 8001B488 3C0B0040 */  lui        $t3, (0x404340 >> 16)
/* 1C08C 8001B48C 258D0008 */  addiu      $t5, $t4, 0x8
/* 1C090 8001B490 AFAD0054 */  sw         $t5, 0x54($sp)
/* 1C094 8001B494 AD8F0004 */  sw         $t7, 0x4($t4)
/* 1C098 8001B498 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1C09C 8001B49C 8FB80054 */  lw         $t8, 0x54($sp)
/* 1C0A0 8001B4A0 3C0AB900 */  lui        $t2, (0xB900031D >> 16)
/* 1C0A4 8001B4A4 354A031D */  ori        $t2, $t2, (0xB900031D & 0xFFFF)
/* 1C0A8 8001B4A8 27190008 */  addiu      $t9, $t8, 0x8
/* 1C0AC 8001B4AC AFB90054 */  sw         $t9, 0x54($sp)
/* 1C0B0 8001B4B0 356B4340 */  ori        $t3, $t3, (0x404340 & 0xFFFF)
/* 1C0B4 8001B4B4 AF0B0004 */  sw         $t3, 0x4($t8)
/* 1C0B8 8001B4B8 AF0A0000 */  sw         $t2, 0x0($t8)
/* 1C0BC 8001B4BC 8E070014 */  lw         $a3, 0x14($s0)
/* 1C0C0 8001B4C0 96060006 */  lhu        $a2, 0x6($s0)
/* 1C0C4 8001B4C4 96050004 */  lhu        $a1, 0x4($s0)
/* 1C0C8 8001B4C8 AFA00010 */  sw         $zero, 0x10($sp)
/* 1C0CC 8001B4CC 0C006743 */  jal        func_80019D0C
/* 1C0D0 8001B4D0 27A40054 */   addiu     $a0, $sp, 0x54
/* 1C0D4 8001B4D4 8FAC0054 */  lw         $t4, 0x54($sp)
/* 1C0D8 8001B4D8 8FA90060 */  lw         $t1, 0x60($sp)
/* 1C0DC 8001B4DC 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 1C0E0 8001B4E0 258D0008 */  addiu      $t5, $t4, 0x8
/* 1C0E4 8001B4E4 AFAD0054 */  sw         $t5, 0x54($sp)
/* 1C0E8 8001B4E8 AD800004 */  sw         $zero, 0x4($t4)
/* 1C0EC 8001B4EC AD8E0000 */  sw         $t6, 0x0($t4)
/* 1C0F0 8001B4F0 8FAF0054 */  lw         $t7, 0x54($sp)
/* 1C0F4 8001B4F4 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1C0F8 8001B4F8 3C0A0040 */  lui        $t2, (0x404340 >> 16)
/* 1C0FC 8001B4FC 25F80008 */  addiu      $t8, $t7, 0x8
/* 1C100 8001B500 AFB80054 */  sw         $t8, 0x54($sp)
/* 1C104 8001B504 354A4340 */  ori        $t2, $t2, (0x404340 & 0xFFFF)
/* 1C108 8001B508 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1C10C 8001B50C ADF90000 */  sw         $t9, 0x0($t7)
/* 1C110 8001B510 ADEA0004 */  sw         $t2, 0x4($t7)
/* 1C114 8001B514 8FA80054 */  lw         $t0, 0x54($sp)
/* 1C118 8001B518 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1C11C 8001B51C 27A40054 */  addiu      $a0, $sp, 0x54
/* 1C120 8001B520 250C0008 */  addiu      $t4, $t0, 0x8
/* 1C124 8001B524 AFAC0054 */  sw         $t4, 0x54($sp)
/* 1C128 8001B528 AD0D0000 */  sw         $t5, 0x0($t0)
/* 1C12C 8001B52C 912A0001 */  lbu        $t2, 0x1($t1)
/* 1C130 8001B530 912F0000 */  lbu        $t7, 0x0($t1)
/* 1C134 8001B534 912E0002 */  lbu        $t6, 0x2($t1)
/* 1C138 8001B538 000A5C00 */  sll        $t3, $t2, 16
/* 1C13C 8001B53C 000FC600 */  sll        $t8, $t7, 24
/* 1C140 8001B540 030B6025 */  or         $t4, $t8, $t3
/* 1C144 8001B544 91380003 */  lbu        $t8, 0x3($t1)
/* 1C148 8001B548 000E7A00 */  sll        $t7, $t6, 8
/* 1C14C 8001B54C 018FC825 */  or         $t9, $t4, $t7
/* 1C150 8001B550 03385825 */  or         $t3, $t9, $t8
/* 1C154 8001B554 AD0B0004 */  sw         $t3, 0x4($t0)
/* 1C158 8001B558 8E070018 */  lw         $a3, 0x18($s0)
/* 1C15C 8001B55C 9606000A */  lhu        $a2, 0xA($s0)
/* 1C160 8001B560 96050008 */  lhu        $a1, 0x8($s0)
/* 1C164 8001B564 0C006743 */  jal        func_80019D0C
/* 1C168 8001B568 AFA00010 */   sw        $zero, 0x10($sp)
/* 1C16C 8001B56C 8FAD0054 */  lw         $t5, 0x54($sp)
/* 1C170 8001B570 8FAE0058 */  lw         $t6, 0x58($sp)
/* 1C174 8001B574 ADCD0000 */  sw         $t5, 0x0($t6)
/* 1C178 8001B578 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1C17C 8001B57C 8FB00020 */  lw         $s0, 0x20($sp)
/* 1C180 8001B580 27BD0058 */  addiu      $sp, $sp, 0x58
/* 1C184 8001B584 03E00008 */  jr         $ra
/* 1C188 8001B588 00000000 */   nop

glabel func_8001B58C
/* 1C18C 8001B58C 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* 1C190 8001B590 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1C194 8001B594 AFB10018 */  sw         $s1, 0x18($sp)
/* 1C198 8001B598 AFB00014 */  sw         $s0, 0x14($sp)
/* 1C19C 8001B59C AFA400B8 */  sw         $a0, 0xB8($sp)
/* 1C1A0 8001B5A0 84AF0008 */  lh         $t7, 0x8($a1)
/* 1C1A4 8001B5A4 8C830000 */  lw         $v1, 0x0($a0)
/* 1C1A8 8001B5A8 84B00004 */  lh         $s0, 0x4($a1)
/* 1C1AC 8001B5AC 84B10006 */  lh         $s1, 0x6($a1)
/* 1C1B0 8001B5B0 AFAF00A8 */  sw         $t7, 0xA8($sp)
/* 1C1B4 8001B5B4 84B8000A */  lh         $t8, 0xA($a1)
/* 1C1B8 8001B5B8 24010002 */  addiu      $at, $zero, 0x2
/* 1C1BC 8001B5BC 87A400AA */  lh         $a0, 0xAA($sp)
/* 1C1C0 8001B5C0 AFB800A4 */  sw         $t8, 0xA4($sp)
/* 1C1C4 8001B5C4 8CA20000 */  lw         $v0, 0x0($a1)
/* 1C1C8 8001B5C8 94590008 */  lhu        $t9, 0x8($v0)
/* 1C1CC 8001B5CC 8C460004 */  lw         $a2, 0x4($v0)
/* 1C1D0 8001B5D0 AFB90094 */  sw         $t9, 0x94($sp)
/* 1C1D4 8001B5D4 8C4E0000 */  lw         $t6, 0x0($v0)
/* 1C1D8 8001B5D8 AFAE0090 */  sw         $t6, 0x90($sp)
/* 1C1DC 8001B5DC 904F0014 */  lbu        $t7, 0x14($v0)
/* 1C1E0 8001B5E0 AFAF008C */  sw         $t7, 0x8C($sp)
/* 1C1E4 8001B5E4 90580015 */  lbu        $t8, 0x15($v0)
/* 1C1E8 8001B5E8 15E10003 */  bne        $t7, $at, .L8001B5F8
/* 1C1EC 8001B5EC AFB80088 */   sw        $t8, 0x88($sp)
/* 1C1F0 8001B5F0 10000007 */  b          .L8001B610
/* 1C1F4 8001B5F4 AFA00084 */   sw        $zero, 0x84($sp)
.L8001B5F8:
/* 1C1F8 8001B5F8 AFA300B4 */  sw         $v1, 0xB4($sp)
/* 1C1FC 8001B5FC 0C009610 */  jal        func_80025840
/* 1C200 8001B600 AFA60098 */   sw        $a2, 0x98($sp)
/* 1C204 8001B604 8FA300B4 */  lw         $v1, 0xB4($sp)
/* 1C208 8001B608 8FA60098 */  lw         $a2, 0x98($sp)
/* 1C20C 8001B60C AFA20084 */  sw         $v0, 0x84($sp)
.L8001B610:
/* 1C210 8001B610 8FAE0088 */  lw         $t6, 0x88($sp)
/* 1C214 8001B614 24010002 */  addiu      $at, $zero, 0x2
/* 1C218 8001B618 87A400A6 */  lh         $a0, 0xA6($sp)
/* 1C21C 8001B61C 55C10004 */  bnel       $t6, $at, .L8001B630
/* 1C220 8001B620 AFA300B4 */   sw        $v1, 0xB4($sp)
/* 1C224 8001B624 10000007 */  b          .L8001B644
/* 1C228 8001B628 AFA00080 */   sw        $zero, 0x80($sp)
/* 1C22C 8001B62C AFA300B4 */  sw         $v1, 0xB4($sp)
.L8001B630:
/* 1C230 8001B630 0C009610 */  jal        func_80025840
/* 1C234 8001B634 AFA60098 */   sw        $a2, 0x98($sp)
/* 1C238 8001B638 8FA300B4 */  lw         $v1, 0xB4($sp)
/* 1C23C 8001B63C 8FA60098 */  lw         $a2, 0x98($sp)
/* 1C240 8001B640 AFA20080 */  sw         $v0, 0x80($sp)
.L8001B644:
/* 1C244 8001B644 00067880 */  sll        $t7, $a2, 2
/* 1C248 8001B648 01E67823 */  subu       $t7, $t7, $a2
/* 1C24C 8001B64C 3C188009 */  lui        $t8, %hi(D_8008B764)
/* 1C250 8001B650 2718B764 */  addiu      $t8, $t8, %lo(D_8008B764)
/* 1C254 8001B654 000F7880 */  sll        $t7, $t7, 2
/* 1C258 8001B658 01F81021 */  addu       $v0, $t7, $t8
/* 1C25C 8001B65C 8C590004 */  lw         $t9, 0x4($v0)
/* 1C260 8001B660 8C4E0008 */  lw         $t6, 0x8($v0)
/* 1C264 8001B664 2CC1000A */  sltiu      $at, $a2, 0xA
/* 1C268 8001B668 C4400000 */  lwc1       $f0, 0x0($v0)
/* 1C26C 8001B66C AFB9007C */  sw         $t9, 0x7C($sp)
/* 1C270 8001B670 102000CB */  beqz       $at, .L8001B9A0
/* 1C274 8001B674 AFAE0078 */   sw        $t6, 0x78($sp)
/* 1C278 8001B678 00067880 */  sll        $t7, $a2, 2
/* 1C27C 8001B67C 3C018009 */  lui        $at, %hi(jtbl_80096CE0_main)
/* 1C280 8001B680 002F0821 */  addu       $at, $at, $t7
/* 1C284 8001B684 8C2F6CE0 */  lw         $t7, %lo(jtbl_80096CE0_main)($at)
/* 1C288 8001B688 01E00008 */  jr         $t7
/* 1C28C 8001B68C 00000000 */   nop
glabel L8001B690
/* 1C290 8001B690 8FA60078 */  lw         $a2, 0x78($sp)
/* 1C294 8001B694 8FA5007C */  lw         $a1, 0x7C($sp)
/* 1C298 8001B698 3C01FD00 */  lui        $at, (0xFD000000 >> 16)
/* 1C29C 8001B69C 30CE0003 */  andi       $t6, $a2, 0x3
/* 1C2A0 8001B6A0 000E34C0 */  sll        $a2, $t6, 19
/* 1C2A4 8001B6A4 8FAE0094 */  lw         $t6, 0x94($sp)
/* 1C2A8 8001B6A8 30B80007 */  andi       $t8, $a1, 0x7
/* 1C2AC 8001B6AC 00182D40 */  sll        $a1, $t8, 21
/* 1C2B0 8001B6B0 00A1C025 */  or         $t8, $a1, $at
/* 1C2B4 8001B6B4 0306C825 */  or         $t9, $t8, $a2
/* 1C2B8 8001B6B8 25CFFFFF */  addiu      $t7, $t6, -0x1
/* 1C2BC 8001B6BC 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 1C2C0 8001B6C0 03387025 */  or         $t6, $t9, $t8
/* 1C2C4 8001B6C4 00602025 */  or         $a0, $v1, $zero
/* 1C2C8 8001B6C8 AC8E0000 */  sw         $t6, 0x0($a0)
/* 1C2CC 8001B6CC 8FAF0090 */  lw         $t7, 0x90($sp)
/* 1C2D0 8001B6D0 3C01F500 */  lui        $at, (0xF5000000 >> 16)
/* 1C2D4 8001B6D4 00A1C025 */  or         $t8, $a1, $at
/* 1C2D8 8001B6D8 AC8F0004 */  sw         $t7, 0x4($a0)
/* 1C2DC 8001B6DC 8FB900A8 */  lw         $t9, 0xA8($sp)
/* 1C2E0 8001B6E0 03067025 */  or         $t6, $t8, $a2
/* 1C2E4 8001B6E4 24630008 */  addiu      $v1, $v1, 0x8
/* 1C2E8 8001B6E8 02191021 */  addu       $v0, $s0, $t9
/* 1C2EC 8001B6EC 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1C2F0 8001B6F0 00507823 */  subu       $t7, $v0, $s0
/* 1C2F4 8001B6F4 25F90001 */  addiu      $t9, $t7, 0x1
/* 1C2F8 8001B6F8 44992000 */  mtc1       $t9, $f4
/* 1C2FC 8001B6FC 00603825 */  or         $a3, $v1, $zero
/* 1C300 8001B700 3C010700 */  lui        $at, (0x7000000 >> 16)
/* 1C304 8001B704 468021A0 */  cvt.s.w    $f6, $f4
/* 1C308 8001B708 24630008 */  addiu      $v1, $v1, 0x8
/* 1C30C 8001B70C 00104080 */  sll        $t0, $s0, 2
/* 1C310 8001B710 00602025 */  or         $a0, $v1, $zero
/* 1C314 8001B714 00113080 */  sll        $a2, $s1, 2
/* 1C318 8001B718 24630008 */  addiu      $v1, $v1, 0x8
/* 1C31C 8001B71C 46003202 */  mul.s      $f8, $f6, $f0
/* 1C320 8001B720 00602825 */  or         $a1, $v1, $zero
/* 1C324 8001B724 00024880 */  sll        $t1, $v0, 2
/* 1C328 8001B728 24630008 */  addiu      $v1, $v1, 0x8
/* 1C32C 8001B72C 4600428D */  trunc.w.s  $f10, $f8
/* 1C330 8001B730 440F5000 */  mfc1       $t7, $f10
/* 1C334 8001B734 00000000 */  nop
/* 1C338 8001B738 25F90007 */  addiu      $t9, $t7, 0x7
/* 1C33C 8001B73C 0019C0C3 */  sra        $t8, $t9, 3
/* 1C340 8001B740 330F01FF */  andi       $t7, $t8, 0x1FF
/* 1C344 8001B744 000FCA40 */  sll        $t9, $t7, 9
/* 1C348 8001B748 01D95025 */  or         $t2, $t6, $t9
/* 1C34C 8001B74C ACEA0000 */  sw         $t2, 0x0($a3)
/* 1C350 8001B750 8FAB0088 */  lw         $t3, 0x88($sp)
/* 1C354 8001B754 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1C358 8001B758 8FAC0080 */  lw         $t4, 0x80($sp)
/* 1C35C 8001B75C 31780003 */  andi       $t8, $t3, 0x3
/* 1C360 8001B760 8FBF0084 */  lw         $ra, 0x84($sp)
/* 1C364 8001B764 00185C80 */  sll        $t3, $t8, 18
/* 1C368 8001B768 31B80003 */  andi       $t8, $t5, 0x3
/* 1C36C 8001B76C 318E000F */  andi       $t6, $t4, 0xF
/* 1C370 8001B770 000E6380 */  sll        $t4, $t6, 14
/* 1C374 8001B774 00186A00 */  sll        $t5, $t8, 8
/* 1C378 8001B778 0161C025 */  or         $t8, $t3, $at
/* 1C37C 8001B77C 33EE000F */  andi       $t6, $ra, 0xF
/* 1C380 8001B780 000EF900 */  sll        $ra, $t6, 4
/* 1C384 8001B784 030C7825 */  or         $t7, $t8, $t4
/* 1C388 8001B788 01ED7025 */  or         $t6, $t7, $t5
/* 1C38C 8001B78C 01DFC825 */  or         $t9, $t6, $ra
/* 1C390 8001B790 ACF90004 */  sw         $t9, 0x4($a3)
/* 1C394 8001B794 3C18E600 */  lui        $t8, (0xE6000000 >> 16)
/* 1C398 8001B798 310F0FFF */  andi       $t7, $t0, 0xFFF
/* 1C39C 8001B79C AC980000 */  sw         $t8, 0x0($a0)
/* 1C3A0 8001B7A0 000F4300 */  sll        $t0, $t7, 12
/* 1C3A4 8001B7A4 3C01F400 */  lui        $at, (0xF4000000 >> 16)
/* 1C3A8 8001B7A8 0101C025 */  or         $t8, $t0, $at
/* 1C3AC 8001B7AC 30D90FFF */  andi       $t9, $a2, 0xFFF
/* 1C3B0 8001B7B0 AC800004 */  sw         $zero, 0x4($a0)
/* 1C3B4 8001B7B4 03197825 */  or         $t7, $t8, $t9
/* 1C3B8 8001B7B8 ACAF0000 */  sw         $t7, 0x0($a1)
/* 1C3BC 8001B7BC 8FB800A4 */  lw         $t8, 0xA4($sp)
/* 1C3C0 8001B7C0 312E0FFF */  andi       $t6, $t1, 0xFFF
/* 1C3C4 8001B7C4 000E4B00 */  sll        $t1, $t6, 12
/* 1C3C8 8001B7C8 02383821 */  addu       $a3, $s1, $t8
/* 1C3CC 8001B7CC 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 1C3D0 8001B7D0 00077880 */  sll        $t7, $a3, 2
/* 1C3D4 8001B7D4 03203025 */  or         $a2, $t9, $zero
/* 1C3D8 8001B7D8 3C010700 */  lui        $at, (0x7000000 >> 16)
/* 1C3DC 8001B7DC 0121C825 */  or         $t9, $t1, $at
/* 1C3E0 8001B7E0 31E70FFF */  andi       $a3, $t7, 0xFFF
/* 1C3E4 8001B7E4 0327C025 */  or         $t8, $t9, $a3
/* 1C3E8 8001B7E8 100000A1 */  b          .L8001BA70
/* 1C3EC 8001B7EC ACB80004 */   sw        $t8, 0x4($a1)
glabel L8001B7F0
/* 1C3F0 8001B7F0 8FA5007C */  lw         $a1, 0x7C($sp)
/* 1C3F4 8001B7F4 3C01FD00 */  lui        $at, (0xFD000000 >> 16)
/* 1C3F8 8001B7F8 3C090008 */  lui        $t1, (0x80000 >> 16)
/* 1C3FC 8001B7FC 30AF0007 */  andi       $t7, $a1, 0x7
/* 1C400 8001B800 000F2D40 */  sll        $a1, $t7, 21
/* 1C404 8001B804 8FAF0094 */  lw         $t7, 0x94($sp)
/* 1C408 8001B808 00A1C825 */  or         $t9, $a1, $at
/* 1C40C 8001B80C 0329C025 */  or         $t8, $t9, $t1
/* 1C410 8001B810 000F7043 */  sra        $t6, $t7, 1
/* 1C414 8001B814 25D9FFFF */  addiu      $t9, $t6, -0x1
/* 1C418 8001B818 332F0FFF */  andi       $t7, $t9, 0xFFF
/* 1C41C 8001B81C 030F7025 */  or         $t6, $t8, $t7
/* 1C420 8001B820 00602025 */  or         $a0, $v1, $zero
/* 1C424 8001B824 AC8E0000 */  sw         $t6, 0x0($a0)
/* 1C428 8001B828 8FB90090 */  lw         $t9, 0x90($sp)
/* 1C42C 8001B82C 3C01F500 */  lui        $at, (0xF5000000 >> 16)
/* 1C430 8001B830 00A13825 */  or         $a3, $a1, $at
/* 1C434 8001B834 AC990004 */  sw         $t9, 0x4($a0)
/* 1C438 8001B838 8FB800A8 */  lw         $t8, 0xA8($sp)
/* 1C43C 8001B83C 24630008 */  addiu      $v1, $v1, 0x8
/* 1C440 8001B840 00E97825 */  or         $t7, $a3, $t1
/* 1C444 8001B844 02181021 */  addu       $v0, $s0, $t8
/* 1C448 8001B848 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1C44C 8001B84C 00504023 */  subu       $t0, $v0, $s0
/* 1C450 8001B850 25080001 */  addiu      $t0, $t0, 0x1
/* 1C454 8001B854 00087043 */  sra        $t6, $t0, 1
/* 1C458 8001B858 25D90007 */  addiu      $t9, $t6, 0x7
/* 1C45C 8001B85C 0019C0C3 */  sra        $t8, $t9, 3
/* 1C460 8001B860 330E01FF */  andi       $t6, $t8, 0x1FF
/* 1C464 8001B864 000ECA40 */  sll        $t9, $t6, 9
/* 1C468 8001B868 01F9C025 */  or         $t8, $t7, $t9
/* 1C46C 8001B86C 00603025 */  or         $a2, $v1, $zero
/* 1C470 8001B870 ACD80000 */  sw         $t8, 0x0($a2)
/* 1C474 8001B874 8FAB0088 */  lw         $t3, 0x88($sp)
/* 1C478 8001B878 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1C47C 8001B87C 8FAC0080 */  lw         $t4, 0x80($sp)
/* 1C480 8001B880 316E0003 */  andi       $t6, $t3, 0x3
/* 1C484 8001B884 8FBF0084 */  lw         $ra, 0x84($sp)
/* 1C488 8001B888 000E5C80 */  sll        $t3, $t6, 18
/* 1C48C 8001B88C 31AE0003 */  andi       $t6, $t5, 0x3
/* 1C490 8001B890 3199000F */  andi       $t9, $t4, 0xF
/* 1C494 8001B894 00196380 */  sll        $t4, $t9, 14
/* 1C498 8001B898 000E6A00 */  sll        $t5, $t6, 8
/* 1C49C 8001B89C 3C010700 */  lui        $at, (0x7000000 >> 16)
/* 1C4A0 8001B8A0 01617025 */  or         $t6, $t3, $at
/* 1C4A4 8001B8A4 33F9000F */  andi       $t9, $ra, 0xF
/* 1C4A8 8001B8A8 0019F900 */  sll        $ra, $t9, 4
/* 1C4AC 8001B8AC 01CC7825 */  or         $t7, $t6, $t4
/* 1C4B0 8001B8B0 01EDC825 */  or         $t9, $t7, $t5
/* 1C4B4 8001B8B4 033FC025 */  or         $t8, $t9, $ra
/* 1C4B8 8001B8B8 ACD80004 */  sw         $t8, 0x4($a2)
/* 1C4BC 8001B8BC 24630008 */  addiu      $v1, $v1, 0x8
/* 1C4C0 8001B8C0 AFA30058 */  sw         $v1, 0x58($sp)
/* 1C4C4 8001B8C4 8FA50058 */  lw         $a1, 0x58($sp)
/* 1C4C8 8001B8C8 AFA80020 */  sw         $t0, 0x20($sp)
/* 1C4CC 8001B8CC AFA70040 */  sw         $a3, 0x40($sp)
/* 1C4D0 8001B8D0 3C0EE600 */  lui        $t6, (0xE6000000 >> 16)
/* 1C4D4 8001B8D4 00113080 */  sll        $a2, $s1, 2
/* 1C4D8 8001B8D8 0010C840 */  sll        $t9, $s0, 1
/* 1C4DC 8001B8DC 33380FFF */  andi       $t8, $t9, 0xFFF
/* 1C4E0 8001B8E0 30CF0FFF */  andi       $t7, $a2, 0xFFF
/* 1C4E4 8001B8E4 ACAE0000 */  sw         $t6, 0x0($a1)
/* 1C4E8 8001B8E8 00187300 */  sll        $t6, $t8, 12
/* 1C4EC 8001B8EC 01E03025 */  or         $a2, $t7, $zero
/* 1C4F0 8001B8F0 3C01F400 */  lui        $at, (0xF4000000 >> 16)
/* 1C4F4 8001B8F4 24630008 */  addiu      $v1, $v1, 0x8
/* 1C4F8 8001B8F8 01C17825 */  or         $t7, $t6, $at
/* 1C4FC 8001B8FC 01E6C825 */  or         $t9, $t7, $a2
/* 1C500 8001B900 00602025 */  or         $a0, $v1, $zero
/* 1C504 8001B904 ACA00004 */  sw         $zero, 0x4($a1)
/* 1C508 8001B908 AC990000 */  sw         $t9, 0x0($a0)
/* 1C50C 8001B90C 8FB800A4 */  lw         $t8, 0xA4($sp)
/* 1C510 8001B910 0002C840 */  sll        $t9, $v0, 1
/* 1C514 8001B914 3C010700 */  lui        $at, (0x7000000 >> 16)
/* 1C518 8001B918 02383821 */  addu       $a3, $s1, $t8
/* 1C51C 8001B91C 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 1C520 8001B920 00077080 */  sll        $t6, $a3, 2
/* 1C524 8001B924 31C70FFF */  andi       $a3, $t6, 0xFFF
/* 1C528 8001B928 33380FFF */  andi       $t8, $t9, 0xFFF
/* 1C52C 8001B92C 00187300 */  sll        $t6, $t8, 12
/* 1C530 8001B930 01C17825 */  or         $t7, $t6, $at
/* 1C534 8001B934 01E7C825 */  or         $t9, $t7, $a3
/* 1C538 8001B938 AC990004 */  sw         $t9, 0x4($a0)
/* 1C53C 8001B93C 8FAE0078 */  lw         $t6, 0x78($sp)
/* 1C540 8001B940 00024880 */  sll        $t1, $v0, 2
/* 1C544 8001B944 312F0FFF */  andi       $t7, $t1, 0xFFF
/* 1C548 8001B948 000F4B00 */  sll        $t1, $t7, 12
/* 1C54C 8001B94C 31CF0003 */  andi       $t7, $t6, 0x3
/* 1C550 8001B950 000FCCC0 */  sll        $t9, $t7, 19
/* 1C554 8001B954 8FAF0020 */  lw         $t7, 0x20($sp)
/* 1C558 8001B958 00104080 */  sll        $t0, $s0, 2
/* 1C55C 8001B95C 31180FFF */  andi       $t8, $t0, 0xFFF
/* 1C560 8001B960 448F8000 */  mtc1       $t7, $f16
/* 1C564 8001B964 00184300 */  sll        $t0, $t8, 12
/* 1C568 8001B968 8FB80040 */  lw         $t8, 0x40($sp)
/* 1C56C 8001B96C 468084A0 */  cvt.s.w    $f18, $f16
/* 1C570 8001B970 24630008 */  addiu      $v1, $v1, 0x8
/* 1C574 8001B974 03197025 */  or         $t6, $t8, $t9
/* 1C578 8001B978 46009102 */  mul.s      $f4, $f18, $f0
/* 1C57C 8001B97C 4600218D */  trunc.w.s  $f6, $f4
/* 1C580 8001B980 44193000 */  mfc1       $t9, $f6
/* 1C584 8001B984 00000000 */  nop
/* 1C588 8001B988 272F0007 */  addiu      $t7, $t9, 0x7
/* 1C58C 8001B98C 000FC0C3 */  sra        $t8, $t7, 3
/* 1C590 8001B990 331901FF */  andi       $t9, $t8, 0x1FF
/* 1C594 8001B994 00197A40 */  sll        $t7, $t9, 9
/* 1C598 8001B998 10000035 */  b          .L8001BA70
/* 1C59C 8001B99C 01CF5025 */   or        $t2, $t6, $t7
.L8001B9A0:
/* 1C5A0 8001B9A0 8FB800A8 */  lw         $t8, 0xA8($sp)
/* 1C5A4 8001B9A4 8FAB0088 */  lw         $t3, 0x88($sp)
/* 1C5A8 8001B9A8 8FAD008C */  lw         $t5, 0x8C($sp)
/* 1C5AC 8001B9AC 02181021 */  addu       $v0, $s0, $t8
/* 1C5B0 8001B9B0 31790003 */  andi       $t9, $t3, 0x3
/* 1C5B4 8001B9B4 8FB800A4 */  lw         $t8, 0xA4($sp)
/* 1C5B8 8001B9B8 00195C80 */  sll        $t3, $t9, 18
/* 1C5BC 8001B9BC 8FAC0080 */  lw         $t4, 0x80($sp)
/* 1C5C0 8001B9C0 31B90003 */  andi       $t9, $t5, 0x3
/* 1C5C4 8001B9C4 00196A00 */  sll        $t5, $t9, 8
/* 1C5C8 8001B9C8 00104080 */  sll        $t0, $s0, 2
/* 1C5CC 8001B9CC 8FBF0084 */  lw         $ra, 0x84($sp)
/* 1C5D0 8001B9D0 31190FFF */  andi       $t9, $t0, 0xFFF
/* 1C5D4 8001B9D4 02383821 */  addu       $a3, $s1, $t8
/* 1C5D8 8001B9D8 24E7FFFF */  addiu      $a3, $a3, -0x1
/* 1C5DC 8001B9DC 00194300 */  sll        $t0, $t9, 12
/* 1C5E0 8001B9E0 318F000F */  andi       $t7, $t4, 0xF
/* 1C5E4 8001B9E4 000F6380 */  sll        $t4, $t7, 14
/* 1C5E8 8001B9E8 0007C880 */  sll        $t9, $a3, 2
/* 1C5EC 8001B9EC 33270FFF */  andi       $a3, $t9, 0xFFF
/* 1C5F0 8001B9F0 33EF000F */  andi       $t7, $ra, 0xF
/* 1C5F4 8001B9F4 8FB9007C */  lw         $t9, 0x7C($sp)
/* 1C5F8 8001B9F8 000FF900 */  sll        $ra, $t7, 4
/* 1C5FC 8001B9FC 00113080 */  sll        $a2, $s1, 2
/* 1C600 8001BA00 30CF0FFF */  andi       $t7, $a2, 0xFFF
/* 1C604 8001BA04 2442FFFF */  addiu      $v0, $v0, -0x1
/* 1C608 8001BA08 00024880 */  sll        $t1, $v0, 2
/* 1C60C 8001BA0C 01E03025 */  or         $a2, $t7, $zero
/* 1C610 8001BA10 312F0FFF */  andi       $t7, $t1, 0xFFF
/* 1C614 8001BA14 332E0007 */  andi       $t6, $t9, 0x7
/* 1C618 8001BA18 8FB90078 */  lw         $t9, 0x78($sp)
/* 1C61C 8001BA1C 000F4B00 */  sll        $t1, $t7, 12
/* 1C620 8001BA20 000E7D40 */  sll        $t7, $t6, 21
/* 1C624 8001BA24 3C01F500 */  lui        $at, (0xF5000000 >> 16)
/* 1C628 8001BA28 01E1C025 */  or         $t8, $t7, $at
/* 1C62C 8001BA2C 332E0003 */  andi       $t6, $t9, 0x3
/* 1C630 8001BA30 000E7CC0 */  sll        $t7, $t6, 19
/* 1C634 8001BA34 030FC825 */  or         $t9, $t8, $t7
/* 1C638 8001BA38 00507023 */  subu       $t6, $v0, $s0
/* 1C63C 8001BA3C 25D80001 */  addiu      $t8, $t6, 0x1
/* 1C640 8001BA40 44984000 */  mtc1       $t8, $f8
/* 1C644 8001BA44 00000000 */  nop
/* 1C648 8001BA48 468042A0 */  cvt.s.w    $f10, $f8
/* 1C64C 8001BA4C 46005402 */  mul.s      $f16, $f10, $f0
/* 1C650 8001BA50 4600848D */  trunc.w.s  $f18, $f16
/* 1C654 8001BA54 440E9000 */  mfc1       $t6, $f18
/* 1C658 8001BA58 00000000 */  nop
/* 1C65C 8001BA5C 25D80007 */  addiu      $t8, $t6, 0x7
/* 1C660 8001BA60 001878C3 */  sra        $t7, $t8, 3
/* 1C664 8001BA64 31EE01FF */  andi       $t6, $t7, 0x1FF
/* 1C668 8001BA68 000EC240 */  sll        $t8, $t6, 9
/* 1C66C 8001BA6C 03385025 */  or         $t2, $t9, $t8
.L8001BA70:
/* 1C670 8001BA70 00601025 */  or         $v0, $v1, $zero
/* 1C674 8001BA74 3C0FE700 */  lui        $t7, (0xE7000000 >> 16)
/* 1C678 8001BA78 AC4F0000 */  sw         $t7, 0x0($v0)
/* 1C67C 8001BA7C 24640008 */  addiu      $a0, $v1, 0x8
/* 1C680 8001BA80 016C7025 */  or         $t6, $t3, $t4
/* 1C684 8001BA84 AC400004 */  sw         $zero, 0x4($v0)
/* 1C688 8001BA88 01CDC825 */  or         $t9, $t6, $t5
/* 1C68C 8001BA8C 033FC025 */  or         $t8, $t9, $ra
/* 1C690 8001BA90 3C01F200 */  lui        $at, (0xF2000000 >> 16)
/* 1C694 8001BA94 AC980004 */  sw         $t8, 0x4($a0)
/* 1C698 8001BA98 AC8A0000 */  sw         $t2, 0x0($a0)
/* 1C69C 8001BA9C 24850008 */  addiu      $a1, $a0, 0x8
/* 1C6A0 8001BAA0 01017825 */  or         $t7, $t0, $at
/* 1C6A4 8001BAA4 01E67025 */  or         $t6, $t7, $a2
/* 1C6A8 8001BAA8 0127C825 */  or         $t9, $t1, $a3
/* 1C6AC 8001BAAC ACB90004 */  sw         $t9, 0x4($a1)
/* 1C6B0 8001BAB0 ACAE0000 */  sw         $t6, 0x0($a1)
/* 1C6B4 8001BAB4 8FB800B8 */  lw         $t8, 0xB8($sp)
/* 1C6B8 8001BAB8 24A30008 */  addiu      $v1, $a1, 0x8
/* 1C6BC 8001BABC AF030000 */  sw         $v1, 0x0($t8)
/* 1C6C0 8001BAC0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1C6C4 8001BAC4 8FB10018 */  lw         $s1, 0x18($sp)
/* 1C6C8 8001BAC8 8FB00014 */  lw         $s0, 0x14($sp)
/* 1C6CC 8001BACC 03E00008 */  jr         $ra
/* 1C6D0 8001BAD0 27BD00B8 */   addiu     $sp, $sp, 0xB8

glabel func_8001BAD4
/* 1C6D4 8001BAD4 240E007F */  addiu      $t6, $zero, 0x7F
/* 1C6D8 8001BAD8 3C018009 */  lui        $at, %hi(D_8008B7DC)
/* 1C6DC 8001BADC 3C188014 */  lui        $t8, %hi(D_8013FC80)
/* 1C6E0 8001BAE0 8F18FC80 */  lw         $t8, %lo(D_8013FC80)($t8)
/* 1C6E4 8001BAE4 A42EB7DC */  sh         $t6, %lo(D_8008B7DC)($at)
/* 1C6E8 8001BAE8 3C018009 */  lui        $at, %hi(D_8008B7E0)
/* 1C6EC 8001BAEC 240F00FF */  addiu      $t7, $zero, 0xFF
/* 1C6F0 8001BAF0 A42FB7E0 */  sh         $t7, %lo(D_8008B7E0)($at)
/* 1C6F4 8001BAF4 971900FC */  lhu        $t9, 0xFC($t8)
/* 1C6F8 8001BAF8 24080141 */  addiu      $t0, $zero, 0x141
/* 1C6FC 8001BAFC 3C018009 */  lui        $at, %hi(D_8008B7E4)
/* 1C700 8001BB00 01194823 */  subu       $t1, $t0, $t9
/* 1C704 8001BB04 A429B7E4 */  sh         $t1, %lo(D_8008B7E4)($at)
/* 1C708 8001BB08 3C018009 */  lui        $at, %hi(D_8008B7E8)
/* 1C70C 8001BB0C A420B7E8 */  sh         $zero, %lo(D_8008B7E8)($at)
/* 1C710 8001BB10 3C018009 */  lui        $at, %hi(D_8008B7EC)
/* 1C714 8001BB14 240A0140 */  addiu      $t2, $zero, 0x140
/* 1C718 8001BB18 03E00008 */  jr         $ra
/* 1C71C 8001BB1C A42AB7EC */   sh        $t2, %lo(D_8008B7EC)($at)

glabel func_8001BB20
/* 1C720 8001BB20 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 1C724 8001BB24 3C0A8009 */  lui        $t2, %hi(D_8008B7E4)
/* 1C728 8001BB28 254AB7E4 */  addiu      $t2, $t2, %lo(D_8008B7E4)
/* 1C72C 8001BB2C 85420000 */  lh         $v0, 0x0($t2)
/* 1C730 8001BB30 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1C734 8001BB34 AFA40058 */  sw         $a0, 0x58($sp)
/* 1C738 8001BB38 8C8F0000 */  lw         $t7, 0x0($a0)
/* 1C73C 8001BB3C 27A40054 */  addiu      $a0, $sp, 0x54
/* 1C740 8001BB40 1840000F */  blez       $v0, .L8001BB80
/* 1C744 8001BB44 AFAF0054 */   sw        $t7, 0x54($sp)
/* 1C748 8001BB48 24580002 */  addiu      $t8, $v0, 0x2
/* 1C74C 8001BB4C 24010003 */  addiu      $at, $zero, 0x3
/* 1C750 8001BB50 0301001A */  div        $zero, $t8, $at
/* 1C754 8001BB54 0000C812 */  mflo       $t9
/* 1C758 8001BB58 00596023 */  subu       $t4, $v0, $t9
/* 1C75C 8001BB5C A54C0000 */  sh         $t4, 0x0($t2)
/* 1C760 8001BB60 854D0000 */  lh         $t5, 0x0($t2)
/* 1C764 8001BB64 3C018009 */  lui        $at, %hi(D_8008B7DC)
/* 1C768 8001BB68 3C098009 */  lui        $t1, %hi(D_8008B7E8)
/* 1C76C 8001BB6C 15A00002 */  bnez       $t5, .L8001BB78
/* 1C770 8001BB70 240E00C8 */   addiu     $t6, $zero, 0xC8
/* 1C774 8001BB74 A42EB7DC */  sh         $t6, %lo(D_8008B7DC)($at)
.L8001BB78:
/* 1C778 8001BB78 10000038 */  b          .L8001BC5C
/* 1C77C 8001BB7C 2529B7E8 */   addiu     $t1, $t1, %lo(D_8008B7E8)
.L8001BB80:
/* 1C780 8001BB80 3C098009 */  lui        $t1, %hi(D_8008B7E8)
/* 1C784 8001BB84 2529B7E8 */  addiu      $t1, $t1, %lo(D_8008B7E8)
/* 1C788 8001BB88 85220000 */  lh         $v0, 0x0($t1)
/* 1C78C 8001BB8C 28410120 */  slti       $at, $v0, 0x120
/* 1C790 8001BB90 1020000A */  beqz       $at, .L8001BBBC
/* 1C794 8001BB94 244F0030 */   addiu     $t7, $v0, 0x30
/* 1C798 8001BB98 A52F0000 */  sh         $t7, 0x0($t1)
/* 1C79C 8001BB9C 85380000 */  lh         $t8, 0x0($t1)
/* 1C7A0 8001BBA0 24190120 */  addiu      $t9, $zero, 0x120
/* 1C7A4 8001BBA4 2B010121 */  slti       $at, $t8, 0x121
/* 1C7A8 8001BBA8 14200002 */  bnez       $at, .L8001BBB4
/* 1C7AC 8001BBAC 00000000 */   nop
/* 1C7B0 8001BBB0 A5390000 */  sh         $t9, 0x0($t1)
.L8001BBB4:
/* 1C7B4 8001BBB4 1000002A */  b          .L8001BC60
/* 1C7B8 8001BBB8 8FAF0054 */   lw        $t7, 0x54($sp)
.L8001BBBC:
/* 1C7BC 8001BBBC 24010120 */  addiu      $at, $zero, 0x120
/* 1C7C0 8001BBC0 1441000E */  bne        $v0, $at, .L8001BBFC
/* 1C7C4 8001BBC4 3C0B8009 */   lui       $t3, %hi(D_8008B7EC)
/* 1C7C8 8001BBC8 256BB7EC */  addiu      $t3, $t3, %lo(D_8008B7EC)
/* 1C7CC 8001BBCC 85620000 */  lh         $v0, 0x0($t3)
/* 1C7D0 8001BBD0 28410021 */  slti       $at, $v0, 0x21
/* 1C7D4 8001BBD4 14200009 */  bnez       $at, .L8001BBFC
/* 1C7D8 8001BBD8 244CFFC0 */   addiu     $t4, $v0, -0x40
/* 1C7DC 8001BBDC A56C0000 */  sh         $t4, 0x0($t3)
/* 1C7E0 8001BBE0 856D0000 */  lh         $t5, 0x0($t3)
/* 1C7E4 8001BBE4 240E0020 */  addiu      $t6, $zero, 0x20
/* 1C7E8 8001BBE8 29A10020 */  slti       $at, $t5, 0x20
/* 1C7EC 8001BBEC 5020001C */  beql       $at, $zero, .L8001BC60
/* 1C7F0 8001BBF0 8FAF0054 */   lw        $t7, 0x54($sp)
/* 1C7F4 8001BBF4 10000019 */  b          .L8001BC5C
/* 1C7F8 8001BBF8 A56E0000 */   sh        $t6, 0x0($t3)
.L8001BBFC:
/* 1C7FC 8001BBFC 3C0F8009 */  lui        $t7, %hi(D_8008B20C)
/* 1C800 8001BC00 8DEFB20C */  lw         $t7, %lo(D_8008B20C)($t7)
/* 1C804 8001BC04 3C038009 */  lui        $v1, %hi(D_8008B7DC)
/* 1C808 8001BC08 2463B7DC */  addiu      $v1, $v1, %lo(D_8008B7DC)
/* 1C80C 8001BC0C 29E10032 */  slti       $at, $t7, 0x32
/* 1C810 8001BC10 50200013 */  beql       $at, $zero, .L8001BC60
/* 1C814 8001BC14 8FAF0054 */   lw        $t7, 0x54($sp)
/* 1C818 8001BC18 84620000 */  lh         $v0, 0x0($v1)
/* 1C81C 8001BC1C 3C088009 */  lui        $t0, %hi(D_8008B7E0)
/* 1C820 8001BC20 2508B7E0 */  addiu      $t0, $t0, %lo(D_8008B7E0)
/* 1C824 8001BC24 1840000D */  blez       $v0, .L8001BC5C
/* 1C828 8001BC28 2458FFEB */   addiu     $t8, $v0, -0x15
/* 1C82C 8001BC2C A4780000 */  sh         $t8, 0x0($v1)
/* 1C830 8001BC30 84790000 */  lh         $t9, 0x0($v1)
/* 1C834 8001BC34 07230003 */  bgezl      $t9, .L8001BC44
/* 1C838 8001BC38 850C0000 */   lh        $t4, 0x0($t0)
/* 1C83C 8001BC3C A4600000 */  sh         $zero, 0x0($v1)
/* 1C840 8001BC40 850C0000 */  lh         $t4, 0x0($t0)
.L8001BC44:
/* 1C844 8001BC44 258DFFE6 */  addiu      $t5, $t4, -0x1A
/* 1C848 8001BC48 A50D0000 */  sh         $t5, 0x0($t0)
/* 1C84C 8001BC4C 850E0000 */  lh         $t6, 0x0($t0)
/* 1C850 8001BC50 05C30003 */  bgezl      $t6, .L8001BC60
/* 1C854 8001BC54 8FAF0054 */   lw        $t7, 0x54($sp)
/* 1C858 8001BC58 A5000000 */  sh         $zero, 0x0($t0)
.L8001BC5C:
/* 1C85C 8001BC5C 8FAF0054 */  lw         $t7, 0x54($sp)
.L8001BC60:
/* 1C860 8001BC60 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 1C864 8001BC64 3C0EB900 */  lui        $t6, (0xB900031D >> 16)
/* 1C868 8001BC68 25F80008 */  addiu      $t8, $t7, 0x8
/* 1C86C 8001BC6C AFB80054 */  sw         $t8, 0x54($sp)
/* 1C870 8001BC70 ADE00004 */  sw         $zero, 0x4($t7)
/* 1C874 8001BC74 ADF90000 */  sw         $t9, 0x0($t7)
/* 1C878 8001BC78 8FAC0054 */  lw         $t4, 0x54($sp)
/* 1C87C 8001BC7C 3C0F0F0A */  lui        $t7, (0xF0A4000 >> 16)
/* 1C880 8001BC80 35EF4000 */  ori        $t7, $t7, (0xF0A4000 & 0xFFFF)
/* 1C884 8001BC84 258D0008 */  addiu      $t5, $t4, 0x8
/* 1C888 8001BC88 AFAD0054 */  sw         $t5, 0x54($sp)
/* 1C88C 8001BC8C 35CE031D */  ori        $t6, $t6, (0xB900031D & 0xFFFF)
/* 1C890 8001BC90 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1C894 8001BC94 AD8F0004 */  sw         $t7, 0x4($t4)
/* 1C898 8001BC98 85380000 */  lh         $t8, 0x0($t1)
/* 1C89C 8001BC9C 3C088009 */  lui        $t0, %hi(D_8008B7E0)
/* 1C8A0 8001BCA0 2508B7E0 */  addiu      $t0, $t0, %lo(D_8008B7E0)
/* 1C8A4 8001BCA4 24190017 */  addiu      $t9, $zero, 0x17
/* 1C8A8 8001BCA8 AFB90014 */  sw         $t9, 0x14($sp)
/* 1C8AC 8001BCAC 85050000 */  lh         $a1, 0x0($t0)
/* 1C8B0 8001BCB0 24060010 */  addiu      $a2, $zero, 0x10
/* 1C8B4 8001BCB4 240700BE */  addiu      $a3, $zero, 0xBE
/* 1C8B8 8001BCB8 0C0036F0 */  jal        func_8000DBC0
/* 1C8BC 8001BCBC AFB80010 */   sw        $t8, 0x10($sp)
/* 1C8C0 8001BCC0 3C048009 */  lui        $a0, %hi(D_8008B7EC)
/* 1C8C4 8001BCC4 8484B7EC */  lh         $a0, %lo(D_8008B7EC)($a0)
/* 1C8C8 8001BCC8 0C007DAD */  jal        func_8001F6B4
/* 1C8CC 8001BCCC 240500C3 */   addiu     $a1, $zero, 0xC3
/* 1C8D0 8001BCD0 3C088009 */  lui        $t0, %hi(D_8008B7E0)
/* 1C8D4 8001BCD4 2508B7E0 */  addiu      $t0, $t0, %lo(D_8008B7E0)
/* 1C8D8 8001BCD8 91070001 */  lbu        $a3, 0x1($t0)
/* 1C8DC 8001BCDC 240400FF */  addiu      $a0, $zero, 0xFF
/* 1C8E0 8001BCE0 240500FF */  addiu      $a1, $zero, 0xFF
/* 1C8E4 8001BCE4 0C007DD7 */  jal        func_8001F75C
/* 1C8E8 8001BCE8 240600FF */   addiu     $a2, $zero, 0xFF
/* 1C8EC 8001BCEC 3C058009 */  lui        $a1, %hi(D_80096CC4)
/* 1C8F0 8001BCF0 3C068014 */  lui        $a2, %hi(D_8013FCE0)
/* 1C8F4 8001BCF4 90C6FCE0 */  lbu        $a2, %lo(D_8013FCE0)($a2)
/* 1C8F8 8001BCF8 24A56CC4 */  addiu      $a1, $a1, %lo(D_80096CC4)
/* 1C8FC 8001BCFC 0C01AE81 */  jal        func_8006BA04
/* 1C900 8001BD00 27A40038 */   addiu     $a0, $sp, 0x38
/* 1C904 8001BD04 3C068009 */  lui        $a2, %hi(D_8008BEBC)
/* 1C908 8001BD08 24C6BEBC */  addiu      $a2, $a2, %lo(D_8008BEBC)
/* 1C90C 8001BD0C 27A40054 */  addiu      $a0, $sp, 0x54
/* 1C910 8001BD10 0C007DE4 */  jal        func_8001F790
/* 1C914 8001BD14 27A50038 */   addiu     $a1, $sp, 0x38
/* 1C918 8001BD18 8FAC0054 */  lw         $t4, 0x54($sp)
/* 1C91C 8001BD1C 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* 1C920 8001BD20 3C19B900 */  lui        $t9, (0xB900031D >> 16)
/* 1C924 8001BD24 258D0008 */  addiu      $t5, $t4, 0x8
/* 1C928 8001BD28 AFAD0054 */  sw         $t5, 0x54($sp)
/* 1C92C 8001BD2C AD800004 */  sw         $zero, 0x4($t4)
/* 1C930 8001BD30 AD8E0000 */  sw         $t6, 0x0($t4)
/* 1C934 8001BD34 8FAF0054 */  lw         $t7, 0x54($sp)
/* 1C938 8001BD38 3C0C0050 */  lui        $t4, (0x504240 >> 16)
/* 1C93C 8001BD3C 358C4240 */  ori        $t4, $t4, (0x504240 & 0xFFFF)
/* 1C940 8001BD40 25F80008 */  addiu      $t8, $t7, 0x8
/* 1C944 8001BD44 AFB80054 */  sw         $t8, 0x54($sp)
/* 1C948 8001BD48 3739031D */  ori        $t9, $t9, (0xB900031D & 0xFFFF)
/* 1C94C 8001BD4C ADF90000 */  sw         $t9, 0x0($t7)
/* 1C950 8001BD50 ADEC0004 */  sw         $t4, 0x4($t7)
/* 1C954 8001BD54 8FAD0054 */  lw         $t5, 0x54($sp)
/* 1C958 8001BD58 3C0FFC11 */  lui        $t7, (0xFC119623 >> 16)
/* 1C95C 8001BD5C 3C18FF2F */  lui        $t8, (0xFF2FFFFF >> 16)
/* 1C960 8001BD60 25AE0008 */  addiu      $t6, $t5, 0x8
/* 1C964 8001BD64 AFAE0054 */  sw         $t6, 0x54($sp)
/* 1C968 8001BD68 3718FFFF */  ori        $t8, $t8, (0xFF2FFFFF & 0xFFFF)
/* 1C96C 8001BD6C 35EF9623 */  ori        $t7, $t7, (0xFC119623 & 0xFFFF)
/* 1C970 8001BD70 ADAF0000 */  sw         $t7, 0x0($t5)
/* 1C974 8001BD74 ADB80004 */  sw         $t8, 0x4($t5)
/* 1C978 8001BD78 8FB90054 */  lw         $t9, 0x54($sp)
/* 1C97C 8001BD7C 3C0DFA00 */  lui        $t5, (0xFA000000 >> 16)
/* 1C980 8001BD80 3C0E8009 */  lui        $t6, %hi(D_8008B7DC)
/* 1C984 8001BD84 272C0008 */  addiu      $t4, $t9, 0x8
/* 1C988 8001BD88 AFAC0054 */  sw         $t4, 0x54($sp)
/* 1C98C 8001BD8C AF2D0000 */  sw         $t5, 0x0($t9)
/* 1C990 8001BD90 85CEB7DC */  lh         $t6, %lo(D_8008B7DC)($t6)
/* 1C994 8001BD94 2401FF00 */  addiu      $at, $zero, -0x100
/* 1C998 8001BD98 3C0A8014 */  lui        $t2, %hi(D_8013FC80)
/* 1C99C 8001BD9C 31CF00FF */  andi       $t7, $t6, 0xFF
/* 1C9A0 8001BDA0 01E1C025 */  or         $t8, $t7, $at
/* 1C9A4 8001BDA4 AF380004 */  sw         $t8, 0x4($t9)
/* 1C9A8 8001BDA8 8D4AFC80 */  lw         $t2, %lo(D_8013FC80)($t2)
/* 1C9AC 8001BDAC 3C0C8009 */  lui        $t4, %hi(D_8008B7E4)
/* 1C9B0 8001BDB0 858CB7E4 */  lh         $t4, %lo(D_8008B7E4)($t4)
/* 1C9B4 8001BDB4 955900FC */  lhu        $t9, 0xFC($t2)
/* 1C9B8 8001BDB8 954600FE */  lhu        $a2, 0xFE($t2)
/* 1C9BC 8001BDBC 3C078008 */  lui        $a3, %hi(D_80082B9C)
/* 1C9C0 8001BDC0 032C2821 */  addu       $a1, $t9, $t4
/* 1C9C4 8001BDC4 24C6FFEC */  addiu      $a2, $a2, -0x14
/* 1C9C8 8001BDC8 30CEFFFF */  andi       $t6, $a2, 0xFFFF
/* 1C9CC 8001BDCC 30ADFFFF */  andi       $t5, $a1, 0xFFFF
/* 1C9D0 8001BDD0 01A02825 */  or         $a1, $t5, $zero
/* 1C9D4 8001BDD4 01C03025 */  or         $a2, $t6, $zero
/* 1C9D8 8001BDD8 24E72B9C */  addiu      $a3, $a3, %lo(D_80082B9C)
/* 1C9DC 8001BDDC AFA00010 */  sw         $zero, 0x10($sp)
/* 1C9E0 8001BDE0 0C006743 */  jal        func_80019D0C
/* 1C9E4 8001BDE4 27A40054 */   addiu     $a0, $sp, 0x54
/* 1C9E8 8001BDE8 3C0A8014 */  lui        $t2, %hi(D_8013FC80)
/* 1C9EC 8001BDEC 8D4AFC80 */  lw         $t2, %lo(D_8013FC80)($t2)
/* 1C9F0 8001BDF0 3C188009 */  lui        $t8, %hi(D_8008B7E4)
/* 1C9F4 8001BDF4 8718B7E4 */  lh         $t8, %lo(D_8008B7E4)($t8)
/* 1C9F8 8001BDF8 954F00FC */  lhu        $t7, 0xFC($t2)
/* 1C9FC 8001BDFC 954600FE */  lhu        $a2, 0xFE($t2)
/* 1CA00 8001BE00 3C078008 */  lui        $a3, %hi(D_80082B9C)
/* 1CA04 8001BE04 01F82823 */  subu       $a1, $t7, $t8
/* 1CA08 8001BE08 24C6FFEC */  addiu      $a2, $a2, -0x14
/* 1CA0C 8001BE0C 30CCFFFF */  andi       $t4, $a2, 0xFFFF
/* 1CA10 8001BE10 30B9FFFF */  andi       $t9, $a1, 0xFFFF
/* 1CA14 8001BE14 03202825 */  or         $a1, $t9, $zero
/* 1CA18 8001BE18 01803025 */  or         $a2, $t4, $zero
/* 1CA1C 8001BE1C 24E72B9C */  addiu      $a3, $a3, %lo(D_80082B9C)
/* 1CA20 8001BE20 AFA00010 */  sw         $zero, 0x10($sp)
/* 1CA24 8001BE24 0C006743 */  jal        func_80019D0C
/* 1CA28 8001BE28 27A40054 */   addiu     $a0, $sp, 0x54
/* 1CA2C 8001BE2C 8FAD0054 */  lw         $t5, 0x54($sp)
/* 1CA30 8001BE30 8FAE0058 */  lw         $t6, 0x58($sp)
/* 1CA34 8001BE34 ADCD0000 */  sw         $t5, 0x0($t6)
/* 1CA38 8001BE38 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1CA3C 8001BE3C 27BD0058 */  addiu      $sp, $sp, 0x58
/* 1CA40 8001BE40 03E00008 */  jr         $ra
/* 1CA44 8001BE44 00000000 */   nop
/* 1CA48 8001BE48 00000000 */  nop
/* 1CA4C 8001BE4C 00000000 */  nop
