.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel alSaveNew
/* 71FE0 800713E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 71FE4 800713E4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 71FE8 800713E8 3C058007 */  lui        $a1, %hi(func_80073964)
/* 71FEC 800713EC 3C068007 */  lui        $a2, %hi(alSaveParam)
/* 71FF0 800713F0 24C63930 */  addiu      $a2, $a2, %lo(alSaveParam)
/* 71FF4 800713F4 24A53964 */  addiu      $a1, $a1, %lo(func_80073964)
/* 71FF8 800713F8 AFA40018 */  sw         $a0, 0x18($sp)
/* 71FFC 800713FC 0C01E78C */  jal        alFilterNew
/* 72000 80071400 24070003 */   addiu     $a3, $zero, 0x3
/* 72004 80071404 8FA40018 */  lw         $a0, 0x18($sp)
/* 72008 80071408 240E0001 */  addiu      $t6, $zero, 0x1
/* 7200C 8007140C AC800014 */  sw         $zero, 0x14($a0)
/* 72010 80071410 AC8E0018 */  sw         $t6, 0x18($a0)
/* 72014 80071414 8FBF0014 */  lw         $ra, 0x14($sp)
/* 72018 80071418 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7201C 8007141C 03E00008 */  jr         $ra
/* 72020 80071420 00000000 */   nop

glabel alMainBusNew
/* 72024 80071424 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72028 80071428 AFA5001C */  sw         $a1, 0x1C($sp)
/* 7202C 8007142C AFA60020 */  sw         $a2, 0x20($sp)
/* 72030 80071430 AFBF0014 */  sw         $ra, 0x14($sp)
/* 72034 80071434 3C068007 */  lui        $a2, %hi(alMainBusParam)
/* 72038 80071438 3C058007 */  lui        $a1, %hi(alMainBusPull)
/* 7203C 8007143C 24A51C50 */  addiu      $a1, $a1, %lo(alMainBusPull)
/* 72040 80071440 24C61C20 */  addiu      $a2, $a2, %lo(alMainBusParam)
/* 72044 80071444 AFA40018 */  sw         $a0, 0x18($sp)
/* 72048 80071448 0C01E78C */  jal        alFilterNew
/* 7204C 8007144C 24070007 */   addiu     $a3, $zero, 0x7
/* 72050 80071450 8FA40018 */  lw         $a0, 0x18($sp)
/* 72054 80071454 AC800014 */  sw         $zero, 0x14($a0)
/* 72058 80071458 8FAE0020 */  lw         $t6, 0x20($sp)
/* 7205C 8007145C AC8E0018 */  sw         $t6, 0x18($a0)
/* 72060 80071460 8FAF001C */  lw         $t7, 0x1C($sp)
/* 72064 80071464 AC8F001C */  sw         $t7, 0x1C($a0)
/* 72068 80071468 8FBF0014 */  lw         $ra, 0x14($sp)
/* 7206C 8007146C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 72070 80071470 03E00008 */  jr         $ra
/* 72074 80071474 00000000 */   nop

glabel alAuxBusNew
/* 72078 80071478 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7207C 8007147C AFA5001C */  sw         $a1, 0x1C($sp)
/* 72080 80071480 AFA60020 */  sw         $a2, 0x20($sp)
/* 72084 80071484 AFBF0014 */  sw         $ra, 0x14($sp)
/* 72088 80071488 3C068007 */  lui        $a2, %hi(alAuxBusParam)
/* 7208C 8007148C 3C058007 */  lui        $a1, %hi(alAuxBusPull)
/* 72090 80071490 24A53850 */  addiu      $a1, $a1, %lo(alAuxBusPull)
/* 72094 80071494 24C63820 */  addiu      $a2, $a2, %lo(alAuxBusParam)
/* 72098 80071498 AFA40018 */  sw         $a0, 0x18($sp)
/* 7209C 8007149C 0C01E78C */  jal        alFilterNew
/* 720A0 800714A0 24070006 */   addiu     $a3, $zero, 0x6
/* 720A4 800714A4 8FA40018 */  lw         $a0, 0x18($sp)
/* 720A8 800714A8 AC800014 */  sw         $zero, 0x14($a0)
/* 720AC 800714AC 8FAE0020 */  lw         $t6, 0x20($sp)
/* 720B0 800714B0 AC8E0018 */  sw         $t6, 0x18($a0)
/* 720B4 800714B4 8FAF001C */  lw         $t7, 0x1C($sp)
/* 720B8 800714B8 AC8F001C */  sw         $t7, 0x1C($a0)
/* 720BC 800714BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 720C0 800714C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 720C4 800714C4 03E00008 */  jr         $ra
/* 720C8 800714C8 00000000 */   nop

