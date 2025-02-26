;*******************************************************************************
;* TMS320C55x C/C++ Codegen                                          PC v4.4.1 *
;* Date/Time created: Tue Feb 25 23:00:20 2025                                 *
;*******************************************************************************
	.compiler_opts --hll_source=on --mem_model:code=flat --mem_model:data=large --object_format=coff --silicon_core_3_3 --symdebug:dwarf 
	.mmregs
	.cpl_on
	.arms_on
	.c54cm_off
	.asg AR6, FP
	.asg XAR6, XFP
	.asg DPH, MDP
	.model call=c55_std
	.model mem=large
	.noremark 5002  ; code respects overwrite rules
;*******************************************************************************
;* GLOBAL FILE PARAMETERS                                                      *
;*                                                                             *
;*   Architecture       : TMS320C55x                                           *
;*   Optimizing for     : Speed                                                *
;*   Memory             : Large Model (23-Bit Data Pointers)                   *
;*   Calls              : Normal Library ASM calls                             *
;*   Debug Info         : Standard TI Debug Information                        *
;*******************************************************************************

$C$DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr $C$DW$CU, DW_AT_name("../aic3204.c")
	.dwattr $C$DW$CU, DW_AT_producer("TMS320C55x C/C++ Codegen PC v4.4.1 Copyright (c) 1996-2012 Texas Instruments Incorporated")
	.dwattr $C$DW$CU, DW_AT_TI_version(0x01)
	.dwattr $C$DW$CU, DW_AT_comp_dir("C:\git\ECEN456\ezdsp5535_v1_spring2025\ezdsp5535_v1_spring2025\projects\aic3204\Debug")

$C$DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("EZDSP5535_waitusec")
	.dwattr $C$DW$1, DW_AT_TI_symbol_name("_EZDSP5535_waitusec")
	.dwattr $C$DW$1, DW_AT_declaration
	.dwattr $C$DW$1, DW_AT_external
$C$DW$2	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$2, DW_AT_type(*$C$DW$T$21)
	.dwendtag $C$DW$1


$C$DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("EZDSP5535_I2S_init")
	.dwattr $C$DW$3, DW_AT_TI_symbol_name("_EZDSP5535_I2S_init")
	.dwattr $C$DW$3, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$3, DW_AT_declaration
	.dwattr $C$DW$3, DW_AT_external

$C$DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("myfir")
	.dwattr $C$DW$4, DW_AT_TI_symbol_name("_myfir")
	.dwattr $C$DW$4, DW_AT_declaration
	.dwattr $C$DW$4, DW_AT_external
$C$DW$5	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$5, DW_AT_type(*$C$DW$T$24)
$C$DW$6	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$6, DW_AT_type(*$C$DW$T$25)
$C$DW$7	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$7, DW_AT_type(*$C$DW$T$26)
$C$DW$8	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$8, DW_AT_type(*$C$DW$T$29)
$C$DW$9	.dwtag  DW_TAG_formal_parameter
	.dwattr $C$DW$9, DW_AT_type(*$C$DW$T$30)
	.dwendtag $C$DW$4


$C$DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("EZDSP5535_I2C_write")
	.dwattr $C$DW$10, DW_AT_TI_symbol_name("_EZDSP5535_I2C_write")
	.dwattr $C$DW$10, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$10, DW_AT_declaration
	.dwattr $C$DW$10, DW_AT_external
	.sect	".const:_$P$T0$1"
	.clink
	.align	1
_$P$T0$1:
	.field	0,16			; _$P$T0$1[0] @ 0
	.field	0,16			; _$P$T0$1[1] @ 16
	.field	-1,16			; _$P$T0$1[2] @ 32
	.field	-3,16			; _$P$T0$1[3] @ 48
	.field	-6,16			; _$P$T0$1[4] @ 64
	.field	-11,16			; _$P$T0$1[5] @ 80
	.field	-19,16			; _$P$T0$1[6] @ 96
	.field	-28,16			; _$P$T0$1[7] @ 112
	.field	-39,16			; _$P$T0$1[8] @ 128
	.field	-50,16			; _$P$T0$1[9] @ 144
	.field	-60,16			; _$P$T0$1[10] @ 160
	.field	-66,16			; _$P$T0$1[11] @ 176
	.field	-64,16			; _$P$T0$1[12] @ 192
	.field	-51,16			; _$P$T0$1[13] @ 208
	.field	-22,16			; _$P$T0$1[14] @ 224
	.field	27,16			; _$P$T0$1[15] @ 240
	.field	100,16			; _$P$T0$1[16] @ 256
	.field	200,16			; _$P$T0$1[17] @ 272
	.field	328,16			; _$P$T0$1[18] @ 288
	.field	485,16			; _$P$T0$1[19] @ 304
	.field	668,16			; _$P$T0$1[20] @ 320
	.field	873,16			; _$P$T0$1[21] @ 336
	.field	1093,16			; _$P$T0$1[22] @ 352
	.field	1319,16			; _$P$T0$1[23] @ 368
	.field	1541,16			; _$P$T0$1[24] @ 384
	.field	1748,16			; _$P$T0$1[25] @ 400
	.field	1930,16			; _$P$T0$1[26] @ 416
	.field	2077,16			; _$P$T0$1[27] @ 432
	.field	2179,16			; _$P$T0$1[28] @ 448
	.field	2232,16			; _$P$T0$1[29] @ 464
	.field	2232,16			; _$P$T0$1[30] @ 480
	.field	2179,16			; _$P$T0$1[31] @ 496
	.field	2077,16			; _$P$T0$1[32] @ 512
	.field	1930,16			; _$P$T0$1[33] @ 528
	.field	1748,16			; _$P$T0$1[34] @ 544
	.field	1541,16			; _$P$T0$1[35] @ 560
	.field	1319,16			; _$P$T0$1[36] @ 576
	.field	1093,16			; _$P$T0$1[37] @ 592
	.field	873,16			; _$P$T0$1[38] @ 608
	.field	668,16			; _$P$T0$1[39] @ 624
	.field	485,16			; _$P$T0$1[40] @ 640
	.field	328,16			; _$P$T0$1[41] @ 656
	.field	200,16			; _$P$T0$1[42] @ 672
	.field	100,16			; _$P$T0$1[43] @ 688
	.field	27,16			; _$P$T0$1[44] @ 704
	.field	-22,16			; _$P$T0$1[45] @ 720
	.field	-51,16			; _$P$T0$1[46] @ 736
	.field	-64,16			; _$P$T0$1[47] @ 752
	.field	-66,16			; _$P$T0$1[48] @ 768
	.field	-60,16			; _$P$T0$1[49] @ 784
	.field	-50,16			; _$P$T0$1[50] @ 800
	.field	-39,16			; _$P$T0$1[51] @ 816
	.field	-28,16			; _$P$T0$1[52] @ 832
	.field	-19,16			; _$P$T0$1[53] @ 848
	.field	-11,16			; _$P$T0$1[54] @ 864
	.field	-6,16			; _$P$T0$1[55] @ 880
	.field	-3,16			; _$P$T0$1[56] @ 896
	.field	-1,16			; _$P$T0$1[57] @ 912
	.field	0,16			; _$P$T0$1[58] @ 928
	.field	0,16			; _$P$T0$1[59] @ 944

$C$DW$11	.dwtag  DW_TAG_variable, DW_AT_name("$P$T0$1")
	.dwattr $C$DW$11, DW_AT_TI_symbol_name("_$P$T0$1")
	.dwattr $C$DW$11, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$11, DW_AT_location[DW_OP_addr _$P$T0$1]
	.sect	".const:_$P$T1$2"
	.clink
	.align	1
