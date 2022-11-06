glabel func_800419D0
/* 425D0 800419D0 3C06801A */  lui        $a2, %hi(D_8019E6B0)
/* 425D4 800419D4 24C6E6B0 */  addiu      $a2, $a2, %lo(D_8019E6B0)
/* 425D8 800419D8 2402003A */  addiu      $v0, $zero, 0x3A
/* 425DC 800419DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 425E0 800419E0 240300C6 */  addiu      $v1, $zero, 0xC6
/* 425E4 800419E4 240700FA */  addiu      $a3, $zero, 0xFA
/* 425E8 800419E8 2408013F */  addiu      $t0, $zero, 0x13F
/* 425EC 800419EC 240900B6 */  addiu      $t1, $zero, 0xB6
/* 425F0 800419F0 240E0046 */  addiu      $t6, $zero, 0x46
/* 425F4 800419F4 240F001E */  addiu      $t7, $zero, 0x1E
/* 425F8 800419F8 24180021 */  addiu      $t8, $zero, 0x21
/* 425FC 800419FC 2419002E */  addiu      $t9, $zero, 0x2E
/* 42600 80041A00 240A00F0 */  addiu      $t2, $zero, 0xF0
/* 42604 80041A04 240B00C4 */  addiu      $t3, $zero, 0xC4
/* 42608 80041A08 AFBF0014 */  sw         $ra, 0x14($sp)
/* 4260C 80041A0C AFA40020 */  sw         $a0, 0x20($sp)
/* 42610 80041A10 A4CF0002 */  sh         $t7, 0x2($a2)
/* 42614 80041A14 A4CE0000 */  sh         $t6, 0x0($a2)
/* 42618 80041A18 A4C30004 */  sh         $v1, 0x4($a2)
/* 4261C 80041A1C A4C20006 */  sh         $v0, 0x6($a2)
/* 42620 80041A20 A4D8000A */  sh         $t8, 0xA($a2)
/* 42624 80041A24 A4C7000C */  sh         $a3, 0xC($a2)
/* 42628 80041A28 A4C30008 */  sh         $v1, 0x8($a2)
/* 4262C 80041A2C A4C2000E */  sh         $v0, 0xE($a2)
/* 42630 80041A30 A4D90012 */  sh         $t9, 0x12($a2)
/* 42634 80041A34 A4C80014 */  sh         $t0, 0x14($a2)
/* 42638 80041A38 A4C70010 */  sh         $a3, 0x10($a2)
/* 4263C 80041A3C A4C20016 */  sh         $v0, 0x16($a2)
/* 42640 80041A40 A4C9001E */  sh         $t1, 0x1E($a2)
/* 42644 80041A44 A4C8001C */  sh         $t0, 0x1C($a2)
/* 42648 80041A48 A4C2001A */  sh         $v0, 0x1A($a2)
/* 4264C 80041A4C A4C00018 */  sh         $zero, 0x18($a2)
/* 42650 80041A50 A4CB0026 */  sh         $t3, 0x26($a2)
/* 42654 80041A54 A4CA0024 */  sh         $t2, 0x24($a2)
/* 42658 80041A58 A4C90022 */  sh         $t1, 0x22($a2)
/* 4265C 80041A5C A4C00020 */  sh         $zero, 0x20($a2)
/* 42660 80041A60 8C8D0000 */  lw         $t5, 0x0($a0)
/* 42664 80041A64 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 42668 80041A68 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 4266C 80041A6C 27A4001C */  addiu      $a0, $sp, 0x1C
/* 42670 80041A70 0C015681 */  jal        func_80055A04
/* 42674 80041A74 AFAD001C */   sw        $t5, 0x1C($sp)
/* 42678 80041A78 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 4267C 80041A7C 3C06801A */  lui        $a2, %hi(D_8019E6B8)
/* 42680 80041A80 24C6E6B8 */  addiu      $a2, $a2, %lo(D_8019E6B8)
/* 42684 80041A84 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 42688 80041A88 0C015681 */  jal        func_80055A04
/* 4268C 80041A8C 27A4001C */   addiu     $a0, $sp, 0x1C
/* 42690 80041A90 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 42694 80041A94 3C06801A */  lui        $a2, %hi(D_8019E6C0)
/* 42698 80041A98 24C6E6C0 */  addiu      $a2, $a2, %lo(D_8019E6C0)
/* 4269C 80041A9C 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 426A0 80041AA0 0C015681 */  jal        func_80055A04
/* 426A4 80041AA4 27A4001C */   addiu     $a0, $sp, 0x1C
/* 426A8 80041AA8 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 426AC 80041AAC 3C06801A */  lui        $a2, %hi(D_8019E6C8)
/* 426B0 80041AB0 24C6E6C8 */  addiu      $a2, $a2, %lo(D_8019E6C8)
/* 426B4 80041AB4 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 426B8 80041AB8 0C015681 */  jal        func_80055A04
/* 426BC 80041ABC 27A4001C */   addiu     $a0, $sp, 0x1C
/* 426C0 80041AC0 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 426C4 80041AC4 3C06801A */  lui        $a2, %hi(D_8019E6D0)
/* 426C8 80041AC8 24C6E6D0 */  addiu      $a2, $a2, %lo(D_8019E6D0)
/* 426CC 80041ACC 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 426D0 80041AD0 0C015681 */  jal        func_80055A04
/* 426D4 80041AD4 27A4001C */   addiu     $a0, $sp, 0x1C
/* 426D8 80041AD8 8FAE001C */  lw         $t6, 0x1C($sp)
/* 426DC 80041ADC 8FAF0020 */  lw         $t7, 0x20($sp)
/* 426E0 80041AE0 ADEE0000 */  sw         $t6, 0x0($t7)
/* 426E4 80041AE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 426E8 80041AE8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 426EC 80041AEC 03E00008 */  jr         $ra
/* 426F0 80041AF0 00000000 */   nop
