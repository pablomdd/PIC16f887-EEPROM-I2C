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
# 4 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xEFFF & 0xFFFF ;#
# 6 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_pause
	FNCALL	_main,_lcd_write
	FNCALL	_main,_lcd_clear
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_lcd_puts
	FNCALL	_main,_getch
	FNCALL	_main,_i2c_init
	FNCALL	_main,_I2C_EEOUT
	FNCALL	_main,_I2C_EEIN
	FNCALL	_main,___lbtoft
	FNCALL	_main,___ftmul
	FNCALL	_main,_sprintf
	FNCALL	_main,___lwdiv
	FNCALL	_main,___wmul
	FNCALL	_main,_putch
	FNCALL	_main,___fttol
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
	FNCALL	___lbtoft,___ftpack
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
	global	_RCREG
_RCREG	set	26
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
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
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
	
STR_3:	
	retlw	77	;'M'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	115	;'s'
	retlw	99	;'c'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	0
psect	strings
	
STR_2:	
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
	
STR_1:	
	retlw	69	;'E'
	retlw	115	;'s'
	retlw	112	;'p'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	111	;'o'
	retlw	0
psect	strings
	
STR_7:	
	retlw	77	;'M'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	97	;'a'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	0
psect	strings
	
STR_4:	
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
	
STR_5:	
	retlw	37	;'%'
	retlw	49	;'1'
	retlw	46	;'.'
	retlw	51	;'3'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_6:	
	retlw	86	;'V'
	retlw	58	;':'
	retlw	0
psect	strings
	file	"EEPROM_12C.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_nin:
       ds      1

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
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	_sprintf$1936
_sprintf$1936:	; 4 bytes @ 0x0
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x4
	ds	1
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x5
	ds	3
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x8
	ds	4
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0xC
	ds	2
	global	sprintf@width
sprintf@width:	; 2 bytes @ 0xE
	ds	2
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x10
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x12
	ds	1
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x13
	ds	3
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x16
	ds	2
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x18
	ds	1
	global	_main$2959
_main$2959:	; 3 bytes @ 0x19
	ds	3
	global	main@cntd
main@cntd:	; 2 bytes @ 0x1C
	ds	2
	global	main@char_recibido
main@char_recibido:	; 1 bytes @ 0x1E
	ds	1
	global	main@cnt1i
main@cnt1i:	; 2 bytes @ 0x1F
	ds	2
	global	main@cnt2i
main@cnt2i:	; 2 bytes @ 0x21
	ds	2
	global	main@cnt1
main@cnt1:	; 1 bytes @ 0x23
	ds	1
	global	main@cnt2
main@cnt2:	; 1 bytes @ 0x24
	ds	1
	global	main@uni
main@uni:	; 2 bytes @ 0x25
	ds	2
	global	main@mil
main@mil:	; 2 bytes @ 0x27
	ds	2
	global	main@dec
main@dec:	; 2 bytes @ 0x29
	ds	2
	global	main@B2
main@B2:	; 2 bytes @ 0x2B
	ds	2
	global	main@cen
main@cen:	; 2 bytes @ 0x2D
	ds	2
	global	main@B1
main@B1:	; 2 bytes @ 0x2F
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_isdigit
?_isdigit:	; 1 bit 
	global	??_isdigit
??_isdigit:	; 0 bytes @ 0x0
	global	?_putch
?_putch:	; 0 bytes @ 0x0
	global	??_putch
??_putch:	; 0 bytes @ 0x0
	global	??_getch
??_getch:	; 0 bytes @ 0x0
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
	global	?_lcd_clear
?_lcd_clear:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?_getch
?_getch:	; 1 bytes @ 0x0
	global	?_i2c_read
?_i2c_read:	; 1 bytes @ 0x0
	global	?___lbmod
?___lbmod:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
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
	global	putch@dato
putch@dato:	; 1 bytes @ 0x0
	global	i2c_write@I2C_data
i2c_write@I2C_data:	; 1 bytes @ 0x0
	global	_isdigit$2444
_isdigit$2444:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	pause@usvalue
pause@usvalue:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
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
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x1
	ds	1
	global	??_pause
??_pause:	; 0 bytes @ 0x2
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x2
	global	pause@x
pause@x:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0x3
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
	global	?_lcd_write
?_lcd_write:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	I2C_EEOUT@address2
I2C_EEOUT@address2:	; 1 bytes @ 0x4
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x4
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	lcd_write@c
lcd_write@c:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	?___lbdiv
?___lbdiv:	; 1 bytes @ 0x5
	global	I2C_EEOUT@data
I2C_EEOUT@data:	; 1 bytes @ 0x5
	global	___lbdiv@divisor
___lbdiv@divisor:	; 1 bytes @ 0x5
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x5
	ds	1
	global	??__tdiv_to_l_
??__tdiv_to_l_:	; 0 bytes @ 0x6
	global	??__div_to_l_
??__div_to_l_:	; 0 bytes @ 0x6
	global	??_I2C_EEOUT
??_I2C_EEOUT:	; 0 bytes @ 0x6
	global	??_lcd_write
??_lcd_write:	; 0 bytes @ 0x6
	global	??_lcd_clear
??_lcd_clear:	; 0 bytes @ 0x6
	global	?_lcd_puts
?_lcd_puts:	; 0 bytes @ 0x6
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x6
	global	??___lbdiv
??___lbdiv:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x6
	global	I2C_EEOUT@address1
I2C_EEOUT@address1:	; 1 bytes @ 0x6
	global	lcd_goto@pos
lcd_goto@pos:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	___lbdiv@dividend
___lbdiv@dividend:	; 1 bytes @ 0x6
	global	lcd_puts@s
lcd_puts@s:	; 2 bytes @ 0x6
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	___lbdiv@counter
___lbdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_lcd_puts
??_lcd_puts:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	___lbdiv@quotient
___lbdiv@quotient:	; 1 bytes @ 0x8
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
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0xB
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
	global	??_I2C_EEIN
??_I2C_EEIN:	; 0 bytes @ 0xE
	global	??_fround
??_fround:	; 0 bytes @ 0xE
	global	??___ftsub
??___ftsub:	; 0 bytes @ 0xE
	global	??___lbtoft
??___lbtoft:	; 0 bytes @ 0xE
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
	global	?_I2C_EEIN
?_I2C_EEIN:	; 1 bytes @ 0xD
	global	?___lbtoft
?___lbtoft:	; 3 bytes @ 0xD
	global	I2C_EEIN@address1
I2C_EEIN@address1:	; 1 bytes @ 0xD
	ds	1
	global	I2C_EEIN@address2
I2C_EEIN@address2:	; 1 bytes @ 0xE
	ds	1
	global	I2C_EEIN@data
I2C_EEIN@data:	; 1 bytes @ 0xF
	ds	1
	global	___lbtoft@c
___lbtoft@c:	; 1 bytes @ 0x10
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x11
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x11
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x14
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x17
	ds	3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?_scale
?_scale:	; 3 bytes @ 0x20
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x20
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x20
	ds	3
	global	??_scale
??_scale:	; 0 bytes @ 0x23
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x23
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x26
	ds	1
	global	_scale$2962
_scale$2962:	; 3 bytes @ 0x27
	ds	2
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x29
	ds	1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x2A
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x2A
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x2B
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x2C
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x2C
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x2C
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x2F
	global	_fround$2961
_fround$2961:	; 3 bytes @ 0x2F
	ds	3
	global	_fround$2960
_fround$2960:	; 3 bytes @ 0x32
	ds	3
	global	fround@prec
fround@prec:	; 1 bytes @ 0x35
	ds	1
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x36
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x36
	ds	4
	global	??_sprintf
??_sprintf:	; 0 bytes @ 0x3A
	ds	5
	global	??_main
??_main:	; 0 bytes @ 0x3F
	ds	2
