.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8006BA60
/* 6C660 8006BA60 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6C664 8006BA64 44867000 */  mtc1       $a2, $f14
/* 6C668 8006BA68 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6C66C 8006BA6C AFA7003C */  sw         $a3, 0x3C($sp)
/* 6C670 8006BA70 AFA40030 */  sw         $a0, 0x30($sp)
/* 6C674 8006BA74 AFA50034 */  sw         $a1, 0x34($sp)
/* 6C678 8006BA78 0C01B0CC */  jal        func_8006C330
/* 6C67C 8006BA7C E7AE0038 */   swc1      $f14, 0x38($sp)
/* 6C680 8006BA80 C7AE0038 */  lwc1       $f14, 0x38($sp)
/* 6C684 8006BA84 3C01800A */  lui        $at, %hi(D_80098D20)
/* 6C688 8006BA88 D4268D20 */  ldc1       $f6, %lo(D_80098D20)($at)
/* 6C68C 8006BA8C 46007121 */  cvt.d.s    $f4, $f14
/* 6C690 8006BA90 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 6C694 8006BA94 46262202 */  mul.d      $f8, $f4, $f6
/* 6C698 8006BA98 44815000 */  mtc1       $at, $f10
/* 6C69C 8006BA9C 462043A0 */  cvt.s.d    $f14, $f8
/* 6C6A0 8006BAA0 460A7303 */  div.s      $f12, $f14, $f10
/* 6C6A4 8006BAA4 0C01AB20 */  jal        __cosf
/* 6C6A8 8006BAA8 E7AC001C */   swc1      $f12, 0x1C($sp)
/* 6C6AC 8006BAAC C7AC001C */  lwc1       $f12, 0x1C($sp)
/* 6C6B0 8006BAB0 0C019B54 */  jal        __sinf
/* 6C6B4 8006BAB4 E7A00020 */   swc1      $f0, 0x20($sp)
/* 6C6B8 8006BAB8 C7A40020 */  lwc1       $f4, 0x20($sp)
/* 6C6BC 8006BABC C7A6003C */  lwc1       $f6, 0x3C($sp)
/* 6C6C0 8006BAC0 C7AE0040 */  lwc1       $f14, 0x40($sp)
/* 6C6C4 8006BAC4 46002083 */  div.s      $f2, $f4, $f0
/* 6C6C8 8006BAC8 C7B00044 */  lwc1       $f16, 0x44($sp)
/* 6C6CC 8006BACC 3C01BF80 */  lui        $at, (0xBF800000 >> 16)
/* 6C6D0 8006BAD0 44812000 */  mtc1       $at, $f4
/* 6C6D4 8006BAD4 46107480 */  add.s      $f18, $f14, $f16
/* 6C6D8 8006BAD8 8FA20030 */  lw         $v0, 0x30($sp)
/* 6C6DC 8006BADC 3C014000 */  lui        $at, (0x40000000 >> 16)
/* 6C6E0 8006BAE0 46107301 */  sub.s      $f12, $f14, $f16
/* 6C6E4 8006BAE4 8FA50034 */  lw         $a1, 0x34($sp)
/* 6C6E8 8006BAE8 E444002C */  swc1       $f4, 0x2C($v0)
/* 6C6EC 8006BAEC 00001825 */  or         $v1, $zero, $zero
/* 6C6F0 8006BAF0 24040004 */  addiu      $a0, $zero, 0x4
/* 6C6F4 8006BAF4 460C9283 */  div.s      $f10, $f18, $f12
/* 6C6F8 8006BAF8 E4420014 */  swc1       $f2, 0x14($v0)
/* 6C6FC 8006BAFC 46061203 */  div.s      $f8, $f2, $f6
/* 6C700 8006BB00 44813000 */  mtc1       $at, $f6
/* 6C704 8006BB04 E44A0028 */  swc1       $f10, 0x28($v0)
/* 6C708 8006BB08 E4480000 */  swc1       $f8, 0x0($v0)
/* 6C70C 8006BB0C 460E3202 */  mul.s      $f8, $f6, $f14
/* 6C710 8006BB10 44803000 */  mtc1       $zero, $f6
/* 6C714 8006BB14 00000000 */  nop
/* 6C718 8006BB18 E446003C */  swc1       $f6, 0x3C($v0)
/* 6C71C 8006BB1C 46104282 */  mul.s      $f10, $f8, $f16
/* 6C720 8006BB20 460C5103 */  div.s      $f4, $f10, $f12
/* 6C724 8006BB24 E4440038 */  swc1       $f4, 0x38($v0)
/* 6C728 8006BB28 C7A00048 */  lwc1       $f0, 0x48($sp)
/* 6C72C 8006BB2C C4460000 */  lwc1       $f6, 0x0($v0)
/* 6C730 8006BB30 24630001 */  addiu      $v1, $v1, 0x1
/* 6C734 8006BB34 C4500004 */  lwc1       $f16, 0x4($v0)
/* 6C738 8006BB38 46003282 */  mul.s      $f10, $f6, $f0
/* 6C73C 8006BB3C C44C0008 */  lwc1       $f12, 0x8($v0)
/* 6C740 8006BB40 10640010 */  beq        $v1, $a0, .L8006BB84
/* 6C744 8006BB44 C44E000C */   lwc1      $f14, 0xC($v0)
.L8006BB48:
/* 6C748 8006BB48 46008202 */  mul.s      $f8, $f16, $f0
/* 6C74C 8006BB4C C4460010 */  lwc1       $f6, 0x10($v0)
/* 6C750 8006BB50 C4500014 */  lwc1       $f16, 0x14($v0)
/* 6C754 8006BB54 46006102 */  mul.s      $f4, $f12, $f0
/* 6C758 8006BB58 C44C0018 */  lwc1       $f12, 0x18($v0)
/* 6C75C 8006BB5C 24630001 */  addiu      $v1, $v1, 0x1
/* 6C760 8006BB60 46007082 */  mul.s      $f2, $f14, $f0
/* 6C764 8006BB64 C44E001C */  lwc1       $f14, 0x1C($v0)
/* 6C768 8006BB68 E44A0000 */  swc1       $f10, 0x0($v0)
/* 6C76C 8006BB6C 46003282 */  mul.s      $f10, $f6, $f0
/* 6C770 8006BB70 E4480004 */  swc1       $f8, 0x4($v0)
/* 6C774 8006BB74 E4440008 */  swc1       $f4, 0x8($v0)
/* 6C778 8006BB78 24420010 */  addiu      $v0, $v0, 0x10
/* 6C77C 8006BB7C 1464FFF2 */  bne        $v1, $a0, .L8006BB48
/* 6C780 8006BB80 E442FFFC */   swc1      $f2, -0x4($v0)
.L8006BB84:
/* 6C784 8006BB84 46008202 */  mul.s      $f8, $f16, $f0
/* 6C788 8006BB88 24420010 */  addiu      $v0, $v0, 0x10
/* 6C78C 8006BB8C E44AFFF0 */  swc1       $f10, -0x10($v0)
/* 6C790 8006BB90 46006102 */  mul.s      $f4, $f12, $f0
/* 6C794 8006BB94 00000000 */  nop
/* 6C798 8006BB98 46007082 */  mul.s      $f2, $f14, $f0
/* 6C79C 8006BB9C E448FFF4 */  swc1       $f8, -0xC($v0)
/* 6C7A0 8006BBA0 E444FFF8 */  swc1       $f4, -0x8($v0)
/* 6C7A4 8006BBA4 E442FFFC */  swc1       $f2, -0x4($v0)
/* 6C7A8 8006BBA8 10A00035 */  beqz       $a1, .L8006BC80
/* 6C7AC 8006BBAC 3C014000 */   lui       $at, (0x40000000 >> 16)
/* 6C7B0 8006BBB0 44814800 */  mtc1       $at, $f9
/* 6C7B4 8006BBB4 44804000 */  mtc1       $zero, $f8
/* 6C7B8 8006BBB8 46009021 */  cvt.d.s    $f0, $f18
/* 6C7BC 8006BBBC 340EFFFF */  ori        $t6, $zero, 0xFFFF
/* 6C7C0 8006BBC0 4628003E */  c.le.d     $f0, $f8
/* 6C7C4 8006BBC4 3C014100 */  lui        $at, (0x41000000 >> 16)
/* 6C7C8 8006BBC8 45020004 */  bc1fl      .L8006BBDC
/* 6C7CC 8006BBCC 44815800 */   mtc1      $at, $f11
/* 6C7D0 8006BBD0 1000002B */  b          .L8006BC80
/* 6C7D4 8006BBD4 A4AE0000 */   sh        $t6, 0x0($a1)
/* 6C7D8 8006BBD8 44815800 */  mtc1       $at, $f11
.L8006BBDC:
/* 6C7DC 8006BBDC 44805000 */  mtc1       $zero, $f10
/* 6C7E0 8006BBE0 24180001 */  addiu      $t8, $zero, 0x1
/* 6C7E4 8006BBE4 3C0141E0 */  lui        $at, (0x41E00000 >> 16)
/* 6C7E8 8006BBE8 46205103 */  div.d      $f4, $f10, $f0
/* 6C7EC 8006BBEC 24080001 */  addiu      $t0, $zero, 0x1
/* 6C7F0 8006BBF0 444FF800 */  cfc1       $t7, $31
/* 6C7F4 8006BBF4 44D8F800 */  ctc1       $t8, $31
/* 6C7F8 8006BBF8 00000000 */  nop
/* 6C7FC 8006BBFC 462021A4 */  cvt.w.d    $f6, $f4
/* 6C800 8006BC00 4458F800 */  cfc1       $t8, $31
/* 6C804 8006BC04 00000000 */  nop
/* 6C808 8006BC08 33180078 */  andi       $t8, $t8, 0x78
/* 6C80C 8006BC0C 53000014 */  beql       $t8, $zero, .L8006BC60
/* 6C810 8006BC10 44183000 */   mfc1      $t8, $f6
/* 6C814 8006BC14 44813800 */  mtc1       $at, $f7
/* 6C818 8006BC18 44803000 */  mtc1       $zero, $f6
/* 6C81C 8006BC1C 24180001 */  addiu      $t8, $zero, 0x1
/* 6C820 8006BC20 46262181 */  sub.d      $f6, $f4, $f6
/* 6C824 8006BC24 44D8F800 */  ctc1       $t8, $31
/* 6C828 8006BC28 00000000 */  nop
/* 6C82C 8006BC2C 462031A4 */  cvt.w.d    $f6, $f6
/* 6C830 8006BC30 4458F800 */  cfc1       $t8, $31
/* 6C834 8006BC34 00000000 */  nop
/* 6C838 8006BC38 33180078 */  andi       $t8, $t8, 0x78
/* 6C83C 8006BC3C 17000005 */  bnez       $t8, .L8006BC54
/* 6C840 8006BC40 00000000 */   nop
/* 6C844 8006BC44 44183000 */  mfc1       $t8, $f6
/* 6C848 8006BC48 3C018000 */  lui        $at, (0x80000000 >> 16)
/* 6C84C 8006BC4C 10000007 */  b          .L8006BC6C
/* 6C850 8006BC50 0301C025 */   or        $t8, $t8, $at
.L8006BC54:
/* 6C854 8006BC54 10000005 */  b          .L8006BC6C
/* 6C858 8006BC58 2418FFFF */   addiu     $t8, $zero, -0x1
/* 6C85C 8006BC5C 44183000 */  mfc1       $t8, $f6
.L8006BC60:
/* 6C860 8006BC60 00000000 */  nop
/* 6C864 8006BC64 0700FFFB */  bltz       $t8, .L8006BC54
/* 6C868 8006BC68 00000000 */   nop
.L8006BC6C:
/* 6C86C 8006BC6C 44CFF800 */  ctc1       $t7, $31
/* 6C870 8006BC70 3319FFFF */  andi       $t9, $t8, 0xFFFF
/* 6C874 8006BC74 1F200002 */  bgtz       $t9, .L8006BC80
/* 6C878 8006BC78 A4B80000 */   sh        $t8, 0x0($a1)
/* 6C87C 8006BC7C A4A80000 */  sh         $t0, 0x0($a1)
.L8006BC80:
/* 6C880 8006BC80 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6C884 8006BC84 27BD0030 */  addiu      $sp, $sp, 0x30
/* 6C888 8006BC88 03E00008 */  jr         $ra
/* 6C88C 8006BC8C 00000000 */   nop

