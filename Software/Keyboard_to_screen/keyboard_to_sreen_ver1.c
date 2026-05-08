#include <stdint.h>
#include <stdio.h>

// int8_t MEM[0xFFFF];
// // ADDRESSES IN MEMORY
// #define adr_main_display 0xE000;
// #define adr_info_display 0xEF00;
// #define adr_keyboard_ascii 0xF2C1;
// #define adr_keyboard_info 0xF2C2;
// #define adr_random 0xF2C3;
// #define adr_timer_millis_ll 0xF2C4;
// #define adr_timer_millis_hh 0xF2C5;
// #define adr_eeprom_start 0xF2C6;
// #define adr_eeprom_end 0xF3C5;
//
// // SCREEN SIZE
// #define screen_size 0x0080;
//
// // COLORS
// #define white 32;

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

// CURSOR VARIABLES
int16_t cursor = 0xE000;
int16_t cursor_x = 0;
int16_t cursor_y = 0;

int8_t keyboard_info = 0x00;
int8_t keyboard_ascii = 0x00;

int8_t zero = 0;
int8_t one = 1;

void main() {
  keyboard_info = MEM[adr_keyboard_info];

  while (keyboard_info == zero) {
    keyboard_info = MEM[adr_keyboard_info];
  }

  keyboard_ascii = MEM[adr_keyboard_ascii];
  MEM[cursor] = keyboard_ascii;
  cursor++;
  MEM[cursor] = white;
  cursor++;
}
