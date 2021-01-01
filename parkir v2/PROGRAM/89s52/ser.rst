                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
                                      4 ; This file was generated Sun May 20 17:05:24 2018
                                      5 ;--------------------------------------------------------
                                      6 	.module ser
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _editctr
                                     13 	.globl _readctr
                                     14 	.globl _resetctr
                                     15 	.globl _stat
                                     16 	.globl _ping
                                     17 	.globl _out1off
                                     18 	.globl _out1on
                                     19 	.globl _open1
                                     20 	.globl _main
                                     21 	.globl _compare
                                     22 	.globl _writecounter
                                     23 	.globl _readcounter
                                     24 	.globl _sPrint
                                     25 	.globl _Print
                                     26 	.globl _serial_interrupt_handler
                                     27 	.globl _serial_init
                                     28 	.globl _I2C_nack
                                     29 	.globl _I2C_ack
                                     30 	.globl _I2C_read
                                     31 	.globl _I2C_write
                                     32 	.globl _I2C_stop
                                     33 	.globl _I2C_start
                                     34 	.globl _I2C_clock
                                     35 	.globl _I2C_delay
                                     36 	.globl _TF2
                                     37 	.globl _EXF2
                                     38 	.globl _RCLK
                                     39 	.globl _TCLK
                                     40 	.globl _EXEN2
                                     41 	.globl _TR2
                                     42 	.globl _C_T2
                                     43 	.globl _CP_RL2
                                     44 	.globl _T2CON_7
                                     45 	.globl _T2CON_6
                                     46 	.globl _T2CON_5
                                     47 	.globl _T2CON_4
                                     48 	.globl _T2CON_3
                                     49 	.globl _T2CON_2
                                     50 	.globl _T2CON_1
                                     51 	.globl _T2CON_0
                                     52 	.globl _PT2
                                     53 	.globl _ET2
                                     54 	.globl _CY
                                     55 	.globl _AC
                                     56 	.globl _F0
                                     57 	.globl _RS1
                                     58 	.globl _RS0
                                     59 	.globl _OV
                                     60 	.globl _F1
                                     61 	.globl _P
                                     62 	.globl _PS
                                     63 	.globl _PT1
                                     64 	.globl _PX1
                                     65 	.globl _PT0
                                     66 	.globl _PX0
                                     67 	.globl _RD
                                     68 	.globl _WR
                                     69 	.globl _T1
                                     70 	.globl _T0
                                     71 	.globl _INT1
                                     72 	.globl _INT0
                                     73 	.globl _TXD
                                     74 	.globl _RXD
                                     75 	.globl _P3_7
                                     76 	.globl _P3_6
                                     77 	.globl _P3_5
                                     78 	.globl _P3_4
                                     79 	.globl _P3_3
                                     80 	.globl _P3_2
                                     81 	.globl _P3_1
                                     82 	.globl _P3_0
                                     83 	.globl _EA
                                     84 	.globl _ES
                                     85 	.globl _ET1
                                     86 	.globl _EX1
                                     87 	.globl _ET0
                                     88 	.globl _EX0
                                     89 	.globl _P2_7
                                     90 	.globl _P2_6
                                     91 	.globl _P2_5
                                     92 	.globl _P2_4
                                     93 	.globl _P2_3
                                     94 	.globl _P2_2
                                     95 	.globl _P2_1
                                     96 	.globl _P2_0
                                     97 	.globl _SM0
                                     98 	.globl _SM1
                                     99 	.globl _SM2
                                    100 	.globl _REN
                                    101 	.globl _TB8
                                    102 	.globl _RB8
                                    103 	.globl _TI
                                    104 	.globl _RI
                                    105 	.globl _P1_7
                                    106 	.globl _P1_6
                                    107 	.globl _P1_5
                                    108 	.globl _P1_4
                                    109 	.globl _P1_3
                                    110 	.globl _P1_2
                                    111 	.globl _P1_1
                                    112 	.globl _P1_0
                                    113 	.globl _TF1
                                    114 	.globl _TR1
                                    115 	.globl _TF0
                                    116 	.globl _TR0
                                    117 	.globl _IE1
                                    118 	.globl _IT1
                                    119 	.globl _IE0
                                    120 	.globl _IT0
                                    121 	.globl _P0_7
                                    122 	.globl _P0_6
                                    123 	.globl _P0_5
                                    124 	.globl _P0_4
                                    125 	.globl _P0_3
                                    126 	.globl _P0_2
                                    127 	.globl _P0_1
                                    128 	.globl _P0_0
                                    129 	.globl _TH2
                                    130 	.globl _TL2
                                    131 	.globl _RCAP2H
                                    132 	.globl _RCAP2L
                                    133 	.globl _T2CON
                                    134 	.globl _B
                                    135 	.globl _ACC
                                    136 	.globl _PSW
                                    137 	.globl _IP
                                    138 	.globl _P3
                                    139 	.globl _IE
                                    140 	.globl _P2
                                    141 	.globl _SBUF
                                    142 	.globl _SCON
                                    143 	.globl _P1
                                    144 	.globl _TH1
                                    145 	.globl _TH0
                                    146 	.globl _TL1
                                    147 	.globl _TL0
                                    148 	.globl _TMOD
                                    149 	.globl _TCON
                                    150 	.globl _PCON
                                    151 	.globl _DPH
                                    152 	.globl _DPL
                                    153 	.globl _SP
                                    154 	.globl _P0
                                    155 	.globl _tx_serial_buffer_empty
                                    156 	.globl _work_flag_buffer_transfered
                                    157 	.globl _counter
                                    158 	.globl _complit
                                    159 	.globl _count
                                    160 	.globl _bufer
                                    161 	.globl _stx_buffer
                                    162 	.globl _stx_index_out
                                    163 	.globl _stx_index_in
                                    164 ;--------------------------------------------------------
                                    165 ; special function registers
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 G$P0$0$0 == 0x0080
                           000080   170 _P0	=	0x0080
                           000081   171 G$SP$0$0 == 0x0081
                           000081   172 _SP	=	0x0081
                           000082   173 G$DPL$0$0 == 0x0082
                           000082   174 _DPL	=	0x0082
                           000083   175 G$DPH$0$0 == 0x0083
                           000083   176 _DPH	=	0x0083
                           000087   177 G$PCON$0$0 == 0x0087
                           000087   178 _PCON	=	0x0087
                           000088   179 G$TCON$0$0 == 0x0088
                           000088   180 _TCON	=	0x0088
                           000089   181 G$TMOD$0$0 == 0x0089
                           000089   182 _TMOD	=	0x0089
                           00008A   183 G$TL0$0$0 == 0x008a
                           00008A   184 _TL0	=	0x008a
                           00008B   185 G$TL1$0$0 == 0x008b
                           00008B   186 _TL1	=	0x008b
                           00008C   187 G$TH0$0$0 == 0x008c
                           00008C   188 _TH0	=	0x008c
                           00008D   189 G$TH1$0$0 == 0x008d
                           00008D   190 _TH1	=	0x008d
                           000090   191 G$P1$0$0 == 0x0090
                           000090   192 _P1	=	0x0090
                           000098   193 G$SCON$0$0 == 0x0098
                           000098   194 _SCON	=	0x0098
                           000099   195 G$SBUF$0$0 == 0x0099
                           000099   196 _SBUF	=	0x0099
                           0000A0   197 G$P2$0$0 == 0x00a0
                           0000A0   198 _P2	=	0x00a0
                           0000A8   199 G$IE$0$0 == 0x00a8
                           0000A8   200 _IE	=	0x00a8
                           0000B0   201 G$P3$0$0 == 0x00b0
                           0000B0   202 _P3	=	0x00b0
                           0000B8   203 G$IP$0$0 == 0x00b8
                           0000B8   204 _IP	=	0x00b8
                           0000D0   205 G$PSW$0$0 == 0x00d0
                           0000D0   206 _PSW	=	0x00d0
                           0000E0   207 G$ACC$0$0 == 0x00e0
                           0000E0   208 _ACC	=	0x00e0
                           0000F0   209 G$B$0$0 == 0x00f0
                           0000F0   210 _B	=	0x00f0
                           0000C8   211 G$T2CON$0$0 == 0x00c8
                           0000C8   212 _T2CON	=	0x00c8
                           0000CA   213 G$RCAP2L$0$0 == 0x00ca
                           0000CA   214 _RCAP2L	=	0x00ca
                           0000CB   215 G$RCAP2H$0$0 == 0x00cb
                           0000CB   216 _RCAP2H	=	0x00cb
                           0000CC   217 G$TL2$0$0 == 0x00cc
                           0000CC   218 _TL2	=	0x00cc
                           0000CD   219 G$TH2$0$0 == 0x00cd
                           0000CD   220 _TH2	=	0x00cd
                                    221 ;--------------------------------------------------------
                                    222 ; special function bits
                                    223 ;--------------------------------------------------------
                                    224 	.area RSEG    (ABS,DATA)
      000000                        225 	.org 0x0000
                           000080   226 G$P0_0$0$0 == 0x0080
                           000080   227 _P0_0	=	0x0080
                           000081   228 G$P0_1$0$0 == 0x0081
                           000081   229 _P0_1	=	0x0081
                           000082   230 G$P0_2$0$0 == 0x0082
                           000082   231 _P0_2	=	0x0082
                           000083   232 G$P0_3$0$0 == 0x0083
                           000083   233 _P0_3	=	0x0083
                           000084   234 G$P0_4$0$0 == 0x0084
                           000084   235 _P0_4	=	0x0084
                           000085   236 G$P0_5$0$0 == 0x0085
                           000085   237 _P0_5	=	0x0085
                           000086   238 G$P0_6$0$0 == 0x0086
                           000086   239 _P0_6	=	0x0086
                           000087   240 G$P0_7$0$0 == 0x0087
                           000087   241 _P0_7	=	0x0087
                           000088   242 G$IT0$0$0 == 0x0088
                           000088   243 _IT0	=	0x0088
                           000089   244 G$IE0$0$0 == 0x0089
                           000089   245 _IE0	=	0x0089
                           00008A   246 G$IT1$0$0 == 0x008a
                           00008A   247 _IT1	=	0x008a
                           00008B   248 G$IE1$0$0 == 0x008b
                           00008B   249 _IE1	=	0x008b
                           00008C   250 G$TR0$0$0 == 0x008c
                           00008C   251 _TR0	=	0x008c
                           00008D   252 G$TF0$0$0 == 0x008d
                           00008D   253 _TF0	=	0x008d
                           00008E   254 G$TR1$0$0 == 0x008e
                           00008E   255 _TR1	=	0x008e
                           00008F   256 G$TF1$0$0 == 0x008f
                           00008F   257 _TF1	=	0x008f
                           000090   258 G$P1_0$0$0 == 0x0090
                           000090   259 _P1_0	=	0x0090
                           000091   260 G$P1_1$0$0 == 0x0091
                           000091   261 _P1_1	=	0x0091
                           000092   262 G$P1_2$0$0 == 0x0092
                           000092   263 _P1_2	=	0x0092
                           000093   264 G$P1_3$0$0 == 0x0093
                           000093   265 _P1_3	=	0x0093
                           000094   266 G$P1_4$0$0 == 0x0094
                           000094   267 _P1_4	=	0x0094
                           000095   268 G$P1_5$0$0 == 0x0095
                           000095   269 _P1_5	=	0x0095
                           000096   270 G$P1_6$0$0 == 0x0096
                           000096   271 _P1_6	=	0x0096
                           000097   272 G$P1_7$0$0 == 0x0097
                           000097   273 _P1_7	=	0x0097
                           000098   274 G$RI$0$0 == 0x0098
                           000098   275 _RI	=	0x0098
                           000099   276 G$TI$0$0 == 0x0099
                           000099   277 _TI	=	0x0099
                           00009A   278 G$RB8$0$0 == 0x009a
                           00009A   279 _RB8	=	0x009a
                           00009B   280 G$TB8$0$0 == 0x009b
                           00009B   281 _TB8	=	0x009b
                           00009C   282 G$REN$0$0 == 0x009c
                           00009C   283 _REN	=	0x009c
                           00009D   284 G$SM2$0$0 == 0x009d
                           00009D   285 _SM2	=	0x009d
                           00009E   286 G$SM1$0$0 == 0x009e
                           00009E   287 _SM1	=	0x009e
                           00009F   288 G$SM0$0$0 == 0x009f
                           00009F   289 _SM0	=	0x009f
                           0000A0   290 G$P2_0$0$0 == 0x00a0
                           0000A0   291 _P2_0	=	0x00a0
                           0000A1   292 G$P2_1$0$0 == 0x00a1
                           0000A1   293 _P2_1	=	0x00a1
                           0000A2   294 G$P2_2$0$0 == 0x00a2
                           0000A2   295 _P2_2	=	0x00a2
                           0000A3   296 G$P2_3$0$0 == 0x00a3
                           0000A3   297 _P2_3	=	0x00a3
                           0000A4   298 G$P2_4$0$0 == 0x00a4
                           0000A4   299 _P2_4	=	0x00a4
                           0000A5   300 G$P2_5$0$0 == 0x00a5
                           0000A5   301 _P2_5	=	0x00a5
                           0000A6   302 G$P2_6$0$0 == 0x00a6
                           0000A6   303 _P2_6	=	0x00a6
                           0000A7   304 G$P2_7$0$0 == 0x00a7
                           0000A7   305 _P2_7	=	0x00a7
                           0000A8   306 G$EX0$0$0 == 0x00a8
                           0000A8   307 _EX0	=	0x00a8
                           0000A9   308 G$ET0$0$0 == 0x00a9
                           0000A9   309 _ET0	=	0x00a9
                           0000AA   310 G$EX1$0$0 == 0x00aa
                           0000AA   311 _EX1	=	0x00aa
                           0000AB   312 G$ET1$0$0 == 0x00ab
                           0000AB   313 _ET1	=	0x00ab
                           0000AC   314 G$ES$0$0 == 0x00ac
                           0000AC   315 _ES	=	0x00ac
                           0000AF   316 G$EA$0$0 == 0x00af
                           0000AF   317 _EA	=	0x00af
                           0000B0   318 G$P3_0$0$0 == 0x00b0
                           0000B0   319 _P3_0	=	0x00b0
                           0000B1   320 G$P3_1$0$0 == 0x00b1
                           0000B1   321 _P3_1	=	0x00b1
                           0000B2   322 G$P3_2$0$0 == 0x00b2
                           0000B2   323 _P3_2	=	0x00b2
                           0000B3   324 G$P3_3$0$0 == 0x00b3
                           0000B3   325 _P3_3	=	0x00b3
                           0000B4   326 G$P3_4$0$0 == 0x00b4
                           0000B4   327 _P3_4	=	0x00b4
                           0000B5   328 G$P3_5$0$0 == 0x00b5
                           0000B5   329 _P3_5	=	0x00b5
                           0000B6   330 G$P3_6$0$0 == 0x00b6
                           0000B6   331 _P3_6	=	0x00b6
                           0000B7   332 G$P3_7$0$0 == 0x00b7
                           0000B7   333 _P3_7	=	0x00b7
                           0000B0   334 G$RXD$0$0 == 0x00b0
                           0000B0   335 _RXD	=	0x00b0
                           0000B1   336 G$TXD$0$0 == 0x00b1
                           0000B1   337 _TXD	=	0x00b1
                           0000B2   338 G$INT0$0$0 == 0x00b2
                           0000B2   339 _INT0	=	0x00b2
                           0000B3   340 G$INT1$0$0 == 0x00b3
                           0000B3   341 _INT1	=	0x00b3
                           0000B4   342 G$T0$0$0 == 0x00b4
                           0000B4   343 _T0	=	0x00b4
                           0000B5   344 G$T1$0$0 == 0x00b5
                           0000B5   345 _T1	=	0x00b5
                           0000B6   346 G$WR$0$0 == 0x00b6
                           0000B6   347 _WR	=	0x00b6
                           0000B7   348 G$RD$0$0 == 0x00b7
                           0000B7   349 _RD	=	0x00b7
                           0000B8   350 G$PX0$0$0 == 0x00b8
                           0000B8   351 _PX0	=	0x00b8
                           0000B9   352 G$PT0$0$0 == 0x00b9
                           0000B9   353 _PT0	=	0x00b9
                           0000BA   354 G$PX1$0$0 == 0x00ba
                           0000BA   355 _PX1	=	0x00ba
                           0000BB   356 G$PT1$0$0 == 0x00bb
                           0000BB   357 _PT1	=	0x00bb
                           0000BC   358 G$PS$0$0 == 0x00bc
                           0000BC   359 _PS	=	0x00bc
                           0000D0   360 G$P$0$0 == 0x00d0
                           0000D0   361 _P	=	0x00d0
                           0000D1   362 G$F1$0$0 == 0x00d1
                           0000D1   363 _F1	=	0x00d1
                           0000D2   364 G$OV$0$0 == 0x00d2
                           0000D2   365 _OV	=	0x00d2
                           0000D3   366 G$RS0$0$0 == 0x00d3
                           0000D3   367 _RS0	=	0x00d3
                           0000D4   368 G$RS1$0$0 == 0x00d4
                           0000D4   369 _RS1	=	0x00d4
                           0000D5   370 G$F0$0$0 == 0x00d5
                           0000D5   371 _F0	=	0x00d5
                           0000D6   372 G$AC$0$0 == 0x00d6
                           0000D6   373 _AC	=	0x00d6
                           0000D7   374 G$CY$0$0 == 0x00d7
                           0000D7   375 _CY	=	0x00d7
                           0000AD   376 G$ET2$0$0 == 0x00ad
                           0000AD   377 _ET2	=	0x00ad
                           0000BD   378 G$PT2$0$0 == 0x00bd
                           0000BD   379 _PT2	=	0x00bd
                           0000C8   380 G$T2CON_0$0$0 == 0x00c8
                           0000C8   381 _T2CON_0	=	0x00c8
                           0000C9   382 G$T2CON_1$0$0 == 0x00c9
                           0000C9   383 _T2CON_1	=	0x00c9
                           0000CA   384 G$T2CON_2$0$0 == 0x00ca
                           0000CA   385 _T2CON_2	=	0x00ca
                           0000CB   386 G$T2CON_3$0$0 == 0x00cb
                           0000CB   387 _T2CON_3	=	0x00cb
                           0000CC   388 G$T2CON_4$0$0 == 0x00cc
                           0000CC   389 _T2CON_4	=	0x00cc
                           0000CD   390 G$T2CON_5$0$0 == 0x00cd
                           0000CD   391 _T2CON_5	=	0x00cd
                           0000CE   392 G$T2CON_6$0$0 == 0x00ce
                           0000CE   393 _T2CON_6	=	0x00ce
                           0000CF   394 G$T2CON_7$0$0 == 0x00cf
                           0000CF   395 _T2CON_7	=	0x00cf
                           0000C8   396 G$CP_RL2$0$0 == 0x00c8
                           0000C8   397 _CP_RL2	=	0x00c8
                           0000C9   398 G$C_T2$0$0 == 0x00c9
                           0000C9   399 _C_T2	=	0x00c9
                           0000CA   400 G$TR2$0$0 == 0x00ca
                           0000CA   401 _TR2	=	0x00ca
                           0000CB   402 G$EXEN2$0$0 == 0x00cb
                           0000CB   403 _EXEN2	=	0x00cb
                           0000CC   404 G$TCLK$0$0 == 0x00cc
                           0000CC   405 _TCLK	=	0x00cc
                           0000CD   406 G$RCLK$0$0 == 0x00cd
                           0000CD   407 _RCLK	=	0x00cd
                           0000CE   408 G$EXF2$0$0 == 0x00ce
                           0000CE   409 _EXF2	=	0x00ce
                           0000CF   410 G$TF2$0$0 == 0x00cf
                           0000CF   411 _TF2	=	0x00cf
                                    412 ;--------------------------------------------------------
                                    413 ; overlayable register banks
                                    414 ;--------------------------------------------------------
                                    415 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        416 	.ds 8
                                    417 	.area REG_BANK_2	(REL,OVR,DATA)
      000010                        418 	.ds 8
                                    419 ;--------------------------------------------------------
                                    420 ; internal ram data
                                    421 ;--------------------------------------------------------
                                    422 	.area DSEG    (DATA)
                           000000   423 G$stx_index_in$0$0==.
      000021                        424 _stx_index_in::
      000021                        425 	.ds 1
                           000001   426 G$stx_index_out$0$0==.
      000022                        427 _stx_index_out::
      000022                        428 	.ds 1
                           000002   429 G$stx_buffer$0$0==.
      000023                        430 _stx_buffer::
      000023                        431 	.ds 30
                           000020   432 G$bufer$0$0==.
      000041                        433 _bufer::
      000041                        434 	.ds 20
                           000034   435 G$count$0$0==.
      000055                        436 _count::
      000055                        437 	.ds 1
                           000035   438 G$complit$0$0==.
      000056                        439 _complit::
      000056                        440 	.ds 1
                           000036   441 G$counter$0$0==.
      000057                        442 _counter::
      000057                        443 	.ds 9
                           00003F   444 Lser.main$millis$1$68==.
      000060                        445 _main_millis_1_68:
      000060                        446 	.ds 2
                                    447 ;--------------------------------------------------------
                                    448 ; overlayable items in internal ram 
                                    449 ;--------------------------------------------------------
                                    450 ;--------------------------------------------------------
                                    451 ; Stack segment in internal ram 
                                    452 ;--------------------------------------------------------
                                    453 	.area	SSEG
      000062                        454 __start__stack:
      000062                        455 	.ds	1
                                    456 
                                    457 ;--------------------------------------------------------
                                    458 ; indirectly addressable internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area ISEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; absolute internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area IABS    (ABS,DATA)
                                    465 	.area IABS    (ABS,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; bit data
                                    468 ;--------------------------------------------------------
                                    469 	.area BSEG    (BIT)
                           000000   470 G$work_flag_buffer_transfered$0$0==.
      000000                        471 _work_flag_buffer_transfered::
      000000                        472 	.ds 1
                           000001   473 G$tx_serial_buffer_empty$0$0==.
      000001                        474 _tx_serial_buffer_empty::
      000001                        475 	.ds 1
                           000002   476 Lser.I2C_read$rd_bit$1$13==.
      000002                        477 _I2C_read_rd_bit_1_13:
      000002                        478 	.ds 1
                           000003   479 Lser.main$stat_out$1$68==.
      000003                        480 _main_stat_out_1_68:
      000003                        481 	.ds 1
                           000004   482 Lser.main$logik$1$68==.
      000004                        483 _main_logik_1_68:
      000004                        484 	.ds 1
                           000005   485 Lser.main$toggle$1$68==.
      000005                        486 _main_toggle_1_68:
      000005                        487 	.ds 1
                           000006   488 Lser.main$falling_sensor$1$68==.
      000006                        489 _main_falling_sensor_1_68:
      000006                        490 	.ds 1
                                    491 ;--------------------------------------------------------
                                    492 ; paged external ram data
                                    493 ;--------------------------------------------------------
                                    494 	.area PSEG    (PAG,XDATA)
                                    495 ;--------------------------------------------------------
                                    496 ; external ram data
                                    497 ;--------------------------------------------------------
                                    498 	.area XSEG    (XDATA)
                                    499 ;--------------------------------------------------------
                                    500 ; absolute external ram data
                                    501 ;--------------------------------------------------------
                                    502 	.area XABS    (ABS,XDATA)
                                    503 ;--------------------------------------------------------
                                    504 ; external initialized ram data
                                    505 ;--------------------------------------------------------
                                    506 	.area XISEG   (XDATA)
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT0 (CODE)
                                    509 	.area GSINIT1 (CODE)
                                    510 	.area GSINIT2 (CODE)
                                    511 	.area GSINIT3 (CODE)
                                    512 	.area GSINIT4 (CODE)
                                    513 	.area GSINIT5 (CODE)
                                    514 	.area GSINIT  (CODE)
                                    515 	.area GSFINAL (CODE)
                                    516 	.area CSEG    (CODE)
                                    517 ;--------------------------------------------------------
                                    518 ; interrupt vector 
                                    519 ;--------------------------------------------------------
                                    520 	.area HOME    (CODE)
      000000                        521 __interrupt_vect:
      000000 02 00 29         [24]  522 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  523 	reti
      000004                        524 	.ds	7
      00000B 32               [24]  525 	reti
      00000C                        526 	.ds	7
      000013 32               [24]  527 	reti
      000014                        528 	.ds	7
      00001B 32               [24]  529 	reti
      00001C                        530 	.ds	7
      000023 02 01 5E         [24]  531 	ljmp	_serial_interrupt_handler
                                    532 ;--------------------------------------------------------
                                    533 ; global & static initialisations
                                    534 ;--------------------------------------------------------
                                    535 	.area HOME    (CODE)
                                    536 	.area GSINIT  (CODE)
                                    537 	.area GSFINAL (CODE)
                                    538 	.area GSINIT  (CODE)
                                    539 	.globl __sdcc_gsinit_startup
                                    540 	.globl __sdcc_program_startup
                                    541 	.globl __start__stack
                                    542 	.globl __mcs51_genXINIT
                                    543 	.globl __mcs51_genXRAMCLEAR
                                    544 	.globl __mcs51_genRAMCLEAR
                           000000   545 	C$ser.c$16$1$68 ==.
                                    546 ;	ser.c:16: volatile unsigned char  count=0;
      000082 75 55 00         [24]  547 	mov	_count,#0x00
                           000003   548 	C$ser.c$17$1$68 ==.
                                    549 ;	ser.c:17: volatile unsigned char  complit=0;
      000085 75 56 00         [24]  550 	mov	_complit,#0x00
                                    551 	.area GSFINAL (CODE)
      000088 02 00 26         [24]  552 	ljmp	__sdcc_program_startup
                                    553 ;--------------------------------------------------------
                                    554 ; Home
                                    555 ;--------------------------------------------------------
                                    556 	.area HOME    (CODE)
                                    557 	.area HOME    (CODE)
      000026                        558 __sdcc_program_startup:
      000026 02 04 0B         [24]  559 	ljmp	_main
                                    560 ;	return from main will return to caller
                                    561 ;--------------------------------------------------------
                                    562 ; code
                                    563 ;--------------------------------------------------------
                                    564 	.area CSEG    (CODE)
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function 'I2C_delay'
                                    567 ;------------------------------------------------------------
                                    568 ;t                         Allocated to registers r7 
                                    569 ;------------------------------------------------------------
                           000000   570 	G$I2C_delay$0$0 ==.
                           000000   571 	C$ser.c$28$0$0 ==.
                                    572 ;	ser.c:28: void I2C_delay(void){
                                    573 ;	-----------------------------------------
                                    574 ;	 function I2C_delay
                                    575 ;	-----------------------------------------
      00008B                        576 _I2C_delay:
                           000007   577 	ar7 = 0x07
                           000006   578 	ar6 = 0x06
                           000005   579 	ar5 = 0x05
                           000004   580 	ar4 = 0x04
                           000003   581 	ar3 = 0x03
                           000002   582 	ar2 = 0x02
                           000001   583 	ar1 = 0x01
                           000000   584 	ar0 = 0x00
                           000000   585 	C$ser.c$30$1$2 ==.
                                    586 ;	ser.c:30: for(t=0;t<I2C_DELAY;t++);
      00008B 7F 0F            [12]  587 	mov	r7,#0x0F
      00008D                        588 00104$:
      00008D 8F 06            [24]  589 	mov	ar6,r7
      00008F EE               [12]  590 	mov	a,r6
      000090 14               [12]  591 	dec	a
      000091 FF               [12]  592 	mov	r7,a
      000092 70 F9            [24]  593 	jnz	00104$
                           000009   594 	C$ser.c$31$1$2 ==.
                           000009   595 	XG$I2C_delay$0$0 ==.
      000094 22               [24]  596 	ret
                                    597 ;------------------------------------------------------------
                                    598 ;Allocation info for local variables in function 'I2C_clock'
                                    599 ;------------------------------------------------------------
                           00000A   600 	G$I2C_clock$0$0 ==.
                           00000A   601 	C$ser.c$32$1$2 ==.
                                    602 ;	ser.c:32: void I2C_clock(void){
                                    603 ;	-----------------------------------------
                                    604 ;	 function I2C_clock
                                    605 ;	-----------------------------------------
      000095                        606 _I2C_clock:
                           00000A   607 	C$ser.c$33$1$4 ==.
                                    608 ;	ser.c:33: I2C_delay();
      000095 12 00 8B         [24]  609 	lcall	_I2C_delay
                           00000D   610 	C$ser.c$34$1$4 ==.
                                    611 ;	ser.c:34: SCL = 1;			/* Start clock */
      000098 D2 B3            [12]  612 	setb	_P3_3
                           00000F   613 	C$ser.c$35$1$4 ==.
                                    614 ;	ser.c:35: I2C_delay();
      00009A 12 00 8B         [24]  615 	lcall	_I2C_delay
                           000012   616 	C$ser.c$36$1$4 ==.
                                    617 ;	ser.c:36: SCL = 0;			/* Clear SCL */
      00009D C2 B3            [12]  618 	clr	_P3_3
                           000014   619 	C$ser.c$37$1$4 ==.
                           000014   620 	XG$I2C_clock$0$0 ==.
      00009F 22               [24]  621 	ret
                                    622 ;------------------------------------------------------------
                                    623 ;Allocation info for local variables in function 'I2C_start'
                                    624 ;------------------------------------------------------------
                           000015   625 	G$I2C_start$0$0 ==.
                           000015   626 	C$ser.c$38$1$4 ==.
                                    627 ;	ser.c:38: void I2C_start(void){
                                    628 ;	-----------------------------------------
                                    629 ;	 function I2C_start
                                    630 ;	-----------------------------------------
      0000A0                        631 _I2C_start:
                           000015   632 	C$ser.c$39$1$6 ==.
                                    633 ;	ser.c:39: if(SCL) SCL = 0;			/* Clear SCL */
      0000A0 10 B3 02         [24]  634 	jbc	_P3_3,00108$
      0000A3 80 00            [24]  635 	sjmp	00102$
      0000A5                        636 00108$:
      0000A5                        637 00102$:
                           00001A   638 	C$ser.c$40$1$6 ==.
                                    639 ;	ser.c:40: SDA = 1;        		/* Set SDA */
      0000A5 D2 B2            [12]  640 	setb	_P3_2
                           00001C   641 	C$ser.c$41$1$6 ==.
                                    642 ;	ser.c:41: SCL = 1;			/* Set SCL */
      0000A7 D2 B3            [12]  643 	setb	_P3_3
                           00001E   644 	C$ser.c$42$1$6 ==.
                                    645 ;	ser.c:42: I2C_delay();
      0000A9 12 00 8B         [24]  646 	lcall	_I2C_delay
                           000021   647 	C$ser.c$43$1$6 ==.
                                    648 ;	ser.c:43: SDA = 0;        		/* Clear SDA */
      0000AC C2 B2            [12]  649 	clr	_P3_2
                           000023   650 	C$ser.c$44$1$6 ==.
                                    651 ;	ser.c:44: I2C_delay();
      0000AE 12 00 8B         [24]  652 	lcall	_I2C_delay
                           000026   653 	C$ser.c$45$1$6 ==.
                                    654 ;	ser.c:45: SCL = 0;        		/* Clear SCL */
      0000B1 C2 B3            [12]  655 	clr	_P3_3
                           000028   656 	C$ser.c$46$1$6 ==.
                           000028   657 	XG$I2C_start$0$0 ==.
      0000B3 22               [24]  658 	ret
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'I2C_stop'
                                    661 ;------------------------------------------------------------
                           000029   662 	G$I2C_stop$0$0 ==.
                           000029   663 	C$ser.c$47$1$6 ==.
                                    664 ;	ser.c:47: void I2C_stop(void){
                                    665 ;	-----------------------------------------
                                    666 ;	 function I2C_stop
                                    667 ;	-----------------------------------------
      0000B4                        668 _I2C_stop:
                           000029   669 	C$ser.c$48$1$8 ==.
                                    670 ;	ser.c:48: if(SCL)	
                           000029   671 	C$ser.c$49$1$8 ==.
                                    672 ;	ser.c:49: SCL = 0;			/* Clear SCL */
      0000B4 10 B3 02         [24]  673 	jbc	_P3_3,00108$
      0000B7 80 00            [24]  674 	sjmp	00102$
      0000B9                        675 00108$:
      0000B9                        676 00102$:
                           00002E   677 	C$ser.c$50$1$8 ==.
                                    678 ;	ser.c:50: SDA = 0;			/* Clear SDA */
      0000B9 C2 B2            [12]  679 	clr	_P3_2
                           000030   680 	C$ser.c$51$1$8 ==.
                                    681 ;	ser.c:51: I2C_delay();
      0000BB 12 00 8B         [24]  682 	lcall	_I2C_delay
                           000033   683 	C$ser.c$52$1$8 ==.
                                    684 ;	ser.c:52: SCL = 1;			/* Set SCL */
      0000BE D2 B3            [12]  685 	setb	_P3_3
                           000035   686 	C$ser.c$53$1$8 ==.
                                    687 ;	ser.c:53: I2C_delay();
      0000C0 12 00 8B         [24]  688 	lcall	_I2C_delay
                           000038   689 	C$ser.c$54$1$8 ==.
                                    690 ;	ser.c:54: SDA = 1;			/* Set SDA */
      0000C3 D2 B2            [12]  691 	setb	_P3_2
                           00003A   692 	C$ser.c$55$1$8 ==.
                           00003A   693 	XG$I2C_stop$0$0 ==.
      0000C5 22               [24]  694 	ret
                                    695 ;------------------------------------------------------------
                                    696 ;Allocation info for local variables in function 'I2C_write'
                                    697 ;------------------------------------------------------------
                                    698 ;dat                       Allocated to registers r7 
                                    699 ;i                         Allocated to registers r6 
                                    700 ;------------------------------------------------------------
                           00003B   701 	G$I2C_write$0$0 ==.
                           00003B   702 	C$ser.c$56$1$8 ==.
                                    703 ;	ser.c:56: void I2C_write(unsigned char dat){
                                    704 ;	-----------------------------------------
                                    705 ;	 function I2C_write
                                    706 ;	-----------------------------------------
      0000C6                        707 _I2C_write:
      0000C6 AF 82            [24]  708 	mov	r7,dpl
                           00003D   709 	C$ser.c$59$1$10 ==.
                                    710 ;	ser.c:59: for(i=0;i<8;i++)				/* For loop 8 time(send data 1 byte)*/
      0000C8 7E 00            [12]  711 	mov	r6,#0x00
      0000CA                        712 00102$:
                           00003F   713 	C$ser.c$61$2$11 ==.
                                    714 ;	ser.c:61: data_bit = dat & 0x80;			/* Filter MSB bit keep to data_bit */
      0000CA EF               [12]  715 	mov	a,r7
      0000CB 33               [12]  716 	rlc	a
      0000CC 92 B2            [24]  717 	mov	_P3_2,c
                           000043   718 	C$ser.c$63$2$11 ==.
                                    719 ;	ser.c:63: I2C_clock();      			/* Call for send data to i2c bus */
      0000CE C0 07            [24]  720 	push	ar7
      0000D0 C0 06            [24]  721 	push	ar6
      0000D2 12 00 95         [24]  722 	lcall	_I2C_clock
      0000D5 D0 06            [24]  723 	pop	ar6
      0000D7 D0 07            [24]  724 	pop	ar7
                           00004E   725 	C$ser.c$64$2$11 ==.
                                    726 ;	ser.c:64: dat = dat<<1;
      0000D9 EF               [12]  727 	mov	a,r7
      0000DA 2F               [12]  728 	add	a,r7
      0000DB FF               [12]  729 	mov	r7,a
                           000051   730 	C$ser.c$59$1$10 ==.
                                    731 ;	ser.c:59: for(i=0;i<8;i++)				/* For loop 8 time(send data 1 byte)*/
      0000DC 0E               [12]  732 	inc	r6
      0000DD BE 08 00         [24]  733 	cjne	r6,#0x08,00112$
      0000E0                        734 00112$:
      0000E0 40 E8            [24]  735 	jc	00102$
                           000057   736 	C$ser.c$66$1$10 ==.
                                    737 ;	ser.c:66: SDA = 1;			/* Set SDA */
      0000E2 D2 B2            [12]  738 	setb	_P3_2
                           000059   739 	C$ser.c$67$1$10 ==.
                                    740 ;	ser.c:67: I2C_delay();
      0000E4 12 00 8B         [24]  741 	lcall	_I2C_delay
                           00005C   742 	C$ser.c$68$1$10 ==.
                                    743 ;	ser.c:68: SCL = 1;			/* Set SCL */
      0000E7 D2 B3            [12]  744 	setb	_P3_3
                           00005E   745 	C$ser.c$69$1$10 ==.
                                    746 ;	ser.c:69: I2C_delay();
      0000E9 12 00 8B         [24]  747 	lcall	_I2C_delay
                           000061   748 	C$ser.c$70$1$10 ==.
                                    749 ;	ser.c:70: data_bit = SDA;   		/* Check acknowledge */
      0000EC A2 B2            [12]  750 	mov	c,_P3_2
                           000063   751 	C$ser.c$71$1$10 ==.
                                    752 ;	ser.c:71: SCL = 0;			/* Clear SCL */
      0000EE C2 B3            [12]  753 	clr	_P3_3
                           000065   754 	C$ser.c$72$1$10 ==.
                                    755 ;	ser.c:72: I2C_delay();
      0000F0 12 00 8B         [24]  756 	lcall	_I2C_delay
                           000068   757 	C$ser.c$73$1$10 ==.
                           000068   758 	XG$I2C_write$0$0 ==.
      0000F3 22               [24]  759 	ret
                                    760 ;------------------------------------------------------------
                                    761 ;Allocation info for local variables in function 'I2C_read'
                                    762 ;------------------------------------------------------------
                                    763 ;i                         Allocated to registers r6 
                                    764 ;dat                       Allocated to registers r7 
                                    765 ;------------------------------------------------------------
                           000069   766 	G$I2C_read$0$0 ==.
                           000069   767 	C$ser.c$74$1$10 ==.
                                    768 ;	ser.c:74: unsigned char I2C_read(void){
                                    769 ;	-----------------------------------------
                                    770 ;	 function I2C_read
                                    771 ;	-----------------------------------------
      0000F4                        772 _I2C_read:
                           000069   773 	C$ser.c$77$1$13 ==.
                                    774 ;	ser.c:77: dat = 0x00;
      0000F4 7F 00            [12]  775 	mov	r7,#0x00
                           00006B   776 	C$ser.c$78$1$13 ==.
                                    777 ;	ser.c:78: for(i=0;i<8;i++)			/* For loop read data 1 byte */
      0000F6 7E 00            [12]  778 	mov	r6,#0x00
      0000F8                        779 00102$:
                           00006D   780 	C$ser.c$80$2$14 ==.
                                    781 ;	ser.c:80: I2C_delay();
      0000F8 C0 07            [24]  782 	push	ar7
      0000FA C0 06            [24]  783 	push	ar6
      0000FC 12 00 8B         [24]  784 	lcall	_I2C_delay
                           000074   785 	C$ser.c$81$2$14 ==.
                                    786 ;	ser.c:81: SCL = 1;			/* Set SCL */
      0000FF D2 B3            [12]  787 	setb	_P3_3
                           000076   788 	C$ser.c$82$2$14 ==.
                                    789 ;	ser.c:82: I2C_delay();
      000101 12 00 8B         [24]  790 	lcall	_I2C_delay
      000104 D0 06            [24]  791 	pop	ar6
      000106 D0 07            [24]  792 	pop	ar7
                           00007D   793 	C$ser.c$83$2$14 ==.
                                    794 ;	ser.c:83: rd_bit = SDA;			/* Keep for check acknowledge	*/
      000108 A2 B2            [12]  795 	mov	c,_P3_2
      00010A 92 02            [24]  796 	mov	_I2C_read_rd_bit_1_13,c
                           000081   797 	C$ser.c$84$2$14 ==.
                                    798 ;	ser.c:84: dat = dat<<1;
      00010C EF               [12]  799 	mov	a,r7
      00010D 2F               [12]  800 	add	a,r7
                           000083   801 	C$ser.c$85$2$14 ==.
                                    802 ;	ser.c:85: dat = dat | rd_bit;		/* Keep bit data in dat */
      00010E FD               [12]  803 	mov	r5,a
      00010F A2 02            [12]  804 	mov	c,_I2C_read_rd_bit_1_13
      000111 E4               [12]  805 	clr	a
      000112 33               [12]  806 	rlc	a
      000113 FC               [12]  807 	mov	r4,a
      000114 4D               [12]  808 	orl	a,r5
      000115 FF               [12]  809 	mov	r7,a
                           00008B   810 	C$ser.c$86$2$14 ==.
                                    811 ;	ser.c:86: SCL = 0;			/* Clear SCL */
      000116 C2 B3            [12]  812 	clr	_P3_3
                           00008D   813 	C$ser.c$78$1$13 ==.
                                    814 ;	ser.c:78: for(i=0;i<8;i++)			/* For loop read data 1 byte */
      000118 0E               [12]  815 	inc	r6
      000119 BE 08 00         [24]  816 	cjne	r6,#0x08,00112$
      00011C                        817 00112$:
      00011C 40 DA            [24]  818 	jc	00102$
                           000093   819 	C$ser.c$88$1$13 ==.
                                    820 ;	ser.c:88: return dat;
      00011E 8F 82            [24]  821 	mov	dpl,r7
                           000095   822 	C$ser.c$89$1$13 ==.
                           000095   823 	XG$I2C_read$0$0 ==.
      000120 22               [24]  824 	ret
                                    825 ;------------------------------------------------------------
                                    826 ;Allocation info for local variables in function 'I2C_ack'
                                    827 ;------------------------------------------------------------
                           000096   828 	G$I2C_ack$0$0 ==.
                           000096   829 	C$ser.c$90$1$13 ==.
                                    830 ;	ser.c:90: void I2C_ack()
                                    831 ;	-----------------------------------------
                                    832 ;	 function I2C_ack
                                    833 ;	-----------------------------------------
      000121                        834 _I2C_ack:
                           000096   835 	C$ser.c$92$1$15 ==.
                                    836 ;	ser.c:92: SDA = 0;		/* Clear SDA */
      000121 C2 B2            [12]  837 	clr	_P3_2
                           000098   838 	C$ser.c$93$1$15 ==.
                                    839 ;	ser.c:93: I2C_delay();
      000123 12 00 8B         [24]  840 	lcall	_I2C_delay
                           00009B   841 	C$ser.c$94$1$15 ==.
                                    842 ;	ser.c:94: I2C_clock();		/* Call for send data to i2c bus */
      000126 12 00 95         [24]  843 	lcall	_I2C_clock
                           00009E   844 	C$ser.c$95$1$15 ==.
                                    845 ;	ser.c:95: SDA = 1;		/* Set SDA */
      000129 D2 B2            [12]  846 	setb	_P3_2
                           0000A0   847 	C$ser.c$96$1$15 ==.
                           0000A0   848 	XG$I2C_ack$0$0 ==.
      00012B 22               [24]  849 	ret
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'I2C_nack'
                                    852 ;------------------------------------------------------------
                           0000A1   853 	G$I2C_nack$0$0 ==.
                           0000A1   854 	C$ser.c$97$1$15 ==.
                                    855 ;	ser.c:97: void I2C_nack()
                                    856 ;	-----------------------------------------
                                    857 ;	 function I2C_nack
                                    858 ;	-----------------------------------------
      00012C                        859 _I2C_nack:
                           0000A1   860 	C$ser.c$99$1$16 ==.
                                    861 ;	ser.c:99: SDA = 1;		/* Set SDA */
      00012C D2 B2            [12]  862 	setb	_P3_2
                           0000A3   863 	C$ser.c$100$1$16 ==.
                                    864 ;	ser.c:100: I2C_delay();
      00012E 12 00 8B         [24]  865 	lcall	_I2C_delay
                           0000A6   866 	C$ser.c$101$1$16 ==.
                                    867 ;	ser.c:101: I2C_clock();		/* Call for send data to i2c bus */
      000131 12 00 95         [24]  868 	lcall	_I2C_clock
                           0000A9   869 	C$ser.c$102$1$16 ==.
                                    870 ;	ser.c:102: SCL = 1;		/* Set SCL */
      000134 D2 B3            [12]  871 	setb	_P3_3
                           0000AB   872 	C$ser.c$103$1$16 ==.
                           0000AB   873 	XG$I2C_nack$0$0 ==.
      000136 22               [24]  874 	ret
                                    875 ;------------------------------------------------------------
                                    876 ;Allocation info for local variables in function 'serial_init'
                                    877 ;------------------------------------------------------------
                           0000AC   878 	G$serial_init$0$0 ==.
                           0000AC   879 	C$ser.c$105$1$16 ==.
                                    880 ;	ser.c:105: void serial_init(void){
                                    881 ;	-----------------------------------------
                                    882 ;	 function serial_init
                                    883 ;	-----------------------------------------
      000137                        884 _serial_init:
                           0000AC   885 	C$ser.c$106$1$18 ==.
                                    886 ;	ser.c:106: TMOD=0X20;
      000137 75 89 20         [24]  887 	mov	_TMOD,#0x20
                           0000AF   888 	C$ser.c$107$1$18 ==.
                                    889 ;	ser.c:107: PCON=0;
      00013A 75 87 00         [24]  890 	mov	_PCON,#0x00
                           0000B2   891 	C$ser.c$108$1$18 ==.
                                    892 ;	ser.c:108: SM0=0;
      00013D C2 9F            [12]  893 	clr	_SM0
                           0000B4   894 	C$ser.c$109$1$18 ==.
                                    895 ;	ser.c:109: SM1=1;
      00013F D2 9E            [12]  896 	setb	_SM1
                           0000B6   897 	C$ser.c$110$1$18 ==.
                                    898 ;	ser.c:110: TR1=1;
      000141 D2 8E            [12]  899 	setb	_TR1
                           0000B8   900 	C$ser.c$111$1$18 ==.
                                    901 ;	ser.c:111: TH1=0XFD;
      000143 75 8D FD         [24]  902 	mov	_TH1,#0xFD
                           0000BB   903 	C$ser.c$112$1$18 ==.
                                    904 ;	ser.c:112: TL1=0XFD;
      000146 75 8B FD         [24]  905 	mov	_TL1,#0xFD
                           0000BE   906 	C$ser.c$113$1$18 ==.
                                    907 ;	ser.c:113: REN=1;
      000149 D2 9C            [12]  908 	setb	_REN
                           0000C0   909 	C$ser.c$114$1$18 ==.
                                    910 ;	ser.c:114: RI = 0;
      00014B C2 98            [12]  911 	clr	_RI
                           0000C2   912 	C$ser.c$115$1$18 ==.
                                    913 ;	ser.c:115: TI = 0;
      00014D C2 99            [12]  914 	clr	_TI
                           0000C4   915 	C$ser.c$116$1$18 ==.
                                    916 ;	ser.c:116: stx_index_in = stx_index_out = 0;
      00014F 75 22 00         [24]  917 	mov	_stx_index_out,#0x00
      000152 75 21 00         [24]  918 	mov	_stx_index_in,#0x00
                           0000CA   919 	C$ser.c$117$1$18 ==.
                                    920 ;	ser.c:117: tx_serial_buffer_empty = 1;
      000155 D2 01            [12]  921 	setb	_tx_serial_buffer_empty
                           0000CC   922 	C$ser.c$118$1$18 ==.
                                    923 ;	ser.c:118: work_flag_buffer_transfered = 0;
      000157 C2 00            [12]  924 	clr	_work_flag_buffer_transfered
                           0000CE   925 	C$ser.c$119$1$18 ==.
                                    926 ;	ser.c:119: ES=1;
      000159 D2 AC            [12]  927 	setb	_ES
                           0000D0   928 	C$ser.c$120$1$18 ==.
                                    929 ;	ser.c:120: EA=1;
      00015B D2 AF            [12]  930 	setb	_EA
                           0000D2   931 	C$ser.c$121$1$18 ==.
                           0000D2   932 	XG$serial_init$0$0 ==.
      00015D 22               [24]  933 	ret
                                    934 ;------------------------------------------------------------
                                    935 ;Allocation info for local variables in function 'serial_interrupt_handler'
                                    936 ;------------------------------------------------------------
                                    937 ;ser                       Allocated to registers r7 
                                    938 ;------------------------------------------------------------
                           0000D3   939 	G$serial_interrupt_handler$0$0 ==.
                           0000D3   940 	C$ser.c$122$1$18 ==.
                                    941 ;	ser.c:122: void serial_interrupt_handler(void) __interrupt 4 __using 2{
                                    942 ;	-----------------------------------------
                                    943 ;	 function serial_interrupt_handler
                                    944 ;	-----------------------------------------
      00015E                        945 _serial_interrupt_handler:
                           000017   946 	ar7 = 0x17
                           000016   947 	ar6 = 0x16
                           000015   948 	ar5 = 0x15
                           000014   949 	ar4 = 0x14
                           000013   950 	ar3 = 0x13
                           000012   951 	ar2 = 0x12
                           000011   952 	ar1 = 0x11
                           000010   953 	ar0 = 0x10
      00015E C0 E0            [24]  954 	push	acc
      000160 C0 D0            [24]  955 	push	psw
      000162 75 D0 10         [24]  956 	mov	psw,#0x10
                           0000DA   957 	C$ser.c$124$1$20 ==.
                                    958 ;	ser.c:124: ES=0;
      000165 C2 AC            [12]  959 	clr	_ES
                           0000DC   960 	C$ser.c$125$1$20 ==.
                                    961 ;	ser.c:125: if(RI){
                           0000DC   962 	C$ser.c$126$2$21 ==.
                                    963 ;	ser.c:126: RI=0;
      000167 10 98 02         [24]  964 	jbc	_RI,00139$
      00016A 80 20            [24]  965 	sjmp	00108$
      00016C                        966 00139$:
                           0000E1   967 	C$ser.c$127$2$21 ==.
                                    968 ;	ser.c:127: ser=SBUF;
      00016C AF 99            [24]  969 	mov	r7,_SBUF
                           0000E3   970 	C$ser.c$128$2$21 ==.
                                    971 ;	ser.c:128: if(ser=='*')count=0;
      00016E BF 2A 03         [24]  972 	cjne	r7,#0x2A,00102$
      000171 75 55 00         [24]  973 	mov	_count,#0x00
      000174                        974 00102$:
                           0000E9   975 	C$ser.c$129$2$21 ==.
                                    976 ;	ser.c:129: if(ser=='#')complit=1;
      000174 BF 23 03         [24]  977 	cjne	r7,#0x23,00104$
      000177 75 56 01         [24]  978 	mov	_complit,#0x01
      00017A                        979 00104$:
                           0000EF   980 	C$ser.c$130$2$21 ==.
                                    981 ;	ser.c:130: bufer[count]=ser;
      00017A E5 55            [12]  982 	mov	a,_count
      00017C 24 41            [12]  983 	add	a,#_bufer
      00017E F8               [12]  984 	mov	r0,a
      00017F A6 17            [24]  985 	mov	@r0,ar7
                           0000F6   986 	C$ser.c$131$2$21 ==.
                                    987 ;	ser.c:131: count++;
      000181 05 55            [12]  988 	inc	_count
                           0000F8   989 	C$ser.c$132$2$21 ==.
                                    990 ;	ser.c:132: if(count>18)count=0;
      000183 E5 55            [12]  991 	mov	a,_count
      000185 24 ED            [12]  992 	add	a,#0xff - 0x12
      000187 50 03            [24]  993 	jnc	00108$
      000189 75 55 00         [24]  994 	mov	_count,#0x00
      00018C                        995 00108$:
                           000101   996 	C$ser.c$134$1$20 ==.
                                    997 ;	ser.c:134: if(TI){
                           000101   998 	C$ser.c$135$2$22 ==.
                                    999 ;	ser.c:135: TI=0;
      00018C 10 99 02         [24] 1000 	jbc	_TI,00145$
      00018F 80 24            [24] 1001 	sjmp	00115$
      000191                       1002 00145$:
                           000106  1003 	C$ser.c$136$2$22 ==.
                                   1004 ;	ser.c:136: if(stx_index_out==stx_index_in){
      000191 E5 21            [12] 1005 	mov	a,_stx_index_in
      000193 B5 22 0C         [24] 1006 	cjne	a,_stx_index_out,00112$
                           00010B  1007 	C$ser.c$137$3$23 ==.
                                   1008 ;	ser.c:137: tx_serial_buffer_empty=1;
      000196 D2 01            [12] 1009 	setb	_tx_serial_buffer_empty
                           00010D  1010 	C$ser.c$138$3$23 ==.
                                   1011 ;	ser.c:138: work_flag_buffer_transfered=1;
      000198 D2 00            [12] 1012 	setb	_work_flag_buffer_transfered
                           00010F  1013 	C$ser.c$139$3$23 ==.
                                   1014 ;	ser.c:139: stx_index_out=stx_index_in=0;
      00019A 75 21 00         [24] 1015 	mov	_stx_index_in,#0x00
      00019D 75 22 00         [24] 1016 	mov	_stx_index_out,#0x00
      0001A0 80 13            [24] 1017 	sjmp	00115$
      0001A2                       1018 00112$:
                           000117  1019 	C$ser.c$142$3$24 ==.
                                   1020 ;	ser.c:142: SBUF=stx_buffer[stx_index_out++];
      0001A2 AF 22            [24] 1021 	mov	r7,_stx_index_out
      0001A4 05 22            [12] 1022 	inc	_stx_index_out
      0001A6 EF               [12] 1023 	mov	a,r7
      0001A7 24 23            [12] 1024 	add	a,#_stx_buffer
      0001A9 F9               [12] 1025 	mov	r1,a
      0001AA 87 99            [24] 1026 	mov	_SBUF,@r1
                           000121  1027 	C$ser.c$143$3$24 ==.
                                   1028 ;	ser.c:143: if(stx_index_out>28)stx_index_out=0;
      0001AC E5 22            [12] 1029 	mov	a,_stx_index_out
      0001AE 24 E3            [12] 1030 	add	a,#0xff - 0x1C
      0001B0 50 03            [24] 1031 	jnc	00115$
      0001B2 75 22 00         [24] 1032 	mov	_stx_index_out,#0x00
      0001B5                       1033 00115$:
                           00012A  1034 	C$ser.c$146$1$20 ==.
                                   1035 ;	ser.c:146: ES=1;
      0001B5 D2 AC            [12] 1036 	setb	_ES
      0001B7 D0 D0            [24] 1037 	pop	psw
      0001B9 D0 E0            [24] 1038 	pop	acc
                           000130  1039 	C$ser.c$147$1$20 ==.
                           000130  1040 	XG$serial_interrupt_handler$0$0 ==.
      0001BB 32               [24] 1041 	reti
                                   1042 ;	eliminated unneeded push/pop dpl
                                   1043 ;	eliminated unneeded push/pop dph
                                   1044 ;	eliminated unneeded push/pop b
                                   1045 ;------------------------------------------------------------
                                   1046 ;Allocation info for local variables in function 'Print'
                                   1047 ;------------------------------------------------------------
                                   1048 ;c                         Allocated to registers r7 
                                   1049 ;------------------------------------------------------------
                           000131  1050 	G$Print$0$0 ==.
                           000131  1051 	C$ser.c$148$1$20 ==.
                                   1052 ;	ser.c:148: void Print(unsigned char c){
                                   1053 ;	-----------------------------------------
                                   1054 ;	 function Print
                                   1055 ;	-----------------------------------------
      0001BC                       1056 _Print:
                           000007  1057 	ar7 = 0x07
                           000006  1058 	ar6 = 0x06
                           000005  1059 	ar5 = 0x05
                           000004  1060 	ar4 = 0x04
                           000003  1061 	ar3 = 0x03
                           000002  1062 	ar2 = 0x02
                           000001  1063 	ar1 = 0x01
                           000000  1064 	ar0 = 0x00
      0001BC AF 82            [24] 1065 	mov	r7,dpl
                           000133  1066 	C$ser.c$149$1$26 ==.
                                   1067 ;	ser.c:149: stx_buffer[stx_index_in++]=c;
      0001BE AE 21            [24] 1068 	mov	r6,_stx_index_in
      0001C0 05 21            [12] 1069 	inc	_stx_index_in
      0001C2 EE               [12] 1070 	mov	a,r6
      0001C3 24 23            [12] 1071 	add	a,#_stx_buffer
      0001C5 F8               [12] 1072 	mov	r0,a
      0001C6 A6 07            [24] 1073 	mov	@r0,ar7
                           00013D  1074 	C$ser.c$150$1$26 ==.
                                   1075 ;	ser.c:150: if(stx_index_in>28)stx_index_in=0;
      0001C8 E5 21            [12] 1076 	mov	a,_stx_index_in
      0001CA 24 E3            [12] 1077 	add	a,#0xff - 0x1C
      0001CC 50 03            [24] 1078 	jnc	00102$
      0001CE 75 21 00         [24] 1079 	mov	_stx_index_in,#0x00
      0001D1                       1080 00102$:
                           000146  1081 	C$ser.c$151$1$26 ==.
                                   1082 ;	ser.c:151: ES=0;
      0001D1 C2 AC            [12] 1083 	clr	_ES
                           000148  1084 	C$ser.c$152$1$26 ==.
                                   1085 ;	ser.c:152: if(tx_serial_buffer_empty){
                           000148  1086 	C$ser.c$153$2$27 ==.
                                   1087 ;	ser.c:153: tx_serial_buffer_empty=0;
      0001D3 10 01 02         [24] 1088 	jbc	_tx_serial_buffer_empty,00114$
      0001D6 80 02            [24] 1089 	sjmp	00104$
      0001D8                       1090 00114$:
                           00014D  1091 	C$ser.c$154$2$27 ==.
                                   1092 ;	ser.c:154: TI=1;
      0001D8 D2 99            [12] 1093 	setb	_TI
      0001DA                       1094 00104$:
                           00014F  1095 	C$ser.c$156$1$26 ==.
                                   1096 ;	ser.c:156: ES=1;
      0001DA D2 AC            [12] 1097 	setb	_ES
                           000151  1098 	C$ser.c$157$1$26 ==.
                           000151  1099 	XG$Print$0$0 ==.
      0001DC 22               [24] 1100 	ret
                                   1101 ;------------------------------------------------------------
                                   1102 ;Allocation info for local variables in function 'sPrint'
                                   1103 ;------------------------------------------------------------
                                   1104 ;s                         Allocated to registers r5 r6 r7 
                                   1105 ;------------------------------------------------------------
                           000152  1106 	G$sPrint$0$0 ==.
                           000152  1107 	C$ser.c$158$1$26 ==.
                                   1108 ;	ser.c:158: void sPrint(unsigned char*s){
                                   1109 ;	-----------------------------------------
                                   1110 ;	 function sPrint
                                   1111 ;	-----------------------------------------
      0001DD                       1112 _sPrint:
      0001DD AD 82            [24] 1113 	mov	r5,dpl
      0001DF AE 83            [24] 1114 	mov	r6,dph
      0001E1 AF F0            [24] 1115 	mov	r7,b
                           000158  1116 	C$ser.c$159$1$29 ==.
                                   1117 ;	ser.c:159: while (*s)Print(*s++);
      0001E3                       1118 00101$:
      0001E3 8D 82            [24] 1119 	mov	dpl,r5
      0001E5 8E 83            [24] 1120 	mov	dph,r6
      0001E7 8F F0            [24] 1121 	mov	b,r7
      0001E9 12 09 33         [24] 1122 	lcall	__gptrget
      0001EC FC               [12] 1123 	mov	r4,a
      0001ED 60 18            [24] 1124 	jz	00104$
      0001EF 8C 82            [24] 1125 	mov	dpl,r4
      0001F1 0D               [12] 1126 	inc	r5
      0001F2 BD 00 01         [24] 1127 	cjne	r5,#0x00,00113$
      0001F5 0E               [12] 1128 	inc	r6
      0001F6                       1129 00113$:
      0001F6 C0 07            [24] 1130 	push	ar7
      0001F8 C0 06            [24] 1131 	push	ar6
      0001FA C0 05            [24] 1132 	push	ar5
      0001FC 12 01 BC         [24] 1133 	lcall	_Print
      0001FF D0 05            [24] 1134 	pop	ar5
      000201 D0 06            [24] 1135 	pop	ar6
      000203 D0 07            [24] 1136 	pop	ar7
      000205 80 DC            [24] 1137 	sjmp	00101$
      000207                       1138 00104$:
                           00017C  1139 	C$ser.c$160$1$29 ==.
                           00017C  1140 	XG$sPrint$0$0 ==.
      000207 22               [24] 1141 	ret
                                   1142 ;------------------------------------------------------------
                                   1143 ;Allocation info for local variables in function 'readcounter'
                                   1144 ;------------------------------------------------------------
                           00017D  1145 	G$readcounter$0$0 ==.
                           00017D  1146 	C$ser.c$164$1$29 ==.
                                   1147 ;	ser.c:164: void readcounter(void){
                                   1148 ;	-----------------------------------------
                                   1149 ;	 function readcounter
                                   1150 ;	-----------------------------------------
      000208                       1151 _readcounter:
                           00017D  1152 	C$ser.c$165$1$31 ==.
                                   1153 ;	ser.c:165: I2C_start();
      000208 12 00 A0         [24] 1154 	lcall	_I2C_start
                           000180  1155 	C$ser.c$166$1$31 ==.
                                   1156 ;	ser.c:166: I2C_write(DS1307_ID);
      00020B 75 82 D0         [24] 1157 	mov	dpl,#0xD0
      00020E 12 00 C6         [24] 1158 	lcall	_I2C_write
                           000186  1159 	C$ser.c$167$1$31 ==.
                                   1160 ;	ser.c:167: I2C_write(10);
      000211 75 82 0A         [24] 1161 	mov	dpl,#0x0A
      000214 12 00 C6         [24] 1162 	lcall	_I2C_write
                           00018C  1163 	C$ser.c$168$1$31 ==.
                                   1164 ;	ser.c:168: I2C_start();
      000217 12 00 A0         [24] 1165 	lcall	_I2C_start
                           00018F  1166 	C$ser.c$169$1$31 ==.
                                   1167 ;	ser.c:169: I2C_write(DS1307_ID+1);
      00021A 75 82 D1         [24] 1168 	mov	dpl,#0xD1
      00021D 12 00 C6         [24] 1169 	lcall	_I2C_write
                           000195  1170 	C$ser.c$170$1$31 ==.
                                   1171 ;	ser.c:170: counter[0] = I2C_read();
      000220 12 00 F4         [24] 1172 	lcall	_I2C_read
      000223 E5 82            [12] 1173 	mov	a,dpl
      000225 F5 57            [12] 1174 	mov	_counter,a
                           00019C  1175 	C$ser.c$171$1$31 ==.
                                   1176 ;	ser.c:171: I2C_ack();
      000227 12 01 21         [24] 1177 	lcall	_I2C_ack
                           00019F  1178 	C$ser.c$172$1$31 ==.
                                   1179 ;	ser.c:172: counter[1] = I2C_read();
      00022A 12 00 F4         [24] 1180 	lcall	_I2C_read
      00022D E5 82            [12] 1181 	mov	a,dpl
      00022F F5 58            [12] 1182 	mov	(_counter + 0x0001),a
                           0001A6  1183 	C$ser.c$173$1$31 ==.
                                   1184 ;	ser.c:173: I2C_ack();
      000231 12 01 21         [24] 1185 	lcall	_I2C_ack
                           0001A9  1186 	C$ser.c$174$1$31 ==.
                                   1187 ;	ser.c:174: counter[2] = I2C_read();
      000234 12 00 F4         [24] 1188 	lcall	_I2C_read
      000237 E5 82            [12] 1189 	mov	a,dpl
      000239 F5 59            [12] 1190 	mov	(_counter + 0x0002),a
                           0001B0  1191 	C$ser.c$175$1$31 ==.
                                   1192 ;	ser.c:175: I2C_ack();
      00023B 12 01 21         [24] 1193 	lcall	_I2C_ack
                           0001B3  1194 	C$ser.c$176$1$31 ==.
                                   1195 ;	ser.c:176: counter[3] = I2C_read();
      00023E 12 00 F4         [24] 1196 	lcall	_I2C_read
      000241 E5 82            [12] 1197 	mov	a,dpl
      000243 F5 5A            [12] 1198 	mov	(_counter + 0x0003),a
                           0001BA  1199 	C$ser.c$177$1$31 ==.
                                   1200 ;	ser.c:177: I2C_ack();
      000245 12 01 21         [24] 1201 	lcall	_I2C_ack
                           0001BD  1202 	C$ser.c$178$1$31 ==.
                                   1203 ;	ser.c:178: counter[4] = I2C_read();
      000248 12 00 F4         [24] 1204 	lcall	_I2C_read
      00024B E5 82            [12] 1205 	mov	a,dpl
      00024D F5 5B            [12] 1206 	mov	(_counter + 0x0004),a
                           0001C4  1207 	C$ser.c$179$1$31 ==.
                                   1208 ;	ser.c:179: I2C_ack();
      00024F 12 01 21         [24] 1209 	lcall	_I2C_ack
                           0001C7  1210 	C$ser.c$180$1$31 ==.
                                   1211 ;	ser.c:180: counter[5] = I2C_read();
      000252 12 00 F4         [24] 1212 	lcall	_I2C_read
      000255 E5 82            [12] 1213 	mov	a,dpl
      000257 F5 5C            [12] 1214 	mov	(_counter + 0x0005),a
                           0001CE  1215 	C$ser.c$181$1$31 ==.
                                   1216 ;	ser.c:181: I2C_ack();
      000259 12 01 21         [24] 1217 	lcall	_I2C_ack
                           0001D1  1218 	C$ser.c$182$1$31 ==.
                                   1219 ;	ser.c:182: counter[6] = I2C_read();
      00025C 12 00 F4         [24] 1220 	lcall	_I2C_read
      00025F E5 82            [12] 1221 	mov	a,dpl
      000261 F5 5D            [12] 1222 	mov	(_counter + 0x0006),a
                           0001D8  1223 	C$ser.c$183$1$31 ==.
                                   1224 ;	ser.c:183: I2C_ack();
      000263 12 01 21         [24] 1225 	lcall	_I2C_ack
                           0001DB  1226 	C$ser.c$184$1$31 ==.
                                   1227 ;	ser.c:184: counter[7] = I2C_read();
      000266 12 00 F4         [24] 1228 	lcall	_I2C_read
      000269 E5 82            [12] 1229 	mov	a,dpl
      00026B F5 5E            [12] 1230 	mov	(_counter + 0x0007),a
                           0001E2  1231 	C$ser.c$185$1$31 ==.
                                   1232 ;	ser.c:185: I2C_ack();
      00026D 12 01 21         [24] 1233 	lcall	_I2C_ack
                           0001E5  1234 	C$ser.c$186$1$31 ==.
                                   1235 ;	ser.c:186: counter[8] = I2C_read();
      000270 12 00 F4         [24] 1236 	lcall	_I2C_read
      000273 E5 82            [12] 1237 	mov	a,dpl
      000275 F5 5F            [12] 1238 	mov	(_counter + 0x0008),a
                           0001EC  1239 	C$ser.c$187$1$31 ==.
                                   1240 ;	ser.c:187: I2C_nack();
      000277 12 01 2C         [24] 1241 	lcall	_I2C_nack
                           0001EF  1242 	C$ser.c$188$1$31 ==.
                                   1243 ;	ser.c:188: I2C_stop();
      00027A 12 00 B4         [24] 1244 	lcall	_I2C_stop
                           0001F2  1245 	C$ser.c$189$1$31 ==.
                           0001F2  1246 	XG$readcounter$0$0 ==.
      00027D 22               [24] 1247 	ret
                                   1248 ;------------------------------------------------------------
                                   1249 ;Allocation info for local variables in function 'writecounter'
                                   1250 ;------------------------------------------------------------
                           0001F3  1251 	G$writecounter$0$0 ==.
                           0001F3  1252 	C$ser.c$193$1$31 ==.
                                   1253 ;	ser.c:193: void writecounter(void){
                                   1254 ;	-----------------------------------------
                                   1255 ;	 function writecounter
                                   1256 ;	-----------------------------------------
      00027E                       1257 _writecounter:
                           0001F3  1258 	C$ser.c$194$1$33 ==.
                                   1259 ;	ser.c:194: I2C_start();
      00027E 12 00 A0         [24] 1260 	lcall	_I2C_start
                           0001F6  1261 	C$ser.c$195$1$33 ==.
                                   1262 ;	ser.c:195: I2C_write(DS1307_ID);
      000281 75 82 D0         [24] 1263 	mov	dpl,#0xD0
      000284 12 00 C6         [24] 1264 	lcall	_I2C_write
                           0001FC  1265 	C$ser.c$196$1$33 ==.
                                   1266 ;	ser.c:196: I2C_write(10);
      000287 75 82 0A         [24] 1267 	mov	dpl,#0x0A
      00028A 12 00 C6         [24] 1268 	lcall	_I2C_write
                           000202  1269 	C$ser.c$197$1$33 ==.
                                   1270 ;	ser.c:197: I2C_write(counter[0]);
      00028D 85 57 82         [24] 1271 	mov	dpl,_counter
      000290 12 00 C6         [24] 1272 	lcall	_I2C_write
                           000208  1273 	C$ser.c$198$1$33 ==.
                                   1274 ;	ser.c:198: I2C_write(counter[1]);
      000293 85 58 82         [24] 1275 	mov	dpl,(_counter + 0x0001)
      000296 12 00 C6         [24] 1276 	lcall	_I2C_write
                           00020E  1277 	C$ser.c$199$1$33 ==.
                                   1278 ;	ser.c:199: I2C_write(counter[2]);
      000299 85 59 82         [24] 1279 	mov	dpl,(_counter + 0x0002)
      00029C 12 00 C6         [24] 1280 	lcall	_I2C_write
                           000214  1281 	C$ser.c$200$1$33 ==.
                                   1282 ;	ser.c:200: I2C_write(counter[3]);
      00029F 85 5A 82         [24] 1283 	mov	dpl,(_counter + 0x0003)
      0002A2 12 00 C6         [24] 1284 	lcall	_I2C_write
                           00021A  1285 	C$ser.c$201$1$33 ==.
                                   1286 ;	ser.c:201: I2C_write(counter[4]);
      0002A5 85 5B 82         [24] 1287 	mov	dpl,(_counter + 0x0004)
      0002A8 12 00 C6         [24] 1288 	lcall	_I2C_write
                           000220  1289 	C$ser.c$202$1$33 ==.
                                   1290 ;	ser.c:202: I2C_write(counter[5]);
      0002AB 85 5C 82         [24] 1291 	mov	dpl,(_counter + 0x0005)
      0002AE 12 00 C6         [24] 1292 	lcall	_I2C_write
                           000226  1293 	C$ser.c$203$1$33 ==.
                                   1294 ;	ser.c:203: I2C_write(counter[6]);
      0002B1 85 5D 82         [24] 1295 	mov	dpl,(_counter + 0x0006)
      0002B4 12 00 C6         [24] 1296 	lcall	_I2C_write
                           00022C  1297 	C$ser.c$204$1$33 ==.
                                   1298 ;	ser.c:204: I2C_write(counter[7]);
      0002B7 85 5E 82         [24] 1299 	mov	dpl,(_counter + 0x0007)
      0002BA 12 00 C6         [24] 1300 	lcall	_I2C_write
                           000232  1301 	C$ser.c$205$1$33 ==.
                                   1302 ;	ser.c:205: I2C_write(counter[8]);
      0002BD 85 5F 82         [24] 1303 	mov	dpl,(_counter + 0x0008)
      0002C0 12 00 C6         [24] 1304 	lcall	_I2C_write
                           000238  1305 	C$ser.c$206$1$33 ==.
                                   1306 ;	ser.c:206: I2C_stop();
      0002C3 12 00 B4         [24] 1307 	lcall	_I2C_stop
                           00023B  1308 	C$ser.c$208$1$33 ==.
                           00023B  1309 	XG$writecounter$0$0 ==.
      0002C6 22               [24] 1310 	ret
                                   1311 ;------------------------------------------------------------
                                   1312 ;Allocation info for local variables in function 'compare'
                                   1313 ;------------------------------------------------------------
                                   1314 ;cmd                       Allocated to registers r7 
                                   1315 ;logic                     Allocated to registers r6 
                                   1316 ;i                         Allocated to registers r5 
                                   1317 ;------------------------------------------------------------
                           00023C  1318 	G$compare$0$0 ==.
                           00023C  1319 	C$ser.c$212$1$33 ==.
                                   1320 ;	ser.c:212: unsigned char compare(unsigned char cmd){
                                   1321 ;	-----------------------------------------
                                   1322 ;	 function compare
                                   1323 ;	-----------------------------------------
      0002C7                       1324 _compare:
      0002C7 AF 82            [24] 1325 	mov	r7,dpl
                           00023E  1326 	C$ser.c$213$1$33 ==.
                                   1327 ;	ser.c:213: unsigned char logic=false;
      0002C9 7E 00            [12] 1328 	mov	r6,#0x00
                           000240  1329 	C$ser.c$215$1$35 ==.
                                   1330 ;	ser.c:215: if(cmd==1){
      0002CB BF 01 25         [24] 1331 	cjne	r7,#0x01,00108$
                           000243  1332 	C$ser.c$216$2$36 ==.
                                   1333 ;	ser.c:216: for(i=0;i<20;i++){
      0002CE 7D 00            [12] 1334 	mov	r5,#0x00
      0002D0                       1335 00166$:
                           000245  1336 	C$ser.c$217$3$37 ==.
                                   1337 ;	ser.c:217: if(bufer[i]==open1[i]){
      0002D0 ED               [12] 1338 	mov	a,r5
      0002D1 24 41            [12] 1339 	add	a,#_bufer
      0002D3 F9               [12] 1340 	mov	r1,a
      0002D4 87 04            [24] 1341 	mov	ar4,@r1
      0002D6 ED               [12] 1342 	mov	a,r5
      0002D7 90 09 53         [24] 1343 	mov	dptr,#_open1
      0002DA 93               [24] 1344 	movc	a,@a+dptr
      0002DB FB               [12] 1345 	mov	r3,a
      0002DC EC               [12] 1346 	mov	a,r4
      0002DD B5 03 13         [24] 1347 	cjne	a,ar3,00108$
                           000255  1348 	C$ser.c$218$4$38 ==.
                                   1349 ;	ser.c:218: if(bufer[i]=='#'){
      0002E0 ED               [12] 1350 	mov	a,r5
      0002E1 24 41            [12] 1351 	add	a,#_bufer
      0002E3 F9               [12] 1352 	mov	r1,a
      0002E4 87 04            [24] 1353 	mov	ar4,@r1
      0002E6 BC 23 04         [24] 1354 	cjne	r4,#0x23,00167$
                           00025E  1355 	C$ser.c$219$5$39 ==.
                                   1356 ;	ser.c:219: logic=true;
      0002E9 7E 01            [12] 1357 	mov	r6,#0x01
                           000260  1358 	C$ser.c$220$5$39 ==.
                                   1359 ;	ser.c:220: break;
                           000260  1360 	C$ser.c$223$3$37 ==.
                                   1361 ;	ser.c:223: else break;
      0002EB 80 06            [24] 1362 	sjmp	00108$
      0002ED                       1363 00167$:
                           000262  1364 	C$ser.c$216$2$36 ==.
                                   1365 ;	ser.c:216: for(i=0;i<20;i++){
      0002ED 0D               [12] 1366 	inc	r5
      0002EE BD 14 00         [24] 1367 	cjne	r5,#0x14,00289$
      0002F1                       1368 00289$:
      0002F1 40 DD            [24] 1369 	jc	00166$
      0002F3                       1370 00108$:
                           000268  1371 	C$ser.c$226$1$35 ==.
                                   1372 ;	ser.c:226: if(cmd==2){
      0002F3 BF 02 25         [24] 1373 	cjne	r7,#0x02,00116$
                           00026B  1374 	C$ser.c$227$2$40 ==.
                                   1375 ;	ser.c:227: for(i=0;i<20;i++){
      0002F6 7D 00            [12] 1376 	mov	r5,#0x00
      0002F8                       1377 00168$:
                           00026D  1378 	C$ser.c$228$3$41 ==.
                                   1379 ;	ser.c:228: if(bufer[i]==out1on[i]){
      0002F8 ED               [12] 1380 	mov	a,r5
      0002F9 24 41            [12] 1381 	add	a,#_bufer
      0002FB F9               [12] 1382 	mov	r1,a
      0002FC 87 04            [24] 1383 	mov	ar4,@r1
      0002FE ED               [12] 1384 	mov	a,r5
      0002FF 90 09 5A         [24] 1385 	mov	dptr,#_out1on
      000302 93               [24] 1386 	movc	a,@a+dptr
      000303 FB               [12] 1387 	mov	r3,a
      000304 EC               [12] 1388 	mov	a,r4
      000305 B5 03 13         [24] 1389 	cjne	a,ar3,00116$
                           00027D  1390 	C$ser.c$229$4$42 ==.
                                   1391 ;	ser.c:229: if(bufer[i]=='#'){
      000308 ED               [12] 1392 	mov	a,r5
      000309 24 41            [12] 1393 	add	a,#_bufer
      00030B F9               [12] 1394 	mov	r1,a
      00030C 87 04            [24] 1395 	mov	ar4,@r1
      00030E BC 23 04         [24] 1396 	cjne	r4,#0x23,00169$
                           000286  1397 	C$ser.c$230$5$43 ==.
                                   1398 ;	ser.c:230: logic=true;
      000311 7E 01            [12] 1399 	mov	r6,#0x01
                           000288  1400 	C$ser.c$231$5$43 ==.
                                   1401 ;	ser.c:231: break;
                           000288  1402 	C$ser.c$234$3$41 ==.
                                   1403 ;	ser.c:234: else break;
      000313 80 06            [24] 1404 	sjmp	00116$
      000315                       1405 00169$:
                           00028A  1406 	C$ser.c$227$2$40 ==.
                                   1407 ;	ser.c:227: for(i=0;i<20;i++){
      000315 0D               [12] 1408 	inc	r5
      000316 BD 14 00         [24] 1409 	cjne	r5,#0x14,00297$
      000319                       1410 00297$:
      000319 40 DD            [24] 1411 	jc	00168$
      00031B                       1412 00116$:
                           000290  1413 	C$ser.c$237$1$35 ==.
                                   1414 ;	ser.c:237: if(cmd==3){
      00031B BF 03 25         [24] 1415 	cjne	r7,#0x03,00124$
                           000293  1416 	C$ser.c$238$2$44 ==.
                                   1417 ;	ser.c:238: for(i=0;i<20;i++){
      00031E 7D 00            [12] 1418 	mov	r5,#0x00
      000320                       1419 00170$:
                           000295  1420 	C$ser.c$239$3$45 ==.
                                   1421 ;	ser.c:239: if(bufer[i]==out1off[i]){
      000320 ED               [12] 1422 	mov	a,r5
      000321 24 41            [12] 1423 	add	a,#_bufer
      000323 F9               [12] 1424 	mov	r1,a
      000324 87 04            [24] 1425 	mov	ar4,@r1
      000326 ED               [12] 1426 	mov	a,r5
      000327 90 09 62         [24] 1427 	mov	dptr,#_out1off
      00032A 93               [24] 1428 	movc	a,@a+dptr
      00032B FB               [12] 1429 	mov	r3,a
      00032C EC               [12] 1430 	mov	a,r4
      00032D B5 03 13         [24] 1431 	cjne	a,ar3,00124$
                           0002A5  1432 	C$ser.c$240$4$46 ==.
                                   1433 ;	ser.c:240: if(bufer[i]=='#'){
      000330 ED               [12] 1434 	mov	a,r5
      000331 24 41            [12] 1435 	add	a,#_bufer
      000333 F9               [12] 1436 	mov	r1,a
      000334 87 04            [24] 1437 	mov	ar4,@r1
      000336 BC 23 04         [24] 1438 	cjne	r4,#0x23,00171$
                           0002AE  1439 	C$ser.c$241$5$47 ==.
                                   1440 ;	ser.c:241: logic=true;
      000339 7E 01            [12] 1441 	mov	r6,#0x01
                           0002B0  1442 	C$ser.c$242$5$47 ==.
                                   1443 ;	ser.c:242: break;
                           0002B0  1444 	C$ser.c$245$3$45 ==.
                                   1445 ;	ser.c:245: else break;
      00033B 80 06            [24] 1446 	sjmp	00124$
      00033D                       1447 00171$:
                           0002B2  1448 	C$ser.c$238$2$44 ==.
                                   1449 ;	ser.c:238: for(i=0;i<20;i++){
      00033D 0D               [12] 1450 	inc	r5
      00033E BD 14 00         [24] 1451 	cjne	r5,#0x14,00305$
      000341                       1452 00305$:
      000341 40 DD            [24] 1453 	jc	00170$
      000343                       1454 00124$:
                           0002B8  1455 	C$ser.c$248$1$35 ==.
                                   1456 ;	ser.c:248: if(cmd==4){
      000343 BF 04 25         [24] 1457 	cjne	r7,#0x04,00132$
                           0002BB  1458 	C$ser.c$249$2$48 ==.
                                   1459 ;	ser.c:249: for(i=0;i<20;i++){
      000346 7D 00            [12] 1460 	mov	r5,#0x00
      000348                       1461 00172$:
                           0002BD  1462 	C$ser.c$250$3$49 ==.
                                   1463 ;	ser.c:250: if(bufer[i]==ping[i]){
      000348 ED               [12] 1464 	mov	a,r5
      000349 24 41            [12] 1465 	add	a,#_bufer
      00034B F9               [12] 1466 	mov	r1,a
      00034C 87 04            [24] 1467 	mov	ar4,@r1
      00034E ED               [12] 1468 	mov	a,r5
      00034F 90 09 6B         [24] 1469 	mov	dptr,#_ping
      000352 93               [24] 1470 	movc	a,@a+dptr
      000353 FB               [12] 1471 	mov	r3,a
      000354 EC               [12] 1472 	mov	a,r4
      000355 B5 03 13         [24] 1473 	cjne	a,ar3,00132$
                           0002CD  1474 	C$ser.c$251$4$50 ==.
                                   1475 ;	ser.c:251: if(bufer[i]=='#'){
      000358 ED               [12] 1476 	mov	a,r5
      000359 24 41            [12] 1477 	add	a,#_bufer
      00035B F9               [12] 1478 	mov	r1,a
      00035C 87 04            [24] 1479 	mov	ar4,@r1
      00035E BC 23 04         [24] 1480 	cjne	r4,#0x23,00173$
                           0002D6  1481 	C$ser.c$252$5$51 ==.
                                   1482 ;	ser.c:252: logic=true;
      000361 7E 01            [12] 1483 	mov	r6,#0x01
                           0002D8  1484 	C$ser.c$253$5$51 ==.
                                   1485 ;	ser.c:253: break;
                           0002D8  1486 	C$ser.c$256$3$49 ==.
                                   1487 ;	ser.c:256: else break;
      000363 80 06            [24] 1488 	sjmp	00132$
      000365                       1489 00173$:
                           0002DA  1490 	C$ser.c$249$2$48 ==.
                                   1491 ;	ser.c:249: for(i=0;i<20;i++){
      000365 0D               [12] 1492 	inc	r5
      000366 BD 14 00         [24] 1493 	cjne	r5,#0x14,00313$
      000369                       1494 00313$:
      000369 40 DD            [24] 1495 	jc	00172$
      00036B                       1496 00132$:
                           0002E0  1497 	C$ser.c$259$1$35 ==.
                                   1498 ;	ser.c:259: if(cmd==5){
      00036B BF 05 25         [24] 1499 	cjne	r7,#0x05,00140$
                           0002E3  1500 	C$ser.c$260$2$52 ==.
                                   1501 ;	ser.c:260: for(i=0;i<20;i++){
      00036E 7D 00            [12] 1502 	mov	r5,#0x00
      000370                       1503 00174$:
                           0002E5  1504 	C$ser.c$261$3$53 ==.
                                   1505 ;	ser.c:261: if(bufer[i]==stat[i]){
      000370 ED               [12] 1506 	mov	a,r5
      000371 24 41            [12] 1507 	add	a,#_bufer
      000373 F9               [12] 1508 	mov	r1,a
      000374 87 04            [24] 1509 	mov	ar4,@r1
      000376 ED               [12] 1510 	mov	a,r5
      000377 90 09 71         [24] 1511 	mov	dptr,#_stat
      00037A 93               [24] 1512 	movc	a,@a+dptr
      00037B FB               [12] 1513 	mov	r3,a
      00037C EC               [12] 1514 	mov	a,r4
      00037D B5 03 13         [24] 1515 	cjne	a,ar3,00140$
                           0002F5  1516 	C$ser.c$262$4$54 ==.
                                   1517 ;	ser.c:262: if(bufer[i]=='#'){
      000380 ED               [12] 1518 	mov	a,r5
      000381 24 41            [12] 1519 	add	a,#_bufer
      000383 F9               [12] 1520 	mov	r1,a
      000384 87 04            [24] 1521 	mov	ar4,@r1
      000386 BC 23 04         [24] 1522 	cjne	r4,#0x23,00175$
                           0002FE  1523 	C$ser.c$263$5$55 ==.
                                   1524 ;	ser.c:263: logic=true;
      000389 7E 01            [12] 1525 	mov	r6,#0x01
                           000300  1526 	C$ser.c$264$5$55 ==.
                                   1527 ;	ser.c:264: break;
                           000300  1528 	C$ser.c$267$3$53 ==.
                                   1529 ;	ser.c:267: else break;
      00038B 80 06            [24] 1530 	sjmp	00140$
      00038D                       1531 00175$:
                           000302  1532 	C$ser.c$260$2$52 ==.
                                   1533 ;	ser.c:260: for(i=0;i<20;i++){
      00038D 0D               [12] 1534 	inc	r5
      00038E BD 14 00         [24] 1535 	cjne	r5,#0x14,00321$
      000391                       1536 00321$:
      000391 40 DD            [24] 1537 	jc	00174$
      000393                       1538 00140$:
                           000308  1539 	C$ser.c$270$1$35 ==.
                                   1540 ;	ser.c:270: if(cmd==6){
      000393 BF 06 25         [24] 1541 	cjne	r7,#0x06,00148$
                           00030B  1542 	C$ser.c$271$2$56 ==.
                                   1543 ;	ser.c:271: for(i=0;i<20;i++){
      000396 7D 00            [12] 1544 	mov	r5,#0x00
      000398                       1545 00176$:
                           00030D  1546 	C$ser.c$272$3$57 ==.
                                   1547 ;	ser.c:272: if(bufer[i]==resetctr[i]){
      000398 ED               [12] 1548 	mov	a,r5
      000399 24 41            [12] 1549 	add	a,#_bufer
      00039B F9               [12] 1550 	mov	r1,a
      00039C 87 04            [24] 1551 	mov	ar4,@r1
      00039E ED               [12] 1552 	mov	a,r5
      00039F 90 09 77         [24] 1553 	mov	dptr,#_resetctr
      0003A2 93               [24] 1554 	movc	a,@a+dptr
      0003A3 FB               [12] 1555 	mov	r3,a
      0003A4 EC               [12] 1556 	mov	a,r4
      0003A5 B5 03 13         [24] 1557 	cjne	a,ar3,00148$
                           00031D  1558 	C$ser.c$273$4$58 ==.
                                   1559 ;	ser.c:273: if(bufer[i]=='#'){
      0003A8 ED               [12] 1560 	mov	a,r5
      0003A9 24 41            [12] 1561 	add	a,#_bufer
      0003AB F9               [12] 1562 	mov	r1,a
      0003AC 87 04            [24] 1563 	mov	ar4,@r1
      0003AE BC 23 04         [24] 1564 	cjne	r4,#0x23,00177$
                           000326  1565 	C$ser.c$274$5$59 ==.
                                   1566 ;	ser.c:274: logic=true;
      0003B1 7E 01            [12] 1567 	mov	r6,#0x01
                           000328  1568 	C$ser.c$275$5$59 ==.
                                   1569 ;	ser.c:275: break;
                           000328  1570 	C$ser.c$278$3$57 ==.
                                   1571 ;	ser.c:278: else break;
      0003B3 80 06            [24] 1572 	sjmp	00148$
      0003B5                       1573 00177$:
                           00032A  1574 	C$ser.c$271$2$56 ==.
                                   1575 ;	ser.c:271: for(i=0;i<20;i++){
      0003B5 0D               [12] 1576 	inc	r5
      0003B6 BD 14 00         [24] 1577 	cjne	r5,#0x14,00329$
      0003B9                       1578 00329$:
      0003B9 40 DD            [24] 1579 	jc	00176$
      0003BB                       1580 00148$:
                           000330  1581 	C$ser.c$281$1$35 ==.
                                   1582 ;	ser.c:281: if(cmd==7){
      0003BB BF 07 25         [24] 1583 	cjne	r7,#0x07,00156$
                           000333  1584 	C$ser.c$282$2$60 ==.
                                   1585 ;	ser.c:282: for(i=0;i<20;i++){
      0003BE 7D 00            [12] 1586 	mov	r5,#0x00
      0003C0                       1587 00178$:
                           000335  1588 	C$ser.c$283$3$61 ==.
                                   1589 ;	ser.c:283: if(bufer[i]==readctr[i]){
      0003C0 ED               [12] 1590 	mov	a,r5
      0003C1 24 41            [12] 1591 	add	a,#_bufer
      0003C3 F9               [12] 1592 	mov	r1,a
      0003C4 87 04            [24] 1593 	mov	ar4,@r1
      0003C6 ED               [12] 1594 	mov	a,r5
      0003C7 90 09 81         [24] 1595 	mov	dptr,#_readctr
      0003CA 93               [24] 1596 	movc	a,@a+dptr
      0003CB FB               [12] 1597 	mov	r3,a
      0003CC EC               [12] 1598 	mov	a,r4
      0003CD B5 03 13         [24] 1599 	cjne	a,ar3,00156$
                           000345  1600 	C$ser.c$284$4$62 ==.
                                   1601 ;	ser.c:284: if(bufer[i]=='#'){
      0003D0 ED               [12] 1602 	mov	a,r5
      0003D1 24 41            [12] 1603 	add	a,#_bufer
      0003D3 F9               [12] 1604 	mov	r1,a
      0003D4 87 04            [24] 1605 	mov	ar4,@r1
      0003D6 BC 23 04         [24] 1606 	cjne	r4,#0x23,00179$
                           00034E  1607 	C$ser.c$285$5$63 ==.
                                   1608 ;	ser.c:285: logic=true;
      0003D9 7E 01            [12] 1609 	mov	r6,#0x01
                           000350  1610 	C$ser.c$286$5$63 ==.
                                   1611 ;	ser.c:286: break;
                           000350  1612 	C$ser.c$289$3$61 ==.
                                   1613 ;	ser.c:289: else break;
      0003DB 80 06            [24] 1614 	sjmp	00156$
      0003DD                       1615 00179$:
                           000352  1616 	C$ser.c$282$2$60 ==.
                                   1617 ;	ser.c:282: for(i=0;i<20;i++){
      0003DD 0D               [12] 1618 	inc	r5
      0003DE BD 14 00         [24] 1619 	cjne	r5,#0x14,00337$
      0003E1                       1620 00337$:
      0003E1 40 DD            [24] 1621 	jc	00178$
      0003E3                       1622 00156$:
                           000358  1623 	C$ser.c$292$1$35 ==.
                                   1624 ;	ser.c:292: if(cmd==8){
      0003E3 BF 08 22         [24] 1625 	cjne	r7,#0x08,00165$
                           00035B  1626 	C$ser.c$293$2$64 ==.
                                   1627 ;	ser.c:293: for(i=0;i<8;i++){
      0003E6 7D 00            [12] 1628 	mov	r5,#0x00
      0003E8                       1629 00180$:
                           00035D  1630 	C$ser.c$294$3$65 ==.
                                   1631 ;	ser.c:294: if(bufer[i]==editctr[i]&&bufer[17]=='#'){
      0003E8 ED               [12] 1632 	mov	a,r5
      0003E9 24 41            [12] 1633 	add	a,#_bufer
      0003EB F9               [12] 1634 	mov	r1,a
      0003EC 87 07            [24] 1635 	mov	ar7,@r1
      0003EE ED               [12] 1636 	mov	a,r5
      0003EF 90 09 8A         [24] 1637 	mov	dptr,#_editctr
      0003F2 93               [24] 1638 	movc	a,@a+dptr
      0003F3 FC               [12] 1639 	mov	r4,a
      0003F4 EF               [12] 1640 	mov	a,r7
      0003F5 B5 04 10         [24] 1641 	cjne	a,ar4,00165$
      0003F8 74 23            [12] 1642 	mov	a,#0x23
      0003FA B5 52 0B         [24] 1643 	cjne	a,(_bufer + 0x0011),00165$
                           000372  1644 	C$ser.c$295$4$66 ==.
                                   1645 ;	ser.c:295: if(i==7)logic=true;
      0003FD BD 07 02         [24] 1646 	cjne	r5,#0x07,00181$
      000400 7E 01            [12] 1647 	mov	r6,#0x01
                           000377  1648 	C$ser.c$297$3$65 ==.
                                   1649 ;	ser.c:297: else break;
      000402                       1650 00181$:
                           000377  1651 	C$ser.c$293$2$64 ==.
                                   1652 ;	ser.c:293: for(i=0;i<8;i++){
      000402 0D               [12] 1653 	inc	r5
      000403 BD 08 00         [24] 1654 	cjne	r5,#0x08,00347$
      000406                       1655 00347$:
      000406 40 E0            [24] 1656 	jc	00180$
      000408                       1657 00165$:
                           00037D  1658 	C$ser.c$300$1$35 ==.
                                   1659 ;	ser.c:300: return logic;
      000408 8E 82            [24] 1660 	mov	dpl,r6
                           00037F  1661 	C$ser.c$301$1$35 ==.
                           00037F  1662 	XG$compare$0$0 ==.
      00040A 22               [24] 1663 	ret
                                   1664 ;------------------------------------------------------------
                                   1665 ;Allocation info for local variables in function 'main'
                                   1666 ;------------------------------------------------------------
                                   1667 ;i                         Allocated to registers r3 
                                   1668 ;bouncing_high             Allocated to registers r6 r7 
                                   1669 ;bouncing_low              Allocated to registers r4 r5 
                                   1670 ;millis                    Allocated with name '_main_millis_1_68'
                                   1671 ;------------------------------------------------------------
                           000380  1672 	G$main$0$0 ==.
                           000380  1673 	C$ser.c$302$1$35 ==.
                                   1674 ;	ser.c:302: void main (void){
                                   1675 ;	-----------------------------------------
                                   1676 ;	 function main
                                   1677 ;	-----------------------------------------
      00040B                       1678 _main:
                           000380  1679 	C$ser.c$303$1$35 ==.
                                   1680 ;	ser.c:303: __bit stat_out=0;
      00040B C2 03            [12] 1681 	clr	_main_stat_out_1_68
                           000382  1682 	C$ser.c$305$1$35 ==.
                                   1683 ;	ser.c:305: __bit toggle=0;
      00040D C2 05            [12] 1684 	clr	_main_toggle_1_68
                           000384  1685 	C$ser.c$306$1$35 ==.
                                   1686 ;	ser.c:306: __bit falling_sensor=1;
      00040F D2 06            [12] 1687 	setb	_main_falling_sensor_1_68
                           000386  1688 	C$ser.c$308$1$35 ==.
                                   1689 ;	ser.c:308: unsigned int bouncing_high=5000;
      000411 7E 88            [12] 1690 	mov	r6,#0x88
      000413 7F 13            [12] 1691 	mov	r7,#0x13
                           00038A  1692 	C$ser.c$309$1$35 ==.
                                   1693 ;	ser.c:309: unsigned int bouncing_low=5000;
      000415 7C 88            [12] 1694 	mov	r4,#0x88
      000417 7D 13            [12] 1695 	mov	r5,#0x13
                           00038E  1696 	C$ser.c$310$1$35 ==.
                                   1697 ;	ser.c:310: unsigned int millis=0;
      000419 E4               [12] 1698 	clr	a
      00041A F5 60            [12] 1699 	mov	_main_millis_1_68,a
      00041C F5 61            [12] 1700 	mov	(_main_millis_1_68 + 1),a
                           000393  1701 	C$ser.c$311$1$68 ==.
                                   1702 ;	ser.c:311: out=0;
      00041E C2 A0            [12] 1703 	clr	_P2_0
                           000395  1704 	C$ser.c$312$1$68 ==.
                                   1705 ;	ser.c:312: for(i=0;i<250;i++);
      000420 7B FA            [12] 1706 	mov	r3,#0xFA
      000422                       1707 00196$:
      000422 8B 02            [24] 1708 	mov	ar2,r3
      000424 EA               [12] 1709 	mov	a,r2
      000425 14               [12] 1710 	dec	a
      000426 FB               [12] 1711 	mov	r3,a
      000427 70 F9            [24] 1712 	jnz	00196$
                           00039E  1713 	C$ser.c$313$1$68 ==.
                                   1714 ;	ser.c:313: for(i=0;i<250;i++);
      000429 7B FA            [12] 1715 	mov	r3,#0xFA
      00042B                       1716 00199$:
      00042B 8B 02            [24] 1717 	mov	ar2,r3
      00042D EA               [12] 1718 	mov	a,r2
      00042E 14               [12] 1719 	dec	a
      00042F FB               [12] 1720 	mov	r3,a
      000430 70 F9            [24] 1721 	jnz	00199$
                           0003A7  1722 	C$ser.c$314$1$68 ==.
                                   1723 ;	ser.c:314: P0=0xff;
      000432 75 80 FF         [24] 1724 	mov	_P0,#0xFF
                           0003AA  1725 	C$ser.c$315$1$68 ==.
                                   1726 ;	ser.c:315: readcounter();
      000435 C0 07            [24] 1727 	push	ar7
      000437 C0 06            [24] 1728 	push	ar6
      000439 C0 05            [24] 1729 	push	ar5
      00043B C0 04            [24] 1730 	push	ar4
      00043D 12 02 08         [24] 1731 	lcall	_readcounter
                           0003B5  1732 	C$ser.c$316$1$68 ==.
                                   1733 ;	ser.c:316: serial_init();
      000440 12 01 37         [24] 1734 	lcall	_serial_init
      000443 D0 04            [24] 1735 	pop	ar4
      000445 D0 05            [24] 1736 	pop	ar5
      000447 D0 06            [24] 1737 	pop	ar6
      000449 D0 07            [24] 1738 	pop	ar7
                           0003C0  1739 	C$ser.c$317$1$68 ==.
                                   1740 ;	ser.c:317: if(counter[0]>9)counter[0]=0;
      00044B E5 57            [12] 1741 	mov	a,_counter
      00044D 24 F6            [12] 1742 	add	a,#0xff - 0x09
      00044F 50 03            [24] 1743 	jnc	00104$
      000451 75 57 00         [24] 1744 	mov	_counter,#0x00
      000454                       1745 00104$:
                           0003C9  1746 	C$ser.c$318$1$68 ==.
                                   1747 ;	ser.c:318: if(counter[1]>9)counter[1]=0;
      000454 E5 58            [12] 1748 	mov	a,(_counter + 0x0001)
      000456 24 F6            [12] 1749 	add	a,#0xff - 0x09
      000458 50 03            [24] 1750 	jnc	00106$
      00045A 75 58 00         [24] 1751 	mov	(_counter + 0x0001),#0x00
      00045D                       1752 00106$:
                           0003D2  1753 	C$ser.c$319$1$68 ==.
                                   1754 ;	ser.c:319: if(counter[2]>9)counter[2]=0;
      00045D E5 59            [12] 1755 	mov	a,(_counter + 0x0002)
      00045F 24 F6            [12] 1756 	add	a,#0xff - 0x09
      000461 50 03            [24] 1757 	jnc	00108$
      000463 75 59 00         [24] 1758 	mov	(_counter + 0x0002),#0x00
      000466                       1759 00108$:
                           0003DB  1760 	C$ser.c$320$1$68 ==.
                                   1761 ;	ser.c:320: if(counter[3]>9)counter[3]=0;
      000466 E5 5A            [12] 1762 	mov	a,(_counter + 0x0003)
      000468 24 F6            [12] 1763 	add	a,#0xff - 0x09
      00046A 50 03            [24] 1764 	jnc	00110$
      00046C 75 5A 00         [24] 1765 	mov	(_counter + 0x0003),#0x00
      00046F                       1766 00110$:
                           0003E4  1767 	C$ser.c$321$1$68 ==.
                                   1768 ;	ser.c:321: if(counter[4]>9)counter[4]=0;
      00046F E5 5B            [12] 1769 	mov	a,(_counter + 0x0004)
      000471 24 F6            [12] 1770 	add	a,#0xff - 0x09
      000473 50 03            [24] 1771 	jnc	00112$
      000475 75 5B 00         [24] 1772 	mov	(_counter + 0x0004),#0x00
      000478                       1773 00112$:
                           0003ED  1774 	C$ser.c$322$1$68 ==.
                                   1775 ;	ser.c:322: if(counter[5]>9)counter[5]=0;
      000478 E5 5C            [12] 1776 	mov	a,(_counter + 0x0005)
      00047A 24 F6            [12] 1777 	add	a,#0xff - 0x09
      00047C 50 03            [24] 1778 	jnc	00114$
      00047E 75 5C 00         [24] 1779 	mov	(_counter + 0x0005),#0x00
      000481                       1780 00114$:
                           0003F6  1781 	C$ser.c$323$1$68 ==.
                                   1782 ;	ser.c:323: if(counter[6]>9)counter[6]=0;
      000481 E5 5D            [12] 1783 	mov	a,(_counter + 0x0006)
      000483 24 F6            [12] 1784 	add	a,#0xff - 0x09
      000485 50 03            [24] 1785 	jnc	00116$
      000487 75 5D 00         [24] 1786 	mov	(_counter + 0x0006),#0x00
      00048A                       1787 00116$:
                           0003FF  1788 	C$ser.c$324$1$68 ==.
                                   1789 ;	ser.c:324: if(counter[7]>9)counter[7]=0;
      00048A E5 5E            [12] 1790 	mov	a,(_counter + 0x0007)
      00048C 24 F6            [12] 1791 	add	a,#0xff - 0x09
      00048E 50 03            [24] 1792 	jnc	00118$
      000490 75 5E 00         [24] 1793 	mov	(_counter + 0x0007),#0x00
      000493                       1794 00118$:
                           000408  1795 	C$ser.c$325$1$68 ==.
                                   1796 ;	ser.c:325: if(counter[8]>9)counter[8]=0;
      000493 E5 5F            [12] 1797 	mov	a,(_counter + 0x0008)
      000495 24 F6            [12] 1798 	add	a,#0xff - 0x09
      000497 50 03            [24] 1799 	jnc	00120$
      000499 75 5F 00         [24] 1800 	mov	(_counter + 0x0008),#0x00
      00049C                       1801 00120$:
                           000411  1802 	C$ser.c$326$1$68 ==.
                                   1803 ;	ser.c:326: sPrint("*POWERON:BTOK#");
      00049C 90 09 92         [24] 1804 	mov	dptr,#___str_0
      00049F 75 F0 80         [24] 1805 	mov	b,#0x80
      0004A2 C0 07            [24] 1806 	push	ar7
      0004A4 C0 06            [24] 1807 	push	ar6
      0004A6 C0 05            [24] 1808 	push	ar5
      0004A8 C0 04            [24] 1809 	push	ar4
      0004AA 12 01 DD         [24] 1810 	lcall	_sPrint
                           000422  1811 	C$ser.c$327$1$68 ==.
                                   1812 ;	ser.c:327: Print(13);
      0004AD 75 82 0D         [24] 1813 	mov	dpl,#0x0D
      0004B0 12 01 BC         [24] 1814 	lcall	_Print
                           000428  1815 	C$ser.c$328$1$68 ==.
                                   1816 ;	ser.c:328: Print(10);
      0004B3 75 82 0A         [24] 1817 	mov	dpl,#0x0A
      0004B6 12 01 BC         [24] 1818 	lcall	_Print
      0004B9 D0 04            [24] 1819 	pop	ar4
      0004BB D0 05            [24] 1820 	pop	ar5
      0004BD D0 06            [24] 1821 	pop	ar6
      0004BF D0 07            [24] 1822 	pop	ar7
                           000436  1823 	C$ser.c$329$1$68 ==.
                                   1824 ;	ser.c:329: while(1){
      0004C1                       1825 00192$:
                           000436  1826 	C$ser.c$330$2$69 ==.
                                   1827 ;	ser.c:330: if(toggle){
      0004C1 30 05 1B         [24] 1828 	jnb	_main_toggle_1_68,00125$
                           000439  1829 	C$ser.c$331$3$70 ==.
                                   1830 ;	ser.c:331: P0_3=0;
      0004C4 C2 83            [12] 1831 	clr	_P0_3
                           00043B  1832 	C$ser.c$332$3$70 ==.
                                   1833 ;	ser.c:332: if(!millis){
      0004C6 E5 60            [12] 1834 	mov	a,_main_millis_1_68
      0004C8 45 61            [12] 1835 	orl	a,(_main_millis_1_68 + 1)
      0004CA 70 0A            [24] 1836 	jnz	00122$
                           000441  1837 	C$ser.c$333$4$71 ==.
                                   1838 ;	ser.c:333: toggle=false;
      0004CC C2 05            [12] 1839 	clr	_main_toggle_1_68
                           000443  1840 	C$ser.c$334$4$71 ==.
                                   1841 ;	ser.c:334: out=0;
      0004CE C2 A0            [12] 1842 	clr	_P2_0
                           000445  1843 	C$ser.c$335$4$71 ==.
                                   1844 ;	ser.c:335: stat_out=0;
      0004D0 C2 03            [12] 1845 	clr	_main_stat_out_1_68
                           000447  1846 	C$ser.c$336$4$71 ==.
                                   1847 ;	ser.c:336: P0_3=1;
      0004D2 D2 83            [12] 1848 	setb	_P0_3
      0004D4 80 09            [24] 1849 	sjmp	00125$
      0004D6                       1850 00122$:
                           00044B  1851 	C$ser.c$338$3$70 ==.
                                   1852 ;	ser.c:338: else millis--;
      0004D6 15 60            [12] 1853 	dec	_main_millis_1_68
      0004D8 74 FF            [12] 1854 	mov	a,#0xFF
      0004DA B5 60 02         [24] 1855 	cjne	a,_main_millis_1_68,00355$
      0004DD 15 61            [12] 1856 	dec	(_main_millis_1_68 + 1)
      0004DF                       1857 00355$:
      0004DF                       1858 00125$:
                           000454  1859 	C$ser.c$343$2$69 ==.
                                   1860 ;	ser.c:343: if(input_a==0){
      0004DF 30 86 03         [24] 1861 	jnb	_P0_6,00356$
      0004E2 02 05 C4         [24] 1862 	ljmp	00153$
      0004E5                       1863 00356$:
                           00045A  1864 	C$ser.c$344$3$72 ==.
                                   1865 ;	ser.c:344: bouncing_high=5000;
      0004E5 7E 88            [12] 1866 	mov	r6,#0x88
      0004E7 7F 13            [12] 1867 	mov	r7,#0x13
                           00045E  1868 	C$ser.c$345$3$72 ==.
                                   1869 ;	ser.c:345: if(bouncing_low>0){
      0004E9 EC               [12] 1870 	mov	a,r4
      0004EA 4D               [12] 1871 	orl	a,r5
      0004EB 60 08            [24] 1872 	jz	00127$
                           000462  1873 	C$ser.c$346$4$73 ==.
                                   1874 ;	ser.c:346: bouncing_low--;
      0004ED 1C               [12] 1875 	dec	r4
      0004EE BC FF 01         [24] 1876 	cjne	r4,#0xFF,00358$
      0004F1 1D               [12] 1877 	dec	r5
      0004F2                       1878 00358$:
                           000467  1879 	C$ser.c$347$4$73 ==.
                                   1880 ;	ser.c:347: goto lanjut;
      0004F2 02 05 FF         [24] 1881 	ljmp	00155$
      0004F5                       1882 00127$:
                           00046A  1883 	C$ser.c$349$3$72 ==.
                                   1884 ;	ser.c:349: P0_2=0;
      0004F5 C2 82            [12] 1885 	clr	_P0_2
                           00046C  1886 	C$ser.c$350$3$72 ==.
                                   1887 ;	ser.c:350: if(falling_sensor){
      0004F7 20 06 03         [24] 1888 	jb	_main_falling_sensor_1_68,00359$
      0004FA 02 05 FF         [24] 1889 	ljmp	00155$
      0004FD                       1890 00359$:
                           000472  1891 	C$ser.c$351$4$74 ==.
                                   1892 ;	ser.c:351: sPrint("*IN1ON#");
      0004FD 90 09 A1         [24] 1893 	mov	dptr,#___str_1
      000500 75 F0 80         [24] 1894 	mov	b,#0x80
      000503 C0 07            [24] 1895 	push	ar7
      000505 C0 06            [24] 1896 	push	ar6
      000507 C0 05            [24] 1897 	push	ar5
      000509 C0 04            [24] 1898 	push	ar4
      00050B 12 01 DD         [24] 1899 	lcall	_sPrint
                           000483  1900 	C$ser.c$352$4$74 ==.
                                   1901 ;	ser.c:352: Print(13);
      00050E 75 82 0D         [24] 1902 	mov	dpl,#0x0D
      000511 12 01 BC         [24] 1903 	lcall	_Print
                           000489  1904 	C$ser.c$353$4$74 ==.
                                   1905 ;	ser.c:353: Print(10);
      000514 75 82 0A         [24] 1906 	mov	dpl,#0x0A
      000517 12 01 BC         [24] 1907 	lcall	_Print
      00051A D0 04            [24] 1908 	pop	ar4
      00051C D0 05            [24] 1909 	pop	ar5
      00051E D0 06            [24] 1910 	pop	ar6
      000520 D0 07            [24] 1911 	pop	ar7
                           000497  1912 	C$ser.c$354$4$74 ==.
                                   1913 ;	ser.c:354: falling_sensor=false;
      000522 C2 06            [12] 1914 	clr	_main_falling_sensor_1_68
                           000499  1915 	C$ser.c$355$4$74 ==.
                                   1916 ;	ser.c:355: counter[0]++;
      000524 AA 57            [24] 1917 	mov	r2,_counter
      000526 0A               [12] 1918 	inc	r2
                           00049C  1919 	C$ser.c$356$4$74 ==.
                                   1920 ;	ser.c:356: if(counter[0]>9){
      000527 EA               [12] 1921 	mov	a,r2
      000528 F5 57            [12] 1922 	mov	_counter,a
      00052A 24 F6            [12] 1923 	add	a,#0xff - 0x09
      00052C 50 09            [24] 1924 	jnc	00129$
                           0004A3  1925 	C$ser.c$357$5$75 ==.
                                   1926 ;	ser.c:357: counter[0]=0;
      00052E 75 57 00         [24] 1927 	mov	_counter,#0x00
                           0004A6  1928 	C$ser.c$358$5$75 ==.
                                   1929 ;	ser.c:358: counter[1]++;
      000531 E5 58            [12] 1930 	mov	a,(_counter + 0x0001)
      000533 FA               [12] 1931 	mov	r2,a
      000534 04               [12] 1932 	inc	a
      000535 F5 58            [12] 1933 	mov	(_counter + 0x0001),a
      000537                       1934 00129$:
                           0004AC  1935 	C$ser.c$360$4$74 ==.
                                   1936 ;	ser.c:360: if(counter[1]>9){
      000537 E5 58            [12] 1937 	mov	a,(_counter + 0x0001)
      000539 24 F6            [12] 1938 	add	a,#0xff - 0x09
      00053B 50 09            [24] 1939 	jnc	00131$
                           0004B2  1940 	C$ser.c$361$5$76 ==.
                                   1941 ;	ser.c:361: counter[1]=0;
      00053D 75 58 00         [24] 1942 	mov	(_counter + 0x0001),#0x00
                           0004B5  1943 	C$ser.c$362$5$76 ==.
                                   1944 ;	ser.c:362: counter[2]++;
      000540 E5 59            [12] 1945 	mov	a,(_counter + 0x0002)
      000542 FA               [12] 1946 	mov	r2,a
      000543 04               [12] 1947 	inc	a
      000544 F5 59            [12] 1948 	mov	(_counter + 0x0002),a
      000546                       1949 00131$:
                           0004BB  1950 	C$ser.c$364$4$74 ==.
                                   1951 ;	ser.c:364: if(counter[2]>9){
      000546 E5 59            [12] 1952 	mov	a,(_counter + 0x0002)
      000548 24 F6            [12] 1953 	add	a,#0xff - 0x09
      00054A 50 09            [24] 1954 	jnc	00133$
                           0004C1  1955 	C$ser.c$365$5$77 ==.
                                   1956 ;	ser.c:365: counter[2]=0;
      00054C 75 59 00         [24] 1957 	mov	(_counter + 0x0002),#0x00
                           0004C4  1958 	C$ser.c$366$5$77 ==.
                                   1959 ;	ser.c:366: counter[3]++;
      00054F E5 5A            [12] 1960 	mov	a,(_counter + 0x0003)
      000551 FA               [12] 1961 	mov	r2,a
      000552 04               [12] 1962 	inc	a
      000553 F5 5A            [12] 1963 	mov	(_counter + 0x0003),a
      000555                       1964 00133$:
                           0004CA  1965 	C$ser.c$368$4$74 ==.
                                   1966 ;	ser.c:368: if(counter[3]>9){
      000555 E5 5A            [12] 1967 	mov	a,(_counter + 0x0003)
      000557 24 F6            [12] 1968 	add	a,#0xff - 0x09
      000559 50 09            [24] 1969 	jnc	00135$
                           0004D0  1970 	C$ser.c$369$5$78 ==.
                                   1971 ;	ser.c:369: counter[3]=0;
      00055B 75 5A 00         [24] 1972 	mov	(_counter + 0x0003),#0x00
                           0004D3  1973 	C$ser.c$370$5$78 ==.
                                   1974 ;	ser.c:370: counter[4]++;
      00055E E5 5B            [12] 1975 	mov	a,(_counter + 0x0004)
      000560 FA               [12] 1976 	mov	r2,a
      000561 04               [12] 1977 	inc	a
      000562 F5 5B            [12] 1978 	mov	(_counter + 0x0004),a
      000564                       1979 00135$:
                           0004D9  1980 	C$ser.c$372$4$74 ==.
                                   1981 ;	ser.c:372: if(counter[4]>9){
      000564 E5 5B            [12] 1982 	mov	a,(_counter + 0x0004)
      000566 24 F6            [12] 1983 	add	a,#0xff - 0x09
      000568 50 09            [24] 1984 	jnc	00137$
                           0004DF  1985 	C$ser.c$373$5$79 ==.
                                   1986 ;	ser.c:373: counter[4]=0;
      00056A 75 5B 00         [24] 1987 	mov	(_counter + 0x0004),#0x00
                           0004E2  1988 	C$ser.c$374$5$79 ==.
                                   1989 ;	ser.c:374: counter[5]++;
      00056D E5 5C            [12] 1990 	mov	a,(_counter + 0x0005)
      00056F FA               [12] 1991 	mov	r2,a
      000570 04               [12] 1992 	inc	a
      000571 F5 5C            [12] 1993 	mov	(_counter + 0x0005),a
      000573                       1994 00137$:
                           0004E8  1995 	C$ser.c$376$4$74 ==.
                                   1996 ;	ser.c:376: if(counter[5]>9){
      000573 E5 5C            [12] 1997 	mov	a,(_counter + 0x0005)
      000575 24 F6            [12] 1998 	add	a,#0xff - 0x09
      000577 50 09            [24] 1999 	jnc	00139$
                           0004EE  2000 	C$ser.c$377$5$80 ==.
                                   2001 ;	ser.c:377: counter[5]=0;
      000579 75 5C 00         [24] 2002 	mov	(_counter + 0x0005),#0x00
                           0004F1  2003 	C$ser.c$378$5$80 ==.
                                   2004 ;	ser.c:378: counter[6]++;
      00057C E5 5D            [12] 2005 	mov	a,(_counter + 0x0006)
      00057E FA               [12] 2006 	mov	r2,a
      00057F 04               [12] 2007 	inc	a
      000580 F5 5D            [12] 2008 	mov	(_counter + 0x0006),a
      000582                       2009 00139$:
                           0004F7  2010 	C$ser.c$380$4$74 ==.
                                   2011 ;	ser.c:380: if(counter[6]>9){
      000582 E5 5D            [12] 2012 	mov	a,(_counter + 0x0006)
      000584 24 F6            [12] 2013 	add	a,#0xff - 0x09
      000586 50 09            [24] 2014 	jnc	00141$
                           0004FD  2015 	C$ser.c$381$5$81 ==.
                                   2016 ;	ser.c:381: counter[7]=0;
      000588 75 5E 00         [24] 2017 	mov	(_counter + 0x0007),#0x00
                           000500  2018 	C$ser.c$382$5$81 ==.
                                   2019 ;	ser.c:382: counter[7]++;
      00058B E5 5E            [12] 2020 	mov	a,(_counter + 0x0007)
      00058D FA               [12] 2021 	mov	r2,a
      00058E 04               [12] 2022 	inc	a
      00058F F5 5E            [12] 2023 	mov	(_counter + 0x0007),a
      000591                       2024 00141$:
                           000506  2025 	C$ser.c$384$4$74 ==.
                                   2026 ;	ser.c:384: if(counter[7]>9){
      000591 E5 5E            [12] 2027 	mov	a,(_counter + 0x0007)
      000593 24 F6            [12] 2028 	add	a,#0xff - 0x09
      000595 50 09            [24] 2029 	jnc	00143$
                           00050C  2030 	C$ser.c$385$5$82 ==.
                                   2031 ;	ser.c:385: counter[7]=0;
      000597 75 5E 00         [24] 2032 	mov	(_counter + 0x0007),#0x00
                           00050F  2033 	C$ser.c$386$5$82 ==.
                                   2034 ;	ser.c:386: counter[8]++;
      00059A E5 5F            [12] 2035 	mov	a,(_counter + 0x0008)
      00059C FA               [12] 2036 	mov	r2,a
      00059D 04               [12] 2037 	inc	a
      00059E F5 5F            [12] 2038 	mov	(_counter + 0x0008),a
      0005A0                       2039 00143$:
                           000515  2040 	C$ser.c$388$4$74 ==.
                                   2041 ;	ser.c:388: if(counter[8]>9){
      0005A0 E5 5F            [12] 2042 	mov	a,(_counter + 0x0008)
      0005A2 24 F6            [12] 2043 	add	a,#0xff - 0x09
      0005A4 50 09            [24] 2044 	jnc	00145$
                           00051B  2045 	C$ser.c$389$5$83 ==.
                                   2046 ;	ser.c:389: counter[8]=0;
      0005A6 75 5F 00         [24] 2047 	mov	(_counter + 0x0008),#0x00
                           00051E  2048 	C$ser.c$390$5$83 ==.
                                   2049 ;	ser.c:390: counter[0]++;
      0005A9 E5 57            [12] 2050 	mov	a,_counter
      0005AB FA               [12] 2051 	mov	r2,a
      0005AC 04               [12] 2052 	inc	a
      0005AD F5 57            [12] 2053 	mov	_counter,a
      0005AF                       2054 00145$:
                           000524  2055 	C$ser.c$392$4$74 ==.
                                   2056 ;	ser.c:392: writecounter();
      0005AF C0 07            [24] 2057 	push	ar7
      0005B1 C0 06            [24] 2058 	push	ar6
      0005B3 C0 05            [24] 2059 	push	ar5
      0005B5 C0 04            [24] 2060 	push	ar4
      0005B7 12 02 7E         [24] 2061 	lcall	_writecounter
      0005BA D0 04            [24] 2062 	pop	ar4
      0005BC D0 05            [24] 2063 	pop	ar5
      0005BE D0 06            [24] 2064 	pop	ar6
      0005C0 D0 07            [24] 2065 	pop	ar7
      0005C2 80 3B            [24] 2066 	sjmp	00155$
      0005C4                       2067 00153$:
                           000539  2068 	C$ser.c$396$3$84 ==.
                                   2069 ;	ser.c:396: bouncing_low=5000;
      0005C4 7C 88            [12] 2070 	mov	r4,#0x88
      0005C6 7D 13            [12] 2071 	mov	r5,#0x13
                           00053D  2072 	C$ser.c$397$3$84 ==.
                                   2073 ;	ser.c:397: if(bouncing_high>0){
      0005C8 EE               [12] 2074 	mov	a,r6
      0005C9 4F               [12] 2075 	orl	a,r7
      0005CA 60 07            [24] 2076 	jz	00149$
                           000541  2077 	C$ser.c$398$4$85 ==.
                                   2078 ;	ser.c:398: bouncing_high--;
      0005CC 1E               [12] 2079 	dec	r6
      0005CD BE FF 01         [24] 2080 	cjne	r6,#0xFF,00370$
      0005D0 1F               [12] 2081 	dec	r7
      0005D1                       2082 00370$:
                           000546  2083 	C$ser.c$399$4$85 ==.
                                   2084 ;	ser.c:399: goto lanjut;
      0005D1 80 2C            [24] 2085 	sjmp	00155$
      0005D3                       2086 00149$:
                           000548  2087 	C$ser.c$401$3$84 ==.
                                   2088 ;	ser.c:401: P0_2=1;
      0005D3 D2 82            [12] 2089 	setb	_P0_2
                           00054A  2090 	C$ser.c$402$3$84 ==.
                                   2091 ;	ser.c:402: if(!falling_sensor){
      0005D5 20 06 25         [24] 2092 	jb	_main_falling_sensor_1_68,00151$
                           00054D  2093 	C$ser.c$403$4$86 ==.
                                   2094 ;	ser.c:403: sPrint("*IN1OFF#");
      0005D8 90 09 A9         [24] 2095 	mov	dptr,#___str_2
      0005DB 75 F0 80         [24] 2096 	mov	b,#0x80
      0005DE C0 07            [24] 2097 	push	ar7
      0005E0 C0 06            [24] 2098 	push	ar6
      0005E2 C0 05            [24] 2099 	push	ar5
      0005E4 C0 04            [24] 2100 	push	ar4
      0005E6 12 01 DD         [24] 2101 	lcall	_sPrint
                           00055E  2102 	C$ser.c$404$4$86 ==.
                                   2103 ;	ser.c:404: Print(13);
      0005E9 75 82 0D         [24] 2104 	mov	dpl,#0x0D
      0005EC 12 01 BC         [24] 2105 	lcall	_Print
                           000564  2106 	C$ser.c$405$4$86 ==.
                                   2107 ;	ser.c:405: Print(10);
      0005EF 75 82 0A         [24] 2108 	mov	dpl,#0x0A
      0005F2 12 01 BC         [24] 2109 	lcall	_Print
      0005F5 D0 04            [24] 2110 	pop	ar4
      0005F7 D0 05            [24] 2111 	pop	ar5
      0005F9 D0 06            [24] 2112 	pop	ar6
      0005FB D0 07            [24] 2113 	pop	ar7
      0005FD                       2114 00151$:
                           000572  2115 	C$ser.c$407$3$84 ==.
                                   2116 ;	ser.c:407: falling_sensor=true;
      0005FD D2 06            [12] 2117 	setb	_main_falling_sensor_1_68
                           000574  2118 	C$ser.c$409$2$69 ==.
                                   2119 ;	ser.c:409: lanjut:	
      0005FF                       2120 00155$:
                           000574  2121 	C$ser.c$413$2$69 ==.
                                   2122 ;	ser.c:413: if(complit){
      0005FF E5 56            [12] 2123 	mov	a,_complit
      000601 70 03            [24] 2124 	jnz	00372$
      000603 02 04 C1         [24] 2125 	ljmp	00192$
      000606                       2126 00372$:
                           00057B  2127 	C$ser.c$414$3$87 ==.
                                   2128 ;	ser.c:414: if(compare(1)==true){
      000606 75 82 01         [24] 2129 	mov	dpl,#0x01
      000609 C0 07            [24] 2130 	push	ar7
      00060B C0 06            [24] 2131 	push	ar6
      00060D C0 05            [24] 2132 	push	ar5
      00060F C0 04            [24] 2133 	push	ar4
      000611 12 02 C7         [24] 2134 	lcall	_compare
      000614 AA 82            [24] 2135 	mov	r2,dpl
      000616 D0 04            [24] 2136 	pop	ar4
      000618 D0 05            [24] 2137 	pop	ar5
      00061A D0 06            [24] 2138 	pop	ar6
      00061C D0 07            [24] 2139 	pop	ar7
      00061E BA 01 25         [24] 2140 	cjne	r2,#0x01,00157$
                           000596  2141 	C$ser.c$415$4$88 ==.
                                   2142 ;	ser.c:415: sPrint("*OPEN1OK#");
      000621 90 09 B2         [24] 2143 	mov	dptr,#___str_3
      000624 75 F0 80         [24] 2144 	mov	b,#0x80
      000627 C0 07            [24] 2145 	push	ar7
      000629 C0 06            [24] 2146 	push	ar6
      00062B C0 05            [24] 2147 	push	ar5
      00062D C0 04            [24] 2148 	push	ar4
      00062F 12 01 DD         [24] 2149 	lcall	_sPrint
      000632 D0 04            [24] 2150 	pop	ar4
      000634 D0 05            [24] 2151 	pop	ar5
      000636 D0 06            [24] 2152 	pop	ar6
      000638 D0 07            [24] 2153 	pop	ar7
                           0005AF  2154 	C$ser.c$416$4$88 ==.
                                   2155 ;	ser.c:416: out=1;
      00063A D2 A0            [12] 2156 	setb	_P2_0
                           0005B1  2157 	C$ser.c$417$4$88 ==.
                                   2158 ;	ser.c:417: stat_out=1;
      00063C D2 03            [12] 2159 	setb	_main_stat_out_1_68
                           0005B3  2160 	C$ser.c$418$4$88 ==.
                                   2161 ;	ser.c:418: millis=40000;
      00063E 75 60 40         [24] 2162 	mov	_main_millis_1_68,#0x40
      000641 75 61 9C         [24] 2163 	mov	(_main_millis_1_68 + 1),#0x9C
                           0005B9  2164 	C$ser.c$419$4$88 ==.
                                   2165 ;	ser.c:419: toggle=true;
      000644 D2 05            [12] 2166 	setb	_main_toggle_1_68
      000646                       2167 00157$:
                           0005BB  2168 	C$ser.c$421$3$87 ==.
                                   2169 ;	ser.c:421: if(compare(2)==true){
      000646 75 82 02         [24] 2170 	mov	dpl,#0x02
      000649 C0 07            [24] 2171 	push	ar7
      00064B C0 06            [24] 2172 	push	ar6
      00064D C0 05            [24] 2173 	push	ar5
      00064F C0 04            [24] 2174 	push	ar4
      000651 12 02 C7         [24] 2175 	lcall	_compare
      000654 AA 82            [24] 2176 	mov	r2,dpl
      000656 D0 04            [24] 2177 	pop	ar4
      000658 D0 05            [24] 2178 	pop	ar5
      00065A D0 06            [24] 2179 	pop	ar6
      00065C D0 07            [24] 2180 	pop	ar7
      00065E BA 01 1F         [24] 2181 	cjne	r2,#0x01,00159$
                           0005D6  2182 	C$ser.c$422$4$89 ==.
                                   2183 ;	ser.c:422: out=1;
      000661 D2 A0            [12] 2184 	setb	_P2_0
                           0005D8  2185 	C$ser.c$423$4$89 ==.
                                   2186 ;	ser.c:423: stat_out=1;
      000663 D2 03            [12] 2187 	setb	_main_stat_out_1_68
                           0005DA  2188 	C$ser.c$424$4$89 ==.
                                   2189 ;	ser.c:424: P0_3=0;
      000665 C2 83            [12] 2190 	clr	_P0_3
                           0005DC  2191 	C$ser.c$425$4$89 ==.
                                   2192 ;	ser.c:425: sPrint("*OUT1ONOK#");
      000667 90 09 BC         [24] 2193 	mov	dptr,#___str_4
      00066A 75 F0 80         [24] 2194 	mov	b,#0x80
      00066D C0 07            [24] 2195 	push	ar7
      00066F C0 06            [24] 2196 	push	ar6
      000671 C0 05            [24] 2197 	push	ar5
      000673 C0 04            [24] 2198 	push	ar4
      000675 12 01 DD         [24] 2199 	lcall	_sPrint
      000678 D0 04            [24] 2200 	pop	ar4
      00067A D0 05            [24] 2201 	pop	ar5
      00067C D0 06            [24] 2202 	pop	ar6
      00067E D0 07            [24] 2203 	pop	ar7
      000680                       2204 00159$:
                           0005F5  2205 	C$ser.c$427$3$87 ==.
                                   2206 ;	ser.c:427: if(compare(3)==true){
      000680 75 82 03         [24] 2207 	mov	dpl,#0x03
      000683 C0 07            [24] 2208 	push	ar7
      000685 C0 06            [24] 2209 	push	ar6
      000687 C0 05            [24] 2210 	push	ar5
      000689 C0 04            [24] 2211 	push	ar4
      00068B 12 02 C7         [24] 2212 	lcall	_compare
      00068E AA 82            [24] 2213 	mov	r2,dpl
      000690 D0 04            [24] 2214 	pop	ar4
      000692 D0 05            [24] 2215 	pop	ar5
      000694 D0 06            [24] 2216 	pop	ar6
      000696 D0 07            [24] 2217 	pop	ar7
      000698 BA 01 1F         [24] 2218 	cjne	r2,#0x01,00161$
                           000610  2219 	C$ser.c$428$4$90 ==.
                                   2220 ;	ser.c:428: out=0;
      00069B C2 A0            [12] 2221 	clr	_P2_0
                           000612  2222 	C$ser.c$429$4$90 ==.
                                   2223 ;	ser.c:429: stat_out=0;
      00069D C2 03            [12] 2224 	clr	_main_stat_out_1_68
                           000614  2225 	C$ser.c$430$4$90 ==.
                                   2226 ;	ser.c:430: P0_3=1;
      00069F D2 83            [12] 2227 	setb	_P0_3
                           000616  2228 	C$ser.c$431$4$90 ==.
                                   2229 ;	ser.c:431: sPrint("*OUT1OFFOK#");
      0006A1 90 09 C7         [24] 2230 	mov	dptr,#___str_5
      0006A4 75 F0 80         [24] 2231 	mov	b,#0x80
      0006A7 C0 07            [24] 2232 	push	ar7
      0006A9 C0 06            [24] 2233 	push	ar6
      0006AB C0 05            [24] 2234 	push	ar5
      0006AD C0 04            [24] 2235 	push	ar4
      0006AF 12 01 DD         [24] 2236 	lcall	_sPrint
      0006B2 D0 04            [24] 2237 	pop	ar4
      0006B4 D0 05            [24] 2238 	pop	ar5
      0006B6 D0 06            [24] 2239 	pop	ar6
      0006B8 D0 07            [24] 2240 	pop	ar7
      0006BA                       2241 00161$:
                           00062F  2242 	C$ser.c$433$3$87 ==.
                                   2243 ;	ser.c:433: if(compare(4)==true)sPrint("*PINGOK#");
      0006BA 75 82 04         [24] 2244 	mov	dpl,#0x04
      0006BD C0 07            [24] 2245 	push	ar7
      0006BF C0 06            [24] 2246 	push	ar6
      0006C1 C0 05            [24] 2247 	push	ar5
      0006C3 C0 04            [24] 2248 	push	ar4
      0006C5 12 02 C7         [24] 2249 	lcall	_compare
      0006C8 AA 82            [24] 2250 	mov	r2,dpl
      0006CA D0 04            [24] 2251 	pop	ar4
      0006CC D0 05            [24] 2252 	pop	ar5
      0006CE D0 06            [24] 2253 	pop	ar6
      0006D0 D0 07            [24] 2254 	pop	ar7
      0006D2 BA 01 19         [24] 2255 	cjne	r2,#0x01,00163$
      0006D5 90 09 D3         [24] 2256 	mov	dptr,#___str_6
      0006D8 75 F0 80         [24] 2257 	mov	b,#0x80
      0006DB C0 07            [24] 2258 	push	ar7
      0006DD C0 06            [24] 2259 	push	ar6
      0006DF C0 05            [24] 2260 	push	ar5
      0006E1 C0 04            [24] 2261 	push	ar4
      0006E3 12 01 DD         [24] 2262 	lcall	_sPrint
      0006E6 D0 04            [24] 2263 	pop	ar4
      0006E8 D0 05            [24] 2264 	pop	ar5
      0006EA D0 06            [24] 2265 	pop	ar6
      0006EC D0 07            [24] 2266 	pop	ar7
      0006EE                       2267 00163$:
                           000663  2268 	C$ser.c$434$3$87 ==.
                                   2269 ;	ser.c:434: if(compare(5)==true){
      0006EE 75 82 05         [24] 2270 	mov	dpl,#0x05
      0006F1 C0 07            [24] 2271 	push	ar7
      0006F3 C0 06            [24] 2272 	push	ar6
      0006F5 C0 05            [24] 2273 	push	ar5
      0006F7 C0 04            [24] 2274 	push	ar4
      0006F9 12 02 C7         [24] 2275 	lcall	_compare
      0006FC AA 82            [24] 2276 	mov	r2,dpl
      0006FE D0 04            [24] 2277 	pop	ar4
      000700 D0 05            [24] 2278 	pop	ar5
      000702 D0 06            [24] 2279 	pop	ar6
      000704 D0 07            [24] 2280 	pop	ar7
      000706 BA 01 74         [24] 2281 	cjne	r2,#0x01,00175$
                           00067E  2282 	C$ser.c$435$4$91 ==.
                                   2283 ;	ser.c:435: if(input_a==1){
      000709 30 86 37         [24] 2284 	jnb	_P0_6,00168$
                           000681  2285 	C$ser.c$436$5$92 ==.
                                   2286 ;	ser.c:436: if(stat_out==1)sPrint("*STAT01#");
      00070C 30 03 1B         [24] 2287 	jnb	_main_stat_out_1_68,00165$
      00070F 90 09 DC         [24] 2288 	mov	dptr,#___str_7
      000712 75 F0 80         [24] 2289 	mov	b,#0x80
      000715 C0 07            [24] 2290 	push	ar7
      000717 C0 06            [24] 2291 	push	ar6
      000719 C0 05            [24] 2292 	push	ar5
      00071B C0 04            [24] 2293 	push	ar4
      00071D 12 01 DD         [24] 2294 	lcall	_sPrint
      000720 D0 04            [24] 2295 	pop	ar4
      000722 D0 05            [24] 2296 	pop	ar5
      000724 D0 06            [24] 2297 	pop	ar6
      000726 D0 07            [24] 2298 	pop	ar7
      000728 80 19            [24] 2299 	sjmp	00168$
      00072A                       2300 00165$:
                           00069F  2301 	C$ser.c$437$5$92 ==.
                                   2302 ;	ser.c:437: else sPrint("*STAT00#");
      00072A 90 09 E5         [24] 2303 	mov	dptr,#___str_8
      00072D 75 F0 80         [24] 2304 	mov	b,#0x80
      000730 C0 07            [24] 2305 	push	ar7
      000732 C0 06            [24] 2306 	push	ar6
      000734 C0 05            [24] 2307 	push	ar5
      000736 C0 04            [24] 2308 	push	ar4
      000738 12 01 DD         [24] 2309 	lcall	_sPrint
      00073B D0 04            [24] 2310 	pop	ar4
      00073D D0 05            [24] 2311 	pop	ar5
      00073F D0 06            [24] 2312 	pop	ar6
      000741 D0 07            [24] 2313 	pop	ar7
      000743                       2314 00168$:
                           0006B8  2315 	C$ser.c$439$4$91 ==.
                                   2316 ;	ser.c:439: if(input_a==0){
      000743 20 86 37         [24] 2317 	jb	_P0_6,00175$
                           0006BB  2318 	C$ser.c$440$5$93 ==.
                                   2319 ;	ser.c:440: if(stat_out==1)sPrint("*STAT11#");
      000746 30 03 1B         [24] 2320 	jnb	_main_stat_out_1_68,00170$
      000749 90 09 EE         [24] 2321 	mov	dptr,#___str_9
      00074C 75 F0 80         [24] 2322 	mov	b,#0x80
      00074F C0 07            [24] 2323 	push	ar7
      000751 C0 06            [24] 2324 	push	ar6
      000753 C0 05            [24] 2325 	push	ar5
      000755 C0 04            [24] 2326 	push	ar4
      000757 12 01 DD         [24] 2327 	lcall	_sPrint
      00075A D0 04            [24] 2328 	pop	ar4
      00075C D0 05            [24] 2329 	pop	ar5
      00075E D0 06            [24] 2330 	pop	ar6
      000760 D0 07            [24] 2331 	pop	ar7
      000762 80 19            [24] 2332 	sjmp	00175$
      000764                       2333 00170$:
                           0006D9  2334 	C$ser.c$441$5$93 ==.
                                   2335 ;	ser.c:441: else sPrint("*STAT10#");
      000764 90 09 F7         [24] 2336 	mov	dptr,#___str_10
      000767 75 F0 80         [24] 2337 	mov	b,#0x80
      00076A C0 07            [24] 2338 	push	ar7
      00076C C0 06            [24] 2339 	push	ar6
      00076E C0 05            [24] 2340 	push	ar5
      000770 C0 04            [24] 2341 	push	ar4
      000772 12 01 DD         [24] 2342 	lcall	_sPrint
      000775 D0 04            [24] 2343 	pop	ar4
      000777 D0 05            [24] 2344 	pop	ar5
      000779 D0 06            [24] 2345 	pop	ar6
      00077B D0 07            [24] 2346 	pop	ar7
      00077D                       2347 00175$:
                           0006F2  2348 	C$ser.c$444$3$87 ==.
                                   2349 ;	ser.c:444: if(compare(6)==true){
      00077D 75 82 06         [24] 2350 	mov	dpl,#0x06
      000780 C0 07            [24] 2351 	push	ar7
      000782 C0 06            [24] 2352 	push	ar6
      000784 C0 05            [24] 2353 	push	ar5
      000786 C0 04            [24] 2354 	push	ar4
      000788 12 02 C7         [24] 2355 	lcall	_compare
      00078B AA 82            [24] 2356 	mov	r2,dpl
      00078D D0 04            [24] 2357 	pop	ar4
      00078F D0 05            [24] 2358 	pop	ar5
      000791 D0 06            [24] 2359 	pop	ar6
      000793 D0 07            [24] 2360 	pop	ar7
      000795 BA 01 37         [24] 2361 	cjne	r2,#0x01,00177$
                           00070D  2362 	C$ser.c$445$4$94 ==.
                                   2363 ;	ser.c:445: counter[0]=0;
      000798 75 57 00         [24] 2364 	mov	_counter,#0x00
                           000710  2365 	C$ser.c$446$4$94 ==.
                                   2366 ;	ser.c:446: counter[1]=0;
      00079B 75 58 00         [24] 2367 	mov	(_counter + 0x0001),#0x00
                           000713  2368 	C$ser.c$447$4$94 ==.
                                   2369 ;	ser.c:447: counter[2]=0;
      00079E 75 59 00         [24] 2370 	mov	(_counter + 0x0002),#0x00
                           000716  2371 	C$ser.c$448$4$94 ==.
                                   2372 ;	ser.c:448: counter[3]=0;
      0007A1 75 5A 00         [24] 2373 	mov	(_counter + 0x0003),#0x00
                           000719  2374 	C$ser.c$449$4$94 ==.
                                   2375 ;	ser.c:449: counter[4]=0;
      0007A4 75 5B 00         [24] 2376 	mov	(_counter + 0x0004),#0x00
                           00071C  2377 	C$ser.c$450$4$94 ==.
                                   2378 ;	ser.c:450: counter[5]=0;
      0007A7 75 5C 00         [24] 2379 	mov	(_counter + 0x0005),#0x00
                           00071F  2380 	C$ser.c$451$4$94 ==.
                                   2381 ;	ser.c:451: counter[6]=0;
      0007AA 75 5D 00         [24] 2382 	mov	(_counter + 0x0006),#0x00
                           000722  2383 	C$ser.c$452$4$94 ==.
                                   2384 ;	ser.c:452: counter[7]=0;
      0007AD 75 5E 00         [24] 2385 	mov	(_counter + 0x0007),#0x00
                           000725  2386 	C$ser.c$453$4$94 ==.
                                   2387 ;	ser.c:453: counter[8]=0;
      0007B0 75 5F 00         [24] 2388 	mov	(_counter + 0x0008),#0x00
                           000728  2389 	C$ser.c$454$4$94 ==.
                                   2390 ;	ser.c:454: writecounter();
      0007B3 C0 07            [24] 2391 	push	ar7
      0007B5 C0 06            [24] 2392 	push	ar6
      0007B7 C0 05            [24] 2393 	push	ar5
      0007B9 C0 04            [24] 2394 	push	ar4
      0007BB 12 02 7E         [24] 2395 	lcall	_writecounter
                           000733  2396 	C$ser.c$455$4$94 ==.
                                   2397 ;	ser.c:455: sPrint("*RESETCTROK#");
      0007BE 90 0A 00         [24] 2398 	mov	dptr,#___str_11
      0007C1 75 F0 80         [24] 2399 	mov	b,#0x80
      0007C4 12 01 DD         [24] 2400 	lcall	_sPrint
      0007C7 D0 04            [24] 2401 	pop	ar4
      0007C9 D0 05            [24] 2402 	pop	ar5
      0007CB D0 06            [24] 2403 	pop	ar6
      0007CD D0 07            [24] 2404 	pop	ar7
      0007CF                       2405 00177$:
                           000744  2406 	C$ser.c$457$3$87 ==.
                                   2407 ;	ser.c:457: if(compare(7)==true){
      0007CF 75 82 07         [24] 2408 	mov	dpl,#0x07
      0007D2 C0 07            [24] 2409 	push	ar7
      0007D4 C0 06            [24] 2410 	push	ar6
      0007D6 C0 05            [24] 2411 	push	ar5
      0007D8 C0 04            [24] 2412 	push	ar4
      0007DA 12 02 C7         [24] 2413 	lcall	_compare
      0007DD AA 82            [24] 2414 	mov	r2,dpl
      0007DF D0 04            [24] 2415 	pop	ar4
      0007E1 D0 05            [24] 2416 	pop	ar5
      0007E3 D0 06            [24] 2417 	pop	ar6
      0007E5 D0 07            [24] 2418 	pop	ar7
      0007E7 BA 01 73         [24] 2419 	cjne	r2,#0x01,00179$
                           00075F  2420 	C$ser.c$458$4$95 ==.
                                   2421 ;	ser.c:458: readcounter();
      0007EA C0 07            [24] 2422 	push	ar7
      0007EC C0 06            [24] 2423 	push	ar6
      0007EE C0 05            [24] 2424 	push	ar5
      0007F0 C0 04            [24] 2425 	push	ar4
      0007F2 12 02 08         [24] 2426 	lcall	_readcounter
                           00076A  2427 	C$ser.c$459$4$95 ==.
                                   2428 ;	ser.c:459: sPrint("*READCTRBTOK");
      0007F5 90 0A 0D         [24] 2429 	mov	dptr,#___str_12
      0007F8 75 F0 80         [24] 2430 	mov	b,#0x80
      0007FB 12 01 DD         [24] 2431 	lcall	_sPrint
                           000773  2432 	C$ser.c$460$4$95 ==.
                                   2433 ;	ser.c:460: Print(counter[8]+48);
      0007FE 74 30            [12] 2434 	mov	a,#0x30
      000800 25 5F            [12] 2435 	add	a,(_counter + 0x0008)
      000802 F5 82            [12] 2436 	mov	dpl,a
      000804 12 01 BC         [24] 2437 	lcall	_Print
                           00077C  2438 	C$ser.c$461$4$95 ==.
                                   2439 ;	ser.c:461: Print(counter[7]+48);
      000807 74 30            [12] 2440 	mov	a,#0x30
      000809 25 5E            [12] 2441 	add	a,(_counter + 0x0007)
      00080B F5 82            [12] 2442 	mov	dpl,a
      00080D 12 01 BC         [24] 2443 	lcall	_Print
                           000785  2444 	C$ser.c$462$4$95 ==.
                                   2445 ;	ser.c:462: Print(counter[6]+48);
      000810 74 30            [12] 2446 	mov	a,#0x30
      000812 25 5D            [12] 2447 	add	a,(_counter + 0x0006)
      000814 F5 82            [12] 2448 	mov	dpl,a
      000816 12 01 BC         [24] 2449 	lcall	_Print
                           00078E  2450 	C$ser.c$463$4$95 ==.
                                   2451 ;	ser.c:463: Print(counter[5]+48);
      000819 74 30            [12] 2452 	mov	a,#0x30
      00081B 25 5C            [12] 2453 	add	a,(_counter + 0x0005)
      00081D F5 82            [12] 2454 	mov	dpl,a
      00081F 12 01 BC         [24] 2455 	lcall	_Print
                           000797  2456 	C$ser.c$464$4$95 ==.
                                   2457 ;	ser.c:464: Print(counter[4]+48);
      000822 74 30            [12] 2458 	mov	a,#0x30
      000824 25 5B            [12] 2459 	add	a,(_counter + 0x0004)
      000826 F5 82            [12] 2460 	mov	dpl,a
      000828 12 01 BC         [24] 2461 	lcall	_Print
                           0007A0  2462 	C$ser.c$465$4$95 ==.
                                   2463 ;	ser.c:465: Print(counter[3]+48);
      00082B 74 30            [12] 2464 	mov	a,#0x30
      00082D 25 5A            [12] 2465 	add	a,(_counter + 0x0003)
      00082F F5 82            [12] 2466 	mov	dpl,a
      000831 12 01 BC         [24] 2467 	lcall	_Print
                           0007A9  2468 	C$ser.c$466$4$95 ==.
                                   2469 ;	ser.c:466: Print(counter[2]+48);
      000834 74 30            [12] 2470 	mov	a,#0x30
      000836 25 59            [12] 2471 	add	a,(_counter + 0x0002)
      000838 F5 82            [12] 2472 	mov	dpl,a
      00083A 12 01 BC         [24] 2473 	lcall	_Print
                           0007B2  2474 	C$ser.c$467$4$95 ==.
                                   2475 ;	ser.c:467: Print(counter[1]+48);
      00083D 74 30            [12] 2476 	mov	a,#0x30
      00083F 25 58            [12] 2477 	add	a,(_counter + 0x0001)
      000841 F5 82            [12] 2478 	mov	dpl,a
      000843 12 01 BC         [24] 2479 	lcall	_Print
                           0007BB  2480 	C$ser.c$468$4$95 ==.
                                   2481 ;	ser.c:468: Print(counter[0]+48);
      000846 74 30            [12] 2482 	mov	a,#0x30
      000848 25 57            [12] 2483 	add	a,_counter
      00084A F5 82            [12] 2484 	mov	dpl,a
      00084C 12 01 BC         [24] 2485 	lcall	_Print
                           0007C4  2486 	C$ser.c$469$4$95 ==.
                                   2487 ;	ser.c:469: Print('#');
      00084F 75 82 23         [24] 2488 	mov	dpl,#0x23
      000852 12 01 BC         [24] 2489 	lcall	_Print
      000855 D0 04            [24] 2490 	pop	ar4
      000857 D0 05            [24] 2491 	pop	ar5
      000859 D0 06            [24] 2492 	pop	ar6
      00085B D0 07            [24] 2493 	pop	ar7
      00085D                       2494 00179$:
                           0007D2  2495 	C$ser.c$471$3$87 ==.
                                   2496 ;	ser.c:471: if(compare(8)==true){
      00085D 75 82 08         [24] 2497 	mov	dpl,#0x08
      000860 C0 07            [24] 2498 	push	ar7
      000862 C0 06            [24] 2499 	push	ar6
      000864 C0 05            [24] 2500 	push	ar5
      000866 C0 04            [24] 2501 	push	ar4
      000868 12 02 C7         [24] 2502 	lcall	_compare
      00086B AA 82            [24] 2503 	mov	r2,dpl
      00086D D0 04            [24] 2504 	pop	ar4
      00086F D0 05            [24] 2505 	pop	ar5
      000871 D0 06            [24] 2506 	pop	ar6
      000873 D0 07            [24] 2507 	pop	ar7
      000875 BA 01 02         [24] 2508 	cjne	r2,#0x01,00391$
      000878 80 03            [24] 2509 	sjmp	00392$
      00087A                       2510 00391$:
      00087A 02 09 10         [24] 2511 	ljmp	00188$
      00087D                       2512 00392$:
                           0007F2  2513 	C$ser.c$472$4$96 ==.
                                   2514 ;	ser.c:472: logik=true;
      00087D D2 04            [12] 2515 	setb	_main_logik_1_68
                           0007F4  2516 	C$ser.c$473$4$96 ==.
                                   2517 ;	ser.c:473: for(i=8;i<17;i++){
      00087F 7B 08            [12] 2518 	mov	r3,#0x08
      000881                       2519 00200$:
                           0007F6  2520 	C$ser.c$474$5$97 ==.
                                   2521 ;	ser.c:474: if(bufer[i]<'0'||bufer[i]>'9'){
      000881 EB               [12] 2522 	mov	a,r3
      000882 24 41            [12] 2523 	add	a,#_bufer
      000884 F9               [12] 2524 	mov	r1,a
      000885 87 02            [24] 2525 	mov	ar2,@r1
      000887 BA 30 00         [24] 2526 	cjne	r2,#0x30,00393$
      00088A                       2527 00393$:
      00088A 40 0A            [24] 2528 	jc	00180$
      00088C EB               [12] 2529 	mov	a,r3
      00088D 24 41            [12] 2530 	add	a,#_bufer
      00088F F9               [12] 2531 	mov	r1,a
      000890 E7               [12] 2532 	mov	a,@r1
      000891 FA               [12] 2533 	mov	r2,a
      000892 24 C6            [12] 2534 	add	a,#0xff - 0x39
      000894 50 04            [24] 2535 	jnc	00201$
      000896                       2536 00180$:
                           00080B  2537 	C$ser.c$475$6$98 ==.
                                   2538 ;	ser.c:475: logik=false;
      000896 C2 04            [12] 2539 	clr	_main_logik_1_68
                           00080D  2540 	C$ser.c$476$6$98 ==.
                                   2541 ;	ser.c:476: break;
      000898 80 06            [24] 2542 	sjmp	00183$
      00089A                       2543 00201$:
                           00080F  2544 	C$ser.c$473$4$96 ==.
                                   2545 ;	ser.c:473: for(i=8;i<17;i++){
      00089A 0B               [12] 2546 	inc	r3
      00089B BB 11 00         [24] 2547 	cjne	r3,#0x11,00396$
      00089E                       2548 00396$:
      00089E 40 E1            [24] 2549 	jc	00200$
      0008A0                       2550 00183$:
                           000815  2551 	C$ser.c$479$4$96 ==.
                                   2552 ;	ser.c:479: if(logik==true){
      0008A0 30 04 54         [24] 2553 	jnb	_main_logik_1_68,00185$
                           000818  2554 	C$ser.c$480$5$99 ==.
                                   2555 ;	ser.c:480: counter[0]=bufer[16]-48;
      0008A3 E5 51            [12] 2556 	mov	a,(_bufer + 0x0010)
      0008A5 24 D0            [12] 2557 	add	a,#0xD0
      0008A7 F5 57            [12] 2558 	mov	_counter,a
                           00081E  2559 	C$ser.c$481$5$99 ==.
                                   2560 ;	ser.c:481: counter[1]=bufer[15]-48;
      0008A9 E5 50            [12] 2561 	mov	a,(_bufer + 0x000f)
      0008AB 24 D0            [12] 2562 	add	a,#0xD0
      0008AD F5 58            [12] 2563 	mov	(_counter + 0x0001),a
                           000824  2564 	C$ser.c$482$5$99 ==.
                                   2565 ;	ser.c:482: counter[2]=bufer[14]-48;
      0008AF E5 4F            [12] 2566 	mov	a,(_bufer + 0x000e)
      0008B1 24 D0            [12] 2567 	add	a,#0xD0
      0008B3 F5 59            [12] 2568 	mov	(_counter + 0x0002),a
                           00082A  2569 	C$ser.c$483$5$99 ==.
                                   2570 ;	ser.c:483: counter[3]=bufer[13]-48;
      0008B5 E5 4E            [12] 2571 	mov	a,(_bufer + 0x000d)
      0008B7 24 D0            [12] 2572 	add	a,#0xD0
      0008B9 F5 5A            [12] 2573 	mov	(_counter + 0x0003),a
                           000830  2574 	C$ser.c$484$5$99 ==.
                                   2575 ;	ser.c:484: counter[4]=bufer[12]-48;
      0008BB E5 4D            [12] 2576 	mov	a,(_bufer + 0x000c)
      0008BD 24 D0            [12] 2577 	add	a,#0xD0
      0008BF F5 5B            [12] 2578 	mov	(_counter + 0x0004),a
                           000836  2579 	C$ser.c$485$5$99 ==.
                                   2580 ;	ser.c:485: counter[5]=bufer[11]-48;
      0008C1 E5 4C            [12] 2581 	mov	a,(_bufer + 0x000b)
      0008C3 24 D0            [12] 2582 	add	a,#0xD0
      0008C5 F5 5C            [12] 2583 	mov	(_counter + 0x0005),a
                           00083C  2584 	C$ser.c$486$5$99 ==.
                                   2585 ;	ser.c:486: counter[6]=bufer[10]-48;
      0008C7 E5 4B            [12] 2586 	mov	a,(_bufer + 0x000a)
      0008C9 24 D0            [12] 2587 	add	a,#0xD0
      0008CB F5 5D            [12] 2588 	mov	(_counter + 0x0006),a
                           000842  2589 	C$ser.c$487$5$99 ==.
                                   2590 ;	ser.c:487: counter[7]=bufer[9]-48;
      0008CD E5 4A            [12] 2591 	mov	a,(_bufer + 0x0009)
      0008CF 24 D0            [12] 2592 	add	a,#0xD0
      0008D1 F5 5E            [12] 2593 	mov	(_counter + 0x0007),a
                           000848  2594 	C$ser.c$488$5$99 ==.
                                   2595 ;	ser.c:488: counter[8]=bufer[8]-48;
      0008D3 E5 49            [12] 2596 	mov	a,(_bufer + 0x0008)
      0008D5 24 D0            [12] 2597 	add	a,#0xD0
      0008D7 F5 5F            [12] 2598 	mov	(_counter + 0x0008),a
                           00084E  2599 	C$ser.c$489$5$99 ==.
                                   2600 ;	ser.c:489: writecounter();
      0008D9 C0 07            [24] 2601 	push	ar7
      0008DB C0 06            [24] 2602 	push	ar6
      0008DD C0 05            [24] 2603 	push	ar5
      0008DF C0 04            [24] 2604 	push	ar4
      0008E1 12 02 7E         [24] 2605 	lcall	_writecounter
                           000859  2606 	C$ser.c$490$5$99 ==.
                                   2607 ;	ser.c:490: sPrint("*EDITCTROK#");
      0008E4 90 0A 1A         [24] 2608 	mov	dptr,#___str_13
      0008E7 75 F0 80         [24] 2609 	mov	b,#0x80
      0008EA 12 01 DD         [24] 2610 	lcall	_sPrint
      0008ED D0 04            [24] 2611 	pop	ar4
      0008EF D0 05            [24] 2612 	pop	ar5
      0008F1 D0 06            [24] 2613 	pop	ar6
      0008F3 D0 07            [24] 2614 	pop	ar7
      0008F5 80 19            [24] 2615 	sjmp	00188$
      0008F7                       2616 00185$:
                           00086C  2617 	C$ser.c$492$4$96 ==.
                                   2618 ;	ser.c:492: else sPrint("*EDITCTRERR#");
      0008F7 90 0A 26         [24] 2619 	mov	dptr,#___str_14
      0008FA 75 F0 80         [24] 2620 	mov	b,#0x80
      0008FD C0 07            [24] 2621 	push	ar7
      0008FF C0 06            [24] 2622 	push	ar6
      000901 C0 05            [24] 2623 	push	ar5
      000903 C0 04            [24] 2624 	push	ar4
      000905 12 01 DD         [24] 2625 	lcall	_sPrint
      000908 D0 04            [24] 2626 	pop	ar4
      00090A D0 05            [24] 2627 	pop	ar5
      00090C D0 06            [24] 2628 	pop	ar6
      00090E D0 07            [24] 2629 	pop	ar7
      000910                       2630 00188$:
                           000885  2631 	C$ser.c$494$3$87 ==.
                                   2632 ;	ser.c:494: complit=false;
      000910 75 56 00         [24] 2633 	mov	_complit,#0x00
                           000888  2634 	C$ser.c$495$3$87 ==.
                                   2635 ;	ser.c:495: Print(13);
      000913 75 82 0D         [24] 2636 	mov	dpl,#0x0D
      000916 C0 07            [24] 2637 	push	ar7
      000918 C0 06            [24] 2638 	push	ar6
      00091A C0 05            [24] 2639 	push	ar5
      00091C C0 04            [24] 2640 	push	ar4
      00091E 12 01 BC         [24] 2641 	lcall	_Print
                           000896  2642 	C$ser.c$496$3$87 ==.
                                   2643 ;	ser.c:496: Print(10);
      000921 75 82 0A         [24] 2644 	mov	dpl,#0x0A
      000924 12 01 BC         [24] 2645 	lcall	_Print
      000927 D0 04            [24] 2646 	pop	ar4
      000929 D0 05            [24] 2647 	pop	ar5
      00092B D0 06            [24] 2648 	pop	ar6
      00092D D0 07            [24] 2649 	pop	ar7
      00092F 02 04 C1         [24] 2650 	ljmp	00192$
                           0008A7  2651 	C$ser.c$499$1$68 ==.
                           0008A7  2652 	XG$main$0$0 ==.
      000932 22               [24] 2653 	ret
                                   2654 	.area CSEG    (CODE)
                                   2655 	.area CONST   (CODE)
                           000000  2656 G$open1$0$0 == .
      000953                       2657 _open1:
      000953 2A                    2658 	.db #0x2A	; 42
      000954 4F                    2659 	.db #0x4F	; 79	'O'
      000955 50                    2660 	.db #0x50	; 80	'P'
      000956 45                    2661 	.db #0x45	; 69	'E'
      000957 4E                    2662 	.db #0x4E	; 78	'N'
      000958 31                    2663 	.db #0x31	; 49	'1'
      000959 23                    2664 	.db #0x23	; 35
                           000007  2665 G$out1on$0$0 == .
      00095A                       2666 _out1on:
      00095A 2A                    2667 	.db #0x2A	; 42
      00095B 4F                    2668 	.db #0x4F	; 79	'O'
      00095C 55                    2669 	.db #0x55	; 85	'U'
      00095D 54                    2670 	.db #0x54	; 84	'T'
      00095E 31                    2671 	.db #0x31	; 49	'1'
      00095F 4F                    2672 	.db #0x4F	; 79	'O'
      000960 4E                    2673 	.db #0x4E	; 78	'N'
      000961 23                    2674 	.db #0x23	; 35
                           00000F  2675 G$out1off$0$0 == .
      000962                       2676 _out1off:
      000962 2A                    2677 	.db #0x2A	; 42
      000963 4F                    2678 	.db #0x4F	; 79	'O'
      000964 55                    2679 	.db #0x55	; 85	'U'
      000965 54                    2680 	.db #0x54	; 84	'T'
      000966 31                    2681 	.db #0x31	; 49	'1'
      000967 4F                    2682 	.db #0x4F	; 79	'O'
      000968 46                    2683 	.db #0x46	; 70	'F'
      000969 46                    2684 	.db #0x46	; 70	'F'
      00096A 23                    2685 	.db #0x23	; 35
                           000018  2686 G$ping$0$0 == .
      00096B                       2687 _ping:
      00096B 2A                    2688 	.db #0x2A	; 42
      00096C 50                    2689 	.db #0x50	; 80	'P'
      00096D 49                    2690 	.db #0x49	; 73	'I'
      00096E 4E                    2691 	.db #0x4E	; 78	'N'
      00096F 47                    2692 	.db #0x47	; 71	'G'
      000970 23                    2693 	.db #0x23	; 35
                           00001E  2694 G$stat$0$0 == .
      000971                       2695 _stat:
      000971 2A                    2696 	.db #0x2A	; 42
      000972 53                    2697 	.db #0x53	; 83	'S'
      000973 54                    2698 	.db #0x54	; 84	'T'
      000974 41                    2699 	.db #0x41	; 65	'A'
      000975 54                    2700 	.db #0x54	; 84	'T'
      000976 23                    2701 	.db #0x23	; 35
                           000024  2702 G$resetctr$0$0 == .
      000977                       2703 _resetctr:
      000977 2A                    2704 	.db #0x2A	; 42
      000978 52                    2705 	.db #0x52	; 82	'R'
      000979 45                    2706 	.db #0x45	; 69	'E'
      00097A 53                    2707 	.db #0x53	; 83	'S'
      00097B 45                    2708 	.db #0x45	; 69	'E'
      00097C 54                    2709 	.db #0x54	; 84	'T'
      00097D 43                    2710 	.db #0x43	; 67	'C'
      00097E 54                    2711 	.db #0x54	; 84	'T'
      00097F 52                    2712 	.db #0x52	; 82	'R'
      000980 23                    2713 	.db #0x23	; 35
                           00002E  2714 G$readctr$0$0 == .
      000981                       2715 _readctr:
      000981 2A                    2716 	.db #0x2A	; 42
      000982 52                    2717 	.db #0x52	; 82	'R'
      000983 45                    2718 	.db #0x45	; 69	'E'
      000984 41                    2719 	.db #0x41	; 65	'A'
      000985 44                    2720 	.db #0x44	; 68	'D'
      000986 43                    2721 	.db #0x43	; 67	'C'
      000987 54                    2722 	.db #0x54	; 84	'T'
      000988 52                    2723 	.db #0x52	; 82	'R'
      000989 23                    2724 	.db #0x23	; 35
                           000037  2725 G$editctr$0$0 == .
      00098A                       2726 _editctr:
      00098A 2A                    2727 	.db #0x2A	; 42
      00098B 45                    2728 	.db #0x45	; 69	'E'
      00098C 44                    2729 	.db #0x44	; 68	'D'
      00098D 49                    2730 	.db #0x49	; 73	'I'
      00098E 54                    2731 	.db #0x54	; 84	'T'
      00098F 43                    2732 	.db #0x43	; 67	'C'
      000990 54                    2733 	.db #0x54	; 84	'T'
      000991 52                    2734 	.db #0x52	; 82	'R'
                           00003F  2735 Fser$__str_0$0$0 == .
      000992                       2736 ___str_0:
      000992 2A 50 4F 57 45 52 4F  2737 	.ascii "*POWERON:BTOK#"
             4E 3A 42 54 4F 4B 23
      0009A0 00                    2738 	.db 0x00
                           00004E  2739 Fser$__str_1$0$0 == .
      0009A1                       2740 ___str_1:
      0009A1 2A 49 4E 31 4F 4E 23  2741 	.ascii "*IN1ON#"
      0009A8 00                    2742 	.db 0x00
                           000056  2743 Fser$__str_2$0$0 == .
      0009A9                       2744 ___str_2:
      0009A9 2A 49 4E 31 4F 46 46  2745 	.ascii "*IN1OFF#"
             23
      0009B1 00                    2746 	.db 0x00
                           00005F  2747 Fser$__str_3$0$0 == .
      0009B2                       2748 ___str_3:
      0009B2 2A 4F 50 45 4E 31 4F  2749 	.ascii "*OPEN1OK#"
             4B 23
      0009BB 00                    2750 	.db 0x00
                           000069  2751 Fser$__str_4$0$0 == .
      0009BC                       2752 ___str_4:
      0009BC 2A 4F 55 54 31 4F 4E  2753 	.ascii "*OUT1ONOK#"
             4F 4B 23
      0009C6 00                    2754 	.db 0x00
                           000074  2755 Fser$__str_5$0$0 == .
      0009C7                       2756 ___str_5:
      0009C7 2A 4F 55 54 31 4F 46  2757 	.ascii "*OUT1OFFOK#"
             46 4F 4B 23
      0009D2 00                    2758 	.db 0x00
                           000080  2759 Fser$__str_6$0$0 == .
      0009D3                       2760 ___str_6:
      0009D3 2A 50 49 4E 47 4F 4B  2761 	.ascii "*PINGOK#"
             23
      0009DB 00                    2762 	.db 0x00
                           000089  2763 Fser$__str_7$0$0 == .
      0009DC                       2764 ___str_7:
      0009DC 2A 53 54 41 54 30 31  2765 	.ascii "*STAT01#"
             23
      0009E4 00                    2766 	.db 0x00
                           000092  2767 Fser$__str_8$0$0 == .
      0009E5                       2768 ___str_8:
      0009E5 2A 53 54 41 54 30 30  2769 	.ascii "*STAT00#"
             23
      0009ED 00                    2770 	.db 0x00
                           00009B  2771 Fser$__str_9$0$0 == .
      0009EE                       2772 ___str_9:
      0009EE 2A 53 54 41 54 31 31  2773 	.ascii "*STAT11#"
             23
      0009F6 00                    2774 	.db 0x00
                           0000A4  2775 Fser$__str_10$0$0 == .
      0009F7                       2776 ___str_10:
      0009F7 2A 53 54 41 54 31 30  2777 	.ascii "*STAT10#"
             23
      0009FF 00                    2778 	.db 0x00
                           0000AD  2779 Fser$__str_11$0$0 == .
      000A00                       2780 ___str_11:
      000A00 2A 52 45 53 45 54 43  2781 	.ascii "*RESETCTROK#"
             54 52 4F 4B 23
      000A0C 00                    2782 	.db 0x00
                           0000BA  2783 Fser$__str_12$0$0 == .
      000A0D                       2784 ___str_12:
      000A0D 2A 52 45 41 44 43 54  2785 	.ascii "*READCTRBTOK"
             52 42 54 4F 4B
      000A19 00                    2786 	.db 0x00
                           0000C7  2787 Fser$__str_13$0$0 == .
      000A1A                       2788 ___str_13:
      000A1A 2A 45 44 49 54 43 54  2789 	.ascii "*EDITCTROK#"
             52 4F 4B 23
      000A25 00                    2790 	.db 0x00
                           0000D3  2791 Fser$__str_14$0$0 == .
      000A26                       2792 ___str_14:
      000A26 2A 45 44 49 54 43 54  2793 	.ascii "*EDITCTRERR#"
             52 45 52 52 23
      000A32 00                    2794 	.db 0x00
                                   2795 	.area XINIT   (CODE)
                                   2796 	.area CABS    (ABS,CODE)
