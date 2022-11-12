.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80024840
/* 25440 80024840 3C018009 */  lui        $at, %hi(D_8008CDD0)
/* 25444 80024844 C420CDD0 */  lwc1       $f0, %lo(D_8008CDD0)($at)
/* 25448 80024848 44876000 */  mtc1       $a3, $f12
/* 2544C 8002484C 44857000 */  mtc1       $a1, $f14
/* 25450 80024850 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 25454 80024854 46006302 */  mul.s      $f12, $f12, $f0
/* 25458 80024858 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2545C 8002485C 4486A000 */  mtc1       $a2, $f20
/* 25460 80024860 46007382 */  mul.s      $f14, $f14, $f0
/* 25464 80024864 AFBF0034 */  sw         $ra, 0x34($sp)
/* 25468 80024868 AFB00030 */  sw         $s0, 0x30($sp)
/* 2546C 8002486C 4600A502 */  mul.s      $f20, $f20, $f0
/* 25470 80024870 00808025 */  or         $s0, $a0, $zero
/* 25474 80024874 F7B80028 */  sdc1       $f24, 0x28($sp)
/* 25478 80024878 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 2547C 8002487C E7AE0054 */  swc1       $f14, 0x54($sp)
/* 25480 80024880 E7AC005C */  swc1       $f12, 0x5C($sp)
/* 25484 80024884 0C019B54 */  jal        __sinf
/* 25488 80024888 E7B40058 */   swc1      $f20, 0x58($sp)
/* 2548C 8002488C C7AC005C */  lwc1       $f12, 0x5C($sp)
/* 25490 80024890 0C01AB20 */  jal        __cosf
/* 25494 80024894 46000506 */   mov.s     $f20, $f0
/* 25498 80024898 46000586 */  mov.s      $f22, $f0
/* 2549C 8002489C 0C019B54 */  jal        __sinf
/* 254A0 800248A0 C7AC0054 */   lwc1      $f12, 0x54($sp)
/* 254A4 800248A4 46000606 */  mov.s      $f24, $f0
/* 254A8 800248A8 0C01AB20 */  jal        __cosf
/* 254AC 800248AC C7AC0054 */   lwc1      $f12, 0x54($sp)
/* 254B0 800248B0 C7AC0058 */  lwc1       $f12, 0x58($sp)
/* 254B4 800248B4 0C019B54 */  jal        __sinf
/* 254B8 800248B8 E7A0003C */   swc1      $f0, 0x3C($sp)
/* 254BC 800248BC C7AC0058 */  lwc1       $f12, 0x58($sp)
/* 254C0 800248C0 0C01AB20 */  jal        __cosf
/* 254C4 800248C4 E7A00044 */   swc1      $f0, 0x44($sp)
/* 254C8 800248C8 02002025 */  or         $a0, $s0, $zero
/* 254CC 800248CC 0C01B0CC */  jal        func_8006C330
/* 254D0 800248D0 E7A00038 */   swc1      $f0, 0x38($sp)
/* 254D4 800248D4 C7AC0038 */  lwc1       $f12, 0x38($sp)
/* 254D8 800248D8 C7AE0044 */  lwc1       $f14, 0x44($sp)
/* 254DC 800248DC C7A2003C */  lwc1       $f2, 0x3C($sp)
/* 254E0 800248E0 46166102 */  mul.s      $f4, $f12, $f22
/* 254E4 800248E4 46007207 */  neg.s      $f8, $f14
/* 254E8 800248E8 46146182 */  mul.s      $f6, $f12, $f20
/* 254EC 800248EC E6080008 */  swc1       $f8, 0x8($s0)
/* 254F0 800248F0 460EC002 */  mul.s      $f0, $f24, $f14
/* 254F4 800248F4 E6040000 */  swc1       $f4, 0x0($s0)
/* 254F8 800248F8 E6060004 */  swc1       $f6, 0x4($s0)
/* 254FC 800248FC 46160282 */  mul.s      $f10, $f0, $f22
/* 25500 80024900 00000000 */  nop
/* 25504 80024904 46141402 */  mul.s      $f16, $f2, $f20
/* 25508 80024908 00000000 */  nop
/* 2550C 8002490C 46140102 */  mul.s      $f4, $f0, $f20
/* 25510 80024910 00000000 */  nop
/* 25514 80024914 46161182 */  mul.s      $f6, $f2, $f22
/* 25518 80024918 46105481 */  sub.s      $f18, $f10, $f16
/* 2551C 8002491C 460CC282 */  mul.s      $f10, $f24, $f12
/* 25520 80024920 00000000 */  nop
/* 25524 80024924 460E1002 */  mul.s      $f0, $f2, $f14
/* 25528 80024928 E6120010 */  swc1       $f18, 0x10($s0)
/* 2552C 8002492C 46062200 */  add.s      $f8, $f4, $f6
/* 25530 80024930 E60A0018 */  swc1       $f10, 0x18($s0)
/* 25534 80024934 E6080014 */  swc1       $f8, 0x14($s0)
/* 25538 80024938 46160402 */  mul.s      $f16, $f0, $f22
/* 2553C 8002493C 00000000 */  nop
/* 25540 80024940 4614C482 */  mul.s      $f18, $f24, $f20
/* 25544 80024944 00000000 */  nop
/* 25548 80024948 46140182 */  mul.s      $f6, $f0, $f20
/* 2554C 8002494C 00000000 */  nop
/* 25550 80024950 4616C202 */  mul.s      $f8, $f24, $f22
/* 25554 80024954 46128100 */  add.s      $f4, $f16, $f18
/* 25558 80024958 460C1402 */  mul.s      $f16, $f2, $f12
/* 2555C 8002495C E6040020 */  swc1       $f4, 0x20($s0)
/* 25560 80024960 46083281 */  sub.s      $f10, $f6, $f8
/* 25564 80024964 E6100028 */  swc1       $f16, 0x28($s0)
/* 25568 80024968 E60A0024 */  swc1       $f10, 0x24($s0)
/* 2556C 8002496C 8FBF0034 */  lw         $ra, 0x34($sp)
/* 25570 80024970 8FB00030 */  lw         $s0, 0x30($sp)
/* 25574 80024974 D7B80028 */  ldc1       $f24, 0x28($sp)
/* 25578 80024978 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 2557C 8002497C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 25580 80024980 03E00008 */  jr         $ra
/* 25584 80024984 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80024988
/* 25588 80024988 44856000 */  mtc1       $a1, $f12
/* 2558C 8002498C 44867000 */  mtc1       $a2, $f14
/* 25590 80024990 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 25594 80024994 AFBF0014 */  sw         $ra, 0x14($sp)
/* 25598 80024998 AFA40058 */  sw         $a0, 0x58($sp)
/* 2559C 8002499C 44056000 */  mfc1       $a1, $f12
/* 255A0 800249A0 44067000 */  mfc1       $a2, $f14
/* 255A4 800249A4 AFA70064 */  sw         $a3, 0x64($sp)
/* 255A8 800249A8 0C009210 */  jal        func_80024840
/* 255AC 800249AC 27A40018 */   addiu     $a0, $sp, 0x18
/* 255B0 800249B0 27A40018 */  addiu      $a0, $sp, 0x18
/* 255B4 800249B4 0C01B08C */  jal        func_8006C230
/* 255B8 800249B8 8FA50058 */   lw        $a1, 0x58($sp)
/* 255BC 800249BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 255C0 800249C0 27BD0058 */  addiu      $sp, $sp, 0x58
/* 255C4 800249C4 03E00008 */  jr         $ra
/* 255C8 800249C8 00000000 */   nop
/* 255CC 800249CC 00000000 */  nop
