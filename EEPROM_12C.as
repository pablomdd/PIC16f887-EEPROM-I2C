opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 9453"

opt pagewidth 120

	opt pm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 24 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	psect config,class=CONFIG,delta=2 ;#
# 24 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 25 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	psect config,class=CONFIG,delta=2 ;#
# 25 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_init_micro
	FNCALL	_main,_i2c_init
	FNCALL	_main,_pause
	FNCALL	_main,_lcd_write
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_putch
	FNCALL	_main,_sprintf
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_I2C_EEOUT
	FNCALL	_main,_I2C_EEIN
	FNCALL	_I2C_EEIN,_i2c_start
	FNCALL	_I2C_EEIN,_i2c_write
	FNCALL	_I2C_EEIN,_i2c_repStart
	FNCALL	_I2C_EEIN,_i2c_read
	FNCALL	_I2C_EEIN,_i2c_stop
	FNCALL	_I2C_EEOUT,_i2c_start
	FNCALL	_I2C_EEOUT,_i2c_write
	FNCALL	_I2C_EEOUT,_i2c_stop
	FNCALL	_I2C_EEOUT,_pause
	FNCALL	_sprintf,___lwdiv
	FNCALL	_sprintf,___lwmod
	FNCALL	_i2c_write,_i2c_waitForIdle
	FNCALL	_i2c_read,_i2c_waitForIdle
	FNCALL	_i2c_stop,_i2c_waitForIdle
	FNCALL	_i2c_repStart,_i2c_waitForIdle
	FNCALL	_i2c_start,_i2c_waitForIdle
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	_dpowers
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0

	retlw	0Ah
	retlw	0

	retlw	064h
	retlw	0

	retlw	0E8h
	retlw	03h

	retlw	010h
	retlw	027h

	global	_dpowers
	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCSTA
_RCSTA	set	24
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_BCLIF
_BCLIF	set	107
	global	_RA6
_RA6	set	46
	global	_RA7
_RA7	set	47
	global	_RE1
_RE1	set	73
	global	_SSPIF
_SSPIF	set	99
	global	_T0IF
_T0IF	set	90
	global	_TXIF
_TXIF	set	100
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_SPBRG
_SPBRG	set	153
	global	_SSPADD
_SSPADD	set	147
	global	_SSPCON2
_SSPCON2	set	145
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_CKE
_CKE	set	1190
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_R_W
_R_W	set	1186
	global	_SEN
_SEN	set	1160
	global	_SMP
_SMP	set	1191
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_CM1CON0
_CM1CON0	set	263
	global	_CM2CON0
_CM2CON0	set	264
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BAUDCTL
_BAUDCTL	set	391
	global	_PORTA
_PORTA	set	5
	
STR_1:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	115	;'s'
	retlw	99	;'c'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	77	;'M'
	retlw	111	;'o'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	84	;'T'
	retlw	97	;'a'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	0
psect	strings
	
STR_4:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	71	;'G'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	98	;'b'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_5:	
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_8:	
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"EEPROM_12C.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_init_micro
?_init_micro:	; 0 bytes @ 0x0
	global	??_init_micro
??_init_micro:	; 0 bytes @ 0x0
	global	?_msecbase
?_msecbase:	; 0 bytes @ 0x0
	global	??_msecbase
??_msecbase:	; 0 bytes @ 0x0
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	?_i2c_init
?_i2c_init:	; 0 bytes @ 0x0
	global	??_i2c_init
??_i2c_init:	; 0 bytes @ 0x0
	global	?_i2c_waitForIdle
?_i2c_waitForIdle:	; 0 bytes @ 0x0
	global	??_i2c_waitForIdle
??_i2c_waitForIdle:	; 0 bytes @ 0x0
	global	?_i2c_start
?_i2c_start:	; 0 bytes @ 0x0
	global	?_i2c_repStart
?_i2c_repStart:	; 0 bytes @ 0x0
	global	?_i2c_stop
?_i2c_stop:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_i2c_write
?_i2c_write:	; 1 bytes @ 0x0
	global	?_I2C_EEIN
?_I2C_EEIN:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 4 bytes @ 0x0
	ds	1
	global	lcd_write@temp
lcd_write@temp:	; 1 bytes @ 0x1
	ds	1
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x2
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x2
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x2
	global	lcd_puts@s
lcd_puts@s:	; 1 bytes @ 0x2
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_pause
??_pause:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	global	pause@x
pause@x:	; 4 bytes @ 0x4
	ds	1
	global	??_i2c_start
??_i2c_start:	; 0 bytes @ 0x5
	global	??_i2c_repStart
??_i2c_repStart:	; 0 bytes @ 0x5
	global	??_i2c_stop
??_i2c_stop:	; 0 bytes @ 0x5
	global	??_i2c_write
??_i2c_write:	; 0 bytes @ 0x5
	global	?_i2c_read
?_i2c_read:	; 2 bytes @ 0x5
	global	i2c_write@i2cWriteData
i2c_write@i2cWriteData:	; 1 bytes @ 0x5
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	ds	1
	global	??_i2c_read
??_i2c_read:	; 0 bytes @ 0x7
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	i2c_read@ack
i2c_read@ack:	; 1 bytes @ 0x7
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x7
	ds	1
	global	?_I2C_EEOUT
?_I2C_EEOUT:	; 0 bytes @ 0x8
	global	i2c_read@i2cReadData
i2c_read@i2cReadData:	; 1 bytes @ 0x8
	global	I2C_EEOUT@data
I2C_EEOUT@data:	; 1 bytes @ 0x8
	ds	1
	global	??_I2C_EEOUT
??_I2C_EEOUT:	; 0 bytes @ 0x9
	global	??_I2C_EEIN
??_I2C_EEIN:	; 0 bytes @ 0x9
	global	I2C_EEOUT@address
I2C_EEOUT@address:	; 1 bytes @ 0x9
	global	I2C_EEIN@address
I2C_EEIN@address:	; 1 bytes @ 0x9
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x9
	ds	1
	global	I2C_EEIN@data
I2C_EEIN@data:	; 1 bytes @ 0xA
	ds	1
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds	1
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0xC
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x0
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x0
	ds	3
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x3
	ds	1
	global	sprintf@flag
sprintf@flag:	; 1 bytes @ 0x4
	ds	1
	global	sprintf@prec
sprintf@prec:	; 1 bytes @ 0x5
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x6
	ds	4
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0xA
	ds	1
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0xB
	ds	1
	global	main@buffer
main@buffer:	; 15 bytes @ 0xC
	ds	15
	global	main@val
main@val:	; 1 bytes @ 0x1B
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x1C
	ds	2
	global	main@x
main@x:	; 1 bytes @ 0x1E
	ds	1
	global	main@x_1892
main@x_1892:	; 1 bytes @ 0x1F
	ds	1
	global	main@x_1894
main@x_1894:	; 1 bytes @ 0x20
	ds	1
	global	main@x_1896
main@x_1896:	; 1 bytes @ 0x21
	ds	1
	global	main@x_1898