;;Data sizes: Strings 80, constant 118, data 0, bss 6, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     65      65
;; BANK1           80     49      55
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lbtoft	float  size(1) Largest target is 0
;;
;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___ftsub	float  size(1) Largest target is 0
;;
;; ?___lltoft	float  size(1) Largest target is 0
;;
;; ?__tdiv_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?__div_to_l_	unsigned long  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 40
;;		 -> dpowers(CODE[40]), 
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_scale	int  size(1) Largest target is 0
;;
;; ?_fround	int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; sprintf@f	PTR const unsigned char  size(1) Largest target is 6
;;		 -> STR_5(CODE[6]), 
;;
;; sprintf@sp	PTR unsigned char  size(1) Largest target is 5
;;		 -> carac(BANK1[5]), 
;;
;; ?_sprintf	int  size(1) Largest target is 0
;;
;; sprintf@ap	PTR void [1] size(1) Largest target is 2
;;		 -> ?_sprintf(BANK0[2]), 
;;
;; S1925$_cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;;
;; lcd_puts@s	PTR const unsigned char  size(2) Largest target is 16
;;		 -> STR_7(CODE[14]), STR_6(CODE[3]), carac(BANK1[5]), STR_4(CODE[11]), 
;;		 -> STR_3(CODE[16]), STR_2(CODE[15]), STR_1(CODE[15]), 
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
;;   ___ftmul->___awdiv
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
;;   ___lbtoft->___fttol
;;   ___ftmul->___lbtoft
;;   ___ftadd->___ftmul
;;   _I2C_EEIN->___fttol
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                26    26      0   13837
;;                                             63 BANK0      2     2      0
;;                                             25 BANK1     24    24      0
;;                              _pause
;;                          _lcd_write
;;                          _lcd_clear
;;                           _lcd_goto
;;                           _lcd_puts
;;                              _getch
;;                           _i2c_init
;;                          _I2C_EEOUT
;;                           _I2C_EEIN
;;                           ___lbtoft
;;                            ___ftmul
;;                            _sprintf
;;                            ___lwdiv
;;                             ___wmul
;;                              _putch
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (1) _sprintf                                             38    34      4   10142
;;                                             54 BANK0      9     5      4
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
;;                           ___lbtoft (ARG)
;;                           _I2C_EEIN (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             1     1      0     112
;;                                              6 COMMON     1     1      0
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_puts                                             2     0      2     135
;;                                              6 COMMON     2     0      2
;;                          _lcd_write
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clear                                            0     0      0     136
;;                          _lcd_write
;;                              _pause
;; ---------------------------------------------------------------------------------
;; (2) ___ftsub                                              6     0      6    1094
;;                                             44 BANK0      6     0      6
;;                            ___ftadd
;;                           ___lltoft (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _scale                                               14    11      3    1688
;;                                             32 BANK0     11     8      3
;;                            ___awmod
;;                            ___awdiv
;;                            ___ftmul
;;                             ___bmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _fround                                              13    10      3    1215
;;                                             44 BANK0     10     7      3
;;                            ___lbmod
;;                             ___bmul
;;                            ___lbdiv
;;                            ___ftmul
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _lcd_write                                            2     0      2      90
;;                                              4 COMMON     2     0      2
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
;; (1) ___lbtoft                                             4     1      3     231
;;                                             13 BANK0      4     1      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftmul                                             15     9      6     535
;;                                             17 BANK0     15     9      6
;;                           ___ftpack
;;                           ___lbtoft (ARG)
;;                           _I2C_EEIN (ARG)
;;                            ___fttol (ARG)
;;                            ___awdiv (ARG)
;;                            ___awmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftadd                                             12     6      6    1049
;;                                             32 BANK0     12     6      6
;;                           ___ftpack
;;                            ___lbmod (ARG)
;;                             ___bmul (ARG)
;;                            ___lbdiv (ARG)
;;                            ___ftmul (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _I2C_EEIN                                             3     1      2      89
;;                                             13 BANK0      3     1      2
;;                          _i2c_start
;;                          _i2c_write
;;                        _i2c_restart
;;                           _i2c_read
;;                           _I2C_nack
;;                           _i2c_stop
;;                            ___fttol (ARG)
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
;; (1) ___fttol                                             13     9      4     252
;;                                              0 BANK0     13     9      4
;;                           ___ftpack (ARG)
;;                          _i2c_start (ARG)
;;                          _i2c_write (ARG)
;;                        _i2c_restart (ARG)
;;                           _i2c_read (ARG)
;;                           _I2C_nack (ARG)
;;                           _i2c_stop (ARG)
;;                            ___awmod (ARG)
;;                            ___awdiv (ARG)
;;                             ___bmul (ARG)
;; ---------------------------------------------------------------------------------
;; (4) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (3) ___lbmod                                              5     4      1     159
;;                                              0 COMMON     5     4      1
;; ---------------------------------------------------------------------------------
;; (3) ___lbdiv                                              4     3      1     162
;;                                              5 COMMON     4     3      1
;;                            ___lbmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              7     3      4     162
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___wmul                                               6     2      4      92
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
;; (1) _getch                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _putch                                                1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
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
;;   _lcd_goto
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _lcd_puts
;;     _lcd_write
;;       _pause
;;         _msecbase
;;   _getch
;;   _i2c_init
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
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       _i2c_start (ARG)
;;       _i2c_write (ARG)
;;       _i2c_restart (ARG)
;;       _i2c_read (ARG)
;;       _I2C_nack (ARG)
;;       _i2c_stop (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;   ___lbtoft
;;     ___ftpack
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       _i2c_start (ARG)
;;       _i2c_write (ARG)
;;       _i2c_restart (ARG)
;;       _i2c_read (ARG)
;;       _I2C_nack (ARG)
;;       _i2c_stop (ARG)
;;       ___awmod (ARG)
;;       ___awdiv (ARG)
;;         ___awmod (ARG)
;;       ___bmul (ARG)
;;         ___lbmod (ARG)
;;         ___lbdiv (ARG)
;;           ___lbmod (ARG)
;;   ___ftmul
;;     ___ftpack
;;     ___lbtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         _i2c_start (ARG)
;;         _i2c_write (ARG)
;;         _i2c_restart (ARG)
;;         _i2c_read (ARG)
;;         _I2C_nack (ARG)
;;         _i2c_stop (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;     _I2C_EEIN (ARG)
;;       _i2c_start
;;       _i2c_write
;;       _i2c_restart
;;       _i2c_read
;;       _I2C_nack
;;       _i2c_stop
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         _i2c_start (ARG)
;;         _i2c_write (ARG)
;;         _i2c_restart (ARG)
;;         _i2c_read (ARG)
;;         _I2C_nack (ARG)
;;         _i2c_stop (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       _i2c_start (ARG)
;;       _i2c_write (ARG)
;;       _i2c_restart (ARG)
;;       _i2c_read (ARG)
;;       _I2C_nack (ARG)
;;       _i2c_stop (ARG)
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
;;         ___lbtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             _i2c_start (ARG)
;;             _i2c_write (ARG)
;;             _i2c_restart (ARG)
;;             _i2c_read (ARG)
;;             _I2C_nack (ARG)
;;             _i2c_stop (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;         _I2C_EEIN (ARG)
;;           _i2c_start
;;           _i2c_write
;;           _i2c_restart
;;           _i2c_read
;;           _I2C_nack
;;           _i2c_stop
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             _i2c_start (ARG)
;;             _i2c_write (ARG)
;;             _i2c_restart (ARG)
;;             _i2c_read (ARG)
;;             _I2C_nack (ARG)
;;             _i2c_stop (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           _i2c_start (ARG)
;;           _i2c_write (ARG)
;;           _i2c_restart (ARG)
;;           _i2c_read (ARG)
;;           _I2C_nack (ARG)
;;           _i2c_stop (ARG)
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
;;         _i2c_start (ARG)
;;         _i2c_write (ARG)
;;         _i2c_restart (ARG)
;;         _i2c_read (ARG)
;;         _I2C_nack (ARG)
;;         _i2c_stop (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___lbtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           _i2c_start (ARG)
;;           _i2c_write (ARG)
;;           _i2c_restart (ARG)
;;           _i2c_read (ARG)
;;           _I2C_nack (ARG)
;;           _i2c_stop (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;       _I2C_EEIN (ARG)
;;         _i2c_start
;;         _i2c_write
;;         _i2c_restart
;;         _i2c_read
;;         _I2C_nack
;;         _i2c_stop
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           _i2c_start (ARG)
;;           _i2c_write (ARG)
;;           _i2c_restart (ARG)
;;           _i2c_read (ARG)
;;           _I2C_nack (ARG)
;;           _i2c_stop (ARG)
;;           ___awmod (ARG)
;;           ___awdiv (ARG)
;;             ___awmod (ARG)
;;           ___bmul (ARG)
;;             ___lbmod (ARG)
;;             ___lbdiv (ARG)
;;               ___lbmod (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         _i2c_start (ARG)
;;         _i2c_write (ARG)
;;         _i2c_restart (ARG)
;;         _i2c_read (ARG)
;;         _I2C_nack (ARG)
;;         _i2c_stop (ARG)
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
;;         ___lbtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             _i2c_start (ARG)
;;             _i2c_write (ARG)
;;             _i2c_restart (ARG)
;;             _i2c_read (ARG)
;;             _I2C_nack (ARG)
;;             _i2c_stop (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;         _I2C_EEIN (ARG)
;;           _i2c_start
;;           _i2c_write
;;           _i2c_restart
;;           _i2c_read
;;           _I2C_nack
;;           _i2c_stop
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             _i2c_start (ARG)
;;             _i2c_write (ARG)
;;             _i2c_restart (ARG)
;;             _i2c_read (ARG)
;;             _I2C_nack (ARG)
;;             _i2c_stop (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           _i2c_start (ARG)
;;           _i2c_write (ARG)
;;           _i2c_restart (ARG)
;;           _i2c_read (ARG)
;;           _I2C_nack (ARG)
;;           _i2c_stop (ARG)
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
;;           ___lbtoft (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               _i2c_start (ARG)
;;               _i2c_write (ARG)
;;               _i2c_restart (ARG)
;;               _i2c_read (ARG)
;;               _I2C_nack (ARG)
;;               _i2c_stop (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;           _I2C_EEIN (ARG)
;;             _i2c_start
;;             _i2c_write
;;             _i2c_restart
;;             _i2c_read
;;             _I2C_nack
;;             _i2c_stop
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               _i2c_start (ARG)
;;               _i2c_write (ARG)
;;               _i2c_restart (ARG)
;;               _i2c_read (ARG)
;;               _I2C_nack (ARG)
;;               _i2c_stop (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             _i2c_start (ARG)
;;             _i2c_write (ARG)
;;             _i2c_restart (ARG)
;;             _i2c_read (ARG)
;;             _I2C_nack (ARG)
;;             _i2c_stop (ARG)
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
;;         ___lbtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             _i2c_start (ARG)
;;             _i2c_write (ARG)
;;             _i2c_restart (ARG)
;;             _i2c_read (ARG)
;;             _I2C_nack (ARG)
;;             _i2c_stop (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;         _I2C_EEIN (ARG)
;;           _i2c_start
;;           _i2c_write
;;           _i2c_restart
;;           _i2c_read
;;           _I2C_nack
;;           _i2c_stop
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             _i2c_start (ARG)
;;             _i2c_write (ARG)
;;             _i2c_restart (ARG)
;;             _i2c_read (ARG)
;;             _I2C_nack (ARG)
;;             _i2c_stop (ARG)
;;             ___awmod (ARG)
;;             ___awdiv (ARG)
;;               ___awmod (ARG)
;;             ___bmul (ARG)
;;               ___lbmod (ARG)
;;               ___lbdiv (ARG)
;;                 ___lbmod (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           _i2c_start (ARG)
;;           _i2c_write (ARG)
;;           _i2c_restart (ARG)
;;           _i2c_read (ARG)
;;           _I2C_nack (ARG)
;;           _i2c_stop (ARG)
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
;;       _i2c_start (ARG)
;;       _i2c_write (ARG)
;;       _i2c_restart (ARG)
;;       _i2c_read (ARG)
;;       _I2C_nack (ARG)
;;       _i2c_stop (ARG)
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
;;           ___lbtoft (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               _i2c_start (ARG)
;;               _i2c_write (ARG)
;;               _i2c_restart (ARG)
;;               _i2c_read (ARG)
;;               _I2C_nack (ARG)
;;               _i2c_stop (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;           _I2C_EEIN (ARG)
;;             _i2c_start
;;             _i2c_write
;;             _i2c_restart
;;             _i2c_read
;;             _I2C_nack
;;             _i2c_stop
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               _i2c_start (ARG)
;;               _i2c_write (ARG)
;;               _i2c_restart (ARG)
;;               _i2c_read (ARG)
;;               _I2C_nack (ARG)
;;               _i2c_stop (ARG)
;;               ___awmod (ARG)
;;               ___awdiv (ARG)
;;                 ___awmod (ARG)
;;               ___bmul (ARG)
;;                 ___lbmod (ARG)
;;                 ___lbdiv (ARG)
;;                   ___lbmod (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             _i2c_start (ARG)
;;             _i2c_write (ARG)
;;             _i2c_restart (ARG)
;;             _i2c_read (ARG)
;;             _I2C_nack (ARG)
;;             _i2c_stop (ARG)
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
;;     ___lbtoft (ARG)
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         _i2c_start (ARG)
;;         _i2c_write (ARG)
;;         _i2c_restart (ARG)
;;         _i2c_read (ARG)
;;         _I2C_nack (ARG)
;;         _i2c_stop (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;     _I2C_EEIN (ARG)
;;       _i2c_start
;;       _i2c_write
;;       _i2c_restart
;;       _i2c_read
;;       _I2C_nack
;;       _i2c_stop
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         _i2c_start (ARG)
;;         _i2c_write (ARG)
;;         _i2c_restart (ARG)
;;         _i2c_read (ARG)
;;         _I2C_nack (ARG)
;;         _i2c_stop (ARG)
;;         ___awmod (ARG)
;;         ___awdiv (ARG)
;;           ___awmod (ARG)
;;         ___bmul (ARG)
;;           ___lbmod (ARG)
;;           ___lbdiv (ARG)
;;             ___lbmod (ARG)
;;   ___lwdiv
;;   ___wmul
;;   _putch
;;   ___fttol
;;     ___ftpack (ARG)
;;     _i2c_start (ARG)
;;     _i2c_write (ARG)
;;     _i2c_restart (ARG)
;;     _i2c_read (ARG)
;;     _I2C_nack (ARG)
;;     _i2c_stop (ARG)
;;     ___awmod (ARG)
;;     ___awdiv (ARG)
;;       ___awmod (ARG)
;;     ___bmul (ARG)
;;       ___lbmod (ARG)
;;       ___lbdiv (ARG)
;;         ___lbmod (ARG)
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
;;ABS                  0      0      86       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     41      41       5       81.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50     31      37       7       68.8%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      8A      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 250 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  B1              2   47[BANK1 ] unsigned int 
;;  cen             2   45[BANK1 ] unsigned int 
;;  B2              2   43[BANK1 ] unsigned int 
;;  dec             2   41[BANK1 ] unsigned int 
;;  mil             2   39[BANK1 ] unsigned int 
;;  uni             2   37[BANK1 ] unsigned int 
;;  cnt2i           2   33[BANK1 ] unsigned int 
;;  cnt1i           2   31[BANK1 ] unsigned int 
;;  cntd            2   28[BANK1 ] unsigned int 
;;  cnt2            1   36[BANK1 ] unsigned char 
;;  cnt1            1   35[BANK1 ] unsigned char 
;;  char_recibid    1   30[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 60/20
;;		Unchanged: FFE00/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      24       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       2      24       0       0
;;Total ram usage:       26 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pause
;;		_lcd_write
;;		_lcd_clear
;;		_lcd_goto
;;		_lcd_puts
;;		_getch
;;		_i2c_init
;;		_I2C_EEOUT
;;		_I2C_EEIN
;;		___lbtoft
;;		___ftmul
;;		_sprintf
;;		___lwdiv
;;		___wmul
;;		_putch
;;		___fttol
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	250
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	251
	
l6580:	
;eeprom_i2c.c: 251: ANSEL=32;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	252
	
l6582:	
;eeprom_i2c.c: 252: ANSELH=0;
	clrf	(393)^0180h	;volatile
	line	253
	
l6584:	
;eeprom_i2c.c: 253: OSCCON=0xC0;
	movlw	(0C0h)
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	line	254
	
l6586:	
;eeprom_i2c.c: 254: TRISA=0xFF;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	255
	
l6588:	
;eeprom_i2c.c: 255: TRISB=0;
	clrf	(134)^080h	;volatile
	line	256
;eeprom_i2c.c: 256: TRISC=6;
	movlw	(06h)
	movwf	(135)^080h	;volatile
	line	257
	
l6590:	
;eeprom_i2c.c: 257: TRISD=0;
	clrf	(136)^080h	;volatile
	line	258
	
l6592:	
;eeprom_i2c.c: 258: TRISE=1;
	movlw	(01h)
	movwf	(137)^080h	;volatile
	line	260
	
l6594:	
;eeprom_i2c.c: 260: PR2=0xFC;
	movlw	(0FCh)
	movwf	(146)^080h	;volatile
	line	261
	
l6596:	
;eeprom_i2c.c: 261: CCP2CON=0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(29)	;volatile
	line	262
	
l6598:	
;eeprom_i2c.c: 262: CCP1CON=0x0C;
	movlw	(0Ch)
	movwf	(23)	;volatile
	line	263
	
l6600:	
;eeprom_i2c.c: 263: CCPR1L=0x80;
	movlw	(080h)
	movwf	(21)	;volatile
	line	264
	
l6602:	
;eeprom_i2c.c: 264: CCPR2L=0x80;
	movlw	(080h)
	movwf	(27)	;volatile
	line	265
	
l6604:	
;eeprom_i2c.c: 265: PIR1=0;
	clrf	(12)	;volatile
	line	266
;eeprom_i2c.c: 266: T2CON=0X07;
	movlw	(07h)
	movwf	(18)	;volatile
	line	267
;eeprom_i2c.c: 267: while(PIR1);
	
l6606:	
	movf	(12),f
	skipz	;volatile
	goto	u3431
	goto	u3430
u3431:
	goto	l6606
u3430:
	
l1160:	
	line	268
;eeprom_i2c.c: 268: TRISC1=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	269
;eeprom_i2c.c: 269: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	270
;eeprom_i2c.c: 270: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(74/8),(74)&7
	line	271
;eeprom_i2c.c: 271: RE1=0;
	bcf	(73/8),(73)&7
	line	272
;eeprom_i2c.c: 272: RE0=0;
	bcf	(72/8),(72)&7
	line	273
	
l6608:	
;eeprom_i2c.c: 273: pause(15);
	movlw	0Fh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	274
	
l6610:	
;eeprom_i2c.c: 274: PORTD=init_value;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	275
	
l6612:	
;eeprom_i2c.c: 275: ((RE1=1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6614:	
	bcf	(73/8),(73)&7
	line	276
	
l6616:	
;eeprom_i2c.c: 276: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	277
	
l6618:	
;eeprom_i2c.c: 277: ((RE1=1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l6620:	
	bcf	(73/8),(73)&7
	line	278
	
l6622:	
;eeprom_i2c.c: 278: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	279
	
l6624:	
;eeprom_i2c.c: 279: ((RE1=1),(RE1=0));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	
l6626:	
	bcf	(73/8),(73)&7
	line	280
	
l6628:	
;eeprom_i2c.c: 280: pause(10);
	movlw	0Ah
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	281
;eeprom_i2c.c: 281: PORTD=2;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	282
	
l6630:	
;eeprom_i2c.c: 282: ((RE1=1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6632:	
	bcf	(73/8),(73)&7
	line	283
	
l6634:	
;eeprom_i2c.c: 283: lcd_write(0x28);
	movlw	028h
	movwf	(?_lcd_write)
	clrf	(?_lcd_write+1)
	fcall	_lcd_write
	line	284
	
l6636:	
;eeprom_i2c.c: 284: lcd_write(0xC);
	movlw	0Ch
	movwf	(?_lcd_write)
	clrf	(?_lcd_write+1)
	fcall	_lcd_write
	line	285
	
l6638:	
;eeprom_i2c.c: 285: lcd_clear();
	fcall	_lcd_clear
	line	286
	
l6640:	
;eeprom_i2c.c: 286: lcd_write(0x06);
	movlw	06h
	movwf	(?_lcd_write)
	clrf	(?_lcd_write+1)
	fcall	_lcd_write
	line	287
	
l6642:	
;eeprom_i2c.c: 287: PORTB=0;
	clrf	(6)	;volatile
	line	288
	
l6644:	
	line	289
	
l6646:	
	line	290
	
l6648:	
;eeprom_i2c.c: 290: TRISC7=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1087/8)^080h,(1087)&7
	line	291
	
l6650:	
;eeprom_i2c.c: 291: TRISC6=0;
	bcf	(1086/8)^080h,(1086)&7
	line	292
	
l6652:	
;eeprom_i2c.c: 292: OSCCON=0x70;
	movlw	(070h)
	movwf	(143)^080h	;volatile
	line	293
	
l6654:	
;eeprom_i2c.c: 293: SPBRG=12;
	movlw	(0Ch)
	movwf	(153)^080h	;volatile
	line	294
	
l6656:	
;eeprom_i2c.c: 294: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(24)	;volatile
	line	295
	
l6658:	
;eeprom_i2c.c: 295: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(152)^080h	;volatile
	line	296
	
l6660:	
;eeprom_i2c.c: 296: BAUDCTL=0x00;
	bsf	status, 6	;RP1=1, select bank3
	clrf	(391)^0180h	;volatile
	line	297
	
l6662:	
;eeprom_i2c.c: 297: pause(500);
	movlw	low(01F4h)
	movwf	(?_pause)
	movlw	high(01F4h)
	movwf	((?_pause))+1
	fcall	_pause
	line	298
	
l6664:	
;eeprom_i2c.c: 298: PORTA=0x03;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	299
	
l6666:	
;eeprom_i2c.c: 299: *pa=0xFF;
	movlw	(0FFh)
	movwf	(5)
	line	300
	
l6668:	
;eeprom_i2c.c: 300: lcd_clear();
	fcall	_lcd_clear
	line	301
	
l6670:	
;eeprom_i2c.c: 301: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	302
	
l6672:	
;eeprom_i2c.c: 302: lcd_puts("Espera comando");
	movlw	low((STR_1-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	304
	
l6674:	
;eeprom_i2c.c: 303: char char_recibido;
;eeprom_i2c.c: 304: char_recibido=getch();
	fcall	_getch
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@char_recibido)^080h
	line	305
;eeprom_i2c.c: 305: while(char_recibido=='E')
	goto	l6728
	line	307
	
l6676:	
;eeprom_i2c.c: 306: {
;eeprom_i2c.c: 307: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	308
	
l6678:	
;eeprom_i2c.c: 308: lcd_puts("Escribiendo...");
	movlw	low((STR_2-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	309
	
l6680:	
;eeprom_i2c.c: 309: i2c_init();
	fcall	_i2c_init
	line	310
	
l6682:	
;eeprom_i2c.c: 310: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(6)	;volatile
	line	311
	
l6684:	
;eeprom_i2c.c: 311: cnt1=0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(main@cnt1)^080h
	line	312
	
l6686:	
	line	313
	
l6688:	
;eeprom_i2c.c: 313: cnt1i=0;
	clrf	(main@cnt1i)^080h
	clrf	(main@cnt1i+1)^080h
	line	314
	
l6690:	
	line	315
	
l6692:	
	line	316
;eeprom_i2c.c: 316: while(cnt1i<4)
	goto	l6716
	line	318
	
l6694:	
;eeprom_i2c.c: 317: {
;eeprom_i2c.c: 318: cnt2=0;
	clrf	(main@cnt2)^080h
	line	319
;eeprom_i2c.c: 319: cnt2i=0;
	clrf	(main@cnt2i)^080h
	clrf	(main@cnt2i+1)^080h
	line	321
;eeprom_i2c.c: 321: while(cnt2i<256)
	goto	l6712
	line	323
	
l6696:	
;eeprom_i2c.c: 322: {
;eeprom_i2c.c: 323: ADCON0=0xD5;
	movlw	(0D5h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(31)	;volatile
	line	324
	
l6698:	
;eeprom_i2c.c: 324: GO_DONE=1;
	bsf	(249/8),(249)&7
	line	325
;eeprom_i2c.c: 325: while(GO_DONE==1);
	
l1167:	
	btfsc	(249/8),(249)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l1167
u3440:
	line	326
	
l6700:	
;eeprom_i2c.c: 326: CCPR1L=ADRESH;
	movf	(30),w	;volatile
	movwf	(21)	;volatile
	line	327
	
l6702:	
;eeprom_i2c.c: 327: CCP1CON=(ADRESL>>2)|0x0C;
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
	line	329
	
l6704:	
;eeprom_i2c.c: 329: nin=ADRESH;
	movf	(30),w	;volatile
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_nin)^080h
	line	343
	
l6706:	
;eeprom_i2c.c: 343: I2C_EEOUT(cnt1, cnt2, nin);
	movf	(main@cnt2)^080h,w
	movwf	(?_I2C_EEOUT)
	movf	(_nin)^080h,w
	movwf	0+(?_I2C_EEOUT)+01h
	movf	(main@cnt1)^080h,w
	fcall	_I2C_EEOUT
	line	344
	
l6708:	
;eeprom_i2c.c: 344: cnt2=cnt2+1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	incf	(main@cnt2)^080h,f
	line	345
	
l6710:	
;eeprom_i2c.c: 345: cnt2i=cnt2i+1;
	incf	(main@cnt2i)^080h,f
	skipnz
	incf	(main@cnt2i+1)^080h,f
	line	321
	
l6712:	
	movlw	high(0100h)
	subwf	(main@cnt2i+1)^080h,w
	movlw	low(0100h)
	skipnz
	subwf	(main@cnt2i)^080h,w
	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l6696
u3450:
	line	347
	
l6714:	
;eeprom_i2c.c: 346: }
;eeprom_i2c.c: 347: cnt1=cnt1+1;
	incf	(main@cnt1)^080h,f
	line	348
;eeprom_i2c.c: 348: cnt1i=cnt1i+1;
	incf	(main@cnt1i)^080h,f
	skipnz
	incf	(main@cnt1i+1)^080h,f
	line	316
	
l6716:	
	movlw	high(04h)
	subwf	(main@cnt1i+1)^080h,w
	movlw	low(04h)
	skipnz
	subwf	(main@cnt1i)^080h,w
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l6694
u3460:
	line	350
	
l6718:	
	line	351
;eeprom_i2c.c: 351: cnt1=0;
	clrf	(main@cnt1)^080h
	line	352
;eeprom_i2c.c: 352: cnt2i=0;
	clrf	(main@cnt2i)^080h
	clrf	(main@cnt2i+1)^080h
	line	353
;eeprom_i2c.c: 353: cnt1i=0;
	clrf	(main@cnt1i)^080h
	clrf	(main@cnt1i+1)^080h
	line	354
;eeprom_i2c.c: 354: cntd=0;
	clrf	(main@cntd)^080h
	clrf	(main@cntd+1)^080h
	line	355
	
l6720:	
;eeprom_i2c.c: 355: lcd_clear();
	fcall	_lcd_clear
	line	356
	
l6722:	
;eeprom_i2c.c: 356: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	357
	
l6724:	
;eeprom_i2c.c: 357: lcd_puts("Memoria Escrita");
	movlw	low((STR_3-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	goto	l6674
	line	305
	
l6728:	
	movf	(main@char_recibido)^080h,w
	xorlw	045h
	skipnz
	goto	u3471
	goto	u3470
u3471:
	goto	l6676
u3470:
	goto	l6894
	line	362
	
l6730:	
;eeprom_i2c.c: 361: {
;eeprom_i2c.c: 362: lcd_clear();
	fcall	_lcd_clear
	line	363
;eeprom_i2c.c: 363: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	364
	
l6732:	
;eeprom_i2c.c: 364: lcd_puts("Leyendo...");
	movlw	low((STR_4-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	365
;eeprom_i2c.c: 365: while(cnt1i<4)
	goto	l6886
	line	367
	
l6734:	
;eeprom_i2c.c: 366: {
;eeprom_i2c.c: 367: cnt2=0;
	clrf	(main@cnt2)^080h
	line	368
;eeprom_i2c.c: 368: cnt2i=0;
	clrf	(main@cnt2i)^080h
	clrf	(main@cnt2i+1)^080h
	line	369
;eeprom_i2c.c: 369: while(cnt2i<256)
	goto	l6882
	line	371
	
l6736:	
;eeprom_i2c.c: 370: {
;eeprom_i2c.c: 371: PORTB=I2C_EEIN(cnt1,cnt2);
	movf	(main@cnt1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_I2C_EEIN)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_I2C_EEIN)+01h
	fcall	_I2C_EEIN
	movwf	(6)	;volatile
	line	372
;eeprom_i2c.c: 372: sprintf(carac,"%1.3f",I2C_EEIN(cnt1,cnt2)*0.0196078431372);
	movlw	0xa1
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x3c
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_I2C_EEIN)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_I2C_EEIN)
	fcall	_I2C_EEIN
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___lbtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___lbtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$2959)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$2959+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(_main$2959+2)^080h
	
l6738:	
;eeprom_i2c.c: 372: sprintf(carac,"%1.3f",I2C_EEIN(cnt1,cnt2)*0.0196078431372);
	movlw	((STR_5-__stringbase))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_sprintf)
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$2959)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$2959+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(_main$2959+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(_carac)&0ffh
	fcall	_sprintf
	line	373
	
l6740:	
;eeprom_i2c.c: 373: lcd_goto(0x40);
	movlw	(040h)
	fcall	_lcd_goto
	line	374
;eeprom_i2c.c: 374: lcd_puts("V:");
	movlw	low((STR_6-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	375
	
l6742:	
;eeprom_i2c.c: 375: lcd_goto(0x42);
	movlw	(042h)
	fcall	_lcd_goto
	line	376
	
l6744:	
;eeprom_i2c.c: 376: lcd_puts(carac);
	movlw	(_carac&0ffh)
	movwf	(?_lcd_puts)
	movlw	(0x1/2)
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	384
	
l6746:	
;eeprom_i2c.c: 384: B1=cnt1i;
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt1i+1)^080h,w
	movwf	(main@B1+1)^080h
	movf	(main@cnt1i)^080h,w
	movwf	(main@B1)^080h
	line	385
	
l6748:	
;eeprom_i2c.c: 385: cen=B1/100;
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@B1+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B1)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@cen+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@cen)^080h
	line	386
	
l6750:	
;eeprom_i2c.c: 386: B2=B1-(cen*100);
	movf	(main@cen+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@cen)^080h,w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@B2+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@B2)^080h
	
l6752:	
	movf	(main@B1)^080h,w
	addwf	(main@B2)^080h,f
	skipnc
	incf	(main@B2+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@B2+1)^080h,f
	line	387
;eeprom_i2c.c: 387: dec=B2/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@B2+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B2)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@dec+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@dec)^080h
	line	388
;eeprom_i2c.c: 388: uni=B1-(cen*100)-(dec*10);
	movf	(main@dec+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@dec)^080h,w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@uni+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@uni)^080h
	movf	(main@cen+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@cen)^080h,w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(1+(?___wmul)),w
	addwf	(main@uni+1)^080h,f
	
l6754:	
	movf	(main@B1)^080h,w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@uni+1)^080h,f
	line	391
	
l6756:	
;eeprom_i2c.c: 391: putch(cen+48);
	movf	(main@cen)^080h,w
	addlw	030h
	fcall	_putch
	line	392
	
l6758:	
;eeprom_i2c.c: 392: putch(dec+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@dec)^080h,w
	addlw	030h
	fcall	_putch
	line	393
	
l6760:	
;eeprom_i2c.c: 393: putch(uni+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@uni)^080h,w
	addlw	030h
	fcall	_putch
	line	394
	
l6762:	
;eeprom_i2c.c: 394: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	395
	
l6764:	
;eeprom_i2c.c: 395: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	396
	
l6766:	
;eeprom_i2c.c: 396: pause(250);
	movlw	0FAh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	398
	
l6768:	
;eeprom_i2c.c: 398: B1=cnt2i;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@cnt2i+1)^080h,w
	movwf	(main@B1+1)^080h
	movf	(main@cnt2i)^080h,w
	movwf	(main@B1)^080h
	line	399
;eeprom_i2c.c: 399: cen=B1/100;
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@B1+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B1)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@cen+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@cen)^080h
	line	400
;eeprom_i2c.c: 400: B2=B1-(cen*100);
	movf	(main@cen+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@cen)^080h,w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@B2+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@B2)^080h
	
l6770:	
	movf	(main@B1)^080h,w
	addwf	(main@B2)^080h,f
	skipnc
	incf	(main@B2+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@B2+1)^080h,f
	line	401
	
l6772:	
;eeprom_i2c.c: 401: dec=B2/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@B2+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B2)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@dec+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@dec)^080h
	line	402
	
l6774:	
;eeprom_i2c.c: 402: uni=B1-(cen*100)-(dec*10);
	movf	(main@dec+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@dec)^080h,w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@uni+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@uni)^080h
	
l6776:	
	movf	(main@cen+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@cen)^080h,w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(1+(?___wmul)),w
	addwf	(main@uni+1)^080h,f
	movf	(main@B1)^080h,w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@uni+1)^080h,f
	line	405
	
l6778:	
;eeprom_i2c.c: 405: putch(cen+48);
	movf	(main@cen)^080h,w
	addlw	030h
	fcall	_putch
	line	406
	
l6780:	
;eeprom_i2c.c: 406: putch(dec+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@dec)^080h,w
	addlw	030h
	fcall	_putch
	line	407
	
l6782:	
;eeprom_i2c.c: 407: putch(uni+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@uni)^080h,w
	addlw	030h
	fcall	_putch
	line	408
	
l6784:	
;eeprom_i2c.c: 408: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	409
	
l6786:	
;eeprom_i2c.c: 409: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	410
	
l6788:	
;eeprom_i2c.c: 410: pause(250);
	movlw	0FAh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	414
;eeprom_i2c.c: 414: cntd=cnt2+(cnt1*256)+1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@cnt2)^080h,w
	movwf	(main@cntd)^080h
	clrf	(main@cntd+1)^080h
	
l6790:	
	movf	(main@cnt1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(??_main+0)+0,w
	movwf	(??_main+0)+1
	clrf	(??_main+0)+0
	movf	0+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(main@cntd)^080h,f
	skipnc
	incf	(main@cntd+1)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	addwf	(main@cntd+1)^080h,f
	
l6792:	
	incf	(main@cntd)^080h,f
	skipnz
	incf	(main@cntd+1)^080h,f
	line	415
	
l6794:	
;eeprom_i2c.c: 415: B1=cntd;
	movf	(main@cntd+1)^080h,w
	movwf	(main@B1+1)^080h
	movf	(main@cntd)^080h,w
	movwf	(main@B1)^080h
	line	416
	
l6796:	
;eeprom_i2c.c: 416: mil=B1/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(main@B1+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B1)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@mil+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@mil)^080h
	line	417
	
l6798:	
;eeprom_i2c.c: 417: B2=B1-(mil*1000);
	movf	(main@mil+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@mil)^080h,w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@B2+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@B2)^080h
	
l6800:	
	movf	(main@B1)^080h,w
	addwf	(main@B2)^080h,f
	skipnc
	incf	(main@B2+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@B2+1)^080h,f
	line	418
	
l6802:	
;eeprom_i2c.c: 418: cen=B2/100;
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@B2+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B2)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@cen+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@cen)^080h
	line	419
	
l6804:	
;eeprom_i2c.c: 419: B2=B1-(mil*1000)-(cen*100);
	movf	(main@cen+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@cen)^080h,w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@B2+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@B2)^080h
	
l6806:	
	movf	(main@mil+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@mil)^080h,w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@B2)^080h,f
	skipnc
	incf	(main@B2+1)^080h,f
	movf	(1+(?___wmul)),w
	addwf	(main@B2+1)^080h,f
	
l6808:	
	movf	(main@B1)^080h,w
	addwf	(main@B2)^080h,f
	skipnc
	incf	(main@B2+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@B2+1)^080h,f
	line	420
	
l6810:	
;eeprom_i2c.c: 420: dec=B2/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@B2+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B2)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@dec+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@dec)^080h
	line	421
	
l6812:	
;eeprom_i2c.c: 421: uni=B1-(mil*1000)-(cen*100)-(dec*10);
	movf	(main@dec+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@dec)^080h,w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@uni+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@uni)^080h
	
l6814:	
	movf	(main@cen+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@cen)^080h,w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(1+(?___wmul)),w
	addwf	(main@uni+1)^080h,f
	
l6816:	
	movf	(main@mil+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@mil)^080h,w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(1+(?___wmul)),w
	addwf	(main@uni+1)^080h,f
	
l6818:	
	movf	(main@B1)^080h,w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@uni+1)^080h,f
	line	422
	
l6820:	
;eeprom_i2c.c: 422: putch(mil+48);
	movf	(main@mil)^080h,w
	addlw	030h
	fcall	_putch
	line	423
	
l6822:	
;eeprom_i2c.c: 423: putch(cen+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cen)^080h,w
	addlw	030h
	fcall	_putch
	line	424
	
l6824:	
;eeprom_i2c.c: 424: putch(dec+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@dec)^080h,w
	addlw	030h
	fcall	_putch
	line	425
	
l6826:	
;eeprom_i2c.c: 425: putch(uni+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@uni)^080h,w
	addlw	030h
	fcall	_putch
	line	426
	
l6828:	
;eeprom_i2c.c: 426: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	427
	
l6830:	
;eeprom_i2c.c: 427: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	428
	
l6832:	
;eeprom_i2c.c: 428: pause(250);
	movlw	0FAh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	430
	
l6834:	
;eeprom_i2c.c: 430: B1=I2C_EEIN(cnt1,cnt2)*0.0196078431372*1000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@cnt2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	0+(?_I2C_EEIN)+01h
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cnt1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	movwf	(?_I2C_EEIN)
	fcall	_I2C_EEIN
	fcall	___lbtoft
	movf	(0+(?___lbtoft)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___lbtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___lbtoft)),w
	movwf	2+(?___ftmul)+03h
	movlw	0xdd
	movwf	(?___ftmul)
	movlw	0x9c
	movwf	(?___ftmul+1)
	movlw	0x41
	movwf	(?___ftmul+2)
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@B1+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@B1)^080h
	line	431
	
l6836:	
;eeprom_i2c.c: 431: mil=B1/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(main@B1+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B1)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@mil+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@mil)^080h
	line	432
	
l6838:	
;eeprom_i2c.c: 432: B2=B1-(mil*1000);
	movf	(main@mil+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@mil)^080h,w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@B2+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@B2)^080h
	
l6840:	
	movf	(main@B1)^080h,w
	addwf	(main@B2)^080h,f
	skipnc
	incf	(main@B2+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@B2+1)^080h,f
	line	433
	
l6842:	
;eeprom_i2c.c: 433: cen=B2/100;
	movlw	064h
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@B2+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B2)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@cen+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@cen)^080h
	line	434
	
l6844:	
;eeprom_i2c.c: 434: B2=B1-(mil*1000)-(cen*100);
	movf	(main@cen+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@cen)^080h,w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@B2+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@B2)^080h
	
l6846:	
	movf	(main@mil+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@mil)^080h,w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@B2)^080h,f
	skipnc
	incf	(main@B2+1)^080h,f
	movf	(1+(?___wmul)),w
	addwf	(main@B2+1)^080h,f
	
l6848:	
	movf	(main@B1)^080h,w
	addwf	(main@B2)^080h,f
	skipnc
	incf	(main@B2+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@B2+1)^080h,f
	line	435
	
l6850:	
;eeprom_i2c.c: 435: dec=B2/10;
	movlw	0Ah
	movwf	(?___lwdiv)
	clrf	(?___lwdiv+1)
	movf	(main@B2+1)^080h,w
	movwf	1+(?___lwdiv)+02h
	movf	(main@B2)^080h,w
	movwf	0+(?___lwdiv)+02h
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(main@dec+1)^080h
	movf	(0+(?___lwdiv)),w
	movwf	(main@dec)^080h
	line	436
	
l6852:	
;eeprom_i2c.c: 436: uni=B1-(mil*1000)-(cen*100)-(dec*10);
	movf	(main@dec+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@dec)^080h,w
	movwf	(?___wmul)
	movlw	low(-10)
	movwf	0+(?___wmul)+02h
	movlw	high(-10)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(main@uni+1)^080h
	movf	(0+(?___wmul)),w
	movwf	(main@uni)^080h
	
l6854:	
	movf	(main@cen+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@cen)^080h,w
	movwf	(?___wmul)
	movlw	low(-100)
	movwf	0+(?___wmul)+02h
	movlw	high(-100)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(1+(?___wmul)),w
	addwf	(main@uni+1)^080h,f
	
l6856:	
	movf	(main@mil+1)^080h,w
	movwf	(?___wmul+1)
	movf	(main@mil)^080h,w
	movwf	(?___wmul)
	movlw	low(-1000)
	movwf	0+(?___wmul)+02h
	movlw	high(-1000)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(1+(?___wmul)),w
	addwf	(main@uni+1)^080h,f
	
l6858:	
	movf	(main@B1)^080h,w
	addwf	(main@uni)^080h,f
	skipnc
	incf	(main@uni+1)^080h,f
	movf	(main@B1+1)^080h,w
	addwf	(main@uni+1)^080h,f
	line	438
	
l6860:	
;eeprom_i2c.c: 438: putch(mil+48);
	movf	(main@mil)^080h,w
	addlw	030h
	fcall	_putch
	line	439
	
l6862:	
;eeprom_i2c.c: 439: putch('.');
	movlw	(02Eh)
	fcall	_putch
	line	440
	
l6864:	
;eeprom_i2c.c: 440: putch(cen+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@cen)^080h,w
	addlw	030h
	fcall	_putch
	line	441
	
l6866:	
;eeprom_i2c.c: 441: putch(dec+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@dec)^080h,w
	addlw	030h
	fcall	_putch
	line	442
	
l6868:	
;eeprom_i2c.c: 442: putch(uni+48);
	bsf	status, 5	;RP0=1, select bank1
	movf	(main@uni)^080h,w
	addlw	030h
	fcall	_putch
	line	444
	
l6870:	
;eeprom_i2c.c: 444: putch(0x0D);
	movlw	(0Dh)
	fcall	_putch
	line	445
	
l6872:	
;eeprom_i2c.c: 445: putch(0x0A);
	movlw	(0Ah)
	fcall	_putch
	line	446
	
l6874:	
;eeprom_i2c.c: 446: pause(250);
	movlw	0FAh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	448
	
l6876:	
;eeprom_i2c.c: 448: cnt2=cnt2+1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	incf	(main@cnt2)^080h,f
	line	449
	
l6878:	
;eeprom_i2c.c: 449: cntd=cntd+1;
	incf	(main@cntd)^080h,f
	skipnz
	incf	(main@cntd+1)^080h,f
	line	450
	
l6880:	
;eeprom_i2c.c: 450: cnt2i=cnt2i+1;
	incf	(main@cnt2i)^080h,f
	skipnz
	incf	(main@cnt2i+1)^080h,f
	line	369
	
l6882:	
	movlw	high(0100h)
	subwf	(main@cnt2i+1)^080h,w
	movlw	low(0100h)
	skipnz
	subwf	(main@cnt2i)^080h,w
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l6736
u3480:
	line	452
	
l6884:	
;eeprom_i2c.c: 451: }
;eeprom_i2c.c: 452: cnt1i=cnt1i+1;
	incf	(main@cnt1i)^080h,f
	skipnz
	incf	(main@cnt1i+1)^080h,f
	line	453
;eeprom_i2c.c: 453: cnt1=cnt1+1;
	incf	(main@cnt1)^080h,f
	line	365
	
l6886:	
	movlw	high(04h)
	bsf	status, 5	;RP0=1, select bank1
	subwf	(main@cnt1i+1)^080h,w
	movlw	low(04h)
	skipnz
	subwf	(main@cnt1i)^080h,w
	skipc
	goto	u3491
	goto	u3490
u3491:
	goto	l6734
u3490:
	line	455
	
l6888:	
;eeprom_i2c.c: 454: }
;eeprom_i2c.c: 455: lcd_clear();
	fcall	_lcd_clear
	line	456
;eeprom_i2c.c: 456: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	457
	
l6890:	
;eeprom_i2c.c: 457: lcd_puts("Memoria leida");
	movlw	low((STR_7-__stringbase))
	movwf	(?_lcd_puts)
	movlw	80h
	movwf	(?_lcd_puts+1)
	fcall	_lcd_puts
	line	458
	
l6892:	
;eeprom_i2c.c: 458: char_recibido=getch();
	fcall	_getch
	bsf	status, 5	;RP0=1, select bank1
	movwf	(main@char_recibido)^080h
	line	360
	
l6894:	
	movf	(main@char_recibido)^080h,w
	xorlw	04Ch
	skipnz
	goto	u3501
	goto	u3500
u3501:
	goto	l6730
u3500:
	line	475
	
l1182:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sprintf
psect	text757,local,class=CODE,delta=2
global __ptext757
__ptext757:

;; *************** function _sprintf *****************
;; Defined at:
;;		line 488 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> carac(5), 
;;  f               1   54[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(6), 
;; Auto vars:     Size  Location     Type
;;  sp              1   18[BANK1 ] PTR unsigned char 
;;		 -> carac(5), 
;;  _val            4    8[BANK1 ] struct .
;;  fval            3   19[BANK1 ] struct .
;;  integ           3    5[BANK1 ] struct .
;;  ival            3    0        struct .
;;  prec            2   22[BANK1 ] int 
;;  exp             2   16[BANK1 ] int 
;;  width           2   14[BANK1 ] int 
;;  flag            2   12[BANK1 ] unsigned short 
;;  c               1   24[BANK1 ] char 
;;  ap              1    4[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   54[BANK0 ] int 
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
psect	text757
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
	
l6324:	
	movlw	(?_sprintf+01h)&0ffh
	movwf	(sprintf@ap)^080h
	line	540
	goto	l6574
	line	542
	
l6326:	
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u2991
	goto	u2990
u2991:
	goto	l6332
u2990:
	line	545
	
l6328:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movf	(sprintf@c)^080h,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6330:	
	incf	(sprintf@sp)^080h,f
	line	546
	goto	l6574
	line	550
	
l6332:	
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	552
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	601
	
l6334:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfss	status,0
	goto	u3001
	goto	u3000
u3001:
	goto	l6344
u3000:
	line	602
	
l6336:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	604
	
l6338:	
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
	
l6340:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	605
	
l6342:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3011
	goto	u3010
u3011:
	goto	l6338
u3010:
	line	614
	
l6344:	
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l6358
u3020:
	line	615
	
l6346:	
	bsf	status, 5	;RP0=1, select bank1
	bsf	(sprintf@flag)^080h+(14/8),(14)&7
	line	616
	
l6348:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	624
	
l6350:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	625
	goto	l6356
	line	626
	
l6352:	
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
	
l6354:	
	bcf	status, 5	;RP0=0, select bank0
	incf	(sprintf@f),f
	line	625
	
l6356:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	fcall	_isdigit
	btfsc	status,0
	goto	u3031
	goto	u3030
u3031:
	goto	l6352
u3030:
	goto	l6364
	line	629
	
l6358:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	631
	
l6360:	
	bsf	(sprintf@flag)^080h+(12/8),(12)&7
	goto	l6364
	line	665
	
l1231:	
	line	666
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	667
	goto	l6366
	line	638
	
l6364:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
; rangetable           107     6 (fixed)
; spacedrange          212     9 (fixed)
; locatedrange         103     3 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l6576
	xorlw	102^0	; case 102
	skipnz
	goto	l1231
	goto	l6574
	opt asmopt_on

	line	828
	
l6366:	
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
	goto	u3041
	goto	u3040
u3041:
	goto	l6526
u3040:
	line	830
	
l6368:	
	bsf	status, 5	;RP0=1, select bank1
	btfss	(sprintf@flag+1)^080h,(12)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l6372
u3050:
	line	832
	
l6370:	
	movlw	06h
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	line	833
	
l6372:	
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
	
l6374:	
	movlw	(03h)
	addwf	(sprintf@ap)^080h,f
	line	834
	
l6376:	
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
	goto	u3061
	goto	u3060
u3061:
	goto	l6382
u3060:
	line	835
	
l6378:	
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
	
l6380:	
	movlw	03h
	iorwf	(sprintf@flag)^080h,f
	line	838
	
l6382:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	839
	
l6384:	
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3071
	goto	u3070
u3071:
	goto	l6414
u3070:
	line	840
	
l6386:	
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
u3085:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u3080:
	addlw	-1
	skipz
	goto	u3085
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@exp)^080h
	
l6388:	
	movlw	0FFh
	andwf	(sprintf@exp)^080h,f
	clrf	(sprintf@exp+1)^080h
	
l6390:	
	movlw	-126
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	841
	
l6392:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	842
	
l6394:	
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
	
l6396:	
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
	
l6398:	
	btfss	(sprintf@exp+1)^080h,7
	goto	u3091
	goto	u3090
u3091:
	goto	l6402
u3090:
	line	845
	
l6400:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	849
	
l6402:	
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
	
l6404:	
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
	
l6406:	
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
	goto	u3101
	goto	u3100
u3101:
	goto	l6410
u3100:
	line	852
	
l6408:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	goto	l6414
	line	853
	
l6410:	
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
	goto	u3111
	goto	u3110
u3111:
	goto	l6414
u3110:
	line	854
	
l6412:	
	incf	(sprintf@exp)^080h,f
	skipnz
	incf	(sprintf@exp+1)^080h,f
	line	1115
	
l6414:	
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3125
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u3125:

	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l6418
u3120:
	line	1116
	
l6416:	
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
	
l6418:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3135
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u3135:

	skipnc
	goto	u3131
	goto	u3130
u3131:
	goto	l6426
u3130:
	
l6420:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3141
	goto	u3140
u3141:
	goto	l6442
u3140:
	
l6422:	
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
	goto	u3151
	goto	u3150
u3151:
	goto	l6442
u3150:
	
l6424:	
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3165
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u3165:

	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l6442
u3160:
	line	1123
	
l6426:	
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
	goto	u3171
	goto	u3170
u3171:
	goto	l6430
u3170:
	line	1124
	
l6428:	
	movlw	-9
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1125
	goto	l6432
	line	1126
	
l6430:	
	movlw	-8
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1128
	
l6432:	
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
	
l6436:	
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
	movwf	(_sprintf$1936+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1936+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1936+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$1936)^080h

	
l6438:	
	movf	(_sprintf$1936+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$1936+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$1936+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$1936)^080h,w
	movwf	(sprintf@_val)^080h

	line	1132
	
l6440:	
	clrf	(sprintf@fval)^080h
	clrf	(sprintf@fval+1)^080h
	clrf	(sprintf@fval+2)^080h
	line	1133
	goto	l6446
	line	1134
	
l6442:	
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
	
l6444:	
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	1139
	
l6446:	
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	line	1140
	
l6452:	
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
	goto	u3185
	bcf	status, 5	;RP0=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u3185
	bcf	status, 5	;RP0=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3185
	bcf	status, 5	;RP0=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@_val)^080h,w
u3185:
	skipnc
	goto	u3181
	goto	u3180
u3181:
	goto	l6456
u3180:
	goto	l6460
	line	1139
	
l6456:	
	incf	(sprintf@c)^080h,f
	
l6458:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3191
	goto	u3190
u3191:
	goto	l6452
u3190:
	line	1145
	
l6460:	
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
	
l6462:	
	movf	(sprintf@prec+1)^080h,w
	iorwf	(sprintf@prec)^080h,w
	skipnz
	goto	u3201
	goto	u3200
u3201:
	goto	l6466
u3200:
	line	1151
	
l6464:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1152
	
l6466:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l6476
u3210:
	line	1153
	
l6468:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	goto	l6476
	line	1182
	
l6470:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6472:	
	incf	(sprintf@sp)^080h,f
	goto	l6468
	line	1181
	
l6476:	
	movf	(sprintf@width+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3225
	movlw	low(01h)
	subwf	(sprintf@width)^080h,w
u3225:

	skipnc
	goto	u3221
	goto	u3220
u3221:
	goto	l6470
u3220:
	line	1189
	
l6478:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l6488
u3230:
	line	1191
	
l6480:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6482:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	goto	l6488
	line	1201
	
l6484:	
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
	goto	l6482
	line	1197
	
l6488:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l6484
u3240:
	goto	l6496
	line	1205
	
l6490:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6492:	
	incf	(sprintf@sp)^080h,f
	line	1206
	
l6494:	
	movlw	-1
	addwf	(sprintf@exp)^080h,f
	skipc
	decf	(sprintf@exp+1)^080h,f
	line	1204
	
l6496:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3255
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u3255:

	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l6490
u3250:
	line	1208
	
l6498:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3265
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u3265:

	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l6502
u3260:
	line	1209
	
l6500:	
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l1269
	line	1211
	
l6502:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	
l1269:	
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
	goto	u3270
	goto	l6508
u3270:
	line	1218
	
l6504:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Eh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6506:	
	incf	(sprintf@sp)^080h,f
	line	1224
	
l6508:	
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
	goto	l6516
	line	1226
	
l6510:	
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
	
l6512:	
	bsf	status, 5	;RP0=1, select bank1
	incf	(sprintf@sp)^080h,f
	line	1227
	
l6514:	
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
	
l6516:	
	decf	(sprintf@c)^080h,f
	incf	((sprintf@c)^080h),w
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l6510
u3280:
	goto	l6524
	line	1231
	
l6518:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(030h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6520:	
	incf	(sprintf@sp)^080h,f
	line	1232
	
l6522:	
	movlw	-1
	addwf	(sprintf@prec)^080h,f
	skipc
	decf	(sprintf@prec+1)^080h,f
	line	1230
	
l6524:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l6518
u3290:
	goto	l6574
	line	1285
	
l6526:	
	bsf	status, 5	;RP0=1, select bank1
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l6532
u3300:
	
l6528:	
	movf	(sprintf@_val+3)^080h,w
	iorwf	(sprintf@_val+2)^080h,w
	iorwf	(sprintf@_val+1)^080h,w
	iorwf	(sprintf@_val)^080h,w
	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l6532
u3310:
	line	1286
	
l6530:	
	incf	(sprintf@prec)^080h,f
	skipnz
	incf	(sprintf@prec+1)^080h,f
	line	1334
	
l6532:	
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
	goto	u3325
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3325:

	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l6536
u3320:
	line	1335
	
l6534:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	movwf	(sprintf@c)^080h
	goto	l6540
	line	1336
	
l6536:	
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
	goto	u3335
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	subwf	(sprintf@prec)^080h,w
u3335:

	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l6540
u3330:
	line	1337
	
l6538:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@c)^080h,w
	movwf	(sprintf@prec)^080h
	clrf	(sprintf@prec+1)^080h
	btfsc	(sprintf@prec)^080h,7
	decf	(sprintf@prec+1)^080h,f
	line	1340
	
l6540:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3341
	goto	u3340
u3341:
	goto	l6546
u3340:
	
l6542:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l6546
u3350:
	line	1341
	
l6544:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	line	1343
	
l6546:	
	btfss	(sprintf@flag+1)^080h,(14)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l6554
u3360:
	line	1344
	
l6548:	
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
	goto	u3375
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	subwf	(sprintf@prec)^080h,w
u3375:

	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l6552
u3370:
	line	1345
	
l6550:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	subwf	(sprintf@width)^080h,f
	movf	(sprintf@prec+1)^080h,w
	skipc
	decf	(sprintf@width+1)^080h,f
	subwf	(sprintf@width+1)^080h,f
	goto	l6554
	line	1347
	
l6552:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1376
	
l6554:	
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
	goto	u3385
	bsf	status, 5	;RP0=1, select bank1
	movf	(sprintf@width)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	0+(??_sprintf+0)+0,w
u3385:

	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l6558
u3380:
	line	1377
	
l6556:	
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
	goto	l6560
	line	1379
	
l6558:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@width)^080h
	clrf	(sprintf@width+1)^080h
	line	1423
	
l6560:	
	movf	(sprintf@width+1)^080h,w
	iorwf	(sprintf@width)^080h,w
	skipnz
	goto	u3391
	goto	u3390
u3391:
	goto	l6568
u3390:
	line	1425
	
l6562:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(020h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l6564:	
	incf	(sprintf@sp)^080h,f
	line	1426
	
l6566:	
	movlw	-1
	addwf	(sprintf@width)^080h,f
	skipc
	decf	(sprintf@width+1)^080h,f
	movf	(((sprintf@width+1)^080h)),w
	iorwf	(((sprintf@width)^080h)),w
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l6562
u3400:
	line	1433
	
l6568:	
	movf	(sprintf@flag)^080h,w
	andlw	03h
	btfsc	status,2
	goto	u3411
	goto	u3410
u3411:
	goto	l6574
u3410:
	line	1434
	
l6570:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	movlw	(02Dh)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l6330
	line	540
	
l6574:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(sprintf@f),w
	incf	(sprintf@f),f
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l6326
u3420:
	line	1530
	
l6576:	
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	1533
	
l1292:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
;; =============== function _sprintf ends ============

	signat	_sprintf,4698
	global	_lcd_goto
psect	text758,local,class=CODE,delta=2
global __ptext758
__ptext758:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 244 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  pos             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  pos             1    6[COMMON] unsigned char 
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
psect	text758
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	244
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@pos stored from wreg
	movwf	(lcd_goto@pos)
	line	245
	
l6320:	
;eeprom_i2c.c: 245: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	246
	
l6322:	
;eeprom_i2c.c: 246: lcd_write(0x80+pos);
	movf	(lcd_goto@pos),w
	movwf	(?_lcd_write)
	clrf	(?_lcd_write+1)
	movlw	080h
	addwf	(?_lcd_write),f
	skipnc
	incf	(?_lcd_write+1),f
	fcall	_lcd_write
	line	247
	
l1155:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_puts
psect	text759,local,class=CODE,delta=2
global __ptext759
__ptext759:

;; *************** function _lcd_puts *****************
;; Defined at:
;;		line 231 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  s               2    6[COMMON] PTR const unsigned char 
;;		 -> STR_7(14), STR_6(3), carac(5), STR_4(11), 
;;		 -> STR_3(16), STR_2(15), STR_1(15), 
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
psect	text759
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	231
	global	__size_of_lcd_puts
	__size_of_lcd_puts	equ	__end_of_lcd_puts-_lcd_puts
	
_lcd_puts:	
	opt	stack 4
; Regs used in _lcd_puts: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	232
	
l6312:	
;eeprom_i2c.c: 232: RE2=1;
	bsf	(74/8),(74)&7
	line	233
;eeprom_i2c.c: 233: while(*s)
	goto	l6318
	line	234
	
l6314:	
;eeprom_i2c.c: 234: lcd_write(*s++);
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	movwf	(?_lcd_write)
	clrf	(?_lcd_write+1)
	fcall	_lcd_write
	
l6316:	
	incf	(lcd_puts@s),f
	skipnz
	incf	(lcd_puts@s+1),f
	line	233
	
l6318:	
	movf	(lcd_puts@s+1),w
	movwf	btemp+1
	movf	(lcd_puts@s),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l6314
u2980:
	line	235
	
l1149:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_puts
	__end_of_lcd_puts:
;; =============== function _lcd_puts ends ============

	signat	_lcd_puts,4216
	global	_lcd_clear
psect	text760,local,class=CODE,delta=2
global __ptext760
__ptext760:

;; *************** function _lcd_clear *****************
;; Defined at:
;;		line 224 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
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
psect	text760
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	224
	global	__size_of_lcd_clear
	__size_of_lcd_clear	equ	__end_of_lcd_clear-_lcd_clear
	
_lcd_clear:	
	opt	stack 4
; Regs used in _lcd_clear: [wreg+status,2+status,0+pclath+cstack]
	line	225
	
l6308:	
;eeprom_i2c.c: 225: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(74/8),(74)&7
	line	226
	
l6310:	
;eeprom_i2c.c: 226: lcd_write(0x1);
	clrf	(?_lcd_write)
	incf	(?_lcd_write),f
	clrf	(?_lcd_write+1)
	fcall	_lcd_write
	line	227
;eeprom_i2c.c: 227: pause(2);
	movlw	02h
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	228
	
l1143:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clear
	__end_of_lcd_clear:
;; =============== function _lcd_clear ends ============

	signat	_lcd_clear,88
	global	___ftsub
psect	text761,local,class=CODE,delta=2
global __ptext761
__ptext761:

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 17 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   44[BANK0 ] float 
;;  f1              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] float 
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
psect	text761
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftsub.c"
	line	17
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
	opt	stack 4
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l6302:	
	movlw	080h
	xorwf	(___ftsub@f2+2),f
	line	19
	
l6304:	
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
	
l2373:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
;; =============== function ___ftsub ends ============

	signat	___ftsub,8315
	global	_scale
psect	text762,local,class=CODE,delta=2
global __ptext762
__ptext762:

;; *************** function _scale *****************
;; Defined at:
;;		line 422 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   42[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] char 
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
psect	text762
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
	
l6262:	
	btfss	(scale@scl),7
	goto	u2931
	goto	u2930
u2931:
	goto	l6284
u2930:
	line	425
	
l6264:	
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	426
	
l6266:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l6274
u2940:
	line	427
	
l6268:	
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
	movwf	(_scale$2962)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2962+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2962+2)
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
	movf	(_scale$2962),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2962+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2962+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1209
	line	428
	
