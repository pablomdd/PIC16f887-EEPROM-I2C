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
# 5 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	psect config,class=CONFIG,delta=2 ;#
# 5 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xEFFF & 0xFFFF ;#
# 7 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_main,_lcd_write
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_putch
	FNCALL	_main,_sprintf
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_i2c_init
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,_I2C_EEOUT
	FNCALL	_main,_I2C_EEIN
	FNCALL	_sprintf,_isdigit
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,_scale
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	_lcd_goto,_lcd_write
	FNCALL	_lcd_puts,_lcd_write
	FNCALL	_lcd_clear,_lcd_write
	FNCALL	_lcd_clear,_pause
	FNCALL	___ftsub,___ftadd
	FNCALL	_scale,___awmod
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___ftmul
	FNCALL	_scale,___bmul
	FNCALL	_fround,___lbmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___lbdiv
	FNCALL	_fround,___ftmul
	FNCALL	_lcd_write,_pause
	FNCALL	_I2C_EEOUT,_i2c_start
	FNCALL	_I2C_EEOUT,_i2c_write
	FNCALL	_I2C_EEOUT,_i2c_stop
	FNCALL	_I2C_EEOUT,_pause
	FNCALL	___lltoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_I2C_EEIN,_i2c_start
	FNCALL	_I2C_EEIN,_i2c_write
	FNCALL	_I2C_EEIN,_i2c_restart
	FNCALL	_I2C_EEIN,_i2c_read
	FNCALL	_I2C_EEIN,_I2C_nack
	FNCALL	_I2C_EEIN,_i2c_stop
	FNCALL	_pause,_msecbase
	FNROOT	_main
	global	__npowers_
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global	_dpowers
psect	strings
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
	line	350
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global	__npowers_
	global	__powers_
	global	_dpowers
	global	_num
	global	_nin
	global	_carac
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PIR1
_PIR1	set	12
	global	_PIR1bits
_PIR1bits	set	12
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
	global	_T2CON
_T2CON	set	18
	global	_TMR0
_TMR0	set	1
	global	_TXREG
_TXREG	set	25
	global	_GO_DONE
_GO_DONE	set	249
	global	_RA4
_RA4	set	44
	global	_RA6
_RA6	set	46
	global	_RA7
_RA7	set	47
	global	_T0IF
_T0IF	set	90
	global	_TXIF
_TXIF	set	100
	global	_ADRESL
_ADRESL	set	158
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_OSCCON
_OSCCON	set	143
	global	_PR2
_PR2	set	146
	global	_SPBRG
_SPBRG	set	153
	global	_SSPADD
_SSPADD	set	147
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPCON2bits
_SSPCON2bits	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISCbits
_TRISCbits	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_BAUDCTL
_BAUDCTL	set	391
	global	_PORTA
_PORTA	set	5
	
STR_1:	
	retlw	69	;'E'
	retlw	115	;'s'
	retlw	99	;'c'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_7:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	121	;'y'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	86	;'V'
	retlw	37	;'%'
	retlw	105	;'i'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	37	;'%'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	76	;'L'
	retlw	101	;'e'
	retlw	121	;'y'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_11:	
	retlw	40	;'('
	retlw	110	;'n'
	retlw	117	;'u'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	41	;')'
	retlw	0
psect	strings
	
STR_3:	
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	51	;'3'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_4:	
	retlw	86	;'V'
	retlw	49	;'1'
	retlw	58	;':'
	retlw	0
psect	strings
STR_8	equ	STR_3+0
STR_9	equ	STR_4+0
STR_2	equ	STR_1+0
STR_10	equ	STR_5+0
	file	"EEPROM_12C.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_num:
       ds      3

_nin:
       ds      2

_carac:
       ds      5

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	clrf	((__pbssBANK1)+2)&07Fh
	clrf	((__pbssBANK1)+3)&07Fh
	clrf	((__pbssBANK1)+4)&07Fh
	clrf	((__pbssBANK1)+5)&07Fh
	clrf	((__pbssBANK1)+6)&07Fh
	clrf	((__pbssBANK1)+7)&07Fh
	clrf	((__pbssBANK1)+8)&07Fh
	clrf	((__pbssBANK1)+9)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_sprintf$1951
_sprintf$1951:	; 4 bytes @ 0x0
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x4
	ds	1
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x5
	ds	3
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x8
	ds	2
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0xA
	ds	2
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0xC
	ds	2
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0xE
	ds	3
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x11
	ds	1
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x12
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x14
	ds	1
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x15
	ds	4
	global	main@buffer
main@buffer:	; 15 bytes @ 0x19
	ds	15
	global	main@cnt1
main@cnt1:	; 1 bytes @ 0x28
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x29
	ds	2
	global	main@x
main@x:	; 1 bytes @ 0x2B
	ds	1
	global	main@x_1874
main@x_1874:	; 1 bytes @ 0x2C
	ds	1
	global	main@x_1877
main@x_1877:	; 1 bytes @ 0x2D
	ds	1
	global	main@x_1881
main@x_1881:	; 1 bytes @ 0x2E
	ds	1
	global	main@cnt2
main@cnt2:	; 1 bytes @ 0x2F
	ds	1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?_msecbase
?_msecbase:	; 0 bytes @ 0x0
	global	??_msecbase
??_msecbase:	; 0 bytes @ 0x0
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	?_i2c_init
?_i2c_init:	; 0 bytes @ 0x0
	global	??_i2c_init
??_i2c_init:	; 0 bytes @ 0x0
	global	?_i2c_start
?_i2c_start:	; 0 bytes @ 0x0
	global	??_i2c_start
??_i2c_start:	; 0 bytes @ 0x0
	global	?_i2c_restart
?_i2c_restart:	; 0 bytes @ 0x0
	global	??_i2c_restart
??_i2c_restart:	; 0 bytes @ 0x0
	global	?_i2c_stop
?_i2c_stop:	; 0 bytes @ 0x0
	global	??_i2c_stop
??_i2c_stop:	; 0 bytes @ 0x0
	global	??_i2c_read
??_i2c_read:	; 0 bytes @ 0x0
	global	?_I2C_nack
?_I2C_nack:	; 0 bytes @ 0x0
	global	??_I2C_nack
??_I2C_nack:	; 0 bytes @ 0x0
	global	?_i2c_write
?_i2c_write:	; 0 bytes @ 0x0
	global	??_i2c_write
??_i2c_write:	; 0 bytes @ 0x0
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x0
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?_i2c_read
?_i2c_read:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	i2c_write@I2C_data
i2c_write@I2C_data:	; 1 bytes @ 0x0
	global	putch@dato
putch@dato:	; 1 bytes @ 0x0
	global	_isdigit$2459
_isdigit$2459:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??___lbmod
??___lbmod:	; 0 bytes @ 0x1
	global	?_I2C_EEIN
?_I2C_EEIN:	; 1 bytes @ 0x1
	global	I2C_EEIN@address2
I2C_EEIN@address2:	; 1 bytes @ 0x1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	??_I2C_EEIN
??_I2C_EEIN:	; 0 bytes @ 0x2
	global	I2C_EEIN@address1
I2C_EEIN@address1:	; 1 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
	global	I2C_EEIN@data
I2C_EEIN@data:	; 1 bytes @ 0x3
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	ds	1
	global	?_I2C_EEOUT
?_I2C_EEOUT:	; 0 bytes @ 0x4
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	I2C_EEOUT@address2
I2C_EEOUT@address2:	; 1 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x5
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x5
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x5
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x5
	global	I2C_EEOUT@data
I2C_EEOUT@data:	; 1 bytes @ 0x5
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x5
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x5
	ds	1
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
	global	??_I2C_EEOUT
??_I2C_EEOUT:	; 0 bytes @ 0x6
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	I2C_EEOUT@address1
I2C_EEOUT@address1:	; 1 bytes @ 0x6
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x7
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x8
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	?___bmul
?___bmul:	; 1 bytes @ 0x9
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x9
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0xA
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xA
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0xA
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xA
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xB
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xB
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xB
	ds	1
	global	??___lltoft
??___lltoft:	; 0 bytes @ 0xC
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xC
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xC
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0xC
	ds	1
	global	??___llmod
??___llmod:	; 0 bytes @ 0xD
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0xD
	ds	1
	global	??_fround
??_fround:	; 0 bytes @ 0xE
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x0
	ds	4
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	1
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x5
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x7
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x8
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xC
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xD
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xD
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x10
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x13
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x16
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x17
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1B
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x1C
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x1C
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x1C
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x1F
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1F
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x22
	ds	1
	global	_scale$2943
_scale$2943:	; 3 bytes @ 0x23
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x25
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x26
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x26
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x27
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x28
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x28
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x28
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x2B
	global	_fround$2942
_fround$2942:	; 3 bytes @ 0x2B
	ds	3
	global	_fround$2941
_fround$2941:	; 3 bytes @ 0x2E
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x31
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x32
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x32
	ds	4
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x36
	ds	5
	global	??_main
??_main:	; 0 bytes @ 0x3B
	ds	1