glabel alResampleNew
/* 720CC 800714CC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 720D0 800714D0 AFA50024 */  sw         $a1, 0x24($sp)
/* 720D4 800714D4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 720D8 800714D8 3C058007 */  lui        $a1, %hi(alResamplePull)
/* 720DC 800714DC 3C068007 */  lui        $a2, %hi(alResampleParam)
/* 720E0 800714E0 24C628C0 */  addiu      $a2, $a2, %lo(alResampleParam)
/* 720E4 800714E4 24A529AC */  addiu      $a1, $a1, %lo(alResamplePull)
/* 720E8 800714E8 AFA40020 */  sw         $a0, 0x20($sp)
/* 720EC 800714EC 0C01E78C */  jal        alFilterNew
/* 720F0 800714F0 24070001 */   addiu     $a3, $zero, 0x1
/* 720F4 800714F4 240E0020 */  addiu      $t6, $zero, 0x20
/* 720F8 800714F8 AFAE0010 */  sw         $t6, 0x10($sp)
/* 720FC 800714FC 00002025 */  or         $a0, $zero, $zero
/* 72100 80071500 00002825 */  or         $a1, $zero, $zero
/* 72104 80071504 8FA60024 */  lw         $a2, 0x24($sp)
/* 72108 80071508 0C0196D0 */  jal        alHeapDBAlloc
/* 7210C 8007150C 24070001 */   addiu     $a3, $zero, 0x1
/* 72110 80071510 8FA80020 */  lw         $t0, 0x20($sp)
/* 72114 80071514 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 72118 80071518 44802000 */  mtc1       $zero, $f4
/* 7211C 8007151C 44813000 */  mtc1       $at, $f6
/* 72120 80071520 240F0001 */  addiu      $t7, $zero, 0x1
/* 72124 80071524 AD020014 */  sw         $v0, 0x14($t0)
/* 72128 80071528 AD0F0024 */  sw         $t7, 0x24($t0)
/* 7212C 8007152C AD000030 */  sw         $zero, 0x30($t0)
/* 72130 80071530 AD00001C */  sw         $zero, 0x1C($t0)
/* 72134 80071534 AD000028 */  sw         $zero, 0x28($t0)
/* 72138 80071538 AD00002C */  sw         $zero, 0x2C($t0)
/* 7213C 8007153C E5040020 */  swc1       $f4, 0x20($t0)
/* 72140 80071540 E5060018 */  swc1       $f6, 0x18($t0)
/* 72144 80071544 8FBF001C */  lw         $ra, 0x1C($sp)
/* 72148 80071548 27BD0020 */  addiu      $sp, $sp, 0x20
/* 7214C 8007154C 03E00008 */  jr         $ra
/* 72150 80071550 00000000 */   nop

glabel alLoadNew
/* 72154 80071554 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 72158 80071558 AFA5002C */  sw         $a1, 0x2C($sp)
/* 7215C 8007155C AFA60030 */  sw         $a2, 0x30($sp)
/* 72160 80071560 AFBF0024 */  sw         $ra, 0x24($sp)
/* 72164 80071564 AFB00020 */  sw         $s0, 0x20($sp)
/* 72168 80071568 3C068007 */  lui        $a2, %hi(alLoadParam)
/* 7216C 8007156C 3C058007 */  lui        $a1, %hi(alAdpcmPull)
/* 72170 80071570 00808025 */  or         $s0, $a0, $zero
/* 72174 80071574 24A5241C */  addiu      $a1, $a1, %lo(alAdpcmPull)
/* 72178 80071578 24C61D70 */  addiu      $a2, $a2, %lo(alLoadParam)
/* 7217C 8007157C 0C01E78C */  jal        alFilterNew
/* 72180 80071580 00003825 */   or        $a3, $zero, $zero
/* 72184 80071584 240E0020 */  addiu      $t6, $zero, 0x20
/* 72188 80071588 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7218C 8007158C 00002025 */  or         $a0, $zero, $zero
/* 72190 80071590 00002825 */  or         $a1, $zero, $zero
/* 72194 80071594 8FA60030 */  lw         $a2, 0x30($sp)
/* 72198 80071598 0C0196D0 */  jal        alHeapDBAlloc
/* 7219C 8007159C 24070001 */   addiu     $a3, $zero, 0x1
/* 721A0 800715A0 AE020014 */  sw         $v0, 0x14($s0)
/* 721A4 800715A4 240F0020 */  addiu      $t7, $zero, 0x20
/* 721A8 800715A8 AFAF0010 */  sw         $t7, 0x10($sp)
/* 721AC 800715AC 8FA60030 */  lw         $a2, 0x30($sp)
/* 721B0 800715B0 00002025 */  or         $a0, $zero, $zero
/* 721B4 800715B4 00002825 */  or         $a1, $zero, $zero
/* 721B8 800715B8 0C0196D0 */  jal        alHeapDBAlloc
/* 721BC 800715BC 24070001 */   addiu     $a3, $zero, 0x1
/* 721C0 800715C0 AE020018 */  sw         $v0, 0x18($s0)
/* 721C4 800715C4 8FB9002C */  lw         $t9, 0x2C($sp)
/* 721C8 800715C8 26040034 */  addiu      $a0, $s0, 0x34
/* 721CC 800715CC 0320F809 */  jalr       $t9
/* 721D0 800715D0 00000000 */   nop
/* 721D4 800715D4 24180001 */  addiu      $t8, $zero, 0x1
/* 721D8 800715D8 AE020030 */  sw         $v0, 0x30($s0)
/* 721DC 800715DC AE00003C */  sw         $zero, 0x3C($s0)
/* 721E0 800715E0 AE180040 */  sw         $t8, 0x40($s0)
/* 721E4 800715E4 AE000044 */  sw         $zero, 0x44($s0)
/* 721E8 800715E8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 721EC 800715EC 8FB00020 */  lw         $s0, 0x20($sp)
/* 721F0 800715F0 27BD0028 */  addiu      $sp, $sp, 0x28
/* 721F4 800715F4 03E00008 */  jr         $ra
/* 721F8 800715F8 00000000 */   nop

