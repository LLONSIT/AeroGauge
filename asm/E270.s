.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8000D670
/* E270 8000D670 00001025 */  or         $v0, $zero, $zero
/* E274 8000D674 24030008 */  addiu      $v1, $zero, 0x8
/* E278 8000D678 24420004 */  addiu      $v0, $v0, 0x4
.L8000D67C:
/* E27C 8000D67C 5443FFFF */  bnel       $v0, $v1, .L8000D67C
/* E280 8000D680 24420004 */   addiu     $v0, $v0, 0x4
/* E284 8000D684 3C058014 */  lui        $a1, %hi(D_8013FF90)
/* E288 8000D688 24A5FF90 */  addiu      $a1, $a1, %lo(D_8013FF90)
/* E28C 8000D68C 80AE0004 */  lb         $t6, 0x4($a1)
/* E290 8000D690 24020004 */  addiu      $v0, $zero, 0x4
/* E294 8000D694 3C0F8009 */  lui        $t7, %hi(D_80097988)
/* E298 8000D698 15C00003 */  bnez       $t6, .L8000D6A8
/* E29C 8000D69C 3C19801A */   lui       $t9, %hi(D_8019ED3A)
/* E2A0 8000D6A0 10000001 */  b          .L8000D6A8
/* E2A4 8000D6A4 24020003 */   addiu     $v0, $zero, 0x3
.L8000D6A8:
/* E2A8 8000D6A8 80A3000B */  lb         $v1, 0xB($a1)
/* E2AC 8000D6AC 0062082A */  slt        $at, $v1, $v0
/* E2B0 8000D6B0 54200004 */  bnel       $at, $zero, .L8000D6C4
/* E2B4 8000D6B4 80B80005 */   lb        $t8, 0x5($a1)
/* E2B8 8000D6B8 03E00008 */  jr         $ra
/* E2BC 8000D6BC 00001025 */   or        $v0, $zero, $zero
/* E2C0 8000D6C0 80B80005 */  lb         $t8, 0x5($a1)
.L8000D6C4:
/* E2C4 8000D6C4 01E37821 */  addu       $t7, $t7, $v1
/* E2C8 8000D6C8 91EF7988 */  lbu        $t7, %lo(D_80097988)($t7)
/* E2CC 8000D6CC 0338C821 */  addu       $t9, $t9, $t8
/* E2D0 8000D6D0 9339ED3A */  lbu        $t9, %lo(D_8019ED3A)($t9)
/* E2D4 8000D6D4 01F92023 */  subu       $a0, $t7, $t9
/* E2D8 8000D6D8 1C800003 */  bgtz       $a0, .L8000D6E8
/* E2DC 8000D6DC 2881000B */   slti      $at, $a0, 0xB
/* E2E0 8000D6E0 03E00008 */  jr         $ra
/* E2E4 8000D6E4 00001025 */   or        $v0, $zero, $zero
.L8000D6E8:
/* E2E8 8000D6E8 14200003 */  bnez       $at, .L8000D6F8
/* E2EC 8000D6EC 3C028008 */   lui       $v0, %hi(D_8008213C)
/* E2F0 8000D6F0 03E00008 */  jr         $ra
/* E2F4 8000D6F4 2402FFFF */   addiu     $v0, $zero, -0x1
.L8000D6F8:
/* E2F8 8000D6F8 00441021 */  addu       $v0, $v0, $a0
/* E2FC 8000D6FC 9042213C */  lbu        $v0, %lo(D_8008213C)($v0)
/* E300 8000D700 03E00008 */  jr         $ra
/* E304 8000D704 00000000 */   nop