;;Data sizes: Strings 67, constant 118, data 0, bss 10, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     60      60
;; BANK1           80     48      58
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 5
;;		 -> carac(BANK1[5]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 5
;;		 -> carac(BANK1[5]), 
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 5
;;		 -> carac(BANK1[5]), 
;;
;; ?___ftadd	float  size(1) Largest target is 5
;;		 -> carac(BANK1[5]), 
;;
;; ?___ftneg	float  size(1) Largest target is 5
;;		 -> carac(BANK1[5]), 
;;
;; ?___awmod	int  size(2) Largest target is 40
;;		 -> dpowers(CODE[40]), carac(BANK1[5]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?_fround	unsigned int  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; sprintf@_val._cp	PTR const unsigned char  size(2) Largest target is 7
;;		 -> STR_11(CODE[7]), carac(BANK1[5]), 
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 15
;;		 -> STR_10(CODE[11]), STR_8(CODE[6]), STR_7(CODE[13]), STR_5(CODE[11]), 
;;		 -> STR_3(CODE[6]), STR_1(CODE[15]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 15
;;		 -> carac(BANK1[5]), main@buffer(BANK1[15]), 
;;
;; ?_sprintf	int  size(1) Largest target is 5
;;		 -> carac(BANK1[5]), 
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1936$_cp	PTR const unsigned char  size(2) Largest target is 7
;;		 -> STR_11(CODE[7]), carac(BANK1[5]), 
;;
;; _val._str._cp	PTR const unsigned char  size(2) Largest target is 7
;;		 -> STR_11(CODE[7]), carac(BANK1[5]), 
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 15
;;		 -> STR_9(CODE[4]), STR_6(CODE[11]), STR_4(CODE[4]), carac(BANK1[5]), 
;;		 -> STR_2(CODE[15]), 
;;
;; pa	PTR unsigned char  size(1) Largest target is 1
;;		 -> PORTA(BITSFR0[1]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _sprintf->___awdiv
;;   _sprintf->__div_to_l_
;;   _sprintf->___llmod
;;   _lcd_goto->_lcd_write
;;   _lcd_puts->_lcd_write
;;   _lcd_clear->_lcd_write
;;   _scale->___awdiv
;;   _lcd_write->_pause
;;   _I2C_EEOUT->_pause
;;   ___lltoft->___ftpack
;;   ___awtoft->___ftpack
;;   ___ftmul->___awdiv
;;   _I2C_EEIN->_i2c_write
;;   ___llmod->___lldiv
;;   ___awdiv->___awmod
;;   ___fttol->___awdiv
;;   ___lbdiv->___lbmod
;;   ___bmul->___lbdiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_sprintf
;;   _sprintf->_fround
;;   ___ftsub->___ftadd
;;   _scale->___ftmul
;;   _fround->___ftadd
;;   ___ftmul->___fttol
;;   ___ftadd->___ftmul
;;
;; Critical Paths under _main in BANK1
;;
;;   _main->_sprintf
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                38    38      0   13223
;;                                             59 BANK0      1     1      0
;;                                             25 BANK1     23    23      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;;                              _putch
;;                            _sprintf
;;                           _lcd_goto
;;                           _lcd_puts
;;                           _i2c_init
;;                           ___awtoft
;;                            ___ftmul
;;                          _I2C_EEOUT
;;                           _I2C_EEIN
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             38    34      4   10852
;;                                             50 BANK0      9     5      4
;;                                              0 BANK1     25    25      0
;;                            _isdigit
;;                             ___wmul
;;                             ___ftge
;;                            ___ftneg
;;                            ___awdiv
;;                              _scale
;;                            ___ftmul
;;                             _fround
;;                            ___ftadd
;;                            ___fttol
;;                         __div_to_l_
;;                        __tdiv_to_l_
;;                           ___lltoft
;;                            ___ftsub
;;                            ___lldiv
;;                            ___llmod
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
;;                                              5 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     0      2     135
;;                                              5 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     136
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) ___ftsub                                              6     0      6    1094
;;                                             40 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    1688
;;                                             28 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1215
;;                                             40 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            1     1      0      90
;;                                              4 COMMON     1     1      0
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (1) _I2C_EEOUT                                            3     1      2     134
;;                                              4 COMMON     3     1      2
;;                          _i2c_start
;;                          _i2c_write
;;                           _i2c_stop
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) ___lltoft                                             5     1      4     278
;;                                              8 COMMON     5     1      4
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___awtoft                                             4     1      3     300
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             15     9      6     535
;;                                             13 BANK0     15     9      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1049
;;                                             28 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _I2C_EEIN                                             3     2      1      89
;;                                              1 COMMON     3     2      1
;;                          _i2c_start
;;                          _i2c_write
;;                        _i2c_restart
;;                           _i2c_read
;;                           _I2C_nack
;;                           _i2c_stop
;; ---------------------------------------------------------------------------------
;; (2) _pause                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;;                           _msecbase
;; ---------------------------------------------------------------------------------
;; (3) ___awmod                                              6     2      4     296
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             13     5      8     162
;;                                              0 COMMON    13     5      8
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                               6     0      6     136
;;                                              0 COMMON     6     0      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                              9     1      8     159
;;                                             13 COMMON     1     1      0
;;                                              0 BANK0      8     0      8
;;                            ___lldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___awdiv                                              8     4      4     300
;;                                              6 COMMON     8     4      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             13     9      4     252
;;                                              0 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     162
;;                                              5 COMMON     4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) ___bmul                                               3     2      1      68
;;                                              9 COMMON     3     2      1
;;                            ___lbmod (ARG)
;;                            ___lbdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (2) __div_to_l_                                          20    14      6     446
;;                                              0 COMMON    14     8      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) __tdiv_to_l_                                         15     9      6     303
;;                                              0 COMMON     9     3      6
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) _isdigit                                              2     2      0      68
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _putch                                                1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _i2c_write                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _I2C_nack                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _i2c_read                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _i2c_stop                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _i2c_restart                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _i2c_start                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _i2c_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _msecbase                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pause
;;     _msecbase
;;   _lcd_write
;;     _pause
;;       _msecbase
;;   _lcd_clear
;;     _lcd_write
;;       _pause
;;         _msecbase
;;     _pause
;;       _msecbase
;;   _putch
;;   _sprintf
;;     _isdigit
;;     ___wmul
;;     ___ftge
;;     ___ftneg
;;     ___awdiv
;;       ___awmod (ARG)
;;     _scale
;;       ___awmod
;;       ___awdiv
;;         ___awmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___bmul
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___lbmod (ARG)
;;     _fround
;;       ___lbmod
;;       ___bmul
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv
;;         ___lbmod (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___lbmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;       ___ftmul (ARG)
;;         ___ftpack
;;         ___awtoft (ARG)
;;           ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___lbmod (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     __div_to_l_
;;     __tdiv_to_l_
;;     ___lltoft
;;       ___ftpack
;;     ___ftsub
;;       ___ftadd
;;         ___ftpack
;;         ___lbmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;         ___ftmul (ARG)
;;           ___ftpack
;;           ___awtoft (ARG)
;;             ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;           ___lbmod (ARG)
;;       ___lltoft (ARG)
;;         ___ftpack
;;     ___lldiv
;;     ___llmod
;;       ___lldiv (ARG)
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _i2c_init
;;   ___awtoft
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___awtoft (ARG)
;;       ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;     ___awdiv (ARG)
;;       ___awmod (ARG)
;;     ___awmod (ARG)
;;     ___bmul (ARG)
;;       ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
;;     ___lbdiv (ARG)
;;       ___lbmod (ARG)
;;     ___lbmod (ARG)
;;   _I2C_EEOUT
;;     _i2c_start
;;     _i2c_write
;;     _i2c_stop
;;     _pause
;;       _msecbase
;;   _I2C_EEIN
;;     _i2c_start
;;     _i2c_write
;;     _i2c_restart
;;     _i2c_read
;;     _I2C_nack
;;     _i2c_stop
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
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      84       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3C      3C       5       75.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     30      3A       7       72.5%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      88      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 234 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               1   46[BANK1 ] unsigned char 
;;  x               1   44[BANK1 ] unsigned char 
;;  x               1   45[BANK1 ] unsigned char 
;;  x               1   43[BANK1 ] unsigned char 
;;  i               2   41[BANK1 ] int 
;;  buffer         15   25[BANK1 ] unsigned char [15]
;;  uni             2    0        unsigned int 
;;  cen             2    0        unsigned int 
;;  dec             2    0        unsigned int 
;;  mil             2    0        unsigned int 
;;  B2              2    0        unsigned int 
;;  B1              2    0        unsigned int 
;;  cnt2            1   47[BANK1 ] unsigned char 
;;  cnt1            1   40[BANK1 ] unsigned char 
;;  char_pwm        1    0        unsigned char 
;;  char_recibid    1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 160/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      23       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1      23       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;;		_putch
;;		_sprintf
;;		_lcd_goto
;;		_lcd_puts
;;		_i2c_init
;;		___awtoft
;;		___ftmul
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	234
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	235
	
l6162:	
;eeprom_i2c.c: 235: ANSEL=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	236
;eeprom_i2c.c: 236: ANSELH=0;
	clrf	(393)^0180h	;volatile
	line	237
	
l6164:	
;eeprom_i2c.c: 237: OSCCON=0xC0;
	movlw	(0C0h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	238
	
l6166:	
;eeprom_i2c.c: 238: TRISA=3;
	movlw	(03h)
	movwf	(133)^080h	;volatile
	line	239
;eeprom_i2c.c: 239: TRISB=0;
	clrf	(134)^080h	;volatile
	line	240
	
l6168:	
;eeprom_i2c.c: 240: TRISC=6;
	movlw	(06h)
	movwf	(135)^080h	;volatile
	line	241
	
l6170:	
;eeprom_i2c.c: 241: TRISD=0;
	clrf	(136)^080h	;volatile
	line	242
	
l6172:	
;eeprom_i2c.c: 242: TRISE=0;
	clrf	(137)^080h	;volatile
	line	244
	
l6174:	
;eeprom_i2c.c: 244: PR2=0xFC;
	movlw	(0FCh)
	movwf	(146)^080h	;volatile
	line	245
	
l6176:	
;eeprom_i2c.c: 245: CCP2CON=0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(29)	;volatile
	line	246
	
l6178:	
;eeprom_i2c.c: 246: CCP1CON=0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	247
	
l6180:	
;eeprom_i2c.c: 247: CCPR1L=0x80;
	movlw	(080h)
	movwf	(21)	;volatile
	line	248
	
l6182:	
;eeprom_i2c.c: 248: CCPR2L=0x80;
	movlw	(080h)
	movwf	(27)	;volatile
	line	249
;eeprom_i2c.c: 249: PIR1=0;
	clrf	(12)	;volatile
	line	250
	
l6184:	
;eeprom_i2c.c: 250: T2CON=0X07;
	movlw	(07h)
	movwf	(18)	;volatile
	line	251
;eeprom_i2c.c: 251: while(PIR1);
	
l6186:	
	movf	(12),f
	skipz	;volatile
	goto	u3591
	goto	u3590
u3591:
	goto	l6186
u3590:
	
l1139:	
	line	252
;eeprom_i2c.c: 252: TRISC1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	253
;eeprom_i2c.c: 253: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	254
;eeprom_i2c.c: 254: RA7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(47/8),(47)&7
	line	255
;eeprom_i2c.c: 255: RA6=0;
	bcf	(46/8),(46)&7
	line	256
;eeprom_i2c.c: 256: RA4=0;
	bcf	(44/8),(44)&7
	line	257
	
l6188:	
;eeprom_i2c.c: 257: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	258
	
l6190:	
;eeprom_i2c.c: 258: PORTD=init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	259
	
l6192:	
;eeprom_i2c.c: 259: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l6194:	
	bcf	(46/8),(46)&7
	line	260
	
l6196:	
;eeprom_i2c.c: 260: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	261
	
l6198:	
;eeprom_i2c.c: 261: ((RA6=1),(RA6=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	
l6200:	
	bcf	(46/8),(46)&7
	line	262
	
l6202:	
;eeprom_i2c.c: 262: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	263
	
l6204:	
;eeprom_i2c.c: 263: ((RA6=1),(RA6=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(46/8),(46)&7
	
l6206:	
	bcf	(46/8),(46)&7
	line	264
	
l6208:	
;eeprom_i2c.c: 264: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	265
;eeprom_i2c.c: 265: PORTD=2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	266
	
l6210:	
;eeprom_i2c.c: 266: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l6212:	
	bcf	(46/8),(46)&7
	line	267
	
l6214:	
;eeprom_i2c.c: 267: lcd_write(0x28);
	movlw	(028h)
	fcall	_lcd_write
	line	268
	
l6216:	
;eeprom_i2c.c: 268: lcd_write(0xC);
	movlw	(0Ch)
	fcall	_lcd_write
	line	269
	
l6218:	
;eeprom_i2c.c: 269: lcd_clear();
	fcall	_lcd_clear
	line	270
	
l6220:	
;eeprom_i2c.c: 270: lcd_write(0x06);
	movlw	(06h)
	fcall	_lcd_write
	line	273
	
l6222:	
;eeprom_i2c.c: 273: TRISC7=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	274
	
l6224:	
;eeprom_i2c.c: 274: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	275
;eeprom_i2c.c: 275: OSCCON=0x70;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	276
;eeprom_i2c.c: 276: SPBRG=12;
	movlw	(0Ch)
	movwf	(153)^080h	;volatile
	line	277
;eeprom_i2c.c: 277: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	278
;eeprom_i2c.c: 278: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	279
	
l6226:	
;eeprom_i2c.c: 279: BAUDCTL=0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	280
	
l6228:	
;eeprom_i2c.c: 280: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	line	282
	
l6230:	
;eeprom_i2c.c: 282: PORTA=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	283
	
l6232:	
;eeprom_i2c.c: 283: *pa=0xFF;
	movlw	(0FFh)
	movwf	(5)
	line	290
	
l6234:	
;eeprom_i2c.c: 286: char char_recibido;
;eeprom_i2c.c: 287: char char_pwm;
;eeprom_i2c.c: 288: char buffer[15];
;eeprom_i2c.c: 290: PORTA=0x01;
	movlw	(01h)
	movwf	(5)	;volatile
	line	291
	
l6236:	
;eeprom_i2c.c: 291: *pa=0xFF;
	movlw	(0FFh)
	movwf	(5)
	line	293
	
l6238:	
;eeprom_i2c.c: 293: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	294
	
l6240:	
;eeprom_i2c.c: 294: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	297
	
l6242:	
;eeprom_i2c.c: 297: for(int i=97; i<123; i++){
	movlw	061h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@i)^080h
	clrf	(main@i+1)^080h
	line	298
	
l6248:	
;eeprom_i2c.c: 298: putch(i);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	fcall	_putch
	line	299
;eeprom_i2c.c: 299: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	297
	
l6250:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	incf	(main@i)^080h,f
	skipnz
	incf	(main@i+1)^080h,f
	
l6252:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3605
	movlw	low(07Bh)
	subwf	(main@i)^080h,w
u3605:

	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l6248
u3600:
	line	302
	
l6254:	
;eeprom_i2c.c: 300: }
;eeprom_i2c.c: 302: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	303
;eeprom_i2c.c: 303: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	304
;eeprom_i2c.c: 304: pause(100);
	movlw	064h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	306
	
l6256:	
;eeprom_i2c.c: 306: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	308
	
l6258:	
;eeprom_i2c.c: 309: unsigned int B1, B2, mil, dec, cen, uni=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(main@cnt2)^080h
	line	312
	
l6260:	
;eeprom_i2c.c: 312: sprintf(buffer,"Escribiendo...");
	movlw	((STR_1-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_sprintf)
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	313
	
l6262:	
;eeprom_i2c.c: 313: for (char x = 0; x<20; x++)
	clrf	(main@x)^080h
	line	315
	
l6268:	
;eeprom_i2c.c: 314: {
;eeprom_i2c.c: 315: putch (buffer[x]);
	movf	(main@x)^080h,w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	313
	
l6270:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@x)^080h,f
	
l6272:	
	movlw	(014h)
	subwf	(main@x)^080h,w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l6268
u3610:
	line	317
	
l6274:	
;eeprom_i2c.c: 316: }
;eeprom_i2c.c: 317: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	318
;eeprom_i2c.c: 318: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	319
;eeprom_i2c.c: 319: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	321
;eeprom_i2c.c: 321: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	322
	
l6276:	
;eeprom_i2c.c: 322: lcd_puts("Escribiendo...");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	324
	
l6278:	
;eeprom_i2c.c: 324: i2c_init();
	fcall	_i2c_init
	line	326
	
l6280:	
;eeprom_i2c.c: 326: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	328
	
l6282:	
;eeprom_i2c.c: 328: pause(3000);
	movlw	low(0BB8h)
	movwf	(?_pause)
	movlw	high(0BB8h)
	movwf	((?_pause))+1
	fcall	_pause
	line	331
;eeprom_i2c.c: 331: while(cnt2 < 25)
	goto	l6326
	line	333
	
l6284:	
;eeprom_i2c.c: 332: {
;eeprom_i2c.c: 333: ADCON0=0xC1;
	movlw	(0C1h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	334
	
l6286:	
;eeprom_i2c.c: 334: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	335
;eeprom_i2c.c: 335: while(GO_DONE==1);
	
l1146:	
	btfsc	(249/8),(249)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l1146
u3620:
	line	336
	
l6288:	
;eeprom_i2c.c: 336: CCPR1L=ADRESH;
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	337
	
l6290:	
;eeprom_i2c.c: 337: CCP1CON=(ADRESL>>2)|0x0C;
	bsf	status, 5	;RP0=1, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	clrc
	rrf	(??_main+0)+0,f
	clrc
	rrf	(??_main+0)+0,f
	movf	0+(??_main+0)+0,w
	iorlw	0Ch
	movwf	(23)	;volatile
	line	338
	
l6292:	
;eeprom_i2c.c: 338: nin=(ADRESH<<2)|(ADRESL>>6);
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_nin)^080h
	clrf	(_nin+1)^080h
	
l6294:	
	clrc
	rlf	(_nin)^080h,f
	rlf	(_nin+1)^080h,f
	clrc
	rlf	(_nin)^080h,f
	rlf	(_nin+1)^080h,f
	
l6296:	
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	movlw	06h
u3635:
	clrc
	rrf	(??_main+0)+0,f
	addlw	-1
	skipz
	goto	u3635
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	iorwf	(_nin)^080h,f
	line	339
	
l6298:	
;eeprom_i2c.c: 339: num=nin*0.004887585533;
	movlw	0x28
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_nin+1)^080h,w
	movwf	(?___awtoft+1)
	movf	(_nin)^080h,w
	movwf	(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_num)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_num+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_num+2)^080h
	line	340
	
l6300:	
;eeprom_i2c.c: 340: sprintf(carac,"%1.3f",nin);
	movlw	((STR_3-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_nin+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_nin)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	342
	
l6302:	
;eeprom_i2c.c: 342: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	343
	
l6304:	
;eeprom_i2c.c: 343: lcd_puts("V1:");
	movlw	low((STR_4-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	344
	
l6306:	
;eeprom_i2c.c: 344: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	346
	
l6308:	
;eeprom_i2c.c: 346: sprintf(buffer,"V%i : %s  ",cnt2,carac);
	movlw	((STR_5-__stringbase))&0ffh
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	clrf	1+(?_sprintf)+01h
	movlw	(_carac)&0ffh
	movwf	(0+?_sprintf+03h)
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	347
	
l6310:	
;eeprom_i2c.c: 347: for (char x = 0; x<10; x++)
	clrf	(main@x_1874)^080h
	line	349
	
l6316:	
;eeprom_i2c.c: 348: {
;eeprom_i2c.c: 349: putch (buffer[x]);
	movf	(main@x_1874)^080h,w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	347
	
l6318:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@x_1874)^080h,f
	
l6320:	
	movlw	(0Ah)
	subwf	(main@x_1874)^080h,w
	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l6316
u3640:
	line	351
	
l6322:	
;eeprom_i2c.c: 350: }
;eeprom_i2c.c: 351: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	352
;eeprom_i2c.c: 352: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	354
;eeprom_i2c.c: 354: pause (100);
	movlw	064h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	355
;eeprom_i2c.c: 355: I2C_EEOUT(cnt1, cnt2, (char)nin);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@cnt2)^080h,w
	movwf	(?_I2C_EEOUT)
	movf	(_nin)^080h,w
	movwf	0+(?_I2C_EEOUT)+01h
	movf	(main@cnt1)^080h,w
	fcall	_I2C_EEOUT
	line	356
;eeprom_i2c.c: 356: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	357
	
l6324:	
;eeprom_i2c.c: 357: cnt2 = cnt2 + 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	incf	(main@cnt2)^080h,f
	line	331
	
l6326:	
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(main@cnt2)^080h,w
	skipc
	goto	u3651
	goto	u3650
u3651:
	goto	l6284
u3650:
	line	360
	
l6328:	
;eeprom_i2c.c: 358: }
;eeprom_i2c.c: 360: cnt2=0;
	clrf	(main@cnt2)^080h
	line	362
	
l6330:	
;eeprom_i2c.c: 362: lcd_clear();
	fcall	_lcd_clear
	line	363
	
l6332:	
;eeprom_i2c.c: 363: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	364
	
l6334:	
;eeprom_i2c.c: 364: lcd_puts("Leyendo...");
	movlw	low((STR_6-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	366
	
l6336:	
;eeprom_i2c.c: 366: sprintf(buffer,"Leyendo.... ");
	movlw	((STR_7-__stringbase))&0ffh
	movwf	(?_sprintf)
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	367
;eeprom_i2c.c: 367: for (char x = 0; x<10; x++)
	clrf	(main@x_1877)^080h
	line	369
	
l6342:	
;eeprom_i2c.c: 368: {
;eeprom_i2c.c: 369: putch (buffer[x]);
	movf	(main@x_1877)^080h,w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	367
	
l6344:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@x_1877)^080h,f
	
l6346:	
	movlw	(0Ah)
	subwf	(main@x_1877)^080h,w
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l6342
u3660:
	line	371
	
l6348:	
;eeprom_i2c.c: 370: }
;eeprom_i2c.c: 371: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	372
;eeprom_i2c.c: 372: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	373
;eeprom_i2c.c: 373: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	375
;eeprom_i2c.c: 375: while(cnt2<25)
	goto	l6376
	line	377
	
l6350:	
;eeprom_i2c.c: 376: {
;eeprom_i2c.c: 377: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	378
;eeprom_i2c.c: 378: B1=I2C_EEIN(cnt1,cnt2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt2)^080h,w
	movwf	(?_I2C_EEIN)
	movf	(main@cnt1)^080h,w
	fcall	_I2C_EEIN
	line	399
;eeprom_i2c.c: 399: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	400
;eeprom_i2c.c: 400: nin=I2C_EEIN(cnt1,cnt2);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt2)^080h,w
	movwf	(?_I2C_EEIN)
	movf	(main@cnt1)^080h,w
	fcall	_I2C_EEIN
	movwf	(_nin)^080h
	clrf	(_nin+1)^080h
	line	401
;eeprom_i2c.c: 401: pause(20);
	movlw	014h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	402
;eeprom_i2c.c: 402: num=nin*0.004887585533;
	movlw	0x28
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3b
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_nin+1)^080h,w
	movwf	(?___awtoft+1)
	movf	(_nin)^080h,w
	movwf	(?___awtoft)
	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_num)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_num+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_num+2)^080h
	line	403
	
l6352:	
;eeprom_i2c.c: 403: sprintf(carac,"%1.3f",num);
	movlw	((STR_8-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_num)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_num+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_num+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	404
	
l6354:	
;eeprom_i2c.c: 404: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	405
;eeprom_i2c.c: 405: lcd_puts("V1:");
	movlw	low((STR_9-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	406
;eeprom_i2c.c: 406: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	407
	
l6356:	
;eeprom_i2c.c: 407: pause (100);
	movlw	064h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	409
	
l6358:	
;eeprom_i2c.c: 409: sprintf(buffer,"V%i : %s  ",cnt2,carac);
	movlw	((STR_10-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	clrf	1+(?_sprintf)+01h
	movlw	(_carac)&0ffh
	movwf	(0+?_sprintf+03h)
	movlw	(main@buffer)&0ffh
	fcall	_sprintf
	line	410
	
l6360:	
;eeprom_i2c.c: 410: for (char x = 0; x<10; x++)
	clrf	(main@x_1881)^080h
	line	412
	
l6366:	
;eeprom_i2c.c: 411: {
;eeprom_i2c.c: 412: putch (buffer[x]);
	movf	(main@x_1881)^080h,w
	addlw	main@buffer&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_putch
	line	410
	
l6368:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(main@x_1881)^080h,f
	
l6370:	
	movlw	(0Ah)
	subwf	(main@x_1881)^080h,w
	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l6366
u3670:
	line	414
	
l6372:	
;eeprom_i2c.c: 413: }
;eeprom_i2c.c: 414: pause(200);
	movlw	0C8h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	415
;eeprom_i2c.c: 415: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	416
;eeprom_i2c.c: 416: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	418
;eeprom_i2c.c: 418: pause (100);
	movlw	064h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	419
	
l6374:	
;eeprom_i2c.c: 419: cnt2=cnt2 + 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	incf	(main@cnt2)^080h,f
	line	375
	
l6376:	
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	subwf	(main@cnt2)^080h,w
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l6350
u3680:
	line	462
	
l1159:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text718,local,class=CODE,delta=2
global __ptext718
__ptext718:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> carac(5), main@buffer(15), 
;;  f               1   50[BANK0 ] PTR const unsigned char 
;;		 -> STR_10(11), STR_8(6), STR_7(13), STR_5(11), 
;;		 -> STR_3(6), STR_1(15), 
;; Auto vars:     Size  Location     Type
;;  sp              1   17[BANK1 ] PTR unsigned char 
;;		 -> carac(5), main@buffer(15), 
;;  _val            4   21[BANK1 ] struct .
;;  fval            3   14[BANK1 ] struct .
;;  integ           3    5[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   18[BANK1 ] int 
;;  exp             2   12[BANK1 ] int 
;;  width           2   10[BANK1 ] int 
;;  flag            2    8[BANK1 ] unsigned short 
;;  c               1   20[BANK1 ] char 
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   50[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 160/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      25       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0       9      25       0       0
;;Total ram usage:       34 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_isdigit
;;		___wmul
;;		___ftge
;;		___ftneg
;;		___awdiv
;;		_scale
;;		___ftmul
;;		_fround
;;		___ftadd
;;		___fttol
;;		__div_to_l_
;;		__tdiv_to_l_
;;		___lltoft
;;		___ftsub
;;		___lldiv
;;		___llmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text718
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	488
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	line	537
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@sp)^080h
	
l5836:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)^080h
	line	540
	goto	l6156
	line	542
	
l5838:	
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3041
	goto	u3040
u3041:
	goto	l5844
u3040:
	line	545
	
l5840:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(sprintf@c)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5842:	
	incf	(sprintf@sp)^080h,f
	line	546
	goto	l6156
	line	550
	
l5844:	
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	552
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	601
	
l5846:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3051
	goto	u3050
u3051:
	goto	l5856
u3050:
	line	602
	
l5848:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	604
	
l5850:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	movwf	(?___wmul+1)
	movf	(sprintf@width)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@width)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(sprintf@width)^080h
	
l5852:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	605
	
l5854:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3061
	goto	u3060
u3061:
	goto	l5850
u3060:
	line	614
	
l5856:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l5870
u3070:
	line	615
	
l5858:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	616
	
l5860:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	624
	
l5862:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	625
	goto	l5868
	line	626
	
l5864:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	movwf	(?___wmul+1)
	movf	(sprintf@prec)^080h,w
	movwf	(?___wmul)
	movlw	0Ah
	movwf	0+(?___wmul)+02h
	clrf	1+(?___wmul)+02h
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	addwf	(0+(?___wmul)),w
	movwf	(??_sprintf+0)+0
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(??_sprintf+0)+0
	movf	0+(??_sprintf+0)+0,w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@prec)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	skipnc
	addlw	1
	addlw	high(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	1+(sprintf@prec)^080h
	
l5866:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	625
	
l5868:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3081
	goto	u3080
u3081:
	goto	l5864
u3080:
	goto	l5914
	line	629
	
l5870:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	631
	
l5872:	
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l5914
	line	665
	
l1230:	
	line	666
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l5916
	line	737
	
l5874:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@_val)^080h
	movlw	(0x0/2)
	movwf	(sprintf@_val+1)^080h
	
l5876:	
	incf	(sprintf@ap)^080h,f
	line	743
	
l5878:	
	movf	((sprintf@_val+1)^080h),w
	iorwf	((sprintf@_val)^080h),w
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l5882
u3090:
	line	744
	
l5880:	
	movlw	low((STR_11-__stringbase))
	movwf	(sprintf@_val)^080h
	movlw	80h
	movwf	(sprintf@_val+1)^080h
	line	748
	
l5882:	
	clrf	0+(sprintf@_val)^080h+02h
	clrf	1+(sprintf@_val)^080h+02h
	line	749
	goto	l5886
	line	750
	
l5884:	
	bsf	status, 5	;RP0=1, select bank1
	incf	0+(sprintf@_val)^080h+02h,f
	skipnz
	incf	1+(sprintf@_val)^080h+02h,f
	line	749
	
l5886:	
	movf	0+(sprintf@_val)^080h+02h,w
	addwf	(sprintf@_val)^080h,w
	movwf	fsr0
	movf	(sprintf@_val+1)^080h,w
	skipnc
	incf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l5884
u3100:
	line	756
	
l5888:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	iorwf	(sprintf@prec)^080h,w
	skipnz
	goto	u3111
	goto	u3110
u3111:
	goto	l1239
u3110:
	
l5890:	
	movf	1+(sprintf@_val)^080h+02h,w
	subwf	(sprintf@prec+1)^080h,w
	skipz
	goto	u3125
	movf	0+(sprintf@_val)^080h+02h,w
	subwf	(sprintf@prec)^080h,w
u3125:
	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l1239
u3120:
	line	757
	
l5892:	
	movf	(sprintf@prec+1)^080h,w
	movwf	1+(sprintf@_val)^080h+02h
	movf	(sprintf@prec)^080h,w
	movwf	0+(sprintf@_val)^080h+02h
	
l1239:	
	line	760
	movf	(sprintf@width+1)^080h,w
	subwf	1+(sprintf@_val)^080h+02h,w
	skipz
	goto	u3135
	movf	(sprintf@width)^080h,w
	subwf	0+(sprintf@_val)^080h+02h,w
u3135:
	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l5896
u3130:
	line	761
	
l5894:	
	movf	0+(sprintf@_val)^080h+02h,w
	subwf	(sprintf@width)^080h,f
	movf	1+(sprintf@_val)^080h+02h,w
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l5902
	line	763
	
l5896:	
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	goto	l5902
	line	768
	
l5898:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5900:	
	incf	(sprintf@sp)^080h,f
	line	767
	
l5902:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	incf	((sprintf@width)^080h),w
	skipnz
	incf	((sprintf@width+1)^080h),w

	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l5898
u3140:
	goto	l5910
	line	771
	
l5904:	
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	fcall	stringtab
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_sprintf+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l5906:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@_val)^080h,f
	skipnz
	incf	(sprintf@_val+1)^080h,f
	
l5908:	
	incf	(sprintf@sp)^080h,f
	line	770
	
l5910:	
	movlw	low(01h)
	subwf	0+(sprintf@_val)^080h+02h,f
	movlw	high(01h)
	skipc
	decf	1+(sprintf@_val)^080h+02h,f
	subwf	1+(sprintf@_val)^080h+02h,f
	incf	(0+(sprintf@_val)^080h+02h),w
	skipnz
	incf	(1+(sprintf@_val)^080h+02h),w

	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l5904
u3150:
	goto	l6156
	line	638
	
l5914:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 115
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; jumptable            260     6 (fixed)
; rangetable           120     6 (fixed)
; spacedrange          238     9 (fixed)
; locatedrange         116     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l6158
	xorlw	100^0	; case 100
	skipnz
	goto	l5916
	xorlw	102^100	; case 102
	skipnz
	goto	l1230
	xorlw	105^102	; case 105
	skipnz
	goto	l5916
	xorlw	115^105	; case 115
	skipnz
	goto	l5874
	goto	l6156
	opt asmopt_on

	line	828
	
l5916:	
	movlw	low(0700h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u3161
	goto	u3160
u3161:
	goto	l6076
u3160:
	line	830
	
l5918:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l5922
u3170:
	line	832
	
l5920:	
	movlw	06h
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	833
	
l5922:	
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^080h
	
l5924:	
	movlw	(03h)
	addwf	(sprintf@ap)^080h,f
	line	834
	
l5926:	
	movf	(sprintf@fval)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?___ftge+2)
	clrf	0+(?___ftge)+03h
	clrf	1+(?___ftge)+03h
	clrf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3181
	goto	u3180
u3181:
	goto	l5932
u3180:
	line	835
	
l5928:	
	movf	(sprintf@fval)^080h,w
	movwf	(?___ftneg)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?___ftneg+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	movwf	(sprintf@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(sprintf@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(sprintf@fval+2)^080h
	line	836
	
l5930:	
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	line	838
	
l5932:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	839
	
l5934:	
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3191
	goto	u3190
u3191:
	goto	l5964
u3190:
	line	840
	
l5936:	
	movlw	low(sprintf@fval)
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+3
	movlw	0Fh
u3205:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u3200:
	addlw	-1
	skipz
	goto	u3205
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp)^080h
	
l5938:	
	movlw	0FFh
	andwf	(sprintf@exp)^080h,f
	clrf	(sprintf@exp+1)^080h
	
l5940:	
	movlw	-126
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	841
	
l5942:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	842
	
l5944:	
	movlw	03h
	movwf	(?___wmul)
	clrf	(?___wmul+1)
	movf	(sprintf@exp+1)^080h,w
	movwf	1+(?___wmul)+02h
	movf	(sprintf@exp)^080h,w
	movwf	0+(?___wmul)+02h
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(sprintf@exp+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(sprintf@exp)^080h
	line	843
	
l5946:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(sprintf@exp+1)^080h,w
	movwf	1+(?___awdiv)+02h
	movf	(sprintf@exp)^080h,w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	movwf	(sprintf@exp+1)^080h
	movf	(0+(?___awdiv)),w
	movwf	(sprintf@exp)^080h
	line	844
	
l5948:	
	btfss	(sprintf@exp+1)^080h,7
	goto	u3211
	goto	u3210
u3211:
	goto	l5952
u3210:
	line	845
	
l5950:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	849
	
l5952:	
	decf	(sprintf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	850
	
l5954:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	851
	
l5956:	
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x80
	movwf	1+(?___ftge)+03h
	movlw	0x3f
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3221
	goto	u3220
u3221:
	goto	l5960
u3220:
	line	852
	
l5958:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	goto	l5964
	line	853
	
l5960:	
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x20
	movwf	1+(?___ftge)+03h
	movlw	0x41
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3231
	goto	u3230
u3231:
	goto	l5964
u3230:
	line	854
	
l5962:	
	incf	(sprintf@exp)^080h,f
	skipnz
	incf	(sprintf@exp+1)^080h,f
	line	1115
	
l5964:	
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3245
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u3245:

	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l5968
u3240:
	line	1116
	
l5966:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	fcall	_fround
	movf	(0+(?_fround)),w
	movwf	(?___ftadd)
	movf	(1+(?_fround)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_fround)),w
	movwf	(?___ftadd+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftadd)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1119
	
l5968:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3255
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u3255:

	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l5976
u3250:
	
l5970:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3261
	goto	u3260
u3261:
	goto	l5992
u3260:
	
l5972:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l5992
u3270:
	
l5974:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3285
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u3285:

	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l5992
u3280:
	line	1123
	
l5976:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(?___ftge)
	movf	(sprintf@integ+1)^080h,w
	movwf	(?___ftge+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(?___ftge+2)
	movlw	0x70
	movwf	0+(?___ftge)+03h
	movlw	0x89
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3291
	goto	u3290
u3291:
	goto	l5980
u3290:
	line	1124
	
l5978:	
	movlw	-9
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1125
	goto	l5982
	line	1126
	
l5980:	
	movlw	-8
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1128
	
l5982:	
	movf	(sprintf@exp)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@integ+2)^080h
	line	1129
	
l5986:	
	movf	(sprintf@fval)^080h,w
	movwf	(?__tdiv_to_l_)
	movf	(sprintf@fval+1)^080h,w
	movwf	(?__tdiv_to_l_+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(?__tdiv_to_l_+2)
	movf	(sprintf@integ)^080h,w
	movwf	0+(?__tdiv_to_l_)+03h
	movf	(sprintf@integ+1)^080h,w
	movwf	1+(?__tdiv_to_l_)+03h
	movf	(sprintf@integ+2)^080h,w
	movwf	2+(?__tdiv_to_l_)+03h
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_sprintf$1951+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1951+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1951+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1951)^080h

	
l5988:	
	movf	(_sprintf$1951+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$1951+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$1951+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$1951)^080h,w
	movwf	(sprintf@_val)^080h

	line	1132
	
l5990:	
	clrf	(sprintf@fval)^080h
	clrf	(sprintf@fval+1)^080h
	clrf	(sprintf@fval+2)^080h
	line	1133
	goto	l5996
	line	1134
	
l5992:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1135
	movf	(sprintf@_val+3)^080h,w
	movwf	(?___lltoft+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(?___lltoft+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(?___lltoft+1)
	movf	(sprintf@_val)^080h,w
	movwf	(?___lltoft)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftsub)
	movf	(1+(?___lltoft)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___lltoft)),w
	movwf	(?___ftsub+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___ftsub)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___ftsub)+03h
	fcall	___ftsub
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1136
	
l5994:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	1139
	
l5996:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1140
	
l6002:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u3305
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u3305
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3305
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val)^080h,w
u3305:
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l6006
u3300:
	goto	l6010
	line	1139
	
l6006:	
	incf	(sprintf@c)^080h,f
	
l6008:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l6002
u3310:
	line	1145
	
l6010:	
	movf	(sprintf@prec)^080h,w
	addwf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	skipnc
	incf	(sprintf@prec+1)^080h,w
	addlw	0
	btfsc	(sprintf@c)^080h,7
	addlw	0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	0+(??_sprintf+0)+0,w
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	skipnc
	incf	(sprintf@exp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	addwf	1+(??_sprintf+0)+0,w
	movwf	1+(??_sprintf+2)+0
	movf	0+(??_sprintf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	line	1150
	
l6012:	
	movf	(sprintf@prec+1)^080h,w
	iorwf	(sprintf@prec)^080h,w
	skipnz
	goto	u3321
	goto	u3320
u3321:
	goto	l6016
u3320:
	line	1151
	
l6014:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1152
	
l6016:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3331
	goto	u3330
u3331:
	goto	l6026
u3330:
	line	1153
	
l6018:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	goto	l6026
	line	1182
	
l6020:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6022:	
	incf	(sprintf@sp)^080h,f
	goto	l6018
	line	1181
	
l6026:	
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3345
	movlw	low(01h)
	subwf	(sprintf@width)^080h,w
u3345:

	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l6020
u3340:
	line	1189
	
l6028:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l6038
u3350:
	line	1191
	
l6030:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6032:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	goto	l6038
	line	1201
	
l6034:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_sprintf+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l6032
	line	1197
	
l6038:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l6034
u3360:
	goto	l6046
	line	1205
	
l6040:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6042:	
	incf	(sprintf@sp)^080h,f
	line	1206
	
l6044:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1204
	
l6046:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3375
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u3375:

	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l6040
u3370:
	line	1208
	
l6048:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3385
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l6052
u3380:
	line	1209
	
l6050:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l1284
	line	1211
	
l6052:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	
l1284:	
	line	1212
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@prec+1)^080h,f
	subwf	(sprintf@prec+1)^080h,f
	line	1216
	movf	(sprintf@c)^080h,w
	skipz
	goto	u3390
	goto	l6058
u3390:
	line	1218
	
l6054:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Eh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6056:	
	incf	(sprintf@sp)^080h,f
	line	1224
	
l6058:	
	movf	(sprintf@c)^080h,w
	fcall	_scale
	movf	(0+(?_scale)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?_scale)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?_scale)),w
	movwf	2+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+1)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1225
	goto	l6066
	line	1226
	
l6060:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	movwf	(??_sprintf+1)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_sprintf+1)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6062:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	line	1227
	
l6064:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___llmod)
	fcall	stringdir
	movwf	(?___llmod+1)
	fcall	stringdir
	movwf	(?___llmod+2)
	fcall	stringdir
	movwf	(?___llmod+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?___llmod)+04h
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(0+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h

	line	1225
	
l6066:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l6060
u3400:
	goto	l6074
	line	1231
	
l6068:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6070:	
	incf	(sprintf@sp)^080h,f
	line	1232
	
l6072:	
	movlw	-1
	addwf	(sprintf@prec)^080h,f
	skipc
	decf	(sprintf@prec+1)^080h,f
	line	1230
	
l6074:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l6068
u3410:
	goto	l6156
	line	1254
	
l6076:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@_val+1)^080h
	movlw	0
	btfsc	(sprintf@_val+1)^080h,7
	movlw	255
	movwf	(sprintf@_val+2)^080h
	movwf	(sprintf@_val+3)^080h
	
l6078:	
	incf	(sprintf@ap)^080h,f
	incf	(sprintf@ap)^080h,f
	line	1256
	
l6080:	
	btfss	(sprintf@_val+3)^080h,7
	goto	u3421
	goto	u3420
u3421:
	goto	l6086
u3420:
	line	1257
	
l6082:	
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	line	1258
	
l6084:	
	comf	(sprintf@_val)^080h,f
	comf	(sprintf@_val+1)^080h,f
	comf	(sprintf@_val+2)^080h,f
	comf	(sprintf@_val+3)^080h,f
	incf	(sprintf@_val)^080h,f
	skipnz
	incf	(sprintf@_val+1)^080h,f
	skipnz
	incf	(sprintf@_val+2)^080h,f
	skipnz
	incf	(sprintf@_val+3)^080h,f
	line	1285
	
l6086:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l6092
u3430:
	
l6088:	
	movf	(sprintf@_val+3)^080h,w
	iorwf	(sprintf@_val+2)^080h,w
	iorwf	(sprintf@_val+1)^080h,w
	iorwf	(sprintf@_val)^080h,w
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l6092
u3440:
	line	1286
	
l6090:	
	incf	(sprintf@prec)^080h,f
	skipnz
	incf	(sprintf@prec+1)^080h,f
	line	1300
	
l6092:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1301
	
l6098:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u3455
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u3455
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3455
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val)^080h,w
u3455:
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l6102
u3450:
	goto	l6106
	line	1300
	