l6274:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2951
	goto	u2950
u2951:
	goto	l6280
u2950:
	line	429
	
l6276:	
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
	goto	l1209
	line	430
	
l6280:	
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
	goto	l1209
	line	432
	
l6284:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2961
	goto	u2960
u2961:
	goto	l6292
u2960:
	line	433
	
l6286:	
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
	movwf	(_scale$2962)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$2962+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$2962+2)
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
	movf	(_scale$2962),w
	movwf	0+(?___ftmul)+03h
	movf	(_scale$2962+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_scale$2962+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l1209
	line	434
	
l6292:	
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2971
	goto	u2970
u2971:
	goto	l6298
u2970:
	line	435
	
l6294:	
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
	goto	l1209
	line	436
	
l6298:	
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
	
l1209:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
;; =============== function _scale ends ============

	signat	_scale,4219
	global	_fround
psect	text763,local,class=CODE,delta=2
global __ptext763
__ptext763:

;; *************** function _fround *****************
;; Defined at:
;;		line 406 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\lib\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   53[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   44[BANK0 ] unsigned char 
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
psect	text763
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
	
l6240:	
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l6250
u2910:
	line	410
	
l6242:	
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
	movwf	(_fround$2960)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2960+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2960+2)
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
	movf	(_fround$2960),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2960+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2960+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(_fround$2961)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2961+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2961+2)
	