glabel alEnvmixerNew
/* 721FC 800715FC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 72200 80071600 AFA50024 */  sw         $a1, 0x24($sp)
/* 72204 80071604 AFBF001C */  sw         $ra, 0x1C($sp)
/* 72208 80071608 3C058007 */  lui        $a1, %hi(func_800732CC)
/* 7220C 8007160C 3C068007 */  lui        $a2, %hi(alEnvmixerParam)
/* 72210 80071610 24C62CD4 */  addiu      $a2, $a2, %lo(alEnvmixerParam)
/* 72214 80071614 24A532CC */  addiu      $a1, $a1, %lo(func_800732CC)
/* 72218 80071618 AFA40020 */  sw         $a0, 0x20($sp)
/* 7221C 8007161C 0C01E78C */  jal        alFilterNew
/* 72220 80071620 24070004 */   addiu     $a3, $zero, 0x4
/* 72224 80071624 240E0050 */  addiu      $t6, $zero, 0x50
/* 72228 80071628 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7222C 8007162C 00002025 */  or         $a0, $zero, $zero
/* 72230 80071630 00002825 */  or         $a1, $zero, $zero
/* 72234 80071634 8FA60024 */  lw         $a2, 0x24($sp)
/* 72238 80071638 0C0196D0 */  jal        alHeapDBAlloc
/* 7223C 8007163C 24070001 */   addiu     $a3, $zero, 0x1
/* 72240 80071640 8FA80020 */  lw         $t0, 0x20($sp)
/* 72244 80071644 24030001 */  addiu      $v1, $zero, 0x1
/* 72248 80071648 AD020014 */  sw         $v0, 0x14($t0)
/* 7224C 8007164C AD030038 */  sw         $v1, 0x38($t0)
/* 72250 80071650 AD000048 */  sw         $zero, 0x48($t0)
/* 72254 80071654 A503001A */  sh         $v1, 0x1A($t0)
/* 72258 80071658 A5030028 */  sh         $v1, 0x28($t0)
/* 7225C 8007165C A503002E */  sh         $v1, 0x2E($t0)
/* 72260 80071660 A503001C */  sh         $v1, 0x1C($t0)
/* 72264 80071664 A503001E */  sh         $v1, 0x1E($t0)
/* 72268 80071668 A5000020 */  sh         $zero, 0x20($t0)
/* 7226C 8007166C A5000022 */  sh         $zero, 0x22($t0)
/* 72270 80071670 A5030026 */  sh         $v1, 0x26($t0)
/* 72274 80071674 A5000024 */  sh         $zero, 0x24($t0)
/* 72278 80071678 AD000030 */  sw         $zero, 0x30($t0)
/* 7227C 8007167C AD000034 */  sw         $zero, 0x34($t0)
/* 72280 80071680 A5000018 */  sh         $zero, 0x18($t0)
/* 72284 80071684 AD00003C */  sw         $zero, 0x3C($t0)
/* 72288 80071688 AD000040 */  sw         $zero, 0x40($t0)
/* 7228C 8007168C AD000044 */  sw         $zero, 0x44($t0)
/* 72290 80071690 8FBF001C */  lw         $ra, 0x1C($sp)
/* 72294 80071694 27BD0020 */  addiu      $sp, $sp, 0x20
/* 72298 80071698 03E00008 */  jr         $ra
/* 7229C 8007169C 00000000 */   nop