l6102:	
	incf	(sprintf@c)^080h,f
	
l6104:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l6098
u3460:
	line	1334
	
l6106:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3475
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3475:

	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l6110
u3470:
	line	1335
	
l6108:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	goto	l6114
	line	1336
	
l6110:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+2)+0
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3485
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@prec)^080h,w
u3485:

	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l6114
u3480:
	line	1337
	
l6112:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	btfsc	(sprintf@prec)^080h,7
	decf	(sprintf@prec+1)^080h,f
	line	1340
	
l6114:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3491
	goto	u3490
u3491:
	goto	l6120
u3490:
	
l6116:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3501
	goto	u3500
u3501:
	goto	l6120
u3500:
	line	1341
	
l6118:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1343
	
l6120:	
	btfss	(sprintf@flag+1)^080h,(14)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l6128
u3510:
	line	1344
	
l6122:	
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+0)+0,w
	skipz
	goto	u3525
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	subwf	(sprintf@prec)^080h,w
u3525:

	skipnc
	goto	u3521
	goto	u3520
u3521:
	goto	l6126
u3520:
	line	1345
	
l6124:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	subwf	(sprintf@width)^080h,f
	movf	(sprintf@prec+1)^080h,w
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l6128
	line	1347
	
l6126:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1376
	
l6128:	
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	1+(??_sprintf+0)+0,w
	xorlw	80h
	movwf	(??_sprintf+2)+0
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	bcf	status, 5	;RP0=0, select bank0
	subwf	(??_sprintf+2)+0,w
	skipz
	goto	u3535
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3535:

	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l6132
