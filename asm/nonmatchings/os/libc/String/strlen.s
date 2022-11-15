glabel strlen
/* 6D96C 8006CD6C 908E0000 */  lbu        $t6, 0x0($a0)
/* 6D970 8006CD70 00801825 */  or         $v1, $a0, $zero
/* 6D974 8006CD74 11C00005 */  beqz       $t6, .L8006CD8C
/* 6D978 8006CD78 00000000 */   nop
/* 6D97C 8006CD7C 906F0001 */  lbu        $t7, 0x1($v1)
.L8006CD80:
/* 6D980 8006CD80 24630001 */  addiu      $v1, $v1, 0x1
/* 6D984 8006CD84 55E0FFFE */  bnel       $t7, $zero, .L8006CD80
/* 6D988 8006CD88 906F0001 */   lbu       $t7, 0x1($v1)
.L8006CD8C:
/* 6D98C 8006CD8C 03E00008 */  jr         $ra
/* 6D990 8006CD90 00641023 */   subu      $v0, $v1, $a0