glabel func_8006BC90
/* 6C890 8006BC90 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 6C894 8006BC94 44866000 */  mtc1       $a2, $f12
/* 6C898 8006BC98 44877000 */  mtc1       $a3, $f14
/* 6C89C 8006BC9C C7A40078 */  lwc1       $f4, 0x78($sp)
/* 6C8A0 8006BCA0 C7A6007C */  lwc1       $f6, 0x7C($sp)
/* 6C8A4 8006BCA4 C7A80080 */  lwc1       $f8, 0x80($sp)
/* 6C8A8 8006BCA8 AFBF0024 */  sw         $ra, 0x24($sp)
/* 6C8AC 8006BCAC AFA40068 */  sw         $a0, 0x68($sp)
/* 6C8B0 8006BCB0 44066000 */  mfc1       $a2, $f12
/* 6C8B4 8006BCB4 44077000 */  mfc1       $a3, $f14
/* 6C8B8 8006BCB8 27A40028 */  addiu      $a0, $sp, 0x28
/* 6C8BC 8006BCBC E7A40010 */  swc1       $f4, 0x10($sp)
/* 6C8C0 8006BCC0 E7A60014 */  swc1       $f6, 0x14($sp)
/* 6C8C4 8006BCC4 0C01AE98 */  jal        func_8006BA60
/* 6C8C8 8006BCC8 E7A80018 */   swc1      $f8, 0x18($sp)
/* 6C8CC 8006BCCC 27A40028 */  addiu      $a0, $sp, 0x28
/* 6C8D0 8006BCD0 0C01B08C */  jal        func_8006C230
/* 6C8D4 8006BCD4 8FA50068 */   lw        $a1, 0x68($sp)
/* 6C8D8 8006BCD8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 6C8DC 8006BCDC 27BD0068 */  addiu      $sp, $sp, 0x68
/* 6C8E0 8006BCE0 03E00008 */  jr         $ra
/* 6C8E4 8006BCE4 00000000 */   nop
/* 6C8E8 8006BCE8 00000000 */  nop
/* 6C8EC 8006BCEC 00000000 */  nop