glabel func_800716A0
/* 722A0 800716A0 84820000 */  lh         $v0, 0x0($a0)
/* 722A4 800716A4 24194000 */  addiu      $t9, $zero, 0x4000
/* 722A8 800716A8 24090001 */  addiu      $t1, $zero, 0x1
/* 722AC 800716AC 00027380 */  sll        $t6, $v0, 14
/* 722B0 800716B0 000E1BC3 */  sra        $v1, $t6, 15
/* 722B4 800716B4 00037C00 */  sll        $t7, $v1, 16
/* 722B8 800716B8 000F1C03 */  sra        $v1, $t7, 16
/* 722BC 800716BC 03234023 */  subu       $t0, $t9, $v1
/* 722C0 800716C0 A4880002 */  sh         $t0, 0x2($a0)
/* 722C4 800716C4 AC89002C */  sw         $t1, 0x2C($a0)
/* 722C8 800716C8 00002825 */  or         $a1, $zero, $zero
/* 722CC 800716CC 00803025 */  or         $a2, $a0, $zero
.L800716D0:
/* 722D0 800716D0 24A50001 */  addiu      $a1, $a1, 0x1
/* 722D4 800716D4 28A10008 */  slti       $at, $a1, 0x8
/* 722D8 800716D8 24C60002 */  addiu      $a2, $a2, 0x2
/* 722DC 800716DC 1420FFFC */  bnez       $at, .L800716D0
/* 722E0 800716E0 A4C00006 */   sh        $zero, 0x6($a2)
/* 722E4 800716E4 44832000 */  mtc1       $v1, $f4
/* 722E8 800716E8 3C0140D0 */  lui        $at, (0x40D00000 >> 16)
/* 722EC 800716EC 44816800 */  mtc1       $at, $f13
/* 722F0 800716F0 468021A1 */  cvt.d.w    $f6, $f4
/* 722F4 800716F4 44806000 */  mtc1       $zero, $f12
/* 722F8 800716F8 24A50001 */  addiu      $a1, $a1, 0x1
/* 722FC 800716FC 28A10010 */  slti       $at, $a1, 0x10
/* 72300 80071700 A4C30008 */  sh         $v1, 0x8($a2)
/* 72304 80071704 462C3083 */  div.d      $f2, $f6, $f12
/* 72308 80071708 24C60002 */  addiu      $a2, $a2, 0x2
/* 7230C 8007170C 1020000A */  beqz       $at, .L80071738
/* 72310 80071710 46201006 */   mov.d     $f0, $f2
.L80071714:
/* 72314 80071714 46220002 */  mul.d      $f0, $f0, $f2
/* 72318 80071718 24A50001 */  addiu      $a1, $a1, 0x1
/* 7231C 8007171C 28A10010 */  slti       $at, $a1, 0x10
/* 72320 80071720 24C60002 */  addiu      $a2, $a2, 0x2
/* 72324 80071724 462C0202 */  mul.d      $f8, $f0, $f12
/* 72328 80071728 4620428D */  trunc.w.d  $f10, $f8
/* 7232C 8007172C 440B5000 */  mfc1       $t3, $f10
/* 72330 80071730 1420FFF8 */  bnez       $at, .L80071714
/* 72334 80071734 A4CB0006 */   sh        $t3, 0x6($a2)
.L80071738:
/* 72338 80071738 03E00008 */  jr         $ra
/* 7233C 8007173C 00000000 */   nop

