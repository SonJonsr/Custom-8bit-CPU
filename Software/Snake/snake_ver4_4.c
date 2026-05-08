
// Header file for input output functions
#include <stdint.h>
#include <stdio.h>

int16_t clear = 0x0000;
int8_t MEM[65536];

int16_t adr_main_display = 0xE000;
int16_t adr_info_display = 0xEF00;
int16_t adr_keyboard_ascii = 0xF2C1;
int16_t adr_keyboard_info = 0xF2C2;
int16_t adr_random = 0xF2C3;
int16_t adr_timer_millis_ll = 0xF2C4;
int16_t adr_timer_millis_hh = 0xF2C5;
int16_t adr_eeprom_start = 0xF2C6;
int16_t adr_eeprom_end = 0xF3C5;

#define def_zero 0x00;
#define def_one 0x01;
#define def_two 0x02;
#define def_three 0x03;
#define def_seven 0x07;
#define def_eight 0x08;
#define def_1o 0x10;
#define def_of 0x0f;

int8_t temp_eight_bit = 0x00;
int16_t temp = 0x0000;

int16_t zero = 0x0000;
int16_t one = 0x0001;
int16_t two = 0x0002;
int16_t three = 0x0003;
int16_t four = 0x0004;
int16_t six = 0x0006;
int16_t seven = 0x0007;
int16_t eight = 0x0008;

int16_t nine = 9;
int16_t ten = 10;
int16_t ninety_nine = 99;
int16_t hundred = 100;
int16_t hex_ten = 0x0010;
int16_t hex_twelve = 0x0012;
int16_t oofe = 0x00FE;
int16_t ooff = 0x00FF;
int16_t hex_hundred = 0x0100;
int16_t oooF = 0x000F;
int16_t ooFo = 0x00F0;
int16_t hex_eight_thousand = 0x8000;

int16_t game_increment = 0x0010;

int8_t A = 0x41;
int8_t C = 0x43;
int8_t E = 0x45;
int8_t G = 0x47;
int8_t H = 0x48;
int8_t I = 0x49;
int8_t M = 0x4D;
int8_t O = 0x4F;
int8_t R = 0x52;
int8_t S = 0x53;
int8_t V = 0x56;
int8_t colon = 0x3A;

int8_t kb_right = 0x01; // D
int8_t kb_left = 0xFF;  // A
int8_t kb_down = 0x10;  // S
int8_t kb_up = 0xF0;    // W

int8_t bcd_ones = 0x00;
int8_t bcd_tens = 0x00;
int8_t bcd_hundreds = 0x00;
int8_t bcd_src = 0x00;

// int8_t kb_right = 0x01;
// int8_t kb_left = 0xFF;
// int8_t kb_down = 0x10;
// int8_t kb_up = 0xF0;

int8_t space = 0x20;
int8_t escape = 0x1B;

int8_t ascii_num = 0x30;

int8_t game_on = 1;
int8_t game_off = 0;

int8_t color_silver = 0x01;
int8_t color_black = 0x03;
int8_t color_red = 0x04;
int8_t color_lime = 0x08;
int8_t color_green = 0x09;

int8_t ascii_block = 0xFF;

int8_t right = 0x01;
int8_t left = 0xFF;
int8_t down = 0x10;
int8_t up = 0xF0;

int16_t kb_ascii = 0x0000;
int16_t kb_info = 0x0001;

int16_t screen_size = 0x0F00;
int16_t screen_width = 0x0080;
int16_t screen_height = 0x001E;

int16_t board_size = 0x0100;
int16_t board_height = 0x0010;
int16_t board_width = 0x0010;
int16_t board_location = 0x03A0;
int16_t board_location_stop = 0x0B60;

int8_t snake_start = 0x73;

int16_t apple_start = 0x007A;

int8_t high_score = 0x00;
int16_t high_score_16_bit = 0x0000;
int16_t high_score_mem_loc = 0xF300;

int16_t score_text_location = 0x02B8;
int16_t score_num_location = 0x025E;

int8_t score = 0x00;

// Functions
int8_t go_to_bcd_func = 0x00;
int8_t go_to_score_draw = 0x00;
int8_t go_to_high_score_draw = 0x00;
int8_t go_to_snake_start = 0x00;
int8_t go_to_apple = 0x00;
int8_t go_to_apple_failed_gen = 0x00;
int8_t go_to_score_apple = 0x00;
int8_t go_to_next_head_coord = 0x00;
int8_t go_to_delete_snake_tail = 0x00;
int8_t go_to_delete_snake_head = 0x00;

