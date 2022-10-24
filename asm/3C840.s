.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

glabel func_8003BC40
/* 3C840 8003BC40 240E0001 */  addiu      $t6, $zero, 0x1
/* 3C844 8003BC44 3C01801A */  lui        $at, %hi(D_8019E4B8)
/* 3C848 8003BC48 AC2EE4B8 */  sw         $t6, %lo(D_8019E4B8)($at)
/* 3C84C 8003BC4C 3C01801A */  lui        $at, %hi(D_8019E4BC)
/* 3C850 8003BC50 240F0001 */  addiu      $t7, $zero, 0x1
/* 3C854 8003BC54 AC2FE4BC */  sw         $t7, %lo(D_8019E4BC)($at)
/* 3C858 8003BC58 3C01801A */  lui        $at, %hi(D_8019E4B4)
/* 3C85C 8003BC5C AC20E4B4 */  sw         $zero, %lo(D_8019E4B4)($at)
/* 3C860 8003BC60 3C01801A */  lui        $at, %hi(D_8019E4C0)
/* 3C864 8003BC64 24180069 */  addiu      $t8, $zero, 0x69
/* 3C868 8003BC68 24190049 */  addiu      $t9, $zero, 0x49
/* 3C86C 8003BC6C A438E4C0 */  sh         $t8, %lo(D_8019E4C0)($at)
/* 3C870 8003BC70 A439E4C2 */  sh         $t9, %lo(D_8019E4C2)($at)
/* 3C874 8003BC74 3C01801A */  lui        $at, %hi(D_8019E5BC)
/* 3C878 8003BC78 A420E5BC */  sh         $zero, %lo(D_8019E5BC)($at)
/* 3C87C 8003BC7C 3C01801A */  lui        $at, %hi(D_8019E5BE)
/* 3C880 8003BC80 A420E5BE */  sh         $zero, %lo(D_8019E5BE)($at)
/* 3C884 8003BC84 3C02801A */  lui        $v0, %hi(D_8019E4C8)
/* 3C888 8003BC88 2442E4C8 */  addiu      $v0, $v0, %lo(D_8019E4C8)
/* 3C88C 8003BC8C 3C03801A */  lui        $v1, %hi(D_8019E580)
/* 3C890 8003BC90 3C0A801A */  lui        $t2, %hi(D_8019E57C)
/* 3C894 8003BC94 254AE57C */  addiu      $t2, $t2, %lo(D_8019E57C)
/* 3C898 8003BC98 2463E580 */  addiu      $v1, $v1, %lo(D_8019E580)
/* 3C89C 8003BC9C 3C09801A */  lui        $t1, %hi(D_8019EDE8)
/* 3C8A0 8003BCA0 241900A0 */  addiu      $t9, $zero, 0xA0
/* 3C8A4 8003BCA4 2529EDE8 */  addiu      $t1, $t1, %lo(D_8019EDE8)
/* 3C8A8 8003BCA8 241800EF */  addiu      $t8, $zero, 0xEF
/* 3C8AC 8003BCAC A1590003 */  sb         $t9, 0x3($t2)
/* 3C8B0 8003BCB0 A5380006 */  sh         $t8, 0x6($t1)
/* 3C8B4 8003BCB4 2419007E */  addiu      $t9, $zero, 0x7E
/* 3C8B8 8003BCB8 A479000E */  sh         $t9, 0xE($v1)
/* 3C8BC 8003BCBC 2418006E */  addiu      $t8, $zero, 0x6E
/* 3C8C0 8003BCC0 3C08801A */  lui        $t0, %hi(D_8019EDDC)
/* 3C8C4 8003BCC4 A478000A */  sh         $t8, 0xA($v1)
/* 3C8C8 8003BCC8 24190086 */  addiu      $t9, $zero, 0x86
/* 3C8CC 8003BCCC 2508EDDC */  addiu      $t0, $t0, %lo(D_8019EDDC)
/* 3C8D0 8003BCD0 240E00FF */  addiu      $t6, $zero, 0xFF
/* 3C8D4 8003BCD4 24180090 */  addiu      $t8, $zero, 0x90
/* 3C8D8 8003BCD8 A4790018 */  sh         $t9, 0x18($v1)
/* 3C8DC 8003BCDC A10E0003 */  sb         $t6, 0x3($t0)
/* 3C8E0 8003BCE0 240F013F */  addiu      $t7, $zero, 0x13F
/* 3C8E4 8003BCE4 A4780016 */  sh         $t8, 0x16($v1)
/* 3C8E8 8003BCE8 241900AF */  addiu      $t9, $zero, 0xAF
/* 3C8EC 8003BCEC 3C0C801A */  lui        $t4, %hi(D_8019EDE4)
/* 3C8F0 8003BCF0 A52F0004 */  sh         $t7, 0x4($t1)
/* 3C8F4 8003BCF4 240E0047 */  addiu      $t6, $zero, 0x47
/* 3C8F8 8003BCF8 A4790026 */  sh         $t9, 0x26($v1)
/* 3C8FC 8003BCFC 2418009F */  addiu      $t8, $zero, 0x9F
/* 3C900 8003BD00 258CEDE4 */  addiu      $t4, $t4, %lo(D_8019EDE4)
/* 3C904 8003BD04 A46E0002 */  sh         $t6, 0x2($v1)
/* 3C908 8003BD08 240F006D */  addiu      $t7, $zero, 0x6D
/* 3C90C 8003BD0C A4780022 */  sh         $t8, 0x22($v1)
/* 3C910 8003BD10 2419008C */  addiu      $t9, $zero, 0x8C
/* 3C914 8003BD14 3C0D801A */  lui        $t5, %hi(D_8019EDF8)
/* 3C918 8003BD18 A46F0006 */  sh         $t7, 0x6($v1)
/* 3C91C 8003BD1C 240E0086 */  addiu      $t6, $zero, 0x86
/* 3C920 8003BD20 2418009B */  addiu      $t8, $zero, 0x9B
/* 3C924 8003BD24 A1990003 */  sb         $t9, 0x3($t4)
/* 3C928 8003BD28 25ADEDF8 */  addiu      $t5, $t5, %lo(D_8019EDF8)
/* 3C92C 8003BD2C A46E0010 */  sh         $t6, 0x10($v1)
/* 3C930 8003BD30 240F0083 */  addiu      $t7, $zero, 0x83
/* 3C934 8003BD34 A478002E */  sh         $t8, 0x2E($v1)
/* 3C938 8003BD38 241900C0 */  addiu      $t9, $zero, 0xC0
/* 3C93C 8003BD3C A46F0012 */  sh         $t7, 0x12($v1)
/* 3C940 8003BD40 240E0090 */  addiu      $t6, $zero, 0x90
/* 3C944 8003BD44 A5B90006 */  sh         $t9, 0x6($t5)
/* 3C948 8003BD48 241800C8 */  addiu      $t8, $zero, 0xC8
/* 3C94C 8003BD4C A46E001A */  sh         $t6, 0x1A($v1)
/* 3C950 8003BD50 240F009B */  addiu      $t7, $zero, 0x9B
/* 3C954 8003BD54 A5B80004 */  sh         $t8, 0x4($t5)
/* 3C958 8003BD58 24190017 */  addiu      $t9, $zero, 0x17
/* 3C95C 8003BD5C A46F001E */  sh         $t7, 0x1E($v1)
/* 3C960 8003BD60 240E0083 */  addiu      $t6, $zero, 0x83
/* 3C964 8003BD64 A4590006 */  sh         $t9, 0x6($v0)
/* 3C968 8003BD68 24180060 */  addiu      $t8, $zero, 0x60
/* 3C96C 8003BD6C A46E002A */  sh         $t6, 0x2A($v1)
/* 3C970 8003BD70 240F0086 */  addiu      $t7, $zero, 0x86
/* 3C974 8003BD74 A4580004 */  sh         $t8, 0x4($v0)
/* 3C978 8003BD78 3C198037 */  lui        $t9, %hi(D_80368AC8)
/* 3C97C 8003BD7C A46F002C */  sh         $t7, 0x2C($v1)
/* 3C980 8003BD80 240E0078 */  addiu      $t6, $zero, 0x78
/* 3C984 8003BD84 27398AC8 */  addiu      $t9, $t9, %lo(D_80368AC8)
/* 3C988 8003BD88 3C188037 */  lui        $t8, %hi(D_80368670)
/* 3C98C 8003BD8C A5AE0000 */  sh         $t6, 0x0($t5)
/* 3C990 8003BD90 240F00B4 */  addiu      $t7, $zero, 0xB4
/* 3C994 8003BD94 27188670 */  addiu      $t8, $t8, %lo(D_80368670)
/* 3C998 8003BD98 AC590010 */  sw         $t9, 0x10($v0)
/* 3C99C 8003BD9C A5AF0002 */  sh         $t7, 0x2($t5)
/* 3C9A0 8003BDA0 AC58000C */  sw         $t8, 0xC($v0)
/* 3C9A4 8003BDA4 240E0060 */  addiu      $t6, $zero, 0x60
/* 3C9A8 8003BDA8 24190049 */  addiu      $t9, $zero, 0x49
/* 3C9AC 8003BDAC A44E0000 */  sh         $t6, 0x0($v0)
/* 3C9B0 8003BDB0 240F0017 */  addiu      $t7, $zero, 0x17
/* 3C9B4 8003BDB4 A459001E */  sh         $t9, 0x1E($v0)
/* 3C9B8 8003BDB8 24180030 */  addiu      $t8, $zero, 0x30
/* 3C9BC 8003BDBC A44F0002 */  sh         $t7, 0x2($v0)
/* 3C9C0 8003BDC0 240E0070 */  addiu      $t6, $zero, 0x70
/* 3C9C4 8003BDC4 2419006E */  addiu      $t9, $zero, 0x6E
/* 3C9C8 8003BDC8 A44E0008 */  sh         $t6, 0x8($v0)
/* 3C9CC 8003BDCC 240F002A */  addiu      $t7, $zero, 0x2A
/* 3C9D0 8003BDD0 A458001C */  sh         $t8, 0x1C($v0)
/* 3C9D4 8003BDD4 A4590032 */  sh         $t9, 0x32($v0)
/* 3C9D8 8003BDD8 A4580030 */  sh         $t8, 0x30($v0)
/* 3C9DC 8003BDDC A44F000A */  sh         $t7, 0xA($v0)
/* 3C9E0 8003BDE0 240E0030 */  addiu      $t6, $zero, 0x30
/* 3C9E4 8003BDE4 24180050 */  addiu      $t8, $zero, 0x50
/* 3C9E8 8003BDE8 24190050 */  addiu      $t9, $zero, 0x50
/* 3C9EC 8003BDEC A44E0014 */  sh         $t6, 0x14($v0)
/* 3C9F0 8003BDF0 240F0030 */  addiu      $t7, $zero, 0x30
/* 3C9F4 8003BDF4 A4590040 */  sh         $t9, 0x40($v0)
/* 3C9F8 8003BDF8 A458003C */  sh         $t8, 0x3C($v0)
/* 3C9FC 8003BDFC A44F0018 */  sh         $t7, 0x18($v0)
/* 3CA00 8003BE00 3C0E8036 */  lui        $t6, %hi(D_80367288)
/* 3CA04 8003BE04 3C188037 */  lui        $t8, %hi(D_80368F00)
/* 3CA08 8003BE08 3C198037 */  lui        $t9, %hi(D_80369070)
/* 3CA0C 8003BE0C 25CE7288 */  addiu      $t6, $t6, %lo(D_80367288)
/* 3CA10 8003BE10 3C0F8036 */  lui        $t7, %hi(D_80367368)
/* 3CA14 8003BE14 27399070 */  addiu      $t9, $t9, %lo(D_80369070)
/* 3CA18 8003BE18 27188F00 */  addiu      $t8, $t8, %lo(D_80368F00)
/* 3CA1C 8003BE1C 25EF7368 */  addiu      $t7, $t7, %lo(D_80367368)
/* 3CA20 8003BE20 AC4E0020 */  sw         $t6, 0x20($v0)
/* 3CA24 8003BE24 AC580048 */  sw         $t8, 0x48($v0)
/* 3CA28 8003BE28 AC59004C */  sw         $t9, 0x4C($v0)
/* 3CA2C 8003BE2C AC4F0024 */  sw         $t7, 0x24($v0)
/* 3CA30 8003BE30 3C0E8037 */  lui        $t6, %hi(D_803681C0)
/* 3CA34 8003BE34 24190018 */  addiu      $t9, $zero, 0x18
/* 3CA38 8003BE38 24180020 */  addiu      $t8, $zero, 0x20
/* 3CA3C 8003BE3C 25CE81C0 */  addiu      $t6, $t6, %lo(D_803681C0)
/* 3CA40 8003BE40 3C0F8037 */  lui        $t7, %hi(D_80368548)
/* 3CA44 8003BE44 A4580054 */  sh         $t8, 0x54($v0)
/* 3CA48 8003BE48 A4590056 */  sh         $t9, 0x56($v0)
/* 3CA4C 8003BE4C 25EF8548 */  addiu      $t7, $t7, %lo(D_80368548)
/* 3CA50 8003BE50 AC4E0034 */  sw         $t6, 0x34($v0)
/* 3CA54 8003BE54 3C198036 */  lui        $t9, %hi(D_80367518)
/* 3CA58 8003BE58 3C188036 */  lui        $t8, %hi(D_80367390)
/* 3CA5C 8003BE5C AC4F0038 */  sw         $t7, 0x38($v0)
/* 3CA60 8003BE60 240E0031 */  addiu      $t6, $zero, 0x31
/* 3CA64 8003BE64 27187390 */  addiu      $t8, $t8, %lo(D_80367390)
/* 3CA68 8003BE68 27397518 */  addiu      $t9, $t9, %lo(D_80367518)
/* 3CA6C 8003BE6C A44E0044 */  sh         $t6, 0x44($v0)
/* 3CA70 8003BE70 240F0085 */  addiu      $t7, $zero, 0x85
/* 3CA74 8003BE74 AC590060 */  sw         $t9, 0x60($v0)
/* 3CA78 8003BE78 AC58005C */  sw         $t8, 0x5C($v0)
/* 3CA7C 8003BE7C A44F0046 */  sh         $t7, 0x46($v0)
/* 3CA80 8003BE80 240E0020 */  addiu      $t6, $zero, 0x20
/* 3CA84 8003BE84 24180090 */  addiu      $t8, $zero, 0x90
/* 3CA88 8003BE88 24190014 */  addiu      $t9, $zero, 0x14
/* 3CA8C 8003BE8C A44E0050 */  sh         $t6, 0x50($v0)
/* 3CA90 8003BE90 240F0018 */  addiu      $t7, $zero, 0x18
/* 3CA94 8003BE94 A459006A */  sh         $t9, 0x6A($v0)
/* 3CA98 8003BE98 A4580068 */  sh         $t8, 0x68($v0)
/* 3CA9C 8003BE9C A44F0052 */  sh         $t7, 0x52($v0)
/* 3CAA0 8003BEA0 240E0080 */  addiu      $t6, $zero, 0x80
/* 3CAA4 8003BEA4 3C188036 */  lui        $t8, %hi(D_80367B28)
/* 3CAA8 8003BEA8 3C198037 */  lui        $t9, %hi(D_803680D0)
/* 3CAAC 8003BEAC A44E0058 */  sh         $t6, 0x58($v0)
/* 3CAB0 8003BEB0 240F0083 */  addiu      $t7, $zero, 0x83
/* 3CAB4 8003BEB4 273980D0 */  addiu      $t9, $t9, %lo(D_803680D0)
/* 3CAB8 8003BEB8 27187B28 */  addiu      $t8, $t8, %lo(D_80367B28)
/* 3CABC 8003BEBC A44F005A */  sh         $t7, 0x5A($v0)
/* 3CAC0 8003BEC0 AC580070 */  sw         $t8, 0x70($v0)
/* 3CAC4 8003BEC4 AC590074 */  sw         $t9, 0x74($v0)
/* 3CAC8 8003BEC8 240E0090 */  addiu      $t6, $zero, 0x90
/* 3CACC 8003BECC A44E0064 */  sh         $t6, 0x64($v0)
/* 3CAD0 8003BED0 240F0014 */  addiu      $t7, $zero, 0x14
/* 3CAD4 8003BED4 3C198037 */  lui        $t9, %hi(D_80368E78)
/* 3CAD8 8003BED8 3C188037 */  lui        $t8, %hi(D_80368AF0)
/* 3CADC 8003BEDC A44F0066 */  sh         $t7, 0x66($v0)
/* 3CAE0 8003BEE0 240E0069 */  addiu      $t6, $zero, 0x69
/* 3CAE4 8003BEE4 27188AF0 */  addiu      $t8, $t8, %lo(D_80368AF0)
/* 3CAE8 8003BEE8 27398E78 */  addiu      $t9, $t9, %lo(D_80368E78)
/* 3CAEC 8003BEEC A44E006C */  sh         $t6, 0x6C($v0)
/* 3CAF0 8003BEF0 240F0049 */  addiu      $t7, $zero, 0x49
/* 3CAF4 8003BEF4 AC590088 */  sw         $t9, 0x88($v0)
/* 3CAF8 8003BEF8 AC580084 */  sw         $t8, 0x84($v0)
/* 3CAFC 8003BEFC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 3CB00 8003BF00 A44F006E */  sh         $t7, 0x6E($v0)
/* 3CB04 8003BF04 240E0030 */  addiu      $t6, $zero, 0x30
/* 3CB08 8003BF08 3C188036 */  lui        $t8, %hi(D_80367778)
/* 3CB0C 8003BF0C 3C198036 */  lui        $t9, %hi(D_80367B00)
/* 3CB10 8003BF10 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3CB14 8003BF14 A44E0080 */  sh         $t6, 0x80($v0)
/* 3CB18 8003BF18 240F009F */  addiu      $t7, $zero, 0x9F
/* 3CB1C 8003BF1C 27397B00 */  addiu      $t9, $t9, %lo(D_80367B00)
/* 3CB20 8003BF20 27187778 */  addiu      $t8, $t8, %lo(D_80367778)
/* 3CB24 8003BF24 241F0009 */  addiu      $ra, $zero, 0x9
/* 3CB28 8003BF28 24050070 */  addiu      $a1, $zero, 0x70
/* 3CB2C 8003BF2C 24060010 */  addiu      $a2, $zero, 0x10
/* 3CB30 8003BF30 AC580098 */  sw         $t8, 0x98($v0)
/* 3CB34 8003BF34 AC59009C */  sw         $t9, 0x9C($v0)
/* 3CB38 8003BF38 240E00A1 */  addiu      $t6, $zero, 0xA1
/* 3CB3C 8003BF3C 24070111 */  addiu      $a3, $zero, 0x111
/* 3CB40 8003BF40 A44F0082 */  sh         $t7, 0x82($v0)
/* 3CB44 8003BF44 A44E0094 */  sh         $t6, 0x94($v0)
/* 3CB48 8003BF48 A44F0096 */  sh         $t7, 0x96($v0)
/* 3CB4C 8003BF4C 2419000C */  addiu      $t9, $zero, 0xC
/* 3CB50 8003BF50 24180050 */  addiu      $t8, $zero, 0x50
/* 3CB54 8003BF54 240B002F */  addiu      $t3, $zero, 0x2F
/* 3CB58 8003BF58 A45800A4 */  sh         $t8, 0xA4($v0)
/* 3CB5C 8003BF5C A45900A6 */  sh         $t9, 0xA6($v0)
/* 3CB60 8003BF60 240F000C */  addiu      $t7, $zero, 0xC
/* 3CB64 8003BF64 240E0050 */  addiu      $t6, $zero, 0x50
/* 3CB68 8003BF68 A44E00A0 */  sh         $t6, 0xA0($v0)
/* 3CB6C 8003BF6C A44F00A2 */  sh         $t7, 0xA2($v0)
/* 3CB70 8003BF70 3C198035 */  lui        $t9, %hi(D_8034CD40)
/* 3CB74 8003BF74 3C188035 */  lui        $t8, %hi(D_8034CB58)
/* 3CB78 8003BF78 A45F0016 */  sh         $ra, 0x16($v0)
/* 3CB7C 8003BF7C A45F001A */  sh         $ra, 0x1A($v0)
/* 3CB80 8003BF80 A45F003E */  sh         $ra, 0x3E($v0)
/* 3CB84 8003BF84 A45F0042 */  sh         $ra, 0x42($v0)
/* 3CB88 8003BF88 2718CB58 */  addiu      $t8, $t8, %lo(D_8034CB58)
/* 3CB8C 8003BF8C 2739CD40 */  addiu      $t9, $t9, %lo(D_8034CD40)
/* 3CB90 8003BF90 240F00B4 */  addiu      $t7, $zero, 0xB4
/* 3CB94 8003BF94 240E0078 */  addiu      $t6, $zero, 0x78
/* 3CB98 8003BF98 A1000000 */  sb         $zero, 0x0($t0)
/* 3CB9C 8003BF9C A1000001 */  sb         $zero, 0x1($t0)
/* 3CBA0 8003BFA0 A1000002 */  sb         $zero, 0x2($t0)
/* 3CBA4 8003BFA4 A5200000 */  sh         $zero, 0x0($t1)
/* 3CBA8 8003BFA8 A5200002 */  sh         $zero, 0x2($t1)
/* 3CBAC 8003BFAC A1400000 */  sb         $zero, 0x0($t2)
/* 3CBB0 8003BFB0 A1400001 */  sb         $zero, 0x1($t2)
/* 3CBB4 8003BFB4 A1400002 */  sb         $zero, 0x2($t2)
/* 3CBB8 8003BFB8 A46B0000 */  sh         $t3, 0x0($v1)
/* 3CBBC 8003BFBC A4670004 */  sh         $a3, 0x4($v1)
/* 3CBC0 8003BFC0 A46B0008 */  sh         $t3, 0x8($v1)
/* 3CBC4 8003BFC4 A467000C */  sh         $a3, 0xC($v1)
/* 3CBC8 8003BFC8 A4670014 */  sh         $a3, 0x14($v1)
/* 3CBCC 8003BFCC A467001C */  sh         $a3, 0x1C($v1)
/* 3CBD0 8003BFD0 A46B0020 */  sh         $t3, 0x20($v1)
/* 3CBD4 8003BFD4 A4670024 */  sh         $a3, 0x24($v1)
/* 3CBD8 8003BFD8 A46B0028 */  sh         $t3, 0x28($v1)
/* 3CBDC 8003BFDC A1800000 */  sb         $zero, 0x0($t4)
/* 3CBE0 8003BFE0 A1800001 */  sb         $zero, 0x1($t4)
/* 3CBE4 8003BFE4 A1800002 */  sb         $zero, 0x2($t4)
/* 3CBE8 8003BFE8 A446002A */  sh         $a2, 0x2A($v0)
/* 3CBEC 8003BFEC A446002E */  sh         $a2, 0x2E($v0)
/* 3CBF0 8003BFF0 A4450028 */  sh         $a1, 0x28($v0)
/* 3CBF4 8003BFF4 A445002C */  sh         $a1, 0x2C($v0)
/* 3CBF8 8003BFF8 A446007A */  sh         $a2, 0x7A($v0)
/* 3CBFC 8003BFFC A446007E */  sh         $a2, 0x7E($v0)
/* 3CC00 8003C000 A4450078 */  sh         $a1, 0x78($v0)
/* 3CC04 8003C004 A445007C */  sh         $a1, 0x7C($v0)
/* 3CC08 8003C008 A446008E */  sh         $a2, 0x8E($v0)
/* 3CC0C 8003C00C A4460092 */  sh         $a2, 0x92($v0)
/* 3CC10 8003C010 A445008C */  sh         $a1, 0x8C($v0)
/* 3CC14 8003C014 A4450090 */  sh         $a1, 0x90($v0)
/* 3CC18 8003C018 A44E00A8 */  sh         $t6, 0xA8($v0)
/* 3CC1C 8003C01C A44F00AA */  sh         $t7, 0xAA($v0)
/* 3CC20 8003C020 AC5900B0 */  sw         $t9, 0xB0($v0)
/* 3CC24 8003C024 AC5800AC */  sw         $t8, 0xAC($v0)
/* 3CC28 8003C028 0C000184 */  jal        func_80000610
/* 3CC2C 8003C02C 00002025 */   or        $a0, $zero, $zero
/* 3CC30 8003C030 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3CC34 8003C034 27BD0018 */  addiu      $sp, $sp, 0x18
/* 3CC38 8003C038 03E00008 */  jr         $ra
/* 3CC3C 8003C03C 00000000 */   nop

