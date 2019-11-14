#include<htc.h>
#include<pic.h>
#include <stdio.h>
#include <ctype.h>
__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & 
CPD_OFF & BOREN_OFF & IESO_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

//________________________config Puerto Serial

#define RX_PIN TRISC7
#define TX_PIN TRISC6

void gets_Serial(char *); 

unsigned char *pa=&PORTA; 
char in[17];
int  convint;  
int dir; 
int  atoi( const char * s );

//ADC PREP

unsigned short b0=0;
int nin=0x00;

unsigned char carac[5];
unsigned char carac2[3];

float	num=0;
float	num1=0.00488758553;
float   num3=0;


//Lcd config

#define LCD_RS RA7
#define LCD_RW RA4
#define LCD_EN RA6
#define LCD_DATA PORTD
#define LCD_STROBE()  ((LCD_EN=1),(LCD_EN=0))
#define number 0x30
#define BAUDRATE 100000UL
#define _XTAL_FREQ 4000000
#define VALOR ((_XTAL_FREQ/(4UL*BAUDRATE))-1)
//unsigned int nin;
unsigned char carac[5];
float num;
char init_value=0x03;
//unsigned short b0=0;

void init_micro(void)
{
	ANSEL = 0; 		//Analog ports set to digital		
	ANSELH = 0;
	CM1CON0 = 0;	//Comparators Shut off
	CM2CON0 = 0;
	INTCON=0;	// purpose of disabling the interrupts
}

void msecbase(void)
{
	OPTION_REG = 0b00000001;		
	TMR0 = 0xD;				
	while(!T0IF);			
	T0IF = 0;				
}

void pause( unsigned short usvalue )

{
	unsigned short x;
	
	for (x=0; x<=usvalue; x++)	
		{						
		msecbase();				
		}
}	

void i2c_init()
{
 TRISCbits.TRISC3=1;        // set SCL and SDA pins as inputs
 TRISCbits.TRISC4=1;
 SSPSTAT=0b10000000;
 SSPCON =0b00101000;   // set I2C master mode, CKP = 1, SSPEN = 1
 SSPCON2 =0;

// Formula for SSPADD register value: SSPADD = [(Fosc/4)/BitRate] - 1
 SSPADD = VALOR;     // 100k at 16Mhz clock
			// [(16Mhz/4)/100khz]-1 = 39 or 0x27 hex

//CKE=1;     	// use I2C levels      worked also with '0'
//SMP=1;     	// disable slew rate control  worked also with '0'

 //SSPIF=0;      	// clear SSPIF interrupt flag
 //BCLIF=0;      	// clear bus collision flag
}

//******************************************************************************************

void i2c_start(void)
{
SSPCON2bits.SEN=1;
while(SSPCON2bits.SEN==1);
}

//******************************************************************************************

void i2c_restart(void)
{
SSPCON2bits.RSEN=1;
while(SSPCON2bits.RSEN==1);
}

//******************************************************************************************

void i2c_stop(void)
{
SSPCON2bits.PEN=1;
while(SSPCON2bits.PEN==1);
}

//******************************************************************************************

char i2c_read( void )
{
 PIR1bits.SSPIF=0;
 SSPCON2bits.RCEN=1;
 while(PIR1bits.SSPIF==0);
 return SSPBUF;
}

//******************************************************************************************

void I2C_ack(void)
{
 PIR1bits.SSPIF=0;
 SSPCON2bits.ACKDT=0;
 SSPCON2bits.ACKEN=1;
 while(PIR1bits.SSPIF==0);
}

//******************************************************************************************

void I2C_nack(void)
{
 PIR1bits.SSPIF=0;
 SSPCON2bits.ACKDT=1;
 SSPCON2bits.ACKEN=1;
 while(PIR1bits.SSPIF==0);
}

//******************************************************************************************

void i2c_write(char I2C_data)
{
 PIR1bits.SSPIF=0;
 SSPBUF=I2C_data;
 while(PIR1bits.SSPIF==0);
}

// ***************************************************************************
// i2c_eeout function to write to an 8-bit address Microchip EEPROM part (i.e. 24LC256)
// ***************************************************************************


void I2C_EEOUT(unsigned char address1,unsigned char address2, unsigned char data)
{
 i2c_start();
 i2c_write(0xa0);
 i2c_write(address1);
 i2c_write(address2);
 i2c_write(data);
 i2c_stop();
 pause(11);
}


// ***************************************************************************
// i2c_eein function to read from an 8-bit address Microchip EEPROM part (i.e. 24LC256)
// ***************************************************************************

