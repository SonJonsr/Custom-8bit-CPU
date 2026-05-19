#include <stdint.h>
#include <stdio.h>

// START OF DECLARING VARIABLES AND DEFINES
// (*@\label{start:snake_declarations}@*)

int16_t clear = 0x0000;
int8_t MEM[65536];

// (*@\label{start:snake_addresses}@*)
// Declarations of addresses for different modules
int16_t adr_main_display = 0xE000;
int16_t adr_info_display = 0xEF00;
int16_t adr_keyboard_ascii = 0xF2C0;
int16_t adr_keyboard_info = 0xF2C1;
int16_t adr_random = 0xF2C2;
int16_t adr_timer_millis_ll = 0xF2C3;
int16_t adr_timer_millis_hh = 0xF2C4;
int16_t adr_eeprom_start = 0xF2C5;
int16_t adr_eeprom_end = 0xF3C4;
// (*@\label{end:snake_addresses}@*)

// Numbers for 8-bit operations (*@\label{start:snake_num8bit}@*)
#define def_zero 0x00;
#define def_one 0x01;
#define def_two 0x02;
#define def_three 0x03;
#define def_seven 0x07;
#define def_eight 0x08;
#define def_1o 0x10;
#define def_of 0x0f; // (*@\label{end:snake_num8bit}@*)

// Temp variables (*@\label{start:snake_temps}@*)
int8_t temp_eight_bit = 0x00;
int16_t temp = 0x0000; // (*@\label{end:snake_temps}@*)

// Numbers for 16-bit operations (*@\label{start:snake_num16bit}@*)
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
int16_t hex_eight_thousand = 0x8000; // (*@\label{end:snake_num16bit}@*)

int16_t game_increment = 0x0064; // 100

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
int8_t space = 0x20;
int8_t escape = 0x1B;
int8_t kb_right = 0x01;
int8_t kb_left = 0xFF;
int8_t kb_down = 0x10;
int8_t kb_up = 0xF0;

int8_t bcd_ones = 0x00;
int8_t bcd_tens = 0x00;
int8_t bcd_hundreds = 0x00;
int8_t bcd_src = 0x00;

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

int16_t i = 0x00;
int16_t j = 0x00;

// GAME STATUS
int8_t game_running = 0x00;
int16_t millis_new = 0x00;
int16_t millis_old = 0x00;
int16_t millis_goal = 0x00;

// SNAKE
int16_t snake_array = 0xF400; // (*@\label{line:snake_array}@*)
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

// END OF DECLARING VARIABLES AND DEFINES (*@\label{end:snake_declarations}@*)

