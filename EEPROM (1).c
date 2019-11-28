#include<htc.h>
#include<pic.h>
#include<stdio.h>
__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & 
CPD_OFF & BOREN_OFF & IESO_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF);

#define RX_PIN TRISC7
#define TX_PIN TRISC6
#define LCD_RS RE2
#define LCD_RW RE0
#define LCD_EN RE1
#define LCD_DATA PORTD
#define LCD_STROBE()  ((LCD_EN=1),(LCD_EN=0))
#define number 0x30
#define BAUDRATE 100000UL
#define _XTAL_FREQ 4000000
#define VALOR ((_XTAL_FREQ/(4UL*BAUDRATE))-1)
unsigned char nin;
unsigned char carac[5];
float num;
char init_value=0x03;
unsigned short b0=0;
void gets_Serial(char *); 
unsigned char *pa=&PORTA; 
char input[17];
int convint;  
int dir; 
int  atoi( const char * s );


void init_micro(void)
{
	ANSEL = 0; 		//Analog ports set to digital		
	ANSELH = 0;
	CM1CON0 = 0;	//Comparators Shut off
	CM2CON0 = 0;
	INTCON=0;	// purpose of disabling the interrupts
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
        PORTA=0x02; 
        if(c==10 | c==13) break; 
        *(s+i)=c; 
    }
    PORTA=0x00; 
}