u3530:
	line	1377
	
l6130:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@width)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l6134
	line	1379
	
l6132:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1423
	
l6134:	
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3541
	goto	u3540
u3541:
	goto	l6142
u3540:
	line	1425
	
l6136:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6138:	
	incf	(sprintf@sp)^080h,f
	line	1426
	
l6140:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	movf	(((sprintf@width+1)^080h)),w
	iorwf	(((sprintf@width)^080h)),w
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l6136
u3550:
	line	1433
	
l6142:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3561
	goto	u3560
u3561:
	goto	l6154
u3560:
	line	1434
	
l6144:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6146:	
	incf	(sprintf@sp)^080h,f
	goto	l6154
	line	1484
	
l6148:	
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?___llmod)
	clrf	(?___llmod+1)
	clrf	(?___llmod+2)
	clrf	(?___llmod+3)

	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	clrc
	rlf	(??_sprintf+0)+0,f
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___lldiv)
	fcall	stringdir
	movwf	(?___lldiv+1)
	fcall	stringdir
	movwf	(?___lldiv+2)
	fcall	stringdir
	movwf	(?___lldiv+3)
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	3+(?___lldiv)+04h
	movf	(sprintf@_val+2)^080h,w
	movwf	2+(?___lldiv)+04h
	movf	(sprintf@_val+1)^080h,w
	movwf	1+(?___lldiv)+04h
	movf	(sprintf@_val)^080h,w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	3+(?___llmod)+04h
	movf	(2+(?___lldiv)),w
	movwf	2+(?___llmod)+04h
	movf	(1+(?___lldiv)),w
	movwf	1+(?___llmod)+04h
	movf	(0+(?___lldiv)),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	0+(((0+(?___llmod)))),w
	addlw	030h
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	line	1516
	