_$P$T1$2:
	.field	0,16			; _$P$T1$2[0] @ 0
	.field	13961,16			; _$P$T1$2[1] @ 16
	.field	20981,16			; _$P$T1$2[2] @ 32
	.field	18164,16			; _$P$T1$2[3] @ 48
	.field	8334,16			; _$P$T1$2[4] @ 64
	.field	-1639,16			; _$P$T1$2[5] @ 80
	.field	-4882,16			; _$P$T1$2[6] @ 96
	.field	1438,16			; _$P$T1$2[7] @ 112
	.field	14434,16			; _$P$T1$2[8] @ 128
	.field	27184,16			; _$P$T1$2[9] @ 144
	.field	32767,16			; _$P$T1$2[10] @ 160
	.field	28311,16			; _$P$T1$2[11] @ 176
	.field	16667,16			; _$P$T1$2[12] @ 192
	.field	4739,16			; _$P$T1$2[13] @ 208
	.field	-568,16			; _$P$T1$2[14] @ 224
	.field	3613,16			; _$P$T1$2[15] @ 240
	.field	14434,16			; _$P$T1$2[16] @ 256
	.field	25009,16			; _$P$T1$2[17] @ 272
	.field	28453,16			; _$P$T1$2[18] @ 288
	.field	21932,16			; _$P$T1$2[19] @ 304
	.field	8334,16			; _$P$T1$2[20] @ 320
	.field	-5407,16			; _$P$T1$2[21] @ 336
	.field	-12354,16			; _$P$T1$2[22] @ 352
	.field	-9610,16			; _$P$T1$2[23] @ 368
	.field	0,16			; _$P$T1$2[24] @ 384
	.field	9610,16			; _$P$T1$2[25] @ 400
	.field	12354,16			; _$P$T1$2[26] @ 416
	.field	5407,16			; _$P$T1$2[27] @ 432
	.field	-8334,16			; _$P$T1$2[28] @ 448
	.field	-21932,16			; _$P$T1$2[29] @ 464
	.field	-28453,16			; _$P$T1$2[30] @ 480
	.field	-25009,16			; _$P$T1$2[31] @ 496
	.field	-14434,16			; _$P$T1$2[32] @ 512
	.field	-3613,16			; _$P$T1$2[33] @ 528
	.field	568,16			; _$P$T1$2[34] @ 544
	.field	-4739,16			; _$P$T1$2[35] @ 560
	.field	-16667,16			; _$P$T1$2[36] @ 576
	.field	-28311,16			; _$P$T1$2[37] @ 592
	.field	-32767,16			; _$P$T1$2[38] @ 608
	.field	-27184,16			; _$P$T1$2[39] @ 624
	.field	-14434,16			; _$P$T1$2[40] @ 640
	.field	-1438,16			; _$P$T1$2[41] @ 656
	.field	4882,16			; _$P$T1$2[42] @ 672
	.field	1639,16			; _$P$T1$2[43] @ 688
	.field	-8334,16			; _$P$T1$2[44] @ 704
	.field	-18164,16			; _$P$T1$2[45] @ 720
	.field	-20981,16			; _$P$T1$2[46] @ 736
	.field	-13961,16			; _$P$T1$2[47] @ 752
	.field	0,16			; _$P$T1$2[48] @ 768
	.field	13961,16			; _$P$T1$2[49] @ 784
	.field	20981,16			; _$P$T1$2[50] @ 800
	.field	18164,16			; _$P$T1$2[51] @ 816
	.field	8334,16			; _$P$T1$2[52] @ 832
	.field	-1639,16			; _$P$T1$2[53] @ 848
	.field	-4882,16			; _$P$T1$2[54] @ 864
	.field	1438,16			; _$P$T1$2[55] @ 880
	.field	14434,16			; _$P$T1$2[56] @ 896
	.field	27184,16			; _$P$T1$2[57] @ 912
	.field	32767,16			; _$P$T1$2[58] @ 928
	.field	28311,16			; _$P$T1$2[59] @ 944
	.field	16667,16			; _$P$T1$2[60] @ 960
	.field	4739,16			; _$P$T1$2[61] @ 976
	.field	-568,16			; _$P$T1$2[62] @ 992
	.field	3613,16			; _$P$T1$2[63] @ 1008
	.field	14434,16			; _$P$T1$2[64] @ 1024
	.field	25009,16			; _$P$T1$2[65] @ 1040
	.field	28453,16			; _$P$T1$2[66] @ 1056
	.field	21932,16			; _$P$T1$2[67] @ 1072
	.field	8334,16			; _$P$T1$2[68] @ 1088
	.field	-5407,16			; _$P$T1$2[69] @ 1104
	.field	-12354,16			; _$P$T1$2[70] @ 1120
	.field	-9610,16			; _$P$T1$2[71] @ 1136
	.field	0,16			; _$P$T1$2[72] @ 1152
	.field	9610,16			; _$P$T1$2[73] @ 1168
	.field	12354,16			; _$P$T1$2[74] @ 1184
	.field	5407,16			; _$P$T1$2[75] @ 1200
	.field	-8334,16			; _$P$T1$2[76] @ 1216
	.field	-21932,16			; _$P$T1$2[77] @ 1232
	.field	-28453,16			; _$P$T1$2[78] @ 1248
	.field	-25009,16			; _$P$T1$2[79] @ 1264
	.field	-14434,16			; _$P$T1$2[80] @ 1280
	.field	-3613,16			; _$P$T1$2[81] @ 1296
	.field	568,16			; _$P$T1$2[82] @ 1312
	.field	-4739,16			; _$P$T1$2[83] @ 1328
	.field	-16667,16			; _$P$T1$2[84] @ 1344
	.field	-28311,16			; _$P$T1$2[85] @ 1360
	.field	-32767,16			; _$P$T1$2[86] @ 1376
	.field	-27184,16			; _$P$T1$2[87] @ 1392
	.field	-14434,16			; _$P$T1$2[88] @ 1408
	.field	-1438,16			; _$P$T1$2[89] @ 1424
	.field	4882,16			; _$P$T1$2[90] @ 1440
	.field	1639,16			; _$P$T1$2[91] @ 1456
	.field	-8334,16			; _$P$T1$2[92] @ 1472
	.field	-18164,16			; _$P$T1$2[93] @ 1488
	.field	-20981,16			; _$P$T1$2[94] @ 1504
	.field	-13961,16			; _$P$T1$2[95] @ 1520
	.field	0,16			; _$P$T1$2[96] @ 1536
	.field	13961,16			; _$P$T1$2[97] @ 1552
	.field	20981,16			; _$P$T1$2[98] @ 1568
	.field	18164,16			; _$P$T1$2[99] @ 1584
	.field	8334,16			; _$P$T1$2[100] @ 1600
	.field	-1639,16			; _$P$T1$2[101] @ 1616
	.field	-4882,16			; _$P$T1$2[102] @ 1632
	.field	1438,16			; _$P$T1$2[103] @ 1648
	.field	14434,16			; _$P$T1$2[104] @ 1664
	.field	27184,16			; _$P$T1$2[105] @ 1680
	.field	32767,16			; _$P$T1$2[106] @ 1696
	.field	28311,16			; _$P$T1$2[107] @ 1712
	.field	16667,16			; _$P$T1$2[108] @ 1728
	.field	4739,16			; _$P$T1$2[109] @ 1744
	.field	-568,16			; _$P$T1$2[110] @ 1760
	.field	3613,16			; _$P$T1$2[111] @ 1776
	.field	14434,16			; _$P$T1$2[112] @ 1792
	.field	25009,16			; _$P$T1$2[113] @ 1808
	.field	28453,16			; _$P$T1$2[114] @ 1824
	.field	21932,16			; _$P$T1$2[115] @ 1840
	.field	8334,16			; _$P$T1$2[116] @ 1856
	.field	-5407,16			; _$P$T1$2[117] @ 1872
	.field	-12354,16			; _$P$T1$2[118] @ 1888
	.field	-9610,16			; _$P$T1$2[119] @ 1904
	.field	0,16			; _$P$T1$2[120] @ 1920
	.field	9610,16			; _$P$T1$2[121] @ 1936
	.field	12354,16			; _$P$T1$2[122] @ 1952
	.field	5407,16			; _$P$T1$2[123] @ 1968
	.field	-8334,16			; _$P$T1$2[124] @ 1984
	.field	-21932,16			; _$P$T1$2[125] @ 2000
	.field	-28453,16			; _$P$T1$2[126] @ 2016
	.field	-25009,16			; _$P$T1$2[127] @ 2032
	.field	-14434,16			; _$P$T1$2[128] @ 2048
	.field	-3613,16			; _$P$T1$2[129] @ 2064
	.field	568,16			; _$P$T1$2[130] @ 2080
	.field	-4739,16			; _$P$T1$2[131] @ 2096
	.field	-16667,16			; _$P$T1$2[132] @ 2112
	.field	-28311,16			; _$P$T1$2[133] @ 2128
	.field	-32767,16			; _$P$T1$2[134] @ 2144
	.field	-27184,16			; _$P$T1$2[135] @ 2160
	.field	-14434,16			; _$P$T1$2[136] @ 2176
	.field	-1438,16			; _$P$T1$2[137] @ 2192
	.field	4882,16			; _$P$T1$2[138] @ 2208
	.field	1639,16			; _$P$T1$2[139] @ 2224
	.field	-8334,16			; _$P$T1$2[140] @ 2240
	.field	-18164,16			; _$P$T1$2[141] @ 2256
	.field	-20981,16			; _$P$T1$2[142] @ 2272
	.field	-13961,16			; _$P$T1$2[143] @ 2288
	.field	0,16			; _$P$T1$2[144] @ 2304
	.field	13961,16			; _$P$T1$2[145] @ 2320
	.field	20981,16			; _$P$T1$2[146] @ 2336
	.field	18164,16			; _$P$T1$2[147] @ 2352
	.field	8334,16			; _$P$T1$2[148] @ 2368
	.field	-1639,16			; _$P$T1$2[149] @ 2384
	.field	-4882,16			; _$P$T1$2[150] @ 2400
	.field	1438,16			; _$P$T1$2[151] @ 2416
	.field	14434,16			; _$P$T1$2[152] @ 2432
	.field	27184,16			; _$P$T1$2[153] @ 2448
	.field	32767,16			; _$P$T1$2[154] @ 2464
	.field	28311,16			; _$P$T1$2[155] @ 2480
	.field	16667,16			; _$P$T1$2[156] @ 2496
	.field	4739,16			; _$P$T1$2[157] @ 2512
	.field	-568,16			; _$P$T1$2[158] @ 2528
	.field	3613,16			; _$P$T1$2[159] @ 2544
	.field	14434,16			; _$P$T1$2[160] @ 2560
	.field	25009,16			; _$P$T1$2[161] @ 2576
	.field	28453,16			; _$P$T1$2[162] @ 2592
	.field	21932,16			; _$P$T1$2[163] @ 2608
	.field	8334,16			; _$P$T1$2[164] @ 2624
	.field	-5407,16			; _$P$T1$2[165] @ 2640
	.field	-12354,16			; _$P$T1$2[166] @ 2656
	.field	-9610,16			; _$P$T1$2[167] @ 2672
	.field	0,16			; _$P$T1$2[168] @ 2688
	.field	9610,16			; _$P$T1$2[169] @ 2704
	.field	12354,16			; _$P$T1$2[170] @ 2720
	.field	5407,16			; _$P$T1$2[171] @ 2736
	.field	-8334,16			; _$P$T1$2[172] @ 2752
	.field	-21932,16			; _$P$T1$2[173] @ 2768
	.field	-28453,16			; _$P$T1$2[174] @ 2784
	.field	-25009,16			; _$P$T1$2[175] @ 2800
	.field	-14434,16			; _$P$T1$2[176] @ 2816
	.field	-3613,16			; _$P$T1$2[177] @ 2832
	.field	568,16			; _$P$T1$2[178] @ 2848
	.field	-4739,16			; _$P$T1$2[179] @ 2864
	.field	-16667,16			; _$P$T1$2[180] @ 2880
	.field	-28311,16			; _$P$T1$2[181] @ 2896
	.field	-32767,16			; _$P$T1$2[182] @ 2912
	.field	-27184,16			; _$P$T1$2[183] @ 2928
	.field	-14434,16			; _$P$T1$2[184] @ 2944
	.field	-1438,16			; _$P$T1$2[185] @ 2960
	.field	4882,16			; _$P$T1$2[186] @ 2976
	.field	1639,16			; _$P$T1$2[187] @ 2992
	.field	-8334,16			; _$P$T1$2[188] @ 3008
	.field	-18164,16			; _$P$T1$2[189] @ 3024
	.field	-20981,16			; _$P$T1$2[190] @ 3040
	.field	-13961,16			; _$P$T1$2[191] @ 3056
	.field	0,16			; _$P$T1$2[192] @ 3072
	.field	13961,16			; _$P$T1$2[193] @ 3088
	.field	20981,16			; _$P$T1$2[194] @ 3104
	.field	18164,16			; _$P$T1$2[195] @ 3120
	.field	8334,16			; _$P$T1$2[196] @ 3136
	.field	-1639,16			; _$P$T1$2[197] @ 3152
	.field	-4882,16			; _$P$T1$2[198] @ 3168
	.field	1438,16			; _$P$T1$2[199] @ 3184
	.field	14434,16			; _$P$T1$2[200] @ 3200
	.field	27184,16			; _$P$T1$2[201] @ 3216
	.field	32767,16			; _$P$T1$2[202] @ 3232
	.field	28311,16			; _$P$T1$2[203] @ 3248
	.field	16667,16			; _$P$T1$2[204] @ 3264
	.field	4739,16			; _$P$T1$2[205] @ 3280
	.field	-568,16			; _$P$T1$2[206] @ 3296
	.field	3613,16			; _$P$T1$2[207] @ 3312
	.field	14434,16			; _$P$T1$2[208] @ 3328
	.field	25009,16			; _$P$T1$2[209] @ 3344
	.field	28453,16			; _$P$T1$2[210] @ 3360
	.field	21932,16			; _$P$T1$2[211] @ 3376
	.field	8334,16			; _$P$T1$2[212] @ 3392
	.field	-5407,16			; _$P$T1$2[213] @ 3408
	.field	-12354,16			; _$P$T1$2[214] @ 3424
	.field	-9610,16			; _$P$T1$2[215] @ 3440
	.field	0,16			; _$P$T1$2[216] @ 3456
	.field	9610,16			; _$P$T1$2[217] @ 3472
	.field	12354,16			; _$P$T1$2[218] @ 3488
	.field	5407,16			; _$P$T1$2[219] @ 3504
	.field	-8334,16			; _$P$T1$2[220] @ 3520
	.field	-21932,16			; _$P$T1$2[221] @ 3536
	.field	-28453,16			; _$P$T1$2[222] @ 3552
	.field	-25009,16			; _$P$T1$2[223] @ 3568
	.field	-14434,16			; _$P$T1$2[224] @ 3584
	.field	-3613,16			; _$P$T1$2[225] @ 3600
	.field	568,16			; _$P$T1$2[226] @ 3616
	.field	-4739,16			; _$P$T1$2[227] @ 3632
	.field	-16667,16			; _$P$T1$2[228] @ 3648
	.field	-28311,16			; _$P$T1$2[229] @ 3664
	.field	-32767,16			; _$P$T1$2[230] @ 3680
	.field	-27184,16			; _$P$T1$2[231] @ 3696
	.field	-14434,16			; _$P$T1$2[232] @ 3712
	.field	-1438,16			; _$P$T1$2[233] @ 3728
	.field	4882,16			; _$P$T1$2[234] @ 3744
	.field	1639,16			; _$P$T1$2[235] @ 3760
	.field	-8334,16			; _$P$T1$2[236] @ 3776
	.field	-18164,16			; _$P$T1$2[237] @ 3792
	.field	-20981,16			; _$P$T1$2[238] @ 3808
	.field	-13961,16			; _$P$T1$2[239] @ 3824

