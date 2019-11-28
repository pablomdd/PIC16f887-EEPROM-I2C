#include <htc.h>
#include<pic.h>
#include<stdio.h>
#define RX_PIN TRISC7
#define TX_PIN TRISC6
unsigned int nin;
unsigned char carac[5];
unsigned int num;
int sal;
unsigned short b0=0;
__CONFIG (FOSC_INTRC_NOCLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF & DEBUG_OFF);
__CONFIG (BOR4V_BOR40V & WRT_OFF); //Internal clock, Watchdog off, MCLR off, Code Unprotected

void msecbase(){
    //La siguiente lï¿½nea fue la ï¿½nica que se cambiï¿½. Antes estaba como OPTION. 
    //En el PIC16F887 se llama OPTION_REG.
	OPTION_REG = 0b00000001;		//Set prescaler to TMRO 1:4
	TMR0 = 0x07;					//Preset TMRO to overflow on 250 counts
	while(!T0IF);				//Stay until TMRO overflow flag equals 1
	T0IF = 0;					//Clear the TMR0 overflow flag
}

void pause( unsigned short msvalue ){
	for (unsigned short x=0; x<=msvalue; x++) msecbase();				//Jump to millisec delay routine
}
void putch(char); 
char getch(void ); 

void gets_Serial(char *); 

unsigned char *pa=&PORTA; 
char input[17];
int convint;  
int dir; 
int  atoi( const char * s );


//LCD CONFIG

char init_value=3;
#define LCD_RS RE2
#define LCD_RW RE0
#define LCD_EN RE1

#define LCD_DATA PORTD
#define LCD_STROBE()  ((LCD_EN=1),(LCD_EN=0))

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

int con_val(char a, char b, char c)
{
	int salidita=((a-48)*100)+((b-48)*10)+(c-48);
	return salidita;
}

int con_ascii(int entrar)
{
	if(entrar==0)
	{
		sal=48;
	}
	else if(entrar==1)
	{
		sal=49;
	}
	else if(entrar==2)
	{
		sal=50;
	}
	else if(entrar==3)
	{
		sal=51;
	}
	else if(entrar==4)
	{
		sal=52;
	}
	else if(entrar==5)
	{
		sal=53;
	}
	else if(entrar==6)
	{
		sal=54;
	}
	else if(entrar==7)
	{
		sal=55;
	}
	else if(entrar==8)
	{
		sal=56;
	}
	else if(entrar==9)
	{
		sal=57;
	}
return sal;
}

