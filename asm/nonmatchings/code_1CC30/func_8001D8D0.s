glabel func_8001D8D0
/* 1E4D0 8001D8D0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1E4D4 8001D8D4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1E4D8 8001D8D8 AFB00018 */  sw         $s0, 0x18($sp)
/* 1E4DC 8001D8DC AFA40038 */  sw         $a0, 0x38($sp)
/* 1E4E0 8001D8E0 80A2004C */  lb         $v0, 0x4C($a1)
/* 1E4E4 8001D8E4 3C0B8014 */  lui        $t3, %hi(D_8013FF90)
/* 1E4E8 8001D8E8 00A08025 */  or         $s0, $a1, $zero
/* 1E4EC 8001D8EC 18400003 */  blez       $v0, .L8001D8FC
/* 1E4F0 8001D8F0 256BFF90 */   addiu     $t3, $t3, %lo(D_8013FF90)
/* 1E4F4 8001D8F4 244EFFFF */  addiu      $t6, $v0, -0x1
/* 1E4F8 8001D8F8 A0AE004C */  sb         $t6, 0x4C($a1)
.L8001D8FC:
/* 1E4FC 8001D8FC 816F0000 */  lb         $t7, 0x0($t3)
/* 1E500 8001D900 3C0A8014 */  lui        $t2, %hi(D_8013FC88)
/* 1E504 8001D904 254AFC88 */  addiu      $t2, $t2, %lo(D_8013FC88)
/* 1E508 8001D908 55E00006 */  bnel       $t7, $zero, .L8001D924
/* 1E50C 8001D90C 92080000 */   lbu       $t0, 0x0($s0)
/* 1E510 8001D910 91780018 */  lbu        $t8, 0x18($t3)
/* 1E514 8001D914 24090001 */  addiu      $t1, $zero, 0x1
/* 1E518 8001D918 11380035 */  beq        $t1, $t8, .L8001D9F0
/* 1E51C 8001D91C 00000000 */   nop
/* 1E520 8001D920 92080000 */  lbu        $t0, 0x0($s0)
.L8001D924:
/* 1E524 8001D924 81590007 */  lb         $t9, 0x7($t2)
/* 1E528 8001D928 24090001 */  addiu      $t1, $zero, 0x1
/* 1E52C 8001D92C 3C048017 */  lui        $a0, %hi(D_8016C4E0)
/* 1E530 8001D930 0328082B */  sltu       $at, $t9, $t0
/* 1E534 8001D934 1420002E */  bnez       $at, .L8001D9F0
/* 1E538 8001D938 3C058017 */   lui       $a1, %hi(D_8016C4E4)
/* 1E53C 8001D93C 15000002 */  bnez       $t0, .L8001D948
/* 1E540 8001D940 24060000 */   addiu     $a2, $zero, 0x0
/* 1E544 8001D944 24080001 */  addiu      $t0, $zero, 0x1
.L8001D948:
/* 1E548 8001D948 8C84C4E0 */  lw         $a0, %lo(D_8016C4E0)($a0)
/* 1E54C 8001D94C 8CA5C4E4 */  lw         $a1, %lo(D_8016C4E4)($a1)
/* 1E550 8001D950 24070040 */  addiu      $a3, $zero, 0x40
/* 1E554 8001D954 0C01B1AA */  jal        func_8006C6A8
/* 1E558 8001D958 AFA8002C */   sw        $t0, 0x2C($sp)
/* 1E55C 8001D95C 00402025 */  or         $a0, $v0, $zero
/* 1E560 8001D960 00602825 */  or         $a1, $v1, $zero
/* 1E564 8001D964 24060000 */  addiu      $a2, $zero, 0x0
/* 1E568 8001D968 0C01B16A */  jal        func_8006C5A8
/* 1E56C 8001D96C 24070BB8 */   addiu     $a3, $zero, 0xBB8
/* 1E570 8001D970 8FA8002C */  lw         $t0, 0x2C($sp)
/* 1E574 8001D974 3C0A8014 */  lui        $t2, %hi(D_8013FC88)
/* 1E578 8001D978 254AFC88 */  addiu      $t2, $t2, %lo(D_8013FC88)
/* 1E57C 8001D97C 00082880 */  sll        $a1, $t0, 2
/* 1E580 8001D980 02052021 */  addu       $a0, $s0, $a1
/* 1E584 8001D984 24860004 */  addiu      $a2, $a0, 0x4
/* 1E588 8001D988 8CCC0000 */  lw         $t4, 0x0($a2)
/* 1E58C 8001D98C 3C0B8014 */  lui        $t3, %hi(D_8013FF90)
/* 1E590 8001D990 256BFF90 */  addiu      $t3, $t3, %lo(D_8013FF90)
/* 1E594 8001D994 006CC821 */  addu       $t9, $v1, $t4
/* 1E598 8001D998 ACD90000 */  sw         $t9, 0x0($a2)
/* 1E59C 8001D99C 8C8C0004 */  lw         $t4, 0x4($a0)
/* 1E5A0 8001D9A0 8D4702C4 */  lw         $a3, 0x2C4($t2)
/* 1E5A4 8001D9A4 24090001 */  addiu      $t1, $zero, 0x1
/* 1E5A8 8001D9A8 00EC082B */  sltu       $at, $a3, $t4
/* 1E5AC 8001D9AC 50200003 */  beql       $at, $zero, .L8001D9BC
/* 1E5B0 8001D9B0 8FAE0038 */   lw        $t6, 0x38($sp)
/* 1E5B4 8001D9B4 AC870004 */  sw         $a3, 0x4($a0)
/* 1E5B8 8001D9B8 8FAE0038 */  lw         $t6, 0x38($sp)
.L8001D9BC:
/* 1E5BC 8001D9BC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 1E5C0 8001D9C0 44810000 */  mtc1       $at, $f0
/* 1E5C4 8001D9C4 C5C6007C */  lwc1       $f6, 0x7C($t6)
/* 1E5C8 8001D9C8 C4840028 */  lwc1       $f4, 0x28($a0)
/* 1E5CC 8001D9CC 46003203 */  div.s      $f8, $f6, $f0
/* 1E5D0 8001D9D0 46082280 */  add.s      $f10, $f4, $f8
/* 1E5D4 8001D9D4 E48A0028 */  swc1       $f10, 0x28($a0)
/* 1E5D8 8001D9D8 8FAF0038 */  lw         $t7, 0x38($sp)
/* 1E5DC 8001D9DC C6100044 */  lwc1       $f16, 0x44($s0)
/* 1E5E0 8001D9E0 C5F2007C */  lwc1       $f18, 0x7C($t7)
/* 1E5E4 8001D9E4 46009183 */  div.s      $f6, $f18, $f0
/* 1E5E8 8001D9E8 46068100 */  add.s      $f4, $f16, $f6
/* 1E5EC 8001D9EC E6040044 */  swc1       $f4, 0x44($s0)
.L8001D9F0:
/* 1E5F0 8001D9F0 3C0A8014 */  lui        $t2, %hi(D_8013FC88)
/* 1E5F4 8001D9F4 254AFC88 */  addiu      $t2, $t2, %lo(D_8013FC88)
/* 1E5F8 8001D9F8 91420008 */  lbu        $v0, 0x8($t2)
/* 1E5FC 8001D9FC 9204004A */  lbu        $a0, 0x4A($s0)
/* 1E600 8001DA00 8FB90038 */  lw         $t9, 0x38($sp)
/* 1E604 8001DA04 8FAE0038 */  lw         $t6, 0x38($sp)
/* 1E608 8001DA08 544400B8 */  bnel       $v0, $a0, .L8001DCEC
/* 1E60C 8001DA0C 24590001 */   addiu     $t9, $v0, 0x1
/* 1E610 8001DA10 972D0042 */  lhu        $t5, 0x42($t9)
/* 1E614 8001DA14 24580001 */  addiu      $t8, $v0, 0x1
/* 1E618 8001DA18 570D00B4 */  bnel       $t8, $t5, .L8001DCEC
/* 1E61C 8001DA1C 24590001 */   addiu     $t9, $v0, 0x1
/* 1E620 8001DA20 9202004B */  lbu        $v0, 0x4B($s0)
/* 1E624 8001DA24 58400005 */  blezl      $v0, .L8001DA3C
/* 1E628 8001DA28 92040000 */   lbu       $a0, 0x0($s0)
/* 1E62C 8001DA2C 244CFFFF */  addiu      $t4, $v0, -0x1
/* 1E630 8001DA30 100000AA */  b          .L8001DCDC
/* 1E634 8001DA34 A20C004B */   sb        $t4, 0x4B($s0)
/* 1E638 8001DA38 92040000 */  lbu        $a0, 0x0($s0)
.L8001DA3C:
/* 1E63C 8001DA3C 240E0050 */  addiu      $t6, $zero, 0x50
/* 1E640 8001DA40 A20E004C */  sb         $t6, 0x4C($s0)
/* 1E644 8001DA44 288100FF */  slti       $at, $a0, 0xFF
/* 1E648 8001DA48 10200005 */  beqz       $at, .L8001DA60
/* 1E64C 8001DA4C 00802825 */   or        $a1, $a0, $zero
/* 1E650 8001DA50 248F0001 */  addiu      $t7, $a0, 0x1
/* 1E654 8001DA54 31E400FF */  andi       $a0, $t7, 0xFF
/* 1E658 8001DA58 00802825 */  or         $a1, $a0, $zero
/* 1E65C 8001DA5C A20F0000 */  sb         $t7, 0x0($s0)
.L8001DA60:
/* 1E660 8001DA60 81790000 */  lb         $t9, 0x0($t3)
/* 1E664 8001DA64 28A10002 */  slti       $at, $a1, 0x2
/* 1E668 8001DA68 17200004 */  bnez       $t9, .L8001DA7C
/* 1E66C 8001DA6C 00000000 */   nop
/* 1E670 8001DA70 91780018 */  lbu        $t8, 0x18($t3)
/* 1E674 8001DA74 5138006C */  beql       $t1, $t8, .L8001DC28
/* 1E678 8001DA78 24A7FFFF */   addiu     $a3, $a1, -0x1
.L8001DA7C:
/* 1E67C 8001DA7C 14200035 */  bnez       $at, .L8001DB54
/* 1E680 8001DA80 0004C880 */   sll       $t9, $a0, 2
/* 1E684 8001DA84 00056880 */  sll        $t5, $a1, 2
/* 1E688 8001DA88 020D6021 */  addu       $t4, $s0, $t5
/* 1E68C 8001DA8C 8D820000 */  lw         $v0, 0x0($t4)
/* 1E690 8001DA90 240603E8 */  addiu      $a2, $zero, 0x3E8
/* 1E694 8001DA94 02191821 */  addu       $v1, $s0, $t9
/* 1E698 8001DA98 0046001B */  divu       $zero, $v0, $a2
/* 1E69C 8001DA9C 00007012 */  mflo       $t6
/* 1E6A0 8001DAA0 000E7940 */  sll        $t7, $t6, 5
/* 1E6A4 8001DAA4 01EE7823 */  subu       $t7, $t7, $t6
/* 1E6A8 8001DAA8 000F7880 */  sll        $t7, $t7, 2
/* 1E6AC 8001DAAC 8C780004 */  lw         $t8, 0x4($v1)
/* 1E6B0 8001DAB0 01EE7821 */  addu       $t7, $t7, $t6
/* 1E6B4 8001DAB4 000F78C0 */  sll        $t7, $t7, 3
/* 1E6B8 8001DAB8 004F1023 */  subu       $v0, $v0, $t7
/* 1E6BC 8001DABC 03026821 */  addu       $t5, $t8, $v0
/* 1E6C0 8001DAC0 AC6D0004 */  sw         $t5, 0x4($v1)
/* 1E6C4 8001DAC4 954C0004 */  lhu        $t4, 0x4($t2)
/* 1E6C8 8001DAC8 14C00002 */  bnez       $a2, .L8001DAD4
/* 1E6CC 8001DACC 00000000 */   nop
/* 1E6D0 8001DAD0 0007000D */  break      7
.L8001DAD4:
/* 1E6D4 8001DAD4 318E8000 */  andi       $t6, $t4, 0x8000
/* 1E6D8 8001DAD8 11C0001E */  beqz       $t6, .L8001DB54
/* 1E6DC 8001DADC 3C038014 */   lui       $v1, %hi(D_8013FFB0)
/* 1E6E0 8001DAE0 8FAF0038 */  lw         $t7, 0x38($sp)
/* 1E6E4 8001DAE4 2463FFB0 */  addiu      $v1, $v1, %lo(D_8013FFB0)
/* 1E6E8 8001DAE8 240520A0 */  addiu      $a1, $zero, 0x20A0
/* 1E6EC 8001DAEC 01E3C823 */  subu       $t9, $t7, $v1
/* 1E6F0 8001DAF0 0325001A */  div        $zero, $t9, $a1
/* 1E6F4 8001DAF4 0000C012 */  mflo       $t8
/* 1E6F8 8001DAF8 14A00002 */  bnez       $a1, .L8001DB04
/* 1E6FC 8001DAFC 00000000 */   nop
/* 1E700 8001DB00 0007000D */  break      7
.L8001DB04:
/* 1E704 8001DB04 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E708 8001DB08 14A10004 */  bne        $a1, $at, .L8001DB1C
/* 1E70C 8001DB0C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1E710 8001DB10 17210002 */  bne        $t9, $at, .L8001DB1C
/* 1E714 8001DB14 00000000 */   nop
/* 1E718 8001DB18 0006000D */  break      6
.L8001DB1C:
/* 1E71C 8001DB1C 5700000E */  bnel       $t8, $zero, .L8001DB58
/* 1E720 8001DB20 920F0000 */   lbu       $t7, 0x0($s0)
/* 1E724 8001DB24 920D0000 */  lbu        $t5, 0x0($s0)
/* 1E728 8001DB28 000D6080 */  sll        $t4, $t5, 2
/* 1E72C 8001DB2C 020C7021 */  addu       $t6, $s0, $t4
/* 1E730 8001DB30 0C00774C */  jal        func_8001DD30
/* 1E734 8001DB34 8DC40000 */   lw        $a0, 0x0($t6)
/* 1E738 8001DB38 92050000 */  lbu        $a1, 0x0($s0)
/* 1E73C 8001DB3C 02002025 */  or         $a0, $s0, $zero
/* 1E740 8001DB40 0C007760 */  jal        func_8001DD80
/* 1E744 8001DB44 24A5FFFF */   addiu     $a1, $a1, -0x1
/* 1E748 8001DB48 3C0A8014 */  lui        $t2, %hi(D_8013FC88)
/* 1E74C 8001DB4C 254AFC88 */  addiu      $t2, $t2, %lo(D_8013FC88)
/* 1E750 8001DB50 24090001 */  addiu      $t1, $zero, 0x1
.L8001DB54:
/* 1E754 8001DB54 920F0000 */  lbu        $t7, 0x0($s0)
.L8001DB58:
/* 1E758 8001DB58 81590007 */  lb         $t9, 0x7($t2)
/* 1E75C 8001DB5C 3C038014 */  lui        $v1, %hi(D_8013FFB0)
/* 1E760 8001DB60 2463FFB0 */  addiu      $v1, $v1, %lo(D_8013FFB0)
/* 1E764 8001DB64 01F91023 */  subu       $v0, $t7, $t9
/* 1E768 8001DB68 10400005 */  beqz       $v0, .L8001DB80
/* 1E76C 8001DB6C 240520A0 */   addiu     $a1, $zero, 0x20A0
/* 1E770 8001DB70 50490015 */  beql       $v0, $t1, .L8001DBC8
/* 1E774 8001DB74 814C0006 */   lb        $t4, 0x6($t2)
/* 1E778 8001DB78 10000059 */  b          .L8001DCE0
/* 1E77C 8001DB7C 8FAC0038 */   lw        $t4, 0x38($sp)
.L8001DB80:
/* 1E780 8001DB80 8FB80038 */  lw         $t8, 0x38($sp)
/* 1E784 8001DB84 03036823 */  subu       $t5, $t8, $v1
/* 1E788 8001DB88 01A5001A */  div        $zero, $t5, $a1
/* 1E78C 8001DB8C 00002012 */  mflo       $a0
/* 1E790 8001DB90 14A00002 */  bnez       $a1, .L8001DB9C
/* 1E794 8001DB94 00000000 */   nop
/* 1E798 8001DB98 0007000D */  break      7
.L8001DB9C:
/* 1E79C 8001DB9C 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E7A0 8001DBA0 14A10004 */  bne        $a1, $at, .L8001DBB4
/* 1E7A4 8001DBA4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1E7A8 8001DBA8 15A10002 */  bne        $t5, $at, .L8001DBB4
/* 1E7AC 8001DBAC 00000000 */   nop
/* 1E7B0 8001DBB0 0006000D */  break      6
.L8001DBB4:
/* 1E7B4 8001DBB4 0C0077DD */  jal        func_8001DF74
/* 1E7B8 8001DBB8 00000000 */   nop
/* 1E7BC 8001DBBC 10000048 */  b          .L8001DCE0
/* 1E7C0 8001DBC0 8FAC0038 */   lw        $t4, 0x38($sp)
/* 1E7C4 8001DBC4 814C0006 */  lb         $t4, 0x6($t2)
.L8001DBC8:
/* 1E7C8 8001DBC8 8FAE0038 */  lw         $t6, 0x38($sp)
/* 1E7CC 8001DBCC 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E7D0 8001DBD0 1581000E */  bne        $t4, $at, .L8001DC0C
/* 1E7D4 8001DBD4 01C37823 */   subu      $t7, $t6, $v1
/* 1E7D8 8001DBD8 01E5001A */  div        $zero, $t7, $a1
/* 1E7DC 8001DBDC 14A00002 */  bnez       $a1, .L8001DBE8
/* 1E7E0 8001DBE0 00000000 */   nop
/* 1E7E4 8001DBE4 0007000D */  break      7
.L8001DBE8:
/* 1E7E8 8001DBE8 2401FFFF */  addiu      $at, $zero, -0x1
/* 1E7EC 8001DBEC 14A10004 */  bne        $a1, $at, .L8001DC00
/* 1E7F0 8001DBF0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1E7F4 8001DBF4 15E10002 */  bne        $t7, $at, .L8001DC00
/* 1E7F8 8001DBF8 00000000 */   nop
/* 1E7FC 8001DBFC 0006000D */  break      6
.L8001DC00:
/* 1E800 8001DC00 0000C812 */  mflo       $t9
/* 1E804 8001DC04 3C018014 */  lui        $at, %hi(D_8013FC8E)
/* 1E808 8001DC08 A039FC8E */  sb         $t9, %lo(D_8013FC8E)($at)
.L8001DC0C:
/* 1E80C 8001DC0C 0C007801 */  jal        func_8001E004
/* 1E810 8001DC10 02002025 */   or        $a0, $s0, $zero
/* 1E814 8001DC14 0C00781B */  jal        func_8001E06C
/* 1E818 8001DC18 8FA40038 */   lw        $a0, 0x38($sp)
/* 1E81C 8001DC1C 10000030 */  b          .L8001DCE0
/* 1E820 8001DC20 8FAC0038 */   lw        $t4, 0x38($sp)
/* 1E824 8001DC24 24A7FFFF */  addiu      $a3, $a1, -0x1
.L8001DC28:
/* 1E828 8001DC28 28E10007 */  slti       $at, $a3, 0x7
/* 1E82C 8001DC2C 14200002 */  bnez       $at, .L8001DC38
/* 1E830 8001DC30 00000000 */   nop
/* 1E834 8001DC34 24070006 */  addiu      $a3, $zero, 0x6
.L8001DC38:
/* 1E838 8001DC38 58E00016 */  blezl      $a3, .L8001DC94
/* 1E83C 8001DC3C 28E10002 */   slti      $at, $a3, 0x2
/* 1E840 8001DC40 8D58000C */  lw         $t8, 0xC($t2)
/* 1E844 8001DC44 240603E8 */  addiu      $a2, $zero, 0x3E8
/* 1E848 8001DC48 0007C880 */  sll        $t9, $a3, 2
/* 1E84C 8001DC4C 0306001B */  divu       $zero, $t8, $a2
/* 1E850 8001DC50 00006812 */  mflo       $t5
/* 1E854 8001DC54 AE0D0004 */  sw         $t5, 0x4($s0)
/* 1E858 8001DC58 0219C021 */  addu       $t8, $s0, $t9
/* 1E85C 8001DC5C 01A60019 */  multu      $t5, $a2
/* 1E860 8001DC60 14C00002 */  bnez       $a2, .L8001DC6C
/* 1E864 8001DC64 00000000 */   nop
/* 1E868 8001DC68 0007000D */  break      7
.L8001DC6C:
/* 1E86C 8001DC6C 00007012 */  mflo       $t6
/* 1E870 8001DC70 AE0E0004 */  sw         $t6, 0x4($s0)
/* 1E874 8001DC74 AF0E0004 */  sw         $t6, 0x4($t8)
/* 1E878 8001DC78 AD40000C */  sw         $zero, 0xC($t2)
/* 1E87C 8001DC7C 8E040004 */  lw         $a0, 0x4($s0)
/* 1E880 8001DC80 0C00774C */  jal        func_8001DD30
/* 1E884 8001DC84 AFA70020 */   sw        $a3, 0x20($sp)
/* 1E888 8001DC88 8FA70020 */  lw         $a3, 0x20($sp)
/* 1E88C 8001DC8C 24090001 */  addiu      $t1, $zero, 0x1
/* 1E890 8001DC90 28E10002 */  slti       $at, $a3, 0x2
.L8001DC94:
/* 1E894 8001DC94 1420000D */  bnez       $at, .L8001DCCC
/* 1E898 8001DC98 00E03025 */   or        $a2, $a3, $zero
/* 1E89C 8001DC9C 00066880 */  sll        $t5, $a2, 2
/* 1E8A0 8001DCA0 020D1021 */  addu       $v0, $s0, $t5
.L8001DCA4:
/* 1E8A4 8001DCA4 8C440004 */  lw         $a0, 0x4($v0)
/* 1E8A8 8001DCA8 8C450000 */  lw         $a1, 0x0($v0)
/* 1E8AC 8001DCAC 0085082B */  sltu       $at, $a0, $a1
/* 1E8B0 8001DCB0 50200007 */  beql       $at, $zero, .L8001DCD0
/* 1E8B4 8001DCB4 A2060020 */   sb        $a2, 0x20($s0)
/* 1E8B8 8001DCB8 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 1E8BC 8001DCBC 2442FFFC */  addiu      $v0, $v0, -0x4
/* 1E8C0 8001DCC0 AC440004 */  sw         $a0, 0x4($v0)
/* 1E8C4 8001DCC4 14C9FFF7 */  bne        $a2, $t1, .L8001DCA4
/* 1E8C8 8001DCC8 AC450008 */   sw        $a1, 0x8($v0)
.L8001DCCC:
/* 1E8CC 8001DCCC A2060020 */  sb         $a2, 0x20($s0)
.L8001DCD0:
/* 1E8D0 8001DCD0 02002025 */  or         $a0, $s0, $zero
/* 1E8D4 8001DCD4 0C007760 */  jal        func_8001DD80
/* 1E8D8 8001DCD8 00E02825 */   or        $a1, $a3, $zero
.L8001DCDC:
/* 1E8DC 8001DCDC 8FAC0038 */  lw         $t4, 0x38($sp)
.L8001DCE0:
/* 1E8E0 8001DCE0 1000000D */  b          .L8001DD18
/* 1E8E4 8001DCE4 95830042 */   lhu       $v1, 0x42($t4)
/* 1E8E8 8001DCE8 24590001 */  addiu      $t9, $v0, 0x1
.L8001DCEC:
/* 1E8EC 8001DCEC 1724000A */  bne        $t9, $a0, .L8001DD18
/* 1E8F0 8001DCF0 95C30042 */   lhu       $v1, 0x42($t6)
/* 1E8F4 8001DCF4 54430009 */  bnel       $v0, $v1, .L8001DD1C
/* 1E8F8 8001DCF8 A203004A */   sb        $v1, 0x4A($s0)
/* 1E8FC 8001DCFC 9202004B */  lbu        $v0, 0x4B($s0)
/* 1E900 8001DD00 284100FF */  slti       $at, $v0, 0xFF
/* 1E904 8001DD04 10200004 */  beqz       $at, .L8001DD18
/* 1E908 8001DD08 244F0001 */   addiu     $t7, $v0, 0x1
/* 1E90C 8001DD0C A20F004B */  sb         $t7, 0x4B($s0)
/* 1E910 8001DD10 8FB80038 */  lw         $t8, 0x38($sp)
/* 1E914 8001DD14 97030042 */  lhu        $v1, 0x42($t8)
.L8001DD18:
/* 1E918 8001DD18 A203004A */  sb         $v1, 0x4A($s0)
.L8001DD1C:
/* 1E91C 8001DD1C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1E920 8001DD20 8FB00018 */  lw         $s0, 0x18($sp)
/* 1E924 8001DD24 27BD0038 */  addiu      $sp, $sp, 0x38
/* 1E928 8001DD28 03E00008 */  jr         $ra
/* 1E92C 8001DD2C 00000000 */   nop
