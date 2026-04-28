#include <stdint.h>
#include <stdio.h>

//#define l_l 5
#define g -4
#define r 2
#define h 30
//#define s 2000

//8bit values:
int8_t l = 2; // some text
int8_t m = 30;
int8_t n = 0;

//16bit values:
int16_t x=100; // some text
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
  y = y << r;
  y = y >> m;
  z=g;
  //MEM[m] = g;
  l = m;
  l = !m;
  y = y << l;
  y = y >> r;
  y = l;
  y = !l;
  l = !y;
  if (l == m) {
    z += x;
	if (l != n) {
	    if (n > m) {
	}
	if (m < l) {
	    l++;
	}
    }
    //l = m && n;
    //l = m ^ n;
    //l = m || n;
  }
}