glabel func_8000D708
/* E308 8000D708 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* E30C 8000D70C 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* E310 8000D710 8CA20000 */  lw         $v0, 0x0($a1)
/* E314 8000D714 84B802C0 */  lh         $t8, 0x2C0($a1)
/* E318 8000D718 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E31C 8000D71C 00027080 */  sll        $t6, $v0, 2
/* E320 8000D720 240F00E6 */  addiu      $t7, $zero, 0xE6
/* E324 8000D724 24010002 */  addiu      $at, $zero, 0x2
/* E328 8000D728 01C27023 */  subu       $t6, $t6, $v0
/* E32C 8000D72C 0058C823 */  subu       $t9, $v0, $t8
/* E330 8000D730 AFBF0014 */  sw         $ra, 0x14($sp)
/* E334 8000D734 AFA40030 */  sw         $a0, 0x30($sp)
/* E338 8000D738 01EE3023 */  subu       $a2, $t7, $t6
/* E33C 8000D73C 14410012 */  bne        $v0, $at, .L8000D788
/* E340 8000D740 AFB90024 */   sw        $t9, 0x24($sp)
/* E344 8000D744 3C098014 */  lui        $t1, %hi(D_8013FF90)
/* E348 8000D748 8129FF90 */  lb         $t1, %lo(D_8013FF90)($t1)
/* E34C 8000D74C 24070003 */  addiu      $a3, $zero, 0x3
/* E350 8000D750 240800FF */  addiu      $t0, $zero, 0xFF
/* E354 8000D754 3C018008 */  lui        $at, %hi(D_80082148)
/* E358 8000D758 14E90009 */  bne        $a3, $t1, .L8000D780
/* E35C 8000D75C AC282148 */   sw        $t0, %lo(D_80082148)($at)
/* E360 8000D760 0C00359C */  jal        func_8000D670
/* E364 8000D764 AFA60028 */   sw        $a2, 0x28($sp)
/* E368 8000D768 3C058014 */  lui        $a1, %hi(D_8013FC88)
/* E36C 8000D76C 3C018008 */  lui        $at, %hi(D_80082120)
/* E370 8000D770 AC222120 */  sw         $v0, %lo(D_80082120)($at)
/* E374 8000D774 24A5FC88 */  addiu      $a1, $a1, %lo(D_8013FC88)
/* E378 8000D778 10000003 */  b          .L8000D788
/* E37C 8000D77C 8FA60028 */   lw        $a2, 0x28($sp)
.L8000D780:
/* E380 8000D780 3C018008 */  lui        $at, %hi(D_80082120)
/* E384 8000D784 AC202120 */  sw         $zero, %lo(D_80082120)($at)
.L8000D788:
/* E388 8000D788 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* E38C 8000D78C 8063FF90 */  lb         $v1, %lo(D_8013FF90)($v1)
/* E390 8000D790 24070003 */  addiu      $a3, $zero, 0x3
/* E394 8000D794 14E30010 */  bne        $a3, $v1, .L8000D7D8
/* E398 8000D798 00000000 */   nop
/* E39C 8000D79C 8CA20000 */  lw         $v0, 0x0($a1)
/* E3A0 8000D7A0 24010096 */  addiu      $at, $zero, 0x96
/* E3A4 8000D7A4 240A001E */  addiu      $t2, $zero, 0x1E
/* E3A8 8000D7A8 14410002 */  bne        $v0, $at, .L8000D7B4
/* E3AC 8000D7AC 3C01801A */   lui       $at, %hi(D_8019E035)
/* E3B0 8000D7B0 A02AE035 */  sb         $t2, %lo(D_8019E035)($at)
.L8000D7B4:
/* E3B4 8000D7B4 94AB0004 */  lhu        $t3, 0x4($a1)
/* E3B8 8000D7B8 240100B4 */  addiu      $at, $zero, 0xB4
/* E3BC 8000D7BC 316C4000 */  andi       $t4, $t3, 0x4000
/* E3C0 8000D7C0 15800005 */  bnez       $t4, .L8000D7D8
/* E3C4 8000D7C4 00000000 */   nop
/* E3C8 8000D7C8 14410003 */  bne        $v0, $at, .L8000D7D8
/* E3CC 8000D7CC 240D001E */   addiu     $t5, $zero, 0x1E
/* E3D0 8000D7D0 3C01801A */  lui        $at, %hi(D_8019E034)
/* E3D4 8000D7D4 A02DE034 */  sb         $t5, %lo(D_8019E034)($at)
.L8000D7D8:
/* E3D8 8000D7D8 14E30012 */  bne        $a3, $v1, .L8000D824
/* E3DC 8000D7DC 8FA90024 */   lw        $t1, 0x24($sp)
/* E3E0 8000D7E0 94AF0004 */  lhu        $t7, 0x4($a1)
/* E3E4 8000D7E4 31EE4000 */  andi       $t6, $t7, 0x4000
/* E3E8 8000D7E8 55C0000F */  bnel       $t6, $zero, .L8000D828
/* E3EC 8000D7EC 29210060 */   slti      $at, $t1, 0x60
/* E3F0 8000D7F0 8CB80000 */  lw         $t8, 0x0($a1)
/* E3F4 8000D7F4 3C198008 */  lui        $t9, %hi(D_80082148)
/* E3F8 8000D7F8 2F0100AB */  sltiu      $at, $t8, 0xAB
/* E3FC 8000D7FC 54200014 */  bnel       $at, $zero, .L8000D850
/* E400 8000D800 28C1FE0C */   slti      $at, $a2, -0x1F4
/* E404 8000D804 8F392148 */  lw         $t9, %lo(D_80082148)($t9)
/* E408 8000D808 3C018008 */  lui        $at, %hi(D_80082148)
/* E40C 8000D80C 2728FFE7 */  addiu      $t0, $t9, -0x19
/* E410 8000D810 1D00000E */  bgtz       $t0, .L8000D84C
/* E414 8000D814 AC282148 */   sw        $t0, %lo(D_80082148)($at)
/* E418 8000D818 3C018008 */  lui        $at, %hi(D_80082148)
/* E41C 8000D81C 1000000B */  b          .L8000D84C
/* E420 8000D820 AC202148 */   sw        $zero, %lo(D_80082148)($at)
.L8000D824:
/* E424 8000D824 29210060 */  slti       $at, $t1, 0x60
.L8000D828:
/* E428 8000D828 14200008 */  bnez       $at, .L8000D84C
/* E42C 8000D82C 3C0A8008 */   lui       $t2, %hi(D_80082148)
/* E430 8000D830 8D4A2148 */  lw         $t2, %lo(D_80082148)($t2)
/* E434 8000D834 3C018008 */  lui        $at, %hi(D_80082148)
/* E438 8000D838 254BFFE7 */  addiu      $t3, $t2, -0x19
/* E43C 8000D83C 1D600003 */  bgtz       $t3, .L8000D84C
/* E440 8000D840 AC2B2148 */   sw        $t3, %lo(D_80082148)($at)
/* E444 8000D844 3C018008 */  lui        $at, %hi(D_80082148)
/* E448 8000D848 AC202148 */  sw         $zero, %lo(D_80082148)($at)
.L8000D84C:
/* E44C 8000D84C 28C1FE0C */  slti       $at, $a2, -0x1F4
.L8000D850:
/* E450 8000D850 10200002 */  beqz       $at, .L8000D85C
/* E454 8000D854 8FAC0030 */   lw        $t4, 0x30($sp)
/* E458 8000D858 2406FE0C */  addiu      $a2, $zero, -0x1F4
.L8000D85C:
/* E45C 8000D85C 8D8D0000 */  lw         $t5, 0x0($t4)
/* E460 8000D860 00C02025 */  or         $a0, $a2, $zero
/* E464 8000D864 240500B9 */  addiu      $a1, $zero, 0xB9
/* E468 8000D868 0C007DAD */  jal        func_8001F6B4
/* E46C 8000D86C AFAD002C */   sw        $t5, 0x2C($sp)
/* E470 8000D870 3C078008 */  lui        $a3, %hi(D_8008214B)
/* E474 8000D874 90E7214B */  lbu        $a3, %lo(D_8008214B)($a3)
/* E478 8000D878 240400CE */  addiu      $a0, $zero, 0xCE
/* E47C 8000D87C 240500CE */  addiu      $a1, $zero, 0xCE
/* E480 8000D880 0C007DD7 */  jal        func_8001F75C
/* E484 8000D884 240600CE */   addiu     $a2, $zero, 0xCE
/* E488 8000D888 8FAF0024 */  lw         $t7, 0x24($sp)
/* E48C 8000D88C 27A4002C */  addiu      $a0, $sp, 0x2C
/* E490 8000D890 3C058008 */  lui        $a1, %hi(D_80082148)
/* E494 8000D894 29E1006A */  slti       $at, $t7, 0x6A
/* E498 8000D898 50200032 */  beql       $at, $zero, .L8000D964
/* E49C 8000D89C 8FAE002C */   lw        $t6, 0x2C($sp)
/* E4A0 8000D8A0 0C00365F */  jal        func_8000D97C
/* E4A4 8000D8A4 8CA52148 */   lw        $a1, %lo(D_80082148)($a1)
/* E4A8 8000D8A8 3C038014 */  lui        $v1, %hi(D_8013FF90)
/* E4AC 8000D8AC 2463FF90 */  addiu      $v1, $v1, %lo(D_8013FF90)
/* E4B0 8000D8B0 80620000 */  lb         $v0, 0x0($v1)
/* E4B4 8000D8B4 24010003 */  addiu      $at, $zero, 0x3
/* E4B8 8000D8B8 27A4002C */  addiu      $a0, $sp, 0x2C
/* E4BC 8000D8BC 1041000A */  beq        $v0, $at, .L8000D8E8
/* E4C0 8000D8C0 3C068009 */   lui       $a2, %hi(D_80095508)
/* E4C4 8000D8C4 24010004 */  addiu      $at, $zero, 0x4
/* E4C8 8000D8C8 14410025 */  bne        $v0, $at, .L8000D960
/* E4CC 8000D8CC 27A4002C */   addiu     $a0, $sp, 0x2C
/* E4D0 8000D8D0 3C068009 */  lui        $a2, %hi(D_80095500)
/* E4D4 8000D8D4 24C65500 */  addiu      $a2, $a2, %lo(D_80095500)
/* E4D8 8000D8D8 0C003795 */  jal        func_8000DE54
/* E4DC 8000D8DC 8065000B */   lb        $a1, 0xB($v1)
/* E4E0 8000D8E0 10000020 */  b          .L8000D964
/* E4E4 8000D8E4 8FAE002C */   lw        $t6, 0x2C($sp)
.L8000D8E8:
/* E4E8 8000D8E8 8065000B */  lb         $a1, 0xB($v1)
/* E4EC 8000D8EC 0C003795 */  jal        func_8000DE54
/* E4F0 8000D8F0 24C65508 */   addiu     $a2, $a2, %lo(D_80095508)
/* E4F4 8000D8F4 3C078008 */  lui        $a3, %hi(D_8008214B)
/* E4F8 8000D8F8 90E7214B */  lbu        $a3, %lo(D_8008214B)($a3)
/* E4FC 8000D8FC 240400B5 */  addiu      $a0, $zero, 0xB5
/* E500 8000D900 24050060 */  addiu      $a1, $zero, 0x60
/* E504 8000D904 0C007DD7 */  jal        func_8001F75C
/* E508 8000D908 24060014 */   addiu     $a2, $zero, 0x14
/* E50C 8000D90C 3C068008 */  lui        $a2, %hi(D_80082120)
/* E510 8000D910 8CC62120 */  lw         $a2, %lo(D_80082120)($a2)
/* E514 8000D914 3C048014 */  lui        $a0, %hi(D_8013F830)
/* E518 8000D918 2484F830 */  addiu      $a0, $a0, %lo(D_8013F830)
/* E51C 8000D91C 18C00008 */  blez       $a2, .L8000D940
/* E520 8000D920 3C058009 */   lui       $a1, %hi(D_80095524)
/* E524 8000D924 3C048014 */  lui        $a0, %hi(D_8013F830)
/* E528 8000D928 3C058009 */  lui        $a1, %hi(D_80095510)
/* E52C 8000D92C 24A55510 */  addiu      $a1, $a1, %lo(D_80095510)
/* E530 8000D930 0C01AE81 */  jal        func_8006BA04
/* E534 8000D934 2484F830 */   addiu     $a0, $a0, %lo(D_8013F830)
/* E538 8000D938 10000003 */  b          .L8000D948
/* E53C 8000D93C 00000000 */   nop
.L8000D940:
/* E540 8000D940 0C01AE81 */  jal        func_8006BA04
/* E544 8000D944 24A55524 */   addiu     $a1, $a1, %lo(D_80095524)
.L8000D948:
/* E548 8000D948 3C058014 */  lui        $a1, %hi(D_8013F830)
/* E54C 8000D94C 3C068009 */  lui        $a2, %hi(D_8008BEBC)
/* E550 8000D950 24C6BEBC */  addiu      $a2, $a2, %lo(D_8008BEBC)
/* E554 8000D954 24A5F830 */  addiu      $a1, $a1, %lo(D_8013F830)
/* E558 8000D958 0C007DE4 */  jal        func_8001F790
/* E55C 8000D95C 27A4002C */   addiu     $a0, $sp, 0x2C
.L8000D960:
/* E560 8000D960 8FAE002C */  lw         $t6, 0x2C($sp)
.L8000D964:
/* E564 8000D964 8FB80030 */  lw         $t8, 0x30($sp)
/* E568 8000D968 AF0E0000 */  sw         $t6, 0x0($t8)
/* E56C 8000D96C 8FBF0014 */  lw         $ra, 0x14($sp)
/* E570 8000D970 27BD0030 */  addiu      $sp, $sp, 0x30
/* E574 8000D974 03E00008 */  jr         $ra
/* E578 8000D978 00000000 */   nop

