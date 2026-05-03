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

int8_t temp = 0;
int8_t length = 11;
int8_t count = 0;
int8_t zero = 0;
int8_t attribute = 32; // should be white text on black background

int16_t Screen_Base = 0xE000;
int16_t AdrIncrimented = 0; 
int16_t Two = 2; 

int8_t MEM[65536];
    
void main (  )   {       
	AdrIncrimented = Screen_Base;
 	count = zero;
	while (count < length) {        //setts the attribute of the text area to white on black background
		MEM[AdrIncrimented] = zero;
		AdrIncrimented ++;
		MEM[AdrIncrimented] = attribute;
		AdrIncrimented ++;
		count++;
	}
	
	AdrIncrimented = Screen_Base; // setts the text to "HELLO WORLD!"
	MEM[AdrIncrimented] = H;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = E;
    AdrIncrimented += Two;
	MEM[AdrIncrimented] = L;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = O;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = space;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = W;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = O;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = R;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = L;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = D;
 	AdrIncrimented += Two;
	MEM[AdrIncrimented] = exclamation;


	count = zero;               // infinite loop to keep the program not running
	while (count < length) {
		count = count;
	}
}    
    