glabel func_8003C040
/* 3CC40 8003C040 3C0E8009 */  lui        $t6, %hi(D_8008EE44)
/* 3CC44 8003C044 91CEEE44 */  lbu        $t6, %lo(D_8008EE44)($t6)
/* 3CC48 8003C048 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3CC4C 8003C04C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3CC50 8003C050 11C00005 */  beqz       $t6, .L8003C068
/* 3CC54 8003C054 AFA40028 */   sw        $a0, 0x28($sp)
/* 3CC58 8003C058 0C00EF10 */  jal        func_8003BC40
/* 3CC5C 8003C05C 00000000 */   nop
/* 3CC60 8003C060 3C018009 */  lui        $at, %hi(D_8008EE44)
/* 3CC64 8003C064 A020EE44 */  sb         $zero, %lo(D_8008EE44)($at)
.L8003C068:
/* 3CC68 8003C068 8FAF0028 */  lw         $t7, 0x28($sp)
/* 3CC6C 8003C06C 3C03801A */  lui        $v1, %hi(D_8019E5CF)
/* 3CC70 8003C070 2463E5CF */  addiu      $v1, $v1, %lo(D_8019E5CF)
/* 3CC74 8003C074 8DF80000 */  lw         $t8, 0x0($t7)
/* 3CC78 8003C078 A0600000 */  sb         $zero, 0x0($v1)
/* 3CC7C 8003C07C 80790000 */  lb         $t9, 0x0($v1)
/* 3CC80 8003C080 3C05801A */  lui        $a1, %hi(D_8019E5CE)
/* 3CC84 8003C084 24A5E5CE */  addiu      $a1, $a1, %lo(D_8019E5CE)
/* 3CC88 8003C088 3C08801A */  lui        $t0, %hi(D_8019EE08)
/* 3CC8C 8003C08C A0B90000 */  sb         $t9, 0x0($a1)
/* 3CC90 8003C090 8D08EE08 */  lw         $t0, %lo(D_8019EE08)($t0)
/* 3CC94 8003C094 3C06801A */  lui        $a2, %hi(D_8019E5C4)
/* 3CC98 8003C098 24C6E5C4 */  addiu      $a2, $a2, %lo(D_8019E5C4)
/* 3CC9C 8003C09C 3C09801A */  lui        $t1, %hi(D_8019EE10)
/* 3CCA0 8003C0A0 ACC80000 */  sw         $t0, 0x0($a2)
/* 3CCA4 8003C0A4 8D22EE10 */  lw         $v0, %lo(D_8019EE10)($t1)
/* 3CCA8 8003C0A8 3C04801A */  lui        $a0, %hi(D_8019E5C8)
/* 3CCAC 8003C0AC 2484E5C8 */  addiu      $a0, $a0, %lo(D_8019E5C8)
/* 3CCB0 8003C0B0 28410033 */  slti       $at, $v0, 0x33
/* 3CCB4 8003C0B4 AFB80024 */  sw         $t8, 0x24($sp)
/* 3CCB8 8003C0B8 14200004 */  bnez       $at, .L8003C0CC
/* 3CCBC 8003C0BC AC820000 */   sw        $v0, 0x0($a0)
/* 3CCC0 8003C0C0 240A0002 */  addiu      $t2, $zero, 0x2
/* 3CCC4 8003C0C4 10000005 */  b          .L8003C0DC
/* 3CCC8 8003C0C8 A06A0000 */   sb        $t2, 0x0($v1)
.L8003C0CC:
/* 3CCCC 8003C0CC 2841FFCE */  slti       $at, $v0, -0x32
/* 3CCD0 8003C0D0 10200002 */  beqz       $at, .L8003C0DC
/* 3CCD4 8003C0D4 240BFFFE */   addiu     $t3, $zero, -0x2
/* 3CCD8 8003C0D8 A06B0000 */  sb         $t3, 0x0($v1)
.L8003C0DC:
/* 3CCDC 8003C0DC 8CC20000 */  lw         $v0, 0x0($a2)
/* 3CCE0 8003C0E0 240C0001 */  addiu      $t4, $zero, 0x1
/* 3CCE4 8003C0E4 3C0E8009 */  lui        $t6, %hi(D_8008EE4C)
/* 3CCE8 8003C0E8 2841001F */  slti       $at, $v0, 0x1F
/* 3CCEC 8003C0EC 14200004 */  bnez       $at, .L8003C100
/* 3CCF0 8003C0F0 3C0F801A */   lui       $t7, %hi(D_8019E5D0)
/* 3CCF4 8003C0F4 A0AC0000 */  sb         $t4, 0x0($a1)
/* 3CCF8 8003C0F8 10000006 */  b          .L8003C114
/* 3CCFC 8003C0FC A0600000 */   sb        $zero, 0x0($v1)
.L8003C100:
/* 3CD00 8003C100 2841FFE2 */  slti       $at, $v0, -0x1E
/* 3CD04 8003C104 10200003 */  beqz       $at, .L8003C114
/* 3CD08 8003C108 240DFFFF */   addiu     $t5, $zero, -0x1
/* 3CD0C 8003C10C A0AD0000 */  sb         $t5, 0x0($a1)
/* 3CD10 8003C110 A0600000 */  sb         $zero, 0x0($v1)
.L8003C114:
/* 3CD14 8003C114 91CEEE4C */  lbu        $t6, %lo(D_8008EE4C)($t6)
/* 3CD18 8003C118 11C0004A */  beqz       $t6, .L8003C244
/* 3CD1C 8003C11C 00000000 */   nop
/* 3CD20 8003C120 80620000 */  lb         $v0, 0x0($v1)
/* 3CD24 8003C124 81EFE5D0 */  lb         $t7, %lo(D_8019E5D0)($t7)
/* 3CD28 8003C128 11E20021 */  beq        $t7, $v0, .L8003C1B0
/* 3CD2C 8003C12C 00000000 */   nop
/* 3CD30 8003C130 1040001D */  beqz       $v0, .L8003C1A8
/* 3CD34 8003C134 24010002 */   addiu     $at, $zero, 0x2
/* 3CD38 8003C138 1441000A */  bne        $v0, $at, .L8003C164
/* 3CD3C 8003C13C 3C03801A */   lui       $v1, %hi(D_8019E4B4)
/* 3CD40 8003C140 2463E4B4 */  addiu      $v1, $v1, %lo(D_8019E4B4)
/* 3CD44 8003C144 8C620000 */  lw         $v0, 0x0($v1)
/* 3CD48 8003C148 24180005 */  addiu      $t8, $zero, 0x5
/* 3CD4C 8003C14C 14400003 */  bnez       $v0, .L8003C15C
/* 3CD50 8003C150 2459FFFF */   addiu     $t9, $v0, -0x1
/* 3CD54 8003C154 1000000F */  b          .L8003C194
/* 3CD58 8003C158 AC780000 */   sw        $t8, 0x0($v1)
.L8003C15C:
/* 3CD5C 8003C15C 1000000D */  b          .L8003C194
/* 3CD60 8003C160 AC790000 */   sw        $t9, 0x0($v1)
.L8003C164:
/* 3CD64 8003C164 2401FFFE */  addiu      $at, $zero, -0x2
/* 3CD68 8003C168 1441000A */  bne        $v0, $at, .L8003C194
/* 3CD6C 8003C16C 3C02801A */   lui       $v0, %hi(D_8019E4B4)
/* 3CD70 8003C170 8C42E4B4 */  lw         $v0, %lo(D_8019E4B4)($v0)
/* 3CD74 8003C174 24010005 */  addiu      $at, $zero, 0x5
/* 3CD78 8003C178 14410004 */  bne        $v0, $at, .L8003C18C
/* 3CD7C 8003C17C 24480001 */   addiu     $t0, $v0, 0x1
/* 3CD80 8003C180 3C01801A */  lui        $at, %hi(D_8019E4B4)
/* 3CD84 8003C184 10000003 */  b          .L8003C194
/* 3CD88 8003C188 AC20E4B4 */   sw        $zero, %lo(D_8019E4B4)($at)
.L8003C18C:
/* 3CD8C 8003C18C 3C01801A */  lui        $at, %hi(D_8019E4B4)
/* 3CD90 8003C190 AC28E4B4 */  sw         $t0, %lo(D_8019E4B4)($at)
.L8003C194:
/* 3CD94 8003C194 24040028 */  addiu      $a0, $zero, 0x28
/* 3CD98 8003C198 0C0004F0 */  jal        func_800013C0
/* 3CD9C 8003C19C 24050005 */   addiu     $a1, $zero, 0x5
/* 3CDA0 8003C1A0 3C02801A */  lui        $v0, %hi(D_8019E5CF)
/* 3CDA4 8003C1A4 8042E5CF */  lb         $v0, %lo(D_8019E5CF)($v0)
.L8003C1A8:
/* 3CDA8 8003C1A8 3C01801A */  lui        $at, %hi(D_8019E5D0)
/* 3CDAC 8003C1AC A022E5D0 */  sb         $v0, %lo(D_8019E5D0)($at)
.L8003C1B0:
/* 3CDB0 8003C1B0 3C02801A */  lui        $v0, %hi(D_8019E4B4)
/* 3CDB4 8003C1B4 8C42E4B4 */  lw         $v0, %lo(D_8019E4B4)($v0)
/* 3CDB8 8003C1B8 3C09801A */  lui        $t1, %hi(D_8019E4B8)
/* 3CDBC 8003C1BC 54400005 */  bnel       $v0, $zero, .L8003C1D4
/* 3CDC0 8003C1C0 24010001 */   addiu     $at, $zero, 0x1
/* 3CDC4 8003C1C4 8D29E4B8 */  lw         $t1, %lo(D_8019E4B8)($t1)
/* 3CDC8 8003C1C8 24010001 */  addiu      $at, $zero, 0x1
/* 3CDCC 8003C1CC 11210006 */  beq        $t1, $at, .L8003C1E8
/* 3CDD0 8003C1D0 24010001 */   addiu     $at, $zero, 0x1
.L8003C1D4:
/* 3CDD4 8003C1D4 1441000F */  bne        $v0, $at, .L8003C214
/* 3CDD8 8003C1D8 3C0A801A */   lui       $t2, %hi(D_8019E4BC)
/* 3CDDC 8003C1DC 8D4AE4BC */  lw         $t2, %lo(D_8019E4BC)($t2)
/* 3CDE0 8003C1E0 24010001 */  addiu      $at, $zero, 0x1
/* 3CDE4 8003C1E4 1541000B */  bne        $t2, $at, .L8003C214
.L8003C1E8:
/* 3CDE8 8003C1E8 3C0B801A */   lui       $t3, %hi(D_8019EE02)
/* 3CDEC 8003C1EC 956BEE02 */  lhu        $t3, %lo(D_8019EE02)($t3)
/* 3CDF0 8003C1F0 3C018009 */  lui        $at, %hi(D_8008EE4C)
/* 3CDF4 8003C1F4 24040026 */  addiu      $a0, $zero, 0x26
/* 3CDF8 8003C1F8 316C4000 */  andi       $t4, $t3, 0x4000
/* 3CDFC 8003C1FC 11800011 */  beqz       $t4, .L8003C244
/* 3CE00 8003C200 24050005 */   addiu     $a1, $zero, 0x5
/* 3CE04 8003C204 0C0004F0 */  jal        func_800013C0
/* 3CE08 8003C208 A020EE4C */   sb        $zero, %lo(D_8008EE4C)($at)
/* 3CE0C 8003C20C 1000000D */  b          .L8003C244
/* 3CE10 8003C210 00000000 */   nop
.L8003C214:
/* 3CE14 8003C214 1040000B */  beqz       $v0, .L8003C244
/* 3CE18 8003C218 24010001 */   addiu     $at, $zero, 0x1
/* 3CE1C 8003C21C 10410009 */  beq        $v0, $at, .L8003C244
/* 3CE20 8003C220 3C0D801A */   lui       $t5, %hi(D_8019EE02)
/* 3CE24 8003C224 95ADEE02 */  lhu        $t5, %lo(D_8019EE02)($t5)
/* 3CE28 8003C228 3C018009 */  lui        $at, %hi(D_8008EE4C)
/* 3CE2C 8003C22C 24040026 */  addiu      $a0, $zero, 0x26
/* 3CE30 8003C230 31AE4000 */  andi       $t6, $t5, 0x4000
/* 3CE34 8003C234 11C00003 */  beqz       $t6, .L8003C244
/* 3CE38 8003C238 24050005 */   addiu     $a1, $zero, 0x5
/* 3CE3C 8003C23C 0C0004F0 */  jal        func_800013C0
/* 3CE40 8003C240 A020EE4C */   sb        $zero, %lo(D_8008EE4C)($at)
.L8003C244:
/* 3CE44 8003C244 0C00F371 */  jal        func_8003CDC4
/* 3CE48 8003C248 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CE4C 8003C24C 0C00F57D */  jal        func_8003D5F4
/* 3CE50 8003C250 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CE54 8003C254 3C0F801A */  lui        $t7, %hi(D_8019E4B4)
/* 3CE58 8003C258 8DEFE4B4 */  lw         $t7, %lo(D_8019E4B4)($t7)
/* 3CE5C 8003C25C 2DE10006 */  sltiu      $at, $t7, 0x6
/* 3CE60 8003C260 10200028 */  beqz       $at, .L8003C304
/* 3CE64 8003C264 000F7880 */   sll       $t7, $t7, 2
/* 3CE68 8003C268 3C018009 */  lui        $at, %hi(jtbl_80097630_main)
/* 3CE6C 8003C26C 002F0821 */  addu       $at, $at, $t7
/* 3CE70 8003C270 8C2F7630 */  lw         $t7, %lo(jtbl_80097630_main)($at)
/* 3CE74 8003C274 01E00008 */  jr         $t7
/* 3CE78 8003C278 00000000 */   nop
glabel L8003C27C
/* 3CE7C 8003C27C 0C00F126 */  jal        func_8003C498
/* 3CE80 8003C280 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CE84 8003C284 1000001F */  b          .L8003C304
/* 3CE88 8003C288 00000000 */   nop
glabel L8003C28C
/* 3CE8C 8003C28C 0C00F1E5 */  jal        func_8003C794
/* 3CE90 8003C290 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CE94 8003C294 1000001B */  b          .L8003C304
/* 3CE98 8003C298 00000000 */   nop
glabel L8003C29C
/* 3CE9C 8003C29C 0C00F27E */  jal        func_8003C9F8
/* 3CEA0 8003C2A0 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CEA4 8003C2A4 10000017 */  b          .L8003C304
/* 3CEA8 8003C2A8 00000000 */   nop
glabel L8003C2AC
/* 3CEAC 8003C2AC 0C00F2B2 */  jal        func_8003CAC8
/* 3CEB0 8003C2B0 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CEB4 8003C2B4 10000013 */  b          .L8003C304
/* 3CEB8 8003C2B8 00000000 */   nop
glabel L8003C2BC
/* 3CEBC 8003C2BC 0C00F342 */  jal        func_8003CD08
/* 3CEC0 8003C2C0 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CEC4 8003C2C4 1000000F */  b          .L8003C304
/* 3CEC8 8003C2C8 00000000 */   nop
glabel L8003C2CC
/* 3CECC 8003C2CC 0C00FB1B */  jal        func_8003EC6C
/* 3CED0 8003C2D0 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CED4 8003C2D4 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 3CED8 8003C2D8 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 3CEDC 8003C2DC 3C018009 */  lui        $at, %hi(D_8008EE4C)
/* 3CEE0 8003C2E0 24040026 */  addiu      $a0, $zero, 0x26
/* 3CEE4 8003C2E4 30588000 */  andi       $t8, $v0, 0x8000
/* 3CEE8 8003C2E8 17000003 */  bnez       $t8, .L8003C2F8
/* 3CEEC 8003C2EC 30592000 */   andi      $t9, $v0, 0x2000
/* 3CEF0 8003C2F0 13200004 */  beqz       $t9, .L8003C304
/* 3CEF4 8003C2F4 00000000 */   nop
.L8003C2F8:
/* 3CEF8 8003C2F8 A020EE4C */  sb         $zero, %lo(D_8008EE4C)($at)
/* 3CEFC 8003C2FC 0C0004F0 */  jal        func_800013C0
/* 3CF00 8003C300 24050005 */   addiu     $a1, $zero, 0x5
.L8003C304:
/* 3CF04 8003C304 0C00F318 */  jal        func_8003CC60
/* 3CF08 8003C308 00000000 */   nop
/* 3CF0C 8003C30C 0C00F703 */  jal        func_8003DC0C
/* 3CF10 8003C310 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CF14 8003C314 0C00F770 */  jal        func_8003DDC0
/* 3CF18 8003C318 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CF1C 8003C31C 0C00F793 */  jal        func_8003DE4C
/* 3CF20 8003C320 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CF24 8003C324 0C00F80B */  jal        func_8003E02C
/* 3CF28 8003C328 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CF2C 8003C32C 0C00F83F */  jal        func_8003E0FC
/* 3CF30 8003C330 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CF34 8003C334 0C00F8F1 */  jal        func_8003E3C4
/* 3CF38 8003C338 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CF3C 8003C33C 0C00F4C0 */  jal        func_8003D300
/* 3CF40 8003C340 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CF44 8003C344 0C00FA28 */  jal        func_8003E8A0
/* 3CF48 8003C348 27A40024 */   addiu     $a0, $sp, 0x24
/* 3CF4C 8003C34C 3C088009 */  lui        $t0, %hi(D_8008EE48)
/* 3CF50 8003C350 9108EE48 */  lbu        $t0, %lo(D_8008EE48)($t0)
/* 3CF54 8003C354 1500000E */  bnez       $t0, .L8003C390
/* 3CF58 8003C358 3C04801A */   lui       $a0, %hi(D_8019EDDC)
/* 3CF5C 8003C35C 3C053E4C */  lui        $a1, (0x3E4CCCCD >> 16)
/* 3CF60 8003C360 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 3CF64 8003C364 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 3CF68 8003C368 0C014B98 */  jal        func_80052E60
/* 3CF6C 8003C36C 24060001 */   addiu     $a2, $zero, 0x1
/* 3CF70 8003C370 3C018009 */  lui        $at, %hi(D_8008EE48)
/* 3CF74 8003C374 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 3CF78 8003C378 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 3CF7C 8003C37C A022EE48 */  sb         $v0, %lo(D_8008EE48)($at)
/* 3CF80 8003C380 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 3CF84 8003C384 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 3CF88 8003C388 0C015681 */  jal        func_80055A04
/* 3CF8C 8003C38C 27A40024 */   addiu     $a0, $sp, 0x24
.L8003C390:
/* 3CF90 8003C390 3C098009 */  lui        $t1, %hi(D_8008EE4C)
/* 3CF94 8003C394 9129EE4C */  lbu        $t1, %lo(D_8008EE4C)($t1)
/* 3CF98 8003C398 15200038 */  bnez       $t1, .L8003C47C
/* 3CF9C 8003C39C 3C0A801A */   lui       $t2, %hi(D_8019E4B8)
/* 3CFA0 8003C3A0 8D4AE4B8 */  lw         $t2, %lo(D_8019E4B8)($t2)
/* 3CFA4 8003C3A4 3C018009 */  lui        $at, %hi(D_80097648)
/* 3CFA8 8003C3A8 00002825 */  or         $a1, $zero, $zero
/* 3CFAC 8003C3AC 15400009 */  bnez       $t2, .L8003C3D4
/* 3CFB0 8003C3B0 00003025 */   or        $a2, $zero, $zero
/* 3CFB4 8003C3B4 3C07801A */  lui        $a3, %hi(D_8019E4A2)
/* 3CFB8 8003C3B8 94E7E4A2 */  lhu        $a3, %lo(D_8019E4A2)($a3)
/* 3CFBC 8003C3BC 0C00122C */  jal        func_800048B0
/* 3CFC0 8003C3C0 C42C7648 */   lwc1      $f12, %lo(D_80097648)($at)
/* 3CFC4 8003C3C4 10400003 */  beqz       $v0, .L8003C3D4
/* 3CFC8 8003C3C8 240B0001 */   addiu     $t3, $zero, 0x1
/* 3CFCC 8003C3CC 3C01801A */  lui        $at, %hi(D_8019E4B8)
/* 3CFD0 8003C3D0 AC2BE4B8 */  sw         $t3, %lo(D_8019E4B8)($at)
.L8003C3D4:
/* 3CFD4 8003C3D4 3C04801A */  lui        $a0, %hi(D_8019EDDC)
/* 3CFD8 8003C3D8 3C053E4C */  lui        $a1, (0x3E4CCCCD >> 16)
/* 3CFDC 8003C3DC 34A5CCCD */  ori        $a1, $a1, (0x3E4CCCCD & 0xFFFF)
/* 3CFE0 8003C3E0 2484EDDC */  addiu      $a0, $a0, %lo(D_8019EDDC)
/* 3CFE4 8003C3E4 0C014B98 */  jal        func_80052E60
/* 3CFE8 8003C3E8 00003025 */   or        $a2, $zero, $zero
/* 3CFEC 8003C3EC 3C018009 */  lui        $at, %hi(D_8008EE4C)
/* 3CFF0 8003C3F0 304C00FF */  andi       $t4, $v0, 0xFF
/* 3CFF4 8003C3F4 1180001B */  beqz       $t4, .L8003C464
/* 3CFF8 8003C3F8 A022EE4C */   sb        $v0, %lo(D_8008EE4C)($at)
/* 3CFFC 8003C3FC 3C0D801A */  lui        $t5, %hi(D_8019E4BC)
/* 3D000 8003C400 8DADE4BC */  lw         $t5, %lo(D_8019E4BC)($t5)
/* 3D004 8003C404 55A0000B */  bnel       $t5, $zero, .L8003C434
/* 3D008 8003C408 240F0001 */   addiu     $t7, $zero, 0x1
/* 3D00C 8003C40C 0C000506 */  jal        func_80001418
/* 3D010 8003C410 24040004 */   addiu     $a0, $zero, 0x4
/* 3D014 8003C414 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 3D018 8003C418 44812000 */  mtc1       $at, $f4
/* 3D01C 8003C41C 3C018011 */  lui        $at, %hi(D_80109C9C)
/* 3D020 8003C420 240E0001 */  addiu      $t6, $zero, 0x1
/* 3D024 8003C424 E4249C9C */  swc1       $f4, %lo(D_80109C9C)($at)
/* 3D028 8003C428 3C01801A */  lui        $at, %hi(D_8019E4BC)
/* 3D02C 8003C42C AC2EE4BC */  sw         $t6, %lo(D_8019E4BC)($at)
/* 3D030 8003C430 240F0001 */  addiu      $t7, $zero, 0x1
.L8003C434:
/* 3D034 8003C434 3C018009 */  lui        $at, %hi(D_8008EE44)
/* 3D038 8003C438 A02FEE44 */  sb         $t7, %lo(D_8008EE44)($at)
/* 3D03C 8003C43C 3C018009 */  lui        $at, %hi(D_8008EE48)
/* 3D040 8003C440 A020EE48 */  sb         $zero, %lo(D_8008EE48)($at)
/* 3D044 8003C444 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 3D048 8003C448 24186E14 */  addiu      $t8, $zero, 0x6E14
/* 3D04C 8003C44C A4389BDC */  sh         $t8, %lo(D_80109BDC)($at)
/* 3D050 8003C450 24040012 */  addiu      $a0, $zero, 0x12
/* 3D054 8003C454 0C000170 */  jal        func_800005C0
/* 3D058 8003C458 00002825 */   or        $a1, $zero, $zero
/* 3D05C 8003C45C 3C018009 */  lui        $at, %hi(D_8008F240)
/* 3D060 8003C460 AC20F240 */  sw         $zero, %lo(D_8008F240)($at)
.L8003C464:
/* 3D064 8003C464 3C05801A */  lui        $a1, %hi(D_8019EDDC)
/* 3D068 8003C468 3C06801A */  lui        $a2, %hi(D_8019EDE8)
/* 3D06C 8003C46C 24C6EDE8 */  addiu      $a2, $a2, %lo(D_8019EDE8)
/* 3D070 8003C470 24A5EDDC */  addiu      $a1, $a1, %lo(D_8019EDDC)
/* 3D074 8003C474 0C015681 */  jal        func_80055A04
/* 3D078 8003C478 27A40024 */   addiu     $a0, $sp, 0x24
.L8003C47C:
/* 3D07C 8003C47C 8FB90024 */  lw         $t9, 0x24($sp)
/* 3D080 8003C480 8FA80028 */  lw         $t0, 0x28($sp)
/* 3D084 8003C484 AD190000 */  sw         $t9, 0x0($t0)
/* 3D088 8003C488 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D08C 8003C48C 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3D090 8003C490 03E00008 */  jr         $ra
/* 3D094 8003C494 00000000 */   nop

glabel func_8003C498
/* 3D098 8003C498 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D09C 8003C49C 3C18801A */  lui        $t8, %hi(D_8019E5C4)
/* 3D0A0 8003C4A0 8F18E5C4 */  lw         $t8, %lo(D_8019E5C4)($t8)
/* 3D0A4 8003C4A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D0A8 8003C4A8 AFA40020 */  sw         $a0, 0x20($sp)
/* 3D0AC 8003C4AC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3D0B0 8003C4B0 3C01801A */  lui        $at, %hi(D_8019E5D1)
/* 3D0B4 8003C4B4 17000003 */  bnez       $t8, .L8003C4C4
/* 3D0B8 8003C4B8 AFAF001C */   sw        $t7, 0x1C($sp)
/* 3D0BC 8003C4BC 10000006 */  b          .L8003C4D8
/* 3D0C0 8003C4C0 00001025 */   or        $v0, $zero, $zero
.L8003C4C4:
/* 3D0C4 8003C4C4 3C02801A */  lui        $v0, %hi(D_8019E5D1)
/* 3D0C8 8003C4C8 9042E5D1 */  lbu        $v0, %lo(D_8019E5D1)($v0)
/* 3D0CC 8003C4CC 24420001 */  addiu      $v0, $v0, 0x1
/* 3D0D0 8003C4D0 305900FF */  andi       $t9, $v0, 0xFF
/* 3D0D4 8003C4D4 03201025 */  or         $v0, $t9, $zero
.L8003C4D8:
/* 3D0D8 8003C4D8 A022E5D1 */  sb         $v0, %lo(D_8019E5D1)($at)
/* 3D0DC 8003C4DC 24010004 */  addiu      $at, $zero, 0x4
/* 3D0E0 8003C4E0 14410056 */  bne        $v0, $at, .L8003C63C
/* 3D0E4 8003C4E4 3C03801A */   lui       $v1, %hi(D_8019E5CE)
/* 3D0E8 8003C4E8 8063E5CE */  lb         $v1, %lo(D_8019E5CE)($v1)
/* 3D0EC 8003C4EC 3C01801A */  lui        $at, %hi(D_8019E5D1)
/* 3D0F0 8003C4F0 A020E5D1 */  sb         $zero, %lo(D_8019E5D1)($at)
/* 3D0F4 8003C4F4 24010001 */  addiu      $at, $zero, 0x1
/* 3D0F8 8003C4F8 14610027 */  bne        $v1, $at, .L8003C598
/* 3D0FC 8003C4FC 3C06801A */   lui       $a2, %hi(D_8019E5BC)
/* 3D100 8003C500 24C6E5BC */  addiu      $a2, $a2, %lo(D_8019E5BC)
/* 3D104 8003C504 84C40000 */  lh         $a0, 0x0($a2)
/* 3D108 8003C508 24010009 */  addiu      $at, $zero, 0x9
/* 3D10C 8003C50C 3C02801A */  lui        $v0, %hi(D_8019E4C0)
/* 3D110 8003C510 10810004 */  beq        $a0, $at, .L8003C524
/* 3D114 8003C514 2442E4C0 */   addiu     $v0, $v0, %lo(D_8019E4C0)
/* 3D118 8003C518 24010013 */  addiu      $at, $zero, 0x13
/* 3D11C 8003C51C 5481000B */  bnel       $a0, $at, .L8003C54C
/* 3D120 8003C520 24010019 */   addiu     $at, $zero, 0x19
.L8003C524:
/* 3D124 8003C524 84480000 */  lh         $t0, 0x0($v0)
/* 3D128 8003C528 844A0002 */  lh         $t2, 0x2($v0)
/* 3D12C 8003C52C 00836021 */  addu       $t4, $a0, $v1
/* 3D130 8003C530 2509FF8B */  addiu      $t1, $t0, -0x75
/* 3D134 8003C534 254B0006 */  addiu      $t3, $t2, 0x6
/* 3D138 8003C538 A4490000 */  sh         $t1, 0x0($v0)
/* 3D13C 8003C53C A44B0002 */  sh         $t3, 0x2($v0)
/* 3D140 8003C540 10000012 */  b          .L8003C58C
/* 3D144 8003C544 A4CC0000 */   sh        $t4, 0x0($a2)
/* 3D148 8003C548 24010019 */  addiu      $at, $zero, 0x19
.L8003C54C:
/* 3D14C 8003C54C 14810008 */  bne        $a0, $at, .L8003C570
/* 3D150 8003C550 3C02801A */   lui       $v0, %hi(D_8019E4C0)
/* 3D154 8003C554 2442E4C0 */  addiu      $v0, $v0, %lo(D_8019E4C0)
/* 3D158 8003C558 240D0069 */  addiu      $t5, $zero, 0x69
/* 3D15C 8003C55C 240E0049 */  addiu      $t6, $zero, 0x49
/* 3D160 8003C560 A44D0000 */  sh         $t5, 0x0($v0)
/* 3D164 8003C564 A44E0002 */  sh         $t6, 0x2($v0)
/* 3D168 8003C568 10000008 */  b          .L8003C58C
/* 3D16C 8003C56C A4C00000 */   sh        $zero, 0x0($a2)
.L8003C570:
/* 3D170 8003C570 3C02801A */  lui        $v0, %hi(D_8019E4C0)
/* 3D174 8003C574 2442E4C0 */  addiu      $v0, $v0, %lo(D_8019E4C0)
/* 3D178 8003C578 844F0000 */  lh         $t7, 0x0($v0)
/* 3D17C 8003C57C 0083C821 */  addu       $t9, $a0, $v1
/* 3D180 8003C580 A4D90000 */  sh         $t9, 0x0($a2)
/* 3D184 8003C584 25F8000D */  addiu      $t8, $t7, 0xD
/* 3D188 8003C588 A4580000 */  sh         $t8, 0x0($v0)
.L8003C58C:
/* 3D18C 8003C58C 3C01801A */  lui        $at, %hi(D_8019E5D0)
/* 3D190 8003C590 1000002A */  b          .L8003C63C
/* 3D194 8003C594 A023E5D0 */   sb        $v1, %lo(D_8019E5D0)($at)
.L8003C598:
/* 3D198 8003C598 2401FFFF */  addiu      $at, $zero, -0x1
/* 3D19C 8003C59C 14610027 */  bne        $v1, $at, .L8003C63C
/* 3D1A0 8003C5A0 3C06801A */   lui       $a2, %hi(D_8019E5BC)
/* 3D1A4 8003C5A4 24C6E5BC */  addiu      $a2, $a2, %lo(D_8019E5BC)
/* 3D1A8 8003C5A8 84C40000 */  lh         $a0, 0x0($a2)
/* 3D1AC 8003C5AC 3C02801A */  lui        $v0, %hi(D_8019E4C0)
/* 3D1B0 8003C5B0 2442E4C0 */  addiu      $v0, $v0, %lo(D_8019E4C0)
/* 3D1B4 8003C5B4 14800009 */  bnez       $a0, .L8003C5DC
/* 3D1B8 8003C5B8 240C0019 */   addiu     $t4, $zero, 0x19
/* 3D1BC 8003C5BC 84480000 */  lh         $t0, 0x0($v0)
/* 3D1C0 8003C5C0 844A0002 */  lh         $t2, 0x2($v0)
/* 3D1C4 8003C5C4 A4CC0000 */  sh         $t4, 0x0($a2)
/* 3D1C8 8003C5C8 25090041 */  addiu      $t1, $t0, 0x41
/* 3D1CC 8003C5CC 254B000C */  addiu      $t3, $t2, 0xC
/* 3D1D0 8003C5D0 A4490000 */  sh         $t1, 0x0($v0)
/* 3D1D4 8003C5D4 10000017 */  b          .L8003C634
/* 3D1D8 8003C5D8 A44B0002 */   sh        $t3, 0x2($v0)
.L8003C5DC:
/* 3D1DC 8003C5DC 2401000A */  addiu      $at, $zero, 0xA
/* 3D1E0 8003C5E0 10810003 */  beq        $a0, $at, .L8003C5F0
/* 3D1E4 8003C5E4 24010014 */   addiu     $at, $zero, 0x14
/* 3D1E8 8003C5E8 1481000C */  bne        $a0, $at, .L8003C61C
/* 3D1EC 8003C5EC 3C02801A */   lui       $v0, %hi(D_8019E4C0)
.L8003C5F0:
/* 3D1F0 8003C5F0 3C02801A */  lui        $v0, %hi(D_8019E4C0)
/* 3D1F4 8003C5F4 2442E4C0 */  addiu      $v0, $v0, %lo(D_8019E4C0)
/* 3D1F8 8003C5F8 844D0000 */  lh         $t5, 0x0($v0)
/* 3D1FC 8003C5FC 844F0002 */  lh         $t7, 0x2($v0)
/* 3D200 8003C600 0083C821 */  addu       $t9, $a0, $v1
/* 3D204 8003C604 25AE0075 */  addiu      $t6, $t5, 0x75
/* 3D208 8003C608 25F8FFFA */  addiu      $t8, $t7, -0x6
/* 3D20C 8003C60C A44E0000 */  sh         $t6, 0x0($v0)
/* 3D210 8003C610 A4580002 */  sh         $t8, 0x2($v0)
/* 3D214 8003C614 10000007 */  b          .L8003C634
/* 3D218 8003C618 A4D90000 */   sh        $t9, 0x0($a2)
.L8003C61C:
/* 3D21C 8003C61C 2442E4C0 */  addiu      $v0, $v0, %lo(D_8019E4C0)
/* 3D220 8003C620 84480000 */  lh         $t0, 0x0($v0)
/* 3D224 8003C624 00835021 */  addu       $t2, $a0, $v1
/* 3D228 8003C628 A4CA0000 */  sh         $t2, 0x0($a2)
/* 3D22C 8003C62C 2509FFF3 */  addiu      $t1, $t0, -0xD
/* 3D230 8003C630 A4490000 */  sh         $t1, 0x0($v0)
.L8003C634:
/* 3D234 8003C634 3C01801A */  lui        $at, %hi(D_8019E5D0)
/* 3D238 8003C638 A023E5D0 */  sb         $v1, %lo(D_8019E5D0)($at)
.L8003C63C:
/* 3D23C 8003C63C 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 3D240 8003C640 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 3D244 8003C644 3C06801A */  lui        $a2, %hi(D_8019E5BC)
/* 3D248 8003C648 24C6E5BC */  addiu      $a2, $a2, %lo(D_8019E5BC)
/* 3D24C 8003C64C 304B8000 */  andi       $t3, $v0, 0x8000
/* 3D250 8003C650 15600003 */  bnez       $t3, .L8003C660
/* 3D254 8003C654 304C2000 */   andi      $t4, $v0, 0x2000
/* 3D258 8003C658 11800026 */  beqz       $t4, .L8003C6F4
/* 3D25C 8003C65C 304A4000 */   andi      $t2, $v0, 0x4000
.L8003C660:
/* 3D260 8003C660 3C0D801A */  lui        $t5, %hi(D_8019E4A2)
/* 3D264 8003C664 95ADE4A2 */  lhu        $t5, %lo(D_8019E4A2)($t5)
/* 3D268 8003C668 3C018011 */  lui        $at, %hi(D_80109BDC)
/* 3D26C 8003C66C 00002825 */  or         $a1, $zero, $zero
/* 3D270 8003C670 A42D9BDC */  sh         $t5, %lo(D_80109BDC)($at)
/* 3D274 8003C674 0C000170 */  jal        func_800005C0
/* 3D278 8003C678 90C40001 */   lbu       $a0, 0x1($a2)
/* 3D27C 8003C67C 3C03801A */  lui        $v1, %hi(D_8019E5B8)
/* 3D280 8003C680 3C05801A */  lui        $a1, %hi(D_8019E5BA)
/* 3D284 8003C684 3002FFFF */  andi       $v0, $zero, 0xFFFF
/* 3D288 8003C688 24A5E5BA */  addiu      $a1, $a1, %lo(D_8019E5BA)
/* 3D28C 8003C68C 2463E5B8 */  addiu      $v1, $v1, %lo(D_8019E5B8)
/* 3D290 8003C690 28410005 */  slti       $at, $v0, 0x5
/* 3D294 8003C694 A4600000 */  sh         $zero, 0x0($v1)
/* 3D298 8003C698 10200013 */  beqz       $at, .L8003C6E8
/* 3D29C 8003C69C A4A00000 */   sh        $zero, 0x0($a1)
/* 3D2A0 8003C6A0 3C04801A */  lui        $a0, %hi(D_8019E5BC)
/* 3D2A4 8003C6A4 3C038009 */  lui        $v1, %hi(D_8008F5DC)
/* 3D2A8 8003C6A8 2463F5DC */  addiu      $v1, $v1, %lo(D_8008F5DC)
/* 3D2AC 8003C6AC 8484E5BC */  lh         $a0, %lo(D_8019E5BC)($a0)
.L8003C6B0:
/* 3D2B0 8003C6B0 00627821 */  addu       $t7, $v1, $v0
/* 3D2B4 8003C6B4 91F80000 */  lbu        $t8, 0x0($t7)
/* 3D2B8 8003C6B8 14980006 */  bne        $a0, $t8, .L8003C6D4
/* 3D2BC 8003C6BC 0002C840 */   sll       $t9, $v0, 1
/* 3D2C0 8003C6C0 3C088009 */  lui        $t0, %hi(D_8008F5E4)
/* 3D2C4 8003C6C4 01194021 */  addu       $t0, $t0, $t9
/* 3D2C8 8003C6C8 9508F5E4 */  lhu        $t0, %lo(D_8008F5E4)($t0)
/* 3D2CC 8003C6CC 10000006 */  b          .L8003C6E8
/* 3D2D0 8003C6D0 A4A80000 */   sh        $t0, 0x0($a1)
.L8003C6D4:
/* 3D2D4 8003C6D4 24420001 */  addiu      $v0, $v0, 0x1
/* 3D2D8 8003C6D8 3049FFFF */  andi       $t1, $v0, 0xFFFF
/* 3D2DC 8003C6DC 29210005 */  slti       $at, $t1, 0x5
/* 3D2E0 8003C6E0 1420FFF3 */  bnez       $at, .L8003C6B0
/* 3D2E4 8003C6E4 01201025 */   or        $v0, $t1, $zero
.L8003C6E8:
/* 3D2E8 8003C6E8 3C01801A */  lui        $at, %hi(D_8019E4B8)
/* 3D2EC 8003C6EC 10000010 */  b          .L8003C730
/* 3D2F0 8003C6F0 AC20E4B8 */   sw        $zero, %lo(D_8019E4B8)($at)
.L8003C6F4:
/* 3D2F4 8003C6F4 1140000E */  beqz       $t2, .L8003C730
/* 3D2F8 8003C6F8 3C0B801A */   lui       $t3, %hi(D_8019E4B8)
/* 3D2FC 8003C6FC 8D6BE4B8 */  lw         $t3, %lo(D_8019E4B8)($t3)
/* 3D300 8003C700 3C018009 */  lui        $at, %hi(D_8008EE50)
/* 3D304 8003C704 3C0C8011 */  lui        $t4, %hi(D_80109BD0)
/* 3D308 8003C708 15600003 */  bnez       $t3, .L8003C718
/* 3D30C 8003C70C 00000000 */   nop
/* 3D310 8003C710 10000007 */  b          .L8003C730
/* 3D314 8003C714 A020EE50 */   sb        $zero, %lo(D_8008EE50)($at)
.L8003C718:
/* 3D318 8003C718 8D8C9BD0 */  lw         $t4, %lo(D_80109BD0)($t4)
/* 3D31C 8003C71C 3C018009 */  lui        $at, %hi(D_8008EE50)
/* 3D320 8003C720 8D8D002C */  lw         $t5, 0x2C($t4)
/* 3D324 8003C724 11A00002 */  beqz       $t5, .L8003C730
/* 3D328 8003C728 00000000 */   nop
/* 3D32C 8003C72C A020EE50 */  sb         $zero, %lo(D_8008EE50)($at)
.L8003C730:
/* 3D330 8003C730 3C038009 */  lui        $v1, %hi(D_8008EE50)
/* 3D334 8003C734 8063EE50 */  lb         $v1, %lo(D_8008EE50)($v1)
/* 3D338 8003C738 1460000F */  bnez       $v1, .L8003C778
/* 3D33C 8003C73C 3C018009 */   lui       $at, %hi(D_8009764C)
/* 3D340 8003C740 3C07801A */  lui        $a3, %hi(D_8019E4A2)
/* 3D344 8003C744 94E7E4A2 */  lhu        $a3, %lo(D_8019E4A2)($a3)
/* 3D348 8003C748 C42C764C */  lwc1       $f12, %lo(D_8009764C)($at)
/* 3D34C 8003C74C 00002825 */  or         $a1, $zero, $zero
/* 3D350 8003C750 0C00122C */  jal        func_800048B0
/* 3D354 8003C754 00003025 */   or        $a2, $zero, $zero
/* 3D358 8003C758 00021E00 */  sll        $v1, $v0, 24
/* 3D35C 8003C75C 00037603 */  sra        $t6, $v1, 24
/* 3D360 8003C760 3C018009 */  lui        $at, %hi(D_8008EE50)
/* 3D364 8003C764 11C00004 */  beqz       $t6, .L8003C778
/* 3D368 8003C768 A02EEE50 */   sb        $t6, %lo(D_8008EE50)($at)
/* 3D36C 8003C76C 240F0001 */  addiu      $t7, $zero, 0x1
/* 3D370 8003C770 3C01801A */  lui        $at, %hi(D_8019E4B8)
/* 3D374 8003C774 AC2FE4B8 */  sw         $t7, %lo(D_8019E4B8)($at)
.L8003C778:
/* 3D378 8003C778 8FB8001C */  lw         $t8, 0x1C($sp)
/* 3D37C 8003C77C 8FB90020 */  lw         $t9, 0x20($sp)
/* 3D380 8003C780 AF380000 */  sw         $t8, 0x0($t9)
/* 3D384 8003C784 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D388 8003C788 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3D38C 8003C78C 03E00008 */  jr         $ra
/* 3D390 8003C790 00000000 */   nop