glabel func_8000D97C
/* E57C 8000D97C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* E580 8000D980 AFBF0014 */  sw         $ra, 0x14($sp)
/* E584 8000D984 AFA40068 */  sw         $a0, 0x68($sp)
/* E588 8000D988 8C8F0000 */  lw         $t7, 0x0($a0)
/* E58C 8000D98C 27A40064 */  addiu      $a0, $sp, 0x64
/* E590 8000D990 0C0037B7 */  jal        func_8000DEDC
/* E594 8000D994 AFAF0064 */   sw        $t7, 0x64($sp)
/* E598 8000D998 8FB80064 */  lw         $t8, 0x64($sp)
/* E59C 8000D99C 3C0A0101 */  lui        $t2, %hi(D_100A268)
/* E5A0 8000D9A0 254AA268 */  addiu      $t2, $t2, %lo(D_100A268)
/* E5A4 8000D9A4 27190008 */  addiu      $t9, $t8, 0x8
/* E5A8 8000D9A8 AFB90064 */  sw         $t9, 0x64($sp)
/* E5AC 8000D9AC 3C09FD10 */  lui        $t1, (0xFD100000 >> 16)
/* E5B0 8000D9B0 AF090000 */  sw         $t1, 0x0($t8)
/* E5B4 8000D9B4 AF0A0004 */  sw         $t2, 0x4($t8)
/* E5B8 8000D9B8 8FAB0064 */  lw         $t3, 0x64($sp)
/* E5BC 8000D9BC 3C0DE800 */  lui        $t5, (0xE8000000 >> 16)
/* E5C0 8000D9C0 3C18F500 */  lui        $t8, (0xF5000100 >> 16)
/* E5C4 8000D9C4 256C0008 */  addiu      $t4, $t3, 0x8
/* E5C8 8000D9C8 AFAC0064 */  sw         $t4, 0x64($sp)
/* E5CC 8000D9CC AD600004 */  sw         $zero, 0x4($t3)
/* E5D0 8000D9D0 AD6D0000 */  sw         $t5, 0x0($t3)
/* E5D4 8000D9D4 8FAE0064 */  lw         $t6, 0x64($sp)
/* E5D8 8000D9D8 37180100 */  ori        $t8, $t8, (0xF5000100 & 0xFFFF)
/* E5DC 8000D9DC 3C190700 */  lui        $t9, (0x7000000 >> 16)
/* E5E0 8000D9E0 25CF0008 */  addiu      $t7, $t6, 0x8
/* E5E4 8000D9E4 AFAF0064 */  sw         $t7, 0x64($sp)
/* E5E8 8000D9E8 ADD80000 */  sw         $t8, 0x0($t6)
/* E5EC 8000D9EC ADD90004 */  sw         $t9, 0x4($t6)
/* E5F0 8000D9F0 8FA90064 */  lw         $t1, 0x64($sp)
/* E5F4 8000D9F4 3C08E600 */  lui        $t0, (0xE6000000 >> 16)
/* E5F8 8000D9F8 3C0E0703 */  lui        $t6, (0x703C000 >> 16)
/* E5FC 8000D9FC 252A0008 */  addiu      $t2, $t1, 0x8
/* E600 8000DA00 AFAA0064 */  sw         $t2, 0x64($sp)
/* E604 8000DA04 AD200004 */  sw         $zero, 0x4($t1)
/* E608 8000DA08 AD280000 */  sw         $t0, 0x0($t1)
/* E60C 8000DA0C 8FAB0064 */  lw         $t3, 0x64($sp)
/* E610 8000DA10 35CEC000 */  ori        $t6, $t6, (0x703C000 & 0xFFFF)
/* E614 8000DA14 3C0DF000 */  lui        $t5, (0xF0000000 >> 16)
/* E618 8000DA18 256C0008 */  addiu      $t4, $t3, 0x8
/* E61C 8000DA1C AFAC0064 */  sw         $t4, 0x64($sp)
/* E620 8000DA20 AD6E0004 */  sw         $t6, 0x4($t3)
/* E624 8000DA24 AD6D0000 */  sw         $t5, 0x0($t3)
/* E628 8000DA28 8FAF0064 */  lw         $t7, 0x64($sp)
/* E62C 8000DA2C 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
/* E630 8000DA30 3C0ABA00 */  lui        $t2, (0xBA000E02 >> 16)
/* E634 8000DA34 25F80008 */  addiu      $t8, $t7, 0x8
/* E638 8000DA38 AFB80064 */  sw         $t8, 0x64($sp)
/* E63C 8000DA3C ADE00004 */  sw         $zero, 0x4($t7)
/* E640 8000DA40 ADE70000 */  sw         $a3, 0x0($t7)
/* E644 8000DA44 8FB90064 */  lw         $t9, 0x64($sp)
/* E648 8000DA48 354A0E02 */  ori        $t2, $t2, (0xBA000E02 & 0xFFFF)
/* E64C 8000DA4C 340B8000 */  ori        $t3, $zero, 0x8000
/* E650 8000DA50 27290008 */  addiu      $t1, $t9, 0x8
/* E654 8000DA54 AFA90064 */  sw         $t1, 0x64($sp)
/* E658 8000DA58 AF2B0004 */  sw         $t3, 0x4($t9)
/* E65C 8000DA5C AF2A0000 */  sw         $t2, 0x0($t9)
/* E660 8000DA60 8FAC0064 */  lw         $t4, 0x64($sp)
/* E664 8000DA64 3C0F0101 */  lui        $t7, %hi(D_100A1A8)
/* E668 8000DA68 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* E66C 8000DA6C 258D0008 */  addiu      $t5, $t4, 0x8
/* E670 8000DA70 AFAD0064 */  sw         $t5, 0x64($sp)
/* E674 8000DA74 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* E678 8000DA78 25EFA1A8 */  addiu      $t7, $t7, %lo(D_100A1A8)
/* E67C 8000DA7C AD8F0004 */  sw         $t7, 0x4($t4)
/* E680 8000DA80 AD8E0000 */  sw         $t6, 0x0($t4)
/* E684 8000DA84 8FB80064 */  lw         $t8, 0x64($sp)
/* E688 8000DA88 3C0A0708 */  lui        $t2, (0x7080040 >> 16)
/* E68C 8000DA8C 3C09F548 */  lui        $t1, (0xF5480200 >> 16)
/* E690 8000DA90 27190008 */  addiu      $t9, $t8, 0x8
/* E694 8000DA94 AFB90064 */  sw         $t9, 0x64($sp)
/* E698 8000DA98 35290200 */  ori        $t1, $t1, (0xF5480200 & 0xFFFF)
/* E69C 8000DA9C 354A0040 */  ori        $t2, $t2, (0x7080040 & 0xFFFF)
/* E6A0 8000DAA0 AF0A0004 */  sw         $t2, 0x4($t8)
/* E6A4 8000DAA4 AF090000 */  sw         $t1, 0x0($t8)
/* E6A8 8000DAA8 8FAB0064 */  lw         $t3, 0x64($sp)
/* E6AC 8000DAAC 3C180701 */  lui        $t8, (0x701E058 >> 16)
/* E6B0 8000DAB0 3718E058 */  ori        $t8, $t8, (0x701E058 & 0xFFFF)
/* E6B4 8000DAB4 256C0008 */  addiu      $t4, $t3, 0x8
/* E6B8 8000DAB8 AFAC0064 */  sw         $t4, 0x64($sp)
/* E6BC 8000DABC AD600004 */  sw         $zero, 0x4($t3)
/* E6C0 8000DAC0 AD680000 */  sw         $t0, 0x0($t3)
/* E6C4 8000DAC4 8FAD0064 */  lw         $t5, 0x64($sp)
/* E6C8 8000DAC8 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* E6CC 8000DACC 3C0CF540 */  lui        $t4, (0xF5400200 >> 16)
/* E6D0 8000DAD0 25AE0008 */  addiu      $t6, $t5, 0x8
/* E6D4 8000DAD4 AFAE0064 */  sw         $t6, 0x64($sp)
/* E6D8 8000DAD8 ADB80004 */  sw         $t8, 0x4($t5)
/* E6DC 8000DADC ADAF0000 */  sw         $t7, 0x0($t5)
/* E6E0 8000DAE0 8FB90064 */  lw         $t9, 0x64($sp)
/* E6E4 8000DAE4 3C0D0008 */  lui        $t5, (0x80040 >> 16)
/* E6E8 8000DAE8 35AD0040 */  ori        $t5, $t5, (0x80040 & 0xFFFF)
/* E6EC 8000DAEC 27290008 */  addiu      $t1, $t9, 0x8
/* E6F0 8000DAF0 AFA90064 */  sw         $t1, 0x64($sp)
/* E6F4 8000DAF4 AF200004 */  sw         $zero, 0x4($t9)
/* E6F8 8000DAF8 AF270000 */  sw         $a3, 0x0($t9)
/* E6FC 8000DAFC 8FAA0064 */  lw         $t2, 0x64($sp)
/* E700 8000DB00 358C0200 */  ori        $t4, $t4, (0xF5400200 & 0xFFFF)
/* E704 8000DB04 3C190003 */  lui        $t9, (0x3C058 >> 16)
/* E708 8000DB08 254B0008 */  addiu      $t3, $t2, 0x8
/* E70C 8000DB0C AFAB0064 */  sw         $t3, 0x64($sp)
/* E710 8000DB10 AD4D0004 */  sw         $t5, 0x4($t2)
/* E714 8000DB14 AD4C0000 */  sw         $t4, 0x0($t2)
/* E718 8000DB18 8FAE0064 */  lw         $t6, 0x64($sp)
/* E71C 8000DB1C 3739C058 */  ori        $t9, $t9, (0x3C058 & 0xFFFF)
/* E720 8000DB20 3C18F200 */  lui        $t8, (0xF2000000 >> 16)
/* E724 8000DB24 25CF0008 */  addiu      $t7, $t6, 0x8
/* E728 8000DB28 AFAF0064 */  sw         $t7, 0x64($sp)
/* E72C 8000DB2C ADD80000 */  sw         $t8, 0x0($t6)
/* E730 8000DB30 ADD90004 */  sw         $t9, 0x4($t6)
/* E734 8000DB34 8FA90064 */  lw         $t1, 0x64($sp)
/* E738 8000DB38 3C0C0004 */  lui        $t4, (0x402D0 >> 16)
/* E73C 8000DB3C 3C0BE44B */  lui        $t3, (0xE44BC32C >> 16)
/* E740 8000DB40 252A0008 */  addiu      $t2, $t1, 0x8
/* E744 8000DB44 AFAA0064 */  sw         $t2, 0x64($sp)
/* E748 8000DB48 356BC32C */  ori        $t3, $t3, (0xE44BC32C & 0xFFFF)
/* E74C 8000DB4C 358C02D0 */  ori        $t4, $t4, (0x402D0 & 0xFFFF)
/* E750 8000DB50 AD2C0004 */  sw         $t4, 0x4($t1)
/* E754 8000DB54 AD2B0000 */  sw         $t3, 0x0($t1)
/* E758 8000DB58 8FAD0064 */  lw         $t5, 0x64($sp)
/* E75C 8000DB5C 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* E760 8000DB60 3C0A0400 */  lui        $t2, (0x4000400 >> 16)
/* E764 8000DB64 25AE0008 */  addiu      $t6, $t5, 0x8
/* E768 8000DB68 AFAE0064 */  sw         $t6, 0x64($sp)
/* E76C 8000DB6C ADA00004 */  sw         $zero, 0x4($t5)
/* E770 8000DB70 ADAF0000 */  sw         $t7, 0x0($t5)
/* E774 8000DB74 8FB80064 */  lw         $t8, 0x64($sp)
/* E778 8000DB78 354A0400 */  ori        $t2, $t2, (0x4000400 & 0xFFFF)
/* E77C 8000DB7C 3C09B300 */  lui        $t1, (0xB3000000 >> 16)
/* E780 8000DB80 27190008 */  addiu      $t9, $t8, 0x8
/* E784 8000DB84 AFB90064 */  sw         $t9, 0x64($sp)
/* E788 8000DB88 AF0A0004 */  sw         $t2, 0x4($t8)
/* E78C 8000DB8C AF090000 */  sw         $t1, 0x0($t8)
/* E790 8000DB90 8FAB0064 */  lw         $t3, 0x64($sp)
/* E794 8000DB94 256C0008 */  addiu      $t4, $t3, 0x8
/* E798 8000DB98 AFAC0064 */  sw         $t4, 0x64($sp)
/* E79C 8000DB9C AD600004 */  sw         $zero, 0x4($t3)
/* E7A0 8000DBA0 AD670000 */  sw         $a3, 0x0($t3)
/* E7A4 8000DBA4 8FAE0068 */  lw         $t6, 0x68($sp)
/* E7A8 8000DBA8 8FAD0064 */  lw         $t5, 0x64($sp)
/* E7AC 8000DBAC ADCD0000 */  sw         $t5, 0x0($t6)
/* E7B0 8000DBB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* E7B4 8000DBB4 27BD0068 */  addiu      $sp, $sp, 0x68
/* E7B8 8000DBB8 03E00008 */  jr         $ra
/* E7BC 8000DBBC 00000000 */   nop

