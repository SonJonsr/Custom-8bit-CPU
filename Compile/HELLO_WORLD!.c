#include <stdint.h>    
#include <stdio.h>    
    
#define H 0x48
#define E 0x45
#define L 0x4C
#define O 0x4F
#define space 0x20
#define W 0x57
#define R 0x52
#define D 0x44
#define exclamation 0x21

int8_t zero = 0;
int8_t attribute = 32; // should be white text on black background

int16_t Screen_Base = 0xE000;
int16_t Address = 0; 
int16_t Screen_Max = 0xE018;
int16_t Two = 2; 

int8_t MEM[65536];
    
void main (  )   {       
	Address = Screen_Base;
	while (Address < Screen_Max) {        //setts the attribute of the text area to white on black background
		MEM[Address] = zero;
		Address ++;
		MEM[Address] = attribute;
		Address ++;
	}
	
	Address = Screen_Base; // setts the text to "HELLO WORLD!"
	MEM[Address] = H;
 	Address += Two;
	MEM[Address] = E;
    Address += Two;
	MEM[Address] = L;
 	Address += Two;
	MEM[Address] = L;
 	Address += Two;
	MEM[Address] = O;
 	Address += Two;
	MEM[Address] = space;
 	Address += Two;
	MEM[Address] = W;
 	Address += Two;
	MEM[Address] = O;
 	Address += Two;
	MEM[Address] = R;
 	Address += Two;
	MEM[Address] = L;
 	Address += Two;
	MEM[Address] = D;
 	Address += Two;
	MEM[Address] = exclamation;

halt:
	goto halt;
}    
    