// int8_t Screen[screen_size];
// int8_t Keyboard[two];
// int8_t Eeprom[hex_hundred];
// int8_t Random;
// int16_t Millis;

int16_t i = 0x00;
int16_t j = 0x00;

// GAME STATUS
int8_t game_running = 0x00;
int16_t millis_new = 0x00;
int16_t millis_old = 0x00;
int16_t millis_goal = 0x00;

// SNAKE
// int16_t snake[board_size];
int16_t snake_array = 0xF400;
int16_t snake_array_max = 0xF500;
int16_t snake_ptr_tail = 0xF4FF;
int16_t snake_ptr_head = 0x0000;
int16_t snake_screen_head = 0x0000;
int16_t snake_screen_head_next = 0x0000;
int8_t snake_board_head = 0x00;
int8_t snake_board_head_next = 0x00;
int16_t snake_counter = 0x0003;
int8_t snake_head_next_color = 0x03;

// APPLE
int8_t apple_next_color = 0x03;

// DIRECTION
int8_t direction = 0x04;

// KEYBOARD VARIABLES
int8_t keyboard_input = 0x00;
int8_t keyboard_input_last = 0x00;
int8_t keyboard_input_illegal = 0x00;
int8_t keyboard_mask = 0x00;

// BOARD VARIABLES
int16_t board_top_l = 0x0000;
int16_t board_top_r = 0x0000;
int16_t board_bot_l = 0x0000;
int16_t board_bot_r = 0x0000;

// BORDER VARIABLES
int16_t border_top_l = 0x0000;
int16_t border_top_r = 0x0000;
int16_t border_bot_l = 0x0000;
int16_t border_bot_r = 0x0000;
int16_t border_width = 0x0000;
int16_t border_width_ascii = 0x0000;
int16_t border_height = 0x0000;
int16_t border_paralell_h = 0x0000;
int16_t border_paralell_v = 0x0000;

// CURSOR VARIABLES
int16_t cursor = 0x0000;
int16_t cursor_x = 0x0000;
int16_t cursor_y = 0x0000;
int16_t odd_check = 0x0000;