$C$DW$12	.dwtag  DW_TAG_variable, DW_AT_name("$P$T1$2")
	.dwattr $C$DW$12, DW_AT_TI_symbol_name("_$P$T1$2")
	.dwattr $C$DW$12, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$12, DW_AT_location[DW_OP_addr _$P$T1$2]

$C$DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("memset")
	.dwattr $C$DW$13, DW_AT_TI_symbol_name("_memset")
	.dwattr $C$DW$13, DW_AT_type(*$C$DW$T$3)
	.dwattr $C$DW$13, DW_AT_declaration
	.dwattr $C$DW$13, DW_AT_external
;	C:\ti\ccsv6\tools\compiler\c5500_4.4.1\bin\opt55.exe C:\\Users\\Nicholas\\AppData\\Local\\Temp\\226642 C:\\Users\\Nicholas\\AppData\\Local\\Temp\\226644 
	.sect	".text"
	.global	_AIC3204_process

$C$DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("AIC3204_process")
	.dwattr $C$DW$14, DW_AT_low_pc(_AIC3204_process)
	.dwattr $C$DW$14, DW_AT_high_pc(0x00)
	.dwattr $C$DW$14, DW_AT_TI_symbol_name("_AIC3204_process")
	.dwattr $C$DW$14, DW_AT_external
	.dwattr $C$DW$14, DW_AT_TI_begin_file("../aic3204.c")
	.dwattr $C$DW$14, DW_AT_TI_begin_line(0x61)
	.dwattr $C$DW$14, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$14, DW_AT_TI_max_frame_size(0x25e)
	.dwpsn	file "../aic3204.c",line 98,column 1,is_stmt,address _AIC3204_process

	.dwfde $C$DW$CIE, _AIC3204_process
;*******************************************************************************
;* FUNCTION NAME: AIC3204_process                                              *
;*                                                                             *
;*   Function Uses Regs : T0,T1,T2,AR0,XAR0,AR1,XAR1,AR2,XAR2,AR3,XAR3,AR5,    *
;*                        XAR5,AR7,XAR7,FP,XFP,SP,CSR,RPTC,CARRY,M40,SATA,SATD,*
;*                        RDM,FRCT,SMUL                                        *
;*   Save On Entry Regs : T2,AR5,AR7,FP                                        *
;*   Stack Frame        : Full (Frame Pointer in AR6, w/ debug)                *
;*   Total Frame Size   : 606 words                                            *
;*                        (2 return address/alignment)                         *
;*                        (600 local values)                                   *
;*                        (4 register save area)                               *
;*   Min System Stack   : 4 words                                              *
;*******************************************************************************