l6150:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(sprintf@c)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l6146
	line	1469
	
l6154:	
	movlw	-1
	addwf	(sprintf@prec)^080h,f
	skipc
	decf	(sprintf@prec+1)^080h,f
	incf	((sprintf@prec)^080h),w
	skipnz
	incf	((sprintf@prec+1)^080h),w

	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l6148
u3570:
	line	540
	
l6156:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l5838
u3580:
	line	1530
	
l6158:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1314:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_lcd_goto
psect	text719,local,class=CODE,delta=2
global __ptext719
__ptext719:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 228 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text719
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	228
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	229
	
l5832:	
;eeprom_i2c.c: 229: RA7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(47/8),(47)&7
	line	230
	
l5834:	
;eeprom_i2c.c: 230: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	addlw	080h
	fcall	_lcd_write
	line	231
	
l1134:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_puts
psect	text720,local,class=CODE,delta=2
global __ptext720
__ptext720:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 215 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  s               2    5[COMMON] PTR const unsigned char 
;;		 -> STR_9(4), STR_6(11), STR_4(4), carac(5), 
;;		 -> STR_2(15), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text720
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	215
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	216
	
l5824:	
;eeprom_i2c.c: 216: RA7=1;
	bsf	(47/8),(47)&7
	line	217
;eeprom_i2c.c: 217: while(*s)
	goto	l5830
	line	218
	
l5826:	
;eeprom_i2c.c: 218: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	fcall	_lcd_write
	
l5828:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	217
	
l5830:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l5826
u3030:
	line	219
	
l1128:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text721,local,class=CODE,delta=2
global __ptext721
__ptext721:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 208 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 40/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_write
;;		_pause
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text721
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	208
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	209
	
l5820:	
;eeprom_i2c.c: 209: RA7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(47/8),(47)&7
	line	210
	
l5822:	
;eeprom_i2c.c: 210: lcd_write(0x1);
	movlw	(01h)
	fcall	_lcd_write
	line	211
;eeprom_i2c.c: 211: pause(2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	212
	
l1122:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	___ftsub
psect	text722,local,class=CODE,delta=2
global __ptext722
__ptext722:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   40[BANK0 ] float 
;;  f1              3   43[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   40[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text722
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 4
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l5814:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l5816:	
	movf	(___ftsub@f1),w
	movwf	(?___ftadd)
	movf	(___ftsub@f1+1),w
	movwf	(?___ftadd+1)
	movf	(___ftsub@f1+2),w
	movwf	(?___ftadd+2)
	movf	(___ftsub@f2),w
	movwf	0+(?___ftadd)+03h
	movf	(___ftsub@f2+1),w
	movwf	1+(?___ftadd)+03h
	movf	(___ftsub@f2+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	line	20
	
l2395:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text723,local,class=CODE,delta=2
global __ptext723
__ptext723:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   38[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   28[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awmod
;;		___awdiv
;;		___ftmul
;;		___bmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text723
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	422
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
	opt	stack 4
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	line	424
	bcf	status, 5	;RP0=0, select bank0
	movwf	(scale@scl)
	
l5774:	
	btfss	(scale@scl),7
	goto	u2981
	goto	u2980
u2981:
	goto	l5796
u2980:
	line	425
	
l5776:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l5778:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l5786
u2990:
	line	427
	
l5780:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__npowers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$2943)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2943+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2943+2)
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$2943),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2943+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2943+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1208
	line	428
	
l5786:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l5792
u3000:
	line	429
	
l5788:	
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1208
	line	430
	
l5792:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l1208
	line	432
	
l5796:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u3011
	goto	u3010
u3011:
	goto	l5804
u3010:
	line	433
	
l5798:	
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	movlw	064h
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	fcall	___awmod
	movf	(1+(?___awmod)),w
	movwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	movwf	0+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+0)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	064h
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__powers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_scale$2943)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2943+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2943+2)
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_scale$2943),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2943+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2943+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1208
	line	434
	
l5804:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3021
	goto	u3020