glabel func_8000DBC0
/* E7C0 8000DBC0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* E7C4 8000DBC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* E7C8 8000DBC8 AFA40068 */  sw         $a0, 0x68($sp)
/* E7CC 8000DBCC AFA60070 */  sw         $a2, 0x70($sp)
/* E7D0 8000DBD0 AFA70074 */  sw         $a3, 0x74($sp)
/* E7D4 8000DBD4 8C8F0000 */  lw         $t7, 0x0($a0)
/* E7D8 8000DBD8 27A40064 */  addiu      $a0, $sp, 0x64
/* E7DC 8000DBDC 0C0037B7 */  jal        func_8000DEDC
/* E7E0 8000DBE0 AFAF0064 */   sw        $t7, 0x64($sp)
/* E7E4 8000DBE4 8FB80064 */  lw         $t8, 0x64($sp)
/* E7E8 8000DBE8 8FA90070 */  lw         $t1, 0x70($sp)
/* E7EC 8000DBEC 8FAA0074 */  lw         $t2, 0x74($sp)
/* E7F0 8000DBF0 27190008 */  addiu      $t9, $t8, 0x8
/* E7F4 8000DBF4 AFB90064 */  sw         $t9, 0x64($sp)
/* E7F8 8000DBF8 3C0C0101 */  lui        $t4, %hi(D_100A268)
/* E7FC 8000DBFC 258CA268 */  addiu      $t4, $t4, %lo(D_100A268)
/* E800 8000DC00 3C0BFD10 */  lui        $t3, (0xFD100000 >> 16)
/* E804 8000DC04 AF0B0000 */  sw         $t3, 0x0($t8)
/* E808 8000DC08 AF0C0004 */  sw         $t4, 0x4($t8)
/* E80C 8000DC0C 8FAD0064 */  lw         $t5, 0x64($sp)
/* E810 8000DC10 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
/* E814 8000DC14 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* E818 8000DC18 25AE0008 */  addiu      $t6, $t5, 0x8
/* E81C 8000DC1C AFAE0064 */  sw         $t6, 0x64($sp)
/* E820 8000DC20 ADA00004 */  sw         $zero, 0x4($t5)
/* E824 8000DC24 ADAF0000 */  sw         $t7, 0x0($t5)
/* E828 8000DC28 8FB80064 */  lw         $t8, 0x64($sp)
/* E82C 8000DC2C 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* E830 8000DC30 3C0C0700 */  lui        $t4, (0x7000000 >> 16)
/* E834 8000DC34 27190008 */  addiu      $t9, $t8, 0x8
/* E838 8000DC38 AFB90064 */  sw         $t9, 0x64($sp)
/* E83C 8000DC3C AF0C0004 */  sw         $t4, 0x4($t8)
/* E840 8000DC40 AF0B0000 */  sw         $t3, 0x0($t8)
/* E844 8000DC44 8FAD0064 */  lw         $t5, 0x64($sp)
/* E848 8000DC48 3C08E600 */  lui        $t0, (0xE6000000 >> 16)
/* E84C 8000DC4C 3C0B0703 */  lui        $t3, (0x703C000 >> 16)
/* E850 8000DC50 25AE0008 */  addiu      $t6, $t5, 0x8
/* E854 8000DC54 AFAE0064 */  sw         $t6, 0x64($sp)
/* E858 8000DC58 ADA00004 */  sw         $zero, 0x4($t5)
/* E85C 8000DC5C ADA80000 */  sw         $t0, 0x0($t5)
/* E860 8000DC60 8FAF0064 */  lw         $t7, 0x64($sp)
/* E864 8000DC64 356BC000 */  ori        $t3, $t3, (0x703C000 & 0xFFFF)
/* E868 8000DC68 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* E86C 8000DC6C 25F80008 */  addiu      $t8, $t7, 0x8
/* E870 8000DC70 AFB80064 */  sw         $t8, 0x64($sp)
/* E874 8000DC74 ADEB0004 */  sw         $t3, 0x4($t7)
/* E878 8000DC78 ADF90000 */  sw         $t9, 0x0($t7)
/* E87C 8000DC7C 8FAC0064 */  lw         $t4, 0x64($sp)
/* E880 8000DC80 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
/* E884 8000DC84 3C18BA00 */  lui        $t8, (0xBA000E02 >> 16)
/* E888 8000DC88 258D0008 */  addiu      $t5, $t4, 0x8
/* E88C 8000DC8C AFAD0064 */  sw         $t5, 0x64($sp)
/* E890 8000DC90 AD870000 */  sw         $a3, 0x0($t4)
/* E894 8000DC94 AD800004 */  sw         $zero, 0x4($t4)
/* E898 8000DC98 8FAE0064 */  lw         $t6, 0x64($sp)
/* E89C 8000DC9C 37180E02 */  ori        $t8, $t8, (0xBA000E02 & 0xFFFF)
/* E8A0 8000DCA0 34198000 */  ori        $t9, $zero, 0x8000
/* E8A4 8000DCA4 25CF0008 */  addiu      $t7, $t6, 0x8
/* E8A8 8000DCA8 AFAF0064 */  sw         $t7, 0x64($sp)
/* E8AC 8000DCAC ADD90004 */  sw         $t9, 0x4($t6)
/* E8B0 8000DCB0 ADD80000 */  sw         $t8, 0x0($t6)
/* E8B4 8000DCB4 8FAB0064 */  lw         $t3, 0x64($sp)
/* E8B8 8000DCB8 3C0E0101 */  lui        $t6, %hi(D_100A1A8)
/* E8BC 8000DCBC 3C0DFD48 */  lui        $t5, (0xFD480007 >> 16)
/* E8C0 8000DCC0 256C0008 */  addiu      $t4, $t3, 0x8
/* E8C4 8000DCC4 AFAC0064 */  sw         $t4, 0x64($sp)
/* E8C8 8000DCC8 35AD0007 */  ori        $t5, $t5, (0xFD480007 & 0xFFFF)
/* E8CC 8000DCCC 25CEA1A8 */  addiu      $t6, $t6, %lo(D_100A1A8)
/* E8D0 8000DCD0 AD6E0004 */  sw         $t6, 0x4($t3)
/* E8D4 8000DCD4 AD6D0000 */  sw         $t5, 0x0($t3)
/* E8D8 8000DCD8 8FAF0064 */  lw         $t7, 0x64($sp)
/* E8DC 8000DCDC 3C0B0708 */  lui        $t3, (0x7080040 >> 16)
/* E8E0 8000DCE0 3C19F548 */  lui        $t9, (0xF5480200 >> 16)
/* E8E4 8000DCE4 25F80008 */  addiu      $t8, $t7, 0x8
/* E8E8 8000DCE8 AFB80064 */  sw         $t8, 0x64($sp)
/* E8EC 8000DCEC 37390200 */  ori        $t9, $t9, (0xF5480200 & 0xFFFF)
/* E8F0 8000DCF0 356B0040 */  ori        $t3, $t3, (0x7080040 & 0xFFFF)
/* E8F4 8000DCF4 ADEB0004 */  sw         $t3, 0x4($t7)
/* E8F8 8000DCF8 ADF90000 */  sw         $t9, 0x0($t7)
/* E8FC 8000DCFC 8FAC0064 */  lw         $t4, 0x64($sp)
/* E900 8000DD00 3C190701 */  lui        $t9, (0x701E058 >> 16)
/* E904 8000DD04 3739E058 */  ori        $t9, $t9, (0x701E058 & 0xFFFF)
/* E908 8000DD08 258D0008 */  addiu      $t5, $t4, 0x8
/* E90C 8000DD0C AFAD0064 */  sw         $t5, 0x64($sp)
/* E910 8000DD10 AD880000 */  sw         $t0, 0x0($t4)
/* E914 8000DD14 AD800004 */  sw         $zero, 0x4($t4)
/* E918 8000DD18 8FAE0064 */  lw         $t6, 0x64($sp)
/* E91C 8000DD1C 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* E920 8000DD20 3C01E400 */  lui        $at, (0xE4000000 >> 16)
/* E924 8000DD24 25CF0008 */  addiu      $t7, $t6, 0x8
/* E928 8000DD28 AFAF0064 */  sw         $t7, 0x64($sp)
/* E92C 8000DD2C ADD90004 */  sw         $t9, 0x4($t6)
/* E930 8000DD30 ADD80000 */  sw         $t8, 0x0($t6)
/* E934 8000DD34 8FAB0064 */  lw         $t3, 0x64($sp)
/* E938 8000DD38 3C180008 */  lui        $t8, (0x80040 >> 16)
/* E93C 8000DD3C 3C0FF540 */  lui        $t7, (0xF5400200 >> 16)
/* E940 8000DD40 256C0008 */  addiu      $t4, $t3, 0x8
/* E944 8000DD44 AFAC0064 */  sw         $t4, 0x64($sp)
/* E948 8000DD48 AD600004 */  sw         $zero, 0x4($t3)
/* E94C 8000DD4C AD670000 */  sw         $a3, 0x0($t3)
/* E950 8000DD50 8FAD0064 */  lw         $t5, 0x64($sp)
/* E954 8000DD54 35EF0200 */  ori        $t7, $t7, (0xF5400200 & 0xFFFF)
/* E958 8000DD58 37180040 */  ori        $t8, $t8, (0x80040 & 0xFFFF)
/* E95C 8000DD5C 25AE0008 */  addiu      $t6, $t5, 0x8
/* E960 8000DD60 AFAE0064 */  sw         $t6, 0x64($sp)
/* E964 8000DD64 ADB80004 */  sw         $t8, 0x4($t5)
/* E968 8000DD68 ADAF0000 */  sw         $t7, 0x0($t5)
/* E96C 8000DD6C 8FB90064 */  lw         $t9, 0x64($sp)
/* E970 8000DD70 3C0D0003 */  lui        $t5, (0x3C058 >> 16)
/* E974 8000DD74 35ADC058 */  ori        $t5, $t5, (0x3C058 & 0xFFFF)
/* E978 8000DD78 272B0008 */  addiu      $t3, $t9, 0x8
/* E97C 8000DD7C AFAB0064 */  sw         $t3, 0x64($sp)
/* E980 8000DD80 3C0CF200 */  lui        $t4, (0xF2000000 >> 16)
/* E984 8000DD84 AF2C0000 */  sw         $t4, 0x0($t9)
/* E988 8000DD88 AF2D0004 */  sw         $t5, 0x4($t9)
/* E98C 8000DD8C 8FB80078 */  lw         $t8, 0x78($sp)
/* E990 8000DD90 8FA60064 */  lw         $a2, 0x64($sp)
/* E994 8000DD94 0138C821 */  addu       $t9, $t1, $t8
/* E998 8000DD98 8FB8007C */  lw         $t8, 0x7C($sp)
/* E99C 8000DD9C 272BFFFF */  addiu      $t3, $t9, -0x1
/* E9A0 8000DDA0 000B6080 */  sll        $t4, $t3, 2
/* E9A4 8000DDA4 318D0FFF */  andi       $t5, $t4, 0xFFF
/* E9A8 8000DDA8 0158C821 */  addu       $t9, $t2, $t8
/* E9AC 8000DDAC 272BFFFF */  addiu      $t3, $t9, -0x1
/* E9B0 8000DDB0 000B6080 */  sll        $t4, $t3, 2
/* E9B4 8000DDB4 000D7300 */  sll        $t6, $t5, 12
/* E9B8 8000DDB8 24CF0008 */  addiu      $t7, $a2, 0x8
/* E9BC 8000DDBC AFAF0064 */  sw         $t7, 0x64($sp)
/* E9C0 8000DDC0 318D0FFF */  andi       $t5, $t4, 0xFFF
/* E9C4 8000DDC4 01C17825 */  or         $t7, $t6, $at
/* E9C8 8000DDC8 0009C080 */  sll        $t8, $t1, 2
/* E9CC 8000DDCC 33190FFF */  andi       $t9, $t8, 0xFFF
/* E9D0 8000DDD0 01ED7025 */  or         $t6, $t7, $t5
/* E9D4 8000DDD4 000A6080 */  sll        $t4, $t2, 2
/* E9D8 8000DDD8 318F0FFF */  andi       $t7, $t4, 0xFFF
/* E9DC 8000DDDC 00195B00 */  sll        $t3, $t9, 12
/* E9E0 8000DDE0 016F6825 */  or         $t5, $t3, $t7
/* E9E4 8000DDE4 ACCD0004 */  sw         $t5, 0x4($a2)
/* E9E8 8000DDE8 ACCE0000 */  sw         $t6, 0x0($a2)
/* E9EC 8000DDEC 8FAE0064 */  lw         $t6, 0x64($sp)
/* E9F0 8000DDF0 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
/* E9F4 8000DDF4 3C0D0400 */  lui        $t5, (0x4000400 >> 16)
/* E9F8 8000DDF8 25D80008 */  addiu      $t8, $t6, 0x8
/* E9FC 8000DDFC AFB80064 */  sw         $t8, 0x64($sp)
/* EA00 8000DE00 ADC00004 */  sw         $zero, 0x4($t6)
/* EA04 8000DE04 ADD90000 */  sw         $t9, 0x0($t6)
/* EA08 8000DE08 8FAC0064 */  lw         $t4, 0x64($sp)
/* EA0C 8000DE0C 35AD0400 */  ori        $t5, $t5, (0x4000400 & 0xFFFF)
/* EA10 8000DE10 3C0FB300 */  lui        $t7, (0xB3000000 >> 16)
/* EA14 8000DE14 258B0008 */  addiu      $t3, $t4, 0x8
/* EA18 8000DE18 AFAB0064 */  sw         $t3, 0x64($sp)
/* EA1C 8000DE1C AD8F0000 */  sw         $t7, 0x0($t4)
/* EA20 8000DE20 AD8D0004 */  sw         $t5, 0x4($t4)
/* EA24 8000DE24 8FAE0064 */  lw         $t6, 0x64($sp)
/* EA28 8000DE28 25D80008 */  addiu      $t8, $t6, 0x8
/* EA2C 8000DE2C AFB80064 */  sw         $t8, 0x64($sp)
/* EA30 8000DE30 ADC00004 */  sw         $zero, 0x4($t6)
/* EA34 8000DE34 ADC70000 */  sw         $a3, 0x0($t6)
/* EA38 8000DE38 8FAC0068 */  lw         $t4, 0x68($sp)
/* EA3C 8000DE3C 8FB90064 */  lw         $t9, 0x64($sp)
/* EA40 8000DE40 AD990000 */  sw         $t9, 0x0($t4)
/* EA44 8000DE44 8FBF0014 */  lw         $ra, 0x14($sp)
/* EA48 8000DE48 27BD0068 */  addiu      $sp, $sp, 0x68
/* EA4C 8000DE4C 03E00008 */  jr         $ra
/* EA50 8000DE50 00000000 */   nop

