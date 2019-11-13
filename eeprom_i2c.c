/*
 *	I2C External EEPROM example using SimpleC
 *	This code will write 10 bytes to the EEPROM and 
 *	then read them back and display binary value on LEDs.
 * Connections:
 * Pin 8(B0) - LED Anode - LED Cathode - 470ohm - Ground
 * Pin 9(B1) - LED Anode - LED Cathode - 470ohm - Ground
 * Pin 10(B2) - LED Anode - LED Cathode - 470ohm - Ground
 * Pin 11(B3) - LED Anode - LED Cathode - 470ohm - Ground
 *
 * Pin 3(C4) - 24LC02B SDA - 10k pullup - 5v
 * Pin 4(C3) - 24LC02B SCL - 10k pullup - 5v
 * 24LC02B Vss - Ground
 * 24LC02B Vdd - 5v
 */

#include <htc.h>
#include <stdio.h>
#include <pic16f887.h>
//#include <24512.h>
#include <stdio.h>
#include <ctype.h>

__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF); //Internal clock, Watchdog off, MCLR off, Code Unprotected

#include "simplec1.1.h"

//________________________config Puerto Serial

#define RX_PIN TRISC7
#define TX_PIN TRISC6

void gets_Serial(char *); 

unsigned char *pa=&PORTA; 
char in[17];
int  convint;  
int dir; 
int  atoi( const char * s );


//LCD CONFIG

#define LCD_RS RA7
#define LCD_RW RE1
#define LCD_EN RA6

#define LCD_DATA PORTD
#define LCD_STROBE()  ((LCD_EN=1),(LCD_EN=0))
char init_value=0x03;


//ADC PREP

unsigned short b0=0;
int nin=0x00;

unsigned char carac[5];
unsigned char carac2[3];

float	num=0;
float	num1=0.00488758553;
float   num3=0;
//LCD FUNCTIONS
/*
void lcd_write(unsigned char c)
{
	pause(1);
	LCD_DATA=((c >> 4) & 0x0F);
	LCD_STROBE();
	LCD_DATA=(c & 0x0F);
	LCD_STROBE();
}

void lcd_clear(void)
{
	LCD_RS=0;
	lcd_write(0x1);
	pause(2);
}

void lcd_puts(const char * s)
{
	LCD_RS=1;
	while(*s)
		lcd_write(*s++);
}

void lcd_putch(char c)
{
	LCD_RS=1;
	lcd_write(c);
}

void lcd_goto(unsigned char pos)
{
	LCD_RS=0;
	lcd_write(0x80+pos);
}

*/


// ___________________________________ Library Functions _______________________________________

//*******************************************************
// Initialize Microcontroller Setup
//*******************************************************

void init_micro(void)
{
	ANSEL = 0; 		//Analog ports set to digital		
	ANSELH = 0;
	CM1CON0 = 0;	//Comparators Shut off
	CM2CON0 = 0;
//	IRCF0 = 0;		// Set internal Oscillator to 4 Mhz
//	IRCF1 = 1;
//	IRCF2 = 1;
//	SCS = 1;		// Config bits define clock
	INTCON=0;	// purpose of disabling the interrupts
}

/********************************************************
* usecbase - 10 usec pause routine						*
* The Internal oscillator is set to 16 Mhz and the		*
* internal instruction clock is 1/4 of the oscillator.	*
* This makes the internal instruction clock 4 Mhz or	*
* 0.25 usec per clock pulse.							*
* Using the 1:1 prescaler on the clock input to Timer0	* 
* slows the Timer0 count increment to 1 count/.25 usec.	*
* Therefore 40 counts of the Timer0 would make a ten	*
* usec delay (25 * .25 usec). But there are other		*
* instructions in the delay loop so using the MPLAB 	*
* stopwatch we find that we need Timer0 to overflow at 	*
* 9 clock ticks. Preset Timer0 to 247 (F7 hex) to make	*
* Timer0 overflow at 9 clock ticks (256-9 = 247).		*
* This results in a 10.0 microsecond delay. 			*
*********************************************************/

void usecbase(void)
{
	OPTION_REG = 0b00001000;		//Set prescaler to TMRO 1:1
	TMR0 = 0xF7;				//Preset TMRO to overflow on 250 counts
	while(!T0IF);				//Stay until TMRO overflow flag equals 1
	T0IF = 0;					//Clear the TMR0 overflow flag
}

