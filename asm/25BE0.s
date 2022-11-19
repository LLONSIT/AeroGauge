.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_80024FE0
/* 25BE0 80024FE0 3C018009 */  lui        $at, %hi(D_8008CE20)
/* 25BE4 80024FE4 C420CE20 */  lwc1       $f0, %lo(D_8008CE20)($at)
/* 25BE8 80024FE8 44877000 */  mtc1       $a3, $f14
/* 25BEC 80024FEC 44856000 */  mtc1       $a1, $f12
/* 25BF0 80024FF0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 25BF4 80024FF4 46007382 */  mul.s      $f14, $f14, $f0
/* 25BF8 80024FF8 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 25BFC 80024FFC 4486A000 */  mtc1       $a2, $f20
/* 25C00 80025000 46006302 */  mul.s      $f12, $f12, $f0
/* 25C04 80025004 AFBF002C */  sw         $ra, 0x2C($sp)
/* 25C08 80025008 AFB00028 */  sw         $s0, 0x28($sp)
/* 25C0C 8002500C 4600A502 */  mul.s      $f20, $f20, $f0
/* 25C10 80025010 00808025 */  or         $s0, $a0, $zero
/* 25C14 80025014 F7B60020 */  sdc1       $f22, 0x20($sp)
/* 25C18 80025018 E7AE0054 */  swc1       $f14, 0x54($sp)
/* 25C1C 8002501C E7AC004C */  swc1       $f12, 0x4C($sp)
/* 25C20 80025020 0C019B54 */  jal        sinf
/* 25C24 80025024 E7B40050 */   swc1      $f20, 0x50($sp)
/* 25C28 80025028 C7AC004C */  lwc1       $f12, 0x4C($sp)
/* 25C2C 8002502C 0C01AB20 */  jal        cosf
/* 25C30 80025030 46000506 */   mov.s     $f20, $f0
/* 25C34 80025034 46000586 */  mov.s      $f22, $f0
/* 25C38 80025038 0C019B54 */  jal        sinf
/* 25C3C 8002503C C7AC0050 */   lwc1      $f12, 0x50($sp)
/* 25C40 80025040 E7A0003C */  swc1       $f0, 0x3C($sp)
/* 25C44 80025044 0C01AB20 */  jal        cosf
/* 25C48 80025048 C7AC0050 */   lwc1      $f12, 0x50($sp)
/* 25C4C 8002504C C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 25C50 80025050 0C019B54 */  jal        sinf
/* 25C54 80025054 E7A00030 */   swc1      $f0, 0x30($sp)
/* 25C58 80025058 C7AC0054 */  lwc1       $f12, 0x54($sp)
/* 25C5C 8002505C 0C01AB20 */  jal        cosf
/* 25C60 80025060 E7A00044 */   swc1      $f0, 0x44($sp)
/* 25C64 80025064 02002025 */  or         $a0, $s0, $zero
/* 25C68 80025068 0C01B0CC */  jal        guMtxIdentF
/* 25C6C 8002506C E7A00038 */   swc1      $f0, 0x38($sp)
/* 25C70 80025070 C7AC0038 */  lwc1       $f12, 0x38($sp)
/* 25C74 80025074 C7AE0030 */  lwc1       $f14, 0x30($sp)
/* 25C78 80025078 C7B2003C */  lwc1       $f18, 0x3C($sp)
/* 25C7C 8002507C C7A20044 */  lwc1       $f2, 0x44($sp)
/* 25C80 80025080 460C7102 */  mul.s      $f4, $f14, $f12
/* 25C84 80025084 E6120020 */  swc1       $f18, 0x20($s0)
/* 25C88 80025088 4612A002 */  mul.s      $f0, $f20, $f18
/* 25C8C 8002508C 00000000 */  nop
/* 25C90 80025090 4602B182 */  mul.s      $f6, $f22, $f2
/* 25C94 80025094 E6040000 */  swc1       $f4, 0x0($s0)
/* 25C98 80025098 460C0202 */  mul.s      $f8, $f0, $f12
/* 25C9C 8002509C 00000000 */  nop
/* 25CA0 800250A0 4612B402 */  mul.s      $f16, $f22, $f18
/* 25CA4 800250A4 00000000 */  nop
/* 25CA8 800250A8 4602A102 */  mul.s      $f4, $f20, $f2
/* 25CAC 800250AC 46083280 */  add.s      $f10, $f6, $f8
/* 25CB0 800250B0 460C8182 */  mul.s      $f6, $f16, $f12
/* 25CB4 800250B4 E60A0004 */  swc1       $f10, 0x4($s0)
/* 25CB8 800250B8 46007287 */  neg.s      $f10, $f14
/* 25CBC 800250BC 46062201 */  sub.s      $f8, $f4, $f6
/* 25CC0 800250C0 46025102 */  mul.s      $f4, $f10, $f2
/* 25CC4 800250C4 00000000 */  nop
/* 25CC8 800250C8 460CB182 */  mul.s      $f6, $f22, $f12
/* 25CCC 800250CC E6080008 */  swc1       $f8, 0x8($s0)
/* 25CD0 800250D0 46020202 */  mul.s      $f8, $f0, $f2
/* 25CD4 800250D4 E6040010 */  swc1       $f4, 0x10($s0)
/* 25CD8 800250D8 460CA102 */  mul.s      $f4, $f20, $f12
/* 25CDC 800250DC 46083281 */  sub.s      $f10, $f6, $f8
/* 25CE0 800250E0 46028182 */  mul.s      $f6, $f16, $f2
/* 25CE4 800250E4 E60A0014 */  swc1       $f10, 0x14($s0)
/* 25CE8 800250E8 4600A287 */  neg.s      $f10, $f20
/* 25CEC 800250EC 46062200 */  add.s      $f8, $f4, $f6
/* 25CF0 800250F0 460E5102 */  mul.s      $f4, $f10, $f14
/* 25CF4 800250F4 00000000 */  nop
/* 25CF8 800250F8 460EB182 */  mul.s      $f6, $f22, $f14
/* 25CFC 800250FC E6080018 */  swc1       $f8, 0x18($s0)
/* 25D00 80025100 E6040024 */  swc1       $f4, 0x24($s0)
/* 25D04 80025104 E6060028 */  swc1       $f6, 0x28($s0)
/* 25D08 80025108 8FBF002C */  lw         $ra, 0x2C($sp)
/* 25D0C 8002510C 8FB00028 */  lw         $s0, 0x28($sp)
/* 25D10 80025110 D7B60020 */  ldc1       $f22, 0x20($sp)
/* 25D14 80025114 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 25D18 80025118 03E00008 */  jr         $ra
/* 25D1C 8002511C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80025120
/* 25D20 80025120 44856000 */  mtc1       $a1, $f12
/* 25D24 80025124 44867000 */  mtc1       $a2, $f14
/* 25D28 80025128 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 25D2C 8002512C AFBF0014 */  sw         $ra, 0x14($sp)
/* 25D30 80025130 AFA40058 */  sw         $a0, 0x58($sp)
/* 25D34 80025134 44056000 */  mfc1       $a1, $f12
/* 25D38 80025138 44067000 */  mfc1       $a2, $f14
/* 25D3C 8002513C AFA70064 */  sw         $a3, 0x64($sp)
/* 25D40 80025140 0C0093F8 */  jal        func_80024FE0
/* 25D44 80025144 27A40018 */   addiu     $a0, $sp, 0x18
/* 25D48 80025148 27A40018 */  addiu      $a0, $sp, 0x18
/* 25D4C 8002514C 0C01B08C */  jal        guMtxF2L
/* 25D50 80025150 8FA50058 */   lw        $a1, 0x58($sp)
/* 25D54 80025154 8FBF0014 */  lw         $ra, 0x14($sp)
/* 25D58 80025158 27BD0058 */  addiu      $sp, $sp, 0x58
/* 25D5C 8002515C 03E00008 */  jr         $ra
/* 25D60 80025160 00000000 */   nop
/* 25D64 80025164 00000000 */  nop
/* 25D68 80025168 00000000 */  nop
/* 25D6C 8002516C 00000000 */  nop