main@x_1898:	; 1 bytes @ 0x22
	ds	1
	global	main@x_1901
main@x_1901:	; 1 bytes @ 0x23
	ds	1
	global	main@x_1903
main@x_1903:	; 1 bytes @ 0x24
	ds	1
	global	main@cnt
main@cnt:	; 1 bytes @ 0x25
	ds	1
;;Data sizes: Strings 126, constant 10, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     38      38
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?_i2c_read	int  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 21
;;		 -> STR_8(CODE[11]), STR_7(CODE[16]), STR_6(CODE[19]), STR_5(CODE[11]), 
;;		 -> STR_4(CODE[16]), STR_3(CODE[18]), STR_1(CODE[21]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 15
;;		 -> main@buffer(BANK0[15]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1921$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(1) Largest target is 14
;;		 -> STR_2(CODE[14]), 
;;
;; pa	PTR unsigned char  size(1) Largest target is 1
;;		 -> PORTA(BITSFR0[1]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_sprintf
;;   _I2C_EEIN->_i2c_read
;;   _I2C_EEOUT->_pause
;;   _sprintf->___lwmod
;;   _i2c_write->_i2c_waitForIdle
;;   _i2c_read->_i2c_waitForIdle
;;   _i2c_stop->_i2c_waitForIdle
;;   _i2c_repStart->_i2c_waitForIdle
;;   _i2c_start->_i2c_waitForIdle
;;   _lcd_goto->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_lcd_write
;;   ___lwmod->___lwdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                28    28      0    2640
;;                                             12 BANK0     26    26      0
;;                         _init_micro
;;                           _i2c_init
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;;                              _putch
;;                            _sprintf
;;                           _lcd_goto
;;                           _lcd_puts
;;                          _I2C_EEOUT
;;                           _I2C_EEIN
;; ---------------------------------------------------------------------------------
;; (1) _I2C_EEIN                                             2     2      0     112
;;                                              9 COMMON     2     2      0
;;                          _i2c_start
;;                          _i2c_write
;;                       _i2c_repStart
;;                           _i2c_read
;;                           _i2c_stop
;; ---------------------------------------------------------------------------------
;; (1) _I2C_EEOUT                                            2     1      1     112
;;                                              8 COMMON     2     1      1
;;                          _i2c_start
;;                          _i2c_write
;;                           _i2c_stop
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             14    11      3     798
;;                                             12 COMMON     2     2      0
;;                                              0 BANK0     12     9      3
;;                            ___lwdiv
;;                            ___lwmod
;; ---------------------------------------------------------------------------------
;; (2) _i2c_write                                            1     1      0      22
;;                                              5 COMMON     1     1      0
;;                    _i2c_waitForIdle
;; ---------------------------------------------------------------------------------
;; (2) _i2c_read                                             4     2      2      45
;;                                              5 COMMON     4     2      2
;;                    _i2c_waitForIdle
;; ---------------------------------------------------------------------------------
;; (2) _i2c_stop                                             0     0      0       0
;;                    _i2c_waitForIdle
;; ---------------------------------------------------------------------------------
;; (2) _i2c_repStart                                         0     0      0       0
;;                    _i2c_waitForIdle
;; ---------------------------------------------------------------------------------
;; (2) _i2c_start                                            0     0      0       0
;;                    _i2c_waitForIdle
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     114
;;                                              2 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             1     1      0     137
;;                                              2 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0      92
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (2) _pause                                                8     4      4      46
;;                                              0 COMMON     8     4      4
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              5     1      4     159
;;                                              7 COMMON     5     1      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (3) _i2c_waitForIdle                                      5     5      0       0
;;                                              0 COMMON     5     5      0
;; ---------------------------------------------------------------------------------
;; (1) _i2c_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _putch                                                1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            2     2      0      92
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (3) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_micro                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init_micro
;;   _i2c_init
;;   _pause
;;     _msecbase
;;   _lcd_write
;;   _lcd_clear
;;     _lcd_write
;;   _putch
;;   _sprintf
;;     ___lwdiv
;;     ___lwmod
;;       ___lwdiv (ARG)
;;   _lcd_goto
;;     _lcd_write
;;   _lcd_puts
;;     _lcd_write
;;   _I2C_EEOUT
;;     _i2c_start
;;       _i2c_waitForIdle
;;     _i2c_write
;;       _i2c_waitForIdle
;;     _i2c_stop
;;       _i2c_waitForIdle
;;     _pause
;;       _msecbase
;;   _I2C_EEIN
;;     _i2c_start
;;       _i2c_waitForIdle
;;     _i2c_write
;;       _i2c_waitForIdle
;;     _i2c_repStart
;;       _i2c_waitForIdle
;;     _i2c_read
;;       _i2c_waitForIdle
;;     _i2c_stop
;;       _i2c_waitForIdle
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     26      26       5       47.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 1145 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               1   36[BANK0 ] unsigned char 
;;  x               1   35[BANK0 ] unsigned char 
;;  x               1   33[BANK0 ] unsigned char 
;;  x               1   32[BANK0 ] unsigned char 
;;  x               1   34[BANK0 ] unsigned char 
;;  x               1   31[BANK0 ] unsigned char 
;;  x               1   30[BANK0 ] unsigned char 
;;  i               2   28[BANK0 ] int 
;;  buffer         15   12[BANK0 ] unsigned char [15]
;;  cnt             1   37[BANK0 ] unsigned char 
;;  val             1   27[BANK0 ] unsigned char 
;;  char_pwm        1    0        unsigned char 
;;  char_recibid    1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/0
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      26       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      26       0       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_init_micro
;;		_i2c_init
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;;		_putch
;;		_sprintf
;;		_lcd_goto
;;		_lcd_puts
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1145
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	1147
	
l3494:	
;eeprom_i2c.c: 1147: init_micro();
	fcall	_init_micro
	line	1148
	
l3496:	
;eeprom_i2c.c: 1148: i2c_init();
	fcall	_i2c_init
	line	1149
	
l3498:	
;eeprom_i2c.c: 1149: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	1150
	
l3500:	
;eeprom_i2c.c: 1150: ANSELH=0x00;
	clrf	(393)^0180h	;volatile
	line	1151
	
l3502:	
;eeprom_i2c.c: 1151: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	1152
	
l3504:	
;eeprom_i2c.c: 1152: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	1153
	
l3506:	
;eeprom_i2c.c: 1153: TRISA=0x00;
	clrf	(133)^080h	;volatile
	line	1154
	
l3508:	
;eeprom_i2c.c: 1154: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	1168
	
l3510:	
;eeprom_i2c.c: 1168: RA7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(47/8),(47)&7
	line	1169
	
l3512:	
;eeprom_i2c.c: 1169: RA6=0;
	bcf	(46/8),(46)&7
	line	1170
	
l3514:	
;eeprom_i2c.c: 1170: RE1=0;
	bcf	(73/8),(73)&7
	line	1172
	
l3516:	
;eeprom_i2c.c: 1172: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1173
	
l3518:	
;eeprom_i2c.c: 1173: PORTD=init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	1174
	
l3520:	
;eeprom_i2c.c: 1174: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l3522:	
	bcf	(46/8),(46)&7
	line	1175
;eeprom_i2c.c: 1175: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1176
	
l3524:	
;eeprom_i2c.c: 1176: ((RA6=1),(RA6=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	
l3526:	
	bcf	(46/8),(46)&7
	line	1177
;eeprom_i2c.c: 1177: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1178
	
l3528:	
;eeprom_i2c.c: 1178: ((RA6=1),(RA6=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	
l3530:	
	bcf	(46/8),(46)&7
	line	1179
;eeprom_i2c.c: 1179: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1180
	
l3532:	
;eeprom_i2c.c: 1180: PORTD=2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	1181
	
l3534:	
;eeprom_i2c.c: 1181: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l3536:	
	bcf	(46/8),(46)&7
	line	1183
	
l3538:	
;eeprom_i2c.c: 1183: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	1184
	
l3540:	
;eeprom_i2c.c: 1184: lcd_write(0xC);
	movlw	(0Ch)
	fcall	_lcd_write
	line	1185
	
l3542:	
;eeprom_i2c.c: 1185: lcd_clear();
	fcall	_lcd_clear
	line	1186
	
l3544:	
;eeprom_i2c.c: 1186: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	1188
	
l3546:	
;eeprom_i2c.c: 1188: TRISC7=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	1189
	
l3548:	
;eeprom_i2c.c: 1189: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	1190
	
l3550:	
;eeprom_i2c.c: 1190: OSCCON=0x70;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	1191
	
l3552:	
;eeprom_i2c.c: 1191: SPBRG=12;
	movlw	(0Ch)
	movwf	(153)^080h	;volatile
	line	1192
	
l3554:	
;eeprom_i2c.c: 1192: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	1193
	
l3556:	
;eeprom_i2c.c: 1193: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	1194
	
l3558:	
;eeprom_i2c.c: 1194: BAUDCTL=0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	1195
	
l3560:	
;eeprom_i2c.c: 1195: pause(500);
	movlw	0
	movwf	(?_pause+3)
	movlw	0
	movwf	(?_pause+2)
	movlw	01h
	movwf	(?_pause+1)
	movlw	0F4h
	movwf	(?_pause)

	fcall	_pause
	line	1203
	
l3562:	
;eeprom_i2c.c: 1198: char char_recibido;
;eeprom_i2c.c: 1199: char char_pwm;
;eeprom_i2c.c: 1200: char buffer[15];
;eeprom_i2c.c: 1203: PORTA=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	1204
	
l3564:	
;eeprom_i2c.c: 1204: *pa=0xFF;
	movlw	(0FFh)
	movwf	(5)
	line	1206
	
l3566:	
;eeprom_i2c.c: 1206: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1207
	
l3568:	
;eeprom_i2c.c: 1207: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1210
	
l3570:	
;eeprom_i2c.c: 1210: for(int i=97; i<123; i++){
	movlw	061h
	movwf	(main@i)
	clrf	(main@i+1)
	line	1211
	
l3576:	
;eeprom_i2c.c: 1211: putch(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	fcall	_putch
	line	1212
;eeprom_i2c.c: 1212: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1210
	
l3578:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(main@i),f
	skipnz
	incf	(main@i+1),f
	
l3580:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u535
	movlw	low(07Bh)
	subwf	(main@i),w
u535:

	skipc
	goto	u531
	goto	u530
u531:
	goto	l3576
u530:
	line	1214
	
l3582:	
;eeprom_i2c.c: 1213: }
;eeprom_i2c.c: 1214: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1215
;eeprom_i2c.c: 1215: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1217
;eeprom_i2c.c: 1217: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1218
;eeprom_i2c.c: 1218: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1219
	
l3584:	
;eeprom_i2c.c: 1219: sprintf(buffer,"Mostrando Escritura ");
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(?_sprintf)
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	1220
	
l3586:	
;eeprom_i2c.c: 1220: for (char x = 0; x<20; x++)
	clrf	(main@x)
	line	1222
	
l3592:	
;eeprom_i2c.c: 1221: {
;eeprom_i2c.c: 1222: putch (buffer[x]);
	movf	(main@x),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	1220
	
l3594:	
	incf	(main@x),f
	
l3596:	
	movlw	(014h)
	subwf	(main@x),w
	skipc
	goto	u541
	goto	u540
u541:
	goto	l3592
u540:
	line	1224
	
l3598:	
;eeprom_i2c.c: 1223: }
;eeprom_i2c.c: 1224: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1225
;eeprom_i2c.c: 1225: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1226
;eeprom_i2c.c: 1226: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1228
	
l3600:	
;eeprom_i2c.c: 1228: unsigned char cnt = 0;
	clrf	(main@cnt)
	line	1231
	
l3602:	
;eeprom_i2c.c: 1231: lcd_clear();
	fcall	_lcd_clear
	line	1232
	
l3604:	
;eeprom_i2c.c: 1232: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	1233
	
l3606:	
;eeprom_i2c.c: 1233: lcd_puts("Grabando.....");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_lcd_puts
	line	1235
	
l3608:	
;eeprom_i2c.c: 1235: sprintf(buffer,"Tamanio de cnt %i", sizeof(cnt));
	movlw	((STR_3-__stringbase))&0ffh
	movwf	(?_sprintf)
	clrf	0+(?_sprintf)+01h
	incf	0+(?_sprintf)+01h,f
	clrf	1+(?_sprintf)+01h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	1236
	
l3610:	
;eeprom_i2c.c: 1236: for (char x = 0; x<20; x++)
	clrf	(main@x_1892)
	line	1238
	
l3616:	
;eeprom_i2c.c: 1237: {
;eeprom_i2c.c: 1238: putch (buffer[x]);
	movf	(main@x_1892),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	1236
	
l3618:	
	incf	(main@x_1892),f
	
l3620:	
	movlw	(014h)
	subwf	(main@x_1892),w
	skipc
	goto	u551
	goto	u550
u551:
	goto	l3616
u550:
	line	1240
	
l3622:	
;eeprom_i2c.c: 1239: }
;eeprom_i2c.c: 1240: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1241
;eeprom_i2c.c: 1241: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1242
;eeprom_i2c.c: 1242: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1246
;eeprom_i2c.c: 1246: while(cnt<=20){
	goto	l3666
	line	1247
	
l3624:	
;eeprom_i2c.c: 1247: PORTB = cnt+10;
	movf	(main@cnt),w
	addlw	0Ah
	movwf	(6)	;volatile
	line	1248
	
l3626:	
;eeprom_i2c.c: 1248: pause(300);
	movlw	0
	movwf	(?_pause+3)
	movlw	0
	movwf	(?_pause+2)
	movlw	01h
	movwf	(?_pause+1)
	movlw	02Ch
	movwf	(?_pause)

	fcall	_pause
	line	1249
	
l3628:	
;eeprom_i2c.c: 1249: I2C_EEOUT(cnt,10 - cnt);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@cnt),w
	sublw	0Ah
	movwf	(?_I2C_EEOUT)
	movf	(main@cnt),w
	fcall	_I2C_EEOUT
	line	1251
	
l3630:	
;eeprom_i2c.c: 1251: sprintf(buffer,"Directorio: %d ", cnt);
	movlw	((STR_4-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	movf	(main@cnt),w
	movwf	0+(?_sprintf)+01h
	clrf	1+(?_sprintf)+01h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	1252
	
l3632:	
;eeprom_i2c.c: 1252: for (char x = 0; x<15; x++)
	clrf	(main@x_1894)
	line	1254
	
l3638:	
;eeprom_i2c.c: 1253: {
;eeprom_i2c.c: 1254: putch (buffer[x]);
	movf	(main@x_1894),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	1252
	
l3640:	
	incf	(main@x_1894),f
	
l3642:	
	movlw	(0Fh)
	subwf	(main@x_1894),w
	skipc
	goto	u561
	goto	u560
u561:
	goto	l3638
u560:
	line	1256
	
l3644:	
;eeprom_i2c.c: 1255: }
;eeprom_i2c.c: 1256: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1257
;eeprom_i2c.c: 1257: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1259
	
l3646:	
;eeprom_i2c.c: 1259: sprintf(buffer,"Valor: %d ", cnt+10);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(main@cnt),w
	addlw	low(0Ah)
	movwf	0+(?_sprintf)+01h
	movlw	high(0Ah)
	skipnc
	movlw	(high(0Ah)+1)&0ffh
	movwf	(0+(?_sprintf)+01h)+1
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	1260
	
l3648:	
;eeprom_i2c.c: 1260: for (char x = 0; x<10; x++)
	clrf	(main@x_1896)
	line	1262
	
l3654:	
;eeprom_i2c.c: 1261: {
;eeprom_i2c.c: 1262: putch (buffer[x]);
	movf	(main@x_1896),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	1260
	
l3656:	
	incf	(main@x_1896),f
	
l3658:	
	movlw	(0Ah)
	subwf	(main@x_1896),w
	skipc
	goto	u571
	goto	u570
u571:
	goto	l3654
u570:
	line	1265
	
l3660:	
;eeprom_i2c.c: 1263: }
;eeprom_i2c.c: 1265: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1266
;eeprom_i2c.c: 1266: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1269
	
l3662:	
;eeprom_i2c.c: 1269: cnt=cnt+1;
	incf	(main@cnt),f
	line	1270
	
l3664:	
;eeprom_i2c.c: 1270: pause(100);
	movlw	064h
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1246
	
l3666:	
	movlw	(015h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(main@cnt),w
	skipc
	goto	u581
	goto	u580
u581:
	goto	l3624
u580:
	line	1273
	
l3668:	
;eeprom_i2c.c: 1271: }
;eeprom_i2c.c: 1273: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1274
;eeprom_i2c.c: 1274: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1275
	
l3670:	
;eeprom_i2c.c: 1275: sprintf(buffer,"Mostrando Lectura ");
	movlw	((STR_6-__stringbase))&0ffh
	movwf	(?_sprintf)
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	1276
	
l3672:	
;eeprom_i2c.c: 1276: for (char x = 0; x<18; x++)
	clrf	(main@x_1898)
	line	1278
	
l3678:	
;eeprom_i2c.c: 1277: {
;eeprom_i2c.c: 1278: putch (buffer[x]);
	movf	(main@x_1898),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	1276
	
l3680:	
	incf	(main@x_1898),f
	
l3682:	
	movlw	(012h)
	subwf	(main@x_1898),w
	skipc
	goto	u591
	goto	u590
u591:
	goto	l3678
u590:
	line	1280
	
l3684:	
;eeprom_i2c.c: 1279: }
;eeprom_i2c.c: 1280: pause(100);
	movlw	064h
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1281
;eeprom_i2c.c: 1281: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1282
;eeprom_i2c.c: 1282: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1284
	
l3686:	
;eeprom_i2c.c: 1284: cnt=0;
	clrf	(main@cnt)
	line	1286
	
l3688:	
	line	1289
;eeprom_i2c.c: 1289: while(cnt <= 20)
	goto	l3726
	line	1291
	
l3690:	
;eeprom_i2c.c: 1290: {
;eeprom_i2c.c: 1291: val = I2C_EEIN(cnt);
	movf	(main@cnt),w
	fcall	_I2C_EEIN
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@val)
	line	1292
;eeprom_i2c.c: 1292: PORTB = I2C_EEIN(cnt);
	movf	(main@cnt),w
	fcall	_I2C_EEIN
	bcf	status, 5	;RP0=0, select bank0
	movwf	(6)	;volatile
	line	1293
;eeprom_i2c.c: 1293: pause (300);
	movlw	0
	movwf	(?_pause+3)
	movlw	0
	movwf	(?_pause+2)
	movlw	01h
	movwf	(?_pause+1)
	movlw	02Ch
	movwf	(?_pause)

	fcall	_pause
	line	1295
	
l3692:	
;eeprom_i2c.c: 1295: sprintf(buffer,"Directorio: %i ", cnt);
	movlw	((STR_7-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	movf	(main@cnt),w
	movwf	0+(?_sprintf)+01h
	clrf	1+(?_sprintf)+01h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	1296
	
l3694:	
;eeprom_i2c.c: 1296: for (char x = 0; x<16; x++)
	clrf	(main@x_1901)
	line	1298
	
l3700:	
;eeprom_i2c.c: 1297: {
;eeprom_i2c.c: 1298: putch (buffer[x]);
	movf	(main@x_1901),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	1296
	
l3702:	
	incf	(main@x_1901),f
	
l3704:	
	movlw	(010h)
	subwf	(main@x_1901),w
	skipc
	goto	u601
	goto	u600
u601:
	goto	l3700
u600:
	line	1301
	
l3706:	
;eeprom_i2c.c: 1299: }
;eeprom_i2c.c: 1301: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1302
;eeprom_i2c.c: 1302: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1304
	
l3708:	
;eeprom_i2c.c: 1304: sprintf(buffer,"Valor: %i ", val);
	movlw	((STR_8-__stringbase))&0ffh
	movwf	(?_sprintf)
	movf	(main@val),w
	movwf	0+(?_sprintf)+01h
	clrf	1+(?_sprintf)+01h
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	1305
	
l3710:	
;eeprom_i2c.c: 1305: for (char x = 0; x<10; x++)
	clrf	(main@x_1903)
	line	1307
	
l3716:	
;eeprom_i2c.c: 1306: {
;eeprom_i2c.c: 1307: putch (buffer[x]);
	movf	(main@x_1903),w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	1305
	
l3718:	
	incf	(main@x_1903),f
	
l3720:	
	movlw	(0Ah)
	subwf	(main@x_1903),w
	skipc
	goto	u611
	goto	u610
u611:
	goto	l3716
u610:
	line	1309
	
l3722:	
;eeprom_i2c.c: 1308: }
;eeprom_i2c.c: 1309: pause(100);
	movlw	064h
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1311
;eeprom_i2c.c: 1311: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	1312
;eeprom_i2c.c: 1312: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	1324
;eeprom_i2c.c: 1324: pause(255);
	movlw	0FFh
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1325
	
l3724:	
;eeprom_i2c.c: 1325: cnt=cnt + 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(main@cnt),f
	line	1289
	
l3726:	
	movlw	(015h)
	subwf	(main@cnt),w
	skipc
	goto	u621
	goto	u620
u621:
	goto	l3690
u620:
	line	1328
	
l1327:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_I2C_EEIN
psect	text436,local,class=CODE,delta=2
global __ptext436
__ptext436:

;; *************** function _I2C_EEIN *****************
;; Defined at:
;;		line 1129 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    9[COMMON] unsigned char 
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_start
;;		_i2c_write
;;		_i2c_repStart
;;		_i2c_read
;;		_i2c_stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text436
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1129
	global	__size_of_I2C_EEIN
	__size_of_I2C_EEIN	equ	__end_of_I2C_EEIN-_I2C_EEIN
	
_I2C_EEIN:	
	opt	stack 5
; Regs used in _I2C_EEIN: [wreg+status,2+status,0+pclath+cstack]
;I2C_EEIN@address stored from wreg
	line	1132
	movwf	(I2C_EEIN@address)
	
l3488:	
;eeprom_i2c.c: 1130: unsigned char data;
;eeprom_i2c.c: 1132: i2c_start();
	fcall	_i2c_start
	line	1133
;eeprom_i2c.c: 1133: i2c_write(0xa0);
	movlw	(0A0h)
	fcall	_i2c_write
	line	1134
;eeprom_i2c.c: 1134: i2c_write(address);
	movf	(I2C_EEIN@address),w
	fcall	_i2c_write
	line	1135
;eeprom_i2c.c: 1135: i2c_repStart();
	fcall	_i2c_repStart
	line	1136
;eeprom_i2c.c: 1136: i2c_write(0xa1);
	movlw	(0A1h)
	fcall	_i2c_write
	line	1137
;eeprom_i2c.c: 1137: data=i2c_read(0);
	movlw	(0)
	fcall	_i2c_read
	movf	(0+(?_i2c_read)),w
	movwf	(I2C_EEIN@data)
	line	1138
;eeprom_i2c.c: 1138: i2c_stop();
	fcall	_i2c_stop
	line	1139
	
l3490:	
;eeprom_i2c.c: 1139: return(data);
	movf	(I2C_EEIN@data),w
	line	1140
	
l1302:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_EEIN
	__end_of_I2C_EEIN:
;; =============== function _I2C_EEIN ends ============

	signat	_I2C_EEIN,4217
	global	_I2C_EEOUT
psect	text437,local,class=CODE,delta=2
global __ptext437
__ptext437:

;; *************** function _I2C_EEOUT *****************
;; Defined at:
;;		line 1114 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    8[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 100/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_i2c_start
;;		_i2c_write
;;		_i2c_stop
;;		_pause
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text437
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1114
	global	__size_of_I2C_EEOUT
	__size_of_I2C_EEOUT	equ	__end_of_I2C_EEOUT-_I2C_EEOUT
	
_I2C_EEOUT:	
	opt	stack 5
; Regs used in _I2C_EEOUT: [wreg+status,2+status,0+pclath+cstack]
;I2C_EEOUT@address stored from wreg
	movwf	(I2C_EEOUT@address)
	line	1115
	
l3486:	
;eeprom_i2c.c: 1115: i2c_start();
	fcall	_i2c_start
	line	1116
;eeprom_i2c.c: 1116: i2c_write(0xa0);
	movlw	(0A0h)
	fcall	_i2c_write
	line	1117
;eeprom_i2c.c: 1117: i2c_write(address);
	movf	(I2C_EEOUT@address),w
	fcall	_i2c_write
	line	1118
;eeprom_i2c.c: 1118: i2c_write(data);
	movf	(I2C_EEOUT@data),w
	fcall	_i2c_write
	line	1119
;eeprom_i2c.c: 1119: i2c_stop();
	fcall	_i2c_stop
	line	1120
;eeprom_i2c.c: 1120: pause(11);
	movlw	0Bh
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	line	1121
	
l1299:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_EEOUT
	__end_of_I2C_EEOUT:
;; =============== function _I2C_EEOUT ends ============

	signat	_I2C_EEOUT,8312
	global	_sprintf
psect	text438,local,class=CODE,delta=2
global __ptext438
__ptext438:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@buffer(15), 
;;  f               1    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_8(11), STR_7(16), STR_6(19), STR_5(11), 
;;		 -> STR_4(16), STR_3(18), STR_1(21), 
;; Auto vars:     Size  Location     Type
;;  sp              1   10[BANK0 ] PTR unsigned char 
;;		 -> main@buffer(15), 
;;  _val            4    6[BANK0 ] struct .
;;  c               1   11[BANK0 ] char 
;;  prec            1    5[BANK0 ] char 
;;  flag            1    4[BANK0 ] unsigned char 
;;  ap              1    3[BANK0 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      12       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text438
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 6
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	movwf	(sprintf@sp)
	
l3428:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)
	line	540
	goto	l3480
	line	542
	
l3430:	
	movf	(sprintf@c),w
	xorlw	025h
	skipnz
	goto	u461
	goto	u460
u461:
	goto	l3436
u460:
	line	545
	
l3432:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3434:	
	incf	(sprintf@sp),f
	line	546
	goto	l3480
	line	552
	
l3436:	
	clrf	(sprintf@flag)
	line	638
	
l3440:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; jumptable            260     6 (fixed)
; rangetable           110     6 (fixed)
; spacedrange          218     9 (fixed)
; locatedrange         106     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l3482
	xorlw	100^0	; case 100
	skipnz
	goto	l3442
	xorlw	105^100	; case 105
	skipnz
	goto	l3442
	goto	l3480
	opt asmopt_on

	line	1254
	
l3442:	
	movf	(sprintf@ap),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@_val+1)
	
l3444:	
	incf	(sprintf@ap),f
	incf	(sprintf@ap),f
	line	1256
	
l3446:	
	btfss	(sprintf@_val+1),7
	goto	u471
	goto	u470
u471:
	goto	l3452
u470:
	line	1257
	
l3448:	
	movlw	(03h)
	iorwf	(sprintf@flag),f
	line	1258
	
l3450:	
	comf	(sprintf@_val),f
	comf	(sprintf@_val+1),f
	incf	(sprintf@_val),f
	skipnz
	incf	(sprintf@_val+1),f
	line	1300
	
l3452:	
	clrf	(sprintf@c)
	incf	(sprintf@c),f
	line	1301
	
l3456:	
	clrc
	rlf	(sprintf@c),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	fcall	stringdir
	movwf	(??_sprintf+0)+0+1
	movf	1+(??_sprintf+0)+0,w
	subwf	(sprintf@_val+1),w
	skipz
	goto	u485
	movf	0+(??_sprintf+0)+0,w
	subwf	(sprintf@_val),w
u485:
	skipnc
	goto	u481
	goto	u480
u481:
	goto	l3460
u480:
	goto	l3464
	line	1300
	
l3460:	
	incf	(sprintf@c),f
	
l3462:	
	movf	(sprintf@c),w
	xorlw	05h
	skipz
	goto	u491
	goto	u490
u491:
	goto	l3456
u490:
	line	1433
	
l3464:	
	movf	(sprintf@flag),w
	andlw	03h
	btfsc	status,2
	goto	u501
	goto	u500
u501:
	goto	l3470
u500:
	line	1434
	
l3466:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3468:	
	incf	(sprintf@sp),f
	line	1467
	
l3470:	
	movf	(sprintf@c),w
	movwf	(sprintf@prec)
	line	1469
	goto	l3478
	line	1484
	
l3472:	
	movlw	0Ah
	movwf	(?___lwmod)
	clrf	(?___lwmod+1)
	clrc
	rlf	(sprintf@prec),w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lwdiv)
	fcall	stringdir
	movwf	(?___lwdiv+1)
	movf	(sprintf@_val+1),w
	movwf	1+(?___lwdiv)+02h
	movf	(sprintf@_val),w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	movwf	0+(?___lwmod)+02h
	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	movwf	(sprintf@c)
	line	1516
	
l3474:	
	movf	(sprintf@sp),w
	movwf	fsr0
	movf	(sprintf@c),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l3476:	
	incf	(sprintf@sp),f
	line	1469
	
l3478:	
	decf	(sprintf@prec),f
	incf	((sprintf@prec)),w
	skipz
	goto	u511
	goto	u510
u511:
	goto	l3472
u510:
	line	540
	
l3480:	
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	movwf	(sprintf@c)
	movf	((sprintf@c)),f
	skipz
	goto	u521
	goto	u520
u521:
	goto	l3430
u520:
	line	1530
	
l3482:	
	movf	(sprintf@sp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1355:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_i2c_write
psect	text439,local,class=CODE,delta=2
global __ptext439
__ptext439:

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 1101 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  i2cWriteData    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i2cWriteData    1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 140/20
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_waitForIdle
;; This function is called by:
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text439
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1101
	global	__size_of_i2c_write
	__size_of_i2c_write	equ	__end_of_i2c_write-_i2c_write
	
_i2c_write:	
	opt	stack 5
; Regs used in _i2c_write: [wreg+status,2+status,0+pclath+cstack]
;i2c_write@i2cWriteData stored from wreg
	movwf	(i2c_write@i2cWriteData)
	line	1102
	
l3420:	
;eeprom_i2c.c: 1102: i2c_waitForIdle();
	fcall	_i2c_waitForIdle
	line	1103
	
l3422:	
;eeprom_i2c.c: 1103: SSPBUF = i2cWriteData;
	movf	(i2c_write@i2cWriteData),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(19)	;volatile
	line	1105
	
l3424:	
;eeprom_i2c.c: 1105: return ( ! ACKSTAT );
;	Return value of _i2c_write is never used
	line	1106
	
l1296:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
;; =============== function _i2c_write ends ============

	signat	_i2c_write,4217
	global	_i2c_read
psect	text440,local,class=CODE,delta=2
global __ptext440
__ptext440:

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 1072 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    7[COMMON] unsigned char 
;;  i2cReadData     1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_waitForIdle
;; This function is called by:
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text440
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1072
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:	
	opt	stack 5
; Regs used in _i2c_read: [wreg+status,2+status,0+pclath+cstack]
;i2c_read@ack stored from wreg
	line	1075
	movwf	(i2c_read@ack)
	
l3406:	
;eeprom_i2c.c: 1073: unsigned char i2cReadData;
;eeprom_i2c.c: 1075: i2c_waitForIdle();
	fcall	_i2c_waitForIdle
	line	1077
	
l3408:	
;eeprom_i2c.c: 1077: RCEN=1;
	bsf	(1163/8)^080h,(1163)&7
	line	1079
;eeprom_i2c.c: 1079: i2c_waitForIdle();
	fcall	_i2c_waitForIdle
	line	1081
	
l3410:	
;eeprom_i2c.c: 1081: i2cReadData = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	movf	(19),w	;volatile
	movwf	(i2c_read@i2cReadData)
	line	1083
	
l3412:	
;eeprom_i2c.c: 1083: i2c_waitForIdle();
	fcall	_i2c_waitForIdle
	line	1085
;eeprom_i2c.c: 1085: if ( ack )
	movf	(i2c_read@ack),w
	skipz
	goto	u450
	goto	l1291
u450:
	line	1087
	
l3414:	
;eeprom_i2c.c: 1086: {
;eeprom_i2c.c: 1087: ACKDT=0;
	bcf	(1165/8)^080h,(1165)&7
	line	1088
;eeprom_i2c.c: 1088: }
	goto	l1292
	line	1089
	
l1291:	
	line	1091
;eeprom_i2c.c: 1089: else
;eeprom_i2c.c: 1090: {
;eeprom_i2c.c: 1091: ACKDT=1;
	bsf	(1165/8)^080h,(1165)&7
	line	1092
	
l1292:	
	line	1093
;eeprom_i2c.c: 1092: }
;eeprom_i2c.c: 1093: ACKEN=1;
	bsf	(1164/8)^080h,(1164)&7
	line	1095
	
l3416:	
;eeprom_i2c.c: 1095: return( i2cReadData );
	movf	(i2c_read@i2cReadData),w
	movwf	(?_i2c_read)
	clrf	(?_i2c_read+1)
	line	1096
	
l1293:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
;; =============== function _i2c_read ends ============

	signat	_i2c_read,4218
	global	_i2c_stop
psect	text441,local,class=CODE,delta=2
global __ptext441
__ptext441:

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 1064 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 140/20
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_waitForIdle
;; This function is called by:
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text441
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1064
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
	opt	stack 5
; Regs used in _i2c_stop: [wreg+status,2+status,0+pclath+cstack]
	line	1065
	
l3402:	
;eeprom_i2c.c: 1065: i2c_waitForIdle();
	fcall	_i2c_waitForIdle
	line	1066
	
l3404:	
;eeprom_i2c.c: 1066: PEN=1;
	bsf	(1162/8)^080h,(1162)&7
	line	1067
	
l1288:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
;; =============== function _i2c_stop ends ============

	signat	_i2c_stop,88
	global	_i2c_repStart
psect	text442,local,class=CODE,delta=2
global __ptext442
__ptext442:

;; *************** function _i2c_repStart *****************
;; Defined at:
;;		line 1056 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_waitForIdle
;; This function is called by:
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text442
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1056
	global	__size_of_i2c_repStart
	__size_of_i2c_repStart	equ	__end_of_i2c_repStart-_i2c_repStart
	
_i2c_repStart:	
	opt	stack 5
; Regs used in _i2c_repStart: [wreg+status,2+status,0+pclath+cstack]
	line	1057
	
l3398:	
;eeprom_i2c.c: 1057: i2c_waitForIdle();
	fcall	_i2c_waitForIdle
	line	1058
	
l3400:	
;eeprom_i2c.c: 1058: RSEN=1;
	bsf	(1161/8)^080h,(1161)&7
	line	1059
	
l1285:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_repStart
	__end_of_i2c_repStart:
;; =============== function _i2c_repStart ends ============

	signat	_i2c_repStart,88
	global	_i2c_start
psect	text443,local,class=CODE,delta=2
global __ptext443
__ptext443:

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 1048 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_waitForIdle
;; This function is called by:
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text443
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1048
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 5
; Regs used in _i2c_start: [wreg+status,2+status,0+pclath+cstack]
	line	1049
	
l3394:	
;eeprom_i2c.c: 1049: i2c_waitForIdle();
	fcall	_i2c_waitForIdle
	line	1050
	
l3396:	
;eeprom_i2c.c: 1050: SEN=1;
	bsf	(1160/8)^080h,(1160)&7
	line	1051
	
l1282:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,88
	global	_lcd_goto
psect	text444,local,class=CODE,delta=2
global __ptext444
__ptext444:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 682 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text444
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	682
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 6
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	683
	
l3390:	
;eeprom_i2c.c: 683: RA7 = 0;
	bcf	(47/8),(47)&7
	line	684
	
l3392:	
;eeprom_i2c.c: 684: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	685
	
l1201:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_puts
psect	text445,local,class=CODE,delta=2
global __ptext445
__ptext445:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 656 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(14), 
;; Auto vars:     Size  Location     Type
;;  s               1    2[COMMON] PTR const unsigned char 
;;		 -> STR_2(14), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text445
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	656
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 6
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcd_puts@s stored from wreg
	movwf	(lcd_puts@s)
	line	657
	
l3382:	
;eeprom_i2c.c: 657: RA7 = 1;
	bsf	(47/8),(47)&7
	line	658
;eeprom_i2c.c: 658: while(*s)
	goto	l3388
	line	659
	
l3384:	
;eeprom_i2c.c: 659: lcd_write(*s++);
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_lcd_write
	
l3386:	
	incf	(lcd_puts@s),f
	line	658
	
l3388:	
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u441
	goto	u440
u441:
	goto	l3384
u440:
	line	660
	
l1195:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text446,local,class=CODE,delta=2
global __ptext446
__ptext446:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 643 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text446
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	643
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 6
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	644
	
l3378:	
;eeprom_i2c.c: 644: RA7 = 0;
	bcf	(47/8),(47)&7
	line	645
	
l3380:	
;eeprom_i2c.c: 645: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	647
	
l1189:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	_pause
psect	text447,local,class=CODE,delta=2
global __ptext447
__ptext447:

;; *************** function _pause *****************
;; Defined at:
;;		line 198 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  usvalue         4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  x               4    4[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_msecbase
;; This function is called by:
;;		_I2C_EEOUT
;;		_main
;; This function uses a non-reentrant model
;;
psect	text447
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	198
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	200
	
l3370:	
;eeprom_i2c.c: 199: unsigned long x;
;eeprom_i2c.c: 200: for (x=1; x<=(usvalue); x++)
	clrf	(pause@x)
	incf	(pause@x),f
	clrf	(pause@x+1)
	clrf	(pause@x+2)
	clrf	(pause@x+3)
	goto	l3376
	line	202
	
l3372:	
;eeprom_i2c.c: 201: {
;eeprom_i2c.c: 202: msecbase();
	fcall	_msecbase
	line	200
	
l3374:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	skipnz
	incf	(pause@x+2),f
	skipnz
	incf	(pause@x+3),f
	
l3376:	
	movf	(pause@x+3),w
	subwf	(pause@usvalue+3),w
	skipz
	goto	u435
	movf	(pause@x+2),w
	subwf	(pause@usvalue+2),w
	skipz
	goto	u435
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u435
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u435:
	skipnc
	goto	u431
	goto	u430
u431:
	goto	l3372
u430:
	line	204
	
l1075:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___lwmod
psect	text448,local,class=CODE,delta=2
global __ptext448
__ptext448:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] unsigned int 
;;  dividend        2    9[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text448
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3350:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u391
	goto	u390
u391:
	goto	l3366
u390:
	line	9
	
l3352:	
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	10
	goto	l3356
	line	11
	
l3354:	
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	line	12
	incf	(___lwmod@counter),f
	line	10
	
l3356:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u401
	goto	u400
u401:
	goto	l3354
u400:
	line	15
	
l3358:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u415
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u415:
	skipc
	goto	u411
	goto	u410
u411:
	goto	l3362
u410:
	line	16
	
l3360:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	line	17
	
l3362:	
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	line	18
	
l3364:	
	decfsz	(___lwmod@counter),f
	goto	u421
	goto	u420
u421:
	goto	l3358
u420:
	line	20
	
l3366:	
	movf	(___lwmod@dividend+1),w
	movwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	movwf	(?___lwmod)
	line	21
	
l2367:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text449,local,class=CODE,delta=2
global __ptext449
__ptext449:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMMON] unsigned int 
;;  counter         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text449
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l3324:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l3326:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u351
	goto	u350
u351:
	goto	l3346
u350:
	line	11
	
l3328:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l3332
	line	13
	
l3330:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l3332:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u361
	goto	u360
u361:
	goto	l3330
u360:
	line	17
	
l3334:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l3336:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u375
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u375:
	skipc
	goto	u371
	goto	u370
u371:
	goto	l3342
u370:
	line	19
	
l3338:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3340:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l3342:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l3344:	
	decfsz	(___lwdiv@counter),f
	goto	u381
	goto	u380
u381:
	goto	l3334
u380:
	line	25
	
l3346:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2357:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_i2c_waitForIdle
psect	text450,local,class=CODE,delta=2
global __ptext450
__ptext450:

;; *************** function _i2c_waitForIdle *****************
;; Defined at:
;;		line 1041 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 140/20
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_repStart
;;		_i2c_stop
;;		_i2c_read
;;		_i2c_write
;; This function uses a non-reentrant model
;;
psect	text450
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1041
	global	__size_of_i2c_waitForIdle
	__size_of_i2c_waitForIdle	equ	__end_of_i2c_waitForIdle-_i2c_waitForIdle
	
_i2c_waitForIdle:	
	opt	stack 5
; Regs used in _i2c_waitForIdle: [wreg+status,2+status,0]
	line	1042
	
l3320:	
;eeprom_i2c.c: 1042: while (( SSPCON2 & 0x1F ) | R_W ) {};
	
l3322:	
	clrc
	bsf	status, 5	;RP0=1, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_i2c_waitForIdle+0)+0
	clrf	(??_i2c_waitForIdle+0)+0+1
	movlw	(01Fh)
	andwf	(145)^080h,w
	movwf	(??_i2c_waitForIdle+2)+0
	movf	0+(??_i2c_waitForIdle+0)+0,w
	iorwf	0+(??_i2c_waitForIdle+2)+0,w
	movwf	(??_i2c_waitForIdle+3)+0
	movf	1+(??_i2c_waitForIdle+0)+0,w
	movwf	1+(??_i2c_waitForIdle+3)+0
	movf	1+(??_i2c_waitForIdle+3)+0,w
	iorwf	0+(??_i2c_waitForIdle+3)+0,w
	skipz
	goto	u341
	goto	u340
u341:
	goto	l3322
u340:
	line	1043
	
l1279:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_waitForIdle
	__end_of_i2c_waitForIdle:
;; =============== function _i2c_waitForIdle ends ============

	signat	_i2c_waitForIdle,88
	global	_i2c_init
psect	text451,local,class=CODE,delta=2
global __ptext451
__ptext451:

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 1020 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/40
;;		On exit  : 17F/0
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text451
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	1020
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
	opt	stack 7
; Regs used in _i2c_init: [wreg+status,2]
	line	1021
	
l3304:	
;eeprom_i2c.c: 1021: TRISC3=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	1022
;eeprom_i2c.c: 1022: TRISC4=1;
	bsf	(1084/8)^080h,(1084)&7
	line	1024
	
l3306:	
;eeprom_i2c.c: 1024: SSPCON = 0x38;
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	1025
	
l3308:	
;eeprom_i2c.c: 1025: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(145)^080h	;volatile
	line	1028
	
l3310:	
;eeprom_i2c.c: 1028: SSPADD = 0x27;
	movlw	(027h)
	movwf	(147)^080h	;volatile
	line	1031
	
l3312:	
;eeprom_i2c.c: 1031: CKE=1;
	bsf	(1190/8)^080h,(1190)&7
	line	1032
	
l3314:	
;eeprom_i2c.c: 1032: SMP=1;
	bsf	(1191/8)^080h,(1191)&7
	line	1034
	
l3316:	
;eeprom_i2c.c: 1034: SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(99/8),(99)&7
	line	1035
	
l3318:	
;eeprom_i2c.c: 1035: BCLIF=0;
	bcf	(107/8),(107)&7
	line	1036
	
l1273:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
;; =============== function _i2c_init ends ============

	signat	_i2c_init,88
	global	_putch
psect	text452,local,class=CODE,delta=2
global __ptext452
__ptext452:

;; *************** function _putch *****************
;; Defined at:
;;		line 776 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text452
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	776
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 7
; Regs used in _putch: [wreg]
;putch@byte stored from wreg
	movwf	(putch@byte)
	line	778
	
l3300:	
	line	779
;eeprom_i2c.c: 778: while(!TXIF)
	
l1215:	
	line	778
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u331
	goto	u330
u331:
	goto	l1215
u330:
	line	780
	
l3302:	
;eeprom_i2c.c: 780: TXREG = byte;
	movf	(putch@byte),w
	movwf	(25)	;volatile
	line	781
	
l1218:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_lcd_write
psect	text453,local,class=CODE,delta=2
global __ptext453
__ptext453:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 623 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
;;  temp            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 160/0
;;		On exit  : 160/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_goto
;;		_main
;; This function uses a non-reentrant model
;;
psect	text453
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	623
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 6
; Regs used in _lcd_write: [wreg+status,2+status,0]
;lcd_write@c stored from wreg
	line	626
	movwf	(lcd_write@c)
	
l3282:	
;eeprom_i2c.c: 626: char temp = ( ( ( c >> 4 ) & 0x0F );
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	movwf	(lcd_write@temp)
	movlw	(0Fh)
	andwf	(lcd_write@temp),f
	line	627
;eeprom_i2c.c: 627: PORTD = PORTD & 0xF0;
	movlw	(0F0h)
	andwf	(8),f	;volatile
	line	628
;eeprom_i2c.c: 628: PORTD = PORTD + temp;
	movf	(lcd_write@temp),w
	addwf	(8),f	;volatile
	line	629
	
l3284:	
;eeprom_i2c.c: 629: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l3286:	
	bcf	(46/8),(46)&7
	line	631
	
l3288:	
;eeprom_i2c.c: 631: temp = ( c & 0x0F );
	movf	(lcd_write@c),w
	movwf	(lcd_write@temp)
	
l3290:	
	movlw	(0Fh)
	andwf	(lcd_write@temp),f
	line	632
	
l3292:	
;eeprom_i2c.c: 632: PORTD = PORTD & 0xF0;
	movlw	(0F0h)
	andwf	(8),f	;volatile
	line	633
	
l3294:	
;eeprom_i2c.c: 633: PORTD = PORTD + temp;
	movf	(lcd_write@temp),w
	addwf	(8),f	;volatile
	line	634
	
l3296:	
;eeprom_i2c.c: 634: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l3298:	
	bcf	(46/8),(46)&7
	line	635
	
l1186:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_msecbase
psect	text454,local,class=CODE,delta=2
global __ptext454
__ptext454:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 182 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pause
;; This function uses a non-reentrant model
;;
psect	text454
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	182
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	183
	
l3280:	
;eeprom_i2c.c: 183: OPTION_REG = 0b00000011;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	184
;eeprom_i2c.c: 184: TMR0 = 0xD;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	185
;eeprom_i2c.c: 185: while(!T0IF);
	
l1066:	
	btfss	(90/8),(90)&7
	goto	u321
	goto	u320
u321:
	goto	l1066
u320:
	
l1068:	
	line	186
;eeprom_i2c.c: 186: T0IF = 0;
	bcf	(90/8),(90)&7
	line	187
	
l1069:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_init_micro
psect	text455,local,class=CODE,delta=2
global __ptext455
__ptext455:

;; *************** function _init_micro *****************
;; Defined at:
;;		line 112 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/40
;;		Unchanged: FFE80/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text455
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	112
	global	__size_of_init_micro
	__size_of_init_micro	equ	__end_of_init_micro-_init_micro
	
_init_micro:	
	opt	stack 7
; Regs used in _init_micro: [status,2]
	line	113
	
l3278:	
;eeprom_i2c.c: 113: ANSEL = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	114
;eeprom_i2c.c: 114: ANSELH = 0;
	clrf	(393)^0180h	;volatile
	line	115
;eeprom_i2c.c: 115: CM1CON0 = 0;
	bcf	status, 5	;RP0=0, select bank2
	clrf	(263)^0100h	;volatile
	line	116
;eeprom_i2c.c: 116: CM2CON0 = 0;
	clrf	(264)^0100h	;volatile
	line	121
;eeprom_i2c.c: 121: INTCON=0;
	clrf	(11)	;volatile
	line	122
	
l1051:	
	return
	opt stack 0
GLOBAL	__end_of_init_micro
	__end_of_init_micro:
;; =============== function _init_micro ends ============

	signat	_init_micro,88
psect	text456,local,class=CODE,delta=2
global __ptext456
__ptext456:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