glabel func_8003C794
/* 3D394 8003C794 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D398 8003C798 3C18801A */  lui        $t8, %hi(D_8019E5C4)
/* 3D39C 8003C79C 8F18E5C4 */  lw         $t8, %lo(D_8019E5C4)($t8)
/* 3D3A0 8003C7A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D3A4 8003C7A4 AFA40020 */  sw         $a0, 0x20($sp)
/* 3D3A8 8003C7A8 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3D3AC 8003C7AC 3C01801A */  lui        $at, %hi(D_8019E5D2)
/* 3D3B0 8003C7B0 17000003 */  bnez       $t8, .L8003C7C0
/* 3D3B4 8003C7B4 AFAF001C */   sw        $t7, 0x1C($sp)
/* 3D3B8 8003C7B8 10000006 */  b          .L8003C7D4
/* 3D3BC 8003C7BC 00001825 */   or        $v1, $zero, $zero
.L8003C7C0:
/* 3D3C0 8003C7C0 3C03801A */  lui        $v1, %hi(D_8019E5D2)
/* 3D3C4 8003C7C4 9063E5D2 */  lbu        $v1, %lo(D_8019E5D2)($v1)
/* 3D3C8 8003C7C8 24630001 */  addiu      $v1, $v1, 0x1
/* 3D3CC 8003C7CC 307900FF */  andi       $t9, $v1, 0xFF
/* 3D3D0 8003C7D0 03201825 */  or         $v1, $t9, $zero
.L8003C7D4:
/* 3D3D4 8003C7D4 A023E5D2 */  sb         $v1, %lo(D_8019E5D2)($at)
/* 3D3D8 8003C7D8 24010005 */  addiu      $at, $zero, 0x5
/* 3D3DC 8003C7DC 14610029 */  bne        $v1, $at, .L8003C884
/* 3D3E0 8003C7E0 3C02801A */   lui       $v0, %hi(D_8019E5CE)
/* 3D3E4 8003C7E4 8042E5CE */  lb         $v0, %lo(D_8019E5CE)($v0)
/* 3D3E8 8003C7E8 3C01801A */  lui        $at, %hi(D_8019E5D2)
/* 3D3EC 8003C7EC A020E5D2 */  sb         $zero, %lo(D_8019E5D2)($at)
/* 3D3F0 8003C7F0 24010001 */  addiu      $at, $zero, 0x1
/* 3D3F4 8003C7F4 14410011 */  bne        $v0, $at, .L8003C83C
/* 3D3F8 8003C7F8 3C06801A */   lui       $a2, %hi(D_8019E5BE)
/* 3D3FC 8003C7FC 24C6E5BE */  addiu      $a2, $a2, %lo(D_8019E5BE)
/* 3D400 8003C800 84C30000 */  lh         $v1, 0x0($a2)
/* 3D404 8003C804 2401002A */  addiu      $at, $zero, 0x2A
/* 3D408 8003C808 14610003 */  bne        $v1, $at, .L8003C818
/* 3D40C 8003C80C 00624021 */   addu      $t0, $v1, $v0
/* 3D410 8003C810 10000007 */  b          .L8003C830
/* 3D414 8003C814 A4C00000 */   sh        $zero, 0x0($a2)
.L8003C818:
/* 3D418 8003C818 A4C80000 */  sh         $t0, 0x0($a2)
/* 3D41C 8003C81C 84C30000 */  lh         $v1, 0x0($a2)
/* 3D420 8003C820 24010003 */  addiu      $at, $zero, 0x3
/* 3D424 8003C824 14610002 */  bne        $v1, $at, .L8003C830
/* 3D428 8003C828 00624821 */   addu      $t1, $v1, $v0
/* 3D42C 8003C82C A4C90000 */  sh         $t1, 0x0($a2)
.L8003C830:
/* 3D430 8003C830 3C01801A */  lui        $at, %hi(D_8019E5D0)
/* 3D434 8003C834 10000013 */  b          .L8003C884
/* 3D438 8003C838 A022E5D0 */   sb        $v0, %lo(D_8019E5D0)($at)
.L8003C83C:
/* 3D43C 8003C83C 2401FFFF */  addiu      $at, $zero, -0x1
/* 3D440 8003C840 14410010 */  bne        $v0, $at, .L8003C884
/* 3D444 8003C844 3C06801A */   lui       $a2, %hi(D_8019E5BE)
/* 3D448 8003C848 24C6E5BE */  addiu      $a2, $a2, %lo(D_8019E5BE)
/* 3D44C 8003C84C 84C30000 */  lh         $v1, 0x0($a2)
/* 3D450 8003C850 240A002A */  addiu      $t2, $zero, 0x2A
/* 3D454 8003C854 14600003 */  bnez       $v1, .L8003C864
/* 3D458 8003C858 00625821 */   addu      $t3, $v1, $v0
/* 3D45C 8003C85C 10000007 */  b          .L8003C87C
/* 3D460 8003C860 A4CA0000 */   sh        $t2, 0x0($a2)
.L8003C864:
/* 3D464 8003C864 A4CB0000 */  sh         $t3, 0x0($a2)
/* 3D468 8003C868 84C30000 */  lh         $v1, 0x0($a2)
/* 3D46C 8003C86C 24010003 */  addiu      $at, $zero, 0x3
/* 3D470 8003C870 14610002 */  bne        $v1, $at, .L8003C87C
/* 3D474 8003C874 00626021 */   addu      $t4, $v1, $v0
/* 3D478 8003C878 A4CC0000 */  sh         $t4, 0x0($a2)
.L8003C87C:
/* 3D47C 8003C87C 3C01801A */  lui        $at, %hi(D_8019E5D0)
/* 3D480 8003C880 A022E5D0 */  sb         $v0, %lo(D_8019E5D0)($at)
.L8003C884:
/* 3D484 8003C884 3C02801A */  lui        $v0, %hi(D_8019EE02)
/* 3D488 8003C888 9442EE02 */  lhu        $v0, %lo(D_8019EE02)($v0)
/* 3D48C 8003C88C 3C06801A */  lui        $a2, %hi(D_8019E5BE)
/* 3D490 8003C890 24C6E5BE */  addiu      $a2, $a2, %lo(D_8019E5BE)
/* 3D494 8003C894 304D8000 */  andi       $t5, $v0, 0x8000
/* 3D498 8003C898 15A00003 */  bnez       $t5, .L8003C8A8
/* 3D49C 8003C89C 304E2000 */   andi      $t6, $v0, 0x2000
/* 3D4A0 8003C8A0 11C00034 */  beqz       $t6, .L8003C974
/* 3D4A4 8003C8A4 304A4000 */   andi      $t2, $v0, 0x4000
.L8003C8A8:
/* 3D4A8 8003C8A8 90C40001 */  lbu        $a0, 0x1($a2)
/* 3D4AC 8003C8AC 0C0004F0 */  jal        func_800013C0
/* 3D4B0 8003C8B0 24050004 */   addiu     $a1, $zero, 0x4
/* 3D4B4 8003C8B4 3C06801A */  lui        $a2, %hi(D_8019E5BE)
/* 3D4B8 8003C8B8 24C6E5BE */  addiu      $a2, $a2, %lo(D_8019E5BE)
/* 3D4BC 8003C8BC 84C30000 */  lh         $v1, 0x0($a2)
/* 3D4C0 8003C8C0 24010002 */  addiu      $at, $zero, 0x2
/* 3D4C4 8003C8C4 3C04801A */  lui        $a0, %hi(D_8019E5CC)
/* 3D4C8 8003C8C8 14610006 */  bne        $v1, $at, .L8003C8E4
/* 3D4CC 8003C8CC 2484E5CC */   addiu     $a0, $a0, %lo(D_8019E5CC)
/* 3D4D0 8003C8D0 3C013E80 */  lui        $at, (0x3E800000 >> 16)
/* 3D4D4 8003C8D4 44812000 */  mtc1       $at, $f4
/* 3D4D8 8003C8D8 3C018011 */  lui        $at, %hi(D_80109C9C)
/* 3D4DC 8003C8DC 1000000C */  b          .L8003C910
/* 3D4E0 8003C8E0 E4249C9C */   swc1      $f4, %lo(D_80109C9C)($at)
.L8003C8E4:
/* 3D4E4 8003C8E4 24010018 */  addiu      $at, $zero, 0x18
/* 3D4E8 8003C8E8 14610005 */  bne        $v1, $at, .L8003C900
/* 3D4EC 8003C8EC 3C013F00 */   lui       $at, (0x3F000000 >> 16)
/* 3D4F0 8003C8F0 44813000 */  mtc1       $at, $f6
/* 3D4F4 8003C8F4 3C018011 */  lui        $at, %hi(D_80109C9C)
/* 3D4F8 8003C8F8 10000005 */  b          .L8003C910
/* 3D4FC 8003C8FC E4269C9C */   swc1      $f6, %lo(D_80109C9C)($at)
.L8003C900:
/* 3D500 8003C900 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 3D504 8003C904 44814000 */  mtc1       $at, $f8
/* 3D508 8003C908 3C018011 */  lui        $at, %hi(D_80109C9C)
/* 3D50C 8003C90C E4289C9C */  swc1       $f8, %lo(D_80109C9C)($at)
.L8003C910:
/* 3D510 8003C910 3C05801A */  lui        $a1, %hi(D_8019E5CD)
/* 3D514 8003C914 300200FF */  andi       $v0, $zero, 0xFF
/* 3D518 8003C918 24A5E5CD */  addiu      $a1, $a1, %lo(D_8019E5CD)
/* 3D51C 8003C91C 28410017 */  slti       $at, $v0, 0x17
/* 3D520 8003C920 A0A00000 */  sb         $zero, 0x0($a1)
/* 3D524 8003C924 10200010 */  beqz       $at, .L8003C968
/* 3D528 8003C928 A0800000 */   sb        $zero, 0x0($a0)
/* 3D52C 8003C92C 3C048009 */  lui        $a0, %hi(D_8008F5F0)
/* 3D530 8003C930 2484F5F0 */  addiu      $a0, $a0, %lo(D_8008F5F0)
.L8003C934:
/* 3D534 8003C934 0082C021 */  addu       $t8, $a0, $v0
/* 3D538 8003C938 93190000 */  lbu        $t9, 0x0($t8)
/* 3D53C 8003C93C 14790005 */  bne        $v1, $t9, .L8003C954
/* 3D540 8003C940 3C088009 */   lui       $t0, %hi(D_8008F608)
/* 3D544 8003C944 01024021 */  addu       $t0, $t0, $v0
/* 3D548 8003C948 9108F608 */  lbu        $t0, %lo(D_8008F608)($t0)
/* 3D54C 8003C94C 10000006 */  b          .L8003C968
/* 3D550 8003C950 A0A80000 */   sb        $t0, 0x0($a1)
.L8003C954:
/* 3D554 8003C954 24420001 */  addiu      $v0, $v0, 0x1
/* 3D558 8003C958 304900FF */  andi       $t1, $v0, 0xFF
/* 3D55C 8003C95C 29210017 */  slti       $at, $t1, 0x17
/* 3D560 8003C960 1420FFF4 */  bnez       $at, .L8003C934
/* 3D564 8003C964 01201025 */   or        $v0, $t1, $zero
.L8003C968:
/* 3D568 8003C968 3C01801A */  lui        $at, %hi(D_8019E4BC)
/* 3D56C 8003C96C 1000001B */  b          .L8003C9DC
/* 3D570 8003C970 AC20E4BC */   sw        $zero, %lo(D_8019E4BC)($at)
.L8003C974:
/* 3D574 8003C974 11400019 */  beqz       $t2, .L8003C9DC
/* 3D578 8003C978 3C0B801A */   lui       $t3, %hi(D_8019E4BC)
/* 3D57C 8003C97C 8D6BE4BC */  lw         $t3, %lo(D_8019E4BC)($t3)
/* 3D580 8003C980 3C048011 */  lui        $a0, %hi(D_80109C88)
/* 3D584 8003C984 1560000B */  bnez       $t3, .L8003C9B4
/* 3D588 8003C988 00000000 */   nop
/* 3D58C 8003C98C 0C000506 */  jal        func_80001418
/* 3D590 8003C990 24040004 */   addiu     $a0, $zero, 0x4
/* 3D594 8003C994 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 3D598 8003C998 44815000 */  mtc1       $at, $f10
/* 3D59C 8003C99C 3C018011 */  lui        $at, %hi(D_80109C9C)
/* 3D5A0 8003C9A0 240C0001 */  addiu      $t4, $zero, 0x1
/* 3D5A4 8003C9A4 E42A9C9C */  swc1       $f10, %lo(D_80109C9C)($at)
/* 3D5A8 8003C9A8 3C01801A */  lui        $at, %hi(D_8019E4BC)
/* 3D5AC 8003C9AC 1000000B */  b          .L8003C9DC
/* 3D5B0 8003C9B0 AC2CE4BC */   sw        $t4, %lo(D_8019E4BC)($at)
.L8003C9B4:
/* 3D5B4 8003C9B4 0C019E2C */  jal        func_800678B0
/* 3D5B8 8003C9B8 8C849C88 */   lw        $a0, %lo(D_80109C88)($a0)
/* 3D5BC 8003C9BC 50400008 */  beql       $v0, $zero, .L8003C9E0
/* 3D5C0 8003C9C0 8FAD001C */   lw        $t5, 0x1C($sp)
/* 3D5C4 8003C9C4 0C000506 */  jal        func_80001418
/* 3D5C8 8003C9C8 24040004 */   addiu     $a0, $zero, 0x4
/* 3D5CC 8003C9CC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 3D5D0 8003C9D0 44818000 */  mtc1       $at, $f16
/* 3D5D4 8003C9D4 3C018011 */  lui        $at, %hi(D_80109C9C)
/* 3D5D8 8003C9D8 E4309C9C */  swc1       $f16, %lo(D_80109C9C)($at)
.L8003C9DC:
/* 3D5DC 8003C9DC 8FAD001C */  lw         $t5, 0x1C($sp)
.L8003C9E0:
/* 3D5E0 8003C9E0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 3D5E4 8003C9E4 ADCD0000 */  sw         $t5, 0x0($t6)
/* 3D5E8 8003C9E8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D5EC 8003C9EC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3D5F0 8003C9F0 03E00008 */  jr         $ra
/* 3D5F4 8003C9F4 00000000 */   nop

glabel func_8003C9F8
/* 3D5F8 8003C9F8 3C0F801A */  lui        $t7, %hi(D_8019E5C4)
/* 3D5FC 8003C9FC 8DEFE5C4 */  lw         $t7, %lo(D_8019E5C4)($t7)
/* 3D600 8003CA00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D604 8003CA04 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D608 8003CA08 AFA40020 */  sw         $a0, 0x20($sp)
/* 3D60C 8003CA0C 15E00004 */  bnez       $t7, .L8003CA20
/* 3D610 8003CA10 8C870000 */   lw        $a3, 0x0($a0)
/* 3D614 8003CA14 3C01801A */  lui        $at, %hi(D_8019E5D3)
/* 3D618 8003CA18 1000000C */  b          .L8003CA4C
/* 3D61C 8003CA1C A020E5D3 */   sb        $zero, %lo(D_8019E5D3)($at)
.L8003CA20:
/* 3D620 8003CA20 3C05801A */  lui        $a1, %hi(D_8019E5D3)
/* 3D624 8003CA24 90A5E5D3 */  lbu        $a1, %lo(D_8019E5D3)($a1)
/* 3D628 8003CA28 3C01801A */  lui        $at, %hi(D_8019E5D3)
/* 3D62C 8003CA2C 00002025 */  or         $a0, $zero, $zero
/* 3D630 8003CA30 24A50001 */  addiu      $a1, $a1, 0x1
/* 3D634 8003CA34 30B800FF */  andi       $t8, $a1, 0xFF
/* 3D638 8003CA38 03002825 */  or         $a1, $t8, $zero
/* 3D63C 8003CA3C A038E5D3 */  sb         $t8, %lo(D_8019E5D3)($at)
/* 3D640 8003CA40 0C00FA6E */  jal        func_8003E9B8
/* 3D644 8003CA44 AFA7001C */   sw        $a3, 0x1C($sp)
/* 3D648 8003CA48 8FA7001C */  lw         $a3, 0x1C($sp)
.L8003CA4C:
/* 3D64C 8003CA4C 3C068009 */  lui        $a2, %hi(D_8008EE40)
/* 3D650 8003CA50 94C6EE40 */  lhu        $a2, %lo(D_8008EE40)($a2)
/* 3D654 8003CA54 3C01FFAE */  lui        $at, (0xFFAE00A4 >> 16)
/* 3D658 8003CA58 342100A4 */  ori        $at, $at, (0xFFAE00A4 & 0xFFFF)
/* 3D65C 8003CA5C 0006CBC0 */  sll        $t9, $a2, 15
/* 3D660 8003CA60 0326C823 */  subu       $t9, $t9, $a2
/* 3D664 8003CA64 03213021 */  addu       $a2, $t9, $at
/* 3D668 8003CA68 24010064 */  addiu      $at, $zero, 0x64
/* 3D66C 8003CA6C 00C1001A */  div        $zero, $a2, $at
/* 3D670 8003CA70 00003012 */  mflo       $a2
/* 3D674 8003CA74 3C058011 */  lui        $a1, %hi(D_80109BC8)
/* 3D678 8003CA78 3C04801A */  lui        $a0, %hi(D_8019E4A0)
/* 3D67C 8003CA7C 2484E4A0 */  addiu      $a0, $a0, %lo(D_8019E4A0)
/* 3D680 8003CA80 24A59BC8 */  addiu      $a1, $a1, %lo(D_80109BC8)
/* 3D684 8003CA84 00001825 */  or         $v1, $zero, $zero
.L8003CA88:
/* 3D688 8003CA88 00034840 */  sll        $t1, $v1, 1
/* 3D68C 8003CA8C 00035940 */  sll        $t3, $v1, 5
/* 3D690 8003CA90 24630001 */  addiu      $v1, $v1, 0x1
/* 3D694 8003CA94 306D00FF */  andi       $t5, $v1, 0xFF
/* 3D698 8003CA98 00891021 */  addu       $v0, $a0, $t1
/* 3D69C 8003CA9C 00AB6021 */  addu       $t4, $a1, $t3
/* 3D6A0 8003CAA0 01A01825 */  or         $v1, $t5, $zero
/* 3D6A4 8003CAA4 A4460002 */  sh         $a2, 0x2($v0)
/* 3D6A8 8003CAA8 19A0FFF7 */  blez       $t5, .L8003CA88
/* 3D6AC 8003CAAC A5860014 */   sh        $a2, 0x14($t4)
/* 3D6B0 8003CAB0 8FAE0020 */  lw         $t6, 0x20($sp)
/* 3D6B4 8003CAB4 ADC70000 */  sw         $a3, 0x0($t6)
/* 3D6B8 8003CAB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D6BC 8003CABC 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3D6C0 8003CAC0 03E00008 */  jr         $ra
/* 3D6C4 8003CAC4 00000000 */   nop

glabel func_8003CAC8
/* 3D6C8 8003CAC8 3C0F801A */  lui        $t7, %hi(D_8019E5C4)
/* 3D6CC 8003CACC 8DEFE5C4 */  lw         $t7, %lo(D_8019E5C4)($t7)
/* 3D6D0 8003CAD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D6D4 8003CAD4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D6D8 8003CAD8 AFA40020 */  sw         $a0, 0x20($sp)
/* 3D6DC 8003CADC 15E00004 */  bnez       $t7, .L8003CAF0
/* 3D6E0 8003CAE0 8C9F0000 */   lw        $ra, 0x0($a0)
/* 3D6E4 8003CAE4 3C01801A */  lui        $at, %hi(D_8019E5D4)
/* 3D6E8 8003CAE8 1000000B */  b          .L8003CB18
/* 3D6EC 8003CAEC A420E5D4 */   sh        $zero, %lo(D_8019E5D4)($at)
.L8003CAF0:
/* 3D6F0 8003CAF0 3C02801A */  lui        $v0, %hi(D_8019E5D4)
/* 3D6F4 8003CAF4 9442E5D4 */  lhu        $v0, %lo(D_8019E5D4)($v0)
/* 3D6F8 8003CAF8 3C01801A */  lui        $at, %hi(D_8019E5D4)
/* 3D6FC 8003CAFC AFBF001C */  sw         $ra, 0x1C($sp)
/* 3D700 8003CB00 24580001 */  addiu      $t8, $v0, 0x1
/* 3D704 8003CB04 330500FF */  andi       $a1, $t8, 0xFF
/* 3D708 8003CB08 A438E5D4 */  sh         $t8, %lo(D_8019E5D4)($at)
/* 3D70C 8003CB0C 0C00FA6E */  jal        func_8003E9B8
/* 3D710 8003CB10 24040001 */   addiu     $a0, $zero, 0x1
/* 3D714 8003CB14 8FBF001C */  lw         $ra, 0x1C($sp)
.L8003CB18:
/* 3D718 8003CB18 3C088009 */  lui        $t0, %hi(D_8008EE42)
/* 3D71C 8003CB1C 9508EE42 */  lhu        $t0, %lo(D_8008EE42)($t0)
/* 3D720 8003CB20 3C01FFAE */  lui        $at, (0xFFAE00A4 >> 16)
/* 3D724 8003CB24 342100A4 */  ori        $at, $at, (0xFFAE00A4 & 0xFFFF)
/* 3D728 8003CB28 0008CBC0 */  sll        $t9, $t0, 15
/* 3D72C 8003CB2C 0328C823 */  subu       $t9, $t9, $t0
/* 3D730 8003CB30 03214021 */  addu       $t0, $t9, $at
/* 3D734 8003CB34 24010064 */  addiu      $at, $zero, 0x64
/* 3D738 8003CB38 0101001A */  div        $zero, $t0, $at
/* 3D73C 8003CB3C 00007012 */  mflo       $t6
/* 3D740 8003CB40 000E7C00 */  sll        $t7, $t6, 16
/* 3D744 8003CB44 000FC403 */  sra        $t8, $t7, 16
/* 3D748 8003CB48 3C068011 */  lui        $a2, %hi(D_80109C28)
/* 3D74C 8003CB4C 3C05801A */  lui        $a1, %hi(D_8019E4A0)
/* 3D750 8003CB50 03004025 */  or         $t0, $t8, $zero
/* 3D754 8003CB54 24A5E4A0 */  addiu      $a1, $a1, %lo(D_8019E4A0)
/* 3D758 8003CB58 24C69C28 */  addiu      $a2, $a2, %lo(D_80109C28)
/* 3D75C 8003CB5C 00001025 */  or         $v0, $zero, $zero
/* 3D760 8003CB60 00001825 */  or         $v1, $zero, $zero
/* 3D764 8003CB64 240D6E14 */  addiu      $t5, $zero, 0x6E14
/* 3D768 8003CB68 240C0005 */  addiu      $t4, $zero, 0x5
/* 3D76C 8003CB6C 240B000A */  addiu      $t3, $zero, 0xA
/* 3D770 8003CB70 240A0009 */  addiu      $t2, $zero, 0x9
/* 3D774 8003CB74 24090001 */  addiu      $t1, $zero, 0x1
/* 3D778 8003CB78 24070018 */  addiu      $a3, $zero, 0x18
.L8003CB7C:
/* 3D77C 8003CB7C 10600003 */  beqz       $v1, .L8003CB8C
/* 3D780 8003CB80 00000000 */   nop
/* 3D784 8003CB84 15230019 */  bne        $t1, $v1, .L8003CBEC
/* 3D788 8003CB88 00000000 */   nop
.L8003CB8C:
/* 3D78C 8003CB8C 010A0019 */  multu      $t0, $t2
/* 3D790 8003CB90 0002C840 */  sll        $t9, $v0, 1
/* 3D794 8003CB94 00B91821 */  addu       $v1, $a1, $t9
/* 3D798 8003CB98 00007012 */  mflo       $t6
/* 3D79C 8003CB9C 00000000 */  nop
/* 3D7A0 8003CBA0 00000000 */  nop
/* 3D7A4 8003CBA4 01CB001A */  div        $zero, $t6, $t3
/* 3D7A8 8003CBA8 00007812 */  mflo       $t7
/* 3D7AC 8003CBAC 31F8FFFF */  andi       $t8, $t7, 0xFFFF
/* 3D7B0 8003CBB0 15600002 */  bnez       $t3, .L8003CBBC
/* 3D7B4 8003CBB4 00000000 */   nop
/* 3D7B8 8003CBB8 0007000D */  break      7
.L8003CBBC:
/* 3D7BC 8003CBBC 2401FFFF */  addiu      $at, $zero, -0x1
/* 3D7C0 8003CBC0 15610004 */  bne        $t3, $at, .L8003CBD4
/* 3D7C4 8003CBC4 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 3D7C8 8003CBC8 15C10002 */  bne        $t6, $at, .L8003CBD4
/* 3D7CC 8003CBCC 00000000 */   nop
/* 3D7D0 8003CBD0 0006000D */  break      6
.L8003CBD4:
/* 3D7D4 8003CBD4 00470019 */  multu      $v0, $a3
/* 3D7D8 8003CBD8 A46F0004 */  sh         $t7, 0x4($v1)
/* 3D7DC 8003CBDC 0000C812 */  mflo       $t9
/* 3D7E0 8003CBE0 00D97021 */  addu       $t6, $a2, $t9
/* 3D7E4 8003CBE4 10000012 */  b          .L8003CC30
/* 3D7E8 8003CBE8 A5D8000C */   sh        $t8, 0xC($t6)
.L8003CBEC:
/* 3D7EC 8003CBEC 15830009 */  bne        $t4, $v1, .L8003CC14
/* 3D7F0 8003CBF0 01002025 */   or        $a0, $t0, $zero
/* 3D7F4 8003CBF4 00470019 */  multu      $v0, $a3
/* 3D7F8 8003CBF8 00027840 */  sll        $t7, $v0, 1
/* 3D7FC 8003CBFC 00AFC821 */  addu       $t9, $a1, $t7
/* 3D800 8003CC00 A7240004 */  sh         $a0, 0x4($t9)
/* 3D804 8003CC04 0000C012 */  mflo       $t8
/* 3D808 8003CC08 00D87021 */  addu       $t6, $a2, $t8
/* 3D80C 8003CC0C 10000008 */  b          .L8003CC30
/* 3D810 8003CC10 A5CD000C */   sh        $t5, 0xC($t6)
.L8003CC14:
/* 3D814 8003CC14 00470019 */  multu      $v0, $a3
/* 3D818 8003CC18 00027840 */  sll        $t7, $v0, 1
/* 3D81C 8003CC1C 00AF1821 */  addu       $v1, $a1, $t7
/* 3D820 8003CC20 A4640004 */  sh         $a0, 0x4($v1)
/* 3D824 8003CC24 0000C012 */  mflo       $t8
/* 3D828 8003CC28 00D87021 */  addu       $t6, $a2, $t8
/* 3D82C 8003CC2C A5C4000C */  sh         $a0, 0xC($t6)
.L8003CC30:
/* 3D830 8003CC30 24420001 */  addiu      $v0, $v0, 0x1
/* 3D834 8003CC34 304F00FF */  andi       $t7, $v0, 0xFF
/* 3D838 8003CC38 29E10007 */  slti       $at, $t7, 0x7
/* 3D83C 8003CC3C 01E01025 */  or         $v0, $t7, $zero
/* 3D840 8003CC40 1420FFCE */  bnez       $at, .L8003CB7C
/* 3D844 8003CC44 01E01825 */   or        $v1, $t7, $zero
/* 3D848 8003CC48 8FB80020 */  lw         $t8, 0x20($sp)
/* 3D84C 8003CC4C AF1F0000 */  sw         $ra, 0x0($t8)
/* 3D850 8003CC50 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D854 8003CC54 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3D858 8003CC58 03E00008 */  jr         $ra
/* 3D85C 8003CC5C 00000000 */   nop

glabel func_8003CC60
/* 3D860 8003CC60 3C03801A */  lui        $v1, %hi(D_8019E4B8)
/* 3D864 8003CC64 2463E4B8 */  addiu      $v1, $v1, %lo(D_8019E4B8)
/* 3D868 8003CC68 8C6E0000 */  lw         $t6, 0x0($v1)
/* 3D86C 8003CC6C 3C04801A */  lui        $a0, %hi(D_8019E5BA)
/* 3D870 8003CC70 2484E5BA */  addiu      $a0, $a0, %lo(D_8019E5BA)
/* 3D874 8003CC74 15C0000E */  bnez       $t6, .L8003CCB0
/* 3D878 8003CC78 00000000 */   nop
/* 3D87C 8003CC7C 94820000 */  lhu        $v0, 0x0($a0)
/* 3D880 8003CC80 3C05801A */  lui        $a1, %hi(D_8019E5B8)
/* 3D884 8003CC84 24A5E5B8 */  addiu      $a1, $a1, %lo(D_8019E5B8)
/* 3D888 8003CC88 10400009 */  beqz       $v0, .L8003CCB0
/* 3D88C 8003CC8C 00000000 */   nop
/* 3D890 8003CC90 94AF0000 */  lhu        $t7, 0x0($a1)
/* 3D894 8003CC94 24080001 */  addiu      $t0, $zero, 0x1
/* 3D898 8003CC98 25F80001 */  addiu      $t8, $t7, 0x1
/* 3D89C 8003CC9C 3319FFFF */  andi       $t9, $t8, 0xFFFF
/* 3D8A0 8003CCA0 14590003 */  bne        $v0, $t9, .L8003CCB0
/* 3D8A4 8003CCA4 A4B80000 */   sh        $t8, 0x0($a1)
/* 3D8A8 8003CCA8 AC680000 */  sw         $t0, 0x0($v1)
/* 3D8AC 8003CCAC A4800000 */  sh         $zero, 0x0($a0)
.L8003CCB0:
/* 3D8B0 8003CCB0 3C03801A */  lui        $v1, %hi(D_8019E4BC)
/* 3D8B4 8003CCB4 2463E4BC */  addiu      $v1, $v1, %lo(D_8019E4BC)
/* 3D8B8 8003CCB8 8C690000 */  lw         $t1, 0x0($v1)
/* 3D8BC 8003CCBC 3C04801A */  lui        $a0, %hi(D_8019E5CD)
/* 3D8C0 8003CCC0 2484E5CD */  addiu      $a0, $a0, %lo(D_8019E5CD)
/* 3D8C4 8003CCC4 1520000E */  bnez       $t1, .L8003CD00
/* 3D8C8 8003CCC8 00000000 */   nop
/* 3D8CC 8003CCCC 90820000 */  lbu        $v0, 0x0($a0)
/* 3D8D0 8003CCD0 3C05801A */  lui        $a1, %hi(D_8019E5CC)
/* 3D8D4 8003CCD4 24A5E5CC */  addiu      $a1, $a1, %lo(D_8019E5CC)
/* 3D8D8 8003CCD8 10400009 */  beqz       $v0, .L8003CD00
/* 3D8DC 8003CCDC 00000000 */   nop
/* 3D8E0 8003CCE0 90AA0000 */  lbu        $t2, 0x0($a1)
/* 3D8E4 8003CCE4 240D0001 */  addiu      $t5, $zero, 0x1
/* 3D8E8 8003CCE8 254B0001 */  addiu      $t3, $t2, 0x1
/* 3D8EC 8003CCEC 316C00FF */  andi       $t4, $t3, 0xFF
/* 3D8F0 8003CCF0 144C0003 */  bne        $v0, $t4, .L8003CD00
/* 3D8F4 8003CCF4 A0AB0000 */   sb        $t3, 0x0($a1)
/* 3D8F8 8003CCF8 AC6D0000 */  sw         $t5, 0x0($v1)
/* 3D8FC 8003CCFC A0800000 */  sb         $zero, 0x0($a0)
.L8003CD00:
/* 3D900 8003CD00 03E00008 */  jr         $ra
/* 3D904 8003CD04 00000000 */   nop

glabel func_8003CD08
/* 3D908 8003CD08 3C05801A */  lui        $a1, %hi(D_8019E5D6)
/* 3D90C 8003CD0C 3C02801A */  lui        $v0, %hi(D_8019E5CE)
/* 3D910 8003CD10 80A5E5D6 */  lb         $a1, %lo(D_8019E5D6)($a1)
/* 3D914 8003CD14 8042E5CE */  lb         $v0, %lo(D_8019E5CE)($v0)
/* 3D918 8003CD18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3D91C 8003CD1C AFBF0014 */  sw         $ra, 0x14($sp)
/* 3D920 8003CD20 00803025 */  or         $a2, $a0, $zero
/* 3D924 8003CD24 10A20018 */  beq        $a1, $v0, .L8003CD88
/* 3D928 8003CD28 8C830000 */   lw        $v1, 0x0($a0)
/* 3D92C 8003CD2C 24010001 */  addiu      $at, $zero, 0x1
/* 3D930 8003CD30 10410004 */  beq        $v0, $at, .L8003CD44
/* 3D934 8003CD34 3C0E8009 */   lui       $t6, %hi(D_8008EE54)
/* 3D938 8003CD38 2401FFFF */  addiu      $at, $zero, -0x1
/* 3D93C 8003CD3C 1441000E */  bne        $v0, $at, .L8003CD78
/* 3D940 8003CD40 00000000 */   nop
.L8003CD44:
/* 3D944 8003CD44 81CEEE54 */  lb         $t6, %lo(D_8008EE54)($t6)
/* 3D948 8003CD48 3C018009 */  lui        $at, %hi(D_8008EE54)
/* 3D94C 8003CD4C 24040028 */  addiu      $a0, $zero, 0x28
/* 3D950 8003CD50 39CF0001 */  xori       $t7, $t6, 0x1
/* 3D954 8003CD54 A02FEE54 */  sb         $t7, %lo(D_8008EE54)($at)
/* 3D958 8003CD58 24050005 */  addiu      $a1, $zero, 0x5
/* 3D95C 8003CD5C AFA3001C */  sw         $v1, 0x1C($sp)
/* 3D960 8003CD60 0C0004F0 */  jal        func_800013C0
/* 3D964 8003CD64 AFA60020 */   sw        $a2, 0x20($sp)
/* 3D968 8003CD68 3C02801A */  lui        $v0, %hi(D_8019E5CE)
/* 3D96C 8003CD6C 8042E5CE */  lb         $v0, %lo(D_8019E5CE)($v0)
/* 3D970 8003CD70 8FA3001C */  lw         $v1, 0x1C($sp)
/* 3D974 8003CD74 8FA60020 */  lw         $a2, 0x20($sp)
.L8003CD78:
/* 3D978 8003CD78 3C01801A */  lui        $at, %hi(D_8019E5D0)
/* 3D97C 8003CD7C A022E5D0 */  sb         $v0, %lo(D_8019E5D0)($at)
/* 3D980 8003CD80 3C01801A */  lui        $at, %hi(D_8019E5D6)
/* 3D984 8003CD84 A022E5D6 */  sb         $v0, %lo(D_8019E5D6)($at)
.L8003CD88:
/* 3D988 8003CD88 3C198009 */  lui        $t9, %hi(D_8008EE54)
/* 3D98C 8003CD8C 8339EE54 */  lb         $t9, %lo(D_8008EE54)($t9)
/* 3D990 8003CD90 24080001 */  addiu      $t0, $zero, 0x1
/* 3D994 8003CD94 3C01801A */  lui        $at, %hi(D_8019E4A0)
/* 3D998 8003CD98 13200004 */  beqz       $t9, .L8003CDAC
/* 3D99C 8003CD9C 00000000 */   nop
/* 3D9A0 8003CDA0 3C01801A */  lui        $at, %hi(D_8019E4A0)
/* 3D9A4 8003CDA4 10000002 */  b          .L8003CDB0
/* 3D9A8 8003CDA8 A028E4A0 */   sb        $t0, %lo(D_8019E4A0)($at)
.L8003CDAC:
/* 3D9AC 8003CDAC A020E4A0 */  sb         $zero, %lo(D_8019E4A0)($at)
.L8003CDB0:
/* 3D9B0 8003CDB0 ACC30000 */  sw         $v1, 0x0($a2)
/* 3D9B4 8003CDB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3D9B8 8003CDB8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3D9BC 8003CDBC 03E00008 */  jr         $ra
/* 3D9C0 8003CDC0 00000000 */   nop

