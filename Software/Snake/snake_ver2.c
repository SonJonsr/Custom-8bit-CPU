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

int main(void) {
snake_game:
  // clears screen
  for (i = zero; i < screen_size; i++) {
    odd_check = i & one;
    if (odd_check) {
      Screen[i] = color_black;
    } else {
      Screen[i] = ascii_block;
    }
  }

  // SETS BOARD LIMITS
  board_top_l = board_location;

  // SETS BORDER LIMITS
  border_width = board_width;
  border_width++;
  border_width++;
  border_height = board_height;
  border_height++;
  border_height++;

  border_top_l = board_location - screen_width;
  border_top_l -= four;

  border_top_r = border_width;
  border_top_r <<= two;

  border_bot_l = border_height;
  border_bot_l <<= seven;
  border_bot_l += border_top_l;

  border_paralell_h = border_height;
  border_paralell_h--;
  border_paralell_h <<= seven; // same as border_paralell_h * screenwidth

  border_paralell_v = border_width;
  border_paralell_v--;
  border_paralell_v <<= two; // same as border_paralell_v * 4

  for (i = zero; i < border_width; i++) {
    cursor = i;
    cursor <<= two;
    cursor += border_top_l;
    cursor++;
    Screen[cursor] = color_silver;
    cursor++;
    cursor++;
    Screen[cursor] = color_silver;
    cursor += border_paralell_h;
    Screen[cursor] = color_silver;
    cursor--;
    cursor--;
    Screen[cursor] = color_silver;
  }

  for (i = zero; i < border_height; i++) {
    cursor = i;
    cursor <<= seven;
    cursor += border_top_l;
    cursor++;
    Screen[cursor] = color_silver;
    cursor++;
    cursor++;
    Screen[cursor] = color_silver;
    cursor += border_paralell_v;
    Screen[cursor] = color_silver;
    cursor--;
    cursor--;
    Screen[cursor] = color_silver;
  }

  // Draws the Highscore
  cursor = border_top_r;
  cursor--;
  cursor -= screen_width;
  cursor -= screen_width;
  num = Eeprom[zero];
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
        cursor = Random;
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
  if (Eeprom[zero] < snake_counter) {
    Eeprom[zero] = snake_counter;
  }
  cursor_x = six;
  cursor_x <<= two;
  cursor_y = seven;
  cursor_y <<= seven;
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

byte_coord_to_screen_coord:
  cursor_x = cursor;
  cursor_x &= oooF;
  cursor_x <<= two;
  cursor_y = cursor;
  cursor_y &= ooFo;
  cursor = cursor_y;
  cursor <<= three;
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
  qou = num >> one;
  temp = num >> two;
  qou += temp;
  temp = qou >> four;
  qou += temp;
  temp = qou >> eight;
  qou += temp;
  qou >>= three;
  temp = qou << three;
  div_ten = qou << one;
  temp += div_ten;
  div_ten = num - temp;
  div_ten += six;
  div_ten >>= four;
  div_ten += qou;

  if (go_to_bcd_byte_div_ten) {
    go_to_bcd_byte_div_ten = zero;
    goto bcd_byte_div_ten;
  }

bcd_byte:
  num_temp = num;
  bcd = zero;
  for (i = two; i > zero; i++) {
    for (j = i; j > zero; j++) {
      go_to_bcd_byte_div_ten = one;
      goto div_ten_func;
    bcd_byte_div_ten:
      num = div_ten;
    }
    // Reusing som variables to get 100x and 10x depending on i
    for (j = zero; j < i; j++) {
      temp = div_ten << three;
      div_ten <<= one;
      div_ten += temp;
    }
    temp = i << two;
    num <<= temp;
    bcd += num;
    // Subtract from num_temp the BCD value that was found.
    num_temp -= div_ten;
    num = num_temp;
  }
  bcd += num;

  if (go_to_bcd_byte_done) {
    go_to_bcd_byte_done = zero;
    goto bcd_byte_done;
  }

bcd_byte_draw:
  go_to_bcd_byte_done = one;
  goto bcd_byte;
bcd_byte_done:
  for (i = two; i <= one; i++) {
    temp = bcd;
    num_temp = i << two;
    temp >> num_temp;
    temp &= oooF;
    temp += ascii_num;
    Screen[cursor] = temp;
    cursor++;
    Screen[cursor] = color_silver;
    cursor++;
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
