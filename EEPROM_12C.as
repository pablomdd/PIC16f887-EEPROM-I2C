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
# 21 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	psect config,class=CONFIG,delta=2 ;#
# 21 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	dw 0xFFFC & 0xFFF7 & 0xFFFF & 0xFFDF & 0xFFFF & 0xFFFF & 0xFCFF & 0xFBFF & 0xF7FF & 0xEFFF & 0xFFFF ;#
# 22 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	psect config,class=CONFIG,delta=2 ;#
# 22 "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	dw 0xFFFF & 0xFFFF ;#
	FNCALL	_main,_init_micro
	FNCALL	_main,_i2c_init
	FNCALL	_main,_I2C_EEOUT
	FNCALL	_main,_pause
	FNCALL	_main,_I2C_EEIN
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_TRISB
_TRISB	set	134
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
	global	?_i2c_init
?_i2c_init:	; 0 bytes @ 0x0
	global	??_i2c_init
??_i2c_init:	; 0 bytes @ 0x0
	global	?_I2C_EEOUT
?_I2C_EEOUT:	; 0 bytes @ 0x0
	global	?_pause
?_pause:	; 0 bytes @ 0x0
	global	??_I2C_EEIN
??_I2C_EEIN:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_I2C_EEIN
?_I2C_EEIN:	; 1 bytes @ 0x0
	global	_I2C_EEOUT$1
_I2C_EEOUT$1:	; 1 bytes @ 0x0
	global	_pause$0
_pause$0:	; 4 bytes @ 0x0
	ds	1
	global	??_I2C_EEOUT
??_I2C_EEOUT:	; 0 bytes @ 0x1
	ds	3
	global	??_pause
??_pause:	; 0 bytes @ 0x4
	global	??_main
??_main:	; 0 bytes @ 0x4
	global	main@cnt
main@cnt:	; 1 bytes @ 0x4
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      5       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_pause
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 1     1      0      60
;;                                              4 COMMON     1     1      0
;;                         _init_micro
;;                           _i2c_init
;;                          _I2C_EEOUT
;;                              _pause
;;                           _I2C_EEIN
;; ---------------------------------------------------------------------------------
;; (1) _I2C_EEIN                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _pause                                                4     0      4       0
;;                                              0 COMMON     4     0      4
;; ---------------------------------------------------------------------------------
;; (1) _I2C_EEOUT                                            1     0      1       0
;;                                              0 COMMON     1     0      1
;; ---------------------------------------------------------------------------------
;; (1) _i2c_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _init_micro                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init_micro
;;   _i2c_init
;;   _I2C_EEOUT
;;   _pause
;;   _I2C_EEIN
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      5       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 29 in file "C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  cnt             1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_init_micro
;;		_i2c_init
;;		_I2C_EEOUT
;;		_pause
;;		_I2C_EEIN
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\petir\Documents\PIC_PROG\C_EEPROM-I2C\eeprom_i2c.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [allreg]
	line	30
	
l2394:	
;eeprom_i2c.c: 30: init_micro();
	fcall	_init_micro
	line	31
;eeprom_i2c.c: 31: i2c_init();
	fcall	_i2c_init
	line	32
	
l2396:	
;eeprom_i2c.c: 32: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	33
	
l2398:	
;eeprom_i2c.c: 33: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(134)^080h	;volatile
	line	35
	
l2400:	
;eeprom_i2c.c: 35: unsigned char cnt=0;
	clrf	(main@cnt)
	line	39
;eeprom_i2c.c: 37: while(cnt<=255)
	
l2402:	
;eeprom_i2c.c: 38: {
;eeprom_i2c.c: 39: PORTB=cnt;
	movf	(main@cnt),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	40
	
l2404:	
;eeprom_i2c.c: 40: I2C_EEOUT(cnt,10-cnt);
	movf	(main@cnt),w
	sublw	0Ah
	movwf	(?_I2C_EEOUT)
	movf	(main@cnt),w
	fcall	_I2C_EEOUT
	line	41
	
l2406:	
;eeprom_i2c.c: 41: cnt=cnt+1;
	incf	(main@cnt),f
	line	42
	
l2408:	
;eeprom_i2c.c: 42: pause(255);
	movlw	0FFh
	movwf	(?_pause)
	clrf	(?_pause+1)
	clrf	(?_pause+2)
	clrf	(?_pause+3)

	fcall	_pause
	goto	l2402
	line	49
	
l2412:	
;eeprom_i2c.c: 48: {
;eeprom_i2c.c: 49: PORTB =I2C_EEIN(cnt);
	movf	(main@cnt),w
	fcall	_I2C_EEIN
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	50
;eeprom_i2c.c: 50: pause (500);
	movlw	0
	movwf	(?_pause+3)
	movlw	0
	movwf	(?_pause+2)
	movlw	01h
	movwf	(?_pause+1)
	movlw	0F4h
	movwf	(?_pause)

	fcall	_pause
	line	51
	
l2414:	
;eeprom_i2c.c: 51: cnt=cnt + 1;
	incf	(main@cnt),f
	goto	l2412
	global	start
	ljmp	start
	opt stack 0
psect	maintext
	line	53
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_I2C_EEIN
	global	_pause
	global	_I2C_EEOUT
	global	_i2c_init
	global	_init_micro
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