glabel func_8003CDC4
/* 3D9C4 8003CDC4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 3D9C8 8003CDC8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 3D9CC 8003CDCC AFB00018 */  sw         $s0, 0x18($sp)
/* 3D9D0 8003CDD0 AFA40028 */  sw         $a0, 0x28($sp)
/* 3D9D4 8003CDD4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3D9D8 8003CDD8 27B00024 */  addiu      $s0, $sp, 0x24
/* 3D9DC 8003CDDC 3C05801A */  lui        $a1, %hi(D_8019E4C8)
/* 3D9E0 8003CDE0 24A5E4C8 */  addiu      $a1, $a1, %lo(D_8019E4C8)
/* 3D9E4 8003CDE4 02002025 */  or         $a0, $s0, $zero
/* 3D9E8 8003CDE8 0C014F9F */  jal        func_80053E7C
/* 3D9EC 8003CDEC AFAF0024 */   sw        $t7, 0x24($sp)
/* 3D9F0 8003CDF0 3C05801A */  lui        $a1, %hi(D_8019E518)
/* 3D9F4 8003CDF4 24A5E518 */  addiu      $a1, $a1, %lo(D_8019E518)
/* 3D9F8 8003CDF8 0C014F9F */  jal        func_80053E7C
/* 3D9FC 8003CDFC 02002025 */   or        $a0, $s0, $zero
/* 3DA00 8003CE00 0C00F3B0 */  jal        func_8003CEC0
/* 3DA04 8003CE04 02002025 */   or        $a0, $s0, $zero
/* 3DA08 8003CE08 3C05801A */  lui        $a1, %hi(D_8019E4DC)
/* 3DA0C 8003CE0C 24A5E4DC */  addiu      $a1, $a1, %lo(D_8019E4DC)
/* 3DA10 8003CE10 0C014F9F */  jal        func_80053E7C
/* 3DA14 8003CE14 02002025 */   or        $a0, $s0, $zero
/* 3DA18 8003CE18 3C05801A */  lui        $a1, %hi(D_8019E4F0)
/* 3DA1C 8003CE1C 24A5E4F0 */  addiu      $a1, $a1, %lo(D_8019E4F0)
/* 3DA20 8003CE20 0C014F9F */  jal        func_80053E7C
/* 3DA24 8003CE24 02002025 */   or        $a0, $s0, $zero
/* 3DA28 8003CE28 3C05801A */  lui        $a1, %hi(D_8019E504)
/* 3DA2C 8003CE2C 24A5E504 */  addiu      $a1, $a1, %lo(D_8019E504)
/* 3DA30 8003CE30 0C014F9F */  jal        func_80053E7C
/* 3DA34 8003CE34 02002025 */   or        $a0, $s0, $zero
/* 3DA38 8003CE38 3C05801A */  lui        $a1, %hi(D_8019E52C)
/* 3DA3C 8003CE3C 24A5E52C */  addiu      $a1, $a1, %lo(D_8019E52C)
/* 3DA40 8003CE40 0C0150A4 */  jal        func_80054290
/* 3DA44 8003CE44 02002025 */   or        $a0, $s0, $zero
/* 3DA48 8003CE48 3C05801A */  lui        $a1, %hi(D_8019E540)
/* 3DA4C 8003CE4C 24A5E540 */  addiu      $a1, $a1, %lo(D_8019E540)
/* 3DA50 8003CE50 0C014F9F */  jal        func_80053E7C
/* 3DA54 8003CE54 02002025 */   or        $a0, $s0, $zero
/* 3DA58 8003CE58 3C05801A */  lui        $a1, %hi(D_8019E554)
/* 3DA5C 8003CE5C 24A5E554 */  addiu      $a1, $a1, %lo(D_8019E554)
/* 3DA60 8003CE60 0C014F9F */  jal        func_80053E7C
/* 3DA64 8003CE64 02002025 */   or        $a0, $s0, $zero
/* 3DA68 8003CE68 3C05801A */  lui        $a1, %hi(D_8019E568)
/* 3DA6C 8003CE6C 24A5E568 */  addiu      $a1, $a1, %lo(D_8019E568)
/* 3DA70 8003CE70 0C014F9F */  jal        func_80053E7C
/* 3DA74 8003CE74 02002025 */   or        $a0, $s0, $zero
/* 3DA78 8003CE78 3C18801A */  lui        $t8, %hi(D_8019E4B4)
/* 3DA7C 8003CE7C 8F18E4B4 */  lw         $t8, %lo(D_8019E4B4)($t8)
/* 3DA80 8003CE80 24010005 */  addiu      $at, $zero, 0x5
/* 3DA84 8003CE84 02002025 */  or         $a0, $s0, $zero
/* 3DA88 8003CE88 13010005 */  beq        $t8, $at, .L8003CEA0
/* 3DA8C 8003CE8C 3C05801A */   lui       $a1, %hi(D_8019EDE4)
/* 3DA90 8003CE90 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 3DA94 8003CE94 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 3DA98 8003CE98 0C015681 */  jal        func_80055A04
/* 3DA9C 8003CE9C 24A5EDE4 */   addiu     $a1, $a1, %lo(D_8019EDE4)
.L8003CEA0:
/* 3DAA0 8003CEA0 8FB90024 */  lw         $t9, 0x24($sp)
/* 3DAA4 8003CEA4 8FA80028 */  lw         $t0, 0x28($sp)
/* 3DAA8 8003CEA8 AD190000 */  sw         $t9, 0x0($t0)
/* 3DAAC 8003CEAC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 3DAB0 8003CEB0 8FB00018 */  lw         $s0, 0x18($sp)
/* 3DAB4 8003CEB4 27BD0028 */  addiu      $sp, $sp, 0x28
/* 3DAB8 8003CEB8 03E00008 */  jr         $ra
/* 3DABC 8003CEBC 00000000 */   nop

glabel func_8003CEC0
/* 3DAC0 8003CEC0 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* 3DAC4 8003CEC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3DAC8 8003CEC8 AFA400B8 */  sw         $a0, 0xB8($sp)
/* 3DACC 8003CECC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3DAD0 8003CED0 27A400B4 */  addiu      $a0, $sp, 0xB4
/* 3DAD4 8003CED4 0C01556D */  jal        func_800555B4
/* 3DAD8 8003CED8 AFAF00B4 */   sw        $t7, 0xB4($sp)
/* 3DADC 8003CEDC 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DAE0 8003CEE0 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
/* 3DAE4 8003CEE4 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
/* 3DAE8 8003CEE8 27190008 */  addiu      $t9, $t8, 0x8
/* 3DAEC 8003CEEC AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DAF0 8003CEF0 340F8000 */  ori        $t7, $zero, 0x8000
/* 3DAF4 8003CEF4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DAF8 8003CEF8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DAFC 8003CEFC 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DB00 8003CF00 3C0E8036 */  lui        $t6, %hi(D_803675F8)
/* 3DB04 8003CF04 3C0CFD10 */  lui        $t4, (0xFD100000 >> 16)
/* 3DB08 8003CF08 27190008 */  addiu      $t9, $t8, 0x8
/* 3DB0C 8003CF0C AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DB10 8003CF10 25CE75F8 */  addiu      $t6, $t6, %lo(D_803675F8)
/* 3DB14 8003CF14 AF0E0004 */  sw         $t6, 0x4($t8)
/* 3DB18 8003CF18 AF0C0000 */  sw         $t4, 0x0($t8)
/* 3DB1C 8003CF1C 8FAF00B4 */  lw         $t7, 0xB4($sp)
/* 3DB20 8003CF20 3C0DE800 */  lui        $t5, (0xE8000000 >> 16)
/* 3DB24 8003CF24 3C1FF500 */  lui        $ra, (0xF5000100 >> 16)
/* 3DB28 8003CF28 25F80008 */  addiu      $t8, $t7, 0x8
/* 3DB2C 8003CF2C AFB800B4 */  sw         $t8, 0xB4($sp)
/* 3DB30 8003CF30 ADE00004 */  sw         $zero, 0x4($t7)
/* 3DB34 8003CF34 ADED0000 */  sw         $t5, 0x0($t7)
/* 3DB38 8003CF38 8FB900B4 */  lw         $t9, 0xB4($sp)
/* 3DB3C 8003CF3C 37FF0100 */  ori        $ra, $ra, (0xF5000100 & 0xFFFF)
/* 3DB40 8003CF40 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 3DB44 8003CF44 272E0008 */  addiu      $t6, $t9, 0x8
/* 3DB48 8003CF48 AFAE00B4 */  sw         $t6, 0xB4($sp)
/* 3DB4C 8003CF4C AF2F0004 */  sw         $t7, 0x4($t9)
/* 3DB50 8003CF50 AF3F0000 */  sw         $ra, 0x0($t9)
/* 3DB54 8003CF54 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DB58 8003CF58 3C08E600 */  lui        $t0, (0xE6000000 >> 16)
/* 3DB5C 8003CF5C 3C07E700 */  lui        $a3, (0xE7000000 >> 16)
/* 3DB60 8003CF60 27190008 */  addiu      $t9, $t8, 0x8
/* 3DB64 8003CF64 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DB68 8003CF68 AF000004 */  sw         $zero, 0x4($t8)
/* 3DB6C 8003CF6C AF080000 */  sw         $t0, 0x0($t8)
/* 3DB70 8003CF70 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DB74 8003CF74 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 3DB78 8003CF78 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 3DB7C 8003CF7C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DB80 8003CF80 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DB84 8003CF84 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 3DB88 8003CF88 ADD80000 */  sw         $t8, 0x0($t6)
/* 3DB8C 8003CF8C ADD90004 */  sw         $t9, 0x4($t6)
/* 3DB90 8003CF90 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DB94 8003CF94 3C09B400 */  lui        $t1, (0xB4000000 >> 16)
/* 3DB98 8003CF98 3C0B0400 */  lui        $t3, (0x4000400 >> 16)
/* 3DB9C 8003CF9C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DBA0 8003CFA0 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DBA4 8003CFA4 ADC00004 */  sw         $zero, 0x4($t6)
/* 3DBA8 8003CFA8 ADC70000 */  sw         $a3, 0x0($t6)
/* 3DBAC 8003CFAC 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DBB0 8003CFB0 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 3DBB4 8003CFB4 3C0F8036 */  lui        $t7, %hi(D_80367530)
/* 3DBB8 8003CFB8 27190008 */  addiu      $t9, $t8, 0x8
/* 3DBBC 8003CFBC AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DBC0 8003CFC0 25EF7530 */  addiu      $t7, $t7, %lo(D_80367530)
/* 3DBC4 8003CFC4 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 3DBC8 8003CFC8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DBCC 8003CFCC AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DBD0 8003CFD0 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DBD4 8003CFD4 3C0F0708 */  lui        $t7, (0x7080040 >> 16)
/* 3DBD8 8003CFD8 3C0EF548 */  lui        $t6, (0xF5480200 >> 16)
/* 3DBDC 8003CFDC 27190008 */  addiu      $t9, $t8, 0x8
/* 3DBE0 8003CFE0 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DBE4 8003CFE4 35CE0200 */  ori        $t6, $t6, (0xF5480200 & 0xFFFF)
/* 3DBE8 8003CFE8 35EF0040 */  ori        $t7, $t7, (0x7080040 & 0xFFFF)
/* 3DBEC 8003CFEC AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DBF0 8003CFF0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DBF4 8003CFF4 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DBF8 8003CFF8 356B0400 */  ori        $t3, $t3, (0x4000400 & 0xFFFF)
/* 3DBFC 8003CFFC 3C0AB300 */  lui        $t2, (0xB3000000 >> 16)
/* 3DC00 8003D000 27190008 */  addiu      $t9, $t8, 0x8
/* 3DC04 8003D004 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DC08 8003D008 AF000004 */  sw         $zero, 0x4($t8)
/* 3DC0C 8003D00C AF080000 */  sw         $t0, 0x0($t8)
/* 3DC10 8003D010 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DC14 8003D014 3C190701 */  lui        $t9, (0x701E05C >> 16)
/* 3DC18 8003D018 3739E05C */  ori        $t9, $t9, (0x701E05C & 0xFFFF)
/* 3DC1C 8003D01C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DC20 8003D020 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DC24 8003D024 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 3DC28 8003D028 ADD80000 */  sw         $t8, 0x0($t6)
/* 3DC2C 8003D02C ADD90004 */  sw         $t9, 0x4($t6)
/* 3DC30 8003D030 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DC34 8003D034 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DC38 8003D038 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DC3C 8003D03C ADC00004 */  sw         $zero, 0x4($t6)
/* 3DC40 8003D040 ADC70000 */  sw         $a3, 0x0($t6)
/* 3DC44 8003D044 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DC48 8003D048 3C0EF540 */  lui        $t6, (0xF5400200 >> 16)
/* 3DC4C 8003D04C 3C0F0008 */  lui        $t7, (0x80040 >> 16)
/* 3DC50 8003D050 27190008 */  addiu      $t9, $t8, 0x8
/* 3DC54 8003D054 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DC58 8003D058 35EF0040 */  ori        $t7, $t7, (0x80040 & 0xFFFF)
/* 3DC5C 8003D05C 35CE0200 */  ori        $t6, $t6, (0xF5400200 & 0xFFFF)
/* 3DC60 8003D060 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DC64 8003D064 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DC68 8003D068 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DC6C 8003D06C 3C0F0003 */  lui        $t7, (0x3C05C >> 16)
/* 3DC70 8003D070 35EFC05C */  ori        $t7, $t7, (0x3C05C & 0xFFFF)
/* 3DC74 8003D074 27190008 */  addiu      $t9, $t8, 0x8
/* 3DC78 8003D078 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DC7C 8003D07C 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 3DC80 8003D080 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DC84 8003D084 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DC88 8003D088 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DC8C 8003D08C 3C0F000C */  lui        $t7, (0xC011C >> 16)
/* 3DC90 8003D090 3C0EE444 */  lui        $t6, (0xE444017C >> 16)
/* 3DC94 8003D094 27190008 */  addiu      $t9, $t8, 0x8
/* 3DC98 8003D098 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DC9C 8003D09C 35CE017C */  ori        $t6, $t6, (0xE444017C & 0xFFFF)
/* 3DCA0 8003D0A0 35EF011C */  ori        $t7, $t7, (0xC011C & 0xFFFF)
/* 3DCA4 8003D0A4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DCA8 8003D0A8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DCAC 8003D0AC 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DCB0 8003D0B0 27190008 */  addiu      $t9, $t8, 0x8
/* 3DCB4 8003D0B4 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DCB8 8003D0B8 AF000004 */  sw         $zero, 0x4($t8)
/* 3DCBC 8003D0BC AF090000 */  sw         $t1, 0x0($t8)
/* 3DCC0 8003D0C0 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DCC4 8003D0C4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DCC8 8003D0C8 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DCCC 8003D0CC ADCB0004 */  sw         $t3, 0x4($t6)
/* 3DCD0 8003D0D0 ADCA0000 */  sw         $t2, 0x0($t6)
/* 3DCD4 8003D0D4 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DCD8 8003D0D8 3C0EE420 */  lui        $t6, (0xE420026C >> 16)
/* 3DCDC 8003D0DC 3C0F000C */  lui        $t7, (0xC020C >> 16)
/* 3DCE0 8003D0E0 27190008 */  addiu      $t9, $t8, 0x8
/* 3DCE4 8003D0E4 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DCE8 8003D0E8 35EF020C */  ori        $t7, $t7, (0xC020C & 0xFFFF)
/* 3DCEC 8003D0EC 35CE026C */  ori        $t6, $t6, (0xE420026C & 0xFFFF)
/* 3DCF0 8003D0F0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DCF4 8003D0F4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DCF8 8003D0F8 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DCFC 8003D0FC 27190008 */  addiu      $t9, $t8, 0x8
/* 3DD00 8003D100 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DD04 8003D104 AF000004 */  sw         $zero, 0x4($t8)
/* 3DD08 8003D108 AF090000 */  sw         $t1, 0x0($t8)
/* 3DD0C 8003D10C 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DD10 8003D110 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DD14 8003D114 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DD18 8003D118 ADCB0004 */  sw         $t3, 0x4($t6)
/* 3DD1C 8003D11C ADCA0000 */  sw         $t2, 0x0($t6)
/* 3DD20 8003D120 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DD24 8003D124 3C0E8037 */  lui        $t6, %hi(D_80369AA8)
/* 3DD28 8003D128 25CE9AA8 */  addiu      $t6, $t6, %lo(D_80369AA8)
/* 3DD2C 8003D12C 27190008 */  addiu      $t9, $t8, 0x8
/* 3DD30 8003D130 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DD34 8003D134 AF0E0004 */  sw         $t6, 0x4($t8)
/* 3DD38 8003D138 AF0C0000 */  sw         $t4, 0x0($t8)
/* 3DD3C 8003D13C 8FAF00B4 */  lw         $t7, 0xB4($sp)
/* 3DD40 8003D140 25F80008 */  addiu      $t8, $t7, 0x8
/* 3DD44 8003D144 AFB800B4 */  sw         $t8, 0xB4($sp)
/* 3DD48 8003D148 ADE00004 */  sw         $zero, 0x4($t7)
/* 3DD4C 8003D14C ADED0000 */  sw         $t5, 0x0($t7)
/* 3DD50 8003D150 8FB900B4 */  lw         $t9, 0xB4($sp)
/* 3DD54 8003D154 3C0F0700 */  lui        $t7, (0x7000000 >> 16)
/* 3DD58 8003D158 272E0008 */  addiu      $t6, $t9, 0x8
/* 3DD5C 8003D15C AFAE00B4 */  sw         $t6, 0xB4($sp)
/* 3DD60 8003D160 AF2F0004 */  sw         $t7, 0x4($t9)
/* 3DD64 8003D164 AF3F0000 */  sw         $ra, 0x0($t9)
/* 3DD68 8003D168 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DD6C 8003D16C 27190008 */  addiu      $t9, $t8, 0x8
/* 3DD70 8003D170 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DD74 8003D174 AF000004 */  sw         $zero, 0x4($t8)
/* 3DD78 8003D178 AF080000 */  sw         $t0, 0x0($t8)
/* 3DD7C 8003D17C 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DD80 8003D180 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 3DD84 8003D184 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 3DD88 8003D188 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DD8C 8003D18C AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DD90 8003D190 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 3DD94 8003D194 ADD80000 */  sw         $t8, 0x0($t6)
/* 3DD98 8003D198 ADD90004 */  sw         $t9, 0x4($t6)
/* 3DD9C 8003D19C 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DDA0 8003D1A0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DDA4 8003D1A4 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DDA8 8003D1A8 ADC00004 */  sw         $zero, 0x4($t6)
/* 3DDAC 8003D1AC ADC70000 */  sw         $a3, 0x0($t6)
/* 3DDB0 8003D1B0 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DDB4 8003D1B4 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 3DDB8 8003D1B8 3C0F8037 */  lui        $t7, %hi(D_803699E0)
/* 3DDBC 8003D1BC 27190008 */  addiu      $t9, $t8, 0x8
/* 3DDC0 8003D1C0 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DDC4 8003D1C4 25EF99E0 */  addiu      $t7, $t7, %lo(D_803699E0)
/* 3DDC8 8003D1C8 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 3DDCC 8003D1CC AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DDD0 8003D1D0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DDD4 8003D1D4 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DDD8 8003D1D8 3C0F0708 */  lui        $t7, (0x7080040 >> 16)
/* 3DDDC 8003D1DC 3C0EF548 */  lui        $t6, (0xF5480200 >> 16)
/* 3DDE0 8003D1E0 27190008 */  addiu      $t9, $t8, 0x8
/* 3DDE4 8003D1E4 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DDE8 8003D1E8 35CE0200 */  ori        $t6, $t6, (0xF5480200 & 0xFFFF)
/* 3DDEC 8003D1EC 35EF0040 */  ori        $t7, $t7, (0x7080040 & 0xFFFF)
/* 3DDF0 8003D1F0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DDF4 8003D1F4 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DDF8 8003D1F8 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DDFC 8003D1FC 27190008 */  addiu      $t9, $t8, 0x8
/* 3DE00 8003D200 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DE04 8003D204 AF000004 */  sw         $zero, 0x4($t8)
/* 3DE08 8003D208 AF080000 */  sw         $t0, 0x0($t8)
/* 3DE0C 8003D20C 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DE10 8003D210 3C190701 */  lui        $t9, (0x701E05C >> 16)
/* 3DE14 8003D214 3739E05C */  ori        $t9, $t9, (0x701E05C & 0xFFFF)
/* 3DE18 8003D218 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DE1C 8003D21C AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DE20 8003D220 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 3DE24 8003D224 ADD80000 */  sw         $t8, 0x0($t6)
/* 3DE28 8003D228 ADD90004 */  sw         $t9, 0x4($t6)
/* 3DE2C 8003D22C 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DE30 8003D230 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DE34 8003D234 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DE38 8003D238 ADC00004 */  sw         $zero, 0x4($t6)
/* 3DE3C 8003D23C ADC70000 */  sw         $a3, 0x0($t6)
/* 3DE40 8003D240 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DE44 8003D244 3C0EF540 */  lui        $t6, (0xF5400200 >> 16)
/* 3DE48 8003D248 3C0F0008 */  lui        $t7, (0x80040 >> 16)
/* 3DE4C 8003D24C 27190008 */  addiu      $t9, $t8, 0x8
/* 3DE50 8003D250 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DE54 8003D254 35EF0040 */  ori        $t7, $t7, (0x80040 & 0xFFFF)
/* 3DE58 8003D258 35CE0200 */  ori        $t6, $t6, (0xF5400200 & 0xFFFF)
/* 3DE5C 8003D25C AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DE60 8003D260 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DE64 8003D264 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DE68 8003D268 3C0F0003 */  lui        $t7, (0x3C05C >> 16)
/* 3DE6C 8003D26C 35EFC05C */  ori        $t7, $t7, (0x3C05C & 0xFFFF)
/* 3DE70 8003D270 27190008 */  addiu      $t9, $t8, 0x8
/* 3DE74 8003D274 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DE78 8003D278 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 3DE7C 8003D27C AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DE80 8003D280 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DE84 8003D284 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DE88 8003D288 3C0F0028 */  lui        $t7, (0x28020C >> 16)
/* 3DE8C 8003D28C 3C0EE444 */  lui        $t6, (0xE444026C >> 16)
/* 3DE90 8003D290 27190008 */  addiu      $t9, $t8, 0x8
/* 3DE94 8003D294 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DE98 8003D298 35CE026C */  ori        $t6, $t6, (0xE444026C & 0xFFFF)
/* 3DE9C 8003D29C 35EF020C */  ori        $t7, $t7, (0x28020C & 0xFFFF)
/* 3DEA0 8003D2A0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3DEA4 8003D2A4 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3DEA8 8003D2A8 8FA600B4 */  lw         $a2, 0xB4($sp)
/* 3DEAC 8003D2AC 24D90008 */  addiu      $t9, $a2, 0x8
/* 3DEB0 8003D2B0 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DEB4 8003D2B4 ACC90000 */  sw         $t1, 0x0($a2)
/* 3DEB8 8003D2B8 ACC00004 */  sw         $zero, 0x4($a2)
/* 3DEBC 8003D2BC 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DEC0 8003D2C0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3DEC4 8003D2C4 AFAF00B4 */  sw         $t7, 0xB4($sp)
/* 3DEC8 8003D2C8 ADCB0004 */  sw         $t3, 0x4($t6)
/* 3DECC 8003D2CC ADCA0000 */  sw         $t2, 0x0($t6)
/* 3DED0 8003D2D0 8FB800B4 */  lw         $t8, 0xB4($sp)
/* 3DED4 8003D2D4 27190008 */  addiu      $t9, $t8, 0x8
/* 3DED8 8003D2D8 AFB900B4 */  sw         $t9, 0xB4($sp)
/* 3DEDC 8003D2DC AF000004 */  sw         $zero, 0x4($t8)
/* 3DEE0 8003D2E0 AF070000 */  sw         $a3, 0x0($t8)
/* 3DEE4 8003D2E4 8FAF00B8 */  lw         $t7, 0xB8($sp)
/* 3DEE8 8003D2E8 8FAE00B4 */  lw         $t6, 0xB4($sp)
/* 3DEEC 8003D2EC ADEE0000 */  sw         $t6, 0x0($t7)
/* 3DEF0 8003D2F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3DEF4 8003D2F4 27BD00B8 */  addiu      $sp, $sp, 0xB8
/* 3DEF8 8003D2F8 03E00008 */  jr         $ra
/* 3DEFC 8003D2FC 00000000 */   nop

