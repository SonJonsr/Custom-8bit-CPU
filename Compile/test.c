#include <stdint.h>
#include <stdio.h>

//#define l_l 5
//#define g 4
//#define s 2000
//int8_t l[5];
//int8_t l2[10] ;
//int8_t listen[l_l];

//8bit values:
int8_t x = 1000; // some text
int8_t y = 3000;
int8_t z = 0;

//int16_t lang = 8000;

void main() {  
  z = x + y;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  z += y;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  x = y - z;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  x -= z;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  y ++ ;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  x --;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  z --;
  printf("%d = %x , %d = %x , %d = %x\n", x, x, y, y, z, z);
  //z += g;
}
