glabel osCreateThread
/* 687B0 80067BB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 687B4 80067BB4 AFA40028 */  sw         $a0, 0x28($sp)
/* 687B8 80067BB8 AFA5002C */  sw         $a1, 0x2C($sp)
/* 687BC 80067BBC 8FAE002C */  lw         $t6, 0x2C($sp)
/* 687C0 80067BC0 8FAF0028 */  lw         $t7, 0x28($sp)
/* 687C4 80067BC4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 687C8 80067BC8 AFA60030 */  sw         $a2, 0x30($sp)
/* 687CC 80067BCC AFA70034 */  sw         $a3, 0x34($sp)
/* 687D0 80067BD0 AFB00018 */  sw         $s0, 0x18($sp)
/* 687D4 80067BD4 ADEE0014 */  sw         $t6, 0x14($t7)
/* 687D8 80067BD8 8FB90028 */  lw         $t9, 0x28($sp)
/* 687DC 80067BDC 8FB8003C */  lw         $t8, 0x3C($sp)
/* 687E0 80067BE0 AF380004 */  sw         $t8, 0x4($t9)
/* 687E4 80067BE4 8FA80028 */  lw         $t0, 0x28($sp)
/* 687E8 80067BE8 AD000000 */  sw         $zero, 0x0($t0)
/* 687EC 80067BEC 8FA90028 */  lw         $t1, 0x28($sp)
/* 687F0 80067BF0 AD200008 */  sw         $zero, 0x8($t1)
/* 687F4 80067BF4 8FAB0028 */  lw         $t3, 0x28($sp)
/* 687F8 80067BF8 8FAA0030 */  lw         $t2, 0x30($sp)
/* 687FC 80067BFC AD6A011C */  sw         $t2, 0x11C($t3)
/* 68800 80067C00 8FAC0034 */  lw         $t4, 0x34($sp)
/* 68804 80067C04 8FAD0028 */  lw         $t5, 0x28($sp)
/* 68808 80067C08 01807825 */  or         $t7, $t4, $zero
/* 6880C 80067C0C 000C77C3 */  sra        $t6, $t4, 31
/* 68810 80067C10 ADAE0038 */  sw         $t6, 0x38($t5)
/* 68814 80067C14 ADAF003C */  sw         $t7, 0x3C($t5)
/* 68818 80067C18 8FB80038 */  lw         $t8, 0x38($sp)
/* 6881C 80067C1C 8FB90028 */  lw         $t9, 0x28($sp)
/* 68820 80067C20 3C0C8007 */  lui        $t4, %hi(__osCleanupThread)
/* 68824 80067C24 03004825 */  or         $t1, $t8, $zero
/* 68828 80067C28 2D210010 */  sltiu      $at, $t1, 0x10
/* 6882C 80067C2C 001847C3 */  sra        $t0, $t8, 31
/* 68830 80067C30 01015023 */  subu       $t2, $t0, $at
/* 68834 80067C34 252BFFF0 */  addiu      $t3, $t1, -0x10
/* 68838 80067C38 AF2B00F4 */  sw         $t3, 0xF4($t9)
/* 6883C 80067C3C AF2A00F0 */  sw         $t2, 0xF0($t9)
/* 68840 80067C40 8FAD0028 */  lw         $t5, 0x28($sp)
/* 68844 80067C44 258C11A0 */  addiu      $t4, $t4, %lo(__osCleanupThread)
/* 68848 80067C48 01807825 */  or         $t7, $t4, $zero
/* 6884C 80067C4C 000C77C3 */  sra        $t6, $t4, 31
/* 68850 80067C50 ADAE0100 */  sw         $t6, 0x100($t5)
/* 68854 80067C54 ADAF0104 */  sw         $t7, 0x104($t5)
/* 68858 80067C58 8FA90028 */  lw         $t1, 0x28($sp)
/* 6885C 80067C5C 3C18003F */  lui        $t8, (0x3FFF01 >> 16)
/* 68860 80067C60 3718FF01 */  ori        $t8, $t8, (0x3FFF01 & 0xFFFF)
/* 68864 80067C64 AFB80020 */  sw         $t8, 0x20($sp)
/* 68868 80067C68 3408FF03 */  ori        $t0, $zero, 0xFF03
/* 6886C 80067C6C AD280118 */  sw         $t0, 0x118($t1)
/* 68870 80067C70 8FAA0020 */  lw         $t2, 0x20($sp)
/* 68874 80067C74 8FAC0028 */  lw         $t4, 0x28($sp)
/* 68878 80067C78 3C01003F */  lui        $at, (0x3F0000 >> 16)
/* 6887C 80067C7C 01415824 */  and        $t3, $t2, $at
/* 68880 80067C80 000BCC02 */  srl        $t9, $t3, 16
/* 68884 80067C84 AD990128 */  sw         $t9, 0x128($t4)
/* 68888 80067C88 8FAF0028 */  lw         $t7, 0x28($sp)
/* 6888C 80067C8C 3C0E0100 */  lui        $t6, (0x1000800 >> 16)
/* 68890 80067C90 35CE0800 */  ori        $t6, $t6, (0x1000800 & 0xFFFF)
/* 68894 80067C94 ADEE012C */  sw         $t6, 0x12C($t7)
/* 68898 80067C98 8FAD0028 */  lw         $t5, 0x28($sp)
/* 6889C 80067C9C 24180001 */  addiu      $t8, $zero, 0x1
/* 688A0 80067CA0 ADA00018 */  sw         $zero, 0x18($t5)
/* 688A4 80067CA4 8FA80028 */  lw         $t0, 0x28($sp)
/* 688A8 80067CA8 A5180010 */  sh         $t8, 0x10($t0)
/* 688AC 80067CAC 8FA90028 */  lw         $t1, 0x28($sp)
/* 688B0 80067CB0 0C01C218 */  jal        __osDisableInt
/* 688B4 80067CB4 A5200012 */   sh        $zero, 0x12($t1)
/* 688B8 80067CB8 3C0A8009 */  lui        $t2, %hi(__osActiveQueue)
/* 688BC 80067CBC 8D4A487C */  lw         $t2, %lo(__osActiveQueue)($t2)
/* 688C0 80067CC0 8FAB0028 */  lw         $t3, 0x28($sp)
/* 688C4 80067CC4 00408025 */  or         $s0, $v0, $zero
/* 688C8 80067CC8 3C018009 */  lui        $at, %hi(__osActiveQueue)
/* 688CC 80067CCC AD6A000C */  sw         $t2, 0xC($t3)
/* 688D0 80067CD0 8FB90028 */  lw         $t9, 0x28($sp)
/* 688D4 80067CD4 02002025 */  or         $a0, $s0, $zero
/* 688D8 80067CD8 0C01C220 */  jal        __osRestoreInt
/* 688DC 80067CDC AC39487C */   sw        $t9, %lo(__osActiveQueue)($at)
/* 688E0 80067CE0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 688E4 80067CE4 8FB00018 */  lw         $s0, 0x18($sp)
/* 688E8 80067CE8 27BD0028 */  addiu      $sp, $sp, 0x28
/* 688EC 80067CEC 03E00008 */  jr         $ra
/* 688F0 80067CF0 00000000 */   nop
/* 688F4 80067CF4 00000000 */  nop
/* 688F8 80067CF8 00000000 */  nop
/* 688FC 80067CFC 00000000 */  nop