glabel func_8003D300
/* 3DF00 8003D300 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3DF04 8003D304 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3DF08 8003D308 AFA40030 */  sw         $a0, 0x30($sp)
/* 3DF0C 8003D30C 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3DF10 8003D310 27A4002C */  addiu      $a0, $sp, 0x2C
/* 3DF14 8003D314 0C0128ED */  jal        func_8004A3B4
/* 3DF18 8003D318 AFAF002C */   sw        $t7, 0x2C($sp)
/* 3DF1C 8003D31C 8FA2002C */  lw         $v0, 0x2C($sp)
/* 3DF20 8003D320 3C0A8009 */  lui        $t2, %hi(D_80097990)
/* 3DF24 8003D324 914A7990 */  lbu        $t2, %lo(D_80097990)($t2)
/* 3DF28 8003D328 3C098009 */  lui        $t1, %hi(D_8009798E)
/* 3DF2C 8003D32C 3C188009 */  lui        $t8, %hi(D_8009798C)
/* 3DF30 8003D330 8718798C */  lh         $t8, %lo(D_8009798C)($t8)
/* 3DF34 8003D334 8529798E */  lh         $t1, %lo(D_8009798E)($t1)
/* 3DF38 8003D338 24590008 */  addiu      $t9, $v0, 0x8
/* 3DF3C 8003D33C AFB9002C */  sw         $t9, 0x2C($sp)
/* 3DF40 8003D340 000A58C0 */  sll        $t3, $t2, 3
/* 3DF44 8003D344 27190010 */  addiu      $t9, $t8, 0x10
/* 3DF48 8003D348 012B6021 */  addu       $t4, $t1, $t3
/* 3DF4C 8003D34C 000C6880 */  sll        $t5, $t4, 2
/* 3DF50 8003D350 00195080 */  sll        $t2, $t9, 2
/* 3DF54 8003D354 3C05E400 */  lui        $a1, (0xE4000000 >> 16)
/* 3DF58 8003D358 31490FFF */  andi       $t1, $t2, 0xFFF
/* 3DF5C 8003D35C 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3DF60 8003D360 01C57825 */  or         $t7, $t6, $a1
/* 3DF64 8003D364 00095B00 */  sll        $t3, $t1, 12
/* 3DF68 8003D368 01EB6025 */  or         $t4, $t7, $t3
/* 3DF6C 8003D36C 3C198009 */  lui        $t9, %hi(D_8009798C)
/* 3DF70 8003D370 AC4C0000 */  sw         $t4, 0x0($v0)
/* 3DF74 8003D374 8739798C */  lh         $t9, %lo(D_8009798C)($t9)
/* 3DF78 8003D378 3C0D8009 */  lui        $t5, %hi(D_8009798E)
/* 3DF7C 8003D37C 85AD798E */  lh         $t5, %lo(D_8009798E)($t5)
/* 3DF80 8003D380 00195080 */  sll        $t2, $t9, 2
/* 3DF84 8003D384 31490FFF */  andi       $t1, $t2, 0xFFF
/* 3DF88 8003D388 000D7080 */  sll        $t6, $t5, 2
/* 3DF8C 8003D38C 31D80FFF */  andi       $t8, $t6, 0xFFF
/* 3DF90 8003D390 00097B00 */  sll        $t7, $t1, 12
/* 3DF94 8003D394 030F5825 */  or         $t3, $t8, $t7
/* 3DF98 8003D398 AC4B0004 */  sw         $t3, 0x4($v0)
/* 3DF9C 8003D39C 8FAC002C */  lw         $t4, 0x2C($sp)
/* 3DFA0 8003D3A0 3C06B400 */  lui        $a2, (0xB4000000 >> 16)
/* 3DFA4 8003D3A4 3C080400 */  lui        $t0, (0x4000400 >> 16)
/* 3DFA8 8003D3A8 258D0008 */  addiu      $t5, $t4, 0x8
/* 3DFAC 8003D3AC AFAD002C */  sw         $t5, 0x2C($sp)
/* 3DFB0 8003D3B0 AD800004 */  sw         $zero, 0x4($t4)
/* 3DFB4 8003D3B4 AD860000 */  sw         $a2, 0x0($t4)
/* 3DFB8 8003D3B8 8FAE002C */  lw         $t6, 0x2C($sp)
/* 3DFBC 8003D3BC 35080400 */  ori        $t0, $t0, (0x4000400 & 0xFFFF)
/* 3DFC0 8003D3C0 3C07B300 */  lui        $a3, (0xB3000000 >> 16)
/* 3DFC4 8003D3C4 25D90008 */  addiu      $t9, $t6, 0x8
/* 3DFC8 8003D3C8 AFB9002C */  sw         $t9, 0x2C($sp)
/* 3DFCC 8003D3CC ADC80004 */  sw         $t0, 0x4($t6)
/* 3DFD0 8003D3D0 ADC70000 */  sw         $a3, 0x0($t6)
/* 3DFD4 8003D3D4 8FA2002C */  lw         $v0, 0x2C($sp)
/* 3DFD8 8003D3D8 3C0F8009 */  lui        $t7, %hi(D_80097996)
/* 3DFDC 8003D3DC 91EF7996 */  lbu        $t7, %lo(D_80097996)($t7)
/* 3DFE0 8003D3E0 3C188009 */  lui        $t8, %hi(D_80097994)
/* 3DFE4 8003D3E4 3C0A8009 */  lui        $t2, %hi(D_80097992)
/* 3DFE8 8003D3E8 854A7992 */  lh         $t2, %lo(D_80097992)($t2)
/* 3DFEC 8003D3EC 87187994 */  lh         $t8, %lo(D_80097994)($t8)
/* 3DFF0 8003D3F0 24490008 */  addiu      $t1, $v0, 0x8
/* 3DFF4 8003D3F4 AFA9002C */  sw         $t1, 0x2C($sp)
/* 3DFF8 8003D3F8 000F58C0 */  sll        $t3, $t7, 3
/* 3DFFC 8003D3FC 25490010 */  addiu      $t1, $t2, 0x10
/* 3E000 8003D400 030B6021 */  addu       $t4, $t8, $t3
/* 3E004 8003D404 000C6880 */  sll        $t5, $t4, 2
/* 3E008 8003D408 00097880 */  sll        $t7, $t1, 2
/* 3E00C 8003D40C 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 3E010 8003D410 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3E014 8003D414 01C5C825 */  or         $t9, $t6, $a1
/* 3E018 8003D418 00185B00 */  sll        $t3, $t8, 12
/* 3E01C 8003D41C 032B6025 */  or         $t4, $t9, $t3
/* 3E020 8003D420 3C098009 */  lui        $t1, %hi(D_80097992)
/* 3E024 8003D424 AC4C0000 */  sw         $t4, 0x0($v0)
/* 3E028 8003D428 85297992 */  lh         $t1, %lo(D_80097992)($t1)
/* 3E02C 8003D42C 3C0D8009 */  lui        $t5, %hi(D_80097994)
/* 3E030 8003D430 85AD7994 */  lh         $t5, %lo(D_80097994)($t5)
/* 3E034 8003D434 00097880 */  sll        $t7, $t1, 2
/* 3E038 8003D438 31F80FFF */  andi       $t8, $t7, 0xFFF
/* 3E03C 8003D43C 000D7080 */  sll        $t6, $t5, 2
/* 3E040 8003D440 31CA0FFF */  andi       $t2, $t6, 0xFFF
/* 3E044 8003D444 0018CB00 */  sll        $t9, $t8, 12
/* 3E048 8003D448 01595825 */  or         $t3, $t2, $t9
/* 3E04C 8003D44C AC4B0004 */  sw         $t3, 0x4($v0)
/* 3E050 8003D450 8FAC002C */  lw         $t4, 0x2C($sp)
/* 3E054 8003D454 3C198009 */  lui        $t9, %hi(D_8009799C)
/* 3E058 8003D458 3C0A8009 */  lui        $t2, %hi(D_8009799A)
/* 3E05C 8003D45C 258D0008 */  addiu      $t5, $t4, 0x8
/* 3E060 8003D460 AFAD002C */  sw         $t5, 0x2C($sp)
/* 3E064 8003D464 AD800004 */  sw         $zero, 0x4($t4)
/* 3E068 8003D468 AD860000 */  sw         $a2, 0x0($t4)
/* 3E06C 8003D46C 8FAE002C */  lw         $t6, 0x2C($sp)
/* 3E070 8003D470 3C0F8009 */  lui        $t7, %hi(D_80097998)
/* 3E074 8003D474 25C90008 */  addiu      $t1, $t6, 0x8
/* 3E078 8003D478 AFA9002C */  sw         $t1, 0x2C($sp)
/* 3E07C 8003D47C ADC80004 */  sw         $t0, 0x4($t6)
/* 3E080 8003D480 ADC70000 */  sw         $a3, 0x0($t6)
/* 3E084 8003D484 8FA2002C */  lw         $v0, 0x2C($sp)
/* 3E088 8003D488 9339799C */  lbu        $t9, %lo(D_8009799C)($t9)
/* 3E08C 8003D48C 85EF7998 */  lh         $t7, %lo(D_80097998)($t7)
/* 3E090 8003D490 854A799A */  lh         $t2, %lo(D_8009799A)($t2)
/* 3E094 8003D494 24580008 */  addiu      $t8, $v0, 0x8
/* 3E098 8003D498 AFB8002C */  sw         $t8, 0x2C($sp)
/* 3E09C 8003D49C 001958C0 */  sll        $t3, $t9, 3
/* 3E0A0 8003D4A0 25F80010 */  addiu      $t8, $t7, 0x10
/* 3E0A4 8003D4A4 014B6021 */  addu       $t4, $t2, $t3
/* 3E0A8 8003D4A8 000C6880 */  sll        $t5, $t4, 2
/* 3E0AC 8003D4AC 0018C880 */  sll        $t9, $t8, 2
/* 3E0B0 8003D4B0 332A0FFF */  andi       $t2, $t9, 0xFFF
/* 3E0B4 8003D4B4 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3E0B8 8003D4B8 01C54825 */  or         $t1, $t6, $a1
/* 3E0BC 8003D4BC 000A5B00 */  sll        $t3, $t2, 12
/* 3E0C0 8003D4C0 012B6025 */  or         $t4, $t1, $t3
/* 3E0C4 8003D4C4 3C188009 */  lui        $t8, %hi(D_80097998)
/* 3E0C8 8003D4C8 AC4C0000 */  sw         $t4, 0x0($v0)
/* 3E0CC 8003D4CC 87187998 */  lh         $t8, %lo(D_80097998)($t8)
/* 3E0D0 8003D4D0 3C0D8009 */  lui        $t5, %hi(D_8009799A)
/* 3E0D4 8003D4D4 85AD799A */  lh         $t5, %lo(D_8009799A)($t5)
/* 3E0D8 8003D4D8 0018C880 */  sll        $t9, $t8, 2
/* 3E0DC 8003D4DC 332A0FFF */  andi       $t2, $t9, 0xFFF
/* 3E0E0 8003D4E0 000D7080 */  sll        $t6, $t5, 2
/* 3E0E4 8003D4E4 31CF0FFF */  andi       $t7, $t6, 0xFFF
/* 3E0E8 8003D4E8 000A4B00 */  sll        $t1, $t2, 12
/* 3E0EC 8003D4EC 01E95825 */  or         $t3, $t7, $t1
/* 3E0F0 8003D4F0 AC4B0004 */  sw         $t3, 0x4($v0)
/* 3E0F4 8003D4F4 8FAC002C */  lw         $t4, 0x2C($sp)
/* 3E0F8 8003D4F8 3C098009 */  lui        $t1, %hi(D_800979A2)
/* 3E0FC 8003D4FC 3C0F8009 */  lui        $t7, %hi(D_800979A0)
/* 3E100 8003D500 258D0008 */  addiu      $t5, $t4, 0x8
/* 3E104 8003D504 AFAD002C */  sw         $t5, 0x2C($sp)
/* 3E108 8003D508 AD800004 */  sw         $zero, 0x4($t4)
/* 3E10C 8003D50C AD860000 */  sw         $a2, 0x0($t4)
/* 3E110 8003D510 8FAE002C */  lw         $t6, 0x2C($sp)
/* 3E114 8003D514 3C198009 */  lui        $t9, %hi(D_8009799E)
/* 3E118 8003D518 25D80008 */  addiu      $t8, $t6, 0x8
/* 3E11C 8003D51C AFB8002C */  sw         $t8, 0x2C($sp)
/* 3E120 8003D520 ADC80004 */  sw         $t0, 0x4($t6)
/* 3E124 8003D524 ADC70000 */  sw         $a3, 0x0($t6)
/* 3E128 8003D528 8FA2002C */  lw         $v0, 0x2C($sp)
/* 3E12C 8003D52C 912979A2 */  lbu        $t1, %lo(D_800979A2)($t1)
/* 3E130 8003D530 8739799E */  lh         $t9, %lo(D_8009799E)($t9)
/* 3E134 8003D534 85EF79A0 */  lh         $t7, %lo(D_800979A0)($t7)
/* 3E138 8003D538 244A0008 */  addiu      $t2, $v0, 0x8
/* 3E13C 8003D53C AFAA002C */  sw         $t2, 0x2C($sp)
/* 3E140 8003D540 000958C0 */  sll        $t3, $t1, 3
/* 3E144 8003D544 272A0010 */  addiu      $t2, $t9, 0x10
/* 3E148 8003D548 01EB6021 */  addu       $t4, $t7, $t3
/* 3E14C 8003D54C 000C6880 */  sll        $t5, $t4, 2
/* 3E150 8003D550 000A4880 */  sll        $t1, $t2, 2
/* 3E154 8003D554 312F0FFF */  andi       $t7, $t1, 0xFFF
/* 3E158 8003D558 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3E15C 8003D55C 01C5C025 */  or         $t8, $t6, $a1
/* 3E160 8003D560 000F5B00 */  sll        $t3, $t7, 12
/* 3E164 8003D564 030B6025 */  or         $t4, $t8, $t3
/* 3E168 8003D568 3C0A8009 */  lui        $t2, %hi(D_8009799E)
/* 3E16C 8003D56C AC4C0000 */  sw         $t4, 0x0($v0)
/* 3E170 8003D570 854A799E */  lh         $t2, %lo(D_8009799E)($t2)
/* 3E174 8003D574 3C0D8009 */  lui        $t5, %hi(D_800979A0)
/* 3E178 8003D578 85AD79A0 */  lh         $t5, %lo(D_800979A0)($t5)
/* 3E17C 8003D57C 000A4880 */  sll        $t1, $t2, 2
/* 3E180 8003D580 312F0FFF */  andi       $t7, $t1, 0xFFF
/* 3E184 8003D584 000D7080 */  sll        $t6, $t5, 2
/* 3E188 8003D588 31D90FFF */  andi       $t9, $t6, 0xFFF
/* 3E18C 8003D58C 000FC300 */  sll        $t8, $t7, 12
/* 3E190 8003D590 03385825 */  or         $t3, $t9, $t8
/* 3E194 8003D594 AC4B0004 */  sw         $t3, 0x4($v0)
/* 3E198 8003D598 8FAC002C */  lw         $t4, 0x2C($sp)
/* 3E19C 8003D59C 3C19E700 */  lui        $t9, (0xE7000000 >> 16)
/* 3E1A0 8003D5A0 258D0008 */  addiu      $t5, $t4, 0x8
/* 3E1A4 8003D5A4 AFAD002C */  sw         $t5, 0x2C($sp)
/* 3E1A8 8003D5A8 AD800004 */  sw         $zero, 0x4($t4)
/* 3E1AC 8003D5AC AD860000 */  sw         $a2, 0x0($t4)
/* 3E1B0 8003D5B0 8FAE002C */  lw         $t6, 0x2C($sp)
/* 3E1B4 8003D5B4 25CA0008 */  addiu      $t2, $t6, 0x8
/* 3E1B8 8003D5B8 AFAA002C */  sw         $t2, 0x2C($sp)
/* 3E1BC 8003D5BC ADC80004 */  sw         $t0, 0x4($t6)
/* 3E1C0 8003D5C0 ADC70000 */  sw         $a3, 0x0($t6)
/* 3E1C4 8003D5C4 8FA9002C */  lw         $t1, 0x2C($sp)
/* 3E1C8 8003D5C8 252F0008 */  addiu      $t7, $t1, 0x8
/* 3E1CC 8003D5CC AFAF002C */  sw         $t7, 0x2C($sp)
/* 3E1D0 8003D5D0 AD200004 */  sw         $zero, 0x4($t1)
/* 3E1D4 8003D5D4 AD390000 */  sw         $t9, 0x0($t1)
/* 3E1D8 8003D5D8 8FAB0030 */  lw         $t3, 0x30($sp)
/* 3E1DC 8003D5DC 8FB8002C */  lw         $t8, 0x2C($sp)
/* 3E1E0 8003D5E0 AD780000 */  sw         $t8, 0x0($t3)
/* 3E1E4 8003D5E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E1E8 8003D5E8 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3E1EC 8003D5EC 03E00008 */  jr         $ra
/* 3E1F0 8003D5F0 00000000 */   nop

glabel func_8003D5F4
/* 3E1F4 8003D5F4 27BDFF10 */  addiu      $sp, $sp, -0xF0
/* 3E1F8 8003D5F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E1FC 8003D5FC AFA400F0 */  sw         $a0, 0xF0($sp)
/* 3E200 8003D600 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3E204 8003D604 27A400EC */  addiu      $a0, $sp, 0xEC
/* 3E208 8003D608 0C01556D */  jal        func_800555B4
/* 3E20C 8003D60C AFAF00EC */   sw        $t7, 0xEC($sp)
/* 3E210 8003D610 8FB800EC */  lw         $t8, 0xEC($sp)
/* 3E214 8003D614 3C0ABA00 */  lui        $t2, (0xBA000E02 >> 16)
/* 3E218 8003D618 354A0E02 */  ori        $t2, $t2, (0xBA000E02 & 0xFFFF)
/* 3E21C 8003D61C 27190008 */  addiu      $t9, $t8, 0x8
/* 3E220 8003D620 AFB900EC */  sw         $t9, 0xEC($sp)
/* 3E224 8003D624 340B8000 */  ori        $t3, $zero, 0x8000
/* 3E228 8003D628 3C03801A */  lui        $v1, %hi(D_8019E4B8)
/* 3E22C 8003D62C AF0B0004 */  sw         $t3, 0x4($t8)
/* 3E230 8003D630 AF0A0000 */  sw         $t2, 0x0($t8)
/* 3E234 8003D634 8C63E4B8 */  lw         $v1, %lo(D_8019E4B8)($v1)
/* 3E238 8003D638 3C09E600 */  lui        $t1, (0xE6000000 >> 16)
/* 3E23C 8003D63C 8FAC00EC */  lw         $t4, 0xEC($sp)
/* 3E240 8003D640 14600076 */  bnez       $v1, .L8003D81C
/* 3E244 8003D644 24010001 */   addiu     $at, $zero, 0x1
/* 3E248 8003D648 258D0008 */  addiu      $t5, $t4, 0x8
/* 3E24C 8003D64C AFAD00EC */  sw         $t5, 0xEC($sp)
/* 3E250 8003D650 3C0F8037 */  lui        $t7, %hi(D_80368198)
/* 3E254 8003D654 25EF8198 */  addiu      $t7, $t7, %lo(D_80368198)
/* 3E258 8003D658 3C0EFD10 */  lui        $t6, (0xFD100000 >> 16)
/* 3E25C 8003D65C AD8E0000 */  sw         $t6, 0x0($t4)
/* 3E260 8003D660 AD8F0004 */  sw         $t7, 0x4($t4)
/* 3E264 8003D664 8FB800EC */  lw         $t8, 0xEC($sp)
/* 3E268 8003D668 3C0AE800 */  lui        $t2, (0xE8000000 >> 16)
/* 3E26C 8003D66C 3C0DF500 */  lui        $t5, (0xF5000100 >> 16)
/* 3E270 8003D670 27190008 */  addiu      $t9, $t8, 0x8
/* 3E274 8003D674 AFB900EC */  sw         $t9, 0xEC($sp)
/* 3E278 8003D678 AF000004 */  sw         $zero, 0x4($t8)
/* 3E27C 8003D67C AF0A0000 */  sw         $t2, 0x0($t8)
/* 3E280 8003D680 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E284 8003D684 35AD0100 */  ori        $t5, $t5, (0xF5000100 & 0xFFFF)
/* 3E288 8003D688 3C0E0700 */  lui        $t6, (0x7000000 >> 16)
/* 3E28C 8003D68C 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E290 8003D690 AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E294 8003D694 AD6E0004 */  sw         $t6, 0x4($t3)
/* 3E298 8003D698 AD6D0000 */  sw         $t5, 0x0($t3)
/* 3E29C 8003D69C 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E2A0 8003D6A0 3C0C0703 */  lui        $t4, (0x703C000 >> 16)
/* 3E2A4 8003D6A4 358CC000 */  ori        $t4, $t4, (0x703C000 & 0xFFFF)
/* 3E2A8 8003D6A8 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E2AC 8003D6AC AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E2B0 8003D6B0 ADE00004 */  sw         $zero, 0x4($t7)
/* 3E2B4 8003D6B4 ADE90000 */  sw         $t1, 0x0($t7)
/* 3E2B8 8003D6B8 8FB900EC */  lw         $t9, 0xEC($sp)
/* 3E2BC 8003D6BC 3C0BF000 */  lui        $t3, (0xF0000000 >> 16)
/* 3E2C0 8003D6C0 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 3E2C4 8003D6C4 272A0008 */  addiu      $t2, $t9, 0x8
/* 3E2C8 8003D6C8 AFAA00EC */  sw         $t2, 0xEC($sp)
/* 3E2CC 8003D6CC AF2C0004 */  sw         $t4, 0x4($t9)
/* 3E2D0 8003D6D0 AF2B0000 */  sw         $t3, 0x0($t9)
/* 3E2D4 8003D6D4 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E2D8 8003D6D8 3C19FD48 */  lui        $t9, (0xFD480007 >> 16)
/* 3E2DC 8003D6DC 3C0A8037 */  lui        $t2, %hi(D_80368140)
/* 3E2E0 8003D6E0 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E2E4 8003D6E4 AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E2E8 8003D6E8 ADA00004 */  sw         $zero, 0x4($t5)
/* 3E2EC 8003D6EC ADA80000 */  sw         $t0, 0x0($t5)
/* 3E2F0 8003D6F0 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E2F4 8003D6F4 254A8140 */  addiu      $t2, $t2, %lo(D_80368140)
/* 3E2F8 8003D6F8 37390007 */  ori        $t9, $t9, (0xFD480007 & 0xFFFF)
/* 3E2FC 8003D6FC 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E300 8003D700 AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E304 8003D704 ADEA0004 */  sw         $t2, 0x4($t7)
/* 3E308 8003D708 ADF90000 */  sw         $t9, 0x0($t7)
/* 3E30C 8003D70C 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E310 8003D710 3C0DF548 */  lui        $t5, (0xF5480200 >> 16)
/* 3E314 8003D714 3C0E0708 */  lui        $t6, (0x7080200 >> 16)
/* 3E318 8003D718 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E31C 8003D71C AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E320 8003D720 35CE0200 */  ori        $t6, $t6, (0x7080200 & 0xFFFF)
/* 3E324 8003D724 35AD0200 */  ori        $t5, $t5, (0xF5480200 & 0xFFFF)
/* 3E328 8003D728 AD6D0000 */  sw         $t5, 0x0($t3)
/* 3E32C 8003D72C AD6E0004 */  sw         $t6, 0x4($t3)
/* 3E330 8003D730 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E334 8003D734 3C0C0701 */  lui        $t4, (0x701E024 >> 16)
/* 3E338 8003D738 358CE024 */  ori        $t4, $t4, (0x701E024 & 0xFFFF)
/* 3E33C 8003D73C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E340 8003D740 AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E344 8003D744 ADE00004 */  sw         $zero, 0x4($t7)
/* 3E348 8003D748 ADE90000 */  sw         $t1, 0x0($t7)
/* 3E34C 8003D74C 8FB900EC */  lw         $t9, 0xEC($sp)
/* 3E350 8003D750 3C0BF400 */  lui        $t3, (0xF4000000 >> 16)
/* 3E354 8003D754 272A0008 */  addiu      $t2, $t9, 0x8
/* 3E358 8003D758 AFAA00EC */  sw         $t2, 0xEC($sp)
/* 3E35C 8003D75C AF2C0004 */  sw         $t4, 0x4($t9)
/* 3E360 8003D760 AF2B0000 */  sw         $t3, 0x0($t9)
/* 3E364 8003D764 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E368 8003D768 3C19F540 */  lui        $t9, (0xF5400200 >> 16)
/* 3E36C 8003D76C 3C0A0008 */  lui        $t2, (0x80200 >> 16)
/* 3E370 8003D770 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E374 8003D774 AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E378 8003D778 ADA00004 */  sw         $zero, 0x4($t5)
/* 3E37C 8003D77C ADA80000 */  sw         $t0, 0x0($t5)
/* 3E380 8003D780 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E384 8003D784 354A0200 */  ori        $t2, $t2, (0x80200 & 0xFFFF)
/* 3E388 8003D788 37390200 */  ori        $t9, $t9, (0xF5400200 & 0xFFFF)
/* 3E38C 8003D78C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E390 8003D790 AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E394 8003D794 ADEA0004 */  sw         $t2, 0x4($t7)
/* 3E398 8003D798 ADF90000 */  sw         $t9, 0x0($t7)
/* 3E39C 8003D79C 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E3A0 8003D7A0 3C0E0003 */  lui        $t6, (0x3C024 >> 16)
/* 3E3A4 8003D7A4 35CEC024 */  ori        $t6, $t6, (0x3C024 & 0xFFFF)
/* 3E3A8 8003D7A8 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E3AC 8003D7AC AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E3B0 8003D7B0 3C0DF200 */  lui        $t5, (0xF2000000 >> 16)
/* 3E3B4 8003D7B4 AD6D0000 */  sw         $t5, 0x0($t3)
/* 3E3B8 8003D7B8 AD6E0004 */  sw         $t6, 0x4($t3)
/* 3E3BC 8003D7BC 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E3C0 8003D7C0 3C19E41A */  lui        $t9, (0xE41A0178 >> 16)
/* 3E3C4 8003D7C4 3C0A0016 */  lui        $t2, (0x160150 >> 16)
/* 3E3C8 8003D7C8 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E3CC 8003D7CC AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E3D0 8003D7D0 354A0150 */  ori        $t2, $t2, (0x160150 & 0xFFFF)
/* 3E3D4 8003D7D4 37390178 */  ori        $t9, $t9, (0xE41A0178 & 0xFFFF)
/* 3E3D8 8003D7D8 ADF90000 */  sw         $t9, 0x0($t7)
/* 3E3DC 8003D7DC ADEA0004 */  sw         $t2, 0x4($t7)
/* 3E3E0 8003D7E0 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E3E4 8003D7E4 3C0DB400 */  lui        $t5, (0xB4000000 >> 16)
/* 3E3E8 8003D7E8 3C190400 */  lui        $t9, (0x4000400 >> 16)
/* 3E3EC 8003D7EC 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E3F0 8003D7F0 AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E3F4 8003D7F4 AD600004 */  sw         $zero, 0x4($t3)
/* 3E3F8 8003D7F8 AD6D0000 */  sw         $t5, 0x0($t3)
/* 3E3FC 8003D7FC 8FAE00EC */  lw         $t6, 0xEC($sp)
/* 3E400 8003D800 37390400 */  ori        $t9, $t9, (0x4000400 & 0xFFFF)
/* 3E404 8003D804 3C18B300 */  lui        $t8, (0xB3000000 >> 16)
/* 3E408 8003D808 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3E40C 8003D80C AFAF00EC */  sw         $t7, 0xEC($sp)
/* 3E410 8003D810 ADD90004 */  sw         $t9, 0x4($t6)
/* 3E414 8003D814 10000078 */  b          .L8003D9F8
/* 3E418 8003D818 ADD80000 */   sw        $t8, 0x0($t6)
.L8003D81C:
/* 3E41C 8003D81C 14610076 */  bne        $v1, $at, .L8003D9F8
/* 3E420 8003D820 3C09E600 */   lui       $t1, (0xE6000000 >> 16)
/* 3E424 8003D824 8FAA00EC */  lw         $t2, 0xEC($sp)
/* 3E428 8003D828 3C0D8037 */  lui        $t5, %hi(D_80368EE8)
/* 3E42C 8003D82C 25AD8EE8 */  addiu      $t5, $t5, %lo(D_80368EE8)
/* 3E430 8003D830 254B0008 */  addiu      $t3, $t2, 0x8
/* 3E434 8003D834 AFAB00EC */  sw         $t3, 0xEC($sp)
/* 3E438 8003D838 3C0CFD10 */  lui        $t4, (0xFD100000 >> 16)
/* 3E43C 8003D83C AD4C0000 */  sw         $t4, 0x0($t2)
/* 3E440 8003D840 AD4D0004 */  sw         $t5, 0x4($t2)
/* 3E444 8003D844 8FAE00EC */  lw         $t6, 0xEC($sp)
/* 3E448 8003D848 3C18E800 */  lui        $t8, (0xE8000000 >> 16)
/* 3E44C 8003D84C 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* 3E450 8003D850 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3E454 8003D854 AFAF00EC */  sw         $t7, 0xEC($sp)
/* 3E458 8003D858 ADC00004 */  sw         $zero, 0x4($t6)
/* 3E45C 8003D85C ADD80000 */  sw         $t8, 0x0($t6)
/* 3E460 8003D860 8FB900EC */  lw         $t9, 0xEC($sp)
/* 3E464 8003D864 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* 3E468 8003D868 3C0C0700 */  lui        $t4, (0x7000000 >> 16)
/* 3E46C 8003D86C 272A0008 */  addiu      $t2, $t9, 0x8
/* 3E470 8003D870 AFAA00EC */  sw         $t2, 0xEC($sp)
/* 3E474 8003D874 AF2C0004 */  sw         $t4, 0x4($t9)
/* 3E478 8003D878 AF2B0000 */  sw         $t3, 0x0($t9)
/* 3E47C 8003D87C 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E480 8003D880 3C0A0703 */  lui        $t2, (0x703C000 >> 16)
/* 3E484 8003D884 354AC000 */  ori        $t2, $t2, (0x703C000 & 0xFFFF)
/* 3E488 8003D888 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E48C 8003D88C AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E490 8003D890 ADA00004 */  sw         $zero, 0x4($t5)
/* 3E494 8003D894 ADA90000 */  sw         $t1, 0x0($t5)
/* 3E498 8003D898 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E49C 8003D89C 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 3E4A0 8003D8A0 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 3E4A4 8003D8A4 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E4A8 8003D8A8 AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E4AC 8003D8AC ADEA0004 */  sw         $t2, 0x4($t7)
/* 3E4B0 8003D8B0 ADF90000 */  sw         $t9, 0x0($t7)
/* 3E4B4 8003D8B4 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E4B8 8003D8B8 3C0FFD48 */  lui        $t7, (0xFD480007 >> 16)
/* 3E4BC 8003D8BC 3C188037 */  lui        $t8, %hi(D_80368EA0)
/* 3E4C0 8003D8C0 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E4C4 8003D8C4 AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E4C8 8003D8C8 AD600004 */  sw         $zero, 0x4($t3)
/* 3E4CC 8003D8CC AD680000 */  sw         $t0, 0x0($t3)
/* 3E4D0 8003D8D0 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E4D4 8003D8D4 27188EA0 */  addiu      $t8, $t8, %lo(D_80368EA0)
/* 3E4D8 8003D8D8 35EF0007 */  ori        $t7, $t7, (0xFD480007 & 0xFFFF)
/* 3E4DC 8003D8DC 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E4E0 8003D8E0 AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E4E4 8003D8E4 ADB80004 */  sw         $t8, 0x4($t5)
/* 3E4E8 8003D8E8 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3E4EC 8003D8EC 8FB900EC */  lw         $t9, 0xEC($sp)
/* 3E4F0 8003D8F0 3C0BF548 */  lui        $t3, (0xF5480200 >> 16)
/* 3E4F4 8003D8F4 3C0C0708 */  lui        $t4, (0x7080200 >> 16)
/* 3E4F8 8003D8F8 272A0008 */  addiu      $t2, $t9, 0x8
/* 3E4FC 8003D8FC AFAA00EC */  sw         $t2, 0xEC($sp)
/* 3E500 8003D900 358C0200 */  ori        $t4, $t4, (0x7080200 & 0xFFFF)
/* 3E504 8003D904 356B0200 */  ori        $t3, $t3, (0xF5480200 & 0xFFFF)
/* 3E508 8003D908 AF2B0000 */  sw         $t3, 0x0($t9)
/* 3E50C 8003D90C AF2C0004 */  sw         $t4, 0x4($t9)
/* 3E510 8003D910 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E514 8003D914 3C0A0701 */  lui        $t2, (0x701E01C >> 16)
/* 3E518 8003D918 354AE01C */  ori        $t2, $t2, (0x701E01C & 0xFFFF)
/* 3E51C 8003D91C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E520 8003D920 AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E524 8003D924 ADA00004 */  sw         $zero, 0x4($t5)
/* 3E528 8003D928 ADA90000 */  sw         $t1, 0x0($t5)
/* 3E52C 8003D92C 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E530 8003D930 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* 3E534 8003D934 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E538 8003D938 AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E53C 8003D93C ADEA0004 */  sw         $t2, 0x4($t7)
/* 3E540 8003D940 ADF90000 */  sw         $t9, 0x0($t7)
/* 3E544 8003D944 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E548 8003D948 3C0FF540 */  lui        $t7, (0xF5400200 >> 16)
/* 3E54C 8003D94C 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 3E550 8003D950 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E554 8003D954 AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E558 8003D958 AD600004 */  sw         $zero, 0x4($t3)
/* 3E55C 8003D95C AD680000 */  sw         $t0, 0x0($t3)
/* 3E560 8003D960 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E564 8003D964 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 3E568 8003D968 35EF0200 */  ori        $t7, $t7, (0xF5400200 & 0xFFFF)
/* 3E56C 8003D96C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E570 8003D970 AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E574 8003D974 ADB80004 */  sw         $t8, 0x4($t5)
/* 3E578 8003D978 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3E57C 8003D97C 8FB900EC */  lw         $t9, 0xEC($sp)
/* 3E580 8003D980 3C0C0003 */  lui        $t4, (0x3C01C >> 16)
/* 3E584 8003D984 358CC01C */  ori        $t4, $t4, (0x3C01C & 0xFFFF)
/* 3E588 8003D988 272A0008 */  addiu      $t2, $t9, 0x8
/* 3E58C 8003D98C AFAA00EC */  sw         $t2, 0xEC($sp)
/* 3E590 8003D990 3C0BF200 */  lui        $t3, (0xF2000000 >> 16)
/* 3E594 8003D994 AF2B0000 */  sw         $t3, 0x0($t9)
/* 3E598 8003D998 AF2C0004 */  sw         $t4, 0x4($t9)
/* 3E59C 8003D99C 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E5A0 8003D9A0 3C0FE419 */  lui        $t7, (0xE4194174 >> 16)
/* 3E5A4 8003D9A4 3C180016 */  lui        $t8, (0x16C154 >> 16)
/* 3E5A8 8003D9A8 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E5AC 8003D9AC AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E5B0 8003D9B0 3718C154 */  ori        $t8, $t8, (0x16C154 & 0xFFFF)
/* 3E5B4 8003D9B4 35EF4174 */  ori        $t7, $t7, (0xE4194174 & 0xFFFF)
/* 3E5B8 8003D9B8 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3E5BC 8003D9BC ADB80004 */  sw         $t8, 0x4($t5)
/* 3E5C0 8003D9C0 8FB900EC */  lw         $t9, 0xEC($sp)
/* 3E5C4 8003D9C4 3C0BB400 */  lui        $t3, (0xB4000000 >> 16)
/* 3E5C8 8003D9C8 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 3E5CC 8003D9CC 272A0008 */  addiu      $t2, $t9, 0x8
/* 3E5D0 8003D9D0 AFAA00EC */  sw         $t2, 0xEC($sp)
/* 3E5D4 8003D9D4 AF200004 */  sw         $zero, 0x4($t9)
/* 3E5D8 8003D9D8 AF2B0000 */  sw         $t3, 0x0($t9)
/* 3E5DC 8003D9DC 8FAC00EC */  lw         $t4, 0xEC($sp)
/* 3E5E0 8003D9E0 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 3E5E4 8003D9E4 3C0EB300 */  lui        $t6, (0xB3000000 >> 16)
/* 3E5E8 8003D9E8 258D0008 */  addiu      $t5, $t4, 0x8
/* 3E5EC 8003D9EC AFAD00EC */  sw         $t5, 0xEC($sp)
/* 3E5F0 8003D9F0 AD8F0004 */  sw         $t7, 0x4($t4)
/* 3E5F4 8003D9F4 AD8E0000 */  sw         $t6, 0x0($t4)
.L8003D9F8:
/* 3E5F8 8003D9F8 3C18801A */  lui        $t8, %hi(D_8019E4BC)
/* 3E5FC 8003D9FC 8F18E4BC */  lw         $t8, %lo(D_8019E4BC)($t8)
/* 3E600 8003DA00 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 3E604 8003DA04 3C09E600 */  lui        $t1, (0xE6000000 >> 16)
/* 3E608 8003DA08 17000074 */  bnez       $t8, .L8003DBDC
/* 3E60C 8003DA0C 8FB900EC */   lw        $t9, 0xEC($sp)
/* 3E610 8003DA10 272A0008 */  addiu      $t2, $t9, 0x8
/* 3E614 8003DA14 AFAA00EC */  sw         $t2, 0xEC($sp)
/* 3E618 8003DA18 3C0C8037 */  lui        $t4, %hi(D_80368198)
/* 3E61C 8003DA1C 258C8198 */  addiu      $t4, $t4, %lo(D_80368198)
/* 3E620 8003DA20 3C0BFD10 */  lui        $t3, (0xFD100000 >> 16)
/* 3E624 8003DA24 AF2B0000 */  sw         $t3, 0x0($t9)
/* 3E628 8003DA28 AF2C0004 */  sw         $t4, 0x4($t9)
/* 3E62C 8003DA2C 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E630 8003DA30 3C0FE800 */  lui        $t7, (0xE8000000 >> 16)
/* 3E634 8003DA34 3C0AF500 */  lui        $t2, (0xF5000100 >> 16)
/* 3E638 8003DA38 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E63C 8003DA3C AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E640 8003DA40 ADA00004 */  sw         $zero, 0x4($t5)
/* 3E644 8003DA44 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3E648 8003DA48 8FB800EC */  lw         $t8, 0xEC($sp)
/* 3E64C 8003DA4C 354A0100 */  ori        $t2, $t2, (0xF5000100 & 0xFFFF)
/* 3E650 8003DA50 3C0B0700 */  lui        $t3, (0x7000000 >> 16)
/* 3E654 8003DA54 27190008 */  addiu      $t9, $t8, 0x8
/* 3E658 8003DA58 AFB900EC */  sw         $t9, 0xEC($sp)
/* 3E65C 8003DA5C AF0B0004 */  sw         $t3, 0x4($t8)
/* 3E660 8003DA60 AF0A0000 */  sw         $t2, 0x0($t8)
/* 3E664 8003DA64 8FAC00EC */  lw         $t4, 0xEC($sp)
/* 3E668 8003DA68 3C190703 */  lui        $t9, (0x703C000 >> 16)
/* 3E66C 8003DA6C 3739C000 */  ori        $t9, $t9, (0x703C000 & 0xFFFF)
/* 3E670 8003DA70 258D0008 */  addiu      $t5, $t4, 0x8
/* 3E674 8003DA74 AFAD00EC */  sw         $t5, 0xEC($sp)
/* 3E678 8003DA78 AD800004 */  sw         $zero, 0x4($t4)
/* 3E67C 8003DA7C AD890000 */  sw         $t1, 0x0($t4)
/* 3E680 8003DA80 8FAE00EC */  lw         $t6, 0xEC($sp)
/* 3E684 8003DA84 3C18F000 */  lui        $t8, (0xF0000000 >> 16)
/* 3E688 8003DA88 3C078037 */  lui        $a3, %hi(D_80368140)
/* 3E68C 8003DA8C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3E690 8003DA90 AFAF00EC */  sw         $t7, 0xEC($sp)
/* 3E694 8003DA94 ADD90004 */  sw         $t9, 0x4($t6)
/* 3E698 8003DA98 ADD80000 */  sw         $t8, 0x0($t6)
/* 3E69C 8003DA9C 8FAA00EC */  lw         $t2, 0xEC($sp)
/* 3E6A0 8003DAA0 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 3E6A4 8003DAA4 24E78140 */  addiu      $a3, $a3, %lo(D_80368140)
/* 3E6A8 8003DAA8 254B0008 */  addiu      $t3, $t2, 0x8
/* 3E6AC 8003DAAC AFAB00EC */  sw         $t3, 0xEC($sp)
/* 3E6B0 8003DAB0 AD400004 */  sw         $zero, 0x4($t2)
/* 3E6B4 8003DAB4 AD480000 */  sw         $t0, 0x0($t2)
/* 3E6B8 8003DAB8 8FAC00EC */  lw         $t4, 0xEC($sp)
/* 3E6BC 8003DABC 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 3E6C0 8003DAC0 3C0A0708 */  lui        $t2, (0x7080200 >> 16)
/* 3E6C4 8003DAC4 258D0008 */  addiu      $t5, $t4, 0x8
/* 3E6C8 8003DAC8 AFAD00EC */  sw         $t5, 0xEC($sp)
/* 3E6CC 8003DACC AD870004 */  sw         $a3, 0x4($t4)
/* 3E6D0 8003DAD0 AD8E0000 */  sw         $t6, 0x0($t4)
/* 3E6D4 8003DAD4 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E6D8 8003DAD8 3C19F548 */  lui        $t9, (0xF5480200 >> 16)
/* 3E6DC 8003DADC 37390200 */  ori        $t9, $t9, (0xF5480200 & 0xFFFF)
/* 3E6E0 8003DAE0 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E6E4 8003DAE4 AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E6E8 8003DAE8 354A0200 */  ori        $t2, $t2, (0x7080200 & 0xFFFF)
/* 3E6EC 8003DAEC ADEA0004 */  sw         $t2, 0x4($t7)
/* 3E6F0 8003DAF0 ADF90000 */  sw         $t9, 0x0($t7)
/* 3E6F4 8003DAF4 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E6F8 8003DAF8 3C180701 */  lui        $t8, (0x701E024 >> 16)
/* 3E6FC 8003DAFC 3718E024 */  ori        $t8, $t8, (0x701E024 & 0xFFFF)
/* 3E700 8003DB00 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E704 8003DB04 AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E708 8003DB08 AD600004 */  sw         $zero, 0x4($t3)
/* 3E70C 8003DB0C AD690000 */  sw         $t1, 0x0($t3)
/* 3E710 8003DB10 8FAD00EC */  lw         $t5, 0xEC($sp)
/* 3E714 8003DB14 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 3E718 8003DB18 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3E71C 8003DB1C AFAE00EC */  sw         $t6, 0xEC($sp)
/* 3E720 8003DB20 ADB80004 */  sw         $t8, 0x4($t5)
/* 3E724 8003DB24 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3E728 8003DB28 8FB900EC */  lw         $t9, 0xEC($sp)
/* 3E72C 8003DB2C 3C0DF540 */  lui        $t5, (0xF5400200 >> 16)
/* 3E730 8003DB30 3C0E0008 */  lui        $t6, (0x80200 >> 16)
/* 3E734 8003DB34 272A0008 */  addiu      $t2, $t9, 0x8
/* 3E738 8003DB38 AFAA00EC */  sw         $t2, 0xEC($sp)
/* 3E73C 8003DB3C AF200004 */  sw         $zero, 0x4($t9)
/* 3E740 8003DB40 AF280000 */  sw         $t0, 0x0($t9)
/* 3E744 8003DB44 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E748 8003DB48 35CE0200 */  ori        $t6, $t6, (0x80200 & 0xFFFF)
/* 3E74C 8003DB4C 35AD0200 */  ori        $t5, $t5, (0xF5400200 & 0xFFFF)
/* 3E750 8003DB50 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E754 8003DB54 AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E758 8003DB58 AD6E0004 */  sw         $t6, 0x4($t3)
/* 3E75C 8003DB5C AD6D0000 */  sw         $t5, 0x0($t3)
/* 3E760 8003DB60 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E764 8003DB64 3C0A0003 */  lui        $t2, (0x3C024 >> 16)
/* 3E768 8003DB68 354AC024 */  ori        $t2, $t2, (0x3C024 & 0xFFFF)
/* 3E76C 8003DB6C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E770 8003DB70 AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E774 8003DB74 3C19F200 */  lui        $t9, (0xF2000000 >> 16)
/* 3E778 8003DB78 ADF90000 */  sw         $t9, 0x0($t7)
/* 3E77C 8003DB7C ADEA0004 */  sw         $t2, 0x4($t7)
/* 3E780 8003DB80 8FAB00EC */  lw         $t3, 0xEC($sp)
/* 3E784 8003DB84 3C0DE427 */  lui        $t5, (0xE42741E8 >> 16)
/* 3E788 8003DB88 3C0E0023 */  lui        $t6, (0x2341C8 >> 16)
/* 3E78C 8003DB8C 256C0008 */  addiu      $t4, $t3, 0x8
/* 3E790 8003DB90 AFAC00EC */  sw         $t4, 0xEC($sp)
/* 3E794 8003DB94 35CE41C8 */  ori        $t6, $t6, (0x2341C8 & 0xFFFF)
/* 3E798 8003DB98 35AD41E8 */  ori        $t5, $t5, (0xE42741E8 & 0xFFFF)
/* 3E79C 8003DB9C AD6D0000 */  sw         $t5, 0x0($t3)
/* 3E7A0 8003DBA0 AD6E0004 */  sw         $t6, 0x4($t3)
/* 3E7A4 8003DBA4 8FAF00EC */  lw         $t7, 0xEC($sp)
/* 3E7A8 8003DBA8 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
/* 3E7AC 8003DBAC 3C0D0400 */  lui        $t5, (0x4000400 >> 16)
/* 3E7B0 8003DBB0 25F80008 */  addiu      $t8, $t7, 0x8
/* 3E7B4 8003DBB4 AFB800EC */  sw         $t8, 0xEC($sp)
/* 3E7B8 8003DBB8 ADE00004 */  sw         $zero, 0x4($t7)
/* 3E7BC 8003DBBC ADF90000 */  sw         $t9, 0x0($t7)
/* 3E7C0 8003DBC0 8FAA00EC */  lw         $t2, 0xEC($sp)
/* 3E7C4 8003DBC4 35AD0400 */  ori        $t5, $t5, (0x4000400 & 0xFFFF)
/* 3E7C8 8003DBC8 3C0CB300 */  lui        $t4, (0xB3000000 >> 16)
/* 3E7CC 8003DBCC 254B0008 */  addiu      $t3, $t2, 0x8
/* 3E7D0 8003DBD0 AFAB00EC */  sw         $t3, 0xEC($sp)
/* 3E7D4 8003DBD4 AD4D0004 */  sw         $t5, 0x4($t2)
/* 3E7D8 8003DBD8 AD4C0000 */  sw         $t4, 0x0($t2)
.L8003DBDC:
/* 3E7DC 8003DBDC 8FAE00EC */  lw         $t6, 0xEC($sp)
/* 3E7E0 8003DBE0 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3E7E4 8003DBE4 AFAF00EC */  sw         $t7, 0xEC($sp)
/* 3E7E8 8003DBE8 ADC00004 */  sw         $zero, 0x4($t6)
/* 3E7EC 8003DBEC ADC80000 */  sw         $t0, 0x0($t6)
/* 3E7F0 8003DBF0 8FB900F0 */  lw         $t9, 0xF0($sp)
/* 3E7F4 8003DBF4 8FB800EC */  lw         $t8, 0xEC($sp)
/* 3E7F8 8003DBF8 AF380000 */  sw         $t8, 0x0($t9)
/* 3E7FC 8003DBFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E800 8003DC00 27BD00F0 */  addiu      $sp, $sp, 0xF0
/* 3E804 8003DC04 03E00008 */  jr         $ra
/* 3E808 8003DC08 00000000 */   nop

