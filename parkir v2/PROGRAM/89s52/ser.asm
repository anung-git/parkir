;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0 #8981 (Apr  5 2014) (MINGW32)
; This file was generated Sun May 20 17:05:24 2018
;--------------------------------------------------------
	.module ser
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _editctr
	.globl _readctr
	.globl _resetctr
	.globl _stat
	.globl _ping
	.globl _out1off
	.globl _out1on
	.globl _open1
	.globl _main
	.globl _compare
	.globl _writecounter
	.globl _readcounter
	.globl _sPrint
	.globl _Print
	.globl _serial_interrupt_handler
	.globl _serial_init
	.globl _I2C_nack
	.globl _I2C_ack
	.globl _I2C_read
	.globl _I2C_write
	.globl _I2C_stop
	.globl _I2C_start
	.globl _I2C_clock
	.globl _I2C_delay
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _tx_serial_buffer_empty
	.globl _work_flag_buffer_transfered
	.globl _counter
	.globl _complit
	.globl _count
	.globl _bufer
	.globl _stx_buffer
	.globl _stx_index_out
	.globl _stx_index_in
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$T2CON$0$0 == 0x00c8
_T2CON	=	0x00c8
G$RCAP2L$0$0 == 0x00ca
_RCAP2L	=	0x00ca
G$RCAP2H$0$0 == 0x00cb
_RCAP2H	=	0x00cb
G$TL2$0$0 == 0x00cc
_TL2	=	0x00cc
G$TH2$0$0 == 0x00cd
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$T2CON_0$0$0 == 0x00c8
_T2CON_0	=	0x00c8
G$T2CON_1$0$0 == 0x00c9
_T2CON_1	=	0x00c9
G$T2CON_2$0$0 == 0x00ca
_T2CON_2	=	0x00ca
G$T2CON_3$0$0 == 0x00cb
_T2CON_3	=	0x00cb
G$T2CON_4$0$0 == 0x00cc
_T2CON_4	=	0x00cc
G$T2CON_5$0$0 == 0x00cd
_T2CON_5	=	0x00cd
G$T2CON_6$0$0 == 0x00ce
_T2CON_6	=	0x00ce
G$T2CON_7$0$0 == 0x00cf
_T2CON_7	=	0x00cf
G$CP_RL2$0$0 == 0x00c8
_CP_RL2	=	0x00c8
G$C_T2$0$0 == 0x00c9
_C_T2	=	0x00c9
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$EXEN2$0$0 == 0x00cb
_EXEN2	=	0x00cb
G$TCLK$0$0 == 0x00cc
_TCLK	=	0x00cc
G$RCLK$0$0 == 0x00cd
_RCLK	=	0x00cd
G$EXF2$0$0 == 0x00ce
_EXF2	=	0x00ce
G$TF2$0$0 == 0x00cf
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$stx_index_in$0$0==.
_stx_index_in::
	.ds 1
G$stx_index_out$0$0==.
_stx_index_out::
	.ds 1
G$stx_buffer$0$0==.
_stx_buffer::
	.ds 30
G$bufer$0$0==.
_bufer::
	.ds 20
G$count$0$0==.
_count::
	.ds 1
G$complit$0$0==.
_complit::
	.ds 1
G$counter$0$0==.
_counter::
	.ds 9
Lser.main$millis$1$68==.
_main_millis_1_68:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
G$work_flag_buffer_transfered$0$0==.
_work_flag_buffer_transfered::
	.ds 1
G$tx_serial_buffer_empty$0$0==.
_tx_serial_buffer_empty::
	.ds 1
Lser.I2C_read$rd_bit$1$13==.
_I2C_read_rd_bit_1_13:
	.ds 1
Lser.main$stat_out$1$68==.
_main_stat_out_1_68:
	.ds 1
Lser.main$logik$1$68==.
_main_logik_1_68:
	.ds 1
Lser.main$toggle$1$68==.
_main_toggle_1_68:
	.ds 1
Lser.main$falling_sensor$1$68==.
_main_falling_sensor_1_68:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_serial_interrupt_handler
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	C$ser.c$16$1$68 ==.
;	ser.c:16: volatile unsigned char  count=0;
	mov	_count,#0x00
	C$ser.c$17$1$68 ==.
;	ser.c:17: volatile unsigned char  complit=0;
	mov	_complit,#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_delay'
;------------------------------------------------------------
;t                         Allocated to registers r7 
;------------------------------------------------------------
	G$I2C_delay$0$0 ==.
	C$ser.c$28$0$0 ==.