glabel func_8000DE54
/* EA54 8000DE54 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* EA58 8000DE58 AFA5002C */  sw         $a1, 0x2C($sp)
/* EA5C 8000DE5C 8FAE002C */  lw         $t6, 0x2C($sp)
/* EA60 8000DE60 AFA60030 */  sw         $a2, 0x30($sp)
/* EA64 8000DE64 8FB80030 */  lw         $t8, 0x30($sp)
/* EA68 8000DE68 AFA40028 */  sw         $a0, 0x28($sp)
/* EA6C 8000DE6C 3C078008 */  lui        $a3, %hi(D_80082124)
/* EA70 8000DE70 000E7880 */  sll        $t7, $t6, 2
/* EA74 8000DE74 AFBF001C */  sw         $ra, 0x1C($sp)
/* EA78 8000DE78 00EF3821 */  addu       $a3, $a3, $t7
/* EA7C 8000DE7C 3C048014 */  lui        $a0, %hi(D_8013F7E0)
/* EA80 8000DE80 3C058009 */  lui        $a1, %hi(D_80095538)
/* EA84 8000DE84 24A55538 */  addiu      $a1, $a1, %lo(D_80095538)
/* EA88 8000DE88 2484F7E0 */  addiu      $a0, $a0, %lo(D_8013F7E0)
/* EA8C 8000DE8C 8CE72124 */  lw         $a3, %lo(D_80082124)($a3)
/* EA90 8000DE90 25C60001 */  addiu      $a2, $t6, 0x1
/* EA94 8000DE94 0C01AE81 */  jal        func_8006BA04
/* EA98 8000DE98 AFB80010 */   sw        $t8, 0x10($sp)
/* EA9C 8000DE9C 8FB90028 */  lw         $t9, 0x28($sp)
/* EAA0 8000DEA0 3C058014 */  lui        $a1, %hi(D_8013F7E0)
/* EAA4 8000DEA4 3C068009 */  lui        $a2, %hi(D_8008BEBC)
/* EAA8 8000DEA8 8F280000 */  lw         $t0, 0x0($t9)
/* EAAC 8000DEAC 24C6BEBC */  addiu      $a2, $a2, %lo(D_8008BEBC)
/* EAB0 8000DEB0 24A5F7E0 */  addiu      $a1, $a1, %lo(D_8013F7E0)
/* EAB4 8000DEB4 27A40024 */  addiu      $a0, $sp, 0x24
/* EAB8 8000DEB8 0C007DE4 */  jal        func_8001F790
/* EABC 8000DEBC AFA80024 */   sw        $t0, 0x24($sp)
/* EAC0 8000DEC0 8FA90024 */  lw         $t1, 0x24($sp)
/* EAC4 8000DEC4 8FAA0028 */  lw         $t2, 0x28($sp)
/* EAC8 8000DEC8 AD490000 */  sw         $t1, 0x0($t2)
/* EACC 8000DECC 8FBF001C */  lw         $ra, 0x1C($sp)
/* EAD0 8000DED0 27BD0028 */  addiu      $sp, $sp, 0x28
/* EAD4 8000DED4 03E00008 */  jr         $ra
/* EAD8 8000DED8 00000000 */   nop

