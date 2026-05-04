#include <stdint.h>
#include <stdio.h>

// ADDRESSES IN MEMORY
#define adr_main_display 0xE000
#define adr_info_display 0xEF00
#define adr_keyboard_ascii 0xF2C1
#define adr_keyboard_info 0xF2C2
#define adr_random 0xF2C3
#define adr_timer_millis_ll 0xF2C4
#define adr_timer_millis_hh 0xF2C5
#define adr_eeprom_start 0xF2C6
#define adr_eeprom_end 0xF3C5

// SCREEN SIZE
#define screen_size 0x0080

// COLORS
#define white 32
int8_t MEM[0xFFFF]; 

// CURSOR VARIABLES
int16_t cursor = 0xE000;
int8_t keyboard_info = 0x00;
int8_t keyboard_ascii = 0x00;

int8_t clear = 0;
int8_t one = 1;

void main() {
  keyboard_info = clear;

  while (keyboard_info < one) {
    keyboard_info = MEM[adr_keyboard_info];
  }

  keyboard_ascii = MEM[adr_keyboard_ascii];
  MEM[cursor] = keyboard_ascii;
  cursor++;
  MEM[cursor] = white;
  cursor++;
}