//**********************************************************
//pauseus - millisecond delay routine 1 to 65,535 in 100usec steps
//**********************************************************


void pauseus ( unsigned int usvalue )

{
	unsigned int x;
	
	for (x=0; x<=usvalue; x++)	//Loop through a delay equal to usvalue
		{						// in milliseconds.
		usecbase();				//Jump to millisec delay routine
		}
}

/********************************************************
* msecbase - 1 msec pause routine						
* The External oscillator is set to 16 Mhz and the		
* internal instruction clock is 1/4 of the oscillator.	
* This makes the internal instruction clock 4 Mhz or	
* 0.25 usec per clock pulse.							
* Using the 1:16 prescaler on the clock input to Timer0	 
* slows the Timer0 count increment to 1 count/4 usec.	
* Therefore 250 counts of the Timer0 would make a one	
* millisecond delay (250 * 4 usec). But there are other	
* instructions in the delay loop so using the MPLAB 	
* stopwatch we find that we need Timer0 to overflow at 	
* 243 clock ticks. Preset Timer0 to 13 (0D hex) to make	
* Timer0 overflow at 243 clock ticks (256-13 = 243).	
*********************************************************/

void msecbase(void)
{
	OPTION_REG = 0b00000011;	//Set prescaler to TMRO 1:16
	TMR0 = 0xD;			//Preset TMRO to overflow on 243 counts
	while(!T0IF);		//Stay until TMRO overflow flag equals 1
	T0IF = 0;			//Clear the TMR0 overflow flag
}



//**********************************************************
//pause - millisecond delay routine 1 to 65,535 milliseconds
//**********************************************************


void pause( unsigned long usvalue )

{
	unsigned long x;		
	for (x=1; x<=(usvalue); x++)	//Loop through a delay equal to usvalue
		{						// in milliseconds.
		msecbase();				//Jump to millisec delay routine
		}
}

// ****************************************************
// High Command to set a port high
// ****************************************************

void high(char pin)
{
switch(pin)
	{
	case 0:
	TRISC7 = 0;				// Make RC7 an Output
	RC7 = 1;				// Set RC7 High
	break;
	
	case 1:
	TRISC6 = 0;				// Make RC6 an Output
	RC6 = 1;				// Set RC6 High
	break;

	case 2:
	TRISC5 = 0;				// Make RC5 an Output
	RC5 = 1;				// Set RC5 High
	break;

	case 3:
	TRISC4 = 0;				// Make RC4 an Output
	RC4 = 1;				// Set RC4 High
	break;

	case 4:
	TRISC3 = 0;				// Make RC3 an Output
	RC3 = 1;				// Set RC3 High
	break;

	case 5:
	TRISC2 = 0;				// Make RC2 an Output
	RC2 = 1;				// Set RC2 High
	break;
	
	case 6:
	TRISC1 = 0;				// Make RC1 an Output
	RC1 = 1;				// Set RC1 High
	break;

	case 7:
	TRISC0 = 0;				// Make RC0 an Output
	RC0 = 1;				// Set RC0 High
	break;

	case 8:
	TRISB0 = 0;				// Make RB0 an Output
	RB0 = 1;				// Set RB0 High
	break;

	case 9:
	TRISB1 = 0;				// Make RB1 an Output
	RB1 = 1;				// Set RB1 High
	break;

	case 10:
	TRISB2 = 0;				// Make RB2 an Output
	RB2 = 1;				// Set RB2 High
	break;
	
	case 11:
	TRISB3 = 0;				// Make RB3 an Output
	RB3 = 1;				// Set RB3 High
	break;

	case 12:
	TRISB4 = 0;				// Make RB4 an Output
	RB4 = 1;				// Set RB4 High
	break;

	case 13:
	TRISB5 = 0;				// Make RB5 an Output
	RB5 = 1;				// Set RB5 High
	break;

	
	default:
	break;
	}
}

// ****************************************************
// Low Command to set a port low
// ****************************************************

