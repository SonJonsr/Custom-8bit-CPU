// Header file for input output functions
#include <stdint.h>
#include <stdio.h>

#define zero 0
#define one 1
#define two 2
#define three 3
#define four 4
#define six 6
#define eight 8
#define zerof 0x000F
#define fzero 0x00F0

#define game_on 1
#define game_off 0

#define color_silver 0x01
#define color_black 0x03
#define color_red 0x04
#define color_lime 0x08
#define color_green 0x09

#define ascii_block 0xFF

#define right 0x01
#define left 0xFF
#define down 0x10
#define up 0xF0

#define kb_ascii 0x0000
#define kb_info 0x0001

#define screen_size 0x12c0
#define screen_width 0x00A0
#define screen_height 0x001E

#define board_size 0x00FF
#define board_height 0x000F
#define board_width 0x000F
#define board_location 0x0490

#define snake_tail_start 0x0072
#define snake_start_pos_one 0x0073
#define snake_start_pos_two 0x0074
#define snake_start_pos_three 0x0075
#define snake_start_val_one 0x0001
#define snake_start_val_two 0x0002
#define snake_start_val_three 0x0003

#define apple_start 0x007A

int8_t Screen[screen_size];
int8_t Keyboard[2];
int8_t Random;
int8_t Time;

int16_t i;
int16_t j;

int16_t temp;

// GAME STATUS
int8_t game_running;

// SNAKE
int16_t snake_tail;
int16_t snake_head;
int16_t snake_head_screen;
int16_t snake_head_next;
int16_t snake_head_next_screen;
int8_t snake_counter_head;
int8_t snake_counter_tail;
int8_t snake_head_next_color;

// APPLE
int16_t apple;
int8_t apple_next_color;

// DIRECTION
int16_t direction;
int8_t movement[4];

// KEYBOARD VARIABLES
int8_t keyboard_input;
int8_t keyboard_info;
int8_t keyboard_mask;

// BOARD VARIABLES
int16_t board_top_l;
int16_t board_top_r;
int16_t board_bot_l;
int16_t board_bot_r;

// BORDER VARIABLES
int8_t game_board[256];
int16_t border_top_l;
int16_t border_top_r;
int16_t border_bot_l;
int16_t border_bot_r;
int16_t border_width;
int16_t border_height;
int16_t border_paralell_h;

int16_t cursor;
int16_t cursor_x;
int16_t cursor_y;
int16_t odd_even_check;