void getString(char *input, unsigned int length){
    for(int i=0;i<length;i++){                       
        input[i] = getch();                           //acquire each character until 10 chars are received
        if(input[i]==13)                              //or if newline is received
            break;
    }
    //printf(ì\rHello ì);
    //printf("%.10s",input);                        //print input string

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

// *****************************************************************************
// i2c_eeout function to write to an 8-bit address Microchip EEPROM part (i.e. 24LC256)
// *****************************************************************************


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


// *****************************************************************************
// i2c_eein function to read from an 8-bit address Microchip EEPROM part (i.e. 24LC256)
// *****************************************************************************

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

void lcd_write(unsigned int c)
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
	ANSEL=32;//AN5 COMO ENTRADA ANALOGICA
	ANSELH=0;
	OSCCON=0xC0;
	TRISA=0xFF;
	TRISB=0;
	TRISC=6;//RC1 Y RC2 COMO ENTRADA CCP1 Y CCP2
	TRISD=0;
	TRISE=1;

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
	PORTB=0;
	unsigned char cnt1,cnt2=0;
	unsigned int B1, B2, mil, dec, cen, uni, cntd, cnt1i, cnt2i=0;
RX_PIN=1; 
TX_PIN=0; 
OSCCON=0x70; 
SPBRG=12; //9600 BAUDIOS.Cambiar para otra cantidad. 
RCSTA=0x90; //Recepcion disponible (SREN=1), 8 Bits, SPEN=1 (Puerto serial habilitados). 
TXSTA=0x20; //Baja velocidad, SYNC=0 modo asincrono, TXEN=1, 8 bits.
BAUDCTL=0x00; //Detector de Baudios deshabilitado, 8 bits, sin inversi√≥n, 
pause(500); 
PORTA=0x03;
*pa=0xFF;
lcd_clear();
lcd_goto(0);
lcd_puts("Espera comando");
char char_recibido;
char_recibido=getch();
while(char_recibido=='E')
{
lcd_goto(0);
lcd_puts("Escribiendo...");
i2c_init();
PORTB=0;
cnt1=0;
cnt2=0;
cnt1i=0;
cnt2i=0;
cntd=0;
while(cnt1i<4)
{
cnt2=0;
cnt2i=0;
cntd=0;
 while(cnt2i<256)   
  {   
	ADCON0=0xD5;
	GO_DONE=1;
	while(GO_DONE==1);
	CCPR1L=ADRESH;
	CCP1CON=(ADRESL>>2)|0x0C;
	//nin=(ADRESH<<2)|(ADRESL>>6);
	nin=ADRESH;
//	num=nin*0.0196078431372;
//	sprintf(carac,"%1.3f",num);	
//	lcd_goto(0x40);
//	lcd_puts("V:");
//	lcd_goto(0x42);
//	lcd_puts(carac);
//	num=nin*0.3921568627450;
//	sprintf(carac,"%3.0f",num);
//	lcd_goto(0x48);
//	lcd_puts(carac);
//	lcd_goto(0x4B);
//	lcd_puts("%");
//	PORTB=ADRESH;  	
	I2C_EEOUT(cnt1, cnt2, nin);   
	cnt2=cnt2+1;
	cnt2i=cnt2i+1;				
  }
	cnt1=cnt1+1;
	cnt1i=cnt1i+1;
}
cnt2=0;
cnt1=0;
cnt2i=0;
cnt1i=0;
cntd=0;
lcd_clear();
lcd_goto(0);
lcd_puts("Memoria Escrita");
char_recibido=getch();
}
while(char_recibido=='L')
{
lcd_clear();
lcd_goto(0);
lcd_puts("Leyendo...");
while(cnt1i<4)
{
cnt2=0;
cnt2i=0;
 while(cnt2i<256)
  {
PORTB=I2C_EEIN(cnt1,cnt2);
sprintf(carac,"%1.3f",I2C_EEIN(cnt1,cnt2)*0.0196078431372);
lcd_goto(0x40);
lcd_puts("V:");
lcd_goto(0x42);
lcd_puts(carac);
//num=I2C_EEIN(cnt1,cnt2)*0.3921568627450;
//sprintf(carac,"%3.0f",num);
//lcd_goto(0x48);
//lcd_puts(carac);
//lcd_goto(0x4B);
//lcd_puts("%");
//pause(10);
B1=cnt1i;
cen=B1/100;
B2=B1-(cen*100);
dec=B2/10;
uni=B1-(cen*100)-(dec*10);
//putch('D');putch('i');putch('r');putch('e');putch('c');putch('c');putch('i');putch('o');putch('n');putch(' ');putch('1');
//putch(':');putch(' ');
putch(cen+48);
putch(dec+48);
putch(uni+48);//putch(' ');putch(' ');
putch(0x0D);	
putch(0x0A);
pause(250);

B1=cnt2i;
cen=B1/100;
B2=B1-(cen*100);
dec=B2/10;
uni=B1-(cen*100)-(dec*10);
//putch('D');putch('i');putch('r');putch('e');putch('c');putch('c');putch('i');putch('o');putch('n');putch(' ');putch('2');
//putch(':');putch(' ');
putch(cen+48);
putch(dec+48);
putch(uni+48);
putch(0x0D);	
putch(0x0A);
pause(250);

//putch('V');putch('a');putch('l');putch('o');putch('r');putch(' ');
//putch('N');putch('u');putch('m');putch('e');putch('r');putch('o');putch(':');putch(' ');
cntd=cnt2+(cnt1*256)+1;
B1=cntd;
mil=B1/1000;
B2=B1-(mil*1000);
cen=B2/100;
B2=B1-(mil*1000)-(cen*100);
dec=B2/10;
uni=B1-(mil*1000)-(cen*100)-(dec*10);
putch(mil+48);
putch(cen+48);
putch(dec+48);
putch(uni+48);
putch(0x0D);		
putch(0x0A);
pause(250);

B1=I2C_EEIN(cnt1,cnt2)*0.0196078431372*1000;
mil=B1/1000;
B2=B1-(mil*1000);
cen=B2/100;
B2=B1-(mil*1000)-(cen*100);
dec=B2/10;
uni=B1-(mil*1000)-(cen*100)-(dec*10);
//putch('T');putch('e');putch('n');putch('s');putch('i');putch('o');putch('n');putch(':');putch(' ');
putch(mil+48);
putch('.');
putch(cen+48);
putch(dec+48);
putch(uni+48);
//putch(' ');putch('V');
putch(0x0D);	
putch(0x0A);
pause(250);
		
cnt2=cnt2+1;
cntd=cntd+1;
cnt2i=cnt2i+1;			// Increment cnt variable
  }
	cnt1i=cnt1i+1;
	cnt1=cnt1+1;
}
lcd_clear();
lcd_goto(0);
lcd_puts("Memoria leida");
char_recibido=getch();
}
/*putch('M');
putch('e');
putch('m');
putch('o');
putch('r');
putch('i');
putch('a');
putch(' ');
putch('L');
putch('e');
putch('i');
putch('d');
putch('a');
pause(20);
*/
}
