#include <stdint.h>
#include <stdio.h>

//#define l_l 5
#define g -4
#define r 2
#define h 30
//#define s 2000
//int8_t l[5];
//int8_t l2[10] ;
//int8_t listen[l_l];

//8bit values:
int8_t l = 2; // some text
int8_t m = 30;
int8_t n = 0;
char c = 'a';
//16bit values:
int16_t x= 0x100; // some text
int16_t y = 25;
int16_t z = -10;

//int16_t lang = 8000;

void main() {  
  z = x + y;
  z+=y;
  x = y - z;
  
  x -= z;
  y++;
  x--;
  z--;
  y = y << l;
  y = y >> r;
  y = y << r;
  y = y >> m;
  z=g;
  n =MEM[x];
  MEM[x]= m;
  MEM[adr] = m;
  l = MEM[adr];  

  if (z == x) {
  z += x;
  }
}
