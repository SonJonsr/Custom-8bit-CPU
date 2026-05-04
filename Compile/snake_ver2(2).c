// Header file for input output functions
#include <stdint.h>
#include <stdio.h>

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

#define shft_one 0x01;
#define shft_two 0x02;
#define shft_three 0x03;
#define shft_seven 0x07;

int16_t zero = 0x0000;
int16_t one = 0x0001;
int16_t two = 0x0002;
int16_t three = 0x0003;
int16_t four = 0x0004;
int16_t six = 0x0006;
int16_t seven = 0x0007;
int16_t eight = 0x0008;
int16_t hex_ten = 0x0010;
int16_t oofe = 0x00FE;
int16_t ooff = 0x00FF;
int16_t hex_hundred = 0x0100;
int16_t oooF = 0x000F;
int16_t ooFo = 0x00F0;
int16_t hex_eight_thousand = 0x8000;

int16_t game_increment = 0x00C8;

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

int8_t kb_right = 0x01;
int8_t kb_left = 0xFF;
int8_t kb_down = 0x10;
int8_t kb_up = 0xF0;

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

int16_t right = 0x0004;
int16_t left = 0xFFFC;
int16_t down = 0x0080;
int16_t up = 0xFF80;

int16_t kb_ascii = 0x0000;
int16_t kb_info = 0x0001;

int16_t screen_size = 0x0F00;
int16_t screen_width = 0x0080;
int16_t screen_height = 0x001E;

int16_t board_size = 0x0100;
int16_t board_height = 0x0010;
int16_t board_width = 0x0010;
int16_t board_location = 0x03A0;

int16_t snake_start = 0x0073;

int16_t apple_start = 0x007A;

// Functions
int8_t go_to_snake_start = 0x00;
int8_t go_to_apple = 0x00;
int8_t go_to_high_score = 0x00;
int8_t go_to_score_apple = 0x00;
int8_t go_to_bcd_byte_div_ten = 0x00;
int8_t go_to_bcd_byte_draw = 0x00;
int8_t go_to_bcd_byte_done = 0x00;

// int8_t Screen[screen_size];
// int8_t Keyboard[two];
// int8_t Eeprom[hex_hundred];
// int8_t Random;
// int16_t Millis;

int16_t i = 0x00;
int16_t j = 0x00;

// Div by ten variables
int8_t num_8bit = 0x0000;
int16_t num = 0x0000;
int16_t num_temp = 0x0000;
int16_t temp = 0x0000;
int16_t qou = 0x0000;
int16_t div_ten = 0x0000;
int16_t bcd = 0x0000;

// GAME STATUS
int8_t game_running = 0x00;
int16_t millis_new = 0x00;
int16_t millis_old = 0x00;
int16_t millis_goal = 0x00;

// SNAKE
// int16_t snake[board_size];
int16_t snake_array_y = 0xF400;
int16_t snake_array_x = 0xF500;
int8_t snake_ptr = 0x00;
int8_t snake_ptr_tail = 0xFF;
int8_t snake_ptr_head = 0x02;
int16_t snake_head_next = 0x0000;
int16_t snake_counter = 0x0003;
int8_t snake_head_next_color = 0x03;

// APPLE
int8_t apple_next_color = 0x03;

// DIRECTION
int16_t direction = 0x0004;

// KEYBOARD VARIABLES
int8_t keyboard_input = 0x0000;
int8_t keyboard_input_last = 0x0000;
int8_t keyboard_mask = 0x0000;

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
int16_t border_height = 0x0000;
int16_t border_paralell_h = 0x0000;
int16_t border_paralell_v = 0x0000;

// CURSOR VARIABLES
int16_t cursor = 0x0000;
int16_t cursor_x = 0x0000;
int16_t cursor_y = 0x0000;
int16_t odd_check = 0x0000;

