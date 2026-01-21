#include <stdint.h>
#include <stdio.h>

//#define l_l 5
#define g -4
//#define s 2000
//int8_t l[5];
//int8_t l2[10] ;
//int8_t listen[l_l];

//8bit values:
int8_t l = 100; // some text
int8_t m = -100;
int8_t n = 0;

//16bit values:
int16_t x=100; // some text
int16_t y = 25;
int16_t z = -10;

//int16_t lang = 8000;

void main() {  
  z = x + y;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  z+=y;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  x = y - z;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  x -= z;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  y++;
  
  x--;
  
  z--;
  
  z=g;
  
  z*=g;
  
  z /= g;
  
}
