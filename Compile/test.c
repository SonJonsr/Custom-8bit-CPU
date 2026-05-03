#include <stdint.h>    
#include <stdio.h>    
int8_t MEM[65536];

int8_t x = 0;
int8_t y = 10;
int8_t z = 55;
    
void main (  )   {       
	x = y && z;
	x = y && z;
	x += y;
halt:
	goto halt;
}    
    