;*******************************************************************************
;*                                                                             *
;* Using -g (debug) with optimization (-o2) may disable key optimizations!     *
;*                                                                             *
;*******************************************************************************
_AIC3204_process:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        PSH T2
	.dwcfi	cfa_offset, 2
	.dwcfi	save_reg_to_mem, 14, -2
        PSHBOTH XAR5
	.dwcfi	cfa_offset, 3
	.dwcfi	save_reg_to_mem, 26, -3
        PSHBOTH XAR7
	.dwcfi	cfa_offset, 4
	.dwcfi	save_reg_to_mem, 30, -4
        PSHBOTH XFP
	.dwcfi	cfa_offset, 5
	.dwcfi	save_reg_to_mem, 32, -5
        ADD #-601, mmap(SP)
        AMAR *SP(#0), XFP
	.dwcfi	cfa_offset, 606
;* AR5   assigned to $O$U12
;* AR7   assigned to $O$U14
;* T2    assigned to $O$L1
$C$DW$15	.dwtag  DW_TAG_variable, DW_AT_name("coeffs")
	.dwattr $C$DW$15, DW_AT_TI_symbol_name("_coeffs")
	.dwattr $C$DW$15, DW_AT_type(*$C$DW$T$54)
	.dwattr $C$DW$15, DW_AT_location[DW_OP_bregx 0x24 0]
$C$DW$16	.dwtag  DW_TAG_variable, DW_AT_name("TVI")
	.dwattr $C$DW$16, DW_AT_TI_symbol_name("_TVI")
	.dwattr $C$DW$16, DW_AT_type(*$C$DW$T$55)
	.dwattr $C$DW$16, DW_AT_location[DW_OP_bregx 0x24 60]
$C$DW$17	.dwtag  DW_TAG_variable, DW_AT_name("TVIOut")
	.dwattr $C$DW$17, DW_AT_TI_symbol_name("_TVIOut")
	.dwattr $C$DW$17, DW_AT_type(*$C$DW$T$52)
	.dwattr $C$DW$17, DW_AT_location[DW_OP_bregx 0x24 300]
$C$DW$18	.dwtag  DW_TAG_variable, DW_AT_name("delayline")
	.dwattr $C$DW$18, DW_AT_TI_symbol_name("_delayline")
	.dwattr $C$DW$18, DW_AT_type(*$C$DW$T$53)
	.dwattr $C$DW$18, DW_AT_location[DW_OP_bregx 0x24 540]
	.dwpsn	file "../aic3204.c",line 99,column 19,is_stmt
        AMOV #_$P$T0$1, XAR3 ; |99| 

        RPT #59   ; |99| 
||      AMAR *SP(#0), XAR2

                                            ; loop starts ; |99| 
$C$L1:    
$C$DW$L$_AIC3204_process$2$B:
            MOV *AR3+, *AR2+ ; |99| 
                                        ; loop ends ; |99| 
$C$DW$L$_AIC3204_process$2$E:
$C$L2:    
	.dwpsn	file "../aic3204.c",line 100,column 19,is_stmt
        AMOV #_$P$T1$2, XAR3 ; |100| 

        RPT #239  ; |100| 
||      AMAR *SP(#60), XAR2

                                            ; loop starts ; |100| 
$C$L3:    
$C$DW$L$_AIC3204_process$4$B:
            MOV *AR3+, *AR2+ ; |100| 
                                        ; loop ends ; |100| 
$C$DW$L$_AIC3204_process$4$E:
$C$L4:    
	.dwpsn	file "../aic3204.c",line 102,column 13,is_stmt
        AMAR *SP(#0), XAR0
        MOV #60, T1 ; |102| 
        AMAR *+AR0(#540)
$C$DW$19	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$19, DW_AT_low_pc(0x00)
	.dwattr $C$DW$19, DW_AT_name("_memset")
	.dwattr $C$DW$19, DW_AT_TI_call

        CALL #_memset ; |102| 
||      MOV #0, T0

                                        ; call occurs [#_memset] ; |102| 
        MOV #240, T2
        AMAR *SP(#0), XAR5
        AMAR *SP(#60), XAR7
        AMAR *+AR5(#300)
$C$L5:    
$C$DW$L$_AIC3204_process$6$B:
	.dwpsn	file "../aic3204.c",line 106,column 6,is_stmt
        AMAR *SP(#0), XAR1
        MOV *AR7+, T0 ; |106| 
        AMAR *SP(#0), XAR2
        AMAR *AR5, XAR0
        MOV #60, T1 ; |106| 
        AMAR *+AR1(#540)
$C$DW$20	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$20, DW_AT_low_pc(0x00)
	.dwattr $C$DW$20, DW_AT_name("_myfir")
	.dwattr $C$DW$20, DW_AT_TI_call
        CALL #_myfir ; |106| 
                                        ; call occurs [#_myfir] ; |106| 
	.dwpsn	file "../aic3204.c",line 104,column 17,is_stmt
        SUB #1, T2 ; |104| 
        AMAR *AR5+
        BCC $C$L5,T2 != #0 ; |104| 
                                        ; branchcc occurs ; |104| 
$C$DW$L$_AIC3204_process$6$E:
	.dwpsn	file "../aic3204.c",line 108,column 1,is_stmt
        ADD #601, mmap(SP)
	.dwcfi	cfa_offset, 5
        POPBOTH XFP
	.dwcfi	restore_reg, 32
	.dwcfi	cfa_offset, 4
        POPBOTH XAR7
	.dwcfi	restore_reg, 30
	.dwcfi	cfa_offset, 3
        POPBOTH XAR5
	.dwcfi	restore_reg, 26
	.dwcfi	cfa_offset, 2
        POP T2
	.dwcfi	restore_reg, 14
	.dwcfi	cfa_offset, 1
$C$DW$21	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$21, DW_AT_low_pc(0x00)
	.dwattr $C$DW$21, DW_AT_TI_return
        RET
                                        ; return occurs

$C$DW$22	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$22, DW_AT_name("C:\git\ECEN456\ezdsp5535_v1_spring2025\ezdsp5535_v1_spring2025\projects\aic3204\Debug\aic3204.asm:$C$L5:1:1740546020")
	.dwattr $C$DW$22, DW_AT_TI_begin_file("../aic3204.c")
	.dwattr $C$DW$22, DW_AT_TI_begin_line(0x68)
	.dwattr $C$DW$22, DW_AT_TI_end_line(0x6b)
$C$DW$23	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$23, DW_AT_low_pc($C$DW$L$_AIC3204_process$6$B)
	.dwattr $C$DW$23, DW_AT_high_pc($C$DW$L$_AIC3204_process$6$E)
	.dwendtag $C$DW$22


$C$DW$24	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$24, DW_AT_name("C:\git\ECEN456\ezdsp5535_v1_spring2025\ezdsp5535_v1_spring2025\projects\aic3204\Debug\aic3204.asm:$C$L3:1:1740546020")
	.dwattr $C$DW$24, DW_AT_TI_begin_file("../aic3204.c")
	.dwattr $C$DW$24, DW_AT_TI_begin_line(0x64)
	.dwattr $C$DW$24, DW_AT_TI_end_line(0x64)
$C$DW$25	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$25, DW_AT_low_pc($C$DW$L$_AIC3204_process$4$B)
	.dwattr $C$DW$25, DW_AT_high_pc($C$DW$L$_AIC3204_process$4$E)
	.dwendtag $C$DW$24


$C$DW$26	.dwtag  DW_TAG_TI_loop
	.dwattr $C$DW$26, DW_AT_name("C:\git\ECEN456\ezdsp5535_v1_spring2025\ezdsp5535_v1_spring2025\projects\aic3204\Debug\aic3204.asm:$C$L1:1:1740546020")
	.dwattr $C$DW$26, DW_AT_TI_begin_file("../aic3204.c")
	.dwattr $C$DW$26, DW_AT_TI_begin_line(0x63)
	.dwattr $C$DW$26, DW_AT_TI_end_line(0x63)
$C$DW$27	.dwtag  DW_TAG_TI_loop_range
	.dwattr $C$DW$27, DW_AT_low_pc($C$DW$L$_AIC3204_process$2$B)
	.dwattr $C$DW$27, DW_AT_high_pc($C$DW$L$_AIC3204_process$2$E)
	.dwendtag $C$DW$26

	.dwattr $C$DW$14, DW_AT_TI_end_file("../aic3204.c")
	.dwattr $C$DW$14, DW_AT_TI_end_line(0x6c)
	.dwattr $C$DW$14, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$14

	.sect	".text"

$C$DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("AIC3204_rset")
	.dwattr $C$DW$28, DW_AT_low_pc(_AIC3204_rset)
	.dwattr $C$DW$28, DW_AT_high_pc(0x00)
	.dwattr $C$DW$28, DW_AT_TI_symbol_name("_AIC3204_rset")
	.dwattr $C$DW$28, DW_AT_type(*$C$DW$T$35)
	.dwattr $C$DW$28, DW_AT_TI_begin_file("../aic3204.c")
	.dwattr $C$DW$28, DW_AT_TI_begin_line(0x15)
	.dwattr $C$DW$28, DW_AT_TI_begin_column(0x0e)
	.dwattr $C$DW$28, DW_AT_TI_max_frame_size(0x04)
	.dwpsn	file "../aic3204.c",line 22,column 1,is_stmt,address _AIC3204_rset

	.dwfde $C$DW$CIE, _AIC3204_rset
$C$DW$29	.dwtag  DW_TAG_formal_parameter, DW_AT_name("regnum")
	.dwattr $C$DW$29, DW_AT_TI_symbol_name("_regnum")
	.dwattr $C$DW$29, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$29, DW_AT_location[DW_OP_reg12]
$C$DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_name("regval")
	.dwattr $C$DW$30, DW_AT_TI_symbol_name("_regval")
	.dwattr $C$DW$30, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$30, DW_AT_location[DW_OP_reg13]
;*******************************************************************************
;* FUNCTION NAME: AIC3204_rset                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR0,XAR0,SP,M40,SATA,SATD,RDM,FRCT,    *
;*                        SMUL                                                 *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 4 words                                              *
;*                        (2 return address/alignment)                         *
;*                        (2 local values)                                     *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************

;*******************************************************************************
;*                                                                             *
;* Using -g (debug) with optimization (-o2) may disable key optimizations!     *
;*                                                                             *
;*******************************************************************************
_AIC3204_rset:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-3, SP
	.dwcfi	cfa_offset, 4
;* T0    assigned to _regnum
$C$DW$31	.dwtag  DW_TAG_variable, DW_AT_name("regnum")
	.dwattr $C$DW$31, DW_AT_TI_symbol_name("_regnum")
	.dwattr $C$DW$31, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$31, DW_AT_location[DW_OP_reg12]
;* T1    assigned to _regval
$C$DW$32	.dwtag  DW_TAG_variable, DW_AT_name("regval")
	.dwattr $C$DW$32, DW_AT_TI_symbol_name("_regval")
	.dwattr $C$DW$32, DW_AT_type(*$C$DW$T$39)
	.dwattr $C$DW$32, DW_AT_location[DW_OP_reg13]
$C$DW$33	.dwtag  DW_TAG_variable, DW_AT_name("cmd")
	.dwattr $C$DW$33, DW_AT_TI_symbol_name("_cmd")
	.dwattr $C$DW$33, DW_AT_type(*$C$DW$T$40)
	.dwattr $C$DW$33, DW_AT_location[DW_OP_bregx 0x24 0]
	.dwpsn	file "../aic3204.c",line 24,column 5,is_stmt
        AND #0x007f, T0, AC0 ; |24| 
        MOV AC0, *SP(#0) ; |24| 
	.dwpsn	file "../aic3204.c",line 25,column 5,is_stmt
        MOV T1, *SP(#1) ; |25| 
	.dwpsn	file "../aic3204.c",line 27,column 5,is_stmt
        MOV #300, AC0 ; |27| 
$C$DW$34	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$34, DW_AT_low_pc(0x00)
	.dwattr $C$DW$34, DW_AT_name("_EZDSP5535_waitusec")
	.dwattr $C$DW$34, DW_AT_TI_call
        CALL #_EZDSP5535_waitusec ; |27| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |27| 
	.dwpsn	file "../aic3204.c",line 29,column 5,is_stmt
        MOV #24, T0 ; |29| 

        AMAR *SP(#0), XAR0
||      MOV #2, T1

$C$DW$35	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$35, DW_AT_low_pc(0x00)
	.dwattr $C$DW$35, DW_AT_name("_EZDSP5535_I2C_write")
	.dwattr $C$DW$35, DW_AT_TI_call
        CALL #_EZDSP5535_I2C_write ; |29| 
                                        ; call occurs [#_EZDSP5535_I2C_write] ; |29| 
	.dwpsn	file "../aic3204.c",line 30,column 1,is_stmt
        AADD #3, SP
	.dwcfi	cfa_offset, 1
$C$DW$36	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$36, DW_AT_low_pc(0x00)
	.dwattr $C$DW$36, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$28, DW_AT_TI_end_file("../aic3204.c")
	.dwattr $C$DW$28, DW_AT_TI_end_line(0x1e)
	.dwattr $C$DW$28, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$28

	.sect	".text"
	.global	_AIC3204_Init

$C$DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("AIC3204_Init")
	.dwattr $C$DW$37, DW_AT_low_pc(_AIC3204_Init)
	.dwattr $C$DW$37, DW_AT_high_pc(0x00)
	.dwattr $C$DW$37, DW_AT_TI_symbol_name("_AIC3204_Init")
	.dwattr $C$DW$37, DW_AT_external
	.dwattr $C$DW$37, DW_AT_TI_begin_file("../aic3204.c")
	.dwattr $C$DW$37, DW_AT_TI_begin_line(0x20)
	.dwattr $C$DW$37, DW_AT_TI_begin_column(0x06)
	.dwattr $C$DW$37, DW_AT_TI_max_frame_size(0x02)
	.dwpsn	file "../aic3204.c",line 33,column 1,is_stmt,address _AIC3204_Init

	.dwfde $C$DW$CIE, _AIC3204_Init
;*******************************************************************************
;* FUNCTION NAME: AIC3204_Init                                                 *
;*                                                                             *
;*   Function Uses Regs : AC0,AC0,T0,T1,AR1,SP,M40,SATA,SATD,RDM,FRCT,SMUL     *
;*   Stack Frame        : Compact (No Frame Pointer, w/ debug)                 *
;*   Total Frame Size   : 2 words                                              *
;*                        (2 return address/alignment)                         *
;*   Min System Stack   : 1 word                                               *
;*******************************************************************************

;*******************************************************************************
;*                                                                             *
;* Using -g (debug) with optimization (-o2) may disable key optimizations!     *
;*                                                                             *
;*******************************************************************************
_AIC3204_Init:
	.dwcfi	cfa_offset, 1
	.dwcfi	save_reg_to_mem, 91, -1
        AADD #-1, SP
	.dwcfi	cfa_offset, 2
	.dwpsn	file "../aic3204.c",line 35,column 5,is_stmt
        MOV #0, T0
$C$DW$38	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$38, DW_AT_low_pc(0x00)
	.dwattr $C$DW$38, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$38, DW_AT_TI_call

        CALL #_AIC3204_rset ; |35| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |35| 
	.dwpsn	file "../aic3204.c",line 36,column 5,is_stmt
        MOV #1, T0
$C$DW$39	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$39, DW_AT_low_pc(0x00)
	.dwattr $C$DW$39, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$39, DW_AT_TI_call

        CALL #_AIC3204_rset ; |36| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |36| 
	.dwpsn	file "../aic3204.c",line 37,column 5,is_stmt
        MOV #1000, AC0 ; |37| 
$C$DW$40	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$40, DW_AT_low_pc(0x00)
	.dwattr $C$DW$40, DW_AT_name("_EZDSP5535_waitusec")
	.dwattr $C$DW$40, DW_AT_TI_call
        CALL #_EZDSP5535_waitusec ; |37| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |37| 
	.dwpsn	file "../aic3204.c",line 38,column 5,is_stmt
        MOV #0, T0
$C$DW$41	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$41, DW_AT_low_pc(0x00)
	.dwattr $C$DW$41, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$41, DW_AT_TI_call

        CALL #_AIC3204_rset ; |38| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |38| 
	.dwpsn	file "../aic3204.c",line 39,column 5,is_stmt
        MOV #1, T0
$C$DW$42	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$42, DW_AT_low_pc(0x00)
	.dwattr $C$DW$42, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$42, DW_AT_TI_call

        CALL #_AIC3204_rset ; |39| 
||      MOV #8, T1

                                        ; call occurs [#_AIC3204_rset] ; |39| 
	.dwpsn	file "../aic3204.c",line 40,column 5,is_stmt
        MOV #2, T0
$C$DW$43	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$43, DW_AT_low_pc(0x00)
	.dwattr $C$DW$43, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$43, DW_AT_TI_call

        CALL #_AIC3204_rset ; |40| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |40| 
	.dwpsn	file "../aic3204.c",line 41,column 5,is_stmt
        MOV #123, T0 ; |41| 
$C$DW$44	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$44, DW_AT_low_pc(0x00)
	.dwattr $C$DW$44, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$44, DW_AT_TI_call

        CALL #_AIC3204_rset ; |41| 
||      MOV #5, T1

                                        ; call occurs [#_AIC3204_rset] ; |41| 
	.dwpsn	file "../aic3204.c",line 42,column 5,is_stmt
        MOV #50000, AR1 ; |42| 
        AND #0xffff, AR1, AC0 ; |42| 
$C$DW$45	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$45, DW_AT_low_pc(0x00)
	.dwattr $C$DW$45, DW_AT_name("_EZDSP5535_waitusec")
	.dwattr $C$DW$45, DW_AT_TI_call
        CALL #_EZDSP5535_waitusec ; |42| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |42| 
	.dwpsn	file "../aic3204.c",line 43,column 5,is_stmt
        MOV #0, T0
$C$DW$46	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$46, DW_AT_low_pc(0x00)
	.dwattr $C$DW$46, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$46, DW_AT_TI_call

        CALL #_AIC3204_rset ; |43| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |43| 
	.dwpsn	file "../aic3204.c",line 46,column 5,is_stmt
        MOV #27, T0 ; |46| 
$C$DW$47	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$47, DW_AT_low_pc(0x00)
	.dwattr $C$DW$47, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$47, DW_AT_TI_call

        CALL #_AIC3204_rset ; |46| 
||      MOV #13, T1

                                        ; call occurs [#_AIC3204_rset] ; |46| 
	.dwpsn	file "../aic3204.c",line 47,column 5,is_stmt
        MOV #28, T0 ; |47| 
$C$DW$48	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$48, DW_AT_low_pc(0x00)
	.dwattr $C$DW$48, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$48, DW_AT_TI_call

        CALL #_AIC3204_rset ; |47| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |47| 
	.dwpsn	file "../aic3204.c",line 48,column 5,is_stmt
        MOV #4, T0
$C$DW$49	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$49, DW_AT_low_pc(0x00)
	.dwattr $C$DW$49, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$49, DW_AT_TI_call

        CALL #_AIC3204_rset ; |48| 
||      MOV #3, T1

                                        ; call occurs [#_AIC3204_rset] ; |48| 
	.dwpsn	file "../aic3204.c",line 49,column 5,is_stmt
        MOV #6, T0
$C$DW$50	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$50, DW_AT_low_pc(0x00)
	.dwattr $C$DW$50, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$50, DW_AT_TI_call

        CALL #_AIC3204_rset ; |49| 
||      MOV #7, T1

                                        ; call occurs [#_AIC3204_rset] ; |49| 
	.dwpsn	file "../aic3204.c",line 50,column 5,is_stmt
        MOV #7, T0
$C$DW$51	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$51, DW_AT_low_pc(0x00)
	.dwattr $C$DW$51, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$51, DW_AT_TI_call

        CALL #_AIC3204_rset ; |50| 
||      MOV #6, T1

                                        ; call occurs [#_AIC3204_rset] ; |50| 
	.dwpsn	file "../aic3204.c",line 51,column 5,is_stmt
        MOV #144, T1 ; |51| 
$C$DW$52	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$52, DW_AT_low_pc(0x00)
	.dwattr $C$DW$52, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$52, DW_AT_TI_call

        CALL #_AIC3204_rset ; |51| 
||      MOV #8, T0

                                        ; call occurs [#_AIC3204_rset] ; |51| 
	.dwpsn	file "../aic3204.c",line 52,column 5,is_stmt
        MOV #136, T1 ; |52| 
        MOV #30, T0 ; |52| 
$C$DW$53	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$53, DW_AT_low_pc(0x00)
	.dwattr $C$DW$53, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$53, DW_AT_TI_call
        CALL #_AIC3204_rset ; |52| 
                                        ; call occurs [#_AIC3204_rset] ; |52| 
	.dwpsn	file "../aic3204.c",line 54,column 5,is_stmt
        MOV #145, T1 ; |54| 
$C$DW$54	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$54, DW_AT_low_pc(0x00)
	.dwattr $C$DW$54, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$54, DW_AT_TI_call

        CALL #_AIC3204_rset ; |54| 
||      MOV #5, T0

                                        ; call occurs [#_AIC3204_rset] ; |54| 
	.dwpsn	file "../aic3204.c",line 55,column 5,is_stmt
        MOV #10000, AC0 ; |55| 
$C$DW$55	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$55, DW_AT_low_pc(0x00)
	.dwattr $C$DW$55, DW_AT_name("_EZDSP5535_waitusec")
	.dwattr $C$DW$55, DW_AT_TI_call
        CALL #_EZDSP5535_waitusec ; |55| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |55| 
	.dwpsn	file "../aic3204.c",line 56,column 5,is_stmt
        MOV #13, T0
$C$DW$56	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$56, DW_AT_low_pc(0x00)
	.dwattr $C$DW$56, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$56, DW_AT_TI_call

        CALL #_AIC3204_rset ; |56| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |56| 
	.dwpsn	file "../aic3204.c",line 57,column 5,is_stmt
        MOV #128, T1 ; |57| 
$C$DW$57	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$57, DW_AT_low_pc(0x00)
	.dwattr $C$DW$57, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$57, DW_AT_TI_call

        CALL #_AIC3204_rset ; |57| 
||      MOV #14, T0

                                        ; call occurs [#_AIC3204_rset] ; |57| 
	.dwpsn	file "../aic3204.c",line 58,column 5,is_stmt
        MOV #128, T1 ; |58| 
        MOV #20, T0 ; |58| 
$C$DW$58	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$58, DW_AT_low_pc(0x00)
	.dwattr $C$DW$58, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$58, DW_AT_TI_call
        CALL #_AIC3204_rset ; |58| 
                                        ; call occurs [#_AIC3204_rset] ; |58| 
	.dwpsn	file "../aic3204.c",line 59,column 5,is_stmt
        MOV #132, T1 ; |59| 
$C$DW$59	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$59, DW_AT_low_pc(0x00)
	.dwattr $C$DW$59, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$59, DW_AT_TI_call

        CALL #_AIC3204_rset ; |59| 
||      MOV #11, T0

                                        ; call occurs [#_AIC3204_rset] ; |59| 
	.dwpsn	file "../aic3204.c",line 60,column 5,is_stmt
        MOV #135, T1 ; |60| 
$C$DW$60	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$60, DW_AT_low_pc(0x00)
	.dwattr $C$DW$60, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$60, DW_AT_TI_call

        CALL #_AIC3204_rset ; |60| 
||      MOV #12, T0

                                        ; call occurs [#_AIC3204_rset] ; |60| 
	.dwpsn	file "../aic3204.c",line 61,column 5,is_stmt
        MOV #135, T1 ; |61| 
        MOV #18, T0 ; |61| 
$C$DW$61	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$61, DW_AT_low_pc(0x00)
	.dwattr $C$DW$61, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$61, DW_AT_TI_call
        CALL #_AIC3204_rset ; |61| 
                                        ; call occurs [#_AIC3204_rset] ; |61| 
	.dwpsn	file "../aic3204.c",line 62,column 5,is_stmt
        MOV #132, T1 ; |62| 
        MOV #19, T0 ; |62| 
$C$DW$62	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$62, DW_AT_low_pc(0x00)
	.dwattr $C$DW$62, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$62, DW_AT_TI_call
        CALL #_AIC3204_rset ; |62| 
                                        ; call occurs [#_AIC3204_rset] ; |62| 
	.dwpsn	file "../aic3204.c",line 65,column 5,is_stmt
        MOV #0, T0
$C$DW$63	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$63, DW_AT_low_pc(0x00)
	.dwattr $C$DW$63, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$63, DW_AT_TI_call

        CALL #_AIC3204_rset ; |65| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |65| 
	.dwpsn	file "../aic3204.c",line 66,column 5,is_stmt
        MOV #12, T0
$C$DW$64	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$64, DW_AT_low_pc(0x00)
	.dwattr $C$DW$64, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$64, DW_AT_TI_call

        CALL #_AIC3204_rset ; |66| 
||      MOV #8, T1

                                        ; call occurs [#_AIC3204_rset] ; |66| 
	.dwpsn	file "../aic3204.c",line 67,column 5,is_stmt
        MOV #13, T0
$C$DW$65	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$65, DW_AT_low_pc(0x00)
	.dwattr $C$DW$65, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$65, DW_AT_TI_call

        CALL #_AIC3204_rset ; |67| 
||      MOV #8, T1

                                        ; call occurs [#_AIC3204_rset] ; |67| 
	.dwpsn	file "../aic3204.c",line 68,column 5,is_stmt
        MOV #0, T0
$C$DW$66	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$66, DW_AT_low_pc(0x00)
	.dwattr $C$DW$66, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$66, DW_AT_TI_call

        CALL #_AIC3204_rset ; |68| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |68| 
	.dwpsn	file "../aic3204.c",line 69,column 5,is_stmt
        MOV #64, T0 ; |69| 
$C$DW$67	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$67, DW_AT_low_pc(0x00)
	.dwattr $C$DW$67, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$67, DW_AT_TI_call

        CALL #_AIC3204_rset ; |69| 
||      MOV #2, T1

                                        ; call occurs [#_AIC3204_rset] ; |69| 
	.dwpsn	file "../aic3204.c",line 70,column 5,is_stmt
        MOV #65, T0 ; |70| 
$C$DW$68	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$68, DW_AT_low_pc(0x00)
	.dwattr $C$DW$68, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$68, DW_AT_TI_call

        CALL #_AIC3204_rset ; |70| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |70| 
	.dwpsn	file "../aic3204.c",line 71,column 5,is_stmt
        MOV #212, T1 ; |71| 
        MOV #63, T0 ; |71| 
$C$DW$69	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$69, DW_AT_low_pc(0x00)
	.dwattr $C$DW$69, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$69, DW_AT_TI_call
        CALL #_AIC3204_rset ; |71| 
                                        ; call occurs [#_AIC3204_rset] ; |71| 
	.dwpsn	file "../aic3204.c",line 72,column 5,is_stmt
        MOV #0, T0
$C$DW$70	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$70, DW_AT_low_pc(0x00)
	.dwattr $C$DW$70, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$70, DW_AT_TI_call

        CALL #_AIC3204_rset ; |72| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |72| 
	.dwpsn	file "../aic3204.c",line 73,column 5,is_stmt
        MOV #16, T0 ; |73| 
$C$DW$71	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$71, DW_AT_low_pc(0x00)
	.dwattr $C$DW$71, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$71, DW_AT_TI_call

        CALL #_AIC3204_rset ; |73| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |73| 
	.dwpsn	file "../aic3204.c",line 74,column 5,is_stmt
        MOV #17, T0 ; |74| 
$C$DW$72	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$72, DW_AT_low_pc(0x00)
	.dwattr $C$DW$72, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$72, DW_AT_TI_call

        CALL #_AIC3204_rset ; |74| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |74| 
	.dwpsn	file "../aic3204.c",line 75,column 5,is_stmt
        MOV #48, T1 ; |75| 
$C$DW$73	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$73, DW_AT_low_pc(0x00)
	.dwattr $C$DW$73, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$73, DW_AT_TI_call

        CALL #_AIC3204_rset ; |75| 
||      MOV #9, T0

                                        ; call occurs [#_AIC3204_rset] ; |75| 
	.dwpsn	file "../aic3204.c",line 76,column 5,is_stmt
        MOV #100, AC0 ; |76| 
$C$DW$74	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$74, DW_AT_low_pc(0x00)
	.dwattr $C$DW$74, DW_AT_name("_EZDSP5535_waitusec")
	.dwattr $C$DW$74, DW_AT_TI_call
        CALL #_EZDSP5535_waitusec ; |76| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |76| 
	.dwpsn	file "../aic3204.c",line 79,column 5,is_stmt
        MOV #0, T0
$C$DW$75	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$75, DW_AT_low_pc(0x00)
	.dwattr $C$DW$75, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$75, DW_AT_TI_call

        CALL #_AIC3204_rset ; |79| 
||      MOV #1, T1

                                        ; call occurs [#_AIC3204_rset] ; |79| 
	.dwpsn	file "../aic3204.c",line 80,column 5,is_stmt
        MOV #48, T1 ; |80| 
        MOV #52, T0 ; |80| 
$C$DW$76	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$76, DW_AT_low_pc(0x00)
	.dwattr $C$DW$76, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$76, DW_AT_TI_call
        CALL #_AIC3204_rset ; |80| 
                                        ; call occurs [#_AIC3204_rset] ; |80| 
	.dwpsn	file "../aic3204.c",line 82,column 5,is_stmt
        MOV #48, T1 ; |82| 
        MOV #55, T0 ; |82| 
$C$DW$77	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$77, DW_AT_low_pc(0x00)
	.dwattr $C$DW$77, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$77, DW_AT_TI_call
        CALL #_AIC3204_rset ; |82| 
                                        ; call occurs [#_AIC3204_rset] ; |82| 
	.dwpsn	file "../aic3204.c",line 83,column 5,is_stmt
        MOV #54, T0 ; |83| 
$C$DW$78	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$78, DW_AT_low_pc(0x00)
	.dwattr $C$DW$78, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$78, DW_AT_TI_call

        CALL #_AIC3204_rset ; |83| 
||      MOV #3, T1

                                        ; call occurs [#_AIC3204_rset] ; |83| 
	.dwpsn	file "../aic3204.c",line 84,column 5,is_stmt
        MOV #192, T1 ; |84| 
        MOV #57, T0 ; |84| 
$C$DW$79	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$79, DW_AT_low_pc(0x00)
	.dwattr $C$DW$79, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$79, DW_AT_TI_call
        CALL #_AIC3204_rset ; |84| 
                                        ; call occurs [#_AIC3204_rset] ; |84| 
	.dwpsn	file "../aic3204.c",line 85,column 5,is_stmt
        MOV #59, T0 ; |85| 
$C$DW$80	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$80, DW_AT_low_pc(0x00)
	.dwattr $C$DW$80, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$80, DW_AT_TI_call

        CALL #_AIC3204_rset ; |85| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |85| 
	.dwpsn	file "../aic3204.c",line 86,column 5,is_stmt
        MOV #60, T0 ; |86| 
$C$DW$81	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$81, DW_AT_low_pc(0x00)
	.dwattr $C$DW$81, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$81, DW_AT_TI_call

        CALL #_AIC3204_rset ; |86| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |86| 
	.dwpsn	file "../aic3204.c",line 87,column 5,is_stmt
        MOV #0, T0
$C$DW$82	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$82, DW_AT_low_pc(0x00)
	.dwattr $C$DW$82, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$82, DW_AT_TI_call

        CALL #_AIC3204_rset ; |87| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |87| 
	.dwpsn	file "../aic3204.c",line 88,column 5,is_stmt
        MOV #192, T1 ; |88| 
        MOV #81, T0 ; |88| 
$C$DW$83	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$83, DW_AT_low_pc(0x00)
	.dwattr $C$DW$83, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$83, DW_AT_TI_call
        CALL #_AIC3204_rset ; |88| 
                                        ; call occurs [#_AIC3204_rset] ; |88| 
	.dwpsn	file "../aic3204.c",line 89,column 5,is_stmt
        MOV #82, T0 ; |89| 
$C$DW$84	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$84, DW_AT_low_pc(0x00)
	.dwattr $C$DW$84, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$84, DW_AT_TI_call

        CALL #_AIC3204_rset ; |89| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |89| 
	.dwpsn	file "../aic3204.c",line 90,column 5,is_stmt
        MOV #0, T0
$C$DW$85	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$85, DW_AT_low_pc(0x00)
	.dwattr $C$DW$85, DW_AT_name("_AIC3204_rset")
	.dwattr $C$DW$85, DW_AT_TI_call

        CALL #_AIC3204_rset ; |90| 
||      MOV #0, T1

                                        ; call occurs [#_AIC3204_rset] ; |90| 
	.dwpsn	file "../aic3204.c",line 91,column 5,is_stmt
        MOV #100, AC0 ; |91| 
$C$DW$86	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$86, DW_AT_low_pc(0x00)
	.dwattr $C$DW$86, DW_AT_name("_EZDSP5535_waitusec")
	.dwattr $C$DW$86, DW_AT_TI_call
        CALL #_EZDSP5535_waitusec ; |91| 
                                        ; call occurs [#_EZDSP5535_waitusec] ; |91| 
	.dwpsn	file "../aic3204.c",line 94,column 5,is_stmt
$C$DW$87	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$87, DW_AT_low_pc(0x00)
	.dwattr $C$DW$87, DW_AT_name("_EZDSP5535_I2S_init")
	.dwattr $C$DW$87, DW_AT_TI_call
        CALL #_EZDSP5535_I2S_init ; |94| 
                                        ; call occurs [#_EZDSP5535_I2S_init] ; |94| 
	.dwpsn	file "../aic3204.c",line 95,column 1,is_stmt
        AADD #1, SP
	.dwcfi	cfa_offset, 1
$C$DW$88	.dwtag  DW_TAG_TI_branch
	.dwattr $C$DW$88, DW_AT_low_pc(0x00)
	.dwattr $C$DW$88, DW_AT_TI_return
        RET
                                        ; return occurs
	.dwattr $C$DW$37, DW_AT_TI_end_file("../aic3204.c")
	.dwattr $C$DW$37, DW_AT_TI_end_line(0x5f)
	.dwattr $C$DW$37, DW_AT_TI_end_column(0x01)
	.dwendentry
	.dwendtag $C$DW$37

;******************************************************************************
;* UNDEFINED EXTERNAL REFERENCES                                              *
;******************************************************************************
	.global	_EZDSP5535_waitusec
	.global	_EZDSP5535_I2S_init
	.global	_myfir
	.global	_EZDSP5535_I2C_write
	.global	_memset

;*******************************************************************************
;* TYPE INFORMATION                                                            *
;*******************************************************************************
$C$DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$3, DW_AT_address_class(0x17)
$C$DW$T$4	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$4, DW_AT_encoding(DW_ATE_boolean)
	.dwattr $C$DW$T$4, DW_AT_name("bool")
	.dwattr $C$DW$T$4, DW_AT_byte_size(0x01)
$C$DW$T$5	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$5, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$5, DW_AT_name("signed char")
	.dwattr $C$DW$T$5, DW_AT_byte_size(0x01)
$C$DW$T$6	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$6, DW_AT_encoding(DW_ATE_unsigned_char)
	.dwattr $C$DW$T$6, DW_AT_name("unsigned char")
	.dwattr $C$DW$T$6, DW_AT_byte_size(0x01)
$C$DW$T$7	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$7, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr $C$DW$T$7, DW_AT_name("wchar_t")
	.dwattr $C$DW$T$7, DW_AT_byte_size(0x01)
$C$DW$T$8	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$8, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$8, DW_AT_name("short")
	.dwattr $C$DW$T$8, DW_AT_byte_size(0x01)
$C$DW$T$35	.dwtag  DW_TAG_typedef, DW_AT_name("Int16")
	.dwattr $C$DW$T$35, DW_AT_type(*$C$DW$T$8)
	.dwattr $C$DW$T$35, DW_AT_language(DW_LANG_C)
$C$DW$T$9	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$9, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$9, DW_AT_name("unsigned short")
	.dwattr $C$DW$T$9, DW_AT_byte_size(0x01)
$C$DW$T$37	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16")
	.dwattr $C$DW$T$37, DW_AT_type(*$C$DW$T$9)
	.dwattr $C$DW$T$37, DW_AT_language(DW_LANG_C)
$C$DW$89	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$89, DW_AT_type(*$C$DW$T$37)
$C$DW$T$39	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$39, DW_AT_type(*$C$DW$89)

$C$DW$T$40	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$40, DW_AT_type(*$C$DW$T$37)
	.dwattr $C$DW$T$40, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$40, DW_AT_byte_size(0x02)
$C$DW$90	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$90, DW_AT_upper_bound(0x01)
	.dwendtag $C$DW$T$40

$C$DW$T$10	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$10, DW_AT_name("int")
	.dwattr $C$DW$T$10, DW_AT_byte_size(0x01)
$C$DW$T$24	.dwtag  DW_TAG_typedef, DW_AT_name("int16_t")
	.dwattr $C$DW$T$24, DW_AT_type(*$C$DW$T$10)
	.dwattr $C$DW$T$24, DW_AT_language(DW_LANG_C)
$C$DW$T$25	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$25, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$25, DW_AT_address_class(0x17)
$C$DW$91	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$91, DW_AT_type(*$C$DW$T$25)
$C$DW$T$26	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$26, DW_AT_type(*$C$DW$91)

$C$DW$T$52	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$52, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$52, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$52, DW_AT_byte_size(0xf0)
$C$DW$92	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$92, DW_AT_upper_bound(0xef)
	.dwendtag $C$DW$T$52


$C$DW$T$53	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$53, DW_AT_type(*$C$DW$T$24)
	.dwattr $C$DW$T$53, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$53, DW_AT_byte_size(0x3c)
$C$DW$93	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$93, DW_AT_upper_bound(0x3b)
	.dwendtag $C$DW$T$53

$C$DW$94	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$94, DW_AT_type(*$C$DW$T$24)
$C$DW$T$27	.dwtag  DW_TAG_const_type
	.dwattr $C$DW$T$27, DW_AT_type(*$C$DW$94)
$C$DW$T$28	.dwtag  DW_TAG_pointer_type
	.dwattr $C$DW$T$28, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$28, DW_AT_address_class(0x17)
$C$DW$95	.dwtag  DW_TAG_TI_far_type
	.dwattr $C$DW$95, DW_AT_type(*$C$DW$T$28)
$C$DW$T$29	.dwtag  DW_TAG_TI_restrict_type
	.dwattr $C$DW$T$29, DW_AT_type(*$C$DW$95)

$C$DW$T$54	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$54, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$54, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$54, DW_AT_byte_size(0x3c)
$C$DW$96	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$96, DW_AT_upper_bound(0x3b)
	.dwendtag $C$DW$T$54


$C$DW$T$55	.dwtag  DW_TAG_array_type
	.dwattr $C$DW$T$55, DW_AT_type(*$C$DW$T$27)
	.dwattr $C$DW$T$55, DW_AT_language(DW_LANG_C)
	.dwattr $C$DW$T$55, DW_AT_byte_size(0xf0)
$C$DW$97	.dwtag  DW_TAG_subrange_type
	.dwattr $C$DW$97, DW_AT_upper_bound(0xef)
	.dwendtag $C$DW$T$55

$C$DW$T$11	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$11, DW_AT_name("unsigned int")
	.dwattr $C$DW$T$11, DW_AT_byte_size(0x01)
$C$DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("uint16_t")
	.dwattr $C$DW$T$30, DW_AT_type(*$C$DW$T$11)
	.dwattr $C$DW$T$30, DW_AT_language(DW_LANG_C)
$C$DW$T$12	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$12, DW_AT_name("long")
	.dwattr $C$DW$T$12, DW_AT_byte_size(0x02)
$C$DW$T$13	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$13, DW_AT_name("unsigned long")
	.dwattr $C$DW$T$13, DW_AT_byte_size(0x02)
$C$DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32")
	.dwattr $C$DW$T$21, DW_AT_type(*$C$DW$T$13)
	.dwattr $C$DW$T$21, DW_AT_language(DW_LANG_C)
$C$DW$T$14	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$14, DW_AT_encoding(DW_ATE_signed)
	.dwattr $C$DW$T$14, DW_AT_name("long long")
	.dwattr $C$DW$T$14, DW_AT_byte_size(0x04)
	.dwattr $C$DW$T$14, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$14, DW_AT_bit_offset(0x18)
$C$DW$T$15	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$15, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr $C$DW$T$15, DW_AT_name("unsigned long long")
	.dwattr $C$DW$T$15, DW_AT_byte_size(0x04)
	.dwattr $C$DW$T$15, DW_AT_bit_size(0x28)
	.dwattr $C$DW$T$15, DW_AT_bit_offset(0x18)
$C$DW$T$16	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$16, DW_AT_name("float")
	.dwattr $C$DW$T$16, DW_AT_byte_size(0x02)
$C$DW$T$17	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$17, DW_AT_name("double")
	.dwattr $C$DW$T$17, DW_AT_byte_size(0x02)
$C$DW$T$18	.dwtag  DW_TAG_base_type
	.dwattr $C$DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr $C$DW$T$18, DW_AT_name("long double")
	.dwattr $C$DW$T$18, DW_AT_byte_size(0x02)
	.dwattr $C$DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

$C$DW$CIE	.dwcie 91
	.dwcfi	cfa_register, 36
	.dwcfi	cfa_offset, 0
	.dwcfi	undefined, 0
	.dwcfi	undefined, 1
	.dwcfi	undefined, 2
	.dwcfi	undefined, 3
	.dwcfi	undefined, 4
	.dwcfi	undefined, 5
	.dwcfi	undefined, 6
	.dwcfi	undefined, 7
	.dwcfi	undefined, 8
	.dwcfi	undefined, 9
	.dwcfi	undefined, 10
	.dwcfi	undefined, 11
	.dwcfi	undefined, 12
	.dwcfi	undefined, 13
	.dwcfi	same_value, 14
	.dwcfi	same_value, 15
	.dwcfi	undefined, 16
	.dwcfi	undefined, 17
	.dwcfi	undefined, 18
	.dwcfi	undefined, 19
	.dwcfi	undefined, 20
	.dwcfi	undefined, 21
	.dwcfi	undefined, 22
	.dwcfi	undefined, 23
	.dwcfi	undefined, 24
	.dwcfi	undefined, 25
	.dwcfi	same_value, 26
	.dwcfi	same_value, 27
	.dwcfi	same_value, 28
	.dwcfi	same_value, 29
	.dwcfi	same_value, 30
	.dwcfi	same_value, 31
	.dwcfi	undefined, 32
	.dwcfi	undefined, 33
	.dwcfi	undefined, 34
	.dwcfi	undefined, 35
	.dwcfi	undefined, 36
	.dwcfi	undefined, 37
	.dwcfi	undefined, 38
	.dwcfi	undefined, 39
	.dwcfi	undefined, 40
	.dwcfi	undefined, 41
	.dwcfi	undefined, 42
	.dwcfi	undefined, 43
	.dwcfi	undefined, 44
	.dwcfi	undefined, 45
	.dwcfi	undefined, 46
	.dwcfi	undefined, 47
	.dwcfi	undefined, 48
	.dwcfi	undefined, 49
	.dwcfi	undefined, 50
	.dwcfi	undefined, 51
	.dwcfi	undefined, 52
	.dwcfi	undefined, 53
	.dwcfi	undefined, 54
	.dwcfi	undefined, 55
	.dwcfi	undefined, 56
	.dwcfi	undefined, 57
	.dwcfi	undefined, 58
	.dwcfi	undefined, 59
	.dwcfi	undefined, 60
	.dwcfi	undefined, 61
	.dwcfi	undefined, 62
	.dwcfi	undefined, 63
	.dwcfi	undefined, 64
	.dwcfi	undefined, 65
	.dwcfi	undefined, 66
	.dwcfi	undefined, 67
	.dwcfi	undefined, 68
	.dwcfi	undefined, 69
	.dwcfi	undefined, 70
	.dwcfi	undefined, 71
	.dwcfi	undefined, 72
	.dwcfi	undefined, 73
	.dwcfi	undefined, 74
	.dwcfi	undefined, 75
	.dwcfi	undefined, 76
	.dwcfi	undefined, 77
	.dwcfi	undefined, 78
	.dwcfi	undefined, 79
	.dwcfi	undefined, 80
	.dwcfi	undefined, 81
	.dwcfi	undefined, 82
	.dwcfi	undefined, 83
	.dwcfi	undefined, 84
	.dwcfi	undefined, 85
	.dwcfi	undefined, 86
	.dwcfi	undefined, 87
	.dwcfi	undefined, 88
	.dwcfi	undefined, 89
	.dwcfi	undefined, 90
	.dwcfi	undefined, 91
	.dwendentry

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

$C$DW$98	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$98, DW_AT_location[DW_OP_reg0]
$C$DW$99	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0")
	.dwattr $C$DW$99, DW_AT_location[DW_OP_reg1]
$C$DW$100	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC0_G")
	.dwattr $C$DW$100, DW_AT_location[DW_OP_reg2]
$C$DW$101	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$101, DW_AT_location[DW_OP_reg3]
$C$DW$102	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1")
	.dwattr $C$DW$102, DW_AT_location[DW_OP_reg4]
$C$DW$103	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC1_G")
	.dwattr $C$DW$103, DW_AT_location[DW_OP_reg5]
$C$DW$104	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$104, DW_AT_location[DW_OP_reg6]
$C$DW$105	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2")
	.dwattr $C$DW$105, DW_AT_location[DW_OP_reg7]
$C$DW$106	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC2_G")
	.dwattr $C$DW$106, DW_AT_location[DW_OP_reg8]
$C$DW$107	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$107, DW_AT_location[DW_OP_reg9]
$C$DW$108	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3")
	.dwattr $C$DW$108, DW_AT_location[DW_OP_reg10]
$C$DW$109	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AC3_G")
	.dwattr $C$DW$109, DW_AT_location[DW_OP_reg11]
$C$DW$110	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T0")
	.dwattr $C$DW$110, DW_AT_location[DW_OP_reg12]
$C$DW$111	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T1")
	.dwattr $C$DW$111, DW_AT_location[DW_OP_reg13]
$C$DW$112	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T2")
	.dwattr $C$DW$112, DW_AT_location[DW_OP_reg14]
$C$DW$113	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("T3")
	.dwattr $C$DW$113, DW_AT_location[DW_OP_reg15]
$C$DW$114	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0")
	.dwattr $C$DW$114, DW_AT_location[DW_OP_reg16]
$C$DW$115	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR0")
	.dwattr $C$DW$115, DW_AT_location[DW_OP_reg17]
$C$DW$116	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1")
	.dwattr $C$DW$116, DW_AT_location[DW_OP_reg18]
$C$DW$117	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR1")
	.dwattr $C$DW$117, DW_AT_location[DW_OP_reg19]
$C$DW$118	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2")
	.dwattr $C$DW$118, DW_AT_location[DW_OP_reg20]
$C$DW$119	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR2")
	.dwattr $C$DW$119, DW_AT_location[DW_OP_reg21]
$C$DW$120	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3")
	.dwattr $C$DW$120, DW_AT_location[DW_OP_reg22]
$C$DW$121	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR3")
	.dwattr $C$DW$121, DW_AT_location[DW_OP_reg23]
$C$DW$122	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4")
	.dwattr $C$DW$122, DW_AT_location[DW_OP_reg24]
$C$DW$123	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR4")
	.dwattr $C$DW$123, DW_AT_location[DW_OP_reg25]
$C$DW$124	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5")
	.dwattr $C$DW$124, DW_AT_location[DW_OP_reg26]
$C$DW$125	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR5")
	.dwattr $C$DW$125, DW_AT_location[DW_OP_reg27]
$C$DW$126	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6")
	.dwattr $C$DW$126, DW_AT_location[DW_OP_reg28]
$C$DW$127	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR6")
	.dwattr $C$DW$127, DW_AT_location[DW_OP_reg29]
$C$DW$128	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7")
	.dwattr $C$DW$128, DW_AT_location[DW_OP_reg30]
$C$DW$129	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XAR7")
	.dwattr $C$DW$129, DW_AT_location[DW_OP_reg31]
$C$DW$130	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FP")
	.dwattr $C$DW$130, DW_AT_location[DW_OP_regx 0x20]
$C$DW$131	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XFP")
	.dwattr $C$DW$131, DW_AT_location[DW_OP_regx 0x21]
$C$DW$132	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("PC")
	.dwattr $C$DW$132, DW_AT_location[DW_OP_regx 0x22]
$C$DW$133	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SP")
	.dwattr $C$DW$133, DW_AT_location[DW_OP_regx 0x23]
$C$DW$134	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XSP")
	.dwattr $C$DW$134, DW_AT_location[DW_OP_regx 0x24]
$C$DW$135	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BKC")
	.dwattr $C$DW$135, DW_AT_location[DW_OP_regx 0x25]
$C$DW$136	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK03")
	.dwattr $C$DW$136, DW_AT_location[DW_OP_regx 0x26]
$C$DW$137	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BK47")
	.dwattr $C$DW$137, DW_AT_location[DW_OP_regx 0x27]
$C$DW$138	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST0")
	.dwattr $C$DW$138, DW_AT_location[DW_OP_regx 0x28]
$C$DW$139	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST1")
	.dwattr $C$DW$139, DW_AT_location[DW_OP_regx 0x29]
$C$DW$140	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST2")
	.dwattr $C$DW$140, DW_AT_location[DW_OP_regx 0x2a]
$C$DW$141	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ST3")
	.dwattr $C$DW$141, DW_AT_location[DW_OP_regx 0x2b]
$C$DW$142	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP")
	.dwattr $C$DW$142, DW_AT_location[DW_OP_regx 0x2c]
$C$DW$143	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP05")
	.dwattr $C$DW$143, DW_AT_location[DW_OP_regx 0x2d]
$C$DW$144	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("MDP67")
	.dwattr $C$DW$144, DW_AT_location[DW_OP_regx 0x2e]
$C$DW$145	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC0")
	.dwattr $C$DW$145, DW_AT_location[DW_OP_regx 0x2f]
$C$DW$146	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0")
	.dwattr $C$DW$146, DW_AT_location[DW_OP_regx 0x30]
$C$DW$147	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA0_H")
	.dwattr $C$DW$147, DW_AT_location[DW_OP_regx 0x31]
$C$DW$148	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0")
	.dwattr $C$DW$148, DW_AT_location[DW_OP_regx 0x32]
$C$DW$149	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA0_H")
	.dwattr $C$DW$149, DW_AT_location[DW_OP_regx 0x33]
$C$DW$150	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRS1")
	.dwattr $C$DW$150, DW_AT_location[DW_OP_regx 0x34]
$C$DW$151	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BRC1")
	.dwattr $C$DW$151, DW_AT_location[DW_OP_regx 0x35]
$C$DW$152	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1")
	.dwattr $C$DW$152, DW_AT_location[DW_OP_regx 0x36]
$C$DW$153	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RSA1_H")
	.dwattr $C$DW$153, DW_AT_location[DW_OP_regx 0x37]
$C$DW$154	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1")
	.dwattr $C$DW$154, DW_AT_location[DW_OP_regx 0x38]
$C$DW$155	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("REA1_H")
	.dwattr $C$DW$155, DW_AT_location[DW_OP_regx 0x39]
$C$DW$156	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CSR")
	.dwattr $C$DW$156, DW_AT_location[DW_OP_regx 0x3a]
$C$DW$157	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RPTC")
	.dwattr $C$DW$157, DW_AT_location[DW_OP_regx 0x3b]
$C$DW$158	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDP")
	.dwattr $C$DW$158, DW_AT_location[DW_OP_regx 0x3c]
$C$DW$159	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("XCDP")
	.dwattr $C$DW$159, DW_AT_location[DW_OP_regx 0x3d]
$C$DW$160	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN0")
	.dwattr $C$DW$160, DW_AT_location[DW_OP_regx 0x3e]
$C$DW$161	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TRN1")
	.dwattr $C$DW$161, DW_AT_location[DW_OP_regx 0x3f]
$C$DW$162	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA01")
	.dwattr $C$DW$162, DW_AT_location[DW_OP_regx 0x40]
$C$DW$163	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA23")
	.dwattr $C$DW$163, DW_AT_location[DW_OP_regx 0x41]
$C$DW$164	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA45")
	.dwattr $C$DW$164, DW_AT_location[DW_OP_regx 0x42]
$C$DW$165	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSA67")
	.dwattr $C$DW$165, DW_AT_location[DW_OP_regx 0x43]
$C$DW$166	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("BSAC")
	.dwattr $C$DW$166, DW_AT_location[DW_OP_regx 0x44]
$C$DW$167	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CARRY")
	.dwattr $C$DW$167, DW_AT_location[DW_OP_regx 0x45]
$C$DW$168	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC1")
	.dwattr $C$DW$168, DW_AT_location[DW_OP_regx 0x46]
$C$DW$169	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("TC2")
	.dwattr $C$DW$169, DW_AT_location[DW_OP_regx 0x47]
$C$DW$170	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("M40")
	.dwattr $C$DW$170, DW_AT_location[DW_OP_regx 0x48]
$C$DW$171	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SXMD")
	.dwattr $C$DW$171, DW_AT_location[DW_OP_regx 0x49]
$C$DW$172	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("ARMS")
	.dwattr $C$DW$172, DW_AT_location[DW_OP_regx 0x4a]
$C$DW$173	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("C54CM")
	.dwattr $C$DW$173, DW_AT_location[DW_OP_regx 0x4b]
$C$DW$174	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATA")
	.dwattr $C$DW$174, DW_AT_location[DW_OP_regx 0x4c]
$C$DW$175	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SATD")
	.dwattr $C$DW$175, DW_AT_location[DW_OP_regx 0x4d]
$C$DW$176	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("RDM")
	.dwattr $C$DW$176, DW_AT_location[DW_OP_regx 0x4e]
$C$DW$177	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("FRCT")
	.dwattr $C$DW$177, DW_AT_location[DW_OP_regx 0x4f]
$C$DW$178	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("SMUL")
	.dwattr $C$DW$178, DW_AT_location[DW_OP_regx 0x50]
$C$DW$179	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("INTM")
	.dwattr $C$DW$179, DW_AT_location[DW_OP_regx 0x51]
$C$DW$180	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR0LC")
	.dwattr $C$DW$180, DW_AT_location[DW_OP_regx 0x52]
$C$DW$181	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR1LC")
	.dwattr $C$DW$181, DW_AT_location[DW_OP_regx 0x53]
$C$DW$182	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR2LC")
	.dwattr $C$DW$182, DW_AT_location[DW_OP_regx 0x54]
$C$DW$183	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR3LC")
	.dwattr $C$DW$183, DW_AT_location[DW_OP_regx 0x55]
$C$DW$184	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR4LC")
	.dwattr $C$DW$184, DW_AT_location[DW_OP_regx 0x56]
$C$DW$185	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR5LC")
	.dwattr $C$DW$185, DW_AT_location[DW_OP_regx 0x57]
$C$DW$186	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR6LC")
	.dwattr $C$DW$186, DW_AT_location[DW_OP_regx 0x58]
$C$DW$187	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("AR7LC")
	.dwattr $C$DW$187, DW_AT_location[DW_OP_regx 0x59]
$C$DW$188	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CDPLC")
	.dwattr $C$DW$188, DW_AT_location[DW_OP_regx 0x5a]
$C$DW$189	.dwtag  DW_TAG_TI_assign_register, DW_AT_name("CIE_RETA")
	.dwattr $C$DW$189, DW_AT_location[DW_OP_regx 0x5b]
	.dwendtag $C$DW$CU