int main(void) {
snake_game:
  // clears screen
  i = zero;
  cursor = adr_main_display;
clears_screen:
  cursor += i;
  odd_check = i;
  odd_check &= one;
  if (odd_check != one) {
    MEM[cursor] = ascii_block;
  } else {
    MEM[cursor] = color_black;
  }
  i++;
  if (i < screen_size) {
    goto clears_screen;
  }

  // SETS BOARD LIMITS
  board_top_l = board_location;

  // SETS BORDER LIMITS
  border_width = board_width;
  border_width += two;
  border_height = board_height;
  border_height += two;

  border_top_l = board_location - screen_width;
  border_top_l -= four;

  border_top_r = border_width << shft_two;

  border_bot_l = border_height << seven;
  border_bot_l += border_top_l;

  border_top_l = board_location - screen_width;
  border_top_l -= four;

  border_top_r = border_width << shft_two;

  border_bot_l = border_height << shft_seven;
  border_bot_l += border_top_l;

  border_paralell_h = border_height;
  border_paralell_h--;
  border_paralell_h = border_paralell_h << shft_seven;

  border_paralell_v = border_width;
  border_paralell_v--;
  border_paralell_v = border_paralell_v << shft_two;

  i = zero;
border_horizontal:
  cursor = i << shft_two;
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

  i = zero;
border_vertical:
  cursor = i;
  cursor <<= seven;
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

  // Draws the Highscore
  cursor = border_top_r;
  cursor--;
  cursor -= screen_width;
  cursor -= screen_width;
  num_8bit = MEM[adr_eeprom_start];
  go_to_high_score = one;
  goto bcd_byte_draw;
bcd_high_score:

  // Draws the snake
  // Finds the right address
  cursor = snake_start;
  go_to_snake_start = one;
  cursor_x = snake_start;
  goto byte_coord_to_screen_coord;
cursor_snake_start:
  cursor++;

  // Draws the body
  i = zero;
draw_start_body:
  snake[i] = cursor;
  Screen[cursor] = color_lime;
  cursor++;
  cursor++;
  Screen[cursor] = color_lime;
  cursor++;
  cursor++;
  i++;
  if (i < two) {
    goto draw_start_body;
  }

  // Draws the head
  snake[i] = cursor;
  Screen[cursor] = color_green;
  cursor++;
  cursor++;
  Screen[cursor] = color_green;

  // Draws the apple
  cursor += hex_ten;
  Screen[cursor] = color_red;
  cursor++;
  cursor++;
  Screen[cursor] = color_red;

  // Start direction
  direction = right;

  // Start snake values
  snake_counter = three;
  snake_head = two;
  snake_tail = ooff;

  game_running = game_on;

  Keyboard[kb_info] = one; // Deletes ASCII fifo

start_game:
  keyboard_input = Keyboard[kb_ascii];
  if (keyboard_input == kb_right) {
    keyboard_input_last = keyboard_input;
    goto game_loop;
  }
  goto start_game;

// GAME LOOP
game_loop:
  //  TIMER IMPLEMENTATION
  //    START THE TIMER
  //
  millis_old = Millis;
  millis_goal = millis_old + game_increment;

  keyboard_input = Keyboard[kb_ascii]; // Reads from ASCII fifo

  // This mask is mask checks whether or not the input is opposite of
  // the current direction. The values of the ASCII characters assigned
  // to the arrow keys have been picked out for this purpose.
  keyboard_mask = keyboard_input + keyboard_input_last;
  if (keyboard_mask != zero) {
    if (keyboard_input == kb_right) {
      keyboard_input_last = keyboard_input;
      direction = right;
    }
    if (keyboard_input == kb_left) {
      keyboard_input_last = keyboard_input;
      direction = left;
    }
    if (keyboard_input == kb_down) {
      keyboard_input_last = keyboard_input;
      direction = down;
    }
    if (keyboard_input == kb_up) {
      keyboard_input_last = keyboard_input;
      direction = up;
    }
    // quit game if escape is pressed
    if (keyboard_input == escape) {
      goto game_over;
    }
  }
  // Find coords of next snake head
  snake_head_next = snake[snake_head];
  snake_head_next += direction;
  // Find colors of where new head will be drawn
  snake_head_next_color = Screen[snake_head_next];

  // Makes old head part of body
  cursor = snake[snake_head];
  Screen[cursor] = color_lime;
  cursor++;
  cursor++;
  Screen[cursor] = color_lime;
  // itterates head counter
  snake_head++;
  if (snake_head == hex_hundred) {
    snake_head = zero;
  }
  // saves next head coords
  snake[snake_head] = snake_head_next;
  // Draws head
  Screen[snake_head_next] = color_green;
  snake_head_next++;
  snake_head_next++;
  Screen[snake_head_next] = color_green;

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
    snake_tail++;
    if (snake_tail == hex_hundred) {
      snake_tail = zero;
    }
    // Deletes the snake behind.
    cursor = snake[snake_tail];
    Screen[cursor] = color_black;
    cursor++;
    cursor++;
    Screen[cursor] = color_black;
  }
  // color_red means apple coord
  if (snake_head_next_color == color_red) {
    // Scores goes up by one
    snake_counter++;
    cursor = border_top_r;
    cursor--;
    cursor -= screen_width;
    num = snake_counter;
    go_to_score_apple = one;
    goto bcd_byte_draw;
  bcd_score_apple:
    if (snake_counter == hex_hundred) {
      goto game_over;
    }
    // Finds next apple coord
    apple_next_color = color_green;
    i = zero;
    while (apple_next_color != color_black) {
      if (i < three) {
        i++;
        cursor = MEM[adr_random];
        go_to_apple = one;
        goto byte_coord_to_screen_coord;
      cursor_apple:
        cursor++;
      } else {
        cursor = snake[snake_tail];
      }
      apple_next_color = Screen[cursor];
    }
    // Draws apple
    Screen[cursor] = color_red;
    cursor++;
    cursor++;
    Screen[cursor] = color_red;
  }

  Keyboard[kb_info] = one; // Deletes ASCII fifo

  // timer implementation