void low(char pin)
{
switch(pin)
	{
	case 0:
	TRISC7 = 0;				// Make RC7 an Output
	RC7 = 0;				// Set RC7 low
	break;
	
	case 1:
	TRISC6 = 0;				// Make RC6 an Output
	RC6 = 0;				// Set RC6 low
	break;

	case 2:
	TRISC5 = 0;				// Make RC5 an Output
	RC5 = 0;				// Set RC5 low
	break;

	case 3:
	TRISC4 = 0;				// Make RC4 an Output
	RC4 = 0;				// Set RC4 low
	break;

	case 4:
	TRISC3 = 0;				// Make RC3 an Output
	RC3 = 0;				// Set RC3 low
	break;

	case 5:
	TRISC2 = 0;				// Make RC2 an Output
	RC2 = 0;				// Set RC2 low
	break;
	
	case 6:
	TRISC1 = 0;				// Make RC1 an Output
	RC1 = 0;				// Set RC1 low
	break;

	case 7:
	TRISC0 = 0;				// Make RC0 an Output
	RC0 = 0;				// Set RC0 low
	break;

	case 8:
	TRISB0 = 0;				// Make RB0 an Output
	RB0 = 0;				// Set RB0 low
	break;

	case 9:
	TRISB1 = 0;				// Make RB1 an Output
	RB1 = 0;				// Set RB1 low
	break;

	case 10:
	TRISB2 = 0;				// Make RB2 an Output
	RB2 = 0;				// Set RB2 low
	break;
	
	case 11:
	TRISB3 = 0;				// Make RB3 an Output
	RB3 = 0;				// Set RB3 low
	break;

	case 12:
	TRISB4 = 0;				// Make RB4 an Output
	RB4 = 0;				// Set RB4 low
	break;

	case 13:
	TRISB5 = 0;				// Make RB5 an Output
	RB5 = 0;				// Set RB5 low
	break;

	
	default:
	break;
	}
}

// ****************************************************
// Input Command to read a digital port 
// ****************************************************

char input(char pin)
{
char val = 0;
switch(pin)
	{
	case 0:
	TRISC7 = 1;				// Make RC7 an input
	if (RC7 == 1)			// Test RC7 pin
	{val = 1;}
	else
	{val = 0;}				
	break;
	
	case 1:
	TRISC6 = 1;				// Make RC6 an input
	if (RC6 == 1)			// Test RC6 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 2:
	TRISC5 = 1;				// Make RC5 an input
	if (RC5 == 1)			// Test RC5 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 3:
	TRISC4 = 1;				// Make RC4 an input
	if (RC4 == 1)			// Test RC4 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 4:
	TRISC3 = 1;				// Make RC3 an input
	if (RC3 == 1)			// Test RC3 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 5:
	TRISC2 = 1;				// Make RC2 an input
	if (RC2 == 1)			// Test RC2 pin
	{val = 1;}
	else
	{val = 0;}	
	break;
	
	case 6:
	TRISC1 = 1;				// Make RC1 an input
	if (RC1 == 1)			// Test RC1 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 7:
	TRISC0 = 1;				// Make RC0 an input
	if (RC0 == 1)			// Test RC0 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 8:
	TRISB0 = 1;				// Make RB0 an input
	if (RB0 == 1)			// Test RB0 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 9:
	TRISB1 = 1;				// Make RB1 an input
	if (RB1 == 1)			// Test RB1 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 10:
	TRISB2 = 1;				// Make RB2 an input
	if (RB2 == 1)			// Test RB2 pin
	{val = 1;}
	else
	{val = 0;}	
	break;
	
	case 11:
	TRISB3 = 1;				// Make RB3 an input
	if (RB3 == 1)			// Test RB3 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 12:
	TRISB4 = 1;				// Make RB4 an input
	if (RB4 == 1)			// Test RB4 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	case 13:
	TRISB5 = 1;				// Make RB5 an input
	if (RB5 == 1)			// Test RB5 pin
	{val = 1;}
	else
	{val = 0;}	
	break;

	
	default:
	break;
	}

	return val;				// Return port pin state
}

// ****************************************************
// Pulseout Command to set a port high for period of time
// ****************************************************