void main() { // (*@\label{start:snake_main}@*)
snake_game:

  // (*@\label{start:snake_board_border_calc}@*)
  // SETS BOARD LIMITS
  board_top_l = board_location;
  board_bot_r = board_location_stop + adr_main_display;

  // SETS BORDER LIMITS
  border_width = board_width;
  border_width_ascii = border_width << def_two;
  border_height = board_height;

  border_top_l = board_location;
  // To make it so you dont die from the walls and rather
  // teleport accross the map when you get to the border
  // uncomment the two lines below.
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
  // (*@\label{end:snake_board_border_calc}@*)

  // START BOARD CLEAR(*@\label{start:double_nested_for_loop_board_clear}@*)
  // We have to clear the board on start-up and on every restart of the game for
  // two reasons:
  //    1. On first bootup the screen is completely empty. Meaning there are no
  //    ASCII and no foregroundcolor. We want a full ASCII-block and to color it
  //    black.
  //    2. Hit detection is based on the color of the screen. So if the screen
  //    isn't cleared the snake might run into and old piece of itself and die.
  // -------------------- FOR I LOOP START -------------------- //
  i = clear;
clears_screen_i:
  temp = i << def_seven;
  temp += border_top_l;
  temp += adr_main_display;

  // ----------- FOR J LOOP START ----------- //
  j = clear;
clears_screen_j:
  cursor = j + temp;
  odd_check = cursor;
  odd_check = odd_check && one;
  if (odd_check != one) {
    MEM[cursor] = ascii_block;
    goto else_attr; // utilizing the if- and goto-function as an if-else
  }
  MEM[cursor] = color_black;
else_attr:

  j++;
  if (j < border_width_ascii) {
    goto clears_screen_j;
  }
  // ------------ FOR J LOOP END ------------ //
  i++;
  if (i < border_height) {
    goto clears_screen_i;
  }
  // --------------------- FOR I LOOP END --------------------- //
  // END BOARD CLEAR(*@\label{end:double_nested_for_loop_board_clear}@*)

  // Then we draw the borders (*@\label{start:draw_borders}@*)
  // -------------------- FOR I LOOP START -------------------- //
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
  // --------------------- FOR I LOOP END --------------------- //

  // -------------------- FOR I LOOP START -------------------- //
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
  // --------------------- FOR I LOOP END --------------------- //
  //(*@\label{end:draw_borders}@*)

  // (*@\label{start:snake_score_setup}@*) (*@\label{start:snake_bcd_setup}@*)
  // Draws up SCORE and HIGH SCORE, with their scores
  // Fetching the current highscore from the EEPROM
  bcd_src = MEM[high_score_mem_loc];
  // Then modifying the 8-bit highscore to fit in a 16-bit "function variable"
  high_score_16_bit = bcd_src;
  high_score_16_bit = high_score_16_bit && ooff;
  go_to_high_score_draw = def_one;
  goto bcd_func; // Goes to the function named bcd_func
high_score_draw: // Comes back from the bcd_func
  // Now these 8-bit variables are updated:
  //    bcd_hundreds
  //    bcd_tens
  //    bcd_ones (*@\label{end:snake_bcd_setup}@*)

  // First we draw "HIGH SCORE:SSS" where "SSS" is the current high score. This
  // is drawn in order. Then to save on time we draw "SCORE:sss" backwards
  // starting with the scores ones and ending with "S"
  // (*@\label{start:snake_score_draw}@*)
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

  // Have to add 0x30 to the bcd values to get their matching ASCII characters.
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
  snake_counter = def_three;
  temp_eight_bit = ascii_num + snake_counter;

  MEM[cursor] = temp_eight_bit;
  cursor--;

  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = ascii_num;
  cursor--;

  MEM[cursor] = color_green;
  cursor--;
  MEM[cursor] = ascii_num;

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
  // (*@\label{end:snake_score_setup}@*)

  // Draws the snake (*@\label{start:draw_snake_apple}@*)
  snake_ptr_head = snake_array;
  snake_board_head = snake_start;
  i = clear;
draw_start_body:
  // Finds the right address
  MEM[snake_ptr_head] = snake_board_head;
  cursor = snake_board_head;
  go_to_snake_start = def_one;
  goto byte_coord_to_screen_coord;
cursor_snake_start: // (*@\label{line:end_byte_conversion_setup}@*)

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
  // (*@\label{end:draw_snake_apple}@*)

  // Start direction
  direction = right;

  game_running = game_on;

  MEM[adr_keyboard_info] = def_one; // Deletes ASCII fifo

  // (*@\label{start:start_game}@*)
  // A little function that waits for the player to press space before starting
  // the game
start_game:
  keyboard_input = MEM[adr_keyboard_ascii];
  if (keyboard_input == space) {
    keyboard_input_illegal = kb_left;
    goto game_loop;
  }
  goto start_game; // (*@\label{end:start_game}@*)

// GAME LOOP (*@\label{start:snake_game_loop}@*)
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

  // The if-statements below checks if the player has pressed a legal direction
  // key and updates the direction accordingly
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

  // Finding the next head (*@\label{start:snake_head_next_loc}@*)
  // We are interested in the position of the current snake head and the next
  // snake head, since we want to color the current snake head like the body,
  // and we want to know where the next snake head is looking to go. Find coords
  // of next snake head
  snake_board_head_next = MEM[snake_ptr_head];
  temp_eight_bit = snake_board_head_next && def_of;
  // Makes sure if you pass through the board on the right side you teleport to
  // the other side on the correct row
  if (direction == right) {
    if (temp_eight_bit == def_of) {
      snake_board_head_next -= def_1o;
    }
  }
  // Makes sure if you pass through the board on the left side you teleport to
  // the other side on the correct row
  if (direction == left) {
    if (temp_eight_bit == def_zero) {
      snake_board_head_next += def_1o;
    }
  }
  snake_board_head_next += direction;

  // Since the board is of the size 16x16, since its coordinates are stored in
  // 8-bit bytes, we have to convert them into 16-bit addresses so we can audit
  // the memory of the Screen.
  cursor = snake_board_head_next;
  go_to_next_head_coord = def_one;
  goto byte_coord_to_screen_coord;
next_head_coord:
  snake_screen_head_next = cursor;
  // The snakes next head is found

  // Find colors of where new head will be drawn
  snake_head_next_color = MEM[snake_screen_head_next];
  // (*@\label{end:snake_head_next_loc}@*)

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
  // color_black means empty coord (*@\label{start:color_black}@*)
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
  // (*@\label{end:color_black}@*)

  // color_red means apple coord (*@\ref{start:snake_apple_eat}@*)
  if (snake_head_next_color == color_red) {
    // Scores goes up by one
    snake_counter++;
    // Uses the BCD function to convert the score to readable format
    bcd_src = snake_counter;
    go_to_score_draw = def_one;
    goto bcd_func;
  score_draw:
    // Draws the score
    cursor = score_num_location;
    temp_eight_bit = bcd_hundreds + ascii_num;
    MEM[cursor] = temp_eight_bit;
    cursor = cursor + two;
    temp_eight_bit = bcd_tens + ascii_num;
    MEM[cursor] = temp_eight_bit;
    cursor = cursor + two;
    temp_eight_bit = bcd_ones + ascii_num;
    MEM[cursor] = temp_eight_bit;
    // Udates the high score if the current score is bigger
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
    // Finds next apple coord (*@\label{start:finding_next_apple}@*)
    apple_next_color = color_green;
    i = zero;
    // Tries to place a new apple as long as the last place it tried placing
    // isnt black
    while (apple_next_color != color_black) {
      if (i < three) {
        // Tries to place apple at a random location
        i++;
        temp_eight_bit = MEM[adr_random];
        cursor = temp_eight_bit;
        go_to_apple = def_one;
        goto byte_coord_to_screen_coord;
      cursor_apple:
        goto else_i_three;
      }
      // (*@\label{line:random_failed}@*)
      // To save on resources we only try to find a random space 3 times before
      // giving up and placing it on the tile the tail left last game tick
      temp_eight_bit = MEM[snake_ptr_tail];
      cursor = temp_eight_bit;
      go_to_apple_failed_gen = def_one;
      goto byte_coord_to_screen_coord;
    apple_failed_gen:
    else_i_three:
      apple_next_color = MEM[cursor];
    }
    // (*@\label{end:finding_next_apple}@*)
    // When a location that was black has been found draw the apple
    MEM[cursor] = color_red;
    cursor += two;
    MEM[cursor] = color_red;
  }
  // (*@\ref{end:snake_apple_eat}@*)

  // MEM[adr_keyboard_info] = def_one; // Deletes ASCII fifo

// timer implementation (*@\label{start:timer_millis_snake}@*)
snake_game_timer:

  // This is were we collect the player input for movement.
  // (*@\label{start:snake_keyboard_query}@*) First we check if there is a new
  // ASCII character in the ASCII-FIFO and if there is we save it to a variable
  temp_eight_bit = MEM[adr_keyboard_info];
  if (temp_eight_bit != def_zero) {
    keyboard_input = MEM[adr_keyboard_ascii];
  }
  // (*@\label{end:snake_keyboard_query}@*)

  // Combining high and low byte of the timer_millis into a single 16 bit
  // variable
  temp_eight_bit = MEM[adr_timer_millis_hh];
  millis_new = temp_eight_bit;
  millis_new = millis_new << def_eight;
  temp_eight_bit = MEM[adr_timer_millis_ll];
  temp = temp_eight_bit;
  temp = temp && ooff;
  millis_new += temp;

  // Under we check if we have waited long enough to go out of the game tick
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
timer_else: // END OF TIMER (*@\label{end:timer_millis_snake}@*)

  goto game_loop;
  // End of the game loop  (*@\label{end:snake_game_loop}@*)

  // GAME OVER (*@\label{start:game_over}@*)
game_over:

  // (*@\label{start:check_score}@*)
  // Checks if new high score has been achieved
  if (high_score_16_bit < snake_counter) {
    temp_eight_bit = snake_counter;
    MEM[high_score_mem_loc] = temp_eight_bit;
  }
  // (*@\label{end:check_score}@*)

  cursor_x = seven;
  cursor_x = cursor_x << def_two;
  cursor_y = seven;
  cursor_y = cursor_y << def_seven;
  cursor = board_top_l;
  cursor += cursor_y;
  cursor += cursor_x;
  cursor += adr_main_display;

  // Same as with "HIGH SCORE" and "SCORE". Draw first "GAME" in the right
  // order, then to save time write "OVER" the wrong way.
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

  // Deletes all keys in the FIFO to not accidently restart the game
  MEM[adr_keyboard_info] = def_one;

  // Restarts the game on pressing space
wait_for_key:
  keyboard_input = MEM[adr_keyboard_ascii];
  if (keyboard_input == space) {
    goto snake_game;
  }
  goto wait_for_key;
// (*@\label{end:game_over}@*)

// (*@\label{start:byte_coord_to_screen_coord}@*)
// A function that lets one convert between the 8-bit-board-coordinate and the
// 16-bit memory address for its corresponding location on Screen Main.
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
  // The function is done.(*@\label{end:byte_coord_to_screen_coord}@*)
  // Return to the place that has its "go_to_*" variable not set to zero.
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

  // (*@\label{start:bcd_func}@*)
  // A BCD function used to convert the scores from 8-bits to ASCII.
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
  // The function is done. (*@\label{end:bcd_func}@*)
  // Return to the place that has its "go_to_*" variable not set to zero.
  if (go_to_high_score_draw != def_zero) {
    go_to_high_score_draw = clear;
    goto high_score_draw;
  }
  if (go_to_score_draw != def_zero) {
    go_to_score_draw = clear;
    goto score_draw;
  }
} // (*@\label{end:snake_main}@*)