glabel alFxNew
/* 72340 80071740 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 72344 80071744 AFB60058 */  sw         $s6, 0x58($sp)
/* 72348 80071748 00C0B025 */  or         $s6, $a2, $zero
/* 7234C 8007174C AFBF0064 */  sw         $ra, 0x64($sp)
/* 72350 80071750 AFB50054 */  sw         $s5, 0x54($sp)
/* 72354 80071754 AFA5006C */  sw         $a1, 0x6C($sp)
/* 72358 80071758 3C068008 */  lui        $a2, %hi(alFxParam)
/* 7235C 8007175C 0080A825 */  or         $s5, $a0, $zero
/* 72360 80071760 AFBE0060 */  sw         $fp, 0x60($sp)
/* 72364 80071764 AFB7005C */  sw         $s7, 0x5C($sp)
/* 72368 80071768 AFB40050 */  sw         $s4, 0x50($sp)
/* 7236C 8007176C AFB3004C */  sw         $s3, 0x4C($sp)
/* 72370 80071770 AFB20048 */  sw         $s2, 0x48($sp)
/* 72374 80071774 AFB10044 */  sw         $s1, 0x44($sp)
/* 72378 80071778 AFB00040 */  sw         $s0, 0x40($sp)
/* 7237C 8007177C F7BA0038 */  sdc1       $f26, 0x38($sp)
/* 72380 80071780 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 72384 80071784 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 72388 80071788 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 7238C 8007178C 24C6A744 */  addiu      $a2, $a2, %lo(alFxParam)
/* 72390 80071790 00002825 */  or         $a1, $zero, $zero
/* 72394 80071794 0C01E78C */  jal        alFilterNew
/* 72398 80071798 24070005 */   addiu     $a3, $zero, 0x5
/* 7239C 8007179C 8FA2006C */  lw         $v0, 0x6C($sp)
/* 723A0 800717A0 3C0E8008 */  lui        $t6, %hi(alFxPull)
/* 723A4 800717A4 3C0F8008 */  lui        $t7, %hi(alFxParamHdl)
/* 723A8 800717A8 25CEA75C */  addiu      $t6, $t6, %lo(alFxPull)
/* 723AC 800717AC 25EFA4E8 */  addiu      $t7, $t7, %lo(alFxParamHdl)
/* 723B0 800717B0 AEAE0004 */  sw         $t6, 0x4($s5)
/* 723B4 800717B4 AEAF0028 */  sw         $t7, 0x28($s5)
/* 723B8 800717B8 9058001C */  lbu        $t8, 0x1C($v0)
/* 723BC 800717BC 3C138009 */  lui        $s3, %hi(D_80094A18)
/* 723C0 800717C0 26734A18 */  addiu      $s3, $s3, %lo(D_80094A18)
/* 723C4 800717C4 2719FFFF */  addiu      $t9, $t8, -0x1
/* 723C8 800717C8 2F210006 */  sltiu      $at, $t9, 0x6
/* 723CC 800717CC 10200017 */  beqz       $at, .L8007182C
/* 723D0 800717D0 0019C880 */   sll       $t9, $t9, 2
/* 723D4 800717D4 3C01800A */  lui        $at, %hi(jtbl_80098DA0_main)
/* 723D8 800717D8 00390821 */  addu       $at, $at, $t9
/* 723DC 800717DC 8C398DA0 */  lw         $t9, %lo(jtbl_80098DA0_main)($at)
/* 723E0 800717E0 03200008 */  jr         $t9
/* 723E4 800717E4 00000000 */   nop
glabel L800717E8
/* 723E8 800717E8 3C138009 */  lui        $s3, %hi(D_800948B0)
/* 723EC 800717EC 1000000F */  b          .L8007182C
/* 723F0 800717F0 267348B0 */   addiu     $s3, $s3, %lo(D_800948B0)
glabel L800717F4
/* 723F4 800717F4 3C138009 */  lui        $s3, %hi(D_80094918)
/* 723F8 800717F8 1000000C */  b          .L8007182C
/* 723FC 800717FC 26734918 */   addiu     $s3, $s3, %lo(D_80094918)
glabel L80071800
/* 72400 80071800 3C138009 */  lui        $s3, %hi(D_800949A0)
/* 72404 80071804 10000009 */  b          .L8007182C
/* 72408 80071808 267349A0 */   addiu     $s3, $s3, %lo(D_800949A0)
glabel L8007180C
/* 7240C 8007180C 3C138009 */  lui        $s3, %hi(D_800949C8)
/* 72410 80071810 10000006 */  b          .L8007182C
/* 72414 80071814 267349C8 */   addiu     $s3, $s3, %lo(D_800949C8)
glabel L80071818
/* 72418 80071818 3C138009 */  lui        $s3, %hi(D_800949F0)
/* 7241C 8007181C 10000003 */  b          .L8007182C
/* 72420 80071820 267349F0 */   addiu     $s3, $s3, %lo(D_800949F0)
glabel L80071824
/* 72424 80071824 10000001 */  b          .L8007182C
/* 72428 80071828 8C530020 */   lw        $s3, 0x20($v0)
.L8007182C:
/* 7242C 8007182C 8E680000 */  lw         $t0, 0x0($s3)
/* 72430 80071830 240A0028 */  addiu      $t2, $zero, 0x28
/* 72434 80071834 24110002 */  addiu      $s1, $zero, 0x2
/* 72438 80071838 A2A80024 */  sb         $t0, 0x24($s5)
/* 7243C 8007183C 8E690004 */  lw         $t1, 0x4($s3)
/* 72440 80071840 00002025 */  or         $a0, $zero, $zero
/* 72444 80071844 00002825 */  or         $a1, $zero, $zero
/* 72448 80071848 AEA9001C */  sw         $t1, 0x1C($s5)
/* 7244C 8007184C AFAA0010 */  sw         $t2, 0x10($sp)
/* 72450 80071850 02C03025 */  or         $a2, $s6, $zero
/* 72454 80071854 0C0196D0 */  jal        alHeapDBAlloc
/* 72458 80071858 310700FF */   andi      $a3, $t0, 0xFF
/* 7245C 8007185C AEA20020 */  sw         $v0, 0x20($s5)
/* 72460 80071860 8EA7001C */  lw         $a3, 0x1C($s5)
/* 72464 80071864 240B0002 */  addiu      $t3, $zero, 0x2
/* 72468 80071868 AFAB0010 */  sw         $t3, 0x10($sp)
/* 7246C 8007186C 00002025 */  or         $a0, $zero, $zero
/* 72470 80071870 00002825 */  or         $a1, $zero, $zero
/* 72474 80071874 0C0196D0 */  jal        alHeapDBAlloc
/* 72478 80071878 02C03025 */   or        $a2, $s6, $zero
/* 7247C 8007187C 8EAC001C */  lw         $t4, 0x1C($s5)
/* 72480 80071880 AEA20014 */  sw         $v0, 0x14($s5)
/* 72484 80071884 AEA20018 */  sw         $v0, 0x18($s5)
/* 72488 80071888 1180000C */  beqz       $t4, .L800718BC
/* 7248C 8007188C 00001825 */   or        $v1, $zero, $zero
/* 72490 80071890 8EAD0014 */  lw         $t5, 0x14($s5)
.L80071894:
/* 72494 80071894 00037040 */  sll        $t6, $v1, 1
/* 72498 80071898 24630001 */  addiu      $v1, $v1, 0x1
/* 7249C 8007189C 01AE7821 */  addu       $t7, $t5, $t6
/* 724A0 800718A0 A5E00000 */  sh         $zero, 0x0($t7)
/* 724A4 800718A4 8EB9001C */  lw         $t9, 0x1C($s5)
/* 724A8 800718A8 3078FFFF */  andi       $t8, $v1, 0xFFFF
/* 724AC 800718AC 03001825 */  or         $v1, $t8, $zero
/* 724B0 800718B0 0319082B */  sltu       $at, $t8, $t9
/* 724B4 800718B4 5420FFF7 */  bnel       $at, $zero, .L80071894
/* 724B8 800718B8 8EAD0014 */   lw        $t5, 0x14($s5)
.L800718BC:
/* 724BC 800718BC 92A80024 */  lbu        $t0, 0x24($s5)
/* 724C0 800718C0 0000A025 */  or         $s4, $zero, $zero
/* 724C4 800718C4 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 724C8 800718C8 1900009C */  blez       $t0, .L80071B3C
/* 724CC 800718CC 241E0001 */   addiu     $fp, $zero, 0x1
/* 724D0 800718D0 4481C000 */  mtc1       $at, $f24
/* 724D4 800718D4 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 724D8 800718D8 4481B000 */  mtc1       $at, $f22
/* 724DC 800718DC 3C01800A */  lui        $at, %hi(D_80098DB8)
/* 724E0 800718E0 4480D000 */  mtc1       $zero, $f26
/* 724E4 800718E4 D4348DB8 */  ldc1       $f20, %lo(D_80098DB8)($at)
/* 724E8 800718E8 24170028 */  addiu      $s7, $zero, 0x28
.L800718EC:
/* 724EC 800718EC 02970019 */  multu      $s4, $s7
/* 724F0 800718F0 00115880 */  sll        $t3, $s1, 2
/* 724F4 800718F4 8EA90020 */  lw         $t1, 0x20($s5)
/* 724F8 800718F8 026B6021 */  addu       $t4, $s3, $t3
/* 724FC 800718FC 8D8D0000 */  lw         $t5, 0x0($t4)
/* 72500 80071900 26310001 */  addiu      $s1, $s1, 0x1
/* 72504 80071904 322EFFFF */  andi       $t6, $s1, 0xFFFF
/* 72508 80071908 000E7880 */  sll        $t7, $t6, 2
/* 7250C 8007190C 026FC021 */  addu       $t8, $s3, $t7
/* 72510 80071910 25D10001 */  addiu      $s1, $t6, 0x1
/* 72514 80071914 00005012 */  mflo       $t2
/* 72518 80071918 012A8021 */  addu       $s0, $t1, $t2
/* 7251C 8007191C AE0D0000 */  sw         $t5, 0x0($s0)
/* 72520 80071920 8F190000 */  lw         $t9, 0x0($t8)
/* 72524 80071924 3228FFFF */  andi       $t0, $s1, 0xFFFF
/* 72528 80071928 00084880 */  sll        $t1, $t0, 2
/* 7252C 8007192C 02695021 */  addu       $t2, $s3, $t1
/* 72530 80071930 AE190004 */  sw         $t9, 0x4($s0)
/* 72534 80071934 8D4B0000 */  lw         $t3, 0x0($t2)
/* 72538 80071938 25110001 */  addiu      $s1, $t0, 0x1
/* 7253C 8007193C 322CFFFF */  andi       $t4, $s1, 0xFFFF
/* 72540 80071940 000C6880 */  sll        $t5, $t4, 2
/* 72544 80071944 026D7021 */  addu       $t6, $s3, $t5
/* 72548 80071948 A60B000A */  sh         $t3, 0xA($s0)
/* 7254C 8007194C 8DCF0000 */  lw         $t7, 0x0($t6)
/* 72550 80071950 25910001 */  addiu      $s1, $t4, 0x1
/* 72554 80071954 3238FFFF */  andi       $t8, $s1, 0xFFFF
/* 72558 80071958 0018C880 */  sll        $t9, $t8, 2
/* 7255C 8007195C 02794021 */  addu       $t0, $s3, $t9
/* 72560 80071960 A60F0008 */  sh         $t7, 0x8($s0)
/* 72564 80071964 8D090000 */  lw         $t1, 0x0($t0)
/* 72568 80071968 27110001 */  addiu      $s1, $t8, 0x1
/* 7256C 8007196C 322AFFFF */  andi       $t2, $s1, 0xFFFF
/* 72570 80071970 000A5880 */  sll        $t3, $t2, 2
/* 72574 80071974 026B6021 */  addu       $t4, $s3, $t3
/* 72578 80071978 A609000C */  sh         $t1, 0xC($s0)
/* 7257C 8007197C 8D820000 */  lw         $v0, 0x0($t4)
/* 72580 80071980 01408825 */  or         $s1, $t2, $zero
/* 72584 80071984 02204025 */  or         $t0, $s1, $zero
/* 72588 80071988 10400040 */  beqz       $v0, .L80071A8C
/* 7258C 8007198C 25110002 */   addiu     $s1, $t0, 0x2
/* 72590 80071990 44822000 */  mtc1       $v0, $f4
/* 72594 80071994 8FAD006C */  lw         $t5, 0x6C($sp)
/* 72598 80071998 8E180004 */  lw         $t8, 0x4($s0)
/* 7259C 8007199C 468021A0 */  cvt.s.w    $f6, $f4
/* 725A0 800719A0 8DAE0018 */  lw         $t6, 0x18($t5)
/* 725A4 800719A4 8E190000 */  lw         $t9, 0x0($s0)
/* 725A8 800719A8 25510001 */  addiu      $s1, $t2, 0x1
/* 725AC 800719AC 448E8000 */  mtc1       $t6, $f16
/* 725B0 800719B0 322FFFFF */  andi       $t7, $s1, 0xFFFF
/* 725B4 800719B4 46163203 */  div.s      $f8, $f6, $f22
/* 725B8 800719B8 03194023 */  subu       $t0, $t8, $t9
/* 725BC 800719BC 01E08825 */  or         $s1, $t7, $zero
/* 725C0 800719C0 00114880 */  sll        $t1, $s1, 2
/* 725C4 800719C4 468084A1 */  cvt.d.w    $f18, $f16
/* 725C8 800719C8 02695021 */  addu       $t2, $s3, $t1
/* 725CC 800719CC 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 725D0 800719D0 46004021 */  cvt.d.s    $f0, $f8
/* 725D4 800719D4 44884000 */  mtc1       $t0, $f8
/* 725D8 800719D8 46200280 */  add.d      $f10, $f0, $f0
/* 725DC 800719DC 46804421 */  cvt.d.w    $f16, $f8
/* 725E0 800719E0 46325103 */  div.d      $f4, $f10, $f18
/* 725E4 800719E4 462021A0 */  cvt.s.d    $f6, $f4
/* 725E8 800719E8 05010005 */  bgez       $t0, .L80071A00
/* 725EC 800719EC E6060010 */   swc1      $f6, 0x10($s0)
/* 725F0 800719F0 44815800 */  mtc1       $at, $f11
/* 725F4 800719F4 44805000 */  mtc1       $zero, $f10
/* 725F8 800719F8 00000000 */  nop
/* 725FC 800719FC 462A8400 */  add.d      $f16, $f16, $f10
.L80071A00:
/* 72600 80071A00 8D4B0000 */  lw         $t3, 0x0($t2)
/* 72604 80071A04 26310001 */  addiu      $s1, $s1, 0x1
/* 72608 80071A08 322CFFFF */  andi       $t4, $s1, 0xFFFF
/* 7260C 80071A0C 448B9000 */  mtc1       $t3, $f18
/* 72610 80071A10 E6180014 */  swc1       $f24, 0x14($s0)
/* 72614 80071A14 AE000018 */  sw         $zero, 0x18($s0)
/* 72618 80071A18 46809120 */  cvt.s.w    $f4, $f18
/* 7261C 80071A1C 240D0034 */  addiu      $t5, $zero, 0x34
/* 72620 80071A20 01808825 */  or         $s1, $t4, $zero
/* 72624 80071A24 00002025 */  or         $a0, $zero, $zero
/* 72628 80071A28 00002825 */  or         $a1, $zero, $zero
/* 7262C 80071A2C 02C03025 */  or         $a2, $s6, $zero
/* 72630 80071A30 460021A1 */  cvt.d.s    $f6, $f4
/* 72634 80071A34 03C03825 */  or         $a3, $fp, $zero
/* 72638 80071A38 46343203 */  div.d      $f8, $f6, $f20
/* 7263C 80071A3C 46304282 */  mul.d      $f10, $f8, $f16
/* 72640 80071A40 462054A0 */  cvt.s.d    $f18, $f10
/* 72644 80071A44 E612001C */  swc1       $f18, 0x1C($s0)
/* 72648 80071A48 0C0196D0 */  jal        alHeapDBAlloc
/* 7264C 80071A4C AFAD0010 */   sw        $t5, 0x10($sp)
/* 72650 80071A50 AE020024 */  sw         $v0, 0x24($s0)
/* 72654 80071A54 240E0020 */  addiu      $t6, $zero, 0x20
/* 72658 80071A58 AFAE0010 */  sw         $t6, 0x10($sp)
/* 7265C 80071A5C 00002025 */  or         $a0, $zero, $zero
/* 72660 80071A60 00002825 */  or         $a1, $zero, $zero
/* 72664 80071A64 02C03025 */  or         $a2, $s6, $zero
/* 72668 80071A68 0C0196D0 */  jal        alHeapDBAlloc
/* 7266C 80071A6C 03C03825 */   or        $a3, $fp, $zero
/* 72670 80071A70 8E0F0024 */  lw         $t7, 0x24($s0)
/* 72674 80071A74 ADE20014 */  sw         $v0, 0x14($t7)
/* 72678 80071A78 8E180024 */  lw         $t8, 0x24($s0)
/* 7267C 80071A7C E71A0020 */  swc1       $f26, 0x20($t8)
/* 72680 80071A80 8E190024 */  lw         $t9, 0x24($s0)
/* 72684 80071A84 10000004 */  b          .L80071A98
/* 72688 80071A88 AF3E0024 */   sw        $fp, 0x24($t9)
.L80071A8C:
/* 7268C 80071A8C 3229FFFF */  andi       $t1, $s1, 0xFFFF
/* 72690 80071A90 AE000024 */  sw         $zero, 0x24($s0)
/* 72694 80071A94 01208825 */  or         $s1, $t1, $zero
.L80071A98:
/* 72698 80071A98 00115080 */  sll        $t2, $s1, 2
/* 7269C 80071A9C 026A9021 */  addu       $s2, $s3, $t2
/* 726A0 80071AA0 8E4B0000 */  lw         $t3, %lo(D_80090000)($s2)
/* 726A4 80071AA4 00002025 */  or         $a0, $zero, $zero
/* 726A8 80071AA8 00002825 */  or         $a1, $zero, $zero
/* 726AC 80071AAC 11600019 */  beqz       $t3, .L80071B14
/* 726B0 80071AB0 02C03025 */   or        $a2, $s6, $zero
/* 726B4 80071AB4 240C0030 */  addiu      $t4, $zero, 0x30
/* 726B8 80071AB8 AFAC0010 */  sw         $t4, 0x10($sp)
/* 726BC 80071ABC 0C0196D0 */  jal        alHeapDBAlloc
/* 726C0 80071AC0 03C03825 */   or        $a3, $fp, $zero
/* 726C4 80071AC4 AE020020 */  sw         $v0, 0x20($s0)
/* 726C8 80071AC8 240D0008 */  addiu      $t5, $zero, 0x8
/* 726CC 80071ACC AFAD0010 */  sw         $t5, 0x10($sp)
/* 726D0 80071AD0 00002025 */  or         $a0, $zero, $zero
/* 726D4 80071AD4 00002825 */  or         $a1, $zero, $zero
/* 726D8 80071AD8 02C03025 */  or         $a2, $s6, $zero
/* 726DC 80071ADC 0C0196D0 */  jal        alHeapDBAlloc
/* 726E0 80071AE0 03C03825 */   or        $a3, $fp, $zero
/* 726E4 80071AE4 8E0E0020 */  lw         $t6, 0x20($s0)
/* 726E8 80071AE8 26310001 */  addiu      $s1, $s1, 0x1
/* 726EC 80071AEC 3239FFFF */  andi       $t9, $s1, 0xFFFF
/* 726F0 80071AF0 ADC20028 */  sw         $v0, 0x28($t6)
/* 726F4 80071AF4 8E180020 */  lw         $t8, 0x20($s0)
/* 726F8 80071AF8 8E4F0000 */  lw         $t7, %lo(D_80090000)($s2)
/* 726FC 80071AFC 03208825 */  or         $s1, $t9, $zero
/* 72700 80071B00 A70F0000 */  sh         $t7, 0x0($t8)
/* 72704 80071B04 0C01C5A8 */  jal        func_800716A0
/* 72708 80071B08 8E040020 */   lw        $a0, 0x20($s0)
/* 7270C 80071B0C 10000006 */  b          .L80071B28
/* 72710 80071B10 92AA0024 */   lbu       $t2, 0x24($s5)
.L80071B14:
/* 72714 80071B14 26310001 */  addiu      $s1, $s1, 0x1
/* 72718 80071B18 3228FFFF */  andi       $t0, $s1, 0xFFFF
/* 7271C 80071B1C AE000020 */  sw         $zero, 0x20($s0)
/* 72720 80071B20 01008825 */  or         $s1, $t0, $zero
/* 72724 80071B24 92AA0024 */  lbu        $t2, 0x24($s5)
.L80071B28:
/* 72728 80071B28 26940001 */  addiu      $s4, $s4, 0x1
/* 7272C 80071B2C 3289FFFF */  andi       $t1, $s4, 0xFFFF
/* 72730 80071B30 012A082A */  slt        $at, $t1, $t2
/* 72734 80071B34 1420FF6D */  bnez       $at, .L800718EC
/* 72738 80071B38 0120A025 */   or        $s4, $t1, $zero
.L80071B3C:
/* 7273C 80071B3C 8FBF0064 */  lw         $ra, 0x64($sp)
/* 72740 80071B40 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 72744 80071B44 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 72748 80071B48 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 7274C 80071B4C D7BA0038 */  ldc1       $f26, 0x38($sp)
/* 72750 80071B50 8FB00040 */  lw         $s0, 0x40($sp)
/* 72754 80071B54 8FB10044 */  lw         $s1, 0x44($sp)
/* 72758 80071B58 8FB20048 */  lw         $s2, 0x48($sp)
/* 7275C 80071B5C 8FB3004C */  lw         $s3, 0x4C($sp)
/* 72760 80071B60 8FB40050 */  lw         $s4, 0x50($sp)
/* 72764 80071B64 8FB50054 */  lw         $s5, 0x54($sp)
/* 72768 80071B68 8FB60058 */  lw         $s6, 0x58($sp)
/* 7276C 80071B6C 8FB7005C */  lw         $s7, 0x5C($sp)
/* 72770 80071B70 8FBE0060 */  lw         $fp, 0x60($sp)
/* 72774 80071B74 03E00008 */  jr         $ra
/* 72778 80071B78 27BD0068 */   addiu     $sp, $sp, 0x68
/* 7277C 80071B7C 00000000 */  nop
