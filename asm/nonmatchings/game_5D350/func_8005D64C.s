glabel func_8005D64C
/* 5E24C 8005D64C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 5E250 8005D650 AFBF0014 */  sw         $ra, 0x14($sp)
/* 5E254 8005D654 94820042 */  lhu        $v0, 0x42($a0)
/* 5E258 8005D658 28410104 */  slti       $at, $v0, 0x104
/* 5E25C 8005D65C 14200008 */  bnez       $at, .L8005D680
/* 5E260 8005D660 28410107 */   slti      $at, $v0, 0x107
/* 5E264 8005D664 10200006 */  beqz       $at, .L8005D680
/* 5E268 8005D668 240500FF */   addiu     $a1, $zero, 0xFF
/* 5E26C 8005D66C 00003025 */  or         $a2, $zero, $zero
/* 5E270 8005D670 0C0175FD */  jal        func_8005D7F4
/* 5E274 8005D674 00003825 */   or        $a3, $zero, $zero
/* 5E278 8005D678 10000026 */  b          .L8005D714
/* 5E27C 8005D67C 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D680:
/* 5E280 8005D680 2841005F */  slti       $at, $v0, 0x5F
/* 5E284 8005D684 14200002 */  bnez       $at, .L8005D690
/* 5E288 8005D688 28410071 */   slti      $at, $v0, 0x71
/* 5E28C 8005D68C 14200011 */  bnez       $at, .L8005D6D4
.L8005D690:
/* 5E290 8005D690 28410097 */   slti      $at, $v0, 0x97
/* 5E294 8005D694 14200002 */  bnez       $at, .L8005D6A0
/* 5E298 8005D698 2841009A */   slti      $at, $v0, 0x9A
/* 5E29C 8005D69C 1420000D */  bnez       $at, .L8005D6D4
.L8005D6A0:
/* 5E2A0 8005D6A0 284100A1 */   slti      $at, $v0, 0xA1
/* 5E2A4 8005D6A4 14200002 */  bnez       $at, .L8005D6B0
/* 5E2A8 8005D6A8 284100AB */   slti      $at, $v0, 0xAB
/* 5E2AC 8005D6AC 14200009 */  bnez       $at, .L8005D6D4
.L8005D6B0:
/* 5E2B0 8005D6B0 24010107 */   addiu     $at, $zero, 0x107
/* 5E2B4 8005D6B4 10410007 */  beq        $v0, $at, .L8005D6D4
/* 5E2B8 8005D6B8 24010108 */   addiu     $at, $zero, 0x108
/* 5E2BC 8005D6BC 10410005 */  beq        $v0, $at, .L8005D6D4
/* 5E2C0 8005D6C0 24010102 */   addiu     $at, $zero, 0x102
/* 5E2C4 8005D6C4 10410003 */  beq        $v0, $at, .L8005D6D4
/* 5E2C8 8005D6C8 24010103 */   addiu     $at, $zero, 0x103
/* 5E2CC 8005D6CC 54410006 */  bnel       $v0, $at, .L8005D6E8
/* 5E2D0 8005D6D0 28410025 */   slti      $at, $v0, 0x25
.L8005D6D4:
/* 5E2D4 8005D6D4 0C017877 */  jal        func_8005E1DC
/* 5E2D8 8005D6D8 00000000 */   nop
/* 5E2DC 8005D6DC 1000000D */  b          .L8005D714
/* 5E2E0 8005D6E0 8FBF0014 */   lw        $ra, 0x14($sp)
/* 5E2E4 8005D6E4 28410025 */  slti       $at, $v0, 0x25
.L8005D6E8:
/* 5E2E8 8005D6E8 14200007 */  bnez       $at, .L8005D708
/* 5E2EC 8005D6EC 28410028 */   slti      $at, $v0, 0x28
/* 5E2F0 8005D6F0 10200005 */  beqz       $at, .L8005D708
/* 5E2F4 8005D6F4 00000000 */   nop
/* 5E2F8 8005D6F8 0C0178AA */  jal        func_8005E2A8
/* 5E2FC 8005D6FC 00000000 */   nop
/* 5E300 8005D700 10000004 */  b          .L8005D714
/* 5E304 8005D704 8FBF0014 */   lw        $ra, 0x14($sp)
.L8005D708:
/* 5E308 8005D708 0C017658 */  jal        func_8005D960
/* 5E30C 8005D70C 3C053F80 */   lui       $a1, (0x3F800000 >> 16)
/* 5E310 8005D710 8FBF0014 */  lw         $ra, 0x14($sp)
.L8005D714:
/* 5E314 8005D714 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5E318 8005D718 03E00008 */  jr         $ra
/* 5E31C 8005D71C 00000000 */   nop
