// Header file for input output functions
#include <stdint.h>
#include <stdio.h>

#define zero 0x0000
#define one 0x0001
#define two 0x0002
#define three 0x0003
#define four 0x0004
#define six 0x0006
#define seven 0x0007
#define eight 0x0008
#define hex_ten 0x0010
#define oofe 0x00FE
#define ooff 0x00FF
#define hex_hundred 0x0100
#define oooF 0x000F
#define ooFo 0x00F0
#define hex_eight_thousand 0x8000

#define game_increment 0x00C8

#define A 0x41
#define C 0x43
#define E 0x45
#define G 0x47
#define H 0x48
#define I 0x49
#define M 0x4D
#define O 0x4F
#define R 0x52
#define S 0x53
#define V 0x56

#define space 0x20
#define escape 0x1B

#define ascii_num 0x30

#define game_on 1
#define game_off 0

#define color_silver 0x01
#define color_black 0x03
#define color_red 0x04
#define color_lime 0x08
#define color_green 0x09

#define ascii_block 0xFF

#define right 0x0004
#define left 0xFFFC
#define down 0x0080
#define up 0xFF80
#define kb_right 0x01
#define kb_left 0xFF
#define kb_down 0x10
#define kb_up 0xF0

#define kb_ascii 0x0000
#define kb_info 0x0001

#define screen_size 0x0F00
#define screen_width 0x0080
#define screen_height 0x001E

#define board_size 0x0100
#define board_height 0x0010
#define board_width 0x0010
#define board_location 0x0490

#define snake_start 0x0073

#define apple_start 0x007A

// Functions
int8_t go_to_snake_start;
int8_t go_to_apple;
int8_t go_to_high_score;
int8_t go_to_score_apple;
int8_t go_to_bcd_byte_div_ten;
int8_t go_to_bcd_byte_draw;
int8_t go_to_bcd_byte_done;

int8_t Screen[screen_size];
int8_t Keyboard[two];
int8_t Eeprom[hex_hundred];
int8_t Random;
int16_t Millis;

int16_t i;
int16_t j;

// Div by ten variables
int16_t num;
int16_t num_temp;
int16_t temp;
int16_t qou;
int16_t div_ten;
int16_t bcd;

// GAME STATUS
int8_t game_running;
int16_t millis_new;
int16_t millis_old;
int16_t millis_goal;

// SNAKE
int16_t snake[board_size];
int16_t snake_tail;
int16_t snake_head;
int16_t snake_head_next;
int16_t snake_counter;
int8_t snake_head_next_color;

// APPLE
int16_t apple;
int8_t apple_next_color;

// DIRECTION
int16_t direction;

// KEYBOARD VARIABLES
int8_t keyboard_input;
int8_t keyboard_input_last;
int8_t keyboard_mask;

// BOARD VARIABLES
int16_t board_top_l;
int16_t board_top_r;
int16_t board_bot_l;
int16_t board_bot_r;

// BORDER VARIABLES
int16_t border_top_l;
int16_t border_top_r;
int16_t border_bot_l;
int16_t border_bot_r;
int16_t border_width;
int16_t border_height;
int16_t border_paralell_h;
int16_t border_paralell_v;

// CURSOR VARIABLES
int16_t cursor;
int16_t cursor_x;
int16_t cursor_y;
int16_t odd_check;

int16_t cursor_y_last_command;

int main(void) {
wozniak:
wait_for_char:
  keyboard_input = Keyboard[kb_ascii];
  if (keyboard_input != zero) {
    goto new_char;
  }
  goto wait_for_char;
new_char:
enter:
  // READ
  // WRTE
  // SNEK

move_screen_up:

  //--------------------FOR I LOOP START--------------------//
  i = zero;
move_screen_up_i:

  cursor_y = i;
  cursor_y += cursor_y_last_command;
  cursor_y <<= seven;

  //-----------FOR J LOOP START-----------//
  j = zero;
move_screen_up_j:

  cursor_x = j;

  cursor = cursor_y;
  cursor += cursor_x;
  Screen[cursor] = space;

  j++;
  j++;
  if (j > screen_width) {
    goto move_screen_up_j;
  }
  //------------FOR J LOOP END------------//

  i++;
  if (i < cursor_y_last_command) {
    goto move_screen_up_i;
  }
  //---------------------FOR I LOOP END---------------------//

  return 0;
}