unsigned char I2C_EEIN(unsigned char address1, unsigned char address2)
{
   unsigned char data;
	i2c_start();
   i2c_write(0xa0);
   i2c_write(address1);
	i2c_write(address2);
   i2c_restart();
   i2c_write(0xa1);
   data=i2c_read();
	I2C_nack();
   i2c_stop();
   return(data);
}

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
void
main(void)
{
	ANSEL=0x00;
	ANSELH=0;
	OSCCON=0xC0;
	TRISA=3;
	TRISB=0;
	TRISC=6;//RC1 Y RC2 COMO ENTRADA CCP1 Y CCP2
	TRISD=0;
	TRISE=0;

	PR2=0xFC; //FORMULA DE PERIODO
	CCP2CON=0x0C; //ACTIVAR PWM
	CCP1CON=0x0C; //ACTIVAR PWM P1A
	CCPR1L=0x80;
	CCPR2L=0x80;
	PIR1=0;
	T2CON=0X07;
	while(PIR1); //ESPERAR A QUE SE DESBORDE TIMER 2
	TRISC1=0;
	TRISC2=0; //RC1 Y RC2 SALIDAS DEL PWM
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
	
	PORTA=0x01;
    *pa=0xFF;

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
	pause(100);

	PORTB=0;
	
    unsigned char cnt1,cnt2=0;
	unsigned int B1, B2, mil, dec, cen, uni=0;


	sprintf(buffer,"Escribiendo...");
	for (char x = 0; x<20; x++)
		{
			putch (buffer[x]);
		}
	pause(200);
	putch(0x0D); 
	putch(0x0A); 
    
	lcd_goto(0);
	lcd_puts("Escribiendo...");
	//init_micro();
	i2c_init();

	PORTB=0;

	pause(3000);

//__________________________ESCRITURA_________________________________-
	while(cnt2 < 25)   /* write 10 numbers to eeprom */
	  {   
			ADCON0=0xC1;
			GO_DONE=1;
			while(GO_DONE==1);
			CCPR1L=ADRESH;
			CCP1CON=(ADRESL>>2)|0x0C;
			nin=(ADRESH<<2)|(ADRESL>>6);
			num=nin*0.004887585533;
			sprintf(carac,"%1.3f",num);

			lcd_goto(0x40);
			lcd_puts("V1:");
			lcd_puts(carac); 

			sprintf(buffer,"V%i : %s  ",cnt2,carac);
			for (char x = 0; x<10; x++)
				{
				putch (buffer[x]);
				}
			putch(0x0D); 
   		 	putch(0x0A);

	 		pause (100);
			I2C_EEOUT(cnt1, cnt2, nin);
			pause(20); 
			cnt2 = cnt2 + 1;
	 }
	
	cnt2=0;
	
	lcd_clear();
	lcd_goto(0);
	lcd_puts("Leyendo...");

	sprintf(buffer,"Leyendo.... ");
	for (char x = 0; x<10; x++)
		{
			putch (buffer[x]);
		}
	pause(200);
	putch(0x0D); 
	putch(0x0A);
	 
	while(cnt2<25)
	  {
	 	lcd_goto(0x40); 
		B1=I2C_EEIN(cnt1,cnt2);
	/*	
		mil=B1/1000;
		B2=B1-(mil*1000);
		cen=B2/100;
		B2=B1-(mil*1000)-(cen*100);
		dec=B2/10;
		uni=B1-(mil*1000)-(cen*100)-(dec*10);
	
	
		
		lcd_goto(0x40);
		lcd_putch(mil+48); 
		lcd_goto(0x41);
		lcd_putch(cen+48);		// Display B1 value on LCD
		lcd_goto(0x42);
		lcd_putch(dec+48);		// Display B1 value on LCD
		lcd_goto(0x43);
		lcd_putch(uni+48); // Display data read from EEPROM on LEDs in binary 
	*/

		lcd_goto(0x40); 
		nin=I2C_EEIN(cnt1,cnt2);
		pause(20);
		num=nin*0.004887585533;
		sprintf(carac,"%1.3f",num);
		lcd_goto(0x40);
		lcd_puts("V1:");
		lcd_puts(carac); 
 		pause (100);	

		sprintf(buffer,"V%i : %s  ",cnt2,carac);
		for (char x = 0; x<10; x++)
			{
				putch (buffer[x]);
			}
		pause(200);
		putch(0x0D); 
		putch(0x0A);
		
		pause (100);			// Delay for 1 second to read LEDs
		cnt2=cnt2 + 1;			// Increment cnt variable
	  }
	/*while(1==1)
	{
		ADCON0=0xC1;
		GO_DONE=1;
		while(GO_DONE==1);
		CCPR1L=ADRESH;
		CCP1CON=(ADRESL>>2)|0x0C;
		nin=(ADRESH<<2)|(ADRESL>>6);
		num=nin*0.004887585533;
		sprintf(carac,"%1.3f",num);
		lcd_goto(0);
		lcd_puts("V1:");
		lcd_puts(carac);
		
		num=nin*0.09775171065;
		sprintf(carac,"%3.1f",num);
		lcd_goto(0x09);
		lcd_puts(carac);
		lcd_goto(0x0E);
		lcd_puts("%");

		ADCON0=0xC5;
		GO_DONE=1;
		while(GO_DONE==1);
		CCPR2L=ADRESH;
		CCP2CON=(ADRESL>>2)|0x0C;
		nin=((ADRESH<<2)|(ADRESL>>6));
		num=nin*0.004887585533;
		sprintf(carac,"%1.3f",num);
		lcd_goto(0x40);
		lcd_puts("V2:");
		lcd_puts(carac);

		num=nin*0.09775171065;
		sprintf(carac,"%3.1f",num);
		lcd_goto(0x49);
		lcd_puts(carac);
		lcd_goto(0x4E);
		lcd_puts("%");
		pause(10);
	}*/
}

void putch(char dato)
{
 while(!TXIF) continue; 
 TXREG=dato; 
}

char getch()
{
    while(!RCIF) continue; 
    return RCREG;   
}

void gets_Serial( char * s){
    
    for(int i=0; i<=16; i++) *(s+i)=0; 
    for(int i=0; i<16; i++){
        char c=getch();
        //PORTA=0x02; 
        if(c==10 | c==13) break; 
        *(s+i)=c; 
    }
    //PORTA=0x00; 
}

/*
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

*/