snake_game_timer:
  millis_new = Millis;
  // checks for overflow
  if (millis_goal < millis_old) {
    // if overflow the two if statement are or-ed
    if (millis_new > millis_old) {
      goto snake_game_timer;
    }
    if (millis_new < millis_goal) {
      goto snake_game_timer;
    }
  } else {
    // if not overflow the two if statement are and-ed
    if (millis_new > millis_old) {
      if (millis_new < millis_goal) {
        goto snake_game_timer;
      }
    }
  }

  goto game_loop;

  // GAME OVER
game_over:
  if (MEM[adr_eeprom_start] < snake_counter) {
    MEM[adr_eeprom_start] = snake_counter;
  }
  cursor_x = six;
  cursor_x = cursor_x << shft_two;
  cursor_y = seven;
  cursor_y = cursor_y << shft_seven;
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
wait_for_key:
  keyboard_input = Keyboard[kb_ascii];
  if (keyboard_input == A) {
    goto snake_game;
  }
  goto wait_for_key;

byte_coord_to_screen_coord:
  cursor_x = cursor;
  cursor_x = cursor_x && oooF;
  cursor_x = cursor_x << shft_two;
  cursor_y = cursor;
  cursor_y = cursor_y && ooFo;
  cursor = cursor_y;
  cursor = cursor << shft_three;
  cursor += board_top_l;
  cursor += cursor_x;
  if (go_to_snake_start) {
    go_to_snake_start = zero;
    goto cursor_snake_start;
  }
  if (go_to_apple) {
    go_to_apple = zero;
    goto cursor_apple;
  }

div_ten_func:
  qou = num >> shft_one;
  temp = num >> shft_two;
  qou += temp;
  temp = qou >> shft_four;
  qou += temp;
  temp = qou >> shft_eight;
  qou += temp;
  qou = qou >> shft_three;
  temp = qou << shft_three;
  div_ten = qou << shft_one;
  temp += div_ten;
  div_ten = num - temp;
  div_ten += six;
  div_ten = div_ten >> shft_four;
  div_ten += qou;

  if (go_to_bcd_byte_div_ten != zero) {
    go_to_bcd_byte_div_ten = zero;
    goto bcd_byte_div_ten;
  }

bcd_byte:
  num = num_8bit & ooff;
  num_temp = num;
  bcd = zero;

  //--------------------FOR I LOOP START--------------------//
  i = two;
bcd_byte_i:

  //-----------FOR J LOOP START-----------//
  j = i;
bcd_byte_j_one:
  go_to_bcd_byte_div_ten = one;
  goto div_ten_func;
bcd_byte_div_ten:
  num = div_ten;
  j--;
  if (j > zero) {
    goto bcd_byte_j_one;
  }
  //------------FOR J LOOP END------------//

  //-----------FOR J LOOP START-----------//
  // Reusing som variables to get 100x and 10x depending on i
  j = zero;
bcd_byte_j_two:
  temp = div_ten << shft_three;
  div_ten = div_ten << shft_one;
  div_ten += temp;
  j++;
  if (j < i) {
    goto bcd_byte_j_two;
  }
  //------------FOR J LOOP END------------//

  // since shifting is done with defines this is not possible:
  // temp = i << two;
  // num = num << temp;
  if (i == one) {
    num = num << shft_four;
  }
  if (i == two) {
    num = num << shft_eight;
  }
  bcd += num;
  // Subtract from num_temp the BCD value that was found.
  num_temp -= div_ten;
  num = num_temp;

  i--;
  if (i > zero) {
    goto bcd_byte_i;
  }
  //---------------------FOR I LOOP END---------------------//

  bcd += num;

  if (go_to_bcd_byte_done) {
    go_to_bcd_byte_done = zero;
    goto bcd_byte_done;
  }

bcd_byte_draw:
  go_to_bcd_byte_done = one;
  goto bcd_byte;
bcd_byte_done:
  //--------------------FOR I LOOP START--------------------//
  i = two;
bcd_byte_draw_i:
  temp = bcd;
  num_temp = i;
  num_temp <<= two;
  temp >>= num_temp;
  temp &= oooF;
  temp += ascii_num;
  Screen[cursor] = temp;
  cursor++;
  Screen[cursor] = color_silver;
  cursor++;
  i--;
  if (i >= zero) {
    goto bcd_byte_draw_i;
  }
  if (go_to_high_score) {
    go_to_high_score = zero;
    goto bcd_high_score;
  }

  if (go_to_score_apple) {
    go_to_score_apple = zero;
    goto bcd_score_apple;
  }

  return zero;
}