glabel func_8000DEDC
/* EADC 8000DEDC 8C860000 */  lw         $a2, 0x0($a0)
/* EAE0 8000DEE0 3C0EE700 */  lui        $t6, (0xE7000000 >> 16)
/* EAE4 8000DEE4 3C0FBA00 */  lui        $t7, (0xBA001402 >> 16)
/* EAE8 8000DEE8 24C70008 */  addiu      $a3, $a2, 0x8
/* EAEC 8000DEEC ACCE0000 */  sw         $t6, 0x0($a2)
/* EAF0 8000DEF0 ACC00004 */  sw         $zero, 0x4($a2)
/* EAF4 8000DEF4 24E20008 */  addiu      $v0, $a3, 0x8
/* EAF8 8000DEF8 35EF1402 */  ori        $t7, $t7, (0xBA001402 & 0xFFFF)
/* EAFC 8000DEFC ACEF0000 */  sw         $t7, 0x0($a3)
/* EB00 8000DF00 ACE00004 */  sw         $zero, 0x4($a3)
/* EB04 8000DF04 3C18B900 */  lui        $t8, (0xB900031D >> 16)
/* EB08 8000DF08 3C190050 */  lui        $t9, (0x504240 >> 16)
/* EB0C 8000DF0C 37394240 */  ori        $t9, $t9, (0x504240 & 0xFFFF)
/* EB10 8000DF10 3718031D */  ori        $t8, $t8, (0xB900031D & 0xFFFF)
/* EB14 8000DF14 AC580000 */  sw         $t8, 0x0($v0)
/* EB18 8000DF18 AC590004 */  sw         $t9, 0x4($v0)
/* EB1C 8000DF1C 24490008 */  addiu      $t1, $v0, 0x8
/* EB20 8000DF20 00A05825 */  or         $t3, $a1, $zero
/* EB24 8000DF24 316C00FF */  andi       $t4, $t3, 0xFF
/* EB28 8000DF28 2401FF00 */  addiu      $at, $zero, -0x100
/* EB2C 8000DF2C 01816825 */  or         $t5, $t4, $at
/* EB30 8000DF30 3C0AFB00 */  lui        $t2, (0xFB000000 >> 16)
/* EB34 8000DF34 AD2A0000 */  sw         $t2, 0x0($t1)
/* EB38 8000DF38 AD2D0004 */  sw         $t5, 0x4($t1)
/* EB3C 8000DF3C 25230008 */  addiu      $v1, $t1, 0x8
/* EB40 8000DF40 3C0FFFFC */  lui        $t7, (0xFFFCFA7D >> 16)
/* EB44 8000DF44 3C0EFCFF */  lui        $t6, (0xFCFFFFFF >> 16)
/* EB48 8000DF48 35CEFFFF */  ori        $t6, $t6, (0xFCFFFFFF & 0xFFFF)
/* EB4C 8000DF4C 35EFFA7D */  ori        $t7, $t7, (0xFFFCFA7D & 0xFFFF)
/* EB50 8000DF50 24650008 */  addiu      $a1, $v1, 0x8
/* EB54 8000DF54 AC6F0004 */  sw         $t7, 0x4($v1)
/* EB58 8000DF58 AC6E0000 */  sw         $t6, 0x0($v1)
/* EB5C 8000DF5C 3C18BA00 */  lui        $t8, (0xBA001301 >> 16)
/* EB60 8000DF60 37181301 */  ori        $t8, $t8, (0xBA001301 & 0xFFFF)
/* EB64 8000DF64 24A60008 */  addiu      $a2, $a1, 0x8
/* EB68 8000DF68 ACB80000 */  sw         $t8, 0x0($a1)
/* EB6C 8000DF6C ACA00004 */  sw         $zero, 0x4($a1)
/* EB70 8000DF70 3C19BA00 */  lui        $t9, (0xBA001001 >> 16)
/* EB74 8000DF74 37391001 */  ori        $t9, $t9, (0xBA001001 & 0xFFFF)
/* EB78 8000DF78 24C70008 */  addiu      $a3, $a2, 0x8
/* EB7C 8000DF7C ACD90000 */  sw         $t9, 0x0($a2)
/* EB80 8000DF80 ACC00004 */  sw         $zero, 0x4($a2)
/* EB84 8000DF84 3C0ABA00 */  lui        $t2, (0xBA000C02 >> 16)
/* EB88 8000DF88 354A0C02 */  ori        $t2, $t2, (0xBA000C02 & 0xFFFF)
/* EB8C 8000DF8C 24E80008 */  addiu      $t0, $a3, 0x8
/* EB90 8000DF90 240B2000 */  addiu      $t3, $zero, 0x2000
/* EB94 8000DF94 ACEB0004 */  sw         $t3, 0x4($a3)
/* EB98 8000DF98 ACEA0000 */  sw         $t2, 0x0($a3)
/* EB9C 8000DF9C 3C0CBA00 */  lui        $t4, (0xBA000903 >> 16)
/* EBA0 8000DFA0 358C0903 */  ori        $t4, $t4, (0xBA000903 & 0xFFFF)
/* EBA4 8000DFA4 240D0C00 */  addiu      $t5, $zero, 0xC00
/* EBA8 8000DFA8 AD0D0004 */  sw         $t5, 0x4($t0)
/* EBAC 8000DFAC AD0C0000 */  sw         $t4, 0x0($t0)
/* EBB0 8000DFB0 25020008 */  addiu      $v0, $t0, 0x8
/* EBB4 8000DFB4 03E00008 */  jr         $ra
/* EBB8 8000DFB8 AC820000 */   sw        $v0, 0x0($a0)

glabel func_8000DFBC
/* EBBC 8000DFBC 03E00008 */  jr         $ra
/* EBC0 8000DFC0 00000000 */   nop
/* EBC4 8000DFC4 00000000 */  nop
/* EBC8 8000DFC8 00000000 */  nop
/* EBCC 8000DFCC 00000000 */  nop