glabel func_8003DC0C
/* 3E80C 8003DC0C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3E810 8003DC10 3C038009 */  lui        $v1, %hi(D_8008EE58)
/* 3E814 8003DC14 9063EE58 */  lbu        $v1, %lo(D_8008EE58)($v1)
/* 3E818 8003DC18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E81C 8003DC1C 8C8E0000 */  lw         $t6, 0x0($a0)
/* 3E820 8003DC20 00803025 */  or         $a2, $a0, $zero
/* 3E824 8003DC24 00601025 */  or         $v0, $v1, $zero
/* 3E828 8003DC28 04600016 */  bltz       $v1, .L8003DC84
/* 3E82C 8003DC2C AFAE0034 */   sw        $t6, 0x34($sp)
/* 3E830 8003DC30 28610005 */  slti       $at, $v1, 0x5
/* 3E834 8003DC34 10200013 */  beqz       $at, .L8003DC84
/* 3E838 8003DC38 240F0020 */   addiu     $t7, $zero, 0x20
/* 3E83C 8003DC3C 3C0B8037 */  lui        $t3, %hi(D_80369098)
/* 3E840 8003DC40 3C0C8037 */  lui        $t4, %hi(D_80369300)
/* 3E844 8003DC44 258C9300 */  addiu      $t4, $t4, %lo(D_80369300)
/* 3E848 8003DC48 256B9098 */  addiu      $t3, $t3, %lo(D_80369098)
/* 3E84C 8003DC4C 24180013 */  addiu      $t8, $zero, 0x13
/* 3E850 8003DC50 2419001E */  addiu      $t9, $zero, 0x1E
/* 3E854 8003DC54 24080013 */  addiu      $t0, $zero, 0x13
/* 3E858 8003DC58 240900EF */  addiu      $t1, $zero, 0xEF
/* 3E85C 8003DC5C 240A0049 */  addiu      $t2, $zero, 0x49
/* 3E860 8003DC60 A7AA002A */  sh         $t2, 0x2A($sp)
/* 3E864 8003DC64 A7A90028 */  sh         $t1, 0x28($sp)
/* 3E868 8003DC68 A7A80026 */  sh         $t0, 0x26($sp)
/* 3E86C 8003DC6C A7B90024 */  sh         $t9, 0x24($sp)
/* 3E870 8003DC70 A7B80022 */  sh         $t8, 0x22($sp)
/* 3E874 8003DC74 AFAB002C */  sw         $t3, 0x2C($sp)
/* 3E878 8003DC78 AFAC0030 */  sw         $t4, 0x30($sp)
/* 3E87C 8003DC7C 1000002E */  b          .L8003DD38
/* 3E880 8003DC80 A7AF0020 */   sh        $t7, 0x20($sp)
.L8003DC84:
/* 3E884 8003DC84 28410005 */  slti       $at, $v0, 0x5
/* 3E888 8003DC88 14200015 */  bnez       $at, .L8003DCE0
/* 3E88C 8003DC8C 2841000A */   slti      $at, $v0, 0xA
/* 3E890 8003DC90 10200013 */  beqz       $at, .L8003DCE0
/* 3E894 8003DC94 240D0020 */   addiu     $t5, $zero, 0x20
/* 3E898 8003DC98 3C098037 */  lui        $t1, %hi(D_80369348)
/* 3E89C 8003DC9C 3C0A8037 */  lui        $t2, %hi(D_803695B0)
/* 3E8A0 8003DCA0 254A95B0 */  addiu      $t2, $t2, %lo(D_803695B0)
/* 3E8A4 8003DCA4 25299348 */  addiu      $t1, $t1, %lo(D_80369348)
/* 3E8A8 8003DCA8 240E0013 */  addiu      $t6, $zero, 0x13
/* 3E8AC 8003DCAC 240F001E */  addiu      $t7, $zero, 0x1E
/* 3E8B0 8003DCB0 24180013 */  addiu      $t8, $zero, 0x13
/* 3E8B4 8003DCB4 241900EF */  addiu      $t9, $zero, 0xEF
/* 3E8B8 8003DCB8 24080049 */  addiu      $t0, $zero, 0x49
/* 3E8BC 8003DCBC A7A8002A */  sh         $t0, 0x2A($sp)
/* 3E8C0 8003DCC0 A7B90028 */  sh         $t9, 0x28($sp)
/* 3E8C4 8003DCC4 A7B80026 */  sh         $t8, 0x26($sp)
/* 3E8C8 8003DCC8 A7AF0024 */  sh         $t7, 0x24($sp)
/* 3E8CC 8003DCCC A7AE0022 */  sh         $t6, 0x22($sp)
/* 3E8D0 8003DCD0 AFA9002C */  sw         $t1, 0x2C($sp)
/* 3E8D4 8003DCD4 AFAA0030 */  sw         $t2, 0x30($sp)
/* 3E8D8 8003DCD8 10000017 */  b          .L8003DD38
/* 3E8DC 8003DCDC A7AD0020 */   sh        $t5, 0x20($sp)
.L8003DCE0:
/* 3E8E0 8003DCE0 2841000A */  slti       $at, $v0, 0xA
/* 3E8E4 8003DCE4 14200014 */  bnez       $at, .L8003DD38
/* 3E8E8 8003DCE8 2841000F */   slti      $at, $v0, 0xF
/* 3E8EC 8003DCEC 10200012 */  beqz       $at, .L8003DD38
/* 3E8F0 8003DCF0 240B0020 */   addiu     $t3, $zero, 0x20
/* 3E8F4 8003DCF4 3C198037 */  lui        $t9, %hi(D_803695F8)
/* 3E8F8 8003DCF8 3C088037 */  lui        $t0, %hi(D_80369860)
/* 3E8FC 8003DCFC 25089860 */  addiu      $t0, $t0, %lo(D_80369860)
/* 3E900 8003DD00 273995F8 */  addiu      $t9, $t9, %lo(D_803695F8)
/* 3E904 8003DD04 240C0013 */  addiu      $t4, $zero, 0x13
/* 3E908 8003DD08 240D001E */  addiu      $t5, $zero, 0x1E
/* 3E90C 8003DD0C 240E0013 */  addiu      $t6, $zero, 0x13
/* 3E910 8003DD10 240F00EF */  addiu      $t7, $zero, 0xEF
/* 3E914 8003DD14 24180049 */  addiu      $t8, $zero, 0x49
/* 3E918 8003DD18 A7B8002A */  sh         $t8, 0x2A($sp)
/* 3E91C 8003DD1C A7AF0028 */  sh         $t7, 0x28($sp)
/* 3E920 8003DD20 A7AE0026 */  sh         $t6, 0x26($sp)
/* 3E924 8003DD24 A7AD0024 */  sh         $t5, 0x24($sp)
/* 3E928 8003DD28 A7AC0022 */  sh         $t4, 0x22($sp)
/* 3E92C 8003DD2C AFB9002C */  sw         $t9, 0x2C($sp)
/* 3E930 8003DD30 AFA80030 */  sw         $t0, 0x30($sp)
/* 3E934 8003DD34 A7AB0020 */  sh         $t3, 0x20($sp)
.L8003DD38:
/* 3E938 8003DD38 27A40034 */  addiu      $a0, $sp, 0x34
/* 3E93C 8003DD3C 27A50020 */  addiu      $a1, $sp, 0x20
/* 3E940 8003DD40 0C014EDF */  jal        func_80053B7C
/* 3E944 8003DD44 AFA60038 */   sw        $a2, 0x38($sp)
/* 3E948 8003DD48 8FA90034 */  lw         $t1, 0x34($sp)
/* 3E94C 8003DD4C 8FA60038 */  lw         $a2, 0x38($sp)
/* 3E950 8003DD50 3C0BE700 */  lui        $t3, (0xE7000000 >> 16)
/* 3E954 8003DD54 252A0008 */  addiu      $t2, $t1, 0x8
/* 3E958 8003DD58 AFAA0034 */  sw         $t2, 0x34($sp)
/* 3E95C 8003DD5C 3C0C801A */  lui        $t4, %hi(D_8019E4B8)
/* 3E960 8003DD60 AD200004 */  sw         $zero, 0x4($t1)
/* 3E964 8003DD64 AD2B0000 */  sw         $t3, 0x0($t1)
/* 3E968 8003DD68 8D8CE4B8 */  lw         $t4, %lo(D_8019E4B8)($t4)
/* 3E96C 8003DD6C 3C038009 */  lui        $v1, %hi(D_8008EE58)
/* 3E970 8003DD70 3C018009 */  lui        $at, %hi(D_8008EE58)
/* 3E974 8003DD74 1580000B */  bnez       $t4, .L8003DDA4
/* 3E978 8003DD78 00000000 */   nop
/* 3E97C 8003DD7C 9063EE58 */  lbu        $v1, %lo(D_8008EE58)($v1)
/* 3E980 8003DD80 3C018009 */  lui        $at, %hi(D_8008EE58)
/* 3E984 8003DD84 24630001 */  addiu      $v1, $v1, 0x1
/* 3E988 8003DD88 306D00FF */  andi       $t5, $v1, 0xFF
/* 3E98C 8003DD8C A02DEE58 */  sb         $t5, %lo(D_8008EE58)($at)
/* 3E990 8003DD90 2401000F */  addiu      $at, $zero, 0xF
/* 3E994 8003DD94 15A10004 */  bne        $t5, $at, .L8003DDA8
/* 3E998 8003DD98 3C018009 */   lui       $at, %hi(D_8008EE58)
/* 3E99C 8003DD9C 10000002 */  b          .L8003DDA8
/* 3E9A0 8003DDA0 A020EE58 */   sb        $zero, %lo(D_8008EE58)($at)
.L8003DDA4:
/* 3E9A4 8003DDA4 A020EE58 */  sb         $zero, %lo(D_8008EE58)($at)
.L8003DDA8:
/* 3E9A8 8003DDA8 8FAE0034 */  lw         $t6, 0x34($sp)
/* 3E9AC 8003DDAC ACCE0000 */  sw         $t6, 0x0($a2)
/* 3E9B0 8003DDB0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3E9B4 8003DDB4 27BD0038 */  addiu      $sp, $sp, 0x38
/* 3E9B8 8003DDB8 03E00008 */  jr         $ra
/* 3E9BC 8003DDBC 00000000 */   nop

glabel func_8003DDC0
/* 3E9C0 8003DDC0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 3E9C4 8003DDC4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3E9C8 8003DDC8 AFA40030 */  sw         $a0, 0x30($sp)
/* 3E9CC 8003DDCC 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3E9D0 8003DDD0 3C02801A */  lui        $v0, %hi(D_8019E4C0)
/* 3E9D4 8003DDD4 2442E4C0 */  addiu      $v0, $v0, %lo(D_8019E4C0)
/* 3E9D8 8003DDD8 844A0000 */  lh         $t2, 0x0($v0)
/* 3E9DC 8003DDDC 844B0002 */  lh         $t3, 0x2($v0)
/* 3E9E0 8003DDE0 3C0C8037 */  lui        $t4, %hi(D_803680E8)
/* 3E9E4 8003DDE4 3C0D8037 */  lui        $t5, %hi(D_80368128)
/* 3E9E8 8003DDE8 25AD8128 */  addiu      $t5, $t5, %lo(D_80368128)
/* 3E9EC 8003DDEC 258C80E8 */  addiu      $t4, $t4, %lo(D_803680E8)
/* 3E9F0 8003DDF0 24180010 */  addiu      $t8, $zero, 0x10
/* 3E9F4 8003DDF4 24190007 */  addiu      $t9, $zero, 0x7
/* 3E9F8 8003DDF8 24080010 */  addiu      $t0, $zero, 0x10
/* 3E9FC 8003DDFC 24090007 */  addiu      $t1, $zero, 0x7
/* 3EA00 8003DE00 A7A9001E */  sh         $t1, 0x1E($sp)
/* 3EA04 8003DE04 A7A8001C */  sh         $t0, 0x1C($sp)
/* 3EA08 8003DE08 A7B9001A */  sh         $t9, 0x1A($sp)
/* 3EA0C 8003DE0C A7B80018 */  sh         $t8, 0x18($sp)
/* 3EA10 8003DE10 AFAC0024 */  sw         $t4, 0x24($sp)
/* 3EA14 8003DE14 AFAD0028 */  sw         $t5, 0x28($sp)
/* 3EA18 8003DE18 27A4002C */  addiu      $a0, $sp, 0x2C
/* 3EA1C 8003DE1C 27A50018 */  addiu      $a1, $sp, 0x18
/* 3EA20 8003DE20 AFAF002C */  sw         $t7, 0x2C($sp)
/* 3EA24 8003DE24 A7AA0020 */  sh         $t2, 0x20($sp)
/* 3EA28 8003DE28 0C0150A4 */  jal        func_80054290
/* 3EA2C 8003DE2C A7AB0022 */   sh        $t3, 0x22($sp)
/* 3EA30 8003DE30 8FAE002C */  lw         $t6, 0x2C($sp)
/* 3EA34 8003DE34 8FAF0030 */  lw         $t7, 0x30($sp)
/* 3EA38 8003DE38 ADEE0000 */  sw         $t6, 0x0($t7)
/* 3EA3C 8003DE3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3EA40 8003DE40 27BD0030 */  addiu      $sp, $sp, 0x30
/* 3EA44 8003DE44 03E00008 */  jr         $ra
/* 3EA48 8003DE48 00000000 */   nop

glabel func_8003DE4C
/* 3EA4C 8003DE4C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 3EA50 8003DE50 3C02801A */  lui        $v0, %hi(D_8019E5BC)
/* 3EA54 8003DE54 8442E5BC */  lh         $v0, %lo(D_8019E5BC)($v0)
/* 3EA58 8003DE58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3EA5C 8003DE5C AFA40040 */  sw         $a0, 0x40($sp)
/* 3EA60 8003DE60 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3EA64 8003DE64 24010005 */  addiu      $at, $zero, 0x5
/* 3EA68 8003DE68 1041000B */  beq        $v0, $at, .L8003DE98
/* 3EA6C 8003DE6C AFAF003C */   sw        $t7, 0x3C($sp)
/* 3EA70 8003DE70 24010007 */  addiu      $at, $zero, 0x7
/* 3EA74 8003DE74 10410008 */  beq        $v0, $at, .L8003DE98
/* 3EA78 8003DE78 24010009 */   addiu     $at, $zero, 0x9
/* 3EA7C 8003DE7C 10410006 */  beq        $v0, $at, .L8003DE98
/* 3EA80 8003DE80 2401000B */   addiu     $at, $zero, 0xB
/* 3EA84 8003DE84 10410004 */  beq        $v0, $at, .L8003DE98
/* 3EA88 8003DE88 2401000D */   addiu     $at, $zero, 0xD
/* 3EA8C 8003DE8C 10410002 */  beq        $v0, $at, .L8003DE98
/* 3EA90 8003DE90 2401000F */   addiu     $at, $zero, 0xF
/* 3EA94 8003DE94 14410018 */  bne        $v0, $at, .L8003DEF8
.L8003DE98:
/* 3EA98 8003DE98 3C0C8037 */   lui       $t4, %hi(D_803698A8)
/* 3EA9C 8003DE9C 3C0D8037 */  lui        $t5, %hi(D_803699B8)
/* 3EAA0 8003DEA0 25AD99B8 */  addiu      $t5, $t5, %lo(D_803699B8)
/* 3EAA4 8003DEA4 258C98A8 */  addiu      $t4, $t4, %lo(D_803698A8)
/* 3EAA8 8003DEA8 24180030 */  addiu      $t8, $zero, 0x30
/* 3EAAC 8003DEAC 2419000B */  addiu      $t9, $zero, 0xB
/* 3EAB0 8003DEB0 24080030 */  addiu      $t0, $zero, 0x30
/* 3EAB4 8003DEB4 2409000B */  addiu      $t1, $zero, 0xB
/* 3EAB8 8003DEB8 240A0030 */  addiu      $t2, $zero, 0x30
/* 3EABC 8003DEBC 240B0060 */  addiu      $t3, $zero, 0x60
/* 3EAC0 8003DEC0 A7AB0032 */  sh         $t3, 0x32($sp)
/* 3EAC4 8003DEC4 A7AA0030 */  sh         $t2, 0x30($sp)
/* 3EAC8 8003DEC8 A7A9002E */  sh         $t1, 0x2E($sp)
/* 3EACC 8003DECC A7A8002C */  sh         $t0, 0x2C($sp)
/* 3EAD0 8003DED0 A7B9002A */  sh         $t9, 0x2A($sp)
/* 3EAD4 8003DED4 A7B80028 */  sh         $t8, 0x28($sp)
/* 3EAD8 8003DED8 AFAC0034 */  sw         $t4, 0x34($sp)
/* 3EADC 8003DEDC AFAD0038 */  sw         $t5, 0x38($sp)
/* 3EAE0 8003DEE0 27A4003C */  addiu      $a0, $sp, 0x3C
/* 3EAE4 8003DEE4 0C014F9F */  jal        func_80053E7C
/* 3EAE8 8003DEE8 27A50028 */   addiu     $a1, $sp, 0x28
/* 3EAEC 8003DEEC 3C02801A */  lui        $v0, %hi(D_8019E5BC)
/* 3EAF0 8003DEF0 10000022 */  b          .L8003DF7C
/* 3EAF4 8003DEF4 8442E5BC */   lh        $v0, %lo(D_8019E5BC)($v0)
.L8003DEF8:
/* 3EAF8 8003DEF8 24010015 */  addiu      $at, $zero, 0x15
/* 3EAFC 8003DEFC 10410009 */  beq        $v0, $at, .L8003DF24
/* 3EB00 8003DF00 240E0030 */   addiu     $t6, $zero, 0x30
/* 3EB04 8003DF04 24010016 */  addiu      $at, $zero, 0x16
/* 3EB08 8003DF08 10410006 */  beq        $v0, $at, .L8003DF24
/* 3EB0C 8003DF0C 24010017 */   addiu     $at, $zero, 0x17
/* 3EB10 8003DF10 10410004 */  beq        $v0, $at, .L8003DF24
/* 3EB14 8003DF14 24010018 */   addiu     $at, $zero, 0x18
/* 3EB18 8003DF18 10410002 */  beq        $v0, $at, .L8003DF24
/* 3EB1C 8003DF1C 24010019 */   addiu     $at, $zero, 0x19
/* 3EB20 8003DF20 14410016 */  bne        $v0, $at, .L8003DF7C
.L8003DF24:
/* 3EB24 8003DF24 3C0A8036 */   lui       $t2, %hi(D_80367610)
/* 3EB28 8003DF28 3C0B8036 */  lui        $t3, %hi(D_80367750)
/* 3EB2C 8003DF2C 256B7750 */  addiu      $t3, $t3, %lo(D_80367750)
/* 3EB30 8003DF30 254A7610 */  addiu      $t2, $t2, %lo(D_80367610)
/* 3EB34 8003DF34 240F000D */  addiu      $t7, $zero, 0xD
/* 3EB38 8003DF38 24180030 */  addiu      $t8, $zero, 0x30
/* 3EB3C 8003DF3C 2419000D */  addiu      $t9, $zero, 0xD
/* 3EB40 8003DF40 24080030 */  addiu      $t0, $zero, 0x30
/* 3EB44 8003DF44 2409005F */  addiu      $t1, $zero, 0x5F
/* 3EB48 8003DF48 A7A90032 */  sh         $t1, 0x32($sp)
/* 3EB4C 8003DF4C A7A80030 */  sh         $t0, 0x30($sp)
/* 3EB50 8003DF50 A7B9002E */  sh         $t9, 0x2E($sp)
/* 3EB54 8003DF54 A7B8002C */  sh         $t8, 0x2C($sp)
/* 3EB58 8003DF58 A7AF002A */  sh         $t7, 0x2A($sp)
/* 3EB5C 8003DF5C AFAA0034 */  sw         $t2, 0x34($sp)
/* 3EB60 8003DF60 AFAB0038 */  sw         $t3, 0x38($sp)
/* 3EB64 8003DF64 A7AE0028 */  sh         $t6, 0x28($sp)
/* 3EB68 8003DF68 27A4003C */  addiu      $a0, $sp, 0x3C
/* 3EB6C 8003DF6C 0C014F9F */  jal        func_80053E7C
/* 3EB70 8003DF70 27A50028 */   addiu     $a1, $sp, 0x28
/* 3EB74 8003DF74 3C02801A */  lui        $v0, %hi(D_8019E5BC)
/* 3EB78 8003DF78 8442E5BC */  lh         $v0, %lo(D_8019E5BC)($v0)
.L8003DF7C:
/* 3EB7C 8003DF7C 00026080 */  sll        $t4, $v0, 2
/* 3EB80 8003DF80 01826023 */  subu       $t4, $t4, $v0
/* 3EB84 8003DF84 3C0D8009 */  lui        $t5, %hi(D_8008F2A0)
/* 3EB88 8003DF88 25ADF2A0 */  addiu      $t5, $t5, %lo(D_8008F2A0)
/* 3EB8C 8003DF8C 000C6080 */  sll        $t4, $t4, 2
/* 3EB90 8003DF90 018D3021 */  addu       $a2, $t4, $t5
/* 3EB94 8003DF94 94C70000 */  lhu        $a3, 0x0($a2)
/* 3EB98 8003DF98 2419000B */  addiu      $t9, $zero, 0xB
/* 3EB9C 8003DF9C 2408000B */  addiu      $t0, $zero, 0xB
/* 3EBA0 8003DFA0 04E10004 */  bgez       $a3, .L8003DFB4
/* 3EBA4 8003DFA4 30E3000F */   andi      $v1, $a3, 0xF
/* 3EBA8 8003DFA8 10600002 */  beqz       $v1, .L8003DFB4
/* 3EBAC 8003DFAC 00000000 */   nop
/* 3EBB0 8003DFB0 2463FFF0 */  addiu      $v1, $v1, -0x10
.L8003DFB4:
/* 3EBB4 8003DFB4 306EFFFF */  andi       $t6, $v1, 0xFFFF
/* 3EBB8 8003DFB8 11C00005 */  beqz       $t6, .L8003DFD0
/* 3EBBC 8003DFBC 01C01825 */   or        $v1, $t6, $zero
/* 3EBC0 8003DFC0 240F0010 */  addiu      $t7, $zero, 0x10
/* 3EBC4 8003DFC4 01EE1823 */  subu       $v1, $t7, $t6
/* 3EBC8 8003DFC8 3078FFFF */  andi       $t8, $v1, 0xFFFF
/* 3EBCC 8003DFCC 03001825 */  or         $v1, $t8, $zero
.L8003DFD0:
/* 3EBD0 8003DFD0 94C90002 */  lhu        $t1, 0x2($a2)
/* 3EBD4 8003DFD4 8CCB0004 */  lw         $t3, 0x4($a2)
/* 3EBD8 8003DFD8 8CCC0008 */  lw         $t4, 0x8($a2)
/* 3EBDC 8003DFDC 00E31021 */  addu       $v0, $a3, $v1
/* 3EBE0 8003DFE0 240A0060 */  addiu      $t2, $zero, 0x60
/* 3EBE4 8003DFE4 A7AA0032 */  sh         $t2, 0x32($sp)
/* 3EBE8 8003DFE8 A7A20028 */  sh         $v0, 0x28($sp)
/* 3EBEC 8003DFEC A7A2002C */  sh         $v0, 0x2C($sp)
/* 3EBF0 8003DFF0 A7B9002A */  sh         $t9, 0x2A($sp)
/* 3EBF4 8003DFF4 A7A8002E */  sh         $t0, 0x2E($sp)
/* 3EBF8 8003DFF8 27A4003C */  addiu      $a0, $sp, 0x3C
/* 3EBFC 8003DFFC 27A50028 */  addiu      $a1, $sp, 0x28
/* 3EC00 8003E000 A7A90030 */  sh         $t1, 0x30($sp)
/* 3EC04 8003E004 AFAB0034 */  sw         $t3, 0x34($sp)
/* 3EC08 8003E008 0C014F9F */  jal        func_80053E7C
/* 3EC0C 8003E00C AFAC0038 */   sw        $t4, 0x38($sp)
/* 3EC10 8003E010 8FAD003C */  lw         $t5, 0x3C($sp)
/* 3EC14 8003E014 8FAE0040 */  lw         $t6, 0x40($sp)
/* 3EC18 8003E018 ADCD0000 */  sw         $t5, 0x0($t6)
/* 3EC1C 8003E01C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3EC20 8003E020 27BD0040 */  addiu      $sp, $sp, 0x40
/* 3EC24 8003E024 03E00008 */  jr         $ra
/* 3EC28 8003E028 00000000 */   nop

glabel func_8003E02C
/* 3EC2C 8003E02C 3C18801A */  lui        $t8, %hi(D_8019E5BE)
/* 3EC30 8003E030 8718E5BE */  lh         $t8, %lo(D_8019E5BE)($t8)
/* 3EC34 8003E034 3C088009 */  lui        $t0, %hi(D_8008F3D8)
/* 3EC38 8003E038 2508F3D8 */  addiu      $t0, $t0, %lo(D_8008F3D8)
/* 3EC3C 8003E03C 0018C880 */  sll        $t9, $t8, 2
/* 3EC40 8003E040 0338C823 */  subu       $t9, $t9, $t8
/* 3EC44 8003E044 0019C880 */  sll        $t9, $t9, 2
/* 3EC48 8003E048 03283021 */  addu       $a2, $t9, $t0
/* 3EC4C 8003E04C 94C70000 */  lhu        $a3, 0x0($a2)
/* 3EC50 8003E050 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 3EC54 8003E054 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3EC58 8003E058 AFA40040 */  sw         $a0, 0x40($sp)
/* 3EC5C 8003E05C 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3EC60 8003E060 00807025 */  or         $t6, $a0, $zero
/* 3EC64 8003E064 240C0010 */  addiu      $t4, $zero, 0x10
/* 3EC68 8003E068 AFAF003C */  sw         $t7, 0x3C($sp)
/* 3EC6C 8003E06C 04E10004 */  bgez       $a3, .L8003E080
/* 3EC70 8003E070 30E3000F */   andi      $v1, $a3, 0xF
/* 3EC74 8003E074 10600002 */  beqz       $v1, .L8003E080
/* 3EC78 8003E078 00000000 */   nop
/* 3EC7C 8003E07C 2463FFF0 */  addiu      $v1, $v1, -0x10
.L8003E080:
/* 3EC80 8003E080 3069FFFF */  andi       $t1, $v1, 0xFFFF
/* 3EC84 8003E084 11200005 */  beqz       $t1, .L8003E09C
/* 3EC88 8003E088 01201825 */   or        $v1, $t1, $zero
/* 3EC8C 8003E08C 240A0010 */  addiu      $t2, $zero, 0x10
/* 3EC90 8003E090 01491823 */  subu       $v1, $t2, $t1
/* 3EC94 8003E094 306BFFFF */  andi       $t3, $v1, 0xFFFF
/* 3EC98 8003E098 01601825 */  or         $v1, $t3, $zero
.L8003E09C:
/* 3EC9C 8003E09C 94CE0002 */  lhu        $t6, 0x2($a2)
/* 3ECA0 8003E0A0 8CD80004 */  lw         $t8, 0x4($a2)
/* 3ECA4 8003E0A4 8CD90008 */  lw         $t9, 0x8($a2)
/* 3ECA8 8003E0A8 00E31021 */  addu       $v0, $a3, $v1
/* 3ECAC 8003E0AC 240D0010 */  addiu      $t5, $zero, 0x10
/* 3ECB0 8003E0B0 240F006F */  addiu      $t7, $zero, 0x6F
/* 3ECB4 8003E0B4 A7AF0032 */  sh         $t7, 0x32($sp)
/* 3ECB8 8003E0B8 A7AD002E */  sh         $t5, 0x2E($sp)
/* 3ECBC 8003E0BC A7A20028 */  sh         $v0, 0x28($sp)
/* 3ECC0 8003E0C0 A7A2002C */  sh         $v0, 0x2C($sp)
/* 3ECC4 8003E0C4 A7AC002A */  sh         $t4, 0x2A($sp)
/* 3ECC8 8003E0C8 27A4003C */  addiu      $a0, $sp, 0x3C
/* 3ECCC 8003E0CC 27A50028 */  addiu      $a1, $sp, 0x28
/* 3ECD0 8003E0D0 A7AE0030 */  sh         $t6, 0x30($sp)
/* 3ECD4 8003E0D4 AFB80034 */  sw         $t8, 0x34($sp)
/* 3ECD8 8003E0D8 0C014F9F */  jal        func_80053E7C
/* 3ECDC 8003E0DC AFB90038 */   sw        $t9, 0x38($sp)
/* 3ECE0 8003E0E0 8FA8003C */  lw         $t0, 0x3C($sp)
/* 3ECE4 8003E0E4 8FA90040 */  lw         $t1, 0x40($sp)
/* 3ECE8 8003E0E8 AD280000 */  sw         $t0, 0x0($t1)
/* 3ECEC 8003E0EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3ECF0 8003E0F0 27BD0040 */  addiu      $sp, $sp, 0x40
/* 3ECF4 8003E0F4 03E00008 */  jr         $ra
/* 3ECF8 8003E0F8 00000000 */   nop