u3021:
	goto	l5810
u3020:
	line	435
	
l5806:	
	movlw	0Ah
	movwf	(?___awmod)
	clrf	(?___awmod+1)
	movf	(scale@scl),w
	movwf	0+(?___awmod)+02h
	clrf	1+(?___awmod)+02h
	btfsc	0+(?___awmod)+02h,7
	decf	1+(?___awmod)+02h,f
	fcall	___awmod
	movf	(0+?___awmod),w
	movwf	(??_scale+0)+0
	movf	(1+?___awmod),w
	movwf	((??_scale+0)+0+1)
	movf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addwf	0+(??_scale+0)+0,w
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	0Ah
	movwf	(?___awdiv)
	clrf	(?___awdiv+1)
	movf	(scale@scl),w
	movwf	0+(?___awdiv)+02h
	clrf	1+(?___awdiv)+02h
	btfsc	0+(?___awdiv)+02h,7
	decf	1+(?___awdiv)+02h,f
	fcall	___awdiv
	movf	(0+?___awdiv),w
	movwf	(??_scale+2)+0
	movf	(1+?___awdiv),w
	movwf	((??_scale+2)+0+1)
	movf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addwf	0+(??_scale+2)+0,w
	addlw	low((__powers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1208
	line	436
	
l5810:	
	movlw	(03h)
	movwf	(?___bmul)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	line	437
	
l1208:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text724,local,class=CODE,delta=2
global __ptext724
__ptext724:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   40[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lbmod
;;		___bmul
;;		___lbdiv
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text724
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\doprnt.c"
	line	406
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
	opt	stack 4
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	line	409
	bcf	status, 5	;RP0=0, select bank0
	movwf	(fround@prec)
	
l5752:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l5762
u2960:
	line	410
	
l5754:	
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movlw	(064h)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(064h)
	movwf	(?___lbdiv)
	movf	(fround@prec),w
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+036h)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2941)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2941+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2941+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movf	(_fround$2941),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2941+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2941+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2942)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2942+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2942+2)
	
l5756:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2942),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2942+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2942+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1201
	line	411
	
l5762:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l5770
u2970:
	line	412
	
l5764:	
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbmod)
	movf	(fround@prec),w
	fcall	___lbmod
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	(?___ftmul)
	fcall	stringdir
	movwf	(?___ftmul+1)
	fcall	stringdir
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movlw	(0Ah)
	movwf	(?___lbdiv)
	movf	(fround@prec),w
	fcall	___lbdiv
	fcall	___bmul
	addlw	low((__npowers_-__stringbase)+01Bh)
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2941)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2941+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2941+2)
	
l5766:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2941),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2941+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2941+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1201
	line	413
	
l5770:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movlw	(03h)
	movwf	(?___bmul)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_-__stringbase))
	movwf	fsr0
	fcall	stringdir
	movwf	0+(?___ftmul)+03h
	fcall	stringdir
	movwf	1+(?___ftmul)+03h
	fcall	stringdir
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	line	414
	
l1201:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_write
psect	text725,local,class=CODE,delta=2
global __ptext725
__ptext725:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 199 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pause
;; This function is called by:
;;		_lcd_clear
;;		_lcd_puts
;;		_lcd_goto
;;		_main
;; This function uses a non-reentrant model
;;
psect	text725
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	199
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
;lcd_write@c stored from wreg
	movwf	(lcd_write@c)
	line	200
	
l5738:	
;eeprom_i2c.c: 200: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	201
	
