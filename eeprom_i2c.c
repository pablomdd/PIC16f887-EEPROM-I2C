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
__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF); //Internal clock, Watchdog off, MCLR off, Code Unprotected

#include "simplec1.1.h"


void
main(void)
{
init_micro();	// Initialize I/O
i2c_init();    	// Initialize i2c 
PORTB=0x00;    	// All LEDs off
TRISB=0x00;    	// All PORTB outputs

unsigned char cnt=0;
 
 while(cnt<=255)   /* write 10 numbers to eeprom */
  {        
  PORTB=cnt;         		// The cnt value will display on the LEDs
  I2C_EEOUT(cnt,10-cnt);   	// Store 9 at address 1, 8 at address 2, ...
  cnt=cnt+1;				// Increment cnt variable
  pause(255);				// Delay 255 milliseconds
  }

 cnt=0;

 while(cnt<=255)
  {
	 PORTB =I2C_EEIN(cnt); 	// Display data read from EEPROM on LEDs in binary 
	 pause (500);			// Delay for 1 second to read LEDs
	 cnt=cnt + 1;			// Increment cnt variable
  }
}