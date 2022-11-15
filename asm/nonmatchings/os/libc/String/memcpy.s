glabel memcpy
/* 6D940 8006CD40 00801025 */  or         $v0, $a0, $zero
/* 6D944 8006CD44 10C00007 */  beqz       $a2, .L8006CD64
/* 6D948 8006CD48 00A01825 */   or        $v1, $a1, $zero
.L8006CD4C:
/* 6D94C 8006CD4C 906E0000 */  lbu        $t6, 0x0($v1)
/* 6D950 8006CD50 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 6D954 8006CD54 24420001 */  addiu      $v0, $v0, 0x1
/* 6D958 8006CD58 24630001 */  addiu      $v1, $v1, 0x1
/* 6D95C 8006CD5C 14C0FFFB */  bnez       $a2, .L8006CD4C
/* 6D960 8006CD60 A04EFFFF */   sb        $t6, -0x1($v0)
.L8006CD64:
/* 6D964 8006CD64 03E00008 */  jr         $ra
/* 6D968 8006CD68 00801025 */   or        $v0, $a0, $zero