void main() {
snake_game:

  // SETS BOARD LIMITS
  board_top_l = board_location;
  board_bot_r = board_location_stop + adr_main_display;

  // SETS BORDER LIMITS
  border_width = board_width;
  border_width_ascii = border_width << def_two;
  border_height = board_height;

  border_top_l = board_location;
  // border_top_l = board_location - screen_width;
  // border_top_l -= four;

  border_top_r = border_width << def_two;

  border_bot_l = border_height << def_seven;
  border_bot_l += border_top_l;

  border_paralell_h = border_height;
  border_paralell_h--;
  border_paralell_h = border_paralell_h << def_seven;

  border_paralell_v = border_width;
  border_paralell_v--;
  border_paralell_v = border_paralell_v << def_two;

  // clears screen
  i = clear;
clears_screen_i:
  temp = i << def_seven;
  temp += border_top_l;
  temp += adr_main_display;

  j = clear;
clears_screen_j:
  cursor = j + temp;
  odd_check = cursor;
  odd_check = odd_check && one;
  if (odd_check != one) {
    MEM[cursor] = ascii_block;
    goto else_attr;
  }
  MEM[cursor] = color_black;
else_attr:

  j++;
  if (j < border_width_ascii) {
    goto clears_screen_j;
  }
  i++;
  if (i < border_height) {
    goto clears_screen_i;
  }

  i = clear;
border_horizontal:
  cursor = i << def_two;
  cursor += border_top_l;
  cursor++;
  cursor += adr_main_display;
  MEM[cursor] = color_silver;
  cursor += two;
  MEM[cursor] = color_silver;
  cursor += border_paralell_h;
  MEM[cursor] = color_silver;
  cursor -= two;
  MEM[cursor] = color_silver;
  i++;
  if (i < border_width) {
    goto border_horizontal;
  }

  i = clear;
border_vertical:
  cursor = i;
  cursor = cursor << def_seven;
  cursor += border_top_l;
  cursor++;
  cursor += adr_main_display;
  MEM[cursor] = color_silver;
  cursor += two;
  MEM[cursor] = color_silver;
  cursor += border_paralell_v;
  MEM[cursor] = color_silver;
  cursor -= two;
  MEM[cursor] = color_silver;
  i++;
  if (i < border_height) {
    goto border_vertical;
  }
  bcd_src = MEM[high_score_mem_loc];
  high_score_16_bit = bcd_src;
  high_score_16_bit = high_score_16_bit && ooff;
  go_to_high_score_draw = def_one;
  goto bcd_func;
high_score_draw:

  cursor = score_text_location + adr_main_display;
  MEM[cursor] = H;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = I;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = G;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = H;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = space;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = S;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = C;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = O;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = R;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = E;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = colon;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;

  temp_eight_bit = ascii_num + bcd_hundreds;

  MEM[cursor] = temp_eight_bit;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;

  temp_eight_bit = ascii_num + bcd_tens;

  MEM[cursor] = temp_eight_bit;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;

  temp_eight_bit = ascii_num + bcd_ones;

  MEM[cursor] = temp_eight_bit;
  cursor++;
  MEM[cursor] = color_red;

  cursor = cursor - screen_width;

  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = ascii_num;
  cursor--;

  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = ascii_num;
  cursor--;

  MEM[cursor] = color_green;
  cursor--;
  snake_counter = def_three;
  MEM[cursor] = ascii_num + snake_counter;

  score_num_location = cursor;

  cursor--;
  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = colon;
  cursor--;
  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = E;
  cursor--;
  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = R;
  cursor--;
  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = O;
  cursor--;
  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = C;
  cursor--;
  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = S;

  //
  // // Draws the Highscore
  // cursor = border_top_r;
  // cursor--;
  // cursor -= screen_width;
  // cursor -= screen_width;
  // temp = MEM[adr_eeprom_start];
  //
  // /|\                          /|\
  //  |   FIX FIX FIX FIX FIX FIX  |
  //  |                            |
  //

  // Draws the snake
  snake_ptr_head = snake_array;
  snake_board_head = snake_start;
  i = clear;
draw_start_body:
  // Finds the right address
  MEM[snake_ptr_head] = snake_board_head;
  cursor = snake_board_head;
  go_to_snake_start = def_one;
  goto byte_coord_to_screen_coord;
cursor_snake_start:

  MEM[cursor] = color_lime;
  cursor += two;
  MEM[cursor] = color_lime;

  snake_ptr_head++;
  snake_board_head++;
  i++;
  if (i < two) {
    goto draw_start_body;
  }

  MEM[snake_ptr_head] = snake_board_head;

  // Draws the head
  cursor += two;
  snake_screen_head = cursor;
  MEM[cursor] = color_green;
  cursor += two;
  MEM[cursor] = color_green;

  // Set tail
  snake_ptr_tail = snake_array - one;
  // Draws the apple
  cursor += hex_twelve;
  MEM[cursor] = color_red;
  cursor += two;
  MEM[cursor] = color_red;

  // Start direction
  direction = right;

  game_running = game_on;

  MEM[adr_keyboard_info] = def_one; // Deletes ASCII fifo

start_game:
  keyboard_input = MEM[adr_keyboard_ascii];
  if (keyboard_input == space) {
    keyboard_input_illegal = kb_left;
    goto game_loop;
  }
  goto start_game;

// GAME LOOP
game_loop:
  //  TIMER IMPLEMENTATION
  //    START THE TIMER
  //
  temp_eight_bit = MEM[adr_timer_millis_hh];
  millis_old = temp_eight_bit;
  millis_old = millis_old << def_eight;
  temp_eight_bit = MEM[adr_timer_millis_ll];
  temp = temp_eight_bit;
  temp = temp && ooff;
  millis_old += temp;
  millis_goal = millis_old + game_increment;

// timer implementation
snake_game_timer:

  temp_eight_bit = MEM[adr_keyboard_info];
  if (temp_eight_bit != def_zero) {
    keyboard_input = MEM[adr_keyboard_ascii];
  }

  temp_eight_bit = MEM[adr_timer_millis_hh];
  millis_new = temp_eight_bit;
  millis_new = millis_new << def_eight;
  temp_eight_bit = MEM[adr_timer_millis_ll];
  temp = temp_eight_bit;
  temp = temp && ooff;
  millis_new += temp;

  // checks for overflow
  if (millis_goal < millis_old) {
    // if overflow the two if statement are or-ed
    if (millis_new > millis_old) {
      goto snake_game_timer;
    }
    if (millis_new < millis_goal) {
      goto snake_game_timer;
    }
    goto timer_else;
  }
  // if not overflow the two if statement are and-ed
  if (millis_new > millis_old) {
    if (millis_new < millis_goal) {
      goto snake_game_timer;
    }
  }
timer_else:

  // This mask is mask checks whether or not the input is opposite of
  // the current direction. The values of the ASCII characters assigned
  // to the arrow keys have been picked out for this purpose.
  // keyboard_mask = keyboard_input + keyboard_input_last;
  if (keyboard_input != keyboard_input_illegal) {
    if (keyboard_input == kb_right) {
      keyboard_input_illegal = kb_left;
      // keyboard_input_last = keyboard_input;
      direction = right;
    }
    if (keyboard_input == kb_left) {
      keyboard_input_illegal = kb_right;
      // keyboard_input_last = keyboard_input;
      direction = left;
    }
    if (keyboard_input == kb_down) {
      keyboard_input_illegal = kb_up;
      // keyboard_input_last = keyboard_input;
      direction = down;
    }
    if (keyboard_input == kb_up) {
      keyboard_input_illegal = kb_down;
      // keyboard_input_last = keyboard_input;
      direction = up;
    }
    // quit game if escape is pressed
    if (keyboard_input == escape) {
      goto game_over;
    }
  }
  // Find coords of next snake head
  snake_board_head_next = MEM[snake_ptr_head];
  temp_eight_bit = snake_board_head_next && def_of;
  if (direction == right) {
    if (temp_eight_bit == def_of) {
      snake_board_head_next -= def_1o;
    }
  }
  if (direction == left) {
    if (temp_eight_bit == def_zero) {
      snake_board_head_next += def_1o;
    }
  }
  snake_board_head_next += direction;

  cursor = snake_board_head_next;
  go_to_next_head_coord = def_one;
  goto byte_coord_to_screen_coord;
next_head_coord:

  snake_screen_head_next = cursor;

  // Find colors of where new head will be drawn
  snake_head_next_color = MEM[snake_screen_head_next];

  // Makes old head part of body
  temp_eight_bit = MEM[snake_ptr_head];
  cursor = temp_eight_bit;
  go_to_delete_snake_head = def_one;
  goto byte_coord_to_screen_coord;
delete_snake_head:
  MEM[cursor] = color_lime;
  cursor += two;
  MEM[cursor] = color_lime;
  // itterates head counter
  snake_ptr_head++;
  if (snake_ptr_head == snake_array_max) {
    snake_ptr_head = snake_array;
  }
  // saves next head coords
  MEM[snake_ptr_head] = snake_board_head_next;
  // Draws head
  MEM[snake_screen_head_next] = color_green;
  snake_screen_head_next += two;
  MEM[snake_screen_head_next] = color_green;

  // Checks what kind of tile the head drew over.
  // color_silver means wall
  if (snake_head_next_color == color_silver) {
    goto game_over;
  }
  // color_lime means snake
  if (snake_head_next_color == color_lime) {
    goto game_over;
  }
  // color_black means empty coord
  if (snake_head_next_color == color_black) {
    snake_ptr_tail++;
    if (snake_ptr_tail == snake_array_max) {
      snake_ptr_tail = snake_array;
    }
    // Deletes the snake behind.
    temp_eight_bit = MEM[snake_ptr_tail];
    cursor = temp_eight_bit;
    go_to_delete_snake_tail = def_one;
    goto byte_coord_to_screen_coord;
  delete_snake_tail:
    MEM[cursor] = color_black;
    cursor += two;
    MEM[cursor] = color_black;
  }
  // color_red means apple coord
  if (snake_head_next_color == color_red) {
    // Scores goes up by one
    snake_counter++;
    //   cursor = border_top_r;
    //   cursor--;
    //   cursor -= screen_width;
    //   num = snake_counter;
    //   go_to_score_apple = one;
    //   goto bcd_byte_draw;
    // bcd_score_apple:

    bcd_src = snake_counter;
    go_to_score_draw = def_one;
    goto bcd_func;
  score_draw:
    cursor = score_num_location;
    temp_eight_bit = bcd_hundreds + ascii_num;
    MEM[cursor] = temp_eight_bit;
    cursor = cursor + two;
    temp_eight_bit = bcd_tens + ascii_num;
    MEM[cursor] = temp_eight_bit;
    cursor = cursor + two;
    temp_eight_bit = bcd_ones + ascii_num;
    MEM[cursor] = temp_eight_bit;
    if (high_score_16_bit < snake_counter) {
      cursor = cursor + screen_width;
      MEM[cursor] = temp_eight_bit;
      cursor = cursor - two;
      temp_eight_bit = bcd_tens + ascii_num;
      MEM[cursor] = temp_eight_bit;
      cursor = cursor - two;
      temp_eight_bit = bcd_hundreds + ascii_num;
      MEM[cursor] = temp_eight_bit;
    }

    if (snake_counter == hex_hundred) {
      goto game_over;
    }
    // Finds next apple coord
    apple_next_color = color_green;
    i = zero;
    while (apple_next_color != color_black) {
      if (i < three) {
        i++;
        temp_eight_bit = MEM[adr_random];
        cursor = temp_eight_bit;
        go_to_apple = def_one;
        goto byte_coord_to_screen_coord;
      cursor_apple:
        goto else_i_three;
      }

      temp_eight_bit = MEM[snake_ptr_tail];
      cursor = temp_eight_bit;
      go_to_apple_failed_gen = def_one;
      goto byte_coord_to_screen_coord;
    apple_failed_gen:
    else_i_three:
      apple_next_color = MEM[cursor];
    }
    // Draws apple
    MEM[cursor] = color_red;
    cursor += two;
    MEM[cursor] = color_red;
  }

  // MEM[adr_keyboard_info] = def_one; // Deletes ASCII fifo

  goto game_loop;

  // GAME OVER
game_over:
  cursor_x = seven;
  cursor_x = cursor_x << def_two;
  cursor_y = seven;
  cursor_y = cursor_y << def_seven;
  cursor = board_top_l;
  cursor += cursor_y;
  cursor += cursor_x;
  cursor += adr_main_display;

  MEM[cursor] = G;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = A;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = M;
  cursor++;
  MEM[cursor] = color_red;
  cursor++;
  MEM[cursor] = E;
  cursor++;
  MEM[cursor] = color_red;
  cursor += screen_width;
  MEM[cursor] = color_red;
  cursor--;
  MEM[cursor] = R;
  cursor--;
  MEM[cursor] = color_red;
  cursor--;
  MEM[cursor] = E;
  cursor--;
  MEM[cursor] = color_red;
  cursor--;
  MEM[cursor] = V;
  cursor--;
  MEM[cursor] = color_red;
  cursor--;
  MEM[cursor] = O;

  MEM[adr_keyboard_info] = def_one;

wait_for_key:
  keyboard_input = MEM[adr_keyboard_ascii];
  if (keyboard_input == space) {
    goto snake_game;
  }
  goto wait_for_key;

byte_coord_to_screen_coord:
  cursor_x = cursor && oooF;
  cursor_x = cursor_x << def_two;
  cursor_y = cursor && ooFo;
  cursor = cursor_y;
  cursor = cursor << def_three;
  cursor += board_top_l;
  cursor += cursor_x;
  cursor += adr_main_display;
  cursor++;
  if (go_to_snake_start != def_zero) {
    go_to_snake_start = clear;
    goto cursor_snake_start;
  }
  if (go_to_delete_snake_tail != def_zero) {
    go_to_delete_snake_tail = clear;
    goto delete_snake_tail;
  }
  if (go_to_apple != def_zero) {
    go_to_apple = clear;
    goto cursor_apple;
  }
  if (go_to_apple_failed_gen != def_zero) {
    go_to_apple_failed_gen = clear;
    goto apple_failed_gen;
  }
  if (go_to_next_head_coord != def_zero) {
    go_to_next_head_coord = clear;
    goto next_head_coord;
  }
  if (go_to_delete_snake_head != def_zero) {
    go_to_delete_snake_head = clear;
    goto delete_snake_head;
  }

bcd_func:
  temp = bcd_src;
  temp = temp && ooff;
  bcd_ones = clear;
  bcd_tens = clear;
  bcd_hundreds = clear;
  while (ninety_nine < temp) {
    temp = temp - hundred;
    bcd_hundreds++;
  }
  while (nine < temp) {
    temp = temp - ten;
    bcd_tens++;
  }
  while (zero < temp) {
    temp--;
    bcd_ones++;
  }
  if (go_to_high_score_draw != def_zero) {
    go_to_high_score_draw = clear;
    goto high_score_draw;
  }
  if (go_to_score_draw != def_zero) {
    go_to_score_draw = clear;
    goto score_draw;
  }
}