l6244:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2961),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2961+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2961+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1202
	line	411
	
l6250:	
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l6258
u2920:
	line	412
	
l6252:	
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
	movwf	(_fround$2960)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$2960+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$2960+2)
	
l6254:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x3f
	movwf	(?___ftmul+2)
	movf	(_fround$2960),w
	movwf	0+(?___ftmul)+03h
	movf	(_fround$2960+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_fround$2960+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l1202
	line	413
	
l6258:	
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
	
l1202:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
;; =============== function _fround ends ============

	signat	_fround,4219
	global	_lcd_write
psect	text764,local,class=CODE,delta=2
global __ptext764
__ptext764:

;; *************** function _lcd_write *****************
;; Defined at:
;;		line 215 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  c               2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
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
psect	text764
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	215
	global	__size_of_lcd_write
	__size_of_lcd_write	equ	__end_of_lcd_write-_lcd_write
	
_lcd_write:	
	opt	stack 4
; Regs used in _lcd_write: [wreg+status,2+status,0+pclath+cstack]
	line	216
	
l6226:	
;eeprom_i2c.c: 216: pause(1);
	clrf	(?_pause)
	incf	(?_pause),f
	clrf	(?_pause+1)
	fcall	_pause
	line	217
	
l6228:	
;eeprom_i2c.c: 217: PORTD=((c >> 4) & 0x0F);
	swapf	(lcd_write@c),w
	andlw	(0ffh shr 4) & 0ffh
	andlw	0Fh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	218
	
l6230:	
;eeprom_i2c.c: 218: ((RE1=1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6232:	
	bcf	(73/8),(73)&7
	line	219
	
l6234:	
;eeprom_i2c.c: 219: PORTD=(c & 0x0F);
	movf	(lcd_write@c),w
	andlw	0Fh
	movwf	(8)	;volatile
	line	220
	
l6236:	
;eeprom_i2c.c: 220: ((RE1=1),(RE1=0));
	bsf	(73/8),(73)&7
	
l6238:	
	bcf	(73/8),(73)&7
	line	221
	
l1140:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_write
	__end_of_lcd_write:
;; =============== function _lcd_write ends ============

	signat	_lcd_write,4216
	global	_I2C_EEOUT
psect	text765,local,class=CODE,delta=2
global __ptext765
__ptext765:

;; *************** function _I2C_EEOUT *****************
;; Defined at:
;;		line 184 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
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
;;		On entry : 7F/20
;;		On exit  : 1F/0
;;		Unchanged: FFF80/0
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
psect	text765
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	184
	global	__size_of_I2C_EEOUT
	__size_of_I2C_EEOUT	equ	__end_of_I2C_EEOUT-_I2C_EEOUT
	
_I2C_EEOUT:	
	opt	stack 5
; Regs used in _I2C_EEOUT: [wreg+status,2+status,0+pclath+cstack]
;I2C_EEOUT@address1 stored from wreg
	movwf	(I2C_EEOUT@address1)
	line	185
	
l6214:	
;eeprom_i2c.c: 185: i2c_start();
	fcall	_i2c_start
	line	186
	
l6216:	
;eeprom_i2c.c: 186: i2c_write(0xa0);
	movlw	(0A0h)
	fcall	_i2c_write
	line	187
	
l6218:	
;eeprom_i2c.c: 187: i2c_write(address1);
	movf	(I2C_EEOUT@address1),w
	fcall	_i2c_write
	line	188
	
l6220:	
;eeprom_i2c.c: 188: i2c_write(address2);
	movf	(I2C_EEOUT@address2),w
	fcall	_i2c_write
	line	189
	
l6222:	
;eeprom_i2c.c: 189: i2c_write(data);
	movf	(I2C_EEOUT@data),w
	fcall	_i2c_write
	line	190
;eeprom_i2c.c: 190: i2c_stop();
	fcall	_i2c_stop
	line	191
	
l6224:	
;eeprom_i2c.c: 191: pause(11);
	movlw	0Bh
	movwf	(?_pause)
	clrf	(?_pause+1)
	fcall	_pause
	line	192
	
l1134:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_EEOUT
	__end_of_I2C_EEOUT:
;; =============== function _I2C_EEOUT ends ============

	signat	_I2C_EEOUT,12408
	global	___lltoft
psect	text766,local,class=CODE,delta=2
global __ptext766
__ptext766:

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
psect	text766
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lltoft.c"
	line	36
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l6204:	
	movlw	(08Eh)
	movwf	(___lltoft@exp)
	line	41
	goto	l6208
	line	42
	
l6206:	
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	line	43
	incf	(___lltoft@exp),f
	line	41
	
l6208:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u2901
	goto	u2900
u2901:
	goto	l6206
u2900:
	line	45
	
l6210:	
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
	
l2530:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
;; =============== function ___lltoft ends ============

	signat	___lltoft,4219
	global	___lbtoft
psect	text767,local,class=CODE,delta=2
global __ptext767
__ptext767:

;; *************** function ___lbtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbtoft.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   13[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text767
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lbtoft.c"
	line	28
	global	__size_of___lbtoft
	__size_of___lbtoft	equ	__end_of___lbtoft-___lbtoft
	
___lbtoft:	
	opt	stack 6
; Regs used in ___lbtoft: [wreg+status,2+status,0+pclath+cstack]
;___lbtoft@c stored from wreg
	movwf	(___lbtoft@c)
	line	29
	
l6200:	
	movf	(___lbtoft@c),w
	movwf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lbtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lbtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lbtoft+2)
	line	30
	
l2415:	
	return
	opt stack 0
GLOBAL	__end_of___lbtoft
	__end_of___lbtoft:
;; =============== function ___lbtoft ends ============

	signat	___lbtoft,4219
	global	___ftmul
psect	text768,local,class=CODE,delta=2
global __ptext768
__ptext768:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   17[BANK0 ] float 
;;  f2              3   20[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   17[BANK0 ] float 
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
psect	text768
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l6144:	
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
	goto	u2821
	goto	u2820
u2821:
	goto	l6150
u2820:
	line	57
	
l6146:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2389
	line	58
	
l6150:	
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
	goto	u2831
	goto	u2830
u2831:
	goto	l6156
u2830:
	line	59
	
l6152:	
	clrf	(?___ftmul)
	clrf	(?___ftmul+1)
	clrf	(?___ftmul+2)
	goto	l2389
	line	60
	
l6156:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	addwf	(___ftmul@exp),f
	line	61
	
l6158:	
	movf	0+(((___ftmul@f1))+2),w
	movwf	(___ftmul@sign)
	line	62
	
l6160:	
	movf	0+(((___ftmul@f2))+2),w
	xorwf	(___ftmul@sign),f
	line	63
	
l6162:	
	movlw	(080h)
	andwf	(___ftmul@sign),f
	line	64
	
l6164:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l6166:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l6168:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l6170:	
	clrf	(___ftmul@f3_as_product)
	clrf	(___ftmul@f3_as_product+1)
	clrf	(___ftmul@f3_as_product+2)
	line	69
	
l6172:	
	movlw	(07h)
	movwf	(___ftmul@cntr)
	line	71
	
l6174:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l6178
u2840:
	line	72
	
l6176:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2851
	addwf	(___ftmul@f3_as_product+1),f
u2851:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2852
	addwf	(___ftmul@f3_as_product+2),f
u2852:

	line	73
	
l6178:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	74
	
l6180:	
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	line	75
	
l6182:	
	decfsz	(___ftmul@cntr),f
	goto	u2861
	goto	u2860
u2861:
	goto	l6174
u2860:
	line	76
	
l6184:	
	movlw	(09h)
	movwf	(___ftmul@cntr)
	line	78
	
l6186:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l6190
u2870:
	line	79
	
l6188:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2881
	addwf	(___ftmul@f3_as_product+1),f
u2881:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2882
	addwf	(___ftmul@f3_as_product+2),f
u2882:

	line	80
	
l6190:	
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	line	81
	
l6192:	
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	line	82
	
l6194:	
	decfsz	(___ftmul@cntr),f
	goto	u2891
	goto	u2890
u2891:
	goto	l6186
u2890:
	line	83
	
l6196:	
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
	
l2389:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftadd
psect	text769,local,class=CODE,delta=2
global __ptext769
__ptext769:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   32[BANK0 ] float 
;;  f2              3   35[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   43[BANK0 ] unsigned char 
;;  exp2            1   42[BANK0 ] unsigned char 
;;  sign            1   41[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
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
psect	text769
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6066:	
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
	
l6068:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2620
	goto	l6074
u2620:
	
l6070:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2631
	goto	u2630
u2631:
	goto	l6078
u2630:
	
l6072:	
	movf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp1),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l6078
u2640:
	line	93
	
l6074:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l2337
	line	94
	
l6078:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2650
	goto	l2340
u2650:
	
l6080:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2661
	goto	u2660
u2661:
	goto	l6084
u2660:
	
l6082:	
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(___ftadd@exp2),w
	subwf	(??___ftadd+0)+0,f
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l6084
u2670:
	
l2340:	
	line	95
	goto	l2337
	line	96
	
l6084:	
	movlw	(06h)
	movwf	(___ftadd@sign)
	line	97
	
l6086:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l2341
u2680:
	line	98
	
l6088:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l2341:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l2342
u2690:
	line	100
	
l6090:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l2342:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l6092:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l6094:	
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
	goto	u2701
	goto	u2700
u2701:
	goto	l6106
u2700:
	line	110
	
l6096:	
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	line	111
	decf	(___ftadd@exp2),f
	line	112
	
l6098:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2711
	goto	u2710
u2711:
	goto	l6104
u2710:
	
l6100:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2721
	goto	u2720
u2721:
	goto	l6096
u2720:
	goto	l6104
	line	114
	
l6102:	
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	line	115
	incf	(___ftadd@exp1),f
	line	113
	
l6104:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l6102
u2730:
	goto	l2351
	line	117
	
l6106:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2741
	goto	u2740
u2741:
	goto	l2351
u2740:
	line	121
	
l6108:	
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	line	122
	decf	(___ftadd@exp1),f
	line	123
	
l6110:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2751
	goto	u2750
u2751:
	goto	l6116
u2750:
	
l6112:	
	decf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2761
	goto	u2760
u2761:
	goto	l6108
u2760:
	goto	l6116
	line	125
	
l6114:	
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	line	126
	incf	(___ftadd@exp2),f
	line	124
	
l6116:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l6114
u2770:
	line	129
	
l2351:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l6122
u2780:
	line	131
	
l6118:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	
l6120:	
	incf	(___ftadd@f1),f
	skipnz
	incf	(___ftadd@f1+1),f
	skipnz
	incf	(___ftadd@f1+2),f
	line	134
	
l6122:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l6128
u2790:
	line	136
	
l6124:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	
l6126:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	139
	
l6128:	
	clrf	(___ftadd@sign)
	line	140
	
l6130:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2801
	addwf	(___ftadd@f2+1),f
u2801:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2802
	addwf	(___ftadd@f2+2),f
u2802:

	line	141
	
l6132:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l6140
u2810:
	line	142
	
l6134:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	
l6136:	
	incf	(___ftadd@f2),f
	skipnz
	incf	(___ftadd@f2+1),f
	skipnz
	incf	(___ftadd@f2+2),f
	line	144
	
l6138:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	line	146
	
l6140:	
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
	
l2337:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_I2C_EEIN
psect	text770,local,class=CODE,delta=2
global __ptext770
__ptext770:

;; *************** function _I2C_EEIN *****************
;; Defined at:
;;		line 200 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  address1        1   13[BANK0 ] unsigned char 
;;  address2        1   14[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
;;		Unchanged: FFF9F/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
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
psect	text770
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	200
	global	__size_of_I2C_EEIN
	__size_of_I2C_EEIN	equ	__end_of_I2C_EEIN-_I2C_EEIN
	
_I2C_EEIN:	
	opt	stack 6
; Regs used in _I2C_EEIN: [wreg+status,2+status,0+pclath+cstack]
	line	202
	
l6046:	
;eeprom_i2c.c: 201: unsigned char data;
;eeprom_i2c.c: 202: i2c_start();
	fcall	_i2c_start
	line	203
	
l6048:	
;eeprom_i2c.c: 203: i2c_write(0xa0);
	movlw	(0A0h)
	fcall	_i2c_write
	line	204
	
l6050:	
;eeprom_i2c.c: 204: i2c_write(address1);
	movf	(I2C_EEIN@address1),w
	fcall	_i2c_write
	line	205
	
l6052:	
;eeprom_i2c.c: 205: i2c_write(address2);
	movf	(I2C_EEIN@address2),w
	fcall	_i2c_write
	line	206
	
l6054:	
;eeprom_i2c.c: 206: i2c_restart();
	fcall	_i2c_restart
	line	207
;eeprom_i2c.c: 207: i2c_write(0xa1);
	movlw	(0A1h)
	fcall	_i2c_write
	line	208
	
l6056:	
;eeprom_i2c.c: 208: data=i2c_read();
	fcall	_i2c_read
	movwf	(I2C_EEIN@data)
	line	209
	
l6058:	
;eeprom_i2c.c: 209: I2C_nack();
	fcall	_I2C_nack
	line	210
	
l6060:	
;eeprom_i2c.c: 210: i2c_stop();
	fcall	_i2c_stop
	line	211
	
l6062:	
;eeprom_i2c.c: 211: return(data);
	bcf	status, 5	;RP0=0, select bank0
	movf	(I2C_EEIN@data),w
	line	212
	
l1137:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_EEIN
	__end_of_I2C_EEIN:
;; =============== function _I2C_EEIN ends ============

	signat	_I2C_EEIN,8313
	global	_pause
psect	text771,local,class=CODE,delta=2
global __ptext771
__ptext771:

;; *************** function _pause *****************
;; Defined at:
;;		line 87 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
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
psect	text771
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	87
	global	__size_of_pause
	__size_of_pause	equ	__end_of_pause-_pause
	
_pause:	
	opt	stack 5
; Regs used in _pause: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l6038:	
;eeprom_i2c.c: 88: unsigned short x;
;eeprom_i2c.c: 90: for (x=0; x<=usvalue; x++)
	clrf	(pause@x)
	clrf	(pause@x+1)
	goto	l6044
	line	92
	
l6040:	
;eeprom_i2c.c: 91: {
;eeprom_i2c.c: 92: msecbase();
	fcall	_msecbase
	line	90
	
l6042:	
	incf	(pause@x),f
	skipnz
	incf	(pause@x+1),f
	
l6044:	
	movf	(pause@x+1),w
	subwf	(pause@usvalue+1),w
	skipz
	goto	u2615
	movf	(pause@x),w
	subwf	(pause@usvalue),w
u2615:
	skipnc
	goto	u2611
	goto	u2610
u2611:
	goto	l6040
u2610:
	line	94
	
l1086:	
	return
	opt stack 0
GLOBAL	__end_of_pause
	__end_of_pause:
;; =============== function _pause ends ============

	signat	_pause,4216
	global	___awmod
psect	text772,local,class=CODE,delta=2
global __ptext772
__ptext772:

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
psect	text772
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l6002:	
	clrf	(___awmod@sign)
	line	9
	
l6004:	
	btfss	(___awmod@dividend+1),7
	goto	u2541
	goto	u2540
u2541:
	goto	l6010
u2540:
	line	10
	
l6006:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	
l6008:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	line	13
	
l6010:	
	btfss	(___awmod@divisor+1),7
	goto	u2551
	goto	u2550
u2551:
	goto	l6014
u2550:
	line	14
	
l6012:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	line	15
	
l6014:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2561
	goto	u2560
u2561:
	goto	l6030
u2560:
	line	16
	
l6016:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	17
	goto	l6020
	line	18
	
l6018:	
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	line	19
	incf	(___awmod@counter),f
	line	17
	
l6020:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l6018
u2570:
	line	22
	
l6022:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2585
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2585:
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l6026
u2580:
	line	23
	
l6024:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	line	24
	
l6026:	
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	line	25
	
l6028:	
	decfsz	(___awmod@counter),f
	goto	u2591
	goto	u2590
u2591:
	goto	l6022
u2590:
	line	27
	
l6030:	
	movf	(___awmod@sign),w
	skipz
	goto	u2600
	goto	l6034
u2600:
	line	28
	
l6032:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	29
	
l6034:	
	movf	(___awmod@dividend+1),w
	movwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	movwf	(?___awmod)
	line	30
	
l2508:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text773,local,class=CODE,delta=2
global __ptext773
__ptext773:

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
psect	text773
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l5976:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	10
	
l5978:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u2501
	goto	u2500
u2501:
	goto	l5998
u2500:
	line	11
	
l5980:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	12
	goto	l5984
	line	13
	
l5982:	
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	14
	incf	(___lldiv@counter),f
	line	12
	
l5984:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l5982
u2510:
	line	17
	
l5986:	
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	18
	
l5988:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u2525
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u2525
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u2525
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u2525:
	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l5994
u2520:
	line	19
	
l5990:	
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
	
l5992:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	22
	
l5994:	
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	23
	
l5996:	
	decfsz	(___lldiv@counter),f
	goto	u2531
	goto	u2530
u2531:
	goto	l5986
u2530:
	line	25
	
l5998:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	26
	
l2469:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___ftge
psect	text774,local,class=CODE,delta=2
global __ptext774
__ptext774:

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
psect	text774
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l5956:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l5960
u2470:
	line	7
	
l5958:	
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
	
l5960:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l5964
u2480:
	line	9
	
l5962:	
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
	
l5964:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l5966:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l5968:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2495
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2495
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2495:
	skipnc
	goto	u2491
	goto	u2490
u2491:
	goto	l5972
u2490:
	
l5970:	
	clrc
	
	goto	l2459
	
l5972:	
	setc
	
	line	13
	
l2459:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text775,local,class=CODE,delta=2
global __ptext775
__ptext775:

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
psect	text775
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l5948:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l5952
u2460:
	line	18
	
l5950:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	line	19
	
l5952:	
	line	20
	
l2454:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___llmod
psect	text776,local,class=CODE,delta=2
global __ptext776
__ptext776:

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
psect	text776
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l5928:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l5944
u2420:
	line	9
	
l5930:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	10
	goto	l5934
	line	11
	
l5932:	
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	line	12
	incf	(___llmod@counter),f
	line	10
	
l5934:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l5932
u2430:
	line	15
	
l5936:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u2445
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u2445
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u2445
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u2445:
	skipc
	goto	u2441
	goto	u2440
u2441:
	goto	l5940
u2440:
	line	16
	
l5938:	
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
	
l5940:	
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	line	18
	
l5942:	
	decfsz	(___llmod@counter),f
	goto	u2451
	goto	u2450
u2451:
	goto	l5936
u2450:
	line	20
	
l5944:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	line	21
	
l2450:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text777,local,class=CODE,delta=2
global __ptext777
__ptext777:

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
psect	text777
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l5884:	
	clrf	(___awdiv@sign)
	line	10
	
l5886:	
	btfss	(___awdiv@divisor+1),7
	goto	u2351
	goto	u2350
u2351:
	goto	l5892
u2350:
	line	11
	
l5888:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	
l5890:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	line	14
	
l5892:	
	btfss	(___awdiv@dividend+1),7
	goto	u2361
	goto	u2360
u2361:
	goto	l5898
u2360:
	line	15
	
l5894:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l5896:	
	movlw	(01h)
	xorwf	(___awdiv@sign),f
	line	18
	
l5898:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l5900:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2371
	goto	u2370
u2371:
	goto	l5920
u2370:
	line	20
	
l5902:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	21
	goto	l5906
	line	22
	
l5904:	
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	line	23
	incf	(___awdiv@counter),f
	line	21
	
l5906:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l5904
u2380:
	line	26
	
l5908:	
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	line	27
	
l5910:	
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2395
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l5916
u2390:
	line	28
	
l5912:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l5914:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	line	31
	
l5916:	
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	line	32
	
l5918:	
	decfsz	(___awdiv@counter),f
	goto	u2401
	goto	u2400
u2401:
	goto	l5908
u2400:
	line	34
	
l5920:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2410
	goto	l5924
u2410:
	line	35
	
l5922:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	line	36
	
l5924:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	line	37
	
l2440:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text778,local,class=CODE,delta=2
global __ptext778
__ptext778:

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
;;		_main
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text778
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l5846:	
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
	goto	u2271
	goto	u2270
u2271:
	goto	l5850
u2270:
	line	50
	
l5848:	
	clrf	(?___fttol)
	clrf	(?___fttol+1)
	clrf	(?___fttol+2)
	clrf	(?___fttol+3)
	goto	l2400
	line	51
	
l5850:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2285:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2280:
	addlw	-1
	skipz
	goto	u2285
	movf	0+(??___fttol+0)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l5852:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l5854:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l5856:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l5858:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l5860:	
	btfss	(___fttol@exp1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l5870
u2290:
	line	57
	
l5862:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l5866
u2300:
	goto	l5848
	line	60
	
l5866:	
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	line	61
	
l5868:	
	incfsz	(___fttol@exp1),f
	goto	u2311
	goto	u2310
u2311:
	goto	l5866
u2310:
	goto	l5876
	line	63
	
l5870:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l2407
u2320:
	goto	l5848
	line	66
	
l5874:	
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	line	67
	decf	(___fttol@exp1),f
	line	68
	
l2407:	
	line	65
	movf	(___fttol@exp1),f
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l5874
u2330:
	line	70
	
l5876:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2340
	goto	l5880
u2340:
	line	71
	
l5878:	
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
	
l5880:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	line	73
	
l2400:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text779,local,class=CODE,delta=2
global __ptext779
__ptext779:

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
;;		___lbtoft
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text779
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l5818:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2200
	goto	l5822
u2200:
	
l5820:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l5828
u2210:
	line	65
	
l5822:	
	clrf	(?___ftpack)
	clrf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	goto	l2659
	line	67
	
l5826:	
	incf	(___ftpack@exp),f
	line	68
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	line	66
	
l5828:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2221
	goto	u2220
u2221:
	goto	l5826
u2220:
	goto	l5832
	line	71
	
l5830:	
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
	
l5832:	
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l5830
u2230:
	goto	l5836
	line	76
	
l5834:	
	decf	(___ftpack@exp),f
	line	77
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	line	75
	
l5836:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l5834
u2240:
	
l2668:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2669
u2250:
	line	80
	
l5838:	
	bcf	(___ftpack@arg)+(15/8),(15)&7
	
l2669:	
	line	81
	clrc
	rrf	(___ftpack@exp),f
	line	82
	
l5840:	
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
	
l5842:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2260
	goto	l2670
u2260:
	line	84
	
l5844:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2670:	
	line	85
	line	86
	
l2659:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___lbmod
psect	text780,local,class=CODE,delta=2
global __ptext780
__ptext780:

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
psect	text780
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
	
l5800:	
	movlw	(08h)
	movwf	(___lbmod@counter)
	line	10
	
l5802:	
	clrf	(___lbmod@rem)
	line	12
	
l5804:	
	movf	(___lbmod@dividend),w
	movwf	(??___lbmod+0)+0
	movlw	07h
u2175:
	clrc
	rrf	(??___lbmod+0)+0,f
	addlw	-1
	skipz
	goto	u2175
	clrc
	rlf	(___lbmod@rem),w
	iorwf	0+(??___lbmod+0)+0,w
	movwf	(___lbmod@rem)
	line	13
	
l5806:	
	clrc
	rlf	(___lbmod@dividend),f
	line	14
	
l5808:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l5812
u2180:
	line	15
	
l5810:	
	movf	(___lbmod@divisor),w
	subwf	(___lbmod@rem),f
	line	16
	
l5812:	
	decfsz	(___lbmod@counter),f
	goto	u2191
	goto	u2190
u2191:
	goto	l5804
u2190:
	line	17
	
l5814:	
	movf	(___lbmod@rem),w
	line	18
	
l2329:	
	return
	opt stack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
;; =============== function ___lbmod ends ============

	signat	___lbmod,8313
	global	___lbdiv
psect	text781,local,class=CODE,delta=2
global __ptext781
__ptext781:

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
psect	text781
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
	
l5776:	
	clrf	(___lbdiv@quotient)
	line	10
	
l5778:	
	movf	(___lbdiv@divisor),w
	skipz
	goto	u2130
	goto	l5796
u2130:
	line	11
	
l5780:	
	clrf	(___lbdiv@counter)
	incf	(___lbdiv@counter),f
	line	12
	goto	l5784
	
l2318:	
	line	13
	clrc
	rlf	(___lbdiv@divisor),f
	line	14
	
l5782:	
	incf	(___lbdiv@counter),f
	line	12
	
l5784:	
	btfss	(___lbdiv@divisor),(7)&7
	goto	u2141
	goto	u2140
u2141:
	goto	l2318
u2140:
	line	16
	
l2320:	
	line	17
	clrc
	rlf	(___lbdiv@quotient),f
	line	18
	
l5786:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),w
	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l5792
u2150:
	line	19
	
l5788:	
	movf	(___lbdiv@divisor),w
	subwf	(___lbdiv@dividend),f
	line	20
	
l5790:	
	bsf	(___lbdiv@quotient)+(0/8),(0)&7
	line	22
	
l5792:	
	clrc
	rrf	(___lbdiv@divisor),f
	line	23
	
l5794:	
	decfsz	(___lbdiv@counter),f
	goto	u2161
	goto	u2160
u2161:
	goto	l2320
u2160:
	line	25
	
l5796:	
	movf	(___lbdiv@quotient),w
	line	26
	
l2323:	
	return
	opt stack 0
GLOBAL	__end_of___lbdiv
	__end_of___lbdiv:
;; =============== function ___lbdiv ends ============

	signat	___lbdiv,8313
	global	___lwdiv
psect	text782,local,class=CODE,delta=2
global __ptext782
__ptext782:

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
;;		On entry : 60/20
;;		On exit  : 60/20
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text782
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l5750:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l5752:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2091
	goto	u2090
u2091:
	goto	l5772
u2090:
	line	11
	
l5754:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	12
	goto	l5758
	line	13
	
l5756:	
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	14
	incf	(___lwdiv@counter),f
	line	12
	
l5758:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2101
	goto	u2100
u2101:
	goto	l5756
u2100:
	line	17
	
l5760:	
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	18
	
l5762:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2115
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2115:
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l5768
u2110:
	line	19
	
l5764:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l5766:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	22
	
l5768:	
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	23
	
l5770:	
	decfsz	(___lwdiv@counter),f
	goto	u2121
	goto	u2120
u2121:
	goto	l5760
u2120:
	line	25
	
l5772:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	26
	
l2303:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	___wmul
psect	text783,local,class=CODE,delta=2
global __ptext783
__ptext783:

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
;;		_main
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text783
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l5734:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	7
	
l5736:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l5740
u2070:
	line	8
	
l5738:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	line	9
	
l5740:	
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	10
	
l5742:	
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	11
	
l5744:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l5736
u2080:
	line	12
	
l5746:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	13
	
l2293:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	___bmul
psect	text784,local,class=CODE,delta=2
global __ptext784
__ptext784:

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
psect	text784
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
	
l5718:	
	clrf	(___bmul@product)
	line	7
	
l5720:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2051
	goto	u2050
u2051:
	goto	l5724
u2050:
	line	8
	
l5722:	
	movf	(___bmul@multiplicand),w
	addwf	(___bmul@product),f
	line	9
	
l5724:	
	clrc
	rlf	(___bmul@multiplicand),f
	line	10
	
l5726:	
	clrc
	rrf	(___bmul@multiplier),f
	line	11
	
l5728:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2061
	goto	u2060
u2061:
	goto	l5720
u2060:
	line	12
	
l5730:	
	movf	(___bmul@product),w
	line	13
	
l2287:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	__div_to_l_
psect	text785,local,class=CODE,delta=2
global __ptext785
__ptext785:

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
psect	text785
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fldivl.c"
	line	61
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
	opt	stack 6
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l5672:	
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
	goto	u1961
	goto	u1960
u1961:
	goto	l5676
u1960:
	line	67
	
l5674:	
	clrf	(?__div_to_l_)
	clrf	(?__div_to_l_+1)
	clrf	(?__div_to_l_+2)
	clrf	(?__div_to_l_+3)
	goto	l2577
	line	68
	
l5676:	
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
	goto	u1971
	goto	u1970
u1971:
	goto	l5680
u1970:
	goto	l5674
	line	70
	
l5680:	
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
	
l5682:	
	clrf	(__div_to_l_@quot)
	clrf	(__div_to_l_@quot+1)
	clrf	(__div_to_l_@quot+2)
	clrf	(__div_to_l_@quot+3)
	line	75
	
l5684:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l5686:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l5688:	
	movlw	(020h)
	movwf	(__div_to_l_@cntr)
	line	79
	
l5690:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	80
	
l5692:	
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
	goto	u1985
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u1985
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u1985
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u1985:
	skipc
	goto	u1981
	goto	u1980
u1981:
	goto	l2580
u1980:
	line	81
	
l5694:	
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
	
l5696:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l2580:	
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
	
l5698:	
	decfsz	(__div_to_l_@cntr),f
	goto	u1991
	goto	u1990
u1991:
	goto	l5690
u1990:
	
l2581:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2001
	goto	u2000
u2001:
	goto	l5708
u2000:
	line	87
	
l5700:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2011
	goto	u2010
u2011:
	goto	l5704
u2010:
	goto	l5674
	line	90
	
l5704:	
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	line	91
	
l5706:	
	incfsz	(__div_to_l_@exp1),f
	goto	u2021
	goto	u2020
u2021:
	goto	l5704
u2020:
	goto	l5714
	line	93
	
l5708:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l2588
u2030:
	goto	l5674
	line	96
	
l5712:	
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	line	97
	decf	(__div_to_l_@exp1),f
	line	98
	
l2588:	
	line	95
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2041
	goto	u2040
u2041:
	goto	l5712
u2040:
	line	100
	
l5714:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	line	101
	
l2577:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
;; =============== function __div_to_l_ ends ============

	signat	__div_to_l_,8316
	global	__tdiv_to_l_
psect	text786,local,class=CODE,delta=2
global __ptext786
__ptext786:

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
psect	text786
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdivl.c"
	line	61
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
	opt	stack 6
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l5624:	
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
	goto	u1871
	goto	u1870
u1871:
	goto	l5628
u1870:
	line	67
	
l5626:	
	clrf	(?__tdiv_to_l_)
	clrf	(?__tdiv_to_l_+1)
	clrf	(?__tdiv_to_l_+2)
	clrf	(?__tdiv_to_l_+3)
	goto	l2534
	line	68
	
l5628:	
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
	goto	u1881
	goto	u1880
u1881:
	goto	l2535
u1880:
	goto	l5626
	line	69
	
l2535:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l5632:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l5634:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	
l5636:	
	clrf	(__tdiv_to_l_@quot)
	clrf	(__tdiv_to_l_@quot+1)
	clrf	(__tdiv_to_l_@quot+2)
	clrf	(__tdiv_to_l_@quot+3)
	line	75
	
l5638:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l5640:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(__tdiv_to_l_@cntr)
	line	79
	
l5642:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	80
	
l5644:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u1895
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u1895
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u1895:
	skipc
	goto	u1891
	goto	u1890
u1891:
	goto	l5650
u1890:
	line	81
	
l5646:	
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
	
l5648:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	line	84
	
l5650:	
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	line	85
	
l5652:	
	decfsz	(__tdiv_to_l_@cntr),f
	goto	u1901
	goto	u1900
u1901:
	goto	l5642
u1900:
	
l2538:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u1911
	goto	u1910
u1911:
	goto	l5662
u1910:
	line	87
	
l5654:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u1921
	goto	u1920
u1921:
	goto	l5658
u1920:
	goto	l5626
	line	90
	
l5658:	
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	line	91
	
l5660:	
	incfsz	(__tdiv_to_l_@exp1),f
	goto	u1931
	goto	u1930
u1931:
	goto	l5658
u1930:
	goto	l5668
	line	93
	
l5662:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l2545
u1940:
	goto	l5626
	line	96
	
l5666:	
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	line	97
	decf	(__tdiv_to_l_@exp1),f
	line	98
	
l2545:	
	line	95
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l5666
u1950:
	line	100
	
l5668:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	line	101
	
l2534:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
;; =============== function __tdiv_to_l_ ends ============

	signat	__tdiv_to_l_,8316
	global	_isdigit
psect	text787,local,class=CODE,delta=2
global __ptext787
__ptext787:

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
psect	text787
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
	
l5612:	
	clrf	(_isdigit$2444)
	
l5614:	
	movlw	(03Ah)
	subwf	(isdigit@c),w
	skipnc
	goto	u1851
	goto	u1850
u1851:
	goto	l5620
u1850:
	
l5616:	
	movlw	(030h)
	subwf	(isdigit@c),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l5620
u1860:
	
l5618:	
	clrf	(_isdigit$2444)
	incf	(_isdigit$2444),f
	
l5620:	
	rrf	(_isdigit$2444),w
	
	line	15
	
l2277:	
	return
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
;; =============== function _isdigit ends ============

	signat	_isdigit,4216
	global	_i2c_write
psect	text788,local,class=CODE,delta=2
global __ptext788
__ptext788:

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 172 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  I2C_data        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  I2C_data        1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 40/20
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
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text788
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	172
	global	__size_of_i2c_write
	__size_of_i2c_write	equ	__end_of_i2c_write-_i2c_write
	
_i2c_write:	
	opt	stack 6
; Regs used in _i2c_write: [wreg]
;i2c_write@I2C_data stored from wreg
	movwf	(i2c_write@I2C_data)
	line	173
	
l5608:	
;eeprom_i2c.c: 173: PIR1bits.SSPIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(12),3	;volatile
	line	174
	
l5610:	
;eeprom_i2c.c: 174: SSPBUF=I2C_data;
	movf	(i2c_write@I2C_data),w
	movwf	(19)	;volatile
	line	175
;eeprom_i2c.c: 175: while(PIR1bits.SSPIF==0);
	
l1128:	
	btfss	(12),3	;volatile
	goto	u1841
	goto	u1840
u1841:
	goto	l1128
u1840:
	line	176
	
l1131:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
;; =============== function _i2c_write ends ============

	signat	_i2c_write,4216
	global	_I2C_nack
psect	text789,local,class=CODE,delta=2
global __ptext789
__ptext789:

;; *************** function _I2C_nack *****************
;; Defined at:
;;		line 162 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text789
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	162
	global	__size_of_I2C_nack
	__size_of_I2C_nack	equ	__end_of_I2C_nack-_I2C_nack
	
_I2C_nack:	
	opt	stack 6
; Regs used in _I2C_nack: []
	line	163
	
l5606:	
;eeprom_i2c.c: 163: PIR1bits.SSPIF=0;
	bcf	(12),3	;volatile
	line	164
;eeprom_i2c.c: 164: SSPCON2bits.ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,5	;volatile
	line	165
;eeprom_i2c.c: 165: SSPCON2bits.ACKEN=1;
	bsf	(145)^080h,4	;volatile
	line	166
;eeprom_i2c.c: 166: while(PIR1bits.SSPIF==0);
	
l1122:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1831
	goto	u1830
u1831:
	goto	l1122
u1830:
	line	167
	
l1125:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_nack
	__end_of_I2C_nack:
;; =============== function _I2C_nack ends ============

	signat	_I2C_nack,88
	global	_i2c_read
psect	text790,local,class=CODE,delta=2
global __ptext790
__ptext790:

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 142 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text790
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	142
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:	
	opt	stack 6
; Regs used in _i2c_read: [wreg]
	line	143
	
l5600:	
;eeprom_i2c.c: 143: PIR1bits.SSPIF=0;
	bcf	(12),3	;volatile
	line	144
;eeprom_i2c.c: 144: SSPCON2bits.RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,3	;volatile
	line	145
;eeprom_i2c.c: 145: while(PIR1bits.SSPIF==0);
	
l1110:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(12),3	;volatile
	goto	u1821
	goto	u1820
u1821:
	goto	l1110
u1820:
	line	146
	
l5602:	
;eeprom_i2c.c: 146: return SSPBUF;
	movf	(19),w	;volatile
	line	147
	
l1113:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
;; =============== function _i2c_read ends ============

	signat	_i2c_read,89
	global	_i2c_stop
psect	text791,local,class=CODE,delta=2
global __ptext791
__ptext791:

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 134 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text791
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	134
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
	opt	stack 6
; Regs used in _i2c_stop: []
	line	135
	
l5598:	
;eeprom_i2c.c: 135: SSPCON2bits.PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,2	;volatile
	line	136
;eeprom_i2c.c: 136: while(SSPCON2bits.PEN==1);
	
l1104:	
	btfsc	(145)^080h,2	;volatile
	goto	u1811
	goto	u1810
u1811:
	goto	l1104
u1810:
	line	137
	
l1107:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
;; =============== function _i2c_stop ends ============

	signat	_i2c_stop,88
	global	_i2c_restart
psect	text792,local,class=CODE,delta=2
global __ptext792
__ptext792:

;; *************** function _i2c_restart *****************
;; Defined at:
;;		line 126 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text792
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	126
	global	__size_of_i2c_restart
	__size_of_i2c_restart	equ	__end_of_i2c_restart-_i2c_restart
	
_i2c_restart:	
	opt	stack 6
; Regs used in _i2c_restart: []
	line	127
	
l5596:	
;eeprom_i2c.c: 127: SSPCON2bits.RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,1	;volatile
	line	128
;eeprom_i2c.c: 128: while(SSPCON2bits.RSEN==1);
	
l1098:	
	btfsc	(145)^080h,1	;volatile
	goto	u1801
	goto	u1800
u1801:
	goto	l1098
u1800:
	line	129
	
l1101:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_restart
	__end_of_i2c_restart:
;; =============== function _i2c_restart ends ============

	signat	_i2c_restart,88
	global	_i2c_start
psect	text793,local,class=CODE,delta=2
global __ptext793
__ptext793:

;; *************** function _i2c_start *****************
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
;;		On entry : 40/20
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
;;		_I2C_EEOUT
;;		_I2C_EEIN
;; This function uses a non-reentrant model
;;
psect	text793
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	118
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 6
; Regs used in _i2c_start: []
	line	119
	
l5594:	
;eeprom_i2c.c: 119: SSPCON2bits.SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(145)^080h,0	;volatile
	line	120
;eeprom_i2c.c: 120: while(SSPCON2bits.SEN==1);
	
l1092:	
	btfsc	(145)^080h,0	;volatile
	goto	u1791
	goto	u1790
u1791:
	goto	l1092
u1790:
	line	121
	
l1095:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,88
	global	_i2c_init
psect	text794,local,class=CODE,delta=2
global __ptext794
__ptext794:

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 97 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 7F/0
;;		On exit  : 7F/20
;;		Unchanged: FFF80/0
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
psect	text794
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	97
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
	opt	stack 7
; Regs used in _i2c_init: [wreg+status,2]
	line	98
	
l5586:	
;eeprom_i2c.c: 98: TRISCbits.TRISC3=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(135)^080h,3	;volatile
	line	99
;eeprom_i2c.c: 99: TRISCbits.TRISC4=1;
	bsf	(135)^080h,4	;volatile
	line	100
	
l5588:	
;eeprom_i2c.c: 100: SSPSTAT=0b10000000;
	movlw	(080h)
	movwf	(148)^080h	;volatile
	line	101
;eeprom_i2c.c: 101: SSPCON =0b00101000;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(20)	;volatile
	line	102
	
l5590:	
;eeprom_i2c.c: 102: SSPCON2 =0;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(145)^080h	;volatile
	line	105
	
l5592:	
;eeprom_i2c.c: 105: SSPADD = ((4000000/(4UL*100000UL))-1);
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	113
	
l1089:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
;; =============== function _i2c_init ends ============

	signat	_i2c_init,88
	global	_msecbase
psect	text795,local,class=CODE,delta=2
global __ptext795
__ptext795:

;; *************** function _msecbase *****************
;; Defined at:
;;		line 78 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
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
psect	text795
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	78
	global	__size_of_msecbase
	__size_of_msecbase	equ	__end_of_msecbase-_msecbase
	
_msecbase:	
	opt	stack 5
; Regs used in _msecbase: [wreg]
	line	79
	
l5584:	
;eeprom_i2c.c: 79: OPTION_REG = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	80
;eeprom_i2c.c: 80: TMR0 = 0xD;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	81
;eeprom_i2c.c: 81: while(!T0IF);
	
l1077:	
	btfss	(90/8),(90)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l1077
u1780:
	
l1079:	
	line	82
;eeprom_i2c.c: 82: T0IF = 0;
	bcf	(90/8),(90)&7
	line	83
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_msecbase
	__end_of_msecbase:
;; =============== function _msecbase ends ============

	signat	_msecbase,88
	global	_getch
psect	text796,local,class=CODE,delta=2
global __ptext796
__ptext796:

;; *************** function _getch *****************
;; Defined at:
;;		line 48 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 60/0
;;		On exit  : 60/0
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
psect	text796
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	48
	global	__size_of_getch
	__size_of_getch	equ	__end_of_getch-_getch
	
_getch:	
	opt	stack 7
; Regs used in _getch: [wreg]
	line	49
	
l5578:	
;eeprom_i2c.c: 49: while(!RCIF) continue;
	
l1054:	
	btfss	(101/8),(101)&7
	goto	u1771
	goto	u1770
u1771:
	goto	l1054
u1770:
	line	50
	
l5580:	
;eeprom_i2c.c: 50: return RCREG;
	movf	(26),w	;volatile
	line	51
	
l1057:	
	return
	opt stack 0
GLOBAL	__end_of_getch
	__end_of_getch:
;; =============== function _getch ends ============

	signat	_getch,89
	global	_putch
psect	text797,local,class=CODE,delta=2
global __ptext797
__ptext797:

;; *************** function _putch *****************
;; Defined at:
;;		line 42 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;  dato            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  dato            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 40/20
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
psect	text797
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	42
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:	
	opt	stack 7
; Regs used in _putch: [wreg]
;putch@dato stored from wreg
	movwf	(putch@dato)
	line	43
	
l5574:	
;eeprom_i2c.c: 43: while(!TXIF) continue;
	
l1048:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(100/8),(100)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l1048
u1760:
	line	44
	
l5576:	
;eeprom_i2c.c: 44: TXREG=dato;
	movf	(putch@dato),w
	movwf	(25)	;volatile
	line	45
	
l1051:	
	return
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
;; =============== function _putch ends ============

	signat	_putch,4216
	global	fptotal
fptotal equ 1
	file ""
	line	#
psect	functab,class=CODE,delta=2,reloc=256
global __pfunctab
__pfunctab:
	global	fptable
fptable:
	movwf (btemp+1)&07Fh
	movlw high(fptable)
	movwf pclath
	movf (btemp+1)&07Fh,w
	addwf pc
	global	fpbase
fpbase:
	goto fpbase	; Call via a null pointer and you will get stuck here.
	file ""
	line	#
fp__I2C_EEIN:
entry__I2C_EEIN:
	global	entry__I2C_EEIN
	ljmp	_I2C_EEIN
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
