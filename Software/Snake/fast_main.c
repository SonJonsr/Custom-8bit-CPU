// Header file for input output functions
#include <stdint.h>
#include <stdio.h>

#define zero 0x0000
#define one 0x0001
#define two 0x0002
#define three 0x0003
#define four 0x0004
#define six 0x0006
#define eight 0x0008
#define hex_ten 0x0010
#define hex_fe 0x00FE
#define hex_ff 0x00FF
#define hex_hundred 0x0100
#define zerof 0x000F
#define fzero 0x00F0

#define G 0x47
#define A 0x41
#define M 0x4D
#define E 0x45
#define O 0x4F
#define V 0x56
#define R 0x52

#define game_on 1
#define game_off 0

#define color_silver 0x01
#define color_black 0x03
#define color_red 0x04
#define color_lime 0x08
#define color_green 0x09

#define ascii_block 0xFF

#define right 0x0001
#define left 0xFFFF
#define down 0x00A0
#define up 0xFF60
#define kb_right 0x01
#define kb_left 0xFF
#define kb_down 0x10
#define kb_up 0xF0

#define kb_ascii 0x0000
#define kb_info 0x0001

#define screen_size 0x12c0
#define screen_width 0x00A0
#define screen_height 0x001E

#define board_size 0x00FF
#define board_height 0x000F
#define board_width 0x000F
#define board_location 0x0490

#define snake_start 0x0073

#define apple_start 0x007A

int8_t Screen[screen_size];
int8_t Keyboard[2];
int8_t Random;
int8_t Time;

int16_t i;

// GAME STATUS
int8_t game_running;

// SNAKE
int16_t snake[256];
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
int16_t movement[4];

// KEYBOARD VARIABLES
int8_t keyboard_input;
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

int16_t cursor;
int16_t cursor_x;
int16_t cursor_y;
int16_t odd_even_check;

int main(void) {
snake_game:
  // clears screen
  for (i = zero; i < screen_size; i++) {
    odd_even_check = i & one;
    if (odd_even_check) {
      Screen[i] = ascii_block;
    } else {
      Screen[i] = color_black;
    }
  }

  // SETS BOARD LIMITS
  board_top_l = board_location;

  // SETS BORDER LIMITS
  border_width = board_width + two;
  border_height = board_height + two;
  border_top_l = board_top_l - screen_width;
  border_top_l -= four;
  border_top_r = border_width;
  border_top_r <<= two;
  border_top_r += border_top_l;
  border_bot_l = screen_width;
  border_bot_l <<= four;
  border_bot_l++;
  border_bot_l++;
  border_bot_l += border_top_l;

  border_paralell_h = screen_width;
  border_paralell_h <<= four;
  border_paralell_h++;
  border_paralell_h++;
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

  // Draws the snake
  // Finds the right address
  cursor_x = snake_start & zerof;
  cursor_x <<= two;
  cursor_y = snake_start & fzero;
  cursor_y >>= four;
  cursor = cursor_y * screen_width;
  cursor += cursor_x;
  cursor += board_top_l;
  cursor++;
  // Draws the body
  for (i = zero; i < two; i++) {
    snake[i] = cursor;
    Screen[cursor] = color_lime;
    cursor++;
    cursor++;
    Screen[cursor] = color_lime;
    cursor++;
    cursor++;
  }
  // Draws the head
  snake[two] = cursor;
  Screen[cursor] = color_green;
  cursor++;
  cursor++;
  Screen[cursor] = color_green;

  cursor += hex_ten;
  Screen[cursor] = color_red;
  cursor++;
  cursor++;
  Screen[cursor] = color_red;

  // Start direction
  direction = right;

  // Start snake values
  snake_counter = two;
  snake_head = two;
  snake_tail = hex_ff;

  game_running = game_on;

  Keyboard[kb_info] = one; // Deletes ASCII fifo

start_game:
  keyboard_input = Keyboard[kb_ascii];
  if (keyboard_input == kb_right) {
    goto game_loop;
  }
  goto start_game;

// GAME LOOP
game_loop:
  keyboard_input = Keyboard[kb_ascii]; // Reads from ASCII fifo

  keyboard_mask = keyboard_input + direction;
  if (keyboard_mask != zero) {
    if (keyboard_input == kb_right) {
      direction = right;
    }
    if (keyboard_input == kb_left) {
      direction = left;
    }
    if (keyboard_input == kb_down) {
      direction = down;
    }
    if (keyboard_input == kb_up) {
      direction = up;
    }
  }
  snake_head_next = snake[snake_head];
  snake_head_next += direction;

  snake_head_next_color = Screen[snake_head_next];

  if (snake_head_next_color == color_silver) {
    goto game_over;
  }
  if (snake_head_next_color == color_lime) {
    goto game_over;
  }
  if (snake_head_next_color == color_black) {
    snake_tail++;
    if (snake_tail == hex_hundred) {
      snake_tail = zero;
    }
    cursor = snake[snake_tail];
    Screen[cursor] = color_black;
    cursor++;
    cursor++;
    Screen[cursor] = color_black;
  }
  if (snake_head_next_color == color_red) {
    snake_counter++;
    if (snake_counter == hex_ff) {
      goto game_over;
    }
    apple_next_color = color_green;
    i = zero;
    while (apple_next_color != color_black) {
      if (i < three) {
        apple = Random;
        i++;
        cursor_x = apple & zerof;
        cursor_x <<= two;
        cursor_y = apple & fzero;
        cursor_y >>= four;
        cursor = cursor_y;
        cursor *= screen_width;
        cursor += board_top_l;
        cursor += cursor_x;
        cursor++;
      } else {
        cursor = snake[snake_tail];
      }
      apple_next_color = Screen[cursor];
    }
    Screen[cursor] = color_red;
    cursor++;
    cursor++;
    Screen[cursor] = color_red;
  }

  cursor = snake[snake_head];

  Screen[cursor] = color_lime;
  cursor++;
  cursor++;
  Screen[cursor] = color_lime;

  snake_head++;
  if (snake_head == hex_ff) {
    snake_head = zero;
  }
  snake[snake_head] = snake_head_next;

  Screen[snake_head_next] = color_green;
  snake_head_next++;
  snake_head_next++;
  Screen[snake_head_next] = color_green;

  Keyboard[kb_info] = one; // Deletes ASCII fifo

  goto game_loop;

  // GAME OVER
game_over:
  cursor_x = six;
  cursor_x++;
  cursor_x <<= two;
  cursor_y = six;
  cursor_y++;
  cursor_y *= screen_width;
  cursor = board_top_l;
  cursor += cursor_y;
  cursor += cursor_x;

  Screen[cursor] = G;
  cursor++;
  Screen[cursor] = color_red;
  cursor++;
  Screen[cursor] = A;
  cursor++;
  Screen[cursor] = color_red;
  cursor++;
  Screen[cursor] = M;
  cursor++;
  Screen[cursor] = color_red;
  cursor++;
  Screen[cursor] = E;
  cursor++;
  Screen[cursor] = color_red;
  cursor += screen_width;
  Screen[cursor] = color_red;
  cursor--;
  Screen[cursor] = R;
  cursor--;
  Screen[cursor] = color_red;
  cursor--;
  Screen[cursor] = E;
  cursor--;
  Screen[cursor] = color_red;
  cursor--;
  Screen[cursor] = V;
  cursor--;
  Screen[cursor] = color_red;
  cursor--;
  Screen[cursor] = O;

wait_for_key:
  keyboard_input = Keyboard[kb_ascii];
  if (keyboard_input == A) {
    goto snake_game;
  }
  goto wait_for_key;

  return zero;
}