;	ser.c:28: void I2C_delay(void){
;	-----------------------------------------
;	 function I2C_delay
;	-----------------------------------------
_I2C_delay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$ser.c$30$1$2 ==.
;	ser.c:30: for(t=0;t<I2C_DELAY;t++);
	mov	r7,#0x0F
00104$:
	mov	ar6,r7
	mov	a,r6
	dec	a
	mov	r7,a
	jnz	00104$
	C$ser.c$31$1$2 ==.
	XG$I2C_delay$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_clock'
;------------------------------------------------------------
	G$I2C_clock$0$0 ==.
	C$ser.c$32$1$2 ==.
;	ser.c:32: void I2C_clock(void){
;	-----------------------------------------
;	 function I2C_clock
;	-----------------------------------------
_I2C_clock:
	C$ser.c$33$1$4 ==.
;	ser.c:33: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$34$1$4 ==.
;	ser.c:34: SCL = 1;			/* Start clock */
	setb	_P3_3
	C$ser.c$35$1$4 ==.
;	ser.c:35: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$36$1$4 ==.
;	ser.c:36: SCL = 0;			/* Clear SCL */
	clr	_P3_3
	C$ser.c$37$1$4 ==.
	XG$I2C_clock$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_start'
;------------------------------------------------------------
	G$I2C_start$0$0 ==.
	C$ser.c$38$1$4 ==.
;	ser.c:38: void I2C_start(void){
;	-----------------------------------------
;	 function I2C_start
;	-----------------------------------------
_I2C_start:
	C$ser.c$39$1$6 ==.
;	ser.c:39: if(SCL) SCL = 0;			/* Clear SCL */
	jbc	_P3_3,00108$
	sjmp	00102$
00108$:
00102$:
	C$ser.c$40$1$6 ==.
;	ser.c:40: SDA = 1;        		/* Set SDA */
	setb	_P3_2
	C$ser.c$41$1$6 ==.
;	ser.c:41: SCL = 1;			/* Set SCL */
	setb	_P3_3
	C$ser.c$42$1$6 ==.
;	ser.c:42: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$43$1$6 ==.
;	ser.c:43: SDA = 0;        		/* Clear SDA */
	clr	_P3_2
	C$ser.c$44$1$6 ==.
;	ser.c:44: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$45$1$6 ==.
;	ser.c:45: SCL = 0;        		/* Clear SCL */
	clr	_P3_3
	C$ser.c$46$1$6 ==.
	XG$I2C_start$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_stop'
;------------------------------------------------------------
	G$I2C_stop$0$0 ==.
	C$ser.c$47$1$6 ==.
;	ser.c:47: void I2C_stop(void){
;	-----------------------------------------
;	 function I2C_stop
;	-----------------------------------------
_I2C_stop:
	C$ser.c$48$1$8 ==.
;	ser.c:48: if(SCL)	
	C$ser.c$49$1$8 ==.
;	ser.c:49: SCL = 0;			/* Clear SCL */
	jbc	_P3_3,00108$
	sjmp	00102$
00108$:
00102$:
	C$ser.c$50$1$8 ==.
;	ser.c:50: SDA = 0;			/* Clear SDA */
	clr	_P3_2
	C$ser.c$51$1$8 ==.
;	ser.c:51: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$52$1$8 ==.
;	ser.c:52: SCL = 1;			/* Set SCL */
	setb	_P3_3
	C$ser.c$53$1$8 ==.
;	ser.c:53: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$54$1$8 ==.
;	ser.c:54: SDA = 1;			/* Set SDA */
	setb	_P3_2
	C$ser.c$55$1$8 ==.
	XG$I2C_stop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_write'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
	G$I2C_write$0$0 ==.
	C$ser.c$56$1$8 ==.
;	ser.c:56: void I2C_write(unsigned char dat){
;	-----------------------------------------
;	 function I2C_write
;	-----------------------------------------
_I2C_write:
	mov	r7,dpl
	C$ser.c$59$1$10 ==.
;	ser.c:59: for(i=0;i<8;i++)				/* For loop 8 time(send data 1 byte)*/
	mov	r6,#0x00
00102$:
	C$ser.c$61$2$11 ==.
;	ser.c:61: data_bit = dat & 0x80;			/* Filter MSB bit keep to data_bit */
	mov	a,r7
	rlc	a
	mov	_P3_2,c
	C$ser.c$63$2$11 ==.
;	ser.c:63: I2C_clock();      			/* Call for send data to i2c bus */
	push	ar7
	push	ar6
	lcall	_I2C_clock
	pop	ar6
	pop	ar7
	C$ser.c$64$2$11 ==.
;	ser.c:64: dat = dat<<1;
	mov	a,r7
	add	a,r7
	mov	r7,a
	C$ser.c$59$1$10 ==.
;	ser.c:59: for(i=0;i<8;i++)				/* For loop 8 time(send data 1 byte)*/
	inc	r6
	cjne	r6,#0x08,00112$
00112$:
	jc	00102$
	C$ser.c$66$1$10 ==.
;	ser.c:66: SDA = 1;			/* Set SDA */
	setb	_P3_2
	C$ser.c$67$1$10 ==.
;	ser.c:67: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$68$1$10 ==.
;	ser.c:68: SCL = 1;			/* Set SCL */
	setb	_P3_3
	C$ser.c$69$1$10 ==.
;	ser.c:69: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$70$1$10 ==.
;	ser.c:70: data_bit = SDA;   		/* Check acknowledge */
	mov	c,_P3_2
	C$ser.c$71$1$10 ==.
;	ser.c:71: SCL = 0;			/* Clear SCL */
	clr	_P3_3
	C$ser.c$72$1$10 ==.
;	ser.c:72: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$73$1$10 ==.
	XG$I2C_write$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_read'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;dat                       Allocated to registers r7 
;------------------------------------------------------------
	G$I2C_read$0$0 ==.
	C$ser.c$74$1$10 ==.
;	ser.c:74: unsigned char I2C_read(void){
;	-----------------------------------------
;	 function I2C_read
;	-----------------------------------------
_I2C_read:
	C$ser.c$77$1$13 ==.
;	ser.c:77: dat = 0x00;
	mov	r7,#0x00
	C$ser.c$78$1$13 ==.
;	ser.c:78: for(i=0;i<8;i++)			/* For loop read data 1 byte */
	mov	r6,#0x00
00102$:
	C$ser.c$80$2$14 ==.
;	ser.c:80: I2C_delay();
	push	ar7
	push	ar6
	lcall	_I2C_delay
	C$ser.c$81$2$14 ==.
;	ser.c:81: SCL = 1;			/* Set SCL */
	setb	_P3_3
	C$ser.c$82$2$14 ==.
;	ser.c:82: I2C_delay();
	lcall	_I2C_delay
	pop	ar6
	pop	ar7
	C$ser.c$83$2$14 ==.
;	ser.c:83: rd_bit = SDA;			/* Keep for check acknowledge	*/
	mov	c,_P3_2
	mov	_I2C_read_rd_bit_1_13,c
	C$ser.c$84$2$14 ==.
;	ser.c:84: dat = dat<<1;
	mov	a,r7
	add	a,r7
	C$ser.c$85$2$14 ==.
;	ser.c:85: dat = dat | rd_bit;		/* Keep bit data in dat */
	mov	r5,a
	mov	c,_I2C_read_rd_bit_1_13
	clr	a
	rlc	a
	mov	r4,a
	orl	a,r5
	mov	r7,a
	C$ser.c$86$2$14 ==.
;	ser.c:86: SCL = 0;			/* Clear SCL */
	clr	_P3_3
	C$ser.c$78$1$13 ==.
;	ser.c:78: for(i=0;i<8;i++)			/* For loop read data 1 byte */
	inc	r6
	cjne	r6,#0x08,00112$
00112$:
	jc	00102$
	C$ser.c$88$1$13 ==.
;	ser.c:88: return dat;
	mov	dpl,r7
	C$ser.c$89$1$13 ==.
	XG$I2C_read$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_ack'
;------------------------------------------------------------
	G$I2C_ack$0$0 ==.
	C$ser.c$90$1$13 ==.
;	ser.c:90: void I2C_ack()
;	-----------------------------------------
;	 function I2C_ack
;	-----------------------------------------
_I2C_ack:
	C$ser.c$92$1$15 ==.
;	ser.c:92: SDA = 0;		/* Clear SDA */
	clr	_P3_2
	C$ser.c$93$1$15 ==.
;	ser.c:93: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$94$1$15 ==.
;	ser.c:94: I2C_clock();		/* Call for send data to i2c bus */
	lcall	_I2C_clock
	C$ser.c$95$1$15 ==.
;	ser.c:95: SDA = 1;		/* Set SDA */
	setb	_P3_2
	C$ser.c$96$1$15 ==.
	XG$I2C_ack$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_nack'
;------------------------------------------------------------
	G$I2C_nack$0$0 ==.
	C$ser.c$97$1$15 ==.
;	ser.c:97: void I2C_nack()
;	-----------------------------------------
;	 function I2C_nack
;	-----------------------------------------
_I2C_nack:
	C$ser.c$99$1$16 ==.
;	ser.c:99: SDA = 1;		/* Set SDA */
	setb	_P3_2
	C$ser.c$100$1$16 ==.
;	ser.c:100: I2C_delay();
	lcall	_I2C_delay
	C$ser.c$101$1$16 ==.
;	ser.c:101: I2C_clock();		/* Call for send data to i2c bus */
	lcall	_I2C_clock
	C$ser.c$102$1$16 ==.
;	ser.c:102: SCL = 1;		/* Set SCL */
	setb	_P3_3
	C$ser.c$103$1$16 ==.
	XG$I2C_nack$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_init'
;------------------------------------------------------------
	G$serial_init$0$0 ==.
	C$ser.c$105$1$16 ==.
;	ser.c:105: void serial_init(void){
;	-----------------------------------------
;	 function serial_init
;	-----------------------------------------
_serial_init:
	C$ser.c$106$1$18 ==.
;	ser.c:106: TMOD=0X20;
	mov	_TMOD,#0x20
	C$ser.c$107$1$18 ==.
;	ser.c:107: PCON=0;
	mov	_PCON,#0x00
	C$ser.c$108$1$18 ==.
;	ser.c:108: SM0=0;
	clr	_SM0
	C$ser.c$109$1$18 ==.
;	ser.c:109: SM1=1;
	setb	_SM1
	C$ser.c$110$1$18 ==.
;	ser.c:110: TR1=1;
	setb	_TR1
	C$ser.c$111$1$18 ==.
;	ser.c:111: TH1=0XFD;
	mov	_TH1,#0xFD
	C$ser.c$112$1$18 ==.
;	ser.c:112: TL1=0XFD;
	mov	_TL1,#0xFD
	C$ser.c$113$1$18 ==.
;	ser.c:113: REN=1;
	setb	_REN
	C$ser.c$114$1$18 ==.
;	ser.c:114: RI = 0;
	clr	_RI
	C$ser.c$115$1$18 ==.
;	ser.c:115: TI = 0;
	clr	_TI
	C$ser.c$116$1$18 ==.
;	ser.c:116: stx_index_in = stx_index_out = 0;
	mov	_stx_index_out,#0x00
	mov	_stx_index_in,#0x00
	C$ser.c$117$1$18 ==.
;	ser.c:117: tx_serial_buffer_empty = 1;
	setb	_tx_serial_buffer_empty
	C$ser.c$118$1$18 ==.
;	ser.c:118: work_flag_buffer_transfered = 0;
	clr	_work_flag_buffer_transfered
	C$ser.c$119$1$18 ==.
;	ser.c:119: ES=1;
	setb	_ES
	C$ser.c$120$1$18 ==.
;	ser.c:120: EA=1;
	setb	_EA
	C$ser.c$121$1$18 ==.
	XG$serial_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_interrupt_handler'
;------------------------------------------------------------
;ser                       Allocated to registers r7 
;------------------------------------------------------------
	G$serial_interrupt_handler$0$0 ==.
	C$ser.c$122$1$18 ==.
;	ser.c:122: void serial_interrupt_handler(void) __interrupt 4 __using 2{
;	-----------------------------------------
;	 function serial_interrupt_handler
;	-----------------------------------------
_serial_interrupt_handler:
	ar7 = 0x17
	ar6 = 0x16
	ar5 = 0x15
	ar4 = 0x14
	ar3 = 0x13
	ar2 = 0x12
	ar1 = 0x11
	ar0 = 0x10
	push	acc
	push	psw
	mov	psw,#0x10
	C$ser.c$124$1$20 ==.
;	ser.c:124: ES=0;
	clr	_ES
	C$ser.c$125$1$20 ==.
;	ser.c:125: if(RI){
	C$ser.c$126$2$21 ==.
;	ser.c:126: RI=0;
	jbc	_RI,00139$
	sjmp	00108$
00139$:
	C$ser.c$127$2$21 ==.
;	ser.c:127: ser=SBUF;
	mov	r7,_SBUF
	C$ser.c$128$2$21 ==.
;	ser.c:128: if(ser=='*')count=0;
	cjne	r7,#0x2A,00102$
	mov	_count,#0x00
00102$:
	C$ser.c$129$2$21 ==.
;	ser.c:129: if(ser=='#')complit=1;
	cjne	r7,#0x23,00104$
	mov	_complit,#0x01
00104$:
	C$ser.c$130$2$21 ==.
;	ser.c:130: bufer[count]=ser;
	mov	a,_count
	add	a,#_bufer
	mov	r0,a
	mov	@r0,ar7
	C$ser.c$131$2$21 ==.
;	ser.c:131: count++;
	inc	_count
	C$ser.c$132$2$21 ==.
;	ser.c:132: if(count>18)count=0;
	mov	a,_count
	add	a,#0xff - 0x12
	jnc	00108$
	mov	_count,#0x00
00108$:
	C$ser.c$134$1$20 ==.
;	ser.c:134: if(TI){
	C$ser.c$135$2$22 ==.
;	ser.c:135: TI=0;
	jbc	_TI,00145$
	sjmp	00115$
00145$:
	C$ser.c$136$2$22 ==.
;	ser.c:136: if(stx_index_out==stx_index_in){
	mov	a,_stx_index_in
	cjne	a,_stx_index_out,00112$
	C$ser.c$137$3$23 ==.
;	ser.c:137: tx_serial_buffer_empty=1;
	setb	_tx_serial_buffer_empty
	C$ser.c$138$3$23 ==.
;	ser.c:138: work_flag_buffer_transfered=1;
	setb	_work_flag_buffer_transfered
	C$ser.c$139$3$23 ==.
;	ser.c:139: stx_index_out=stx_index_in=0;
	mov	_stx_index_in,#0x00
	mov	_stx_index_out,#0x00
	sjmp	00115$
00112$:
	C$ser.c$142$3$24 ==.
;	ser.c:142: SBUF=stx_buffer[stx_index_out++];
	mov	r7,_stx_index_out
	inc	_stx_index_out
	mov	a,r7
	add	a,#_stx_buffer
	mov	r1,a
	mov	_SBUF,@r1
	C$ser.c$143$3$24 ==.
;	ser.c:143: if(stx_index_out>28)stx_index_out=0;
	mov	a,_stx_index_out
	add	a,#0xff - 0x1C
	jnc	00115$
	mov	_stx_index_out,#0x00
00115$:
	C$ser.c$146$1$20 ==.
;	ser.c:146: ES=1;
	setb	_ES
	pop	psw
	pop	acc
	C$ser.c$147$1$20 ==.
	XG$serial_interrupt_handler$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Print'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
	G$Print$0$0 ==.
	C$ser.c$148$1$20 ==.
;	ser.c:148: void Print(unsigned char c){
;	-----------------------------------------
;	 function Print
;	-----------------------------------------
_Print:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
	C$ser.c$149$1$26 ==.
;	ser.c:149: stx_buffer[stx_index_in++]=c;
	mov	r6,_stx_index_in
	inc	_stx_index_in
	mov	a,r6
	add	a,#_stx_buffer
	mov	r0,a
	mov	@r0,ar7
	C$ser.c$150$1$26 ==.
;	ser.c:150: if(stx_index_in>28)stx_index_in=0;
	mov	a,_stx_index_in
	add	a,#0xff - 0x1C
	jnc	00102$
	mov	_stx_index_in,#0x00
00102$:
	C$ser.c$151$1$26 ==.
;	ser.c:151: ES=0;
	clr	_ES
	C$ser.c$152$1$26 ==.
;	ser.c:152: if(tx_serial_buffer_empty){
	C$ser.c$153$2$27 ==.
;	ser.c:153: tx_serial_buffer_empty=0;
	jbc	_tx_serial_buffer_empty,00114$
	sjmp	00104$
00114$:
	C$ser.c$154$2$27 ==.
;	ser.c:154: TI=1;
	setb	_TI
00104$:
	C$ser.c$156$1$26 ==.
;	ser.c:156: ES=1;
	setb	_ES
	C$ser.c$157$1$26 ==.
	XG$Print$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sPrint'
;------------------------------------------------------------
;s                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$sPrint$0$0 ==.
	C$ser.c$158$1$26 ==.
;	ser.c:158: void sPrint(unsigned char*s){
;	-----------------------------------------
;	 function sPrint
;	-----------------------------------------
_sPrint:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$ser.c$159$1$29 ==.
;	ser.c:159: while (*s)Print(*s++);
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00113$
	inc	r6
00113$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_Print
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
	C$ser.c$160$1$29 ==.
	XG$sPrint$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'readcounter'
;------------------------------------------------------------
	G$readcounter$0$0 ==.
	C$ser.c$164$1$29 ==.
;	ser.c:164: void readcounter(void){
;	-----------------------------------------
;	 function readcounter
;	-----------------------------------------
_readcounter:
	C$ser.c$165$1$31 ==.
;	ser.c:165: I2C_start();
	lcall	_I2C_start
	C$ser.c$166$1$31 ==.
;	ser.c:166: I2C_write(DS1307_ID);
	mov	dpl,#0xD0
	lcall	_I2C_write
	C$ser.c$167$1$31 ==.
;	ser.c:167: I2C_write(10);
	mov	dpl,#0x0A
	lcall	_I2C_write
	C$ser.c$168$1$31 ==.
;	ser.c:168: I2C_start();
	lcall	_I2C_start
	C$ser.c$169$1$31 ==.
;	ser.c:169: I2C_write(DS1307_ID+1);
	mov	dpl,#0xD1
	lcall	_I2C_write
	C$ser.c$170$1$31 ==.
;	ser.c:170: counter[0] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	_counter,a
	C$ser.c$171$1$31 ==.
;	ser.c:171: I2C_ack();
	lcall	_I2C_ack
	C$ser.c$172$1$31 ==.
;	ser.c:172: counter[1] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	(_counter + 0x0001),a
	C$ser.c$173$1$31 ==.
;	ser.c:173: I2C_ack();
	lcall	_I2C_ack
	C$ser.c$174$1$31 ==.
;	ser.c:174: counter[2] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	(_counter + 0x0002),a
	C$ser.c$175$1$31 ==.
;	ser.c:175: I2C_ack();
	lcall	_I2C_ack
	C$ser.c$176$1$31 ==.
;	ser.c:176: counter[3] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	(_counter + 0x0003),a
	C$ser.c$177$1$31 ==.
;	ser.c:177: I2C_ack();
	lcall	_I2C_ack
	C$ser.c$178$1$31 ==.
;	ser.c:178: counter[4] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	(_counter + 0x0004),a
	C$ser.c$179$1$31 ==.
;	ser.c:179: I2C_ack();
	lcall	_I2C_ack
	C$ser.c$180$1$31 ==.
;	ser.c:180: counter[5] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	(_counter + 0x0005),a
	C$ser.c$181$1$31 ==.
;	ser.c:181: I2C_ack();
	lcall	_I2C_ack
	C$ser.c$182$1$31 ==.
;	ser.c:182: counter[6] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	(_counter + 0x0006),a
	C$ser.c$183$1$31 ==.
;	ser.c:183: I2C_ack();
	lcall	_I2C_ack
	C$ser.c$184$1$31 ==.
;	ser.c:184: counter[7] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	(_counter + 0x0007),a
	C$ser.c$185$1$31 ==.
;	ser.c:185: I2C_ack();
	lcall	_I2C_ack
	C$ser.c$186$1$31 ==.
;	ser.c:186: counter[8] = I2C_read();
	lcall	_I2C_read
	mov	a,dpl
	mov	(_counter + 0x0008),a
	C$ser.c$187$1$31 ==.
;	ser.c:187: I2C_nack();
	lcall	_I2C_nack
	C$ser.c$188$1$31 ==.
;	ser.c:188: I2C_stop();
	lcall	_I2C_stop
	C$ser.c$189$1$31 ==.
	XG$readcounter$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'writecounter'
;------------------------------------------------------------
	G$writecounter$0$0 ==.
	C$ser.c$193$1$31 ==.
;	ser.c:193: void writecounter(void){
;	-----------------------------------------
;	 function writecounter
;	-----------------------------------------
_writecounter:
	C$ser.c$194$1$33 ==.
;	ser.c:194: I2C_start();
	lcall	_I2C_start
	C$ser.c$195$1$33 ==.
;	ser.c:195: I2C_write(DS1307_ID);
	mov	dpl,#0xD0
	lcall	_I2C_write
	C$ser.c$196$1$33 ==.
;	ser.c:196: I2C_write(10);
	mov	dpl,#0x0A
	lcall	_I2C_write
	C$ser.c$197$1$33 ==.
;	ser.c:197: I2C_write(counter[0]);
	mov	dpl,_counter
	lcall	_I2C_write
	C$ser.c$198$1$33 ==.
;	ser.c:198: I2C_write(counter[1]);
	mov	dpl,(_counter + 0x0001)
	lcall	_I2C_write
	C$ser.c$199$1$33 ==.
;	ser.c:199: I2C_write(counter[2]);
	mov	dpl,(_counter + 0x0002)
	lcall	_I2C_write
	C$ser.c$200$1$33 ==.
;	ser.c:200: I2C_write(counter[3]);
	mov	dpl,(_counter + 0x0003)
	lcall	_I2C_write
	C$ser.c$201$1$33 ==.
;	ser.c:201: I2C_write(counter[4]);
	mov	dpl,(_counter + 0x0004)
	lcall	_I2C_write
	C$ser.c$202$1$33 ==.
;	ser.c:202: I2C_write(counter[5]);
	mov	dpl,(_counter + 0x0005)
	lcall	_I2C_write
	C$ser.c$203$1$33 ==.
;	ser.c:203: I2C_write(counter[6]);
	mov	dpl,(_counter + 0x0006)
	lcall	_I2C_write
	C$ser.c$204$1$33 ==.
;	ser.c:204: I2C_write(counter[7]);
	mov	dpl,(_counter + 0x0007)
	lcall	_I2C_write
	C$ser.c$205$1$33 ==.
;	ser.c:205: I2C_write(counter[8]);
	mov	dpl,(_counter + 0x0008)
	lcall	_I2C_write
	C$ser.c$206$1$33 ==.
;	ser.c:206: I2C_stop();
	lcall	_I2C_stop
	C$ser.c$208$1$33 ==.
	XG$writecounter$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'compare'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;logic                     Allocated to registers r6 
;i                         Allocated to registers r5 
;------------------------------------------------------------
	G$compare$0$0 ==.
	C$ser.c$212$1$33 ==.
;	ser.c:212: unsigned char compare(unsigned char cmd){
;	-----------------------------------------
;	 function compare
;	-----------------------------------------
_compare:
	mov	r7,dpl
	C$ser.c$213$1$33 ==.
;	ser.c:213: unsigned char logic=false;
	mov	r6,#0x00
	C$ser.c$215$1$35 ==.
;	ser.c:215: if(cmd==1){
	cjne	r7,#0x01,00108$
	C$ser.c$216$2$36 ==.
;	ser.c:216: for(i=0;i<20;i++){
	mov	r5,#0x00
00166$:
	C$ser.c$217$3$37 ==.
;	ser.c:217: if(bufer[i]==open1[i]){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	mov	dptr,#_open1
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00108$
	C$ser.c$218$4$38 ==.
;	ser.c:218: if(bufer[i]=='#'){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x23,00167$
	C$ser.c$219$5$39 ==.
;	ser.c:219: logic=true;
	mov	r6,#0x01
	C$ser.c$220$5$39 ==.
;	ser.c:220: break;
	C$ser.c$223$3$37 ==.
;	ser.c:223: else break;
	sjmp	00108$
00167$:
	C$ser.c$216$2$36 ==.
;	ser.c:216: for(i=0;i<20;i++){
	inc	r5
	cjne	r5,#0x14,00289$
00289$:
	jc	00166$
00108$:
	C$ser.c$226$1$35 ==.
;	ser.c:226: if(cmd==2){
	cjne	r7,#0x02,00116$
	C$ser.c$227$2$40 ==.
;	ser.c:227: for(i=0;i<20;i++){
	mov	r5,#0x00
00168$:
	C$ser.c$228$3$41 ==.
;	ser.c:228: if(bufer[i]==out1on[i]){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	mov	dptr,#_out1on
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00116$
	C$ser.c$229$4$42 ==.
;	ser.c:229: if(bufer[i]=='#'){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x23,00169$
	C$ser.c$230$5$43 ==.
;	ser.c:230: logic=true;
	mov	r6,#0x01
	C$ser.c$231$5$43 ==.
;	ser.c:231: break;
	C$ser.c$234$3$41 ==.
;	ser.c:234: else break;
	sjmp	00116$
00169$:
	C$ser.c$227$2$40 ==.
;	ser.c:227: for(i=0;i<20;i++){
	inc	r5
	cjne	r5,#0x14,00297$
00297$:
	jc	00168$
00116$:
	C$ser.c$237$1$35 ==.
;	ser.c:237: if(cmd==3){
	cjne	r7,#0x03,00124$
	C$ser.c$238$2$44 ==.
;	ser.c:238: for(i=0;i<20;i++){
	mov	r5,#0x00
00170$:
	C$ser.c$239$3$45 ==.
;	ser.c:239: if(bufer[i]==out1off[i]){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	mov	dptr,#_out1off
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00124$
	C$ser.c$240$4$46 ==.
;	ser.c:240: if(bufer[i]=='#'){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x23,00171$
	C$ser.c$241$5$47 ==.
;	ser.c:241: logic=true;
	mov	r6,#0x01
	C$ser.c$242$5$47 ==.
;	ser.c:242: break;
	C$ser.c$245$3$45 ==.
;	ser.c:245: else break;
	sjmp	00124$
00171$:
	C$ser.c$238$2$44 ==.
;	ser.c:238: for(i=0;i<20;i++){
	inc	r5
	cjne	r5,#0x14,00305$
00305$:
	jc	00170$
00124$:
	C$ser.c$248$1$35 ==.
;	ser.c:248: if(cmd==4){
	cjne	r7,#0x04,00132$
	C$ser.c$249$2$48 ==.
;	ser.c:249: for(i=0;i<20;i++){
	mov	r5,#0x00
00172$:
	C$ser.c$250$3$49 ==.
;	ser.c:250: if(bufer[i]==ping[i]){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	mov	dptr,#_ping
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00132$
	C$ser.c$251$4$50 ==.
;	ser.c:251: if(bufer[i]=='#'){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x23,00173$
	C$ser.c$252$5$51 ==.
;	ser.c:252: logic=true;
	mov	r6,#0x01
	C$ser.c$253$5$51 ==.
;	ser.c:253: break;
	C$ser.c$256$3$49 ==.
;	ser.c:256: else break;
	sjmp	00132$
00173$:
	C$ser.c$249$2$48 ==.
;	ser.c:249: for(i=0;i<20;i++){
	inc	r5
	cjne	r5,#0x14,00313$
00313$:
	jc	00172$
00132$:
	C$ser.c$259$1$35 ==.
;	ser.c:259: if(cmd==5){
	cjne	r7,#0x05,00140$
	C$ser.c$260$2$52 ==.
;	ser.c:260: for(i=0;i<20;i++){
	mov	r5,#0x00
00174$:
	C$ser.c$261$3$53 ==.
;	ser.c:261: if(bufer[i]==stat[i]){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	mov	dptr,#_stat
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00140$
	C$ser.c$262$4$54 ==.
;	ser.c:262: if(bufer[i]=='#'){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x23,00175$
	C$ser.c$263$5$55 ==.
;	ser.c:263: logic=true;
	mov	r6,#0x01
	C$ser.c$264$5$55 ==.
;	ser.c:264: break;
	C$ser.c$267$3$53 ==.
;	ser.c:267: else break;
	sjmp	00140$
00175$:
	C$ser.c$260$2$52 ==.
;	ser.c:260: for(i=0;i<20;i++){
	inc	r5
	cjne	r5,#0x14,00321$
00321$:
	jc	00174$
00140$:
	C$ser.c$270$1$35 ==.
;	ser.c:270: if(cmd==6){
	cjne	r7,#0x06,00148$
	C$ser.c$271$2$56 ==.
;	ser.c:271: for(i=0;i<20;i++){
	mov	r5,#0x00
00176$:
	C$ser.c$272$3$57 ==.
;	ser.c:272: if(bufer[i]==resetctr[i]){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	mov	dptr,#_resetctr
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00148$
	C$ser.c$273$4$58 ==.
;	ser.c:273: if(bufer[i]=='#'){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x23,00177$
	C$ser.c$274$5$59 ==.
;	ser.c:274: logic=true;
	mov	r6,#0x01
	C$ser.c$275$5$59 ==.
;	ser.c:275: break;
	C$ser.c$278$3$57 ==.
;	ser.c:278: else break;
	sjmp	00148$
00177$:
	C$ser.c$271$2$56 ==.
;	ser.c:271: for(i=0;i<20;i++){
	inc	r5
	cjne	r5,#0x14,00329$
00329$:
	jc	00176$
00148$:
	C$ser.c$281$1$35 ==.
;	ser.c:281: if(cmd==7){
	cjne	r7,#0x07,00156$
	C$ser.c$282$2$60 ==.
;	ser.c:282: for(i=0;i<20;i++){
	mov	r5,#0x00
00178$:
	C$ser.c$283$3$61 ==.
;	ser.c:283: if(bufer[i]==readctr[i]){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	mov	a,r5
	mov	dptr,#_readctr
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r4
	cjne	a,ar3,00156$
	C$ser.c$284$4$62 ==.
;	ser.c:284: if(bufer[i]=='#'){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0x23,00179$
	C$ser.c$285$5$63 ==.
;	ser.c:285: logic=true;
	mov	r6,#0x01
	C$ser.c$286$5$63 ==.
;	ser.c:286: break;
	C$ser.c$289$3$61 ==.
;	ser.c:289: else break;
	sjmp	00156$
00179$:
	C$ser.c$282$2$60 ==.
;	ser.c:282: for(i=0;i<20;i++){
	inc	r5
	cjne	r5,#0x14,00337$
00337$:
	jc	00178$
00156$:
	C$ser.c$292$1$35 ==.
;	ser.c:292: if(cmd==8){
	cjne	r7,#0x08,00165$
	C$ser.c$293$2$64 ==.
;	ser.c:293: for(i=0;i<8;i++){
	mov	r5,#0x00
00180$:
	C$ser.c$294$3$65 ==.
;	ser.c:294: if(bufer[i]==editctr[i]&&bufer[17]=='#'){
	mov	a,r5
	add	a,#_bufer
	mov	r1,a
	mov	ar7,@r1
	mov	a,r5
	mov	dptr,#_editctr
	movc	a,@a+dptr
	mov	r4,a
	mov	a,r7
	cjne	a,ar4,00165$
	mov	a,#0x23
	cjne	a,(_bufer + 0x0011),00165$
	C$ser.c$295$4$66 ==.
;	ser.c:295: if(i==7)logic=true;
	cjne	r5,#0x07,00181$
	mov	r6,#0x01
	C$ser.c$297$3$65 ==.
;	ser.c:297: else break;
00181$:
	C$ser.c$293$2$64 ==.
;	ser.c:293: for(i=0;i<8;i++){
	inc	r5
	cjne	r5,#0x08,00347$
00347$:
	jc	00180$
00165$:
	C$ser.c$300$1$35 ==.
;	ser.c:300: return logic;
	mov	dpl,r6
	C$ser.c$301$1$35 ==.
	XG$compare$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r3 
;bouncing_high             Allocated to registers r6 r7 
;bouncing_low              Allocated to registers r4 r5 
;millis                    Allocated with name '_main_millis_1_68'
;------------------------------------------------------------
	G$main$0$0 ==.
	C$ser.c$302$1$35 ==.
;	ser.c:302: void main (void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$ser.c$303$1$35 ==.
;	ser.c:303: __bit stat_out=0;
	clr	_main_stat_out_1_68
	C$ser.c$305$1$35 ==.
;	ser.c:305: __bit toggle=0;
	clr	_main_toggle_1_68
	C$ser.c$306$1$35 ==.
;	ser.c:306: __bit falling_sensor=1;
	setb	_main_falling_sensor_1_68
	C$ser.c$308$1$35 ==.
;	ser.c:308: unsigned int bouncing_high=5000;
	mov	r6,#0x88
	mov	r7,#0x13
	C$ser.c$309$1$35 ==.
;	ser.c:309: unsigned int bouncing_low=5000;
	mov	r4,#0x88
	mov	r5,#0x13
	C$ser.c$310$1$35 ==.
;	ser.c:310: unsigned int millis=0;
	clr	a
	mov	_main_millis_1_68,a
	mov	(_main_millis_1_68 + 1),a
	C$ser.c$311$1$68 ==.
;	ser.c:311: out=0;
	clr	_P2_0
	C$ser.c$312$1$68 ==.
;	ser.c:312: for(i=0;i<250;i++);
	mov	r3,#0xFA
00196$:
	mov	ar2,r3
	mov	a,r2
	dec	a
	mov	r3,a
	jnz	00196$
	C$ser.c$313$1$68 ==.
;	ser.c:313: for(i=0;i<250;i++);
	mov	r3,#0xFA
00199$:
	mov	ar2,r3
	mov	a,r2
	dec	a
	mov	r3,a
	jnz	00199$
	C$ser.c$314$1$68 ==.
;	ser.c:314: P0=0xff;
	mov	_P0,#0xFF
	C$ser.c$315$1$68 ==.
;	ser.c:315: readcounter();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_readcounter
	C$ser.c$316$1$68 ==.
;	ser.c:316: serial_init();
	lcall	_serial_init
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$ser.c$317$1$68 ==.
;	ser.c:317: if(counter[0]>9)counter[0]=0;
	mov	a,_counter
	add	a,#0xff - 0x09
	jnc	00104$
	mov	_counter,#0x00
00104$:
	C$ser.c$318$1$68 ==.
;	ser.c:318: if(counter[1]>9)counter[1]=0;
	mov	a,(_counter + 0x0001)
	add	a,#0xff - 0x09
	jnc	00106$
	mov	(_counter + 0x0001),#0x00
00106$:
	C$ser.c$319$1$68 ==.
;	ser.c:319: if(counter[2]>9)counter[2]=0;
	mov	a,(_counter + 0x0002)
	add	a,#0xff - 0x09
	jnc	00108$
	mov	(_counter + 0x0002),#0x00
00108$:
	C$ser.c$320$1$68 ==.
;	ser.c:320: if(counter[3]>9)counter[3]=0;
	mov	a,(_counter + 0x0003)
	add	a,#0xff - 0x09
	jnc	00110$
	mov	(_counter + 0x0003),#0x00
00110$:
	C$ser.c$321$1$68 ==.
;	ser.c:321: if(counter[4]>9)counter[4]=0;
	mov	a,(_counter + 0x0004)
	add	a,#0xff - 0x09
	jnc	00112$
	mov	(_counter + 0x0004),#0x00
00112$:
	C$ser.c$322$1$68 ==.
;	ser.c:322: if(counter[5]>9)counter[5]=0;
	mov	a,(_counter + 0x0005)
	add	a,#0xff - 0x09
	jnc	00114$
	mov	(_counter + 0x0005),#0x00
00114$:
	C$ser.c$323$1$68 ==.
;	ser.c:323: if(counter[6]>9)counter[6]=0;
	mov	a,(_counter + 0x0006)
	add	a,#0xff - 0x09
	jnc	00116$
	mov	(_counter + 0x0006),#0x00
00116$:
	C$ser.c$324$1$68 ==.
;	ser.c:324: if(counter[7]>9)counter[7]=0;
	mov	a,(_counter + 0x0007)
	add	a,#0xff - 0x09
	jnc	00118$
	mov	(_counter + 0x0007),#0x00
00118$:
	C$ser.c$325$1$68 ==.
;	ser.c:325: if(counter[8]>9)counter[8]=0;
	mov	a,(_counter + 0x0008)
	add	a,#0xff - 0x09
	jnc	00120$
	mov	(_counter + 0x0008),#0x00
00120$:
	C$ser.c$326$1$68 ==.
;	ser.c:326: sPrint("*POWERON:BTOK#");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	C$ser.c$327$1$68 ==.
;	ser.c:327: Print(13);
	mov	dpl,#0x0D
	lcall	_Print
	C$ser.c$328$1$68 ==.
;	ser.c:328: Print(10);
	mov	dpl,#0x0A
	lcall	_Print
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$ser.c$329$1$68 ==.
;	ser.c:329: while(1){
00192$:
	C$ser.c$330$2$69 ==.
;	ser.c:330: if(toggle){
	jnb	_main_toggle_1_68,00125$
	C$ser.c$331$3$70 ==.
;	ser.c:331: P0_3=0;
	clr	_P0_3
	C$ser.c$332$3$70 ==.
;	ser.c:332: if(!millis){
	mov	a,_main_millis_1_68
	orl	a,(_main_millis_1_68 + 1)
	jnz	00122$
	C$ser.c$333$4$71 ==.
;	ser.c:333: toggle=false;
	clr	_main_toggle_1_68
	C$ser.c$334$4$71 ==.
;	ser.c:334: out=0;
	clr	_P2_0
	C$ser.c$335$4$71 ==.
;	ser.c:335: stat_out=0;
	clr	_main_stat_out_1_68
	C$ser.c$336$4$71 ==.
;	ser.c:336: P0_3=1;
	setb	_P0_3
	sjmp	00125$
00122$:
	C$ser.c$338$3$70 ==.
;	ser.c:338: else millis--;
	dec	_main_millis_1_68
	mov	a,#0xFF
	cjne	a,_main_millis_1_68,00355$
	dec	(_main_millis_1_68 + 1)
00355$:
00125$:
	C$ser.c$343$2$69 ==.
;	ser.c:343: if(input_a==0){
	jnb	_P0_6,00356$
	ljmp	00153$
00356$:
	C$ser.c$344$3$72 ==.
;	ser.c:344: bouncing_high=5000;
	mov	r6,#0x88
	mov	r7,#0x13
	C$ser.c$345$3$72 ==.
;	ser.c:345: if(bouncing_low>0){
	mov	a,r4
	orl	a,r5
	jz	00127$
	C$ser.c$346$4$73 ==.
;	ser.c:346: bouncing_low--;
	dec	r4
	cjne	r4,#0xFF,00358$
	dec	r5
00358$:
	C$ser.c$347$4$73 ==.
;	ser.c:347: goto lanjut;
	ljmp	00155$
00127$:
	C$ser.c$349$3$72 ==.
;	ser.c:349: P0_2=0;
	clr	_P0_2
	C$ser.c$350$3$72 ==.
;	ser.c:350: if(falling_sensor){
	jb	_main_falling_sensor_1_68,00359$
	ljmp	00155$
00359$:
	C$ser.c$351$4$74 ==.
;	ser.c:351: sPrint("*IN1ON#");
	mov	dptr,#___str_1
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	C$ser.c$352$4$74 ==.
;	ser.c:352: Print(13);
	mov	dpl,#0x0D
	lcall	_Print
	C$ser.c$353$4$74 ==.
;	ser.c:353: Print(10);
	mov	dpl,#0x0A
	lcall	_Print
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$ser.c$354$4$74 ==.
;	ser.c:354: falling_sensor=false;
	clr	_main_falling_sensor_1_68
	C$ser.c$355$4$74 ==.
;	ser.c:355: counter[0]++;
	mov	r2,_counter
	inc	r2
	C$ser.c$356$4$74 ==.
;	ser.c:356: if(counter[0]>9){
	mov	a,r2
	mov	_counter,a
	add	a,#0xff - 0x09
	jnc	00129$
	C$ser.c$357$5$75 ==.
;	ser.c:357: counter[0]=0;
	mov	_counter,#0x00
	C$ser.c$358$5$75 ==.
;	ser.c:358: counter[1]++;
	mov	a,(_counter + 0x0001)
	mov	r2,a
	inc	a
	mov	(_counter + 0x0001),a
00129$:
	C$ser.c$360$4$74 ==.
;	ser.c:360: if(counter[1]>9){
	mov	a,(_counter + 0x0001)
	add	a,#0xff - 0x09
	jnc	00131$
	C$ser.c$361$5$76 ==.
;	ser.c:361: counter[1]=0;
	mov	(_counter + 0x0001),#0x00
	C$ser.c$362$5$76 ==.
;	ser.c:362: counter[2]++;
	mov	a,(_counter + 0x0002)
	mov	r2,a
	inc	a
	mov	(_counter + 0x0002),a
00131$:
	C$ser.c$364$4$74 ==.
;	ser.c:364: if(counter[2]>9){
	mov	a,(_counter + 0x0002)
	add	a,#0xff - 0x09
	jnc	00133$
	C$ser.c$365$5$77 ==.
;	ser.c:365: counter[2]=0;
	mov	(_counter + 0x0002),#0x00
	C$ser.c$366$5$77 ==.
;	ser.c:366: counter[3]++;
	mov	a,(_counter + 0x0003)
	mov	r2,a
	inc	a
	mov	(_counter + 0x0003),a
00133$:
	C$ser.c$368$4$74 ==.
;	ser.c:368: if(counter[3]>9){
	mov	a,(_counter + 0x0003)
	add	a,#0xff - 0x09
	jnc	00135$
	C$ser.c$369$5$78 ==.
;	ser.c:369: counter[3]=0;
	mov	(_counter + 0x0003),#0x00
	C$ser.c$370$5$78 ==.
;	ser.c:370: counter[4]++;
	mov	a,(_counter + 0x0004)
	mov	r2,a
	inc	a
	mov	(_counter + 0x0004),a
00135$:
	C$ser.c$372$4$74 ==.
;	ser.c:372: if(counter[4]>9){
	mov	a,(_counter + 0x0004)
	add	a,#0xff - 0x09
	jnc	00137$
	C$ser.c$373$5$79 ==.
;	ser.c:373: counter[4]=0;
	mov	(_counter + 0x0004),#0x00
	C$ser.c$374$5$79 ==.
;	ser.c:374: counter[5]++;
	mov	a,(_counter + 0x0005)
	mov	r2,a
	inc	a
	mov	(_counter + 0x0005),a
00137$:
	C$ser.c$376$4$74 ==.
;	ser.c:376: if(counter[5]>9){
	mov	a,(_counter + 0x0005)
	add	a,#0xff - 0x09
	jnc	00139$
	C$ser.c$377$5$80 ==.
;	ser.c:377: counter[5]=0;
	mov	(_counter + 0x0005),#0x00
	C$ser.c$378$5$80 ==.
;	ser.c:378: counter[6]++;
	mov	a,(_counter + 0x0006)
	mov	r2,a
	inc	a
	mov	(_counter + 0x0006),a
00139$:
	C$ser.c$380$4$74 ==.
;	ser.c:380: if(counter[6]>9){
	mov	a,(_counter + 0x0006)
	add	a,#0xff - 0x09
	jnc	00141$
	C$ser.c$381$5$81 ==.
;	ser.c:381: counter[7]=0;
	mov	(_counter + 0x0007),#0x00
	C$ser.c$382$5$81 ==.
;	ser.c:382: counter[7]++;
	mov	a,(_counter + 0x0007)
	mov	r2,a
	inc	a
	mov	(_counter + 0x0007),a
00141$:
	C$ser.c$384$4$74 ==.
;	ser.c:384: if(counter[7]>9){
	mov	a,(_counter + 0x0007)
	add	a,#0xff - 0x09
	jnc	00143$
	C$ser.c$385$5$82 ==.
;	ser.c:385: counter[7]=0;
	mov	(_counter + 0x0007),#0x00
	C$ser.c$386$5$82 ==.
;	ser.c:386: counter[8]++;
	mov	a,(_counter + 0x0008)
	mov	r2,a
	inc	a
	mov	(_counter + 0x0008),a
00143$:
	C$ser.c$388$4$74 ==.
;	ser.c:388: if(counter[8]>9){
	mov	a,(_counter + 0x0008)
	add	a,#0xff - 0x09
	jnc	00145$
	C$ser.c$389$5$83 ==.
;	ser.c:389: counter[8]=0;
	mov	(_counter + 0x0008),#0x00
	C$ser.c$390$5$83 ==.
;	ser.c:390: counter[0]++;
	mov	a,_counter
	mov	r2,a
	inc	a
	mov	_counter,a
00145$:
	C$ser.c$392$4$74 ==.
;	ser.c:392: writecounter();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_writecounter
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00155$
00153$:
	C$ser.c$396$3$84 ==.
;	ser.c:396: bouncing_low=5000;
	mov	r4,#0x88
	mov	r5,#0x13
	C$ser.c$397$3$84 ==.
;	ser.c:397: if(bouncing_high>0){
	mov	a,r6
	orl	a,r7
	jz	00149$
	C$ser.c$398$4$85 ==.
;	ser.c:398: bouncing_high--;
	dec	r6
	cjne	r6,#0xFF,00370$
	dec	r7
00370$:
	C$ser.c$399$4$85 ==.
;	ser.c:399: goto lanjut;
	sjmp	00155$
00149$:
	C$ser.c$401$3$84 ==.
;	ser.c:401: P0_2=1;
	setb	_P0_2
	C$ser.c$402$3$84 ==.
;	ser.c:402: if(!falling_sensor){
	jb	_main_falling_sensor_1_68,00151$
	C$ser.c$403$4$86 ==.
;	ser.c:403: sPrint("*IN1OFF#");
	mov	dptr,#___str_2
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	C$ser.c$404$4$86 ==.
;	ser.c:404: Print(13);
	mov	dpl,#0x0D
	lcall	_Print
	C$ser.c$405$4$86 ==.
;	ser.c:405: Print(10);
	mov	dpl,#0x0A
	lcall	_Print
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00151$:
	C$ser.c$407$3$84 ==.
;	ser.c:407: falling_sensor=true;
	setb	_main_falling_sensor_1_68
	C$ser.c$409$2$69 ==.
;	ser.c:409: lanjut:	
00155$:
	C$ser.c$413$2$69 ==.
;	ser.c:413: if(complit){
	mov	a,_complit
	jnz	00372$
	ljmp	00192$
00372$:
	C$ser.c$414$3$87 ==.
;	ser.c:414: if(compare(1)==true){
	mov	dpl,#0x01
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_compare
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x01,00157$
	C$ser.c$415$4$88 ==.
;	ser.c:415: sPrint("*OPEN1OK#");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$ser.c$416$4$88 ==.
;	ser.c:416: out=1;
	setb	_P2_0
	C$ser.c$417$4$88 ==.
;	ser.c:417: stat_out=1;
	setb	_main_stat_out_1_68
	C$ser.c$418$4$88 ==.
;	ser.c:418: millis=40000;
	mov	_main_millis_1_68,#0x40
	mov	(_main_millis_1_68 + 1),#0x9C
	C$ser.c$419$4$88 ==.
;	ser.c:419: toggle=true;
	setb	_main_toggle_1_68
00157$:
	C$ser.c$421$3$87 ==.
;	ser.c:421: if(compare(2)==true){
	mov	dpl,#0x02
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_compare
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x01,00159$
	C$ser.c$422$4$89 ==.
;	ser.c:422: out=1;
	setb	_P2_0
	C$ser.c$423$4$89 ==.
;	ser.c:423: stat_out=1;
	setb	_main_stat_out_1_68
	C$ser.c$424$4$89 ==.
;	ser.c:424: P0_3=0;
	clr	_P0_3
	C$ser.c$425$4$89 ==.
;	ser.c:425: sPrint("*OUT1ONOK#");
	mov	dptr,#___str_4
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00159$:
	C$ser.c$427$3$87 ==.
;	ser.c:427: if(compare(3)==true){
	mov	dpl,#0x03
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_compare
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x01,00161$
	C$ser.c$428$4$90 ==.
;	ser.c:428: out=0;
	clr	_P2_0
	C$ser.c$429$4$90 ==.
;	ser.c:429: stat_out=0;
	clr	_main_stat_out_1_68
	C$ser.c$430$4$90 ==.
;	ser.c:430: P0_3=1;
	setb	_P0_3
	C$ser.c$431$4$90 ==.
;	ser.c:431: sPrint("*OUT1OFFOK#");
	mov	dptr,#___str_5
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00161$:
	C$ser.c$433$3$87 ==.
;	ser.c:433: if(compare(4)==true)sPrint("*PINGOK#");
	mov	dpl,#0x04
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_compare
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x01,00163$
	mov	dptr,#___str_6
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00163$:
	C$ser.c$434$3$87 ==.
;	ser.c:434: if(compare(5)==true){
	mov	dpl,#0x05
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_compare
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x01,00175$
	C$ser.c$435$4$91 ==.
;	ser.c:435: if(input_a==1){
	jnb	_P0_6,00168$
	C$ser.c$436$5$92 ==.
;	ser.c:436: if(stat_out==1)sPrint("*STAT01#");
	jnb	_main_stat_out_1_68,00165$
	mov	dptr,#___str_7
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00168$
00165$:
	C$ser.c$437$5$92 ==.
;	ser.c:437: else sPrint("*STAT00#");
	mov	dptr,#___str_8
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00168$:
	C$ser.c$439$4$91 ==.
;	ser.c:439: if(input_a==0){
	jb	_P0_6,00175$
	C$ser.c$440$5$93 ==.
;	ser.c:440: if(stat_out==1)sPrint("*STAT11#");
	jnb	_main_stat_out_1_68,00170$
	mov	dptr,#___str_9
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00175$
00170$:
	C$ser.c$441$5$93 ==.
;	ser.c:441: else sPrint("*STAT10#");
	mov	dptr,#___str_10
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00175$:
	C$ser.c$444$3$87 ==.
;	ser.c:444: if(compare(6)==true){
	mov	dpl,#0x06
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_compare
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x01,00177$
	C$ser.c$445$4$94 ==.
;	ser.c:445: counter[0]=0;
	mov	_counter,#0x00
	C$ser.c$446$4$94 ==.
;	ser.c:446: counter[1]=0;
	mov	(_counter + 0x0001),#0x00
	C$ser.c$447$4$94 ==.
;	ser.c:447: counter[2]=0;
	mov	(_counter + 0x0002),#0x00
	C$ser.c$448$4$94 ==.
;	ser.c:448: counter[3]=0;
	mov	(_counter + 0x0003),#0x00
	C$ser.c$449$4$94 ==.
;	ser.c:449: counter[4]=0;
	mov	(_counter + 0x0004),#0x00
	C$ser.c$450$4$94 ==.
;	ser.c:450: counter[5]=0;
	mov	(_counter + 0x0005),#0x00
	C$ser.c$451$4$94 ==.
;	ser.c:451: counter[6]=0;
	mov	(_counter + 0x0006),#0x00
	C$ser.c$452$4$94 ==.
;	ser.c:452: counter[7]=0;
	mov	(_counter + 0x0007),#0x00
	C$ser.c$453$4$94 ==.
;	ser.c:453: counter[8]=0;
	mov	(_counter + 0x0008),#0x00
	C$ser.c$454$4$94 ==.
;	ser.c:454: writecounter();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_writecounter
	C$ser.c$455$4$94 ==.
;	ser.c:455: sPrint("*RESETCTROK#");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00177$:
	C$ser.c$457$3$87 ==.
;	ser.c:457: if(compare(7)==true){
	mov	dpl,#0x07
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_compare
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x01,00179$
	C$ser.c$458$4$95 ==.
;	ser.c:458: readcounter();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_readcounter
	C$ser.c$459$4$95 ==.
;	ser.c:459: sPrint("*READCTRBTOK");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_sPrint
	C$ser.c$460$4$95 ==.
;	ser.c:460: Print(counter[8]+48);
	mov	a,#0x30
	add	a,(_counter + 0x0008)
	mov	dpl,a
	lcall	_Print
	C$ser.c$461$4$95 ==.
;	ser.c:461: Print(counter[7]+48);
	mov	a,#0x30
	add	a,(_counter + 0x0007)
	mov	dpl,a
	lcall	_Print
	C$ser.c$462$4$95 ==.
;	ser.c:462: Print(counter[6]+48);
	mov	a,#0x30
	add	a,(_counter + 0x0006)
	mov	dpl,a
	lcall	_Print
	C$ser.c$463$4$95 ==.
;	ser.c:463: Print(counter[5]+48);
	mov	a,#0x30
	add	a,(_counter + 0x0005)
	mov	dpl,a
	lcall	_Print
	C$ser.c$464$4$95 ==.
;	ser.c:464: Print(counter[4]+48);
	mov	a,#0x30
	add	a,(_counter + 0x0004)
	mov	dpl,a
	lcall	_Print
	C$ser.c$465$4$95 ==.
;	ser.c:465: Print(counter[3]+48);
	mov	a,#0x30
	add	a,(_counter + 0x0003)
	mov	dpl,a
	lcall	_Print
	C$ser.c$466$4$95 ==.
;	ser.c:466: Print(counter[2]+48);
	mov	a,#0x30
	add	a,(_counter + 0x0002)
	mov	dpl,a
	lcall	_Print
	C$ser.c$467$4$95 ==.
;	ser.c:467: Print(counter[1]+48);
	mov	a,#0x30
	add	a,(_counter + 0x0001)
	mov	dpl,a
	lcall	_Print
	C$ser.c$468$4$95 ==.
;	ser.c:468: Print(counter[0]+48);
	mov	a,#0x30
	add	a,_counter
	mov	dpl,a
	lcall	_Print
	C$ser.c$469$4$95 ==.
;	ser.c:469: Print('#');
	mov	dpl,#0x23
	lcall	_Print
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00179$:
	C$ser.c$471$3$87 ==.
;	ser.c:471: if(compare(8)==true){
	mov	dpl,#0x08
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_compare
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	cjne	r2,#0x01,00391$
	sjmp	00392$
00391$:
	ljmp	00188$
00392$:
	C$ser.c$472$4$96 ==.
;	ser.c:472: logik=true;
	setb	_main_logik_1_68
	C$ser.c$473$4$96 ==.
;	ser.c:473: for(i=8;i<17;i++){
	mov	r3,#0x08
00200$:
	C$ser.c$474$5$97 ==.
;	ser.c:474: if(bufer[i]<'0'||bufer[i]>'9'){
	mov	a,r3
	add	a,#_bufer
	mov	r1,a
	mov	ar2,@r1
	cjne	r2,#0x30,00393$
00393$:
	jc	00180$
	mov	a,r3
	add	a,#_bufer
	mov	r1,a
	mov	a,@r1
	mov	r2,a
	add	a,#0xff - 0x39
	jnc	00201$
00180$:
	C$ser.c$475$6$98 ==.
;	ser.c:475: logik=false;
	clr	_main_logik_1_68
	C$ser.c$476$6$98 ==.
;	ser.c:476: break;
	sjmp	00183$
00201$:
	C$ser.c$473$4$96 ==.
;	ser.c:473: for(i=8;i<17;i++){
	inc	r3
	cjne	r3,#0x11,00396$
00396$:
	jc	00200$
00183$:
	C$ser.c$479$4$96 ==.
;	ser.c:479: if(logik==true){
	jnb	_main_logik_1_68,00185$
	C$ser.c$480$5$99 ==.
;	ser.c:480: counter[0]=bufer[16]-48;
	mov	a,(_bufer + 0x0010)
	add	a,#0xD0
	mov	_counter,a
	C$ser.c$481$5$99 ==.
;	ser.c:481: counter[1]=bufer[15]-48;
	mov	a,(_bufer + 0x000f)
	add	a,#0xD0
	mov	(_counter + 0x0001),a
	C$ser.c$482$5$99 ==.
;	ser.c:482: counter[2]=bufer[14]-48;
	mov	a,(_bufer + 0x000e)
	add	a,#0xD0
	mov	(_counter + 0x0002),a
	C$ser.c$483$5$99 ==.
;	ser.c:483: counter[3]=bufer[13]-48;
	mov	a,(_bufer + 0x000d)
	add	a,#0xD0
	mov	(_counter + 0x0003),a
	C$ser.c$484$5$99 ==.
;	ser.c:484: counter[4]=bufer[12]-48;
	mov	a,(_bufer + 0x000c)
	add	a,#0xD0
	mov	(_counter + 0x0004),a
	C$ser.c$485$5$99 ==.
;	ser.c:485: counter[5]=bufer[11]-48;
	mov	a,(_bufer + 0x000b)
	add	a,#0xD0
	mov	(_counter + 0x0005),a
	C$ser.c$486$5$99 ==.
;	ser.c:486: counter[6]=bufer[10]-48;
	mov	a,(_bufer + 0x000a)
	add	a,#0xD0
	mov	(_counter + 0x0006),a
	C$ser.c$487$5$99 ==.
;	ser.c:487: counter[7]=bufer[9]-48;
	mov	a,(_bufer + 0x0009)
	add	a,#0xD0
	mov	(_counter + 0x0007),a
	C$ser.c$488$5$99 ==.
;	ser.c:488: counter[8]=bufer[8]-48;
	mov	a,(_bufer + 0x0008)
	add	a,#0xD0
	mov	(_counter + 0x0008),a
	C$ser.c$489$5$99 ==.
;	ser.c:489: writecounter();
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_writecounter
	C$ser.c$490$5$99 ==.
;	ser.c:490: sPrint("*EDITCTROK#");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00188$
00185$:
	C$ser.c$492$4$96 ==.
;	ser.c:492: else sPrint("*EDITCTRERR#");
	mov	dptr,#___str_14
	mov	b,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_sPrint
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00188$:
	C$ser.c$494$3$87 ==.
;	ser.c:494: complit=false;
	mov	_complit,#0x00
	C$ser.c$495$3$87 ==.
;	ser.c:495: Print(13);
	mov	dpl,#0x0D
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_Print
	C$ser.c$496$3$87 ==.
;	ser.c:496: Print(10);
	mov	dpl,#0x0A
	lcall	_Print
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	ljmp	00192$
	C$ser.c$499$1$68 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$open1$0$0 == .
_open1:
	.db #0x2A	; 42
	.db #0x4F	; 79	'O'
	.db #0x50	; 80	'P'
	.db #0x45	; 69	'E'
	.db #0x4E	; 78	'N'
	.db #0x31	; 49	'1'
	.db #0x23	; 35
G$out1on$0$0 == .
_out1on:
	.db #0x2A	; 42
	.db #0x4F	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x31	; 49	'1'
	.db #0x4F	; 79	'O'
	.db #0x4E	; 78	'N'
	.db #0x23	; 35
G$out1off$0$0 == .
_out1off:
	.db #0x2A	; 42
	.db #0x4F	; 79	'O'
	.db #0x55	; 85	'U'
	.db #0x54	; 84	'T'
	.db #0x31	; 49	'1'
	.db #0x4F	; 79	'O'
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x23	; 35
G$ping$0$0 == .
_ping:
	.db #0x2A	; 42
	.db #0x50	; 80	'P'
	.db #0x49	; 73	'I'
	.db #0x4E	; 78	'N'
	.db #0x47	; 71	'G'
	.db #0x23	; 35
G$stat$0$0 == .
_stat:
	.db #0x2A	; 42
	.db #0x53	; 83	'S'
	.db #0x54	; 84	'T'
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x23	; 35
G$resetctr$0$0 == .
_resetctr:
	.db #0x2A	; 42
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x54	; 84	'T'
	.db #0x43	; 67	'C'
	.db #0x54	; 84	'T'
	.db #0x52	; 82	'R'
	.db #0x23	; 35
G$readctr$0$0 == .
_readctr:
	.db #0x2A	; 42
	.db #0x52	; 82	'R'
	.db #0x45	; 69	'E'
	.db #0x41	; 65	'A'
	.db #0x44	; 68	'D'
	.db #0x43	; 67	'C'
	.db #0x54	; 84	'T'
	.db #0x52	; 82	'R'
	.db #0x23	; 35
G$editctr$0$0 == .
_editctr:
	.db #0x2A	; 42
	.db #0x45	; 69	'E'
	.db #0x44	; 68	'D'
	.db #0x49	; 73	'I'
	.db #0x54	; 84	'T'
	.db #0x43	; 67	'C'
	.db #0x54	; 84	'T'
	.db #0x52	; 82	'R'
Fser$__str_0$0$0 == .
___str_0:
	.ascii "*POWERON:BTOK#"
	.db 0x00
Fser$__str_1$0$0 == .
___str_1:
	.ascii "*IN1ON#"
	.db 0x00
Fser$__str_2$0$0 == .
___str_2:
	.ascii "*IN1OFF#"
	.db 0x00
Fser$__str_3$0$0 == .
___str_3:
	.ascii "*OPEN1OK#"
	.db 0x00
Fser$__str_4$0$0 == .
___str_4:
	.ascii "*OUT1ONOK#"
	.db 0x00
Fser$__str_5$0$0 == .
___str_5:
	.ascii "*OUT1OFFOK#"
	.db 0x00
Fser$__str_6$0$0 == .
___str_6:
	.ascii "*PINGOK#"
	.db 0x00
Fser$__str_7$0$0 == .
___str_7:
	.ascii "*STAT01#"
	.db 0x00
Fser$__str_8$0$0 == .
___str_8:
	.ascii "*STAT00#"
	.db 0x00
Fser$__str_9$0$0 == .
___str_9:
	.ascii "*STAT11#"
	.db 0x00
Fser$__str_10$0$0 == .
___str_10:
	.ascii "*STAT10#"
	.db 0x00
Fser$__str_11$0$0 == .
___str_11:
	.ascii "*RESETCTROK#"
	.db 0x00
Fser$__str_12$0$0 == .
___str_12:
	.ascii "*READCTRBTOK"
	.db 0x00
Fser$__str_13$0$0 == .
___str_13:
	.ascii "*EDITCTROK#"
	.db 0x00
Fser$__str_14$0$0 == .
___str_14:
	.ascii "*EDITCTRERR#"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