void pulseout(char pin, unsigned long per)
{
switch(pin)
	{
	case 0:
	TRISC7 = 0;				// Make RC7 an Output
	RC7 = 1;				// Set RC7 High
	pauseus(per);
	RC7 = 0;				// Set RC7 Low
	break;
	
	case 1:
	TRISC6 = 0;				// Make RC6 an Output
	RC6 = 1;				// Set RC6 High
	pauseus(per);			// delay
	RC6 = 0;				// Set RC6 Low
	break;

	case 2:
	TRISC5 = 0;				// Make RC5 an Output
	RC5 = 1;				// Set RC5 High
	pauseus(per);			// delay
	RC5 = 0;				// Set RC5 Low
	break;

	case 3:
	TRISC4 = 0;				// Make RC4 an Output
	RC4 = 1;				// Set RC4 High
	pauseus(per);			// delay
	RC4 = 0;				// Set RC4 Low
	break;

	case 4:
	TRISC3 = 0;				// Make RC3 an Output
	RC3 = 1;				// Set RC3 High
	pauseus(per);			// delay
	RC3 = 0;				// Set RC3 Low
	break;

	case 5:
	TRISC2 = 0;				// Make RC2 an Output
	RC2 = 1;				// Set RC2 High
	pauseus(per);			// delay
	RC2 = 0;				// Set RC2 Low
	break;
	
	case 6:
	TRISC1 = 0;				// Make RC1 an Output
	RC1 = 1;				// Set RC1 High
	pauseus(per);			// delay
	RC1 = 0;				// Set RC1 Low
	break;

	case 7:
	TRISC0 = 0;				// Make RC0 an Output
	RC0 = 1;				// Set RC0 High
	pauseus(per);			// delay
	RC0 = 0;				// Set RC0 Low
	break;

	case 8:
	TRISB0 = 0;				// Make RB0 an Output
	RB0 = 1;				// Set RB0 High
	pauseus(per);			// delay
	RB0 = 0;				// Set RB0 Low
	break;

	case 9:
	TRISB1 = 0;				// Make RB1 an Output
	RB1 = 1;				// Set RB1 High
	pauseus(per);			// delay
	RB1 = 0;				// Set RB1 Low
	break;

	case 10:
	TRISB2 = 0;				// Make RB2 an Output
	RB2 = 1;				// Set RB2 High
	pauseus(per);			// delay
	RB2 = 0;				// Set RB2 Low
	break;
	
	case 11:
	TRISB3 = 0;				// Make RB3 an Output
	RB3 = 1;				// Set RB3 High
	pauseus(per);			// delay
	RB3 = 0;				// Set RB3 Low
	break;

	case 12:
	TRISB4 = 0;				// Make RB4 an Output
	RB4 = 1;				// Set RB4 High
	pauseus(per);			// delay
	RB4 = 0;				// Set RB4 Low
	break;

	case 13:
	TRISB5 = 0;				// Make RB5 an Output
	RB5 = 1;				// Set RB5 High
	pauseus(per);			// delay
	RB5 = 0;				// Set RB5 Low
	break;

	
	default:
	break;
	}
}


// ****************************************************
// LCD internal write routine
// ****************************************************
 

