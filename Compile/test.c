#include <stdint.h>    
#include <stdio.h>    
int8_t MEM[65536];

int8_t x = 0x11;
int8_t y = 0x22;

int16_t clear = 0x0000;
int8_t go_to_delete_snake_head = 0;
    
void main (  )   {       
	x = y;
	go_to_delete_snake_head = clear;
}    
    