l5740:	
;eeprom_i2c.c: 201: PORTD=((c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	202
	
l5742:	
;eeprom_i2c.c: 202: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l5744:	
	bcf	(46/8),(46)&7
	line	203
	
l5746:	
;eeprom_i2c.c: 203: PORTD=(c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	204
	
l5748:	
;eeprom_i2c.c: 204: ((RA6=1),(RA6=0));
	bsf	(46/8),(46)&7
	
l5750:	
	bcf	(46/8),(46)&7
	line	205
	
l1119:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_I2C_EEOUT
psect	text726,local,class=CODE,delta=2
global __ptext726
__ptext726:

;; *************** function _I2C_EEOUT *****************
;; Defined at:
;;		line 168 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  address1        1    wreg     unsigned char 
;;  address2        1    4[COMMON] unsigned char 
;;  data            1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address1        1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 100/0
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
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
psect	text726
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	168
	global	__size_of_I2C_EEOUT
	__size_of_I2C_EEOUT	equ	__end_of_I2C_EEOUT-_I2C_EEOUT
	
_I2C_EEOUT:	
	opt	stack 5
; Regs used in _I2C_EEOUT: [wreg+status,2+status,0+pclath+cstack]
;I2C_EEOUT@address1 stored from wreg
	movwf	(I2C_EEOUT@address1)
	line	169
	
l5726:	
;eeprom_i2c.c: 169: i2c_start();
	fcall	_i2c_start
	line	170
	
l5728:	
;eeprom_i2c.c: 170: i2c_write(0xa0);
	movlw	(0A0h)
	fcall	_i2c_write
	line	171
	
l5730:	
;eeprom_i2c.c: 171: i2c_write(address1);
	movf	(I2C_EEOUT@address1),w
	fcall	_i2c_write
	line	172
	
l5732:	
;eeprom_i2c.c: 172: i2c_write(address2);
	movf	(I2C_EEOUT@address2),w
	fcall	_i2c_write
	line	173
	
l5734:	
;eeprom_i2c.c: 173: i2c_write(data);
	movf	(I2C_EEOUT@data),w
	fcall	_i2c_write
	line	174
;eeprom_i2c.c: 174: i2c_stop();
	fcall	_i2c_stop
	line	175
	
l5736:	
;eeprom_i2c.c: 175: pause(11);
	movlw	0Bh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	176
	
l1113:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_EEOUT
	__end_of_I2C_EEOUT:
;; =============== function _I2C_EEOUT ends ============

	signat	_I2C_EEOUT,12408
	global	___lltoft
psect	text727,local,class=CODE,delta=2
global __ptext727
__ptext727:

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 36 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text727
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l5716:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l5720
	line	42
	
l5718:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l5720:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l5718
u2950:
	line	45
	
l5722:	
	movf	(___lltoft@c),w
	movwf	(?___ftpack)
	movf	(___lltoft@c+1),w
	movwf	(?___ftpack+1)
	movf	(___lltoft@c+2),w
	movwf	(?___ftpack+2)
	movf	(___lltoft@exp),w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	line	46
	
l2552:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___awtoft
psect	text728,local,class=CODE,delta=2
global __ptext728
__ptext728:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text728
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 6
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l5704:	
	clrf	(___awtoft@sign)
	line	37
	
l5706:	
	btfss	(___awtoft@c+1),7
	goto	u2941
	goto	u2940
u2941:
	goto	l5712
u2940:
	line	38
	
l5708:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
l5710:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	line	41
	
l5712:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	line	42
	
l2449:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text729,local,class=CODE,delta=2
global __ptext729
__ptext729:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   13[BANK0 ] float 
;;  f2              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   23[BANK0 ] unsigned um
;;  sign            1   27[BANK0 ] unsigned char 
;;  cntr            1   26[BANK0 ] unsigned char 
;;  exp             1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text729
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 6
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l5648:	
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l5654
u2860:
	line	57
	
l5650:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2411
	line	58
	
l5654:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l5660
u2870:
	line	59
	
l5656:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2411
	line	60
	
l5660:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l5662:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l5664:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l5666:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l5668:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l5670:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l5672:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l5674:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l5676:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l5678:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l5682
u2880:
	line	72
	
l5680:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2891
	addwf	(___ftmul@f3_as_product+1),f
u2891:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2892
	addwf	(___ftmul@f3_as_product+2),f
u2892:

	line	73
	
l5682:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l5684:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l5686:	
	decfsz	(___ftmul@cntr),f
	goto	u2901
	goto	u2900
u2901:
	goto	l5678
u2900:
	line	76
	
l5688:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l5690:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l5694
u2910:
	line	79
	
l5692:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2921
	addwf	(___ftmul@f3_as_product+1),f
u2921:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2922
	addwf	(___ftmul@f3_as_product+2),f
u2922:

	line	80
	
l5694:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l5696:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l5698:	
	decfsz	(___ftmul@cntr),f
	goto	u2931
	goto	u2930
u2931:
	goto	l5690
u2930:
	line	83
	
l5700:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	line	84
	
l2411:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text730,local,class=CODE,delta=2
global __ptext730
__ptext730:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   28[BANK0 ] float 
;;  f2              3   31[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   39[BANK0 ] unsigned char 
;;  exp2            1   38[BANK0 ] unsigned char 
;;  sign            1   37[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   28[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text730
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l5570:	
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(___ftadd@exp2)
	line	92
	
l5572:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2660
	goto	l5578
u2660:
	
l5574:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2671
	goto	u2670
u2671:
	goto	l5582
u2670:
	
l5576:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l5582
u2680:
	line	93
	
l5578:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2359
	line	94
	
l5582:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2690
	goto	l2362
u2690:
	
l5584:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2701
	goto	u2700
u2701:
	goto	l5588
u2700:
	
l5586:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l5588
u2710:
	
l2362:	
	line	95
	goto	l2359
	line	96
	
l5588:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l5590:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l2363
u2720:
	line	98
	
l5592:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2363:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l2364
u2730:
	line	100
	
l5594:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2364:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l5596:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l5598:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l5610
u2740:
	line	110
	
l5600:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l5602:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2751
	goto	u2750
u2751:
	goto	l5608
u2750:
	
l5604:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l5600
u2760:
	goto	l5608
	line	114
	
l5606:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l5608:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l5606
u2770:
	goto	l2373
	line	117
	
l5610:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2781
	goto	u2780
u2781:
	goto	l2373
u2780:
	line	121
	
l5612:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l5614:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l5620
u2790:
	
l5616:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l5612
u2800:
	goto	l5620
	line	125
	
l5618:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l5620:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l5618
u2810:
	line	129
	
l2373:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l5626
u2820:
	line	131
	
l5622:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l5624:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l5626:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l5632
u2830:
	line	136
	
l5628:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l5630:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l5632:	
	clrf	(___ftadd@sign)
	line	140
	
l5634:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2841
	addwf	(___ftadd@f2+1),f
u2841:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2842
	addwf	(___ftadd@f2+2),f
u2842:

	line	141
	
l5636:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l5644
u2850:
	line	142
	
l5638:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l5640:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l5642:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l5644:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	line	148
	
l2359:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_I2C_EEIN
psect	text731,local,class=CODE,delta=2
global __ptext731
__ptext731:

;; *************** function _I2C_EEIN *****************
;; Defined at:
;;		line 184 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  address1        1    wreg     unsigned char 
;;  address2        1    1[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address1        1    2[COMMON] unsigned char 
;;  data            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_start
;;		_i2c_write
;;		_i2c_restart
;;		_i2c_read
;;		_I2C_nack
;;		_i2c_stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text731
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	184
	global	__size_of_I2C_EEIN
	__size_of_I2C_EEIN	equ	__end_of_I2C_EEIN-_I2C_EEIN
	
_I2C_EEIN:	
	opt	stack 6
; Regs used in _I2C_EEIN: [wreg+status,2+status,0+pclath+cstack]
;I2C_EEIN@address1 stored from wreg
	line	186
	movwf	(I2C_EEIN@address1)
	
l5550:	
;eeprom_i2c.c: 185: unsigned char data;
;eeprom_i2c.c: 186: i2c_start();
	fcall	_i2c_start
	line	187
	
l5552:	
;eeprom_i2c.c: 187: i2c_write(0xa0);
	movlw	(0A0h)
	fcall	_i2c_write
	line	188
	
l5554:	
;eeprom_i2c.c: 188: i2c_write(address1);
	movf	(I2C_EEIN@address1),w
	fcall	_i2c_write
	line	189
	
l5556:	
;eeprom_i2c.c: 189: i2c_write(address2);
	movf	(I2C_EEIN@address2),w
	fcall	_i2c_write
	line	190
	
l5558:	
;eeprom_i2c.c: 190: i2c_restart();
	fcall	_i2c_restart
	line	191
;eeprom_i2c.c: 191: i2c_write(0xa1);
	movlw	(0A1h)
	fcall	_i2c_write
	line	192
	
l5560:	
;eeprom_i2c.c: 192: data=i2c_read();
	fcall	_i2c_read
	movwf	(I2C_EEIN@data)
	line	193
	
l5562:	
;eeprom_i2c.c: 193: I2C_nack();
	fcall	_I2C_nack
	line	194
	
l5564:	
;eeprom_i2c.c: 194: i2c_stop();
	fcall	_i2c_stop
	line	195
	
l5566:	
;eeprom_i2c.c: 195: return(data);
	movf	(I2C_EEIN@data),w
	line	196
	
l1116:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_EEIN
	__end_of_I2C_EEIN:
;; =============== function _I2C_EEIN ends ============

	signat	_I2C_EEIN,8313
	global	_pause
psect	text732,local,class=CODE,delta=2
global __ptext732
__ptext732:

;; *************** function _pause *****************
;; Defined at:
;;		line 71 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  usvalue         2    0[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  x               2    2[COMMON] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_msecbase
;; This function is called by:
;;		_I2C_EEOUT
;;		_lcd_write
;;		_lcd_clear
;;		_main
;; This function uses a non-reentrant model
;;
psect	text732
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	71
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	74
	
l5542:	
;eeprom_i2c.c: 72: unsigned short x;
;eeprom_i2c.c: 74: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l5548
	line	76
	
l5544:	
;eeprom_i2c.c: 75: {
;eeprom_i2c.c: 76: msecbase();
	fcall	_msecbase
	line	74
	
l5546:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l5548:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u2655
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u2655:
	skipnc
	goto	u2651
	goto	u2650
u2651:
	goto	l5544
u2650:
	line	78
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___awmod
psect	text733,local,class=CODE,delta=2
global __ptext733
__ptext733:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    5[COMMON] unsigned char 
;;  counter         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text733
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l5506:	
	clrf	(___awmod@sign)
	line	9
	
l5508:	
	btfss	(___awmod@dividend+1),7
	goto	u2581
	goto	u2580
u2581:
	goto	l5514
u2580:
	line	10
	
l5510:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l5512:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l5514:	
	btfss	(___awmod@divisor+1),7
	goto	u2591
	goto	u2590
u2591:
	goto	l5518
u2590:
	line	14
	
l5516:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l5518:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2601
	goto	u2600
u2601:
	goto	l5534
u2600:
	line	16
	
l5520:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l5524
	line	18
	
l5522:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l5524:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l5522
u2610:
	line	22
	
l5526:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2625
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2625:
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l5530
u2620:
	line	23
	
l5528:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l5530:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l5532:	
	decfsz	(___awmod@counter),f
	goto	u2631
	goto	u2630
u2631:
	goto	l5526
u2630:
	line	27
	
l5534:	
	movf	(___awmod@sign),w
	skipz
	goto	u2640
	goto	l5538
u2640:
	line	28
	
l5536:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l5538:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2530:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text734,local,class=CODE,delta=2
global __ptext734
__ptext734:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    8[COMMON] unsigned long 
;;  counter         1   12[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text734
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l5480:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l5482:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2541
	goto	u2540
u2541:
	goto	l5502
u2540:
	line	11
	
l5484:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l5488
	line	13
	
l5486:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l5488:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l5486
u2550:
	line	17
	
l5490:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l5492:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2565
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2565
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2565
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2565:
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l5498
u2560:
	line	19
	
l5494:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l5496:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l5498:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l5500:	
	decfsz	(___lldiv@counter),f
	goto	u2571
	goto	u2570
u2571:
	goto	l5490
u2570:
	line	25
	
l5502:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l2491:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text735,local,class=CODE,delta=2
global __ptext735
__ptext735:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text735
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5460:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l5464
u2510:
	line	7
	
l5462:	
	movf	(___ftge@ff1),w
	sublw	0
	movwf	(___ftge@ff1)
	movf	(___ftge@ff1+1),w
	skipc
	incfsz	(___ftge@ff1+1),w
	sublw	0
	movwf	1+(___ftge@ff1)
	movf	(___ftge@ff1+2),w
	skipc
	incfsz	(___ftge@ff1+2),w
	sublw	080h
	movwf	2+(___ftge@ff1)
	line	8
	
l5464:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l5468
u2520:
	line	9
	
l5466:	
	movf	(___ftge@ff2),w
	sublw	0
	movwf	(___ftge@ff2)
	movf	(___ftge@ff2+1),w
	skipc
	incfsz	(___ftge@ff2+1),w
	sublw	0
	movwf	1+(___ftge@ff2)
	movf	(___ftge@ff2+2),w
	skipc
	incfsz	(___ftge@ff2+2),w
	sublw	080h
	movwf	2+(___ftge@ff2)
	line	10
	
l5468:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5470:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5472:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2535
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2535
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2535:
	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l5476
u2530:
	
l5474:	
	clrc
	
	goto	l2481
	
l5476:	
	setc
	
	line	13
	
l2481:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text736,local,class=CODE,delta=2
global __ptext736
__ptext736:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text736
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l5452:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2501
	goto	u2500
u2501:
	goto	l5456
u2500:
	line	18
	
l5454:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l5456:	
	line	20
	
l2476:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text737,local,class=CODE,delta=2
global __ptext737
__ptext737:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[BANK0 ] unsigned long 
;;  dividend        4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       8       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text737
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l5432:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l5448
u2460:
	line	9
	
l5434:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l5438
	line	11
	
l5436:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l5438:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l5436
u2470:
	line	15
	
l5440:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2485
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2485
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2485
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2485:
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l5444
u2480:
	line	16
	
l5442:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	line	17
	
l5444:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l5446:	
	decfsz	(___llmod@counter),f
	goto	u2491
	goto	u2490
u2491:
	goto	l5440
u2490:
	line	20
	
l5448:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l2472:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text738,local,class=CODE,delta=2
global __ptext738
__ptext738:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] int 
;;  dividend        2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   12[COMMON] int 
;;  sign            1   11[COMMON] unsigned char 
;;  counter         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text738
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5388:	
	clrf	(___awdiv@sign)
	line	10
	
l5390:	
	btfss	(___awdiv@divisor+1),7
	goto	u2391
	goto	u2390
u2391:
	goto	l5396
u2390:
	line	11
	
l5392:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l5394:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l5396:	
	btfss	(___awdiv@dividend+1),7
	goto	u2401
	goto	u2400
u2401:
	goto	l5402
u2400:
	line	15
	
l5398:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5400:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l5402:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5404:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2411
	goto	u2410
u2411:
	goto	l5424
u2410:
	line	20
	
l5406:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l5410
	line	22
	
l5408:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l5410:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l5408
u2420:
	line	26
	
l5412:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l5414:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2435
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2435:
	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l5420
u2430:
	line	28
	
l5416:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5418:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l5420:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l5422:	
	decfsz	(___awdiv@counter),f
	goto	u2441
	goto	u2440
u2441:
	goto	l5412
u2440:
	line	34
	
l5424:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2450
	goto	l5428
u2450:
	line	35
	
l5426:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l5428:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2462:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text739,local,class=CODE,delta=2
global __ptext739
__ptext739:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    8[BANK0 ] unsigned long 
;;  exp1            1   12[BANK0 ] unsigned char 
;;  sign1           1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text739
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5350:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l5354
u2310:
	line	50
	
l5352:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2422
	line	51
	
l5354:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2325:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2320:
	addlw	-1
	skipz
	goto	u2325
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5356:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5358:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5360:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5362:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5364:	
	btfss	(___fttol@exp1),7
	goto	u2331
	goto	u2330
u2331:
	goto	l5374
u2330:
	line	57
	
l5366:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l5370
u2340:
	goto	l5352
	line	60
	
l5370:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l5372:	
	incfsz	(___fttol@exp1),f
	goto	u2351
	goto	u2350
u2351:
	goto	l5370
u2350:
	goto	l5380
	line	63
	
l5374:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2429
u2360:
	goto	l5352
	line	66
	
l5378:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2429:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l5378
u2370:
	line	70
	
l5380:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2380
	goto	l5384
u2380:
	line	71
	
l5382:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	line	72
	
l5384:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2422:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text740,local,class=CODE,delta=2
global __ptext740
__ptext740:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 40/20
;;		On exit  : 40/20
;;		Unchanged: FFFBF/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftmul
;;		___awtoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text740
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5322:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2240
	goto	l5326
u2240:
	
l5324:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l5332
u2250:
	line	65
	
l5326:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2681
	line	67
	
l5330:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l5332:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l5330
u2260:
	goto	l5336
	line	71
	
l5334:	
	incf	(___ftpack@exp),f
	line	72
	incf	(___ftpack@arg),f
	skipnz
	incf	(___ftpack@arg+1),f
	skipnz
	incf	(___ftpack@arg+2),f
	line	73
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	70
	
l5336:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l5334
u2270:
	goto	l5340
	line	76
	
l5338:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l5340:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l5338
u2280:
	
l2690:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2691
u2290:
	line	80
	
l5342:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2691:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l5344:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0+2)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+0)
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l5346:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2300
	goto	l2692
u2300:
	line	84
	
l5348:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2692:	
	line	85
	line	86
	
l2681:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text741,local,class=CODE,delta=2
global __ptext741
__ptext741:

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    2[COMMON] unsigned char 
;;  rem             1    4[COMMON] unsigned char 
;;  counter         1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text741
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbmod.c"
	line	5
	global	__size_of___lbmod
	__size_of___lbmod	equ	__end_of___lbmod-___lbmod
	
___lbmod:	
	opt	stack 5
; Regs used in ___lbmod: [wreg+status,2+status,0]
;___lbmod@dividend stored from wreg
	line	9
	movwf	(___lbmod@dividend)
	
l5304:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l5306:	
	clrf	(___lbmod@rem)
	line	12
	
l5308:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2215:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2215
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l5310:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l5312:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l5316
u2220:
	line	15
	
l5314:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l5316:	
	decfsz	(___lbmod@counter),f
	goto	u2231
	goto	u2230
u2231:
	goto	l5308
u2230:
	line	17
	
l5318:	
	movf	(___lbmod@rem),w
	line	18
	
l2351:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text742,local,class=CODE,delta=2
global __ptext742
__ptext742:

;; *************** function ___lbdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    6[COMMON] unsigned char 
;;  quotient        1    8[COMMON] unsigned char 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;; This function uses a non-reentrant model
;;
psect	text742
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbdiv.c"
	line	5
	global	__size_of___lbdiv
	__size_of___lbdiv	equ	__end_of___lbdiv-___lbdiv
	
___lbdiv:	
	opt	stack 5
; Regs used in ___lbdiv: [wreg+status,2+status,0]
;___lbdiv@dividend stored from wreg
	line	9
	movwf	(___lbdiv@dividend)
	
l5280:	
	clrf	(___lbdiv@quotient)
	line	10
	
l5282:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u2170
	goto	l5300
u2170:
	line	11
	
l5284:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l5288
	
l2340:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l5286:	
	incf	(___lbdiv@counter),f
	line	12
	
l5288:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l2340
u2180:
	line	16
	
l2342:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l5290:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l5296
u2190:
	line	19
	
l5292:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l5294:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l5296:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l5298:	
	decfsz	(___lbdiv@counter),f
	goto	u2201
	goto	u2200
u2201:
	goto	l2342
u2200:
	line	25
	
l5300:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2345:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___wmul
psect	text743,local,class=CODE,delta=2
global __ptext743
__ptext743:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/20
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text743
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5264:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l5266:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l5270
u2150:
	line	8
	
l5268:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l5270:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l5272:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l5274:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l5266
u2160:
	line	12
	
l5276:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2315:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text744,local,class=CODE,delta=2
global __ptext744
__ptext744:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    9[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1   11[COMMON] unsigned char 
;;  product         1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text744
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l5248:	
	clrf	(___bmul@product)
	line	7
	
l5250:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2131
	goto	u2130
u2131:
	goto	l5254
u2130:
	line	8
	
l5252:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l5254:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l5256:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l5258:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l5250
u2140:
	line	12
	
l5260:	
	movf	(___bmul@product),w
	line	13
	
l2309:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text745,local,class=CODE,delta=2
global __ptext745
__ptext745:

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] unsigned char 
;;  f2              3    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:        14       6       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text745
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 6
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l5202:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l5206
u2040:
	line	67
	
l5204:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l2599
	line	68
	
l5206:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u2051
	goto	u2050
u2051:
	goto	l5210
u2050:
	goto	l5204
	line	70
	
l5210:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l5212:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l5214:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l5216:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l5218:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l5220:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l5222:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u2065
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2065
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2065
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2065:
	skipc
	goto	u2061
	goto	u2060
u2061:
	goto	l2602
u2060:
	line	81
	
l5224:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l5226:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l2602:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	line	85
	
l5228:	
	decfsz	(__div_to_l_@cntr),f
	goto	u2071
	goto	u2070
u2071:
	goto	l5220
u2070:
	
l2603:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2081
	goto	u2080
u2081:
	goto	l5238
u2080:
	line	87
	
l5230:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2091
	goto	u2090
u2091:
	goto	l5234
u2090:
	goto	l5204
	line	90
	
l5234:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l5236:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2101
	goto	u2100
u2101:
	goto	l5234
u2100:
	goto	l5244
	line	93
	
l5238:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l2610
u2110:
	goto	l5204
	line	96
	
l5242:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l2610:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2121
	goto	u2120
u2121:
	goto	l5242
u2120:
	line	100
	
l5244:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l2599:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text746,local,class=CODE,delta=2
global __ptext746
__ptext746:

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 61 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;;  f2              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/20
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text746
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 6
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l5154:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l5158
u1950:
	line	67
	
l5156:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l2556
	line	68
	
l5158:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u1961
	goto	u1960
u1961:
	goto	l2557
u1960:
	goto	l5156
	line	69
	
l2557:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l5162:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l5164:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l5166:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l5168:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l5170:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l5172:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l5174:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u1975
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u1975
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u1975:
	skipc
	goto	u1971
	goto	u1970
u1971:
	goto	l5180
u1970:
	line	81
	
l5176:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l5178:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l5180:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l5182:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u1981
	goto	u1980
u1981:
	goto	l5172
u1980:
	
l2560:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u1991
	goto	u1990
u1991:
	goto	l5192
u1990:
	line	87
	
l5184:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2001
	goto	u2000
u2001:
	goto	l5188
u2000:
	goto	l5156
	line	90
	
l5188:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l5190:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u2011
	goto	u2010
u2011:
	goto	l5188
u2010:
	goto	l5198
	line	93
	
l5192:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2021
	goto	u2020
u2021:
	goto	l2567
u2020:
	goto	l5156
	line	96
	
l5196:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l2567:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2031
	goto	u2030
u2031:
	goto	l5196
u2030:
	line	100
	
l5198:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l2556:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text747,local,class=CODE,delta=2
global __ptext747
__ptext747:

;; *************** function _isdigit *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text747
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\isdigit.c"
	line	13
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:	
	opt	stack 6
; Regs used in _isdigit: [wreg+status,2+status,0]
;isdigit@c stored from wreg
	movwf	(isdigit@c)
	line	14
	
l5142:	
	clrf	(_isdigit$2459)
	
l5144:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1931
	goto	u1930
u1931:
	goto	l5150
u1930:
	
l5146:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l5150
u1940:
	
l5148:	
	clrf	(_isdigit$2459)
	incf	(_isdigit$2459),f
	
l5150:	
	rrf	(_isdigit$2459),w
	
	line	15
	
l2299:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_putch
psect	text748,local,class=CODE,delta=2
global __ptext748
__ptext748:

;; *************** function _putch *****************
;; Defined at:
;;		line 465 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  dato            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dato            1    0[COMMON] unsigned char 
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
psect	text748
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	465
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 7
; Regs used in _putch: [wreg]
;putch@dato stored from wreg
	movwf	(putch@dato)
	line	466
	
l5138:	
;eeprom_i2c.c: 466: while(!TXIF) continue;
	
l1162:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l1162
u1920:
	line	467
	
l5140:	
;eeprom_i2c.c: 467: TXREG=dato;
	movf	(putch@dato),w
	movwf	(25)	;volatile
	line	468
	
l1165:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	_i2c_write
psect	text749,local,class=CODE,delta=2
global __ptext749
__ptext749:

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 156 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  I2C_data        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  I2C_data        1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text749
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	156
	global	__size_of_i2c_write
	__size_of_i2c_write	equ	__end_of_i2c_write-_i2c_write
	
_i2c_write:	
	opt	stack 6
; Regs used in _i2c_write: [wreg]
;i2c_write@I2C_data stored from wreg
	movwf	(i2c_write@I2C_data)
	line	157
	
l5134:	
;eeprom_i2c.c: 157: PIR1bits.SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),3	;volatile
	line	158
	
l5136:	
;eeprom_i2c.c: 158: SSPBUF=I2C_data;
	movf	(i2c_write@I2C_data),w
	movwf	(19)	;volatile
	line	159
;eeprom_i2c.c: 159: while(PIR1bits.SSPIF==0);
	
l1107:	
	btfss	(12),3	;volatile
	goto	u1911
	goto	u1910
u1911:
	goto	l1107
u1910:
	line	160
	
l1110:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
;; =============== function _i2c_write ends ============

	signat	_i2c_write,4216
	global	_I2C_nack
psect	text750,local,class=CODE,delta=2
global __ptext750
__ptext750:

;; *************** function _I2C_nack *****************
;; Defined at:
;;		line 146 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text750
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	146
	global	__size_of_I2C_nack
	__size_of_I2C_nack	equ	__end_of_I2C_nack-_I2C_nack
	
_I2C_nack:	
	opt	stack 6
; Regs used in _I2C_nack: []
	line	147
	
l5132:	
;eeprom_i2c.c: 147: PIR1bits.SSPIF=0;
	bcf	(12),3	;volatile
	line	148
;eeprom_i2c.c: 148: SSPCON2bits.ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,5	;volatile
	line	149
;eeprom_i2c.c: 149: SSPCON2bits.ACKEN=1;
	bsf	(145)^080h,4	;volatile
	line	150
;eeprom_i2c.c: 150: while(PIR1bits.SSPIF==0);
	
l1101:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1901
	goto	u1900
u1901:
	goto	l1101
u1900:
	line	151
	
l1104:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_nack
	__end_of_I2C_nack:
;; =============== function _I2C_nack ends ============

	signat	_I2C_nack,88
	global	_i2c_read
psect	text751,local,class=CODE,delta=2
global __ptext751
__ptext751:

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 126 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text751
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	126
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:	
	opt	stack 6
; Regs used in _i2c_read: [wreg]
	line	127
	
l5126:	
;eeprom_i2c.c: 127: PIR1bits.SSPIF=0;
	bcf	(12),3	;volatile
	line	128
;eeprom_i2c.c: 128: SSPCON2bits.RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,3	;volatile
	line	129
;eeprom_i2c.c: 129: while(PIR1bits.SSPIF==0);
	
l1089:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1891
	goto	u1890
u1891:
	goto	l1089
u1890:
	line	130
	
l5128:	
;eeprom_i2c.c: 130: return SSPBUF;
	movf	(19),w	;volatile
	line	131
	
l1092:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
;; =============== function _i2c_read ends ============

	signat	_i2c_read,89
	global	_i2c_stop
psect	text752,local,class=CODE,delta=2
global __ptext752
__ptext752:

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 118 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text752
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	118
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
	opt	stack 6
; Regs used in _i2c_stop: []
	line	119
	
l5124:	
;eeprom_i2c.c: 119: SSPCON2bits.PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,2	;volatile
	line	120
;eeprom_i2c.c: 120: while(SSPCON2bits.PEN==1);
	
l1083:	
	btfsc	(145)^080h,2	;volatile
	goto	u1881
	goto	u1880
u1881:
	goto	l1083
u1880:
	line	121
	
l1086:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
;; =============== function _i2c_stop ends ============

	signat	_i2c_stop,88
	global	_i2c_restart
psect	text753,local,class=CODE,delta=2
global __ptext753
__ptext753:

;; *************** function _i2c_restart *****************
;; Defined at:
;;		line 110 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text753
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	110
	global	__size_of_i2c_restart
	__size_of_i2c_restart	equ	__end_of_i2c_restart-_i2c_restart
	
_i2c_restart:	
	opt	stack 6
; Regs used in _i2c_restart: []
	line	111
	
l5122:	
;eeprom_i2c.c: 111: SSPCON2bits.RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,1	;volatile
	line	112
;eeprom_i2c.c: 112: while(SSPCON2bits.RSEN==1);
	
l1077:	
	btfsc	(145)^080h,1	;volatile
	goto	u1871
	goto	u1870
u1871:
	goto	l1077
u1870:
	line	113
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_restart
	__end_of_i2c_restart:
;; =============== function _i2c_restart ends ============

	signat	_i2c_restart,88
	global	_i2c_start
psect	text754,local,class=CODE,delta=2
global __ptext754
__ptext754:

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 102 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 160/20
;;		On exit  : 160/20
;;		Unchanged: FFE9F/0
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
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text754
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	102
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 6
; Regs used in _i2c_start: []
	line	103
	
l5120:	
;eeprom_i2c.c: 103: SSPCON2bits.SEN=1;
	bsf	(145)^080h,0	;volatile
	line	104
;eeprom_i2c.c: 104: while(SSPCON2bits.SEN==1);
	
l1071:	
	btfsc	(145)^080h,0	;volatile
	goto	u1861
	goto	u1860
u1861:
	goto	l1071
u1860:
	line	105
	
l1074:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,88
	global	_i2c_init
psect	text755,local,class=CODE,delta=2
global __ptext755
__ptext755:

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 81 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/20
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text755
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	81
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
	opt	stack 7
; Regs used in _i2c_init: [wreg+status,2]
	line	82
	
l5112:	
;eeprom_i2c.c: 82: TRISCbits.TRISC3=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,3	;volatile
	line	83
;eeprom_i2c.c: 83: TRISCbits.TRISC4=1;
	bsf	(135)^080h,4	;volatile
	line	84
	
l5114:	
;eeprom_i2c.c: 84: SSPSTAT=0b10000000;
	movlw	(080h)
	movwf	(148)^080h	;volatile
	line	85
;eeprom_i2c.c: 85: SSPCON =0b00101000;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	86
	
l5116:	
;eeprom_i2c.c: 86: SSPCON2 =0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(145)^080h	;volatile
	line	89
	
l5118:	
;eeprom_i2c.c: 89: SSPADD = ((4000000/(4UL*100000UL))-1);
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	97
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
;; =============== function _i2c_init ends ============

	signat	_i2c_init,88
	global	_msecbase
psect	text756,local,class=CODE,delta=2
global __ptext756
__ptext756:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 62 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
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
psect	text756
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	62
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	63
	
l5110:	
;eeprom_i2c.c: 63: OPTION_REG = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	64
;eeprom_i2c.c: 64: TMR0 = 0xD;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	65
;eeprom_i2c.c: 65: while(!T0IF);
	
l1056:	
	btfss	(90/8),(90)&7
	goto	u1851
	goto	u1850
u1851:
	goto	l1056
u1850:
	
l1058:	
	line	66
;eeprom_i2c.c: 66: T0IF = 0;
	bcf	(90/8),(90)&7
	line	67
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
psect	text757,local,class=CODE,delta=2
global __ptext757
__ptext757:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
