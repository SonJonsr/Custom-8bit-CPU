// Header file for input output functions
#include <stdint.h>
#include <stdio.h>

#define game_on 1
#define game_off 0

#define right 0x0001
#define left 0x00FF
#define down 0x0010
#define up 0x00F0

#define ascii 0x0000
#define info 0x0001

#define board_size 0x00FF

#define snake_start_pos_one 0x0072
#define snake_start_pos_two 0x0073
#define snake_start_pos_three 0x0074
#define snake_start_val_one 0x0001
#define snake_start_val_two 0x0002
#define snake_start_val_three 0x0003

#define apple_start 0x007A

int8_t head_pointer;
int8_t end_pointer;
int8_t game_board[board_size];
int8_t apple;
int8_t game_running;
int16_t direction;
int8_t keyboard_input;
int8_t keyboard_info;
int8_t keyboard_mask;

int16_t cursor;
int8_t cursor_x;
int8_t cursor_y;

int main(void) {

snake:

// RESTART THE GAME
game_restart:
  // Starting snake body
  game_board[snake_start_pos_one] = snake_start_val_one;
  // Screen[]
  game_board[snake_start_pos_two] = snake_start_val_two;
  game_board[snake_start_pos_three] = snake_start_val_three;

  // Snake start facing direction
  //    0x01 => right + (down = 0x11) (up = 0xf1) (right = 0x02)
  //                            d= +17      d= -15         d=  +2
  //    0xff => left + (down = 0x0f) (up = 0xef) (left = 0xfe)
  //                           d= +15      d= -17        d= -2
  //    0x10 => down + (right = 0x11) (left = 0x0f) (down = 0x20)
  //                           d= +17         d= +15      d= +32
  //    0xf0 => up + (right = 0xf1) (left = 0xef) (up = 0xe0)
  //                          d= -15        d= -17      d= -32

  direction = right;

  // Start location of the APPLE
  apple = apple_start;

  head_pointer = snake_start_pos_three;
  end_pointer = snake_start_pos_one;

  game_running = game_on;

// GAME LOOP
game_loop:

  // SWAP TO READING FROM PS/2_ASCII_FIFO_REGISTER WHEN DONE TESTING!!!
  // keyboard_input = Keyboard[ascii]; // Reads from ASCII fifo
  // Keyboard[info] = 1; // Deletes ASCII fifo

  keyboard_mask = keyboard_input + direction;
  if (keyboard_mask != 0) {
    if (keyboard_input == right) {
      direction = right;
    }
    if (keyboard_input == left) {
      direction = left;
    }
    if (keyboard_input == down) {
      direction = down;
    }
    if (keyboard_input == up) {
      direction = up;
    }
  }

  // STOPS THE GAME IF CONDITION IS MET
  if (game_running) {
    goto game_loop;
  }
  // GAME OVER

  return 0;
}