int main(void) {
snake:
  // clears screen
  for (i = zero; i < screen_size; i++) {
    odd_even_check = i & one;
    if (odd_even_check) {
      Screen[i] = ascii_block;
    } else {
      Screen[i] = color_black;
    }
  }

  // Setup of movement-array
  movement[zero] = right;
  movement[one] = left;
  movement[two] = down;
  movement[three] = up;

  // SETS BOARD LIMITS
  board_top_l = board_location;
  board_top_r = board_width * four;
  board_top_r += board_top_l;
  board_bot_l = screen_width * board_height;
  board_bot_l += board_top_l;
  board_bot_r = board_width * four;
  board_bot_r += board_bot_l;

  // SETS BORDER LIMITS
  border_width = board_width + two;
  border_height = board_height + two;
  border_top_l = board_top_l - screen_width;
  border_top_l -= four;
  border_top_r = border_width * four;
  border_top_r += border_top_l;
  border_bot_l = border_height * screen_width;
  border_bot_l += border_top_l;
  border_bot_r = border_width * four;
  border_bot_r += border_bot_l;

  // for (i = zero; i < border_height; i++) {
  //   cursor = i * screen_width;
  //   cursor += border_start_location;
  //   for (j = i; j < border_width; j++) {
  //     cursor += 4 * j;
  //     Screen[cursor] = color_silver;
  //     cursor++;
  //     cursor++;
  //     Screen[cursor] = color_silver;
  //     if (i != 0) {
  //       j = border_width - 2;
  //     }
  //     if (i != border_height - 1) {
  //       j = border_width - 2;
  //     }
  //   }
  // }

  border_paralell_h = screen_size * border_height;
  for (i = border_top_l; i <= border_top_r; i += two) {
    i++;
    Screen[i] = color_silver;
    cursor = i + two;
    Screen[cursor] = color_silver;
    cursor = i + border_paralell_h;
    Screen[cursor] = color_silver;
    cursor++;
    cursor++;
    Screen[cursor] = color_silver;
  }

  for (i = border_top_l; i <= border_bot_l; i += screen_width) {
    i++;
    Screen[i] = color_silver;
    cursor = i + two;
    Screen[cursor] = color_silver;
    cursor = i + border_width;
    Screen[cursor] = color_silver;
    cursor++;
    cursor++;
    Screen[cursor] = color_silver;
  }

  // Starting snake body
  game_board[snake_start_pos_one] = snake_start_val_one;
  game_board[snake_start_pos_two] = snake_start_val_two;
  game_board[snake_start_pos_three] = snake_start_val_three;

  // Draws the snake
  // Finds the right address
  cursor_x = snake_start_val_one & zerof;
  cursor_x *= four;
  cursor_y = snake_start_val_one & fzero;
  cursor_y >>= four;
  cursor = cursor_y * screen_width;
  cursor += cursor_x;
  cursor += board_top_l;
  cursor++;
  // Draws the body
  for (i = zero; i < four; i += two) {
    cursor += i;
    Screen[cursor] = color_lime;
    cursor++;
    cursor++;
    Screen[cursor] = color_lime;
  }
  // Draws the head
  cursor++;
  cursor++;
  Screen[cursor] = color_green;
  cursor++;
  cursor++;
  Screen[cursor] = color_green;

  // Start direction
  direction = right;

  // Start location of the APPLE
  apple = apple_start;

  // Start snake values
  snake_counter_head = three;
  snake_counter_tail = one;
  snake_head = snake_tail_start;
  snake_tail = snake_start_pos_one;
  snake_tail--;

  game_running = game_on;

  Keyboard[kb_info] = one; // Deletes ASCII fifo

// GAME LOOP
game_loop:
  keyboard_input = Keyboard[kb_ascii]; // Reads from ASCII fifo

  keyboard_mask = keyboard_input + direction;
  if (keyboard_mask != zero) {
    cursor_y = snake_head & fzero;
    cursor_x = snake_head & zerof;

    if (keyboard_input == right) {
      direction = right;
      if (cursor_x == zerof) {
        goto game_over;
      }
    }
    if (keyboard_input == left) {
      direction = left;
      if (cursor_x == zero) {
        goto game_over;
      }
    }
    if (keyboard_input == down) {
      direction = down;
      if (cursor_y == fzero) {
        goto game_over;
      }
    }
    if (keyboard_input == up) {
      direction = up;
      if (cursor_y == zero) {
        goto game_over;
      }
    }
  }

  snake_head_next = snake_head + direction;

  cursor_x = snake_head_next & zerof;
  cursor_x *= four;
  cursor_y = snake_head_next & fzero;
  cursor_y >>= four;
  cursor = cursor_y;
  cursor *= screen_width;
  cursor += board_top_l;
  cursor += cursor_x + one;
  snake_head_next_screen = cursor;
  snake_head_next_color = Screen[cursor];

  if (snake_head_next_color == color_lime) {
    goto game_over;
  }
  if (snake_head_next_color == color_black) {
    for (i = zero; i < four; i++) {
      cursor = snake_tail;
      cursor += movement[i];
      temp = game_board[cursor];
      if (temp == snake_counter_tail) {
        snake_tail = cursor;
      }
    }
    snake_counter_tail++;

    cursor_x = snake_tail & zerof;
    cursor_x *= four;
    cursor_y = snake_tail & fzero;
    cursor_y >>= four;
    cursor = cursor_y;
    cursor *= screen_width;
    cursor += board_top_l;
    cursor += cursor_x + one;

    Screen[cursor] = color_black;
    cursor++;
    cursor++;
    Screen[cursor] = color_black;
  }
  if (snake_head_next_color == color_red) {
    apple_next_color = color_green;
    i = zero;
    while (apple_next_color != color_black) {
      if (i < three) {
        apple = Random;
        i++;
      } else {
        apple = snake_tail;
      }
      cursor_x = apple & zerof;
      cursor_x *= four;
      cursor_y = apple & fzero;
      cursor_y >>= four;
      cursor = cursor_y;
      cursor *= screen_width;
      cursor += board_top_l;
      cursor += cursor_x + one;
      apple_next_color = Screen[cursor];
    }
    Screen[cursor] = color_red;
    cursor++;
    cursor++;
    Screen[cursor] = color_red;
  }

  cursor_x = snake_head & zerof;
  cursor_x *= four;
  cursor_y = snake_head & fzero;
  cursor_y >>= four;
  cursor = cursor_y;
  cursor *= screen_width;
  cursor += board_top_l;
  cursor += cursor_x + one;

  Screen[cursor] = color_lime;
  cursor++;
  cursor++;
  Screen[cursor] = color_lime;

  Screen[snake_head_next_screen] = color_green;
  snake_head_next_screen++;
  snake_head_next_screen++;
  Screen[snake_head_next_screen] = color_green;

  snake_head = snake_head_next;
  snake_counter_head++;
  game_board[snake_head] = snake_counter_head;

  Keyboard[kb_info] = one; // Deletes ASCII fifo

  // STOPS THE GAME IF CONDITION IS MET
  if (game_running) {
    goto game_loop;
  }
  // GAME OVER
game_over:

  return zero;
}
