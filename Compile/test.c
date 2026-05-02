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
#define langtord 0xA0A7

 
 

int8_t temp = 0;
 int8_t length = 15;
 int8_t count = 0;
 int8_t zero = 0;
 int8_t attribute = 32; // should be white text 

 int16_t AdrStart = 0x8000; // some text
 int16_t AdrIncrimented = 0; // some text
 int16_t Two = 2; // some text
    
 void main (  )   {       
	AdrIncrimented = AdrStart;
 	count = zero;
	while (count < length) {
		MEM[AdrIncrimented] = zero;
		AdrIncrimented ++;
		MEM[AdrIncrimented] = attribute;
		AdrIncrimented ++;
		count++;
	}
	
	AdrIncrimented = AdrStart;
	//AdrIncrimented ++;
start_message:
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
	goto start_message;
	count = zero;
	while (count < length) {
		count = count;
	}
  }    
    