void main(){
    ANSEL=32; 
	OSCCON=0xC0;
    ANSELH=0x00; 
    INTCON=0x00; 
    TRISA = 0xFF;		//nible menos significativo de PORTA como entrada. 
    TRISB = 0;       //PORTB como salida (RE y RS)
    TRISC=6;
	TRISD= 0x00;       //PORTD como salida (pines data de la LCD)
	TRISE= 1;
	PR2=0xFC;
	CCP2CON=0x0C;
	CCP1CON=0x0C;
	CCPR1L=0x80;
	CCPR2L=0x80;
	PIR1=0;
	T2CON=0x07;
	while(PIR1);
	TRISC1=0;
	TRISC2=0;
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
	
    RX_PIN=1; 
    TX_PIN=0; 
    OSCCON=0x70; 
    SPBRG=12; //9600 BAUDIOS.Cambiar para otra cantidad. 
    RCSTA=0x90; //Recepcion disponible (SREN=1), 8 Bits, SPEN=1 (Puerto serial habilitados). 
    TXSTA=0x20; //Baja velocidad, SYNC=0 modo asincrono, TXEN=1, 8 bits.
    BAUDCTL=0x00; //Detector de Baudios deshabilitado, 8 bits, sin inversiÃ³n, 
    pause(500); 
    PORTA=0x01;
    *pa=0xFF;

	char char_recibido;
	char char_recibido1;
	char char_recibido2;

//	unsigned char *buffer = (char *)0x20;   //assign to start of gen.purpose registers
    //printf("Enter your name: ");
	
//	getString(&buffer, 10);

	while(1){
	ADCON0=0xD5;
	GO_DONE=1;
	while(GO_DONE==1);
	nin=((ADRESH<<2)|(ADRESL>>6));
	num=nin;
	unsigned int d;
	unsigned int c;
	unsigned int u;
	unsigned int dc;
	unsigned int numd=num/10;
	unsigned int numc=num/100;
	unsigned int numdc=num/1000;
	dc=con_ascii(numdc);
	numc=numc-(numdc*10);
	c=con_ascii(numc);
	numd=numd-(numc*10)-(numdc*100);
	d=con_ascii(numd);
	unsigned int numu=num-(numdc*1000)-(numc*100)-(numd*10);
	u=con_ascii(numu);
	//putch('A');putch('D');putch('C');putch(':');putch(' ');
	putch(dc);
	putch(c);
	putch(d);
	putch(u);
	putch(0x0D); 
    putch(0x0A);
    //pause(100); 
	num=PORTA;
	numd=num/10;
	numc=numd/10;
	c=con_ascii(numc);
	numd=numd-(numc*10);
	d=con_ascii(numd);
	numu=num-(numc*100)-(numd*10);
	u=con_ascii(numu);
	//putch('P');putch('O');putch('R');putch('T');putch('A');putch(':');putch(' ');
	putch(c);
	putch(d);
	putch(u);
	putch(0x0D); 
    putch(0x0A);
	//putch(0x0D); 
    //putch(0x0A);
    //pause(200); 
	//putch('L');putch('E');putch('D');putch('S');putch(':');putch(' ');
	char_recibido = getch();
	char_recibido1 = getch();
	char_recibido2 = getch();
	//putch(char_recibido);
	//putch(char_recibido1);
	//putch(char_recibido2);
	//putch(0x0D); 
    //putch(0x0A);
	//putch('P');putch('W');putch('M');putch(':');putch(' ');
	unsigned char char_recibido3;
	unsigned char char_recibido4;
	unsigned char char_recibido5;
	unsigned char char_recibido6;
	char_recibido3 = getch();
	char_recibido4 = getch();
	char_recibido5 = getch();
	char_recibido6 = getch();
	//putch(char_recibido3);
	//putch(char_recibido4);
	//putch(char_recibido5);
	//putch(char_recibido6);
	unsigned int pb;
unsigned int pb1;
	pb=((char_recibido-48)*100)+((char_recibido1-48)*10)+((char_recibido2-48));
	pb1=((char_recibido3-48)*1000)+((char_recibido4-48)*100)+((char_recibido5-48)*10)+char_recibido6-48;
	PORTB=pb;
	CCPR1L=pb1;
	//	pause(1500);
		//lcd_goto(0);
		//lcd_puts("hola");
		//pause(1500);
		
	//lcd_clear();
		
	//	lcd_goto(0);
//		lcd_puts(char_recibido);
	//	pause(1500);
		// gets_Serial(input);
		// for (char x = 0; x<17; x++)
		// 	{
		// 	putch (input[x]);
		// 	}
	//	putch(0x0D);		// Send ASCII value for carriage return 
	//	putch(0x0A);
	//	pause(1500);
		
		lcd_clear();
		if(char_recibido>50)
		{
			char_recibido=50;
		}
		if(char_recibido==50)
		{	
			if(char_recibido1>53)
			{
				char_recibido1=53;
			}
			if(char_recibido2>53)
			{
				char_recibido2=53;
			}
		}
		lcd_goto(0);
		lcd_puts("LEDS:");
		lcd_goto(6);
		lcd_putch(char_recibido);
		lcd_goto(7);
		lcd_putch(char_recibido1);
		lcd_goto(8);
		lcd_putch(char_recibido2);
		lcd_goto(0x40);
		lcd_puts("PWM:");
		lcd_goto(0x45);
		lcd_putch(char_recibido3);
		lcd_goto(0x46);
		lcd_putch(char_recibido4);
		lcd_goto(0x47);
		lcd_putch(char_recibido5);
		lcd_goto(0x48);
		lcd_putch(char_recibido6);
		
		//pause(100);
		// gets_Serial(input);
		// for (char x = 0; x<17; x++)
		// 	{
		// 	putch (input[x]);
		// 	}
		//putch(0x0D);		// Send ASCII value for carriage return 
		//putch(0x0A);
		//pause(1500);
		
	}


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
    //printf(“\rHello “);
    //printf("%.10s",input);                        //print input string

}