glabel func_8003E0FC
/* 3ECFC 8003E0FC 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 3ED00 8003E100 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3ED04 8003E104 AFA40070 */  sw         $a0, 0x70($sp)
/* 3ED08 8003E108 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3ED0C 8003E10C 27A4006C */  addiu      $a0, $sp, 0x6C
/* 3ED10 8003E110 0C01556D */  jal        func_800555B4
/* 3ED14 8003E114 AFAF006C */   sw        $t7, 0x6C($sp)
/* 3ED18 8003E118 8FB8006C */  lw         $t8, 0x6C($sp)
/* 3ED1C 8003E11C 3C0CBA00 */  lui        $t4, (0xBA000E02 >> 16)
/* 3ED20 8003E120 358C0E02 */  ori        $t4, $t4, (0xBA000E02 & 0xFFFF)
/* 3ED24 8003E124 27190008 */  addiu      $t9, $t8, 0x8
/* 3ED28 8003E128 AFB9006C */  sw         $t9, 0x6C($sp)
/* 3ED2C 8003E12C 340D8000 */  ori        $t5, $zero, 0x8000
/* 3ED30 8003E130 AF0D0004 */  sw         $t5, 0x4($t8)
/* 3ED34 8003E134 AF0C0000 */  sw         $t4, 0x0($t8)
/* 3ED38 8003E138 8FAE006C */  lw         $t6, 0x6C($sp)
/* 3ED3C 8003E13C 3C198037 */  lui        $t9, %hi(D_80369B18)
/* 3ED40 8003E140 27399B18 */  addiu      $t9, $t9, %lo(D_80369B18)
/* 3ED44 8003E144 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3ED48 8003E148 AFAF006C */  sw         $t7, 0x6C($sp)
/* 3ED4C 8003E14C 3C18FD10 */  lui        $t8, (0xFD100000 >> 16)
/* 3ED50 8003E150 ADD80000 */  sw         $t8, 0x0($t6)
/* 3ED54 8003E154 ADD90004 */  sw         $t9, 0x4($t6)
/* 3ED58 8003E158 8FAC006C */  lw         $t4, 0x6C($sp)
/* 3ED5C 8003E15C 3C0EE800 */  lui        $t6, (0xE8000000 >> 16)
/* 3ED60 8003E160 3C19F500 */  lui        $t9, (0xF5000100 >> 16)
/* 3ED64 8003E164 258D0008 */  addiu      $t5, $t4, 0x8
/* 3ED68 8003E168 AFAD006C */  sw         $t5, 0x6C($sp)
/* 3ED6C 8003E16C AD800004 */  sw         $zero, 0x4($t4)
/* 3ED70 8003E170 AD8E0000 */  sw         $t6, 0x0($t4)
/* 3ED74 8003E174 8FAF006C */  lw         $t7, 0x6C($sp)
/* 3ED78 8003E178 3C0C0700 */  lui        $t4, (0x7000000 >> 16)
/* 3ED7C 8003E17C 37390100 */  ori        $t9, $t9, (0xF5000100 & 0xFFFF)
/* 3ED80 8003E180 25F80008 */  addiu      $t8, $t7, 0x8
/* 3ED84 8003E184 AFB8006C */  sw         $t8, 0x6C($sp)
/* 3ED88 8003E188 ADEC0004 */  sw         $t4, 0x4($t7)
/* 3ED8C 8003E18C ADF90000 */  sw         $t9, 0x0($t7)
/* 3ED90 8003E190 8FAD006C */  lw         $t5, 0x6C($sp)
/* 3ED94 8003E194 3C07E600 */  lui        $a3, (0xE6000000 >> 16)
/* 3ED98 8003E198 3C0C0703 */  lui        $t4, (0x703C000 >> 16)
/* 3ED9C 8003E19C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3EDA0 8003E1A0 AFAE006C */  sw         $t6, 0x6C($sp)
/* 3EDA4 8003E1A4 ADA00004 */  sw         $zero, 0x4($t5)
/* 3EDA8 8003E1A8 ADA70000 */  sw         $a3, 0x0($t5)
/* 3EDAC 8003E1AC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 3EDB0 8003E1B0 358CC000 */  ori        $t4, $t4, (0x703C000 & 0xFFFF)
/* 3EDB4 8003E1B4 3C19F000 */  lui        $t9, (0xF0000000 >> 16)
/* 3EDB8 8003E1B8 25F80008 */  addiu      $t8, $t7, 0x8
/* 3EDBC 8003E1BC AFB8006C */  sw         $t8, 0x6C($sp)
/* 3EDC0 8003E1C0 ADEC0004 */  sw         $t4, 0x4($t7)
/* 3EDC4 8003E1C4 ADF90000 */  sw         $t9, 0x0($t7)
/* 3EDC8 8003E1C8 8FAD006C */  lw         $t5, 0x6C($sp)
/* 3EDCC 8003E1CC 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 3EDD0 8003E1D0 3C19FD48 */  lui        $t9, (0xFD480007 >> 16)
/* 3EDD4 8003E1D4 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3EDD8 8003E1D8 AFAE006C */  sw         $t6, 0x6C($sp)
/* 3EDDC 8003E1DC ADA00004 */  sw         $zero, 0x4($t5)
/* 3EDE0 8003E1E0 ADA80000 */  sw         $t0, 0x0($t5)
/* 3EDE4 8003E1E4 8FAF006C */  lw         $t7, 0x6C($sp)
/* 3EDE8 8003E1E8 3C0C8037 */  lui        $t4, %hi(D_80369AC0)
/* 3EDEC 8003E1EC 258C9AC0 */  addiu      $t4, $t4, %lo(D_80369AC0)
/* 3EDF0 8003E1F0 25F80008 */  addiu      $t8, $t7, 0x8
/* 3EDF4 8003E1F4 AFB8006C */  sw         $t8, 0x6C($sp)
/* 3EDF8 8003E1F8 37390007 */  ori        $t9, $t9, (0xFD480007 & 0xFFFF)
/* 3EDFC 8003E1FC ADF90000 */  sw         $t9, 0x0($t7)
/* 3EE00 8003E200 ADEC0004 */  sw         $t4, 0x4($t7)
/* 3EE04 8003E204 8FAD006C */  lw         $t5, 0x6C($sp)
/* 3EE08 8003E208 3C0FF548 */  lui        $t7, (0xF5480200 >> 16)
/* 3EE0C 8003E20C 3C180708 */  lui        $t8, (0x7080200 >> 16)
/* 3EE10 8003E210 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3EE14 8003E214 AFAE006C */  sw         $t6, 0x6C($sp)
/* 3EE18 8003E218 37180200 */  ori        $t8, $t8, (0x7080200 & 0xFFFF)
/* 3EE1C 8003E21C 35EF0200 */  ori        $t7, $t7, (0xF5480200 & 0xFFFF)
/* 3EE20 8003E220 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3EE24 8003E224 ADB80004 */  sw         $t8, 0x4($t5)
/* 3EE28 8003E228 8FB9006C */  lw         $t9, 0x6C($sp)
/* 3EE2C 8003E22C 3C180701 */  lui        $t8, (0x701E024 >> 16)
/* 3EE30 8003E230 3718E024 */  ori        $t8, $t8, (0x701E024 & 0xFFFF)
/* 3EE34 8003E234 272C0008 */  addiu      $t4, $t9, 0x8
/* 3EE38 8003E238 AFAC006C */  sw         $t4, 0x6C($sp)
/* 3EE3C 8003E23C AF200004 */  sw         $zero, 0x4($t9)
/* 3EE40 8003E240 AF270000 */  sw         $a3, 0x0($t9)
/* 3EE44 8003E244 8FAD006C */  lw         $t5, 0x6C($sp)
/* 3EE48 8003E248 3C0FF400 */  lui        $t7, (0xF4000000 >> 16)
/* 3EE4C 8003E24C 3C078009 */  lui        $a3, %hi(D_8008EE40)
/* 3EE50 8003E250 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3EE54 8003E254 AFAE006C */  sw         $t6, 0x6C($sp)
/* 3EE58 8003E258 ADB80004 */  sw         $t8, 0x4($t5)
/* 3EE5C 8003E25C ADAF0000 */  sw         $t7, 0x0($t5)
/* 3EE60 8003E260 8FB9006C */  lw         $t9, 0x6C($sp)
/* 3EE64 8003E264 3C0FF540 */  lui        $t7, (0xF5400200 >> 16)
/* 3EE68 8003E268 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 3EE6C 8003E26C 272C0008 */  addiu      $t4, $t9, 0x8
/* 3EE70 8003E270 AFAC006C */  sw         $t4, 0x6C($sp)
/* 3EE74 8003E274 AF200004 */  sw         $zero, 0x4($t9)
/* 3EE78 8003E278 AF280000 */  sw         $t0, 0x0($t9)
/* 3EE7C 8003E27C 8FAD006C */  lw         $t5, 0x6C($sp)
/* 3EE80 8003E280 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 3EE84 8003E284 35EF0200 */  ori        $t7, $t7, (0xF5400200 & 0xFFFF)
/* 3EE88 8003E288 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3EE8C 8003E28C AFAE006C */  sw         $t6, 0x6C($sp)
/* 3EE90 8003E290 ADB80004 */  sw         $t8, 0x4($t5)
/* 3EE94 8003E294 ADAF0000 */  sw         $t7, 0x0($t5)
/* 3EE98 8003E298 8FB9006C */  lw         $t9, 0x6C($sp)
/* 3EE9C 8003E29C 3C0E0003 */  lui        $t6, (0x3C024 >> 16)
/* 3EEA0 8003E2A0 35CEC024 */  ori        $t6, $t6, (0x3C024 & 0xFFFF)
/* 3EEA4 8003E2A4 272C0008 */  addiu      $t4, $t9, 0x8
/* 3EEA8 8003E2A8 AFAC006C */  sw         $t4, 0x6C($sp)
/* 3EEAC 8003E2AC 3C0DF200 */  lui        $t5, (0xF2000000 >> 16)
/* 3EEB0 8003E2B0 24E7EE40 */  addiu      $a3, $a3, %lo(D_8008EE40)
/* 3EEB4 8003E2B4 AF2D0000 */  sw         $t5, 0x0($t9)
/* 3EEB8 8003E2B8 AF2E0004 */  sw         $t6, 0x4($t9)
/* 3EEBC 8003E2BC 94F90000 */  lhu        $t9, 0x0($a3)
/* 3EEC0 8003E2C0 8FA6006C */  lw         $a2, 0x6C($sp)
/* 3EEC4 8003E2C4 3C0BE400 */  lui        $t3, (0xE4000268 >> 16)
/* 3EEC8 8003E2C8 272C0005 */  addiu      $t4, $t9, 0x5
/* 3EECC 8003E2CC 000C6880 */  sll        $t5, $t4, 2
/* 3EED0 8003E2D0 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3EED4 8003E2D4 24D80008 */  addiu      $t8, $a2, 0x8
/* 3EED8 8003E2D8 AFB8006C */  sw         $t8, 0x6C($sp)
/* 3EEDC 8003E2DC 000E7B00 */  sll        $t7, $t6, 12
/* 3EEE0 8003E2E0 01EBC025 */  or         $t8, $t7, $t3
/* 3EEE4 8003E2E4 37190238 */  ori        $t9, $t8, (0xE4000238 & 0xFFFF)
/* 3EEE8 8003E2E8 ACD90000 */  sw         $t9, 0x0($a2)
/* 3EEEC 8003E2EC 94EC0000 */  lhu        $t4, 0x0($a3)
/* 3EEF0 8003E2F0 3C08B400 */  lui        $t0, (0xB4000000 >> 16)
/* 3EEF4 8003E2F4 3C0A0400 */  lui        $t2, (0x4000400 >> 16)
/* 3EEF8 8003E2F8 000C6880 */  sll        $t5, $t4, 2
/* 3EEFC 8003E2FC 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3EF00 8003E300 000E7B00 */  sll        $t7, $t6, 12
/* 3EF04 8003E304 35F80210 */  ori        $t8, $t7, 0x210
/* 3EF08 8003E308 ACD80004 */  sw         $t8, 0x4($a2)
/* 3EF0C 8003E30C 8FB9006C */  lw         $t9, 0x6C($sp)
/* 3EF10 8003E310 354A0400 */  ori        $t2, $t2, (0x4000400 & 0xFFFF)
/* 3EF14 8003E314 3C09B300 */  lui        $t1, (0xB3000000 >> 16)
/* 3EF18 8003E318 272C0008 */  addiu      $t4, $t9, 0x8
/* 3EF1C 8003E31C AFAC006C */  sw         $t4, 0x6C($sp)
/* 3EF20 8003E320 AF200004 */  sw         $zero, 0x4($t9)
/* 3EF24 8003E324 AF280000 */  sw         $t0, 0x0($t9)
/* 3EF28 8003E328 8FAD006C */  lw         $t5, 0x6C($sp)
/* 3EF2C 8003E32C 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3EF30 8003E330 AFAE006C */  sw         $t6, 0x6C($sp)
/* 3EF34 8003E334 ADAA0004 */  sw         $t2, 0x4($t5)
/* 3EF38 8003E338 ADA90000 */  sw         $t1, 0x0($t5)
/* 3EF3C 8003E33C 94F90002 */  lhu        $t9, 0x2($a3)
/* 3EF40 8003E340 8FA4006C */  lw         $a0, 0x6C($sp)
/* 3EF44 8003E344 272C0005 */  addiu      $t4, $t9, 0x5
/* 3EF48 8003E348 000C6880 */  sll        $t5, $t4, 2
/* 3EF4C 8003E34C 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3EF50 8003E350 24980008 */  addiu      $t8, $a0, 0x8
/* 3EF54 8003E354 AFB8006C */  sw         $t8, 0x6C($sp)
/* 3EF58 8003E358 000E7B00 */  sll        $t7, $t6, 12
/* 3EF5C 8003E35C 01EBC025 */  or         $t8, $t7, $t3
/* 3EF60 8003E360 37190268 */  ori        $t9, $t8, (0xE4000268 & 0xFFFF)
/* 3EF64 8003E364 AC990000 */  sw         $t9, 0x0($a0)
/* 3EF68 8003E368 94EC0002 */  lhu        $t4, 0x2($a3)
/* 3EF6C 8003E36C 000C6880 */  sll        $t5, $t4, 2
/* 3EF70 8003E370 31AE0FFF */  andi       $t6, $t5, 0xFFF
/* 3EF74 8003E374 000E7B00 */  sll        $t7, $t6, 12
/* 3EF78 8003E378 35F80240 */  ori        $t8, $t7, 0x240
/* 3EF7C 8003E37C AC980004 */  sw         $t8, 0x4($a0)
/* 3EF80 8003E380 8FB9006C */  lw         $t9, 0x6C($sp)
/* 3EF84 8003E384 272C0008 */  addiu      $t4, $t9, 0x8
/* 3EF88 8003E388 AFAC006C */  sw         $t4, 0x6C($sp)
/* 3EF8C 8003E38C AF200004 */  sw         $zero, 0x4($t9)
/* 3EF90 8003E390 AF280000 */  sw         $t0, 0x0($t9)
/* 3EF94 8003E394 8FAD006C */  lw         $t5, 0x6C($sp)
/* 3EF98 8003E398 25AE0008 */  addiu      $t6, $t5, 0x8
/* 3EF9C 8003E39C AFAE006C */  sw         $t6, 0x6C($sp)
/* 3EFA0 8003E3A0 ADAA0004 */  sw         $t2, 0x4($t5)
/* 3EFA4 8003E3A4 ADA90000 */  sw         $t1, 0x0($t5)
/* 3EFA8 8003E3A8 8FB80070 */  lw         $t8, 0x70($sp)
/* 3EFAC 8003E3AC 8FAF006C */  lw         $t7, 0x6C($sp)
/* 3EFB0 8003E3B0 AF0F0000 */  sw         $t7, 0x0($t8)
/* 3EFB4 8003E3B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3EFB8 8003E3B8 27BD0070 */  addiu      $sp, $sp, 0x70
/* 3EFBC 8003E3BC 03E00008 */  jr         $ra
/* 3EFC0 8003E3C0 00000000 */   nop

glabel func_8003E3C4
/* 3EFC4 8003E3C4 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* 3EFC8 8003E3C8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3EFCC 8003E3CC AFA400C0 */  sw         $a0, 0xC0($sp)
/* 3EFD0 8003E3D0 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3EFD4 8003E3D4 27A400BC */  addiu      $a0, $sp, 0xBC
/* 3EFD8 8003E3D8 0C01559D */  jal        func_80055674
/* 3EFDC 8003E3DC AFAF00BC */   sw        $t7, 0xBC($sp)
/* 3EFE0 8003E3E0 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3EFE4 8003E3E4 3C0EBA00 */  lui        $t6, (0xBA000E02 >> 16)
/* 3EFE8 8003E3E8 35CE0E02 */  ori        $t6, $t6, (0xBA000E02 & 0xFFFF)
/* 3EFEC 8003E3EC 27190008 */  addiu      $t9, $t8, 0x8
/* 3EFF0 8003E3F0 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3EFF4 8003E3F4 340F8000 */  ori        $t7, $zero, 0x8000
/* 3EFF8 8003E3F8 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3EFFC 8003E3FC AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F000 8003E400 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F004 8003E404 3C0E8037 */  lui        $t6, %hi(D_803685D8)
/* 3F008 8003E408 3C09FD10 */  lui        $t1, (0xFD100000 >> 16)
/* 3F00C 8003E40C 27190008 */  addiu      $t9, $t8, 0x8
/* 3F010 8003E410 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F014 8003E414 25CE85D8 */  addiu      $t6, $t6, %lo(D_803685D8)
/* 3F018 8003E418 AF0E0004 */  sw         $t6, 0x4($t8)
/* 3F01C 8003E41C AF090000 */  sw         $t1, 0x0($t8)
/* 3F020 8003E420 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F024 8003E424 3C0AE800 */  lui        $t2, (0xE8000000 >> 16)
/* 3F028 8003E428 3C0BF500 */  lui        $t3, (0xF5000100 >> 16)
/* 3F02C 8003E42C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F030 8003E430 AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F034 8003E434 ADE00004 */  sw         $zero, 0x4($t7)
/* 3F038 8003E438 ADEA0000 */  sw         $t2, 0x0($t7)
/* 3F03C 8003E43C 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F040 8003E440 356B0100 */  ori        $t3, $t3, (0xF5000100 & 0xFFFF)
/* 3F044 8003E444 3C0C0700 */  lui        $t4, (0x7000000 >> 16)
/* 3F048 8003E448 272E0008 */  addiu      $t6, $t9, 0x8
/* 3F04C 8003E44C AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F050 8003E450 AF2C0004 */  sw         $t4, 0x4($t9)
/* 3F054 8003E454 AF2B0000 */  sw         $t3, 0x0($t9)
/* 3F058 8003E458 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F05C 8003E45C 3C07E600 */  lui        $a3, (0xE6000000 >> 16)
/* 3F060 8003E460 3C1F0703 */  lui        $ra, (0x703C000 >> 16)
/* 3F064 8003E464 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F068 8003E468 AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F06C 8003E46C ADE00004 */  sw         $zero, 0x4($t7)
/* 3F070 8003E470 ADE70000 */  sw         $a3, 0x0($t7)
/* 3F074 8003E474 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F078 8003E478 37FFC000 */  ori        $ra, $ra, (0x703C000 & 0xFFFF)
/* 3F07C 8003E47C 3C0DF000 */  lui        $t5, (0xF0000000 >> 16)
/* 3F080 8003E480 272E0008 */  addiu      $t6, $t9, 0x8
/* 3F084 8003E484 AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F088 8003E488 AF3F0004 */  sw         $ra, 0x4($t9)
/* 3F08C 8003E48C AF2D0000 */  sw         $t5, 0x0($t9)
/* 3F090 8003E490 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F094 8003E494 3C08E700 */  lui        $t0, (0xE7000000 >> 16)
/* 3F098 8003E498 3C06801A */  lui        $a2, %hi(D_8019E4A0)
/* 3F09C 8003E49C 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F0A0 8003E4A0 AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F0A4 8003E4A4 ADE00004 */  sw         $zero, 0x4($t7)
/* 3F0A8 8003E4A8 ADE80000 */  sw         $t0, 0x0($t7)
/* 3F0AC 8003E4AC 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F0B0 8003E4B0 3C0FFD48 */  lui        $t7, (0xFD480007 >> 16)
/* 3F0B4 8003E4B4 3C188037 */  lui        $t8, %hi(D_80368570)
/* 3F0B8 8003E4B8 272E0008 */  addiu      $t6, $t9, 0x8
/* 3F0BC 8003E4BC AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F0C0 8003E4C0 27188570 */  addiu      $t8, $t8, %lo(D_80368570)
/* 3F0C4 8003E4C4 35EF0007 */  ori        $t7, $t7, (0xFD480007 & 0xFFFF)
/* 3F0C8 8003E4C8 AF2F0000 */  sw         $t7, 0x0($t9)
/* 3F0CC 8003E4CC AF380004 */  sw         $t8, 0x4($t9)
/* 3F0D0 8003E4D0 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F0D4 8003E4D4 3C180708 */  lui        $t8, (0x7080200 >> 16)
/* 3F0D8 8003E4D8 3C0FF548 */  lui        $t7, (0xF5480200 >> 16)
/* 3F0DC 8003E4DC 272E0008 */  addiu      $t6, $t9, 0x8
/* 3F0E0 8003E4E0 AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F0E4 8003E4E4 35EF0200 */  ori        $t7, $t7, (0xF5480200 & 0xFFFF)
/* 3F0E8 8003E4E8 37180200 */  ori        $t8, $t8, (0x7080200 & 0xFFFF)
/* 3F0EC 8003E4EC AF380004 */  sw         $t8, 0x4($t9)
/* 3F0F0 8003E4F0 AF2F0000 */  sw         $t7, 0x0($t9)
/* 3F0F4 8003E4F4 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F0F8 8003E4F8 24010001 */  addiu      $at, $zero, 0x1
/* 3F0FC 8003E4FC 272E0008 */  addiu      $t6, $t9, 0x8
/* 3F100 8003E500 AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F104 8003E504 AF200004 */  sw         $zero, 0x4($t9)
/* 3F108 8003E508 AF270000 */  sw         $a3, 0x0($t9)
/* 3F10C 8003E50C 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F110 8003E510 3C0E0701 */  lui        $t6, (0x701E02C >> 16)
/* 3F114 8003E514 35CEE02C */  ori        $t6, $t6, (0x701E02C & 0xFFFF)
/* 3F118 8003E518 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F11C 8003E51C AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F120 8003E520 3C19F400 */  lui        $t9, (0xF4000000 >> 16)
/* 3F124 8003E524 ADF90000 */  sw         $t9, 0x0($t7)
/* 3F128 8003E528 ADEE0004 */  sw         $t6, 0x4($t7)
/* 3F12C 8003E52C 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F130 8003E530 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F134 8003E534 AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F138 8003E538 ADE00004 */  sw         $zero, 0x4($t7)
/* 3F13C 8003E53C ADE80000 */  sw         $t0, 0x0($t7)
/* 3F140 8003E540 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F144 8003E544 3C0FF540 */  lui        $t7, (0xF5400200 >> 16)
/* 3F148 8003E548 3C180008 */  lui        $t8, (0x80200 >> 16)
/* 3F14C 8003E54C 272E0008 */  addiu      $t6, $t9, 0x8
/* 3F150 8003E550 AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F154 8003E554 37180200 */  ori        $t8, $t8, (0x80200 & 0xFFFF)
/* 3F158 8003E558 35EF0200 */  ori        $t7, $t7, (0xF5400200 & 0xFFFF)
/* 3F15C 8003E55C AF2F0000 */  sw         $t7, 0x0($t9)
/* 3F160 8003E560 AF380004 */  sw         $t8, 0x4($t9)
/* 3F164 8003E564 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F168 8003E568 3C180003 */  lui        $t8, (0x3C02C >> 16)
/* 3F16C 8003E56C 3718C02C */  ori        $t8, $t8, (0x3C02C & 0xFFFF)
/* 3F170 8003E570 272E0008 */  addiu      $t6, $t9, 0x8
/* 3F174 8003E574 AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F178 8003E578 3C0FF200 */  lui        $t7, (0xF2000000 >> 16)
/* 3F17C 8003E57C AF2F0000 */  sw         $t7, 0x0($t9)
/* 3F180 8003E580 AF380004 */  sw         $t8, 0x4($t9)
/* 3F184 8003E584 90C6E4A0 */  lbu        $a2, %lo(D_8019E4A0)($a2)
/* 3F188 8003E588 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F18C 8003E58C 3C0FE41E */  lui        $t7, (0xE41E02B4 >> 16)
/* 3F190 8003E590 14C00016 */  bnez       $a2, .L8003E5EC
/* 3F194 8003E594 272E0008 */   addiu     $t6, $t9, 0x8
/* 3F198 8003E598 AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F19C 8003E59C 3C18001B */  lui        $t8, (0x1BC284 >> 16)
/* 3F1A0 8003E5A0 3718C284 */  ori        $t8, $t8, (0x1BC284 & 0xFFFF)
/* 3F1A4 8003E5A4 35EF02B4 */  ori        $t7, $t7, (0xE41E02B4 & 0xFFFF)
/* 3F1A8 8003E5A8 AF2F0000 */  sw         $t7, 0x0($t9)
/* 3F1AC 8003E5AC AF380004 */  sw         $t8, 0x4($t9)
/* 3F1B0 8003E5B0 8FB900BC */  lw         $t9, 0xBC($sp)
/* 3F1B4 8003E5B4 3C0FB400 */  lui        $t7, (0xB4000000 >> 16)
/* 3F1B8 8003E5B8 272E0008 */  addiu      $t6, $t9, 0x8
/* 3F1BC 8003E5BC AFAE00BC */  sw         $t6, 0xBC($sp)
/* 3F1C0 8003E5C0 AF200004 */  sw         $zero, 0x4($t9)
/* 3F1C4 8003E5C4 AF2F0000 */  sw         $t7, 0x0($t9)
/* 3F1C8 8003E5C8 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F1CC 8003E5CC 3C0F0400 */  lui        $t7, (0x4000400 >> 16)
/* 3F1D0 8003E5D0 35EF0400 */  ori        $t7, $t7, (0x4000400 & 0xFFFF)
/* 3F1D4 8003E5D4 27190008 */  addiu      $t9, $t8, 0x8
/* 3F1D8 8003E5D8 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F1DC 8003E5DC 3C0EB300 */  lui        $t6, (0xB3000000 >> 16)
/* 3F1E0 8003E5E0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F1E4 8003E5E4 10000019 */  b          .L8003E64C
/* 3F1E8 8003E5E8 AF0F0004 */   sw        $t7, 0x4($t8)
.L8003E5EC:
/* 3F1EC 8003E5EC 14C10017 */  bne        $a2, $at, .L8003E64C
/* 3F1F0 8003E5F0 8FB800BC */   lw        $t8, 0xBC($sp)
/* 3F1F4 8003E5F4 27190008 */  addiu      $t9, $t8, 0x8
/* 3F1F8 8003E5F8 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F1FC 8003E5FC 3C0EE43A */  lui        $t6, (0xE43A02B4 >> 16)
/* 3F200 8003E600 3C0F0037 */  lui        $t7, (0x37C284 >> 16)
/* 3F204 8003E604 35EFC284 */  ori        $t7, $t7, (0x37C284 & 0xFFFF)
/* 3F208 8003E608 35CE02B4 */  ori        $t6, $t6, (0xE43A02B4 & 0xFFFF)
/* 3F20C 8003E60C AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F210 8003E610 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3F214 8003E614 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F218 8003E618 3C0EB400 */  lui        $t6, (0xB4000000 >> 16)
/* 3F21C 8003E61C 27190008 */  addiu      $t9, $t8, 0x8
/* 3F220 8003E620 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F224 8003E624 AF000004 */  sw         $zero, 0x4($t8)
/* 3F228 8003E628 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F22C 8003E62C 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F230 8003E630 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 3F234 8003E634 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 3F238 8003E638 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F23C 8003E63C AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F240 8003E640 3C19B300 */  lui        $t9, (0xB3000000 >> 16)
/* 3F244 8003E644 ADF90000 */  sw         $t9, 0x0($t7)
/* 3F248 8003E648 ADEE0004 */  sw         $t6, 0x4($t7)
.L8003E64C:
/* 3F24C 8003E64C 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F250 8003E650 3C198037 */  lui        $t9, %hi(D_80368658)
/* 3F254 8003E654 27398658 */  addiu      $t9, $t9, %lo(D_80368658)
/* 3F258 8003E658 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F25C 8003E65C AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F260 8003E660 ADF90004 */  sw         $t9, 0x4($t7)
/* 3F264 8003E664 ADE90000 */  sw         $t1, 0x0($t7)
/* 3F268 8003E668 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 3F26C 8003E66C 3C06801A */  lui        $a2, %hi(D_8019E4A0)
/* 3F270 8003E670 24010001 */  addiu      $at, $zero, 0x1
/* 3F274 8003E674 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3F278 8003E678 AFAF00BC */  sw         $t7, 0xBC($sp)
/* 3F27C 8003E67C ADC00004 */  sw         $zero, 0x4($t6)
/* 3F280 8003E680 ADCA0000 */  sw         $t2, 0x0($t6)
/* 3F284 8003E684 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F288 8003E688 27190008 */  addiu      $t9, $t8, 0x8
/* 3F28C 8003E68C AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F290 8003E690 AF0C0004 */  sw         $t4, 0x4($t8)
/* 3F294 8003E694 AF0B0000 */  sw         $t3, 0x0($t8)
/* 3F298 8003E698 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 3F29C 8003E69C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3F2A0 8003E6A0 AFAF00BC */  sw         $t7, 0xBC($sp)
/* 3F2A4 8003E6A4 ADC00004 */  sw         $zero, 0x4($t6)
/* 3F2A8 8003E6A8 ADC70000 */  sw         $a3, 0x0($t6)
/* 3F2AC 8003E6AC 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F2B0 8003E6B0 27190008 */  addiu      $t9, $t8, 0x8
/* 3F2B4 8003E6B4 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F2B8 8003E6B8 AF1F0004 */  sw         $ra, 0x4($t8)
/* 3F2BC 8003E6BC AF0D0000 */  sw         $t5, 0x0($t8)
/* 3F2C0 8003E6C0 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 3F2C4 8003E6C4 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3F2C8 8003E6C8 AFAF00BC */  sw         $t7, 0xBC($sp)
/* 3F2CC 8003E6CC ADC00004 */  sw         $zero, 0x4($t6)
/* 3F2D0 8003E6D0 ADC80000 */  sw         $t0, 0x0($t6)
/* 3F2D4 8003E6D4 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F2D8 8003E6D8 3C0EFD48 */  lui        $t6, (0xFD480007 >> 16)
/* 3F2DC 8003E6DC 3C0F8037 */  lui        $t7, %hi(D_803685F0)
/* 3F2E0 8003E6E0 27190008 */  addiu      $t9, $t8, 0x8
/* 3F2E4 8003E6E4 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F2E8 8003E6E8 25EF85F0 */  addiu      $t7, $t7, %lo(D_803685F0)
/* 3F2EC 8003E6EC 35CE0007 */  ori        $t6, $t6, (0xFD480007 & 0xFFFF)
/* 3F2F0 8003E6F0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F2F4 8003E6F4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3F2F8 8003E6F8 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F2FC 8003E6FC 3C0F0708 */  lui        $t7, (0x7080200 >> 16)
/* 3F300 8003E700 3C0EF548 */  lui        $t6, (0xF5480200 >> 16)
/* 3F304 8003E704 27190008 */  addiu      $t9, $t8, 0x8
/* 3F308 8003E708 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F30C 8003E70C 35CE0200 */  ori        $t6, $t6, (0xF5480200 & 0xFFFF)
/* 3F310 8003E710 35EF0200 */  ori        $t7, $t7, (0x7080200 & 0xFFFF)
/* 3F314 8003E714 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3F318 8003E718 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F31C 8003E71C 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F320 8003E720 27190008 */  addiu      $t9, $t8, 0x8
/* 3F324 8003E724 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F328 8003E728 AF000004 */  sw         $zero, 0x4($t8)
/* 3F32C 8003E72C AF070000 */  sw         $a3, 0x0($t8)
/* 3F330 8003E730 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 3F334 8003E734 3C190701 */  lui        $t9, (0x701E02C >> 16)
/* 3F338 8003E738 3739E02C */  ori        $t9, $t9, (0x701E02C & 0xFFFF)
/* 3F33C 8003E73C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3F340 8003E740 AFAF00BC */  sw         $t7, 0xBC($sp)
/* 3F344 8003E744 3C18F400 */  lui        $t8, (0xF4000000 >> 16)
/* 3F348 8003E748 ADD80000 */  sw         $t8, 0x0($t6)
/* 3F34C 8003E74C ADD90004 */  sw         $t9, 0x4($t6)
/* 3F350 8003E750 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 3F354 8003E754 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3F358 8003E758 AFAF00BC */  sw         $t7, 0xBC($sp)
/* 3F35C 8003E75C ADC00004 */  sw         $zero, 0x4($t6)
/* 3F360 8003E760 ADC80000 */  sw         $t0, 0x0($t6)
/* 3F364 8003E764 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F368 8003E768 3C0EF540 */  lui        $t6, (0xF5400200 >> 16)
/* 3F36C 8003E76C 3C0F0008 */  lui        $t7, (0x80200 >> 16)
/* 3F370 8003E770 27190008 */  addiu      $t9, $t8, 0x8
/* 3F374 8003E774 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F378 8003E778 35EF0200 */  ori        $t7, $t7, (0x80200 & 0xFFFF)
/* 3F37C 8003E77C 35CE0200 */  ori        $t6, $t6, (0xF5400200 & 0xFFFF)
/* 3F380 8003E780 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F384 8003E784 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3F388 8003E788 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F38C 8003E78C 3C0F0003 */  lui        $t7, (0x3C02C >> 16)
/* 3F390 8003E790 35EFC02C */  ori        $t7, $t7, (0x3C02C & 0xFFFF)
/* 3F394 8003E794 27190008 */  addiu      $t9, $t8, 0x8
/* 3F398 8003E798 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F39C 8003E79C 3C0EF200 */  lui        $t6, (0xF2000000 >> 16)
/* 3F3A0 8003E7A0 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F3A4 8003E7A4 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3F3A8 8003E7A8 90C6E4A0 */  lbu        $a2, %lo(D_8019E4A0)($a2)
/* 3F3AC 8003E7AC 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F3B0 8003E7B0 3C0EE427 */  lui        $t6, (0xE42742B4 >> 16)
/* 3F3B4 8003E7B4 14C00016 */  bnez       $a2, .L8003E810
/* 3F3B8 8003E7B8 27190008 */   addiu     $t9, $t8, 0x8
/* 3F3BC 8003E7BC AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F3C0 8003E7C0 3C0F0025 */  lui        $t7, (0x250284 >> 16)
/* 3F3C4 8003E7C4 35EF0284 */  ori        $t7, $t7, (0x250284 & 0xFFFF)
/* 3F3C8 8003E7C8 35CE42B4 */  ori        $t6, $t6, (0xE42742B4 & 0xFFFF)
/* 3F3CC 8003E7CC AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F3D0 8003E7D0 AF0F0004 */  sw         $t7, 0x4($t8)
/* 3F3D4 8003E7D4 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F3D8 8003E7D8 3C0EB400 */  lui        $t6, (0xB4000000 >> 16)
/* 3F3DC 8003E7DC 27190008 */  addiu      $t9, $t8, 0x8
/* 3F3E0 8003E7E0 AFB900BC */  sw         $t9, 0xBC($sp)
/* 3F3E4 8003E7E4 AF000004 */  sw         $zero, 0x4($t8)
/* 3F3E8 8003E7E8 AF0E0000 */  sw         $t6, 0x0($t8)
/* 3F3EC 8003E7EC 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F3F0 8003E7F0 3C0E0400 */  lui        $t6, (0x4000400 >> 16)
/* 3F3F4 8003E7F4 35CE0400 */  ori        $t6, $t6, (0x4000400 & 0xFFFF)
/* 3F3F8 8003E7F8 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F3FC 8003E7FC AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F400 8003E800 3C19B300 */  lui        $t9, (0xB3000000 >> 16)
/* 3F404 8003E804 ADF90000 */  sw         $t9, 0x0($t7)
/* 3F408 8003E808 10000019 */  b          .L8003E870
/* 3F40C 8003E80C ADEE0004 */   sw        $t6, 0x4($t7)
.L8003E810:
/* 3F410 8003E810 14C10017 */  bne        $a2, $at, .L8003E870
/* 3F414 8003E814 8FAF00BC */   lw        $t7, 0xBC($sp)
/* 3F418 8003E818 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F41C 8003E81C AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F420 8003E820 3C19E443 */  lui        $t9, (0xE44342B4 >> 16)
/* 3F424 8003E824 3C0E0041 */  lui        $t6, (0x410284 >> 16)
/* 3F428 8003E828 35CE0284 */  ori        $t6, $t6, (0x410284 & 0xFFFF)
/* 3F42C 8003E82C 373942B4 */  ori        $t9, $t9, (0xE44342B4 & 0xFFFF)
/* 3F430 8003E830 ADF90000 */  sw         $t9, 0x0($t7)
/* 3F434 8003E834 ADEE0004 */  sw         $t6, 0x4($t7)
/* 3F438 8003E838 8FAF00BC */  lw         $t7, 0xBC($sp)
/* 3F43C 8003E83C 3C19B400 */  lui        $t9, (0xB4000000 >> 16)
/* 3F440 8003E840 25F80008 */  addiu      $t8, $t7, 0x8
/* 3F444 8003E844 AFB800BC */  sw         $t8, 0xBC($sp)
/* 3F448 8003E848 ADE00004 */  sw         $zero, 0x4($t7)
/* 3F44C 8003E84C ADF90000 */  sw         $t9, 0x0($t7)
/* 3F450 8003E850 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 3F454 8003E854 3C190400 */  lui        $t9, (0x4000400 >> 16)
/* 3F458 8003E858 37390400 */  ori        $t9, $t9, (0x4000400 & 0xFFFF)
/* 3F45C 8003E85C 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3F460 8003E860 AFAF00BC */  sw         $t7, 0xBC($sp)
/* 3F464 8003E864 3C18B300 */  lui        $t8, (0xB3000000 >> 16)
/* 3F468 8003E868 ADD80000 */  sw         $t8, 0x0($t6)
/* 3F46C 8003E86C ADD90004 */  sw         $t9, 0x4($t6)
.L8003E870:
/* 3F470 8003E870 8FAE00BC */  lw         $t6, 0xBC($sp)
/* 3F474 8003E874 25CF0008 */  addiu      $t7, $t6, 0x8
/* 3F478 8003E878 AFAF00BC */  sw         $t7, 0xBC($sp)
/* 3F47C 8003E87C ADC00004 */  sw         $zero, 0x4($t6)
/* 3F480 8003E880 ADC80000 */  sw         $t0, 0x0($t6)
/* 3F484 8003E884 8FB900C0 */  lw         $t9, 0xC0($sp)
/* 3F488 8003E888 8FB800BC */  lw         $t8, 0xBC($sp)
/* 3F48C 8003E88C AF380000 */  sw         $t8, 0x0($t9)
/* 3F490 8003E890 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F494 8003E894 27BD00C0 */  addiu      $sp, $sp, 0xC0
/* 3F498 8003E898 03E00008 */  jr         $ra
/* 3F49C 8003E89C 00000000 */   nop