void
lcd_write(unsigned char c)
{
//	pause (1);

char temp = ( ( ( c >> 4 ) & 0x0F );
	LCD_DATA = LCD_DATA & 0xF0;
	LCD_DATA = LCD_DATA + temp;
	LCD_STROBE();

	temp = ( c & 0x0F );
	LCD_DATA = LCD_DATA & 0xF0;
	LCD_DATA = LCD_DATA + temp;
	LCD_STROBE();
}

// ****************************************************
// Clear and home the LCD
// ****************************************************

void
lcd_clear(void)
{
	LCD_RS = 0;
	lcd_write(0x1);
//	pause (2);
}


// ****************************************************
// Write a string of ASCII text to the LCD
// ****************************************************
 
void
lcd_puts(const char * s)
{
	LCD_RS = 1;	// write characters
	while(*s)
	lcd_write(*s++);
}


// ****************************************************
// Write a single ASCII character to the LCD
// ****************************************************


void
lcd_symbol(char c)
{
	LCD_RS = 1;	// write characters
	lcd_write( c );
}


// ****************************************************
// Go to specific position on the LCD
// ****************************************************

void
lcd_goto(unsigned char pos)
{
	LCD_RS = 0;
	lcd_write(0x80+pos);
}

// ****************************************************
// Display 3 digit number
// ****************************************************

void
lcd_number(char c)
{
	char hund = c/100;
	char tens = (c % 100)/10;
	char ones = (c % 100) % 10;
	LCD_RS = 1;	// write characters
	lcd_write(hund + 0x30);	
	lcd_write(tens + 0x30);
	lcd_write(ones + 0x30);	
}


// ****************************************************
// Initialize the LCD
// ****************************************************

 
void
lcd_init()
{
// --- For PortB LCD Control---
TRISB = 0;
// --- For PortC LCD Control---
//TRISC = 0;
// --- For PortD LCD Control---
//TRISD = 0;

LCD_RS = 0;
LCD_EN = 0;
LCD_RW = 0;

	char init_value = 0x3;
	
	pause (15);				// wait 15mSec after power applied,
	char temp = init_value;
	LCD_DATA = LCD_DATA & 0xF0;
	LCD_DATA = LCD_DATA + temp;
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	char temp = 2;	// Four bit mode
	LCD_DATA = LCD_DATA & 0xF0;
	LCD_DATA = LCD_DATA + temp;
	LCD_STROBE();
	
	lcd_write(0x28); // Set interface length
//	lcd_write(0xC); // Display On, Cursor Off, Blink Off
	lcd_write(0xF); // Display On, Cursor On, Cursor Blink
	lcd_clear();	// Clear screen
	lcd_write(0x6); // Set entry Mode
}


// ****************************************************
// Initialize Hardware USART
// The serial commands all work with the hardware USART
// and is limted to 2400 baud or 9600 baud. Formula for 
// baud rate calculation is FOSC/[64(SPBRG + 1)].
// ****************************************************

void init_serial(int baud)
{	
RX_PIN = 1;	
TX_PIN = 0;
if (baud == 2400)		  
{SPBRG = 103;}		// 2400 Baud value
else
{SPBRG = 25;}		// 9600 Baud value
 	
//Continuous 8 bit asynchronous non inverted low speed communication
RCSTA = 0x90; // SPEN and CREN bit = 1, RX9EN = 0
TXSTA = 0x20;//TXEN = 1, BRGH = 0, SYNC = 0
BAUDCTL = 0; //BRG16 = 0 
}

// ****************************************************
// Send ASCII Character from Hardware USART
// ****************************************************

void 
putch(unsigned char byte) 
{
	/* output one byte */
	while(!TXIF)	/* set when register is empty */
		continue;
	TXREG = byte;
}


// ****************************************************
// Receive ASCII Character from Hardware USART
// ****************************************************

unsigned char 
getch()
{
	/* retrieve one byte */
	while(!RCIF)	/* set when register is not empty */
		continue;
	return RCREG;	
}

// ****************************************************
// Hardware SPI Setup
// ****************************************************

/* SPI Peripheral Setup */
void spi_init(void)
{
// *** 16F690 Settings ***
//TRISC7 = 0;	// SDO pin set to output
//TRISB6 = 0;	// SCK pin set to output (Master Mode)
//TRISC6 = 0;	// CS pin set to output
// *** 16F886 Settings ***
TRISC5 = 0;	// SDO pin set to output
TRISC3 = 0;	// SCK pin set to output (Master Mode)
TRISA5 = 0;	// CS pin set to output
/* SSPCON Settings  */
// *** FOSC = 4Mhz ***
//SSPCON = 0b00000001;	// SPI Clock Frequency set to FOSC/16 = 250khz
// *** FOSC = 16Mhz ***
SSPCON = 0b00000010;	// SPI Clock Frequency set to FOSC/64 = 250khz
CKP = 0; 				// Idle state of clock is low
	
/*  SSPSTAT Settings  */
SMP = 1;		// Sampled at end of data pulse
CKE = 1;		// Data Transfered on rising edge of clock

/* SPI Peripheral on  */
SSPEN = 1; 		// Enable SPI peripheral
pause(1);		// Allow SPI to Stabilize
}

// ****************************************************
// Hardware SPI Output
// ****************************************************

char SPI_OUTPUT ( char spi_byte )
{
	SSPBUF = spi_byte;
	do {
		}
	while(!BF);
	return SSPBUF;
}


// ****************************************************
// External SPI EEPROM Write
// ****************************************************


void WR_BYTE ( char EE_address, char EE_data )
{
	char dummy;
	CS = 0;			// Select EEPROM by pulling CS low
	dummy = SPI_OUTPUT ( 0x06 ); // Send write enable command
	CS = 1;			// Release EEPROM chip with CS high
	pause(5);
	CS = 0;			// Enable EEPROM again
	dummy = SPI_OUTPUT ( 0x02 ); // Send Write command
	dummy = SPI_OUTPUT ( EE_address );    // Send Address location
	dummy = SPI_OUTPUT ( EE_data );       // Send Data
	CS = 1; 		// Release EEPROM to allow byte to be written
	
}


// ****************************************************
// External SPI EEPROM Read
// ****************************************************


char RD_BYTE ( char EE_address )
{
	char dummy;
	char spi_received = 0;
	CS = 0;	// Set chip select low
	dummy = SPI_OUTPUT (0x03); // Send read command
	dummy = SPI_OUTPUT (EE_address ); // Send Address
	spi_received = SPI_OUTPUT ( 0x00 ); // Receive Stored Value
	CS = 1;		// Bring chip select high to terminate
				// the read command

	return spi_received;
}

// ****************************************************
// External I/O Expander Write
// ****************************************************

void WR_MCP23S08 ( char regist, char data )
{
	char dummy;
	CS = 0;			// Select MCP23S08 by pulling CS low
	dummy = SPI_OUTPUT ( 0x40 ); 	// Send Device Opcode, select Write mode 
	dummy = SPI_OUTPUT ( regist );  // Send Register Address location
	dummy = SPI_OUTPUT ( data );    // Send Data byte
	CS = 1; 		// Release EEPROM to allow byte to be written
	
}
// ****************************************************
// External I/O Expander Read
// ****************************************************


char RD_MCP23S08 ( char regist )
{
	char dummy;
	CS = 0;			// Set chip select low
	dummy = SPI_OUTPUT (0x41); // Send Device Opcode, select Read mode
	dummy = SPI_OUTPUT (regist); // Send Address
	char data =  SPI_OUTPUT ( 0x00 ); // Receive data byte
	CS = 1;		// Bring chip select high to terminate
	return data;
}
// ****************************************************
//   PWM1 Output Function (Pin C2)
//  ***************************************************
void pwmout1 (char duty, int freq) 
{
	TRISC2 = 1;
	CCP1CON = 0;				//Turn CCP Module Off
	// *** Setup PWM ************
//	PR2 = 62500/freq;			// 4mhz
	PR2 = (250000/freq)-1;		// Set PWM Frequency
	CCPR1L = ((duty*(PR2+1))/100);	// Set Duty Cycle
	TMR2IE = 0;					// Disable Timer 2 Interrupt
	T2CKPS0 = 1;				// Set timer2 prescaler to 16
	T2CKPS1 = 1;
	CCP1CON = 0b00001100;		// Configure PWM Mode, Set DB bits to 10
	TMR2ON = 1;					// Turn on Timer 2
	 
	while (TMR2IF ==0)			// Wait for start of period
		{}
	
	TRISC2 = 0;
}

// ****************************************************
//   PWM2 Output Function (Pin C3)
//  ***************************************************
void pwmout2 (char duty, int freq) 
{
	TRISC1 = 1;
	CCP2CON = 0;				//Turn CCP Module Off
	// *** Setup PWM ************
	PR2 = (250000/freq)-1;		// Set PWM Freq.
	CCPR2L = ((duty*(PR2+1))/100);	// Set Duty Cycle
	TMR2IE = 0;					// Disable Timer 2 Interrupt
	T2CKPS0 = 1;				// Set timer2 prescaler to 16
	T2CKPS1 = 1;
	CCP2CON = 0b00001100;		// Configure PWM Mode, Set DB bits to 10
	TMR2ON = 1;					// Turn on Timer 2
	 
	while (TMR2IF ==0)			// Wait for start of period
		{}
	
	TRISC1 = 0;
}
// ****************************************************
//  A/D Setup 
//  chan - 0 thru 4 representing AN0 thru AN4
// ****************************************************	
char adcin (char chan)
{
switch(chan)
	{
	case 0:
	TRISA0 = 1;				// Make RA0/AN0 an Input
	ANS0 = 1;				// Configure RA0 to Analog to Digital input
	ADCON0 = 0b11000000;	// Configure A/D to use AN0, left justified
	break;
	
	case 1:
	TRISA1 = 1;				// Make RA1/AN1 an Input
	ANS1 = 1;				// Configure RA1 to Analog to Digital input
	ADCON0 = 0b11000100;	// Configure A/D to use AN1, left justified
	break;

	case 2:
	TRISA2 = 1;				// Make RA2/AN2 an Input
	ANS2 = 1;				// Configure RA2 to Analog to Digital input
	ADCON0 = 0b11001000;	// Configure A/D to use AN2, left justified
	break;

	case 3:
	TRISA3 = 1;				// Make RA3/AN3 an Input
	ANS3 = 1;				// Configure RA3 to Analog to Digital input
	ADCON0 = 0b11001100;	// Configure A/D to use AN3, left justified
	break;

	case 4:
	TRISA5 = 1;				// Make RA5/AN4 an Input
	ANS4 = 1;				// Configure RA5 to Analog to Digital input
	ADCON0 = 0b11010000;	// Configure A/D to use AN4, left justified
	break;

	default:
	break;
	}
	
	ADON = 1; 				// A/D Converter on;
	pause (1);				// Sample Time
	GO_DONE = 1;				// Start A/D conversion on AN0
	while(GO_DONE == 1); 	// Wait for conversion to complete
	char value = ADRESH;
	return value;
	
}
/******************************************************************************************/
// Hardware I2C single master routines for PIC16F886
// for HI-TECH PIC C COMPILER.
//
// i2c_init  - initialize I2C functions
// i2c_start - issue Start condition
// i2c_repStart- issue Repeated Start condition
// i2c_stop  - issue Stop condition
// i2c_read(x) - receive unsigned char - x=0, don't acknowledge - x=1, acknowledge
// i2c_write - write unsigned char - returns ACK
//
//
//******************************************************************************************

void i2c_init()
{
 TRISC3=1;           // set SCL and SDA pins as inputs
 TRISC4=1;

 SSPCON = 0x38;      // set I2C master mode
 SSPCON2 = 0x00;

// Formula for SSPADD register value: SSPADD = [(Fosc/4)/BitRate] - 1
 SSPADD = 0x27;     // 100k at 16Mhz clock
					// [(16Mhz/4)/100khz]-1 = 39 or 0x27 hex

 CKE=1;     // use I2C levels      worked also with '0'
 SMP=1;     // disable slew rate control  worked also with '0'

 SSPIF=0;      // clear SSPIF interrupt flag
 BCLIF=0;      // clear bus collision flag
}

//******************************************************************************************

void i2c_waitForIdle()
{
 while (( SSPCON2 & 0x1F ) | R_W ) {}; // wait for idle and not writing
}

//******************************************************************************************

void i2c_start()
{
 i2c_waitForIdle();
 SEN=1;
}

//******************************************************************************************

void i2c_repStart()
{
 i2c_waitForIdle();
 RSEN=1;
}

//******************************************************************************************

void i2c_stop()
{
 i2c_waitForIdle();
 PEN=1;
}

//******************************************************************************************

int i2c_read( unsigned char ack )
{
 unsigned char i2cReadData;

 i2c_waitForIdle();

 RCEN=1;

 i2c_waitForIdle();

 i2cReadData = SSPBUF;

 i2c_waitForIdle();

 if ( ack )
  {
  ACKDT=0;
  }
 else
  {
  ACKDT=1;
  }
  ACKEN=1;               // send acknowledge sequence

 return( i2cReadData );
}

//******************************************************************************************

unsigned char i2c_write( unsigned char i2cWriteData )
{
 i2c_waitForIdle();
 SSPBUF = i2cWriteData;

 return ( ! ACKSTAT  ); // function returns '1' if transmission is acknowledged
}

// *********************************************************************************
// i2c_eeout function to write to an 8-bit address Microchip EEPROM part (i.e. 24LC256)
// *********************************************************************************


void I2C_EEOUT(unsigned char address, unsigned char data)
 {
   i2c_start();
   i2c_write(0xa0);
   i2c_write(address);
   i2c_write(data);
   i2c_stop();
   pause(11);
}


// *********************************************************************************
// i2c_eein function to read from an 8-bit address Microchip EEPROM part (i.e. 24LC256)
// *********************************************************************************

unsigned char I2C_EEIN(unsigned char address)
{
   unsigned char data;

   i2c_start();
   i2c_write(0xa0);
   i2c_write(address);
   i2c_repStart();
   i2c_write(0xa1);
   data=i2c_read(0);
   i2c_stop();
   return(data);
}

/********************************************************   MAIN   ************************************************************/

void
main(void){

	init_micro();	// Initialize I/O
	i2c_init();    	// Initialize i2c 
	ANSEL=0x00; 
	ANSELH=0x00; 
	PORTB=0x00;    	// All LEDs off
	TRISB=0x00;    	// All PORTB outputs
	TRISA=0x00;
	TRISD=0x00;
	/*
	//ADC CONFIG    
	TRISE=0x03;
	ADCON1=0b00000000;
	PR2=0xFF;

	CCP1CON = 0xC0;
	CCP2CON = 0xC0;
	T2CKPS1 = 1;
	T2CKPS0 = 1;
	TMR2ON = 1;
	*/
	//LCD VARS
	LCD_RS=0;
	LCD_EN=0;
	LCD_RW=0;

	pause(15);
	LCD_DATA=init_value;
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_STROBE();
	pause(10);
	LCD_DATA=2;
	LCD_STROBE();

	lcd_write(0x28);
	lcd_write(0xC);
	lcd_clear();
	lcd_write(0x06);
//Serial port config
    RX_PIN=1; 
    TX_PIN=0; 
    OSCCON=0x70; 
    SPBRG=12; //9600 BAUDIOS.Cambiar para otra cantidad. 
    RCSTA=0x90; //Recepción disponible (SREN=1), 8 Bits, SPEN=1 (Puerto serial habilitados). 
    TXSTA=0x20; //Baja velocidad, SYNC=0 modo asíncrono, TXEN=1, 8 bits.
    BAUDCTL=0x00; //Detector de Baudios deshabilitado, 8 bits, sin inversión, 
    pause(500); 

//OTHER VARS
	char char_recibido;
	char char_pwm;
	char buffer[15];
   

	 PORTA=0x01;
    *pa=0xFF;
	
	putch(0x0D); 
    putch(0x0A); 
	
	//abecedario
    for(int i=97; i<123; i++){
        putch(i); 
        pause(20); 
    }
    putch(0x0D); 
    putch(0x0A); 

	putch(0x0D);
	putch(0x0A); 
	sprintf(buffer,"Mostrando Escritura ");
	for (char x = 0; x<20; x++)
		{
			putch (buffer[x]);
		}
	pause(200);
	putch(0x0D); 
	putch(0x0A); 

	unsigned char cnt = 0;
 //	unsigned int cont = 0;

	lcd_clear();				// Clear LCD screen
	lcd_goto(0);				// select first line
    lcd_puts("Grabando.....");	

		sprintf(buffer,"Tamanio de cnt %i", sizeof(cnt));
	for (char x = 0; x<20; x++)
		{
			putch (buffer[x]);
		}
	pause(200);
	putch(0x0D); 
	putch(0x0A); 

	//En lugar de poner un contador char, ponemos uno int
	//_________________________________________ESCRITURA____________________________________________	
	while(cnt<=20){   /* write 10 numbers to eeprom */
		PORTB = cnt+10;         		// The cnt value will display on the LEDs
		pause(300);
		I2C_EEOUT(cnt,10 - cnt);   	// Store 9 at address 1, 8 at address 2, ...

		sprintf(buffer,"Directorio: %d ", cnt);
		for (char x = 0; x<15; x++)
		{
			putch (buffer[x]);
		}
		putch(0x0D); 
	    putch(0x0A);

		sprintf(buffer,"Valor: %d ", cnt+10);
		for (char x = 0; x<10; x++)
		{
			putch (buffer[x]);
		}

		putch(0x0D); 
	    putch(0x0A); 
	  	
		//cont++;
		cnt=cnt+1;				// Increment cnt variable
	  	pause(100);				// Delay 255 milliseconds
	  }
	
	putch(0x0D);
	putch(0x0A); 
	sprintf(buffer,"Mostrando Lectura ");
	for (char x = 0; x<18; x++)
		{
			putch (buffer[x]);
		}
	pause(100);
	putch(0x0D); 
	putch(0x0A); 
	
	cnt=0;
//	cont = 3;
	unsigned char val = 123;
	
	//__________________________________LECTURA____________________________________________	
	 while(cnt <= 20)
	  {
		val = I2C_EEIN(cnt);
		PORTB = I2C_EEIN(cnt); 	// Display data read from EEPROM on LEDs in binary 
		pause (300);			// Delay for 1 second to read LEDs
	
		sprintf(buffer,"Directorio: %i ", cnt);
		for (char x = 0; x<16; x++)
			{
				putch (buffer[x]);
			}
		//	Retorno de Carro, Salto de l?nea en hex ASCII		
		putch(0x0D); 
		putch(0x0A); 

		sprintf(buffer,"Valor: %i ", val);
		for (char x = 0; x<10; x++)
			{
				putch (buffer[x]);
			}
		pause(100);
		//	Retorno de Carro, Salto de l?nea en hex ASCII		
		putch(0x0D); 
		putch(0x0A); 

/*	
		//Imprime en LCD 
			lcd_goto(0);
			lcd_text(buffer);
			lcd_goto(0x40);
			lcd_text(val);
			//esta pausa es para que el LCD muestre el mensaje
			pause(1000);
*/		
		//cont++;
	  	pause(255);
		cnt=cnt + 1;			// Increment cnt variable
	  }

}