glabel func_8003E8A0
/* 3F4A0 8003E8A0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 3F4A4 8003E8A4 3C03801A */  lui        $v1, %hi(D_8019E4B4)
/* 3F4A8 8003E8A8 8C63E4B4 */  lw         $v1, %lo(D_8019E4B4)($v1)
/* 3F4AC 8003E8AC AFBF0024 */  sw         $ra, 0x24($sp)
/* 3F4B0 8003E8B0 AFB30020 */  sw         $s3, 0x20($sp)
/* 3F4B4 8003E8B4 AFB2001C */  sw         $s2, 0x1C($sp)
/* 3F4B8 8003E8B8 AFB10018 */  sw         $s1, 0x18($sp)
/* 3F4BC 8003E8BC AFB00014 */  sw         $s0, 0x14($sp)
/* 3F4C0 8003E8C0 AFA40038 */  sw         $a0, 0x38($sp)
/* 3F4C4 8003E8C4 8C8F0000 */  lw         $t7, 0x0($a0)
/* 3F4C8 8003E8C8 24010005 */  addiu      $at, $zero, 0x5
/* 3F4CC 8003E8CC 14610013 */  bne        $v1, $at, .L8003E91C
/* 3F4D0 8003E8D0 AFAF0034 */   sw        $t7, 0x34($sp)
/* 3F4D4 8003E8D4 3C13801A */  lui        $s3, %hi(D_8019E57C)
/* 3F4D8 8003E8D8 3C11801A */  lui        $s1, %hi(D_8019E580)
/* 3F4DC 8003E8DC 2631E580 */  addiu      $s1, $s1, %lo(D_8019E580)
/* 3F4E0 8003E8E0 2673E57C */  addiu      $s3, $s3, %lo(D_8019E57C)
/* 3F4E4 8003E8E4 00008025 */  or         $s0, $zero, $zero
/* 3F4E8 8003E8E8 27B20034 */  addiu      $s2, $sp, 0x34
.L8003E8EC:
/* 3F4EC 8003E8EC 0010C0C0 */  sll        $t8, $s0, 3
/* 3F4F0 8003E8F0 02383021 */  addu       $a2, $s1, $t8
/* 3F4F4 8003E8F4 02402025 */  or         $a0, $s2, $zero
/* 3F4F8 8003E8F8 0C015681 */  jal        func_80055A04
/* 3F4FC 8003E8FC 02602825 */   or        $a1, $s3, $zero
/* 3F500 8003E900 26100001 */  addiu      $s0, $s0, 0x1
/* 3F504 8003E904 321900FF */  andi       $t9, $s0, 0xFF
/* 3F508 8003E908 2B210007 */  slti       $at, $t9, 0x7
/* 3F50C 8003E90C 1420FFF7 */  bnez       $at, .L8003E8EC
/* 3F510 8003E910 03208025 */   or        $s0, $t9, $zero
/* 3F514 8003E914 1000001F */  b          .L8003E994
/* 3F518 8003E918 8FAA0034 */   lw        $t2, 0x34($sp)
.L8003E91C:
/* 3F51C 8003E91C 3C13801A */  lui        $s3, %hi(D_8019E57C)
/* 3F520 8003E920 3C11801A */  lui        $s1, %hi(D_8019E580)
/* 3F524 8003E924 2631E580 */  addiu      $s1, $s1, %lo(D_8019E580)
/* 3F528 8003E928 2673E57C */  addiu      $s3, $s3, %lo(D_8019E57C)
/* 3F52C 8003E92C 00008025 */  or         $s0, $zero, $zero
/* 3F530 8003E930 00001025 */  or         $v0, $zero, $zero
/* 3F534 8003E934 27B20034 */  addiu      $s2, $sp, 0x34
.L8003E938:
/* 3F538 8003E938 10620007 */  beq        $v1, $v0, .L8003E958
/* 3F53C 8003E93C 02402025 */   or        $a0, $s2, $zero
/* 3F540 8003E940 001040C0 */  sll        $t0, $s0, 3
/* 3F544 8003E944 02283021 */  addu       $a2, $s1, $t0
/* 3F548 8003E948 0C015681 */  jal        func_80055A04
/* 3F54C 8003E94C 02602825 */   or        $a1, $s3, $zero
/* 3F550 8003E950 3C03801A */  lui        $v1, %hi(D_8019E4B4)
/* 3F554 8003E954 8C63E4B4 */  lw         $v1, %lo(D_8019E4B4)($v1)
.L8003E958:
/* 3F558 8003E958 26100001 */  addiu      $s0, $s0, 0x1
/* 3F55C 8003E95C 320200FF */  andi       $v0, $s0, 0xFF
/* 3F560 8003E960 28410005 */  slti       $at, $v0, 0x5
/* 3F564 8003E964 1420FFF4 */  bnez       $at, .L8003E938
/* 3F568 8003E968 00408025 */   or        $s0, $v0, $zero
/* 3F56C 8003E96C 24010002 */  addiu      $at, $zero, 0x2
/* 3F570 8003E970 10610007 */  beq        $v1, $at, .L8003E990
/* 3F574 8003E974 24010003 */   addiu     $at, $zero, 0x3
/* 3F578 8003E978 10610005 */  beq        $v1, $at, .L8003E990
/* 3F57C 8003E97C 02402025 */   or        $a0, $s2, $zero
/* 3F580 8003E980 3C06801A */  lui        $a2, %hi(D_8019E5A8)
/* 3F584 8003E984 24C6E5A8 */  addiu      $a2, $a2, %lo(D_8019E5A8)
/* 3F588 8003E988 0C015681 */  jal        func_80055A04
/* 3F58C 8003E98C 02602825 */   or        $a1, $s3, $zero
.L8003E990:
/* 3F590 8003E990 8FAA0034 */  lw         $t2, 0x34($sp)
.L8003E994:
/* 3F594 8003E994 8FAB0038 */  lw         $t3, 0x38($sp)
/* 3F598 8003E998 AD6A0000 */  sw         $t2, 0x0($t3)
/* 3F59C 8003E99C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 3F5A0 8003E9A0 8FB30020 */  lw         $s3, 0x20($sp)
/* 3F5A4 8003E9A4 8FB2001C */  lw         $s2, 0x1C($sp)
/* 3F5A8 8003E9A8 8FB10018 */  lw         $s1, 0x18($sp)
/* 3F5AC 8003E9AC 8FB00014 */  lw         $s0, 0x14($sp)
/* 3F5B0 8003E9B0 03E00008 */  jr         $ra
/* 3F5B4 8003E9B4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003E9B8
/* 3F5B8 8003E9B8 AFA40000 */  sw         $a0, 0x0($sp)
/* 3F5BC 8003E9BC 308E00FF */  andi       $t6, $a0, 0xFF
/* 3F5C0 8003E9C0 30AF00FF */  andi       $t7, $a1, 0xFF
/* 3F5C4 8003E9C4 01C02025 */  or         $a0, $t6, $zero
/* 3F5C8 8003E9C8 AFA50004 */  sw         $a1, 0x4($sp)
/* 3F5CC 8003E9CC 19E0001A */  blez       $t7, .L8003EA38
/* 3F5D0 8003E9D0 01E01025 */   or        $v0, $t7, $zero
/* 3F5D4 8003E9D4 29E1000B */  slti       $at, $t7, 0xB
/* 3F5D8 8003E9D8 10200017 */  beqz       $at, .L8003EA38
/* 3F5DC 8003E9DC 000EC040 */   sll       $t8, $t6, 1
/* 3F5E0 8003E9E0 3C198009 */  lui        $t9, %hi(D_8008EE40)
/* 3F5E4 8003E9E4 2739EE40 */  addiu      $t9, $t9, %lo(D_8008EE40)
/* 3F5E8 8003E9E8 03191021 */  addu       $v0, $t8, $t9
/* 3F5EC 8003E9EC 3C03801A */  lui        $v1, %hi(D_8019E5CE)
/* 3F5F0 8003E9F0 8063E5CE */  lb         $v1, %lo(D_8019E5CE)($v1)
/* 3F5F4 8003E9F4 94480000 */  lhu        $t0, 0x0($v0)
/* 3F5F8 8003E9F8 01032821 */  addu       $a1, $t0, $v1
/* 3F5FC 8003E9FC 28A100A4 */  slti       $at, $a1, 0xA4
/* 3F600 8003EA00 14200005 */  bnez       $at, .L8003EA18
/* 3F604 8003EA04 28A10109 */   slti      $at, $a1, 0x109
/* 3F608 8003EA08 50200004 */  beql       $at, $zero, .L8003EA1C
/* 3F60C 8003EA0C 24010001 */   addiu     $at, $zero, 0x1
/* 3F610 8003EA10 03E00008 */  jr         $ra
/* 3F614 8003EA14 A4450000 */   sh        $a1, 0x0($v0)
.L8003EA18:
/* 3F618 8003EA18 24010001 */  addiu      $at, $zero, 0x1
.L8003EA1C:
/* 3F61C 8003EA1C 14610004 */  bne        $v1, $at, .L8003EA30
/* 3F620 8003EA20 240A00A4 */   addiu     $t2, $zero, 0xA4
/* 3F624 8003EA24 24090108 */  addiu      $t1, $zero, 0x108
/* 3F628 8003EA28 03E00008 */  jr         $ra
/* 3F62C 8003EA2C A4490000 */   sh        $t1, 0x0($v0)
.L8003EA30:
/* 3F630 8003EA30 03E00008 */  jr         $ra
/* 3F634 8003EA34 A44A0000 */   sh        $t2, 0x0($v0)
.L8003EA38:
/* 3F638 8003EA38 2841000B */  slti       $at, $v0, 0xB
/* 3F63C 8003EA3C 1420001A */  bnez       $at, .L8003EAA8
/* 3F640 8003EA40 28410011 */   slti      $at, $v0, 0x11
/* 3F644 8003EA44 10200018 */  beqz       $at, .L8003EAA8
/* 3F648 8003EA48 00045840 */   sll       $t3, $a0, 1
/* 3F64C 8003EA4C 3C0C8009 */  lui        $t4, %hi(D_8008EE40)
/* 3F650 8003EA50 258CEE40 */  addiu      $t4, $t4, %lo(D_8008EE40)
/* 3F654 8003EA54 3C03801A */  lui        $v1, %hi(D_8019E5CE)
/* 3F658 8003EA58 8063E5CE */  lb         $v1, %lo(D_8019E5CE)($v1)
/* 3F65C 8003EA5C 016C1021 */  addu       $v0, $t3, $t4
/* 3F660 8003EA60 944D0000 */  lhu        $t5, 0x0($v0)
/* 3F664 8003EA64 00037040 */  sll        $t6, $v1, 1
/* 3F668 8003EA68 01AE2821 */  addu       $a1, $t5, $t6
/* 3F66C 8003EA6C 28A100A4 */  slti       $at, $a1, 0xA4
/* 3F670 8003EA70 14200005 */  bnez       $at, .L8003EA88
/* 3F674 8003EA74 28A10109 */   slti      $at, $a1, 0x109
/* 3F678 8003EA78 50200004 */  beql       $at, $zero, .L8003EA8C
/* 3F67C 8003EA7C 24010001 */   addiu     $at, $zero, 0x1
/* 3F680 8003EA80 03E00008 */  jr         $ra
/* 3F684 8003EA84 A4450000 */   sh        $a1, 0x0($v0)
.L8003EA88:
/* 3F688 8003EA88 24010001 */  addiu      $at, $zero, 0x1
.L8003EA8C:
/* 3F68C 8003EA8C 14610004 */  bne        $v1, $at, .L8003EAA0
/* 3F690 8003EA90 241800A4 */   addiu     $t8, $zero, 0xA4
/* 3F694 8003EA94 240F0108 */  addiu      $t7, $zero, 0x108
/* 3F698 8003EA98 03E00008 */  jr         $ra
/* 3F69C 8003EA9C A44F0000 */   sh        $t7, 0x0($v0)
.L8003EAA0:
/* 3F6A0 8003EAA0 03E00008 */  jr         $ra
/* 3F6A4 8003EAA4 A4580000 */   sh        $t8, 0x0($v0)
.L8003EAA8:
/* 3F6A8 8003EAA8 28410011 */  slti       $at, $v0, 0x11
/* 3F6AC 8003EAAC 1420001A */  bnez       $at, .L8003EB18
/* 3F6B0 8003EAB0 28410015 */   slti      $at, $v0, 0x15
/* 3F6B4 8003EAB4 10200018 */  beqz       $at, .L8003EB18
/* 3F6B8 8003EAB8 0004C840 */   sll       $t9, $a0, 1
/* 3F6BC 8003EABC 3C088009 */  lui        $t0, %hi(D_8008EE40)
/* 3F6C0 8003EAC0 2508EE40 */  addiu      $t0, $t0, %lo(D_8008EE40)
/* 3F6C4 8003EAC4 3C03801A */  lui        $v1, %hi(D_8019E5CE)
/* 3F6C8 8003EAC8 8063E5CE */  lb         $v1, %lo(D_8019E5CE)($v1)
/* 3F6CC 8003EACC 03281021 */  addu       $v0, $t9, $t0
/* 3F6D0 8003EAD0 94490000 */  lhu        $t1, 0x0($v0)
/* 3F6D4 8003EAD4 00035080 */  sll        $t2, $v1, 2
/* 3F6D8 8003EAD8 012A2821 */  addu       $a1, $t1, $t2
/* 3F6DC 8003EADC 28A100A4 */  slti       $at, $a1, 0xA4
/* 3F6E0 8003EAE0 14200005 */  bnez       $at, .L8003EAF8
/* 3F6E4 8003EAE4 28A10109 */   slti      $at, $a1, 0x109
/* 3F6E8 8003EAE8 50200004 */  beql       $at, $zero, .L8003EAFC
/* 3F6EC 8003EAEC 24010001 */   addiu     $at, $zero, 0x1
/* 3F6F0 8003EAF0 03E00008 */  jr         $ra
/* 3F6F4 8003EAF4 A4450000 */   sh        $a1, 0x0($v0)
.L8003EAF8:
/* 3F6F8 8003EAF8 24010001 */  addiu      $at, $zero, 0x1
.L8003EAFC:
/* 3F6FC 8003EAFC 14610004 */  bne        $v1, $at, .L8003EB10
/* 3F700 8003EB00 240C00A4 */   addiu     $t4, $zero, 0xA4
/* 3F704 8003EB04 240B0108 */  addiu      $t3, $zero, 0x108
/* 3F708 8003EB08 03E00008 */  jr         $ra
/* 3F70C 8003EB0C A44B0000 */   sh        $t3, 0x0($v0)
.L8003EB10:
/* 3F710 8003EB10 03E00008 */  jr         $ra
/* 3F714 8003EB14 A44C0000 */   sh        $t4, 0x0($v0)
.L8003EB18:
/* 3F718 8003EB18 28410015 */  slti       $at, $v0, 0x15
/* 3F71C 8003EB1C 1420001C */  bnez       $at, .L8003EB90
/* 3F720 8003EB20 28410019 */   slti      $at, $v0, 0x19
/* 3F724 8003EB24 1020001A */  beqz       $at, .L8003EB90
/* 3F728 8003EB28 00046840 */   sll       $t5, $a0, 1
/* 3F72C 8003EB2C 3C03801A */  lui        $v1, %hi(D_8019E5CE)
/* 3F730 8003EB30 8063E5CE */  lb         $v1, %lo(D_8019E5CE)($v1)
/* 3F734 8003EB34 3C0E8009 */  lui        $t6, %hi(D_8008EE40)
/* 3F738 8003EB38 25CEEE40 */  addiu      $t6, $t6, %lo(D_8008EE40)
/* 3F73C 8003EB3C 01AE1021 */  addu       $v0, $t5, $t6
/* 3F740 8003EB40 944F0000 */  lhu        $t7, 0x0($v0)
/* 3F744 8003EB44 0003C080 */  sll        $t8, $v1, 2
/* 3F748 8003EB48 0303C023 */  subu       $t8, $t8, $v1
/* 3F74C 8003EB4C 0018C040 */  sll        $t8, $t8, 1
/* 3F750 8003EB50 01F82821 */  addu       $a1, $t7, $t8
/* 3F754 8003EB54 28A100A4 */  slti       $at, $a1, 0xA4
/* 3F758 8003EB58 14200005 */  bnez       $at, .L8003EB70
/* 3F75C 8003EB5C 28A10109 */   slti      $at, $a1, 0x109
/* 3F760 8003EB60 50200004 */  beql       $at, $zero, .L8003EB74
/* 3F764 8003EB64 24010001 */   addiu     $at, $zero, 0x1
/* 3F768 8003EB68 03E00008 */  jr         $ra
/* 3F76C 8003EB6C A4450000 */   sh        $a1, 0x0($v0)
.L8003EB70:
/* 3F770 8003EB70 24010001 */  addiu      $at, $zero, 0x1
.L8003EB74:
/* 3F774 8003EB74 14610004 */  bne        $v1, $at, .L8003EB88
/* 3F778 8003EB78 240800A4 */   addiu     $t0, $zero, 0xA4
/* 3F77C 8003EB7C 24190108 */  addiu      $t9, $zero, 0x108
/* 3F780 8003EB80 03E00008 */  jr         $ra
/* 3F784 8003EB84 A4590000 */   sh        $t9, 0x0($v0)
.L8003EB88:
/* 3F788 8003EB88 03E00008 */  jr         $ra
/* 3F78C 8003EB8C A4480000 */   sh        $t0, 0x0($v0)
.L8003EB90:
/* 3F790 8003EB90 28410019 */  slti       $at, $v0, 0x19
/* 3F794 8003EB94 1420001B */  bnez       $at, .L8003EC04
/* 3F798 8003EB98 00047840 */   sll       $t7, $a0, 1
/* 3F79C 8003EB9C 2841001E */  slti       $at, $v0, 0x1E
/* 3F7A0 8003EBA0 10200018 */  beqz       $at, .L8003EC04
/* 3F7A4 8003EBA4 00044840 */   sll       $t1, $a0, 1
/* 3F7A8 8003EBA8 3C0A8009 */  lui        $t2, %hi(D_8008EE40)
/* 3F7AC 8003EBAC 254AEE40 */  addiu      $t2, $t2, %lo(D_8008EE40)
/* 3F7B0 8003EBB0 3C03801A */  lui        $v1, %hi(D_8019E5CE)
/* 3F7B4 8003EBB4 8063E5CE */  lb         $v1, %lo(D_8019E5CE)($v1)
/* 3F7B8 8003EBB8 012A1021 */  addu       $v0, $t1, $t2
/* 3F7BC 8003EBBC 944B0000 */  lhu        $t3, 0x0($v0)
/* 3F7C0 8003EBC0 000360C0 */  sll        $t4, $v1, 3
/* 3F7C4 8003EBC4 016C2821 */  addu       $a1, $t3, $t4
/* 3F7C8 8003EBC8 28A100A4 */  slti       $at, $a1, 0xA4
/* 3F7CC 8003EBCC 14200005 */  bnez       $at, .L8003EBE4
/* 3F7D0 8003EBD0 28A10109 */   slti      $at, $a1, 0x109
/* 3F7D4 8003EBD4 50200004 */  beql       $at, $zero, .L8003EBE8
/* 3F7D8 8003EBD8 24010001 */   addiu     $at, $zero, 0x1
/* 3F7DC 8003EBDC 03E00008 */  jr         $ra
/* 3F7E0 8003EBE0 A4450000 */   sh        $a1, 0x0($v0)
.L8003EBE4:
/* 3F7E4 8003EBE4 24010001 */  addiu      $at, $zero, 0x1
.L8003EBE8:
/* 3F7E8 8003EBE8 14610004 */  bne        $v1, $at, .L8003EBFC
/* 3F7EC 8003EBEC 240E00A4 */   addiu     $t6, $zero, 0xA4
/* 3F7F0 8003EBF0 240D0108 */  addiu      $t5, $zero, 0x108
/* 3F7F4 8003EBF4 03E00008 */  jr         $ra
/* 3F7F8 8003EBF8 A44D0000 */   sh        $t5, 0x0($v0)
.L8003EBFC:
/* 3F7FC 8003EBFC 03E00008 */  jr         $ra
/* 3F800 8003EC00 A44E0000 */   sh        $t6, 0x0($v0)
.L8003EC04:
/* 3F804 8003EC04 3C03801A */  lui        $v1, %hi(D_8019E5CE)
/* 3F808 8003EC08 8063E5CE */  lb         $v1, %lo(D_8019E5CE)($v1)
/* 3F80C 8003EC0C 3C188009 */  lui        $t8, %hi(D_8008EE40)
/* 3F810 8003EC10 2718EE40 */  addiu      $t8, $t8, %lo(D_8008EE40)
/* 3F814 8003EC14 01F81021 */  addu       $v0, $t7, $t8
/* 3F818 8003EC18 94590000 */  lhu        $t9, 0x0($v0)
/* 3F81C 8003EC1C 00034080 */  sll        $t0, $v1, 2
/* 3F820 8003EC20 01034021 */  addu       $t0, $t0, $v1
/* 3F824 8003EC24 00084040 */  sll        $t0, $t0, 1
/* 3F828 8003EC28 03282821 */  addu       $a1, $t9, $t0
/* 3F82C 8003EC2C 28A100A4 */  slti       $at, $a1, 0xA4
/* 3F830 8003EC30 14200005 */  bnez       $at, .L8003EC48
/* 3F834 8003EC34 28A10109 */   slti      $at, $a1, 0x109
/* 3F838 8003EC38 50200004 */  beql       $at, $zero, .L8003EC4C
/* 3F83C 8003EC3C 24010001 */   addiu     $at, $zero, 0x1
/* 3F840 8003EC40 03E00008 */  jr         $ra
/* 3F844 8003EC44 A4450000 */   sh        $a1, 0x0($v0)
.L8003EC48:
/* 3F848 8003EC48 24010001 */  addiu      $at, $zero, 0x1
.L8003EC4C:
/* 3F84C 8003EC4C 14610004 */  bne        $v1, $at, .L8003EC60
/* 3F850 8003EC50 240A00A4 */   addiu     $t2, $zero, 0xA4
/* 3F854 8003EC54 24090108 */  addiu      $t1, $zero, 0x108
/* 3F858 8003EC58 03E00008 */  jr         $ra
/* 3F85C 8003EC5C A4490000 */   sh        $t1, 0x0($v0)
.L8003EC60:
/* 3F860 8003EC60 A44A0000 */  sh         $t2, 0x0($v0)
/* 3F864 8003EC64 03E00008 */  jr         $ra
/* 3F868 8003EC68 00000000 */   nop

glabel func_8003EC6C
/* 3F86C 8003EC6C 3C038009 */  lui        $v1, %hi(D_8008EE5C)
/* 3F870 8003EC70 9063EE5C */  lbu        $v1, %lo(D_8008EE5C)($v1)
/* 3F874 8003EC74 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 3F878 8003EC78 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3F87C 8003EC7C 8C8E0000 */  lw         $t6, 0x0($a0)
/* 3F880 8003EC80 2861000F */  slti       $at, $v1, 0xF
/* 3F884 8003EC84 00803825 */  or         $a3, $a0, $zero
/* 3F888 8003EC88 00601025 */  or         $v0, $v1, $zero
/* 3F88C 8003EC8C 1420000D */  bnez       $at, .L8003ECC4
/* 3F890 8003EC90 AFAE001C */   sw        $t6, 0x1C($sp)
/* 3F894 8003EC94 2841001E */  slti       $at, $v0, 0x1E
/* 3F898 8003EC98 1020000A */  beqz       $at, .L8003ECC4
/* 3F89C 8003EC9C 27A4001C */   addiu     $a0, $sp, 0x1C
/* 3F8A0 8003ECA0 3C05801A */  lui        $a1, %hi(D_8019EDE4)
/* 3F8A4 8003ECA4 3C06801A */  lui        $a2, %hi(D_8019EDF8)
/* 3F8A8 8003ECA8 24C6EDF8 */  addiu      $a2, $a2, %lo(D_8019EDF8)
/* 3F8AC 8003ECAC 24A5EDE4 */  addiu      $a1, $a1, %lo(D_8019EDE4)
/* 3F8B0 8003ECB0 0C015681 */  jal        func_80055A04
/* 3F8B4 8003ECB4 AFA70020 */   sw        $a3, 0x20($sp)
/* 3F8B8 8003ECB8 3C038009 */  lui        $v1, %hi(D_8008EE5C)
/* 3F8BC 8003ECBC 9063EE5C */  lbu        $v1, %lo(D_8008EE5C)($v1)
/* 3F8C0 8003ECC0 8FA70020 */  lw         $a3, 0x20($sp)
.L8003ECC4:
/* 3F8C4 8003ECC4 24630001 */  addiu      $v1, $v1, 0x1
/* 3F8C8 8003ECC8 306F00FF */  andi       $t7, $v1, 0xFF
/* 3F8CC 8003ECCC 3C018009 */  lui        $at, %hi(D_8008EE5C)
/* 3F8D0 8003ECD0 A02FEE5C */  sb         $t7, %lo(D_8008EE5C)($at)
/* 3F8D4 8003ECD4 2401001E */  addiu      $at, $zero, 0x1E
/* 3F8D8 8003ECD8 15E10002 */  bne        $t7, $at, .L8003ECE4
/* 3F8DC 8003ECDC 3C018009 */   lui       $at, %hi(D_8008EE5C)
/* 3F8E0 8003ECE0 A020EE5C */  sb         $zero, %lo(D_8008EE5C)($at)
.L8003ECE4:
/* 3F8E4 8003ECE4 8FB8001C */  lw         $t8, 0x1C($sp)
/* 3F8E8 8003ECE8 ACF80000 */  sw         $t8, 0x0($a3)
/* 3F8EC 8003ECEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3F8F0 8003ECF0 27BD0020 */  addiu      $sp, $sp, 0x20
/* 3F8F4 8003ECF4 03E00008 */  jr         $ra
/* 3F8F8 8003ECF8 00000000 */   nop
/* 3F8FC 8003ECFC 00